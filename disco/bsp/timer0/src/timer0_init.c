/*
 * timer0/src/timer0_init.c
 * timer0 configuration
 * author 
 */

#include <timer0/include/timer0.h>

void timer0_init(uInt16_t count)
{
    /*int prescaler = 0x10;
    int postscaler= 0x01;
 T0CON0 = prescaler;
 T0CON1 = postscaler;*/
 
 T0CON0bits.T0OUTPS = 0b0000;    // postcaler 1:1 
 T0CON0bits.T016BIT = 1; 
 
 T0CON1bits.T0CS = 0b010;
 T0CON1bits.T0ASYNC=1; 
 T0CON1bits.T0CKPS = 0b1000; //prescaler 1:256 (for a prescaler 1:16, use 0b0100)
 
 PIR0bits.TMR0IF= 0; // clear flag timer0 
 PIE0bits.TMR0IE = 1; //interrupt enable
 IPR0bits.TMR0IP = 1; // high priority
 
 //Global interrupt enable
 /*INTCONbits.GIEL = 1;	
 INTCONbits.GIEH = 1;	
 INTCONbits.IPEN = 1;
 */
 
 
 uInt16_t preload = (uInt16_t) 65535-count;
TMR0H = (uInt8_t) (preload >>8); //Bits de poids forts
TMR0L = (uInt8_t) preload; // bits de poids faible
 
 timer0_start();
 
 CPUDOZEbits.IDLEN = 1; //CPU sleep, LEEP instruction inhibits the CPU clock, but not the peripheral clock(s)
 }
