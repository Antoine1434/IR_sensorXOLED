/*
 * test program for gpio library (switch and led)
 * author 
 */
#include <bsplib.h>

void main(void)
{   
    led2_init();
    led3_init();
    led4_init();
    led5_init();
    
    switch1_init();
    switch2_init();
    
    while(1){

    /*if (switch2_read()==0) {    // bouton poussoir active au niveau bas  
        //LATA = 0xF0;
        //LATA = 0x00;
        led2_on();
        led3_on();
    }
    else{
        led2_off();
        led3_off();
    };
    if((switch1_read()==0)){
       led4_on();
       led5_on();
    }
    else{
        led4_off();
        led5_off();
    }*/
        
        led2_on();
        delay_10us();
        led2_off();
        delay_10us();
    }
    }
   

