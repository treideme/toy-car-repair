#include <stdio.h>

#include "control.h"
#include "stm32f405xx.h"
#include "macro.h"

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
  printf("On Music %i %i\r\n", current, before);
  return true;
}

static bool s_on_left(const input_state_t current, const input_state_t before) {
  printf("On Left %i %i\r\n", current, before);
  return true;
}

static bool s_on_horn(const input_state_t current, const input_state_t before) {
  printf("On Horn %i %i\r\n", current, before);
  return true;
}

static bool s_on_right(const input_state_t current, const input_state_t before) {
  printf("On Right %i %i\r\n", current, before);
  return true;
}

static bool s_on_light(const input_state_t current, const input_state_t before) {
  printf("On Light %i %i\r\n", current, before);
  HAL_GPIO_WritePin(LAMP_OUT_GPIO_Port, LAMP_OUT_Pin, current);
  return true;
}

static bool s_on_bwd(const input_state_t current, const input_state_t before) {
  printf("On BWD %i %i\r\n", current, before);
  s_engine.backward_set = current;
  return true;
}

static bool s_on_fwd(const input_state_t current, const input_state_t before) {
  printf("On FWD %i %i\r\n", current, before);
  s_engine.forward_set = current;
  return true;
}

static bool s_on_gas(const input_state_t current, const input_state_t before) {
  printf("On Gas %i %i\r\n", current, before);
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

  return control_write_motor(&s_engine);
}
