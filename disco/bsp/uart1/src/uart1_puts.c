/* 
 * uart1/src/uart1_puts.c
 * send caracters string
 * author 
 */

#include <uart1/include/uart1.h>
#include	<string.h>

void uart1_puts(const uInt8_t *str)
{
    for (int i =0; i< strlen(str) ;i++){
        uart1_putc(str[i]); 
    }
}
