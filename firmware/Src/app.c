/**
 * Main Application Entry
 * @author Thomas Reidemeister
 * @file app.c
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "main.h"
#include "dac.h"
#include "fatfs.h"
#include "sdio.h"
#include "gpio.h"

#include "bsp_driver_sd.h"
#include "control.h"

#define RSIZE 32768

extern void SystemClock_Config(void); // Not exported by CubeMX
static char semihosting_stdout_buf[16];
static char semihosting_stderr_buf[16];
static char buffer[RSIZE];

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
      printf(" %s\r\n", fno.fname);
      int before = HAL_GetTick();
      FIL fp;
      res = f_open(&fp, fno.fname, FA_READ);
      if(res != FR_OK)
        printf("Error opening\r\n");
      UINT sz = RSIZE;
      while(res == FR_OK && sz >= RSIZE) {
        res = f_read(&fp, buffer, RSIZE, &sz);
      }

      int after = HAL_GetTick();
      printf("%i ms\r\n", (after-before));
    }
    f_closedir(&dir);
  } else {
    printf("f_opendir failed: %i\r\n", res);
  }

  /* Infinite loop */
  for (;;) {
    controls_update();
  }

}
