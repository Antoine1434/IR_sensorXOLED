/*
 * gpio/src/led_init.c
 * led's pins initializations 
 * author 
 */

#include <gpio/include/gpio.h>
#include <pic18f27k40.h>
void led2_init(void)
{
    TRISAbits.TRISA4 = 0x00;
}  

void led3_init(void)
{
    TRISAbits.TRISA5= 0x00;
} 

void led4_init(void)
{
    TRISAbits.TRISA6 = 0x00;
} 

void led5_init(void)
{
    TRISAbits.TRISA7= 0x00;
} 