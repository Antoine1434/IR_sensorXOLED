/*
 * IRsensor/src/IRsensor_analyze_data.c
 * data sensor analyze
 * author 
 */

#include <bsplib.h>

uInt8_t IRsensor_record_data(uInt8_t data)
{
    uInt8_t database[];
    static uInt8_t n = 0;
    database[n] = data;
    n++;
    return database[n-1];
}

uInt8_t IRsensor_analyze_data(uInt8_t donnee)
{
    static uInt8_t count = 0;
    if (donnee){
        count++;
    }
    else {
        count = 0;
    }
    return count;
}

void IRsensor_display(uInt8_t compteur)
{
    #ifdef UART
    if ((compteur < 10) && (compteur > 0)){
        uart1_puts("Une menace a ete detecte pendant ");
        uart1_putc( compteur + '0');
        uart1_puts("secondes");
        led2_on();
        led3_on();
        led4_on();
        led5_on();
    }else if (compteur >=10){
        uart1_puts("Une menace a ete detecte pendant ");
        uart1_putc((compteur/10) + '0');
        uart1_putc((compteur%10) + '0');
        uart1_puts("secondes");
        led2_on();
        led3_on();
        led4_on();
        led5_on();
    }else if (compteur == 0){
        uart1_puts("Une menace a ete detecte pendant ");
        uart1_putc( compteur + '0');
        uart1_puts("secondes"); 
        led2_off();
        led3_off();
        led4_off();
        led5_off();
    }
    #endif
}

void IRsensor_stop(){
    #ifdef UART
    static uInt8_t flag = 0;
    
    if ((switch1_read() == 0) && (switch2_read() == 1) && (flag == 0)){
        while (switch1_read() == 0);
        flag++;
    }else if ((switch1_read() == 1) && (switch2_read() == 0) && (flag == 1)){
        while(switch2_read() == 0);
        flag++;
    }else if ((switch1_read() == 0) && (switch2_read() == 0) && (flag >= 2)){
        while ((PORTCbits.RC5 == 0) && (PORTBbits.RB4 == 0));
        flag = 0;
        ANSELBbits.ANSELB0 = 1;
        TRISBbits.TRISB0 = 0;
        uart1_puts("\nDetecteur off\n");
    }
    #endif
}


