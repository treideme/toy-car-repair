#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "control.h"
#include "stm32f405xx.h"
#include "macro.h"
#include "audio.h"
#include "ff.h"
#include "dac.h"

static size_t s_total_songs = 0;
static ssize_t s_current_song = 0;
static audio_t player = {0};

int string_ends_with(const char * str, const char * suffix) {
  int str_len = strlen(str);
  int suffix_len = strlen(suffix);

  return (str_len >= suffix_len) && (0 == strcmp(str + (str_len-suffix_len), suffix));
}

void timer_callback(void) {
  uint16_t value = audio_next_12b(&player);
  if(value != 0x800) {
//  printf("TIM: 0x%03X\r\n", value);
    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, value);
    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_2, DAC_ALIGN_12B_R, value);
    HAL_DAC_Start(&hdac, DAC_CHANNEL_1);
    HAL_DAC_Start(&hdac, DAC_CHANNEL_2);
  }
}

bool controls_init() {
//  printf("=== List Files ===\r\n");
  FRESULT res;
  DIR dir;
  FILINFO fno;
  res = f_opendir(&dir, "/"); /* Open the directory */
  if (res == FR_OK) {
//    printf("Opened Dir\r\n");
    for (;;) {
      res = f_readdir(&dir, &fno); /* Read a directory item */
      if (res != FR_OK || fno.fname[0] == 0)
        break; /* Break on error or end of dir */
//      printf("%s\r\n", fno.fname);
      if(string_ends_with(fno.fname, ".WAV")) {
//        printf("Found %s\r\n", fno.fname);
        if(strcmp("HORN.WAV", fno.fname) == 0) {
          continue;
        } else if(strcmp("ENGINE.WAV", fno.fname) == 0) {
          continue;
        } else {
//          printf("Found song: %i %s\r\n", s_total_songs, fno.fname);
          s_total_songs++;
        }
      }
    }
    f_closedir(&dir);
    s_current_song = 0;
    audio_playfile(&player, "ENGINE.WAV");
    return true;
  } else {
//    printf("OpenDir failed: %i", res);
    return false;
  }
}

void play_song(size_t index) {
  size_t local_count = 0;
  if(index < s_total_songs) {
//    printf("Valid Index %i\r\n", index);
    FRESULT res;
    DIR dir;
    FILINFO fno;
    res = f_opendir(&dir, "/"); /* Open the directory */
    if (res == FR_OK) {
      for (;;) {
        res = f_readdir(&dir, &fno); /* Read a directory item */
        if (res != FR_OK || fno.fname[0] == 0)
          break; /* Break on error or end of dir */
        if (string_ends_with(fno.fname, ".WAV")) {
          if(strcmp("HORN.WAV", fno.fname) == 0) {
            continue;
          } else if(strcmp("ENGINE.WAV", fno.fname) == 0) {
            continue;
          } else {
            if(local_count == index) {
              audio_playfile(&player, fno.fname);
            }
            local_count++;
          }
        }
      }
      f_closedir(&dir);
    }
  }
}

bool control_handle_input(input_t*p_input) {
  input_state_t state;

  if(HAL_GPIO_ReadPin(p_input->GPIOx, p_input->GPIO_Pin) == GPIO_PIN_SET) {
    if(p_input->inverted) {
      state = INPUT_OFF;
    } else {
      state = INPUT_ON;
    }
  } else {
    if(p_input->inverted) {
      state = INPUT_ON;
    } else {
      state = INPUT_OFF;
    }
  }
  p_input->last_state = p_input->current_state;
  p_input->current_state = state;

  if(p_input->current_state != p_input->last_state) {
    return p_input->on_change(p_input->current_state, p_input->last_state);
  }

  return true;
}

static motor_t s_engine = {
    .forward_set = false,
    .backward_set = false,
    .running = false,

    .GPIO_bridge_1 = MOTOR_1_GPIO_Port,
    .GPIO_bridge_2 = MOTOR_2_GPIO_Port,
    .GPIO_Pin_bridge_1 = MOTOR_1_Pin,
    .GPIO_Pin_bridge_2 = MOTOR_2_Pin,
};

static bool s_on_music(const input_state_t current, const input_state_t before) {
  if(current) {
    if(AUDIO_BUSY(&player)) {
      audio_stop(&player);
//      printf("Audio stopped\r\n");
    } else {
//      printf("Attempting to play %i\r\n", s_current_song);
      play_song(s_current_song);
    }
  }
  return true;
}

static bool s_on_left(const input_state_t current, const input_state_t before) {
  if(current) {
    s_current_song--;
    if(s_current_song < 0) {
      s_current_song = s_total_songs-1;
    }
    play_song(s_current_song);
  }
  return true;
}

static bool s_on_horn(const input_state_t current, const input_state_t before) {
  if(current) {
    audio_playfile(&player, "HORN.WAV");
  }
  return true;
}

