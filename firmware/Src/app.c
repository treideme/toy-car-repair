/**
 * Main Application Entry
 * @author Thomas Reidemeister
 * @file app.c
 */
#include "main.h"
#include "dac.h"
#include "fatfs.h"
#include "sdio.h"
#include "gpio.h"

extern void SystemClock_Config(void); // Not exported by CubeMX

/**
 * @brief  The application entry point.
 * @retval int
 */
int main(void) {
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
  }

}
