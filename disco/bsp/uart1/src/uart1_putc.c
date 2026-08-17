/* 
 * uart1/src/uart1_putc.c
 * one byte payload sending
 * author 
 */

#include <uart1/include/uart1.h>

void uart1_putc(uInt8_t payload)
{
    while(TX1STAbits.TRMT == 0){}

    TX1REGbits.TX1REG = payload; //envoie dans le registre de transmssion
}