/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LAMP_OUT_Pin GPIO_PIN_0
#define LAMP_OUT_GPIO_Port GPIOC
#define LED_OUT_Pin GPIO_PIN_1
#define LED_OUT_GPIO_Port GPIOC
#define MOTOR_2_Pin GPIO_PIN_2
#define MOTOR_2_GPIO_Port GPIOC
#define MOTOR_1_Pin GPIO_PIN_3
#define MOTOR_1_GPIO_Port GPIOC
#define VOLUMNE_IN_Pin GPIO_PIN_5
#define VOLUMNE_IN_GPIO_Port GPIOC
#define MUSIC_BTN_Pin GPIO_PIN_0
#define MUSIC_BTN_GPIO_Port GPIOB
#define LEFT_BTN_Pin GPIO_PIN_1
#define LEFT_BTN_GPIO_Port GPIOB
#define HORN_BTN_Pin GPIO_PIN_2
#define HORN_BTN_GPIO_Port GPIOB
#define RIGHT_BTN_Pin GPIO_PIN_10
#define RIGHT_BTN_GPIO_Port GPIOB
#define LIGHT_BTN_Pin GPIO_PIN_11
#define LIGHT_BTN_GPIO_Port GPIOB
#define BWD_BTN_Pin GPIO_PIN_12
#define BWD_BTN_GPIO_Port GPIOB
#define FWD_BTN_Pin GPIO_PIN_13
#define FWD_BTN_GPIO_Port GPIOB
#define GAS_BTN_Pin GPIO_PIN_14
#define GAS_BTN_GPIO_Port GPIOB
#define SDIO_CD_Pin GPIO_PIN_15
#define SDIO_CD_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */
extern void timer_callback(void);
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
