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
#include "macro.h"

#define RSIZE 32768

extern void SystemClock_Config(void); // Not exported by CubeMX
static char semihosting_stdout_buf[16];
static char semihosting_stderr_buf[16];

/**
 * Override SD detection. SDIO driver assumes pull to ground, however,
 * by accident permanently pulled high.
 * @return
 */
uint8_t BSP_SD_IsDetected(void) {
  return SD_PRESENT;
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

  if(!controls_init()) {
    printf("Error initialising controls\r\n");
    for(;;);
  }
  printf("Starting timer\r\n");
  HAL_TIM_Base_Start_IT(&htim10);
  /* Infinite loop */
  for (;;) {
    controls_update();
  }

}
