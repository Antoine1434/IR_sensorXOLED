/**
 * @file u8g2_pic18/u8g2_pic18.h
 * @brief header file for u8g2_pic18 library 
 * @author antoine merceron - copyleft
 */

#include "u8g2.h"


uint8_t u8x8_byte_4wire_sw_spi_pic18(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

uInt8_t u8x8_gpio_and_delay_pic18(u8x8_t *u8x8,uint8_t msg,uint8_t arg_int,void *arg_ptr);

uint8_t *my_u8g2_m_12_5_f(uint8_t *page_cnt);

void my_u8g2_Setup_ssd1306_96x39_f(u8g2_t *u8g2, const u8g2_cb_t *rotation, u8x8_msg_cb byte_cb, u8x8_msg_cb gpio_and_delay_cb);

uint8_t my_u8x8_msg_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

uint8_t my_u8x8_cad_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

uint8_t my_u8x8_byte_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

uint8_t my_u8x8_GPIO_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);


