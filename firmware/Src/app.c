/**
 * Main Application Entry
 * @author Thomas Reidemeister
 * @file app.c
 */
#include <stdio.h>
#include <stdlib.h>
#include "main.h"
#include "dac.h"
#include "fatfs.h"
#include "sdio.h"
#include "gpio.h"

extern void SystemClock_Config(void); // Not exported by CubeMX
extern void initialise_monitor_handles(void); // Enable Semihosting
char semihosting_stdout_buf[16];
char semihosting_stderr_buf[16];

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

  /* Infinite loop */
  for (;;) {
    printf("Hello world\r\n");
    HAL_Delay(1000);
  }

}
