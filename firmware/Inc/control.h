#ifndef _control_h_
#define _control_h_

#include <stdbool.h>
#include <stdint.h>

#include "stm32f4xx_hal.h"
#include "fatfs_platform.h"
#include "main.h"

typedef enum {
  INPUT_OFF,
  INPUT_ON
} input_state_t;

typedef struct {
  input_state_t current_state;
  input_state_t last_state;

  GPIO_TypeDef* GPIOx;
  uint16_t GPIO_Pin;
  bool inverted;

  bool (*on_change)(const input_state_t current, const input_state_t before);
} input_t;

typedef struct {
  bool forward_set;
  bool backward_set;
  bool running;

  GPIO_TypeDef* GPIO_bridge_1;
  uint16_t GPIO_Pin_bridge_1;
  GPIO_TypeDef* GPIO_bridge_2;
  uint16_t GPIO_Pin_bridge_2;
} motor_t;

bool control_handle_input(input_t*p_input);

bool control_write_motor(motor_t *p_motor);

bool controls_update();



#endif // _control_h_

