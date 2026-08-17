#include "u8g2.h"
#include <bsplib.h>
#include <IR_sensorXOLED\include\IR_sensorXOLED.h>

u8g2_t u8g2 @0x140;

uInt8_t tick_1 @0x150;
uInt8_t tick_2 @0x151;
uInt8_t test_keyboard @0x152;
uInt16_t cnt  @0x157;
uInt8_t detected  @0x154;

 

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



void main()
{ 
    switch1_init();
    IRsensor_off();
    u8g2_ClearBuffer(&u8g2);
    
    if (switch1_read() == 0){
        while (switch1_read() == 0);
        
        cnt = 0;
        detected = 0;
        uInt8_t data;
        
        IRsensorXOLED_init();
        sys_interrupt_enable();
    
        while(1){
            if(tick_1){
                tick_1 = 0;
                data = IRsensor_read_data();
                IRsensorXOLED_display(data);
                if (data != 0){
                    detected = 1; 
                }
            };


            if (tick_2){
                tick_2 = 0;
                if (detected){
                    IRsensorXOLED_stop();
                    IRsensorXOLED_croix();
                }
            }
            
            sleep();
        
            #ifdef elego_keyboard_test
            delay(200);
            test_keyboard = elego_keyboard();
            u8g2_ClearBuffer(&u8g2);
            u8g2_DrawGlyph(&u8g2,45,24,test_keyboard);
            u8g2_SendBuffer(&u8g2);
            delay(1);
            #endif
        
            #ifdef elego_buzzer_test
            elego_active_buzzer();
            delay(1);
            elego_off_buzzer();
            delay(1);
            #endif
        }   
    }
}
  