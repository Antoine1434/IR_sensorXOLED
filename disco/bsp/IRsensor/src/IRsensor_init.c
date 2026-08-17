/*
 * IRsensor/src/IRsensor_init.c
 * sensor initialisation
 * author 
 */
#include <bsplib.h>


void IRsensor_init()
{
    EN_init();
    OUT_init();
}

void IRsensor_system_init(){
    
    led2_init();
    led3_init();
    led4_init();
    led5_init();
    
    led2_off();
    led3_off();
    led4_off();
    led5_off();
    
    switch1_init();
    switch2_init();
    
    IRsensor_init();
    
    timer0_init(SYSTEM_TICK_PERIOD_IR);
    timer1_init(TIMER1_PERIOD);
    
    #ifdef UART
    uart1_init(UART1_BAUD_RATE);
    uart2_init(UART1_BAUD_RATE);
    #endif
  }
