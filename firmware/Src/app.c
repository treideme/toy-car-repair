/**
 * Main Application Entry
 * @author Thomas Reidemeister
 * @file app.c
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include "main.h"
#include "dac.h"
#include "fatfs.h"
#include "sdio.h"
#include "gpio.h"

#include "bsp_driver_sd.h"
#include "control.h"
#include "tim.h"
#include "audio.h"
#include "macro.h"

#define RSIZE 32768

extern void SystemClock_Config(void); // Not exported by CubeMX
static char semihosting_stdout_buf[16];
static char semihosting_stderr_buf[16];
static audio_t player = {0};


int string_ends_with(const char * str, const char * suffix) {
  int str_len = strlen(str);
  int suffix_len = strlen(suffix);

  return (str_len >= suffix_len) && (0 == strcmp(str + (str_len-suffix_len), suffix));
}

/**
 * Override SD detection. SDIO driver assumes pull to ground, however,
 * by accident permanently pulled high.
 * @return
 */
uint8_t BSP_SD_IsDetected(void) {
  return SD_PRESENT;
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

/**
 * @brief  The application entry point.
 * @retval int
 */
int main(void) {
  //Disable STDOUT buffering. Otherwise nothing will be printed before
  //a newline character or when the buffer is flushed. This MUST be done
  //before any writes to STDOUT to have any effect...
  setvbuf(stdout, semihosting_stdout_buf, _IOLBF, sizeof(semihosting_stdout_buf));
  setvbuf(stderr, semihosting_stderr_buf, _IOLBF, sizeof(semihosting_stderr_buf));

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_SDIO_SD_Init();
  MX_DAC_Init();
  MX_FATFS_Init();
  MX_TIM10_Init();

  /* Check that FatFS was properly initialized */
  if(retSD != 0) {
    printf("Error Initializing FatFS\r\n");
    for(;;);
  }

  FRESULT res;

  if((res = f_mount(&SDFatFS, SDPath, 1)) != FR_OK) {
    printf("Error Mounting uSD: %i\r\n", res);
    for(;;);
  }
  HAL_TIM_Base_Start_IT(&htim10);
  printf(" Path: %s\r\n", SDPath);

  printf("=== List Files ===\r\n");
  DIR dir;
  FILINFO fno;
  res = f_opendir(&dir, "/"); /* Open the directory */
  if (res == FR_OK) {
    for (;;) {
      res = f_readdir(&dir, &fno); /* Read a directory item */
      if (res != FR_OK || fno.fname[0] == 0)
        break; /* Break on error or end of dir */
      printf("%s\r\n", fno.fname);
      if(string_ends_with(fno.fname, ".wav") || string_ends_with(fno.fname, ".WAV")) {
        bool res = audio_playfile(&player, fno.fname);
        if(res) {
          printf("Found Audio file %s ... playing\r\n", fno.fname);
        } else {
          printf("Invalid Audio file %s\r\n", fno.fname);
        }
        while(AUDIO_BUSY(&player)) {
          audio_update(&player, TIM1_UP_TIM10_IRQn);
        }
      }
    }
    f_closedir(&dir);
  } else {
    printf("f_opendir failed: %i\r\n", res);
  }
  printf("Starting timer\r\n");
  HAL_TIM_Base_Start_IT(&htim10);
  /* Infinite loop */
  for (;;) {
    controls_update();
  }

}
