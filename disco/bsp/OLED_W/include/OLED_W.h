/**
 * @file OLED_W/include/OLED_W.h
 * @brief header file for OLED_W_click MIKROE-1649 library 
 * @author antoine merceron - copyleft
 */

/** @ingroup OLED_W */
/* @{ */
/** @defgroup  OLED_W */
/** @ingroup OLED_W */
/* @{ */

#ifndef _OLED_W_H
#define _OLED_W_H

#include <common/include/common.h>
#include <u8g2/csrc/u8g2.h>

/*API reference*/

/**
* @brief OLED_W configuration 
*/
 void OLED_W_init(void);
 
/**
* @brief OLED_W full display 
*/
 void OLED_W_full(uInt8_t choose);
 
/**
* @brief Function enabling the use of the u8g2 library on PIC18 (configuration of SPI)
* @warning For use only with the u8g2 library and a PIC18 (tested with the PIC18F27K40)
*/
  uint8_t u8x8_byte_4wire_sw_spi_pic18(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

  /**
* @brief Function enabling the use of the u8g2 library on PIC18 (configuration of GPIO)
* @warning For use only with the u8g2 library and a PIC18 (tested with the PIC18F27K40)
*/
  uint8_t u8x8_gpio_and_delay_pic18(u8x8_t *u8x8,uint8_t msg,uint8_t arg_int,void *arg_ptr);

#endif /*OLED_W_H*/
