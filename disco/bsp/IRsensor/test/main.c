/*
 * test program for IRsensor library (switch and led)
 * author 
 */
 
#include <bsplib.h>

uInt8_t tick_1,tick_2;

void __interrupt(high_priority) isr_high (void)
{ 
    if (PIR0bits.TMR0IF == 1) {
        PIR0bits.TMR0IF = 0;
        timer0_reload(SYSTEM_TICK_PERIOD_IR);
        tick_1 = 1;
    }
    
    if (PIR4bits.TMR1IF){
        PIR4bits.TMR1IF = 0;
        timer1_reload(TIMER1_PERIOD);
        tick_2 = 1;
    }
}

void __interrupt(low_priority) isr_low (void)
{
    uart1_isr_process();
    uart2_isr_process();
}

void main(void)
{ 
    IRsensor_system_init();
    sys_interrupt_enable();
    
    #ifdef init_test
    uart1_puts("\nSTART APPLICATION\n\r");
    #endif
    uInt8_t a,b; 
    
    while(1){
        if(tick_1){
            tick_1 = 0;
            a = IRsensor_read_data();
            b = IRsensor_analyze_data(a);
            uart1_putc(a + '0');
            uart1_puts("\r");
            IRsensor_display(b);
        }
        if (tick_2){
            tick_2 = 0;
            IRsensor_stop();
        }
        sleep();
    }
}   
