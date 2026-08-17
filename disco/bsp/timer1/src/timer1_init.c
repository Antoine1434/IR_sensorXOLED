/*
 * timer1/src/timer1_init.c
 * timer1 configuration
 * author 
 */

#include <timer1/include/timer1.h>
#include <pic18f27k40.h>

void timer1_init(uInt16_t count)
{ 
T1CONbits.CKPS = 0b11;  // prescaler value 1:8
T1CONbits.RD16 = 0; // Enables register Read/Write of Timer1 in two 8-bit operations
TMR1CLKbits.CS = 0b0001; // Fosc/4 (clock source)

PIR4bits.TMR1IF = 0;  // TIMER1 flag low
PIE4bits.TMR1IE = 1;  // TIMER1 interrupt enable
IPR4bits.TMR1IP = 1;  // TIMER1 high priority interruption 
 
uInt16_t preload = (uInt16_t) 65535-count;
TMR1H = (uInt8_t) (preload >>8); //Bits de poids forts
TMR1L = (uInt8_t) preload; // bits de poids faible
 
 timer1_start();
 
 CPUDOZEbits.IDLEN = 1; //CPU sleep, LEEP instruction inhibits the CPU clock, but not the peripheral clock(s)
 }
