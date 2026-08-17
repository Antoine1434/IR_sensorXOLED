/*
 * timer0/src/timer0_reload.c
 * timer0 reload value
 * author 
 */

#include <timer0/include/timer0.h>

void timer0_reload(uInt16_t count)
{
 uInt16_t preload = (uInt16_t) 65535-count;
TMR0H = (uInt8_t) (preload >>8); //Bits de poids forts
TMR0L = (uInt8_t) preload; // bits de poids faible
}
