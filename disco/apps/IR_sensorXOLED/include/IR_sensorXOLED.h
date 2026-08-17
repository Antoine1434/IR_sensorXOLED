/**
 * @file apps/IR_sensorXOLED/include/IR_sensorXOLED.h
 * @brief header file for IR_sensorXOLED library 
 * @author antoine merceron - copyleft
 */

#ifndef _IR_sensorXOLED_H
#define _IR_sensorXOLED_H

/* API reference */

 /**
  * @brief displays on the screen a message when the sensor detects something
  */
void IRsensorXOLED_display(uint8_t a);

 /**
  * @brief stop the utilisation of the sensor 
  */
void IRsensorXOLED_stop(void);

 /**
  * @brief displays a cross when a key is pressed
  */
void IRsensorXOLED_croix(void);

 /**
  * @brief elego keyboard configuration
  */
void elego_keyboard_init();

 /**
  * @brief elego keyboard utilisation
  */
char elego_keyboard(void);

 /**
  * @brief elego buzzer on
  */
void elego_active_buzzer(void);

 /**
  * @brief elego buzzer off
  */
void elego_off_buzzer(void);

static const char password[4] = {'A','#','2','0'};

 /**
  * @brief elego buzzer on when a key isn't pressed during few seconds
  */
void elego_alarme_buzzer();

 /**
  * @brief elego buzzer initialisation
  */
void elego_init_buzzer(void);

 /**
  * @brief creates a delay
  */
void delay(uint8_t k);

 /**
  * @brief system (screen + sensor + buzzer + keyboard) initialisation 
  */
void IRsensorXOLED_init();

void delay(uint8_t k);

 /**
  * @brief screen off
  */
void u8g2_display_off();

#endif /* _IR_sensorXOLED_H */
