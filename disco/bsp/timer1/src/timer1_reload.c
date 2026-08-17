/*
 * timer0/src/timer0_reload.c
 * timer0 reload value
 * author 
 */

#include <timer1/include/timer1.h>

void timer1_reload(uInt16_t count)
{
 uInt16_t preload = (uInt16_t) 65535-count;
TMR1H = (uInt8_t) (preload >>8); //Bits de poids forts
TMR1L = (uInt8_t) preload; // bits de poids faible
}