static bool s_on_right(const input_state_t current, const input_state_t before) {
  if(current) {
    s_current_song++;
    if(s_current_song >= s_total_songs) {
      s_current_song = 0;
    }
    play_song(s_current_song);
  }
  return true;
}

static bool s_on_light(const input_state_t current, const input_state_t before) {
//  printf("On Light %i %i\r\n", current, before);
  HAL_GPIO_WritePin(LAMP_OUT_GPIO_Port, LAMP_OUT_Pin, current);
  return true;
}

static bool s_on_bwd(const input_state_t current, const input_state_t before) {
//  printf("On BWD %i %i\r\n", current, before);
  s_engine.backward_set = current;
  return true;
}

static bool s_on_fwd(const input_state_t current, const input_state_t before) {
//  printf("On FWD %i %i\r\n", current, before);
  s_engine.forward_set = current;
  return true;
}

static bool s_on_gas(const input_state_t current, const input_state_t before) {
//  printf("On Gas %i %i\r\n", current, before);
  s_engine.running = current;
  return true;
}

static input_t s_inputs[] = {
    // Music button
    {
        .current_state=INPUT_OFF, .last_state=INPUT_OFF,
        .GPIOx=MUSIC_BTN_GPIO_Port, .GPIO_Pin=MUSIC_BTN_Pin,
        .inverted=true,
        .on_change=s_on_music
    },
    {
        .current_state=INPUT_OFF, .last_state=INPUT_OFF,
        .GPIOx=LEFT_BTN_GPIO_Port, .GPIO_Pin=LEFT_BTN_Pin,
        .inverted=true,
        .on_change=s_on_left
    },
    {
        .current_state=INPUT_OFF, .last_state=INPUT_OFF,
        .GPIOx=HORN_BTN_GPIO_Port, .GPIO_Pin=HORN_BTN_Pin,
        .inverted=true,
        .on_change=s_on_horn
    },
    {
        .current_state=INPUT_OFF, .last_state=INPUT_OFF,
        .GPIOx=RIGHT_BTN_GPIO_Port, .GPIO_Pin=RIGHT_BTN_Pin,
        .inverted=true,
        .on_change=s_on_right
    },
    {
        .current_state=INPUT_OFF, .last_state=INPUT_OFF,
        .GPIOx=LIGHT_BTN_GPIO_Port, .GPIO_Pin=LIGHT_BTN_Pin,
        .inverted=false,
        .on_change=s_on_light
    },
    {
        .current_state=INPUT_OFF, .last_state=INPUT_OFF,
        .GPIOx=GAS_BTN_GPIO_Port, .GPIO_Pin=GAS_BTN_Pin,
        .inverted=false,
        .on_change=s_on_gas
    },
    {
        .current_state=INPUT_OFF, .last_state=INPUT_OFF,
        .GPIOx=FWD_BTN_GPIO_Port, .GPIO_Pin=FWD_BTN_Pin,
        .inverted=false,
        .on_change=s_on_fwd
    },
    {
        .current_state=INPUT_OFF, .last_state=INPUT_OFF,
        .GPIOx=BWD_BTN_GPIO_Port, .GPIO_Pin=BWD_BTN_Pin,
        .inverted=false,
        .on_change=s_on_bwd
    },
};

bool control_write_motor(motor_t *p_motor) {
  if(p_motor->forward_set && !p_motor->backward_set) { // Forward motion
    if(p_motor->running) {
      HAL_GPIO_WritePin(p_motor->GPIO_bridge_1, p_motor->GPIO_Pin_bridge_1, GPIO_PIN_RESET);
      HAL_GPIO_WritePin(p_motor->GPIO_bridge_2, p_motor->GPIO_Pin_bridge_2, GPIO_PIN_SET);
      return true;
    }
  } else if(!p_motor->forward_set && p_motor->backward_set) { // Backward motion
    if(p_motor->running) {
      HAL_GPIO_WritePin(p_motor->GPIO_bridge_1, p_motor->GPIO_Pin_bridge_1, GPIO_PIN_SET);
      HAL_GPIO_WritePin(p_motor->GPIO_bridge_2, p_motor->GPIO_Pin_bridge_2, GPIO_PIN_RESET);
      return true;
    }
  }
  // Any other state
  // block H-Bridge, both low
  HAL_GPIO_WritePin(p_motor->GPIO_bridge_1, p_motor->GPIO_Pin_bridge_1, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(p_motor->GPIO_bridge_2, p_motor->GPIO_Pin_bridge_2, GPIO_PIN_RESET);

  return true;
}

bool controls_update() {
  bool res;
  for(size_t i = 0; i < ARRAY_LENGTH(s_inputs); i++) {
    res = control_handle_input(&s_inputs[i]);
    if(!res)
      return res;
  }
  // Write LED to show on-state
  HAL_GPIO_WritePin(LED_OUT_GPIO_Port, LED_OUT_Pin, GPIO_PIN_SET);
  audio_update(&player, TIM1_UP_TIM10_IRQn);

  return control_write_motor(&s_engine);
}
