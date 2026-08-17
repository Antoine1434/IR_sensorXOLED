#include "u8g2.h"
#include <bsplib.h>
#include <IR_sensorXOLED\include\IR_sensorXOLED.h>
#include <pic18f27k40.h>

u8g2_t u8g2 @0x140; 

uint8_t b  = 0;
uint8_t c = 0;
uint8_t d = 0;
uint8_t e = 0;
uint8_t test @0x155;
uint8_t last_touche @0x156;
uint16_t cnt @0x157;

char touche @0x160;


void IRsensorXOLED_display(uint8_t a)
{
    if (a && b == 0){
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawFrame(&u8g2,25,28,38,10);
        u8g2_DrawStr(&u8g2,16,10,"Détection");
        u8g2_DrawStr(&u8g2,10,24,"Entrez code:");
        u8g2_SendBuffer(&u8g2);
    }
}

void IRsensorXOLED_stop()
{
    static uInt8_t flag = 0;
    last_touche = 0;
    touche = elego_keyboard();
    elego_alarme_buzzer();
    
    while(touche!=0 && touche == last_touche);
    
    last_touche = touche;
    
    if (touche == password[0] && (flag == 0)){
        c = 1;
        flag++;
    }
    else if (touche == password[1] && (flag == 1)){
        d= 1;
        flag++;
    }
    else if (touche == password[2] && (flag == 2)){
        e = 1;
        flag++;
    }
    else if (touche == password[3] && (flag == 3)){
        IRsensor_off();
        
        ANSELCbits.ANSELC0 = 1;
        TRISCbits.TRISC0 = 1;
        
        u8g2_DrawStr(&u8g2,47,36," *");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,10,16,"Code bon");
        u8g2_DrawStr(&u8g2,4,24,"Détecteur off");
        u8g2_SendBuffer(&u8g2);
        
        delay(15);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,17,24,"Bienvenue");
        u8g2_SendBuffer(&u8g2);
        
        b = 1;
        c = 0;
        d = 0;
        e = 0;
        flag = 0;
        
        delay(25);
        
        u8g2_display_off();
        
        sys_interrupt_disable();
    }
    else if ((touche != password[0]) && (touche > 0) && ((flag == 0))){
       
        e = 0;
        c = 0;
        d = 0;
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,10,24,"Code erronné");
        u8g2_SendBuffer(&u8g2);

        delay(10);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 5 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 4 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 3 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 2 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 1 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 0 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,6,24,"Entrez code !");
        u8g2_SendBuffer(&u8g2);
   
        test = 0;
        
        while (elego_keyboard() != password[0]){
            if (test == 0){
                delay(15);
                test = 1;
            }
            else if (test == 1){
                
                u8g2_ClearBuffer(&u8g2);
                u8g2_DrawStr(&u8g2,6,24,"Alerte Danger !");
                u8g2_DrawStr(&u8g2,6,35,"Call 911");
                u8g2_SendBuffer(&u8g2);
                led2_on();
                led3_on();
                led4_on();
                led5_on();
                elego_active_buzzer();
                delay(1);
                led2_off();
                led3_off();
                led4_off();
                led5_off();
                elego_off_buzzer();
                delay(1);
            }
        };
        flag = 0;
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawFrame(&u8g2,25,28,38,10);
        u8g2_DrawStr(&u8g2,16,10,"Détection");
        u8g2_DrawStr(&u8g2,10,24,"Entrez code:");
        u8g2_SendBuffer(&u8g2);
    }
    
    else if (touche != password[1] && (touche > 0)&& (flag == 1)){
        flag = 0;
        c = 0;
        d = 0;
        e = 0;
   
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,10,24,"Code erronné");
        u8g2_SendBuffer(&u8g2);
        
        delay(10);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 5 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 4 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 3 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 2 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 1 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 0 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,6,24,"Entrez code !");
        u8g2_SendBuffer(&u8g2);
        
        test = 0;
        while (elego_keyboard() != password[1]){
            if (test == 0){
                delay(15);
                test = 1;
            }
            else if (test == 1){
                u8g2_ClearBuffer(&u8g2);
                u8g2_DrawStr(&u8g2,6,24,"Alerte Danger !");
                u8g2_DrawStr(&u8g2,6,35,"Call 911");
                u8g2_SendBuffer(&u8g2);
                led2_on();
                led3_on();
                led4_on();
                led5_on();
                elego_active_buzzer();
                delay(1);
                led2_off();
                led3_off();
                led4_off();
                led5_off();
                elego_off_buzzer();
                delay(1);
            }
        };
        flag = 0;
        delay(1);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawFrame(&u8g2,25,28,38,10);
        u8g2_DrawStr(&u8g2,16,10,"Détection");
        u8g2_DrawStr(&u8g2,10,24,"Entrez code:");
        u8g2_SendBuffer(&u8g2);
    }
    
    else if (touche != password[2] && (touche > 0)&& (flag == 2)){
        flag = 0;
        c = 0;
        d = 0;
        e = 0;
   
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,10,24,"Code erronné");
        u8g2_SendBuffer(&u8g2);
        
        delay(10);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 5 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 4 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 3 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 2 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 1 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 0 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,6,24,"Entrez code !");
        u8g2_SendBuffer(&u8g2);
        
        test = 0;
        while (elego_keyboard() != password[2]){
            if (test == 0){
                delay(15);
                test = 1;
            }
            else if (test == 1){
            u8g2_ClearBuffer(&u8g2);
            u8g2_DrawStr(&u8g2,6,24,"Alerte Danger !");
            u8g2_DrawStr(&u8g2,6,35,"Call 911");
            u8g2_SendBuffer(&u8g2);
            led2_on();
            led3_on();
            led4_on();
            led5_on();
            elego_active_buzzer();
            delay(1);
            led2_off();
            led3_off();
            led4_off();
            led5_off();
            elego_off_buzzer();
            delay(1);
            }
        };
        delay(5);
        flag = 0;
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawFrame(&u8g2,25,28,38,10);
        u8g2_DrawStr(&u8g2,16,10,"Détection");
        u8g2_DrawStr(&u8g2,10,24,"Entrez code:");
        u8g2_SendBuffer(&u8g2);
    }
    
    else  if (touche!= password[3] && (touche > 0)&& (flag == 3)){
        flag = 0;
        c = 0;
        d = 0;
        e = 0;
   
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,10,24,"Code erronné");
        u8g2_SendBuffer(&u8g2);
        
        delay(10);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 5 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 4 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 3 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 2 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 1 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,24,24,"Warning");
        u8g2_DrawStr(&u8g2,35,32," 0 ");
        u8g2_SendBuffer(&u8g2);
        
        delay(5);
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawStr(&u8g2,6,24,"Entrez code !");
        u8g2_SendBuffer(&u8g2);
        
        test = 0;
        while (elego_keyboard() != password[3]){
            if (test == 0){
                delay(15);
                test = 1;
            }
            else if (test == 1){
                u8g2_ClearBuffer(&u8g2);
                u8g2_DrawStr(&u8g2,6,24,"Alerte Danger !");
                u8g2_DrawStr(&u8g2,6,35,"Call 911");
                u8g2_SendBuffer(&u8g2);
                led2_on();
                led3_on();
                led4_on();
                led5_on();
                elego_active_buzzer();
                delay(1);
                led2_off();
                led3_off();
                led4_off();
                led5_off();
                elego_off_buzzer();
                delay(1);
            }
        };
        delay(5);
        flag = 0;
        
        u8g2_ClearBuffer(&u8g2);
        u8g2_DrawFrame(&u8g2,25,28,38,10);
        u8g2_DrawStr(&u8g2,16,10,"Détection");
        u8g2_DrawStr(&u8g2,10,24,"Entrez code:");
        u8g2_SendBuffer(&u8g2);
    };
}

   


void IRsensorXOLED_croix()
{
    if (c == 1){
        u8g2_DrawStr(&u8g2,23,36," *");
        u8g2_SendBuffer(&u8g2);
    }
    
    if (d == 1){
        u8g2_DrawStr(&u8g2,31,36," *");
        u8g2_SendBuffer(&u8g2);
    }
    
    if (e == 1){
        u8g2_DrawStr(&u8g2,39,36," *");
        u8g2_SendBuffer(&u8g2);    
    }
}

void elego_keyboard_init()
{
    ANSELCbits.ANSELC2 = 0;
    ANSELCbits.ANSELC3 = 0;
    ANSELCbits.ANSELC6 = 0;
    ANSELCbits.ANSELC7 = 0;

    ANSELAbits.ANSELA0 = 0;
    ANSELAbits.ANSELA1 = 0;
    ANSELBbits.ANSELB7 = 0;
    ANSELAbits.ANSELA3 = 0;
    

    TRISAbits.TRISA0 = 0; //A0 row 1
    TRISAbits.TRISA1 = 0; //A1 row 2
    TRISBbits.TRISB7 = 0; //A2 row 3
    TRISAbits.TRISA3 = 0; //A3 row 4

    LATAbits.LATA0 = 1; 
    LATAbits.LATA1 = 1;
    LATBbits.LATB7 = 1;
    LATAbits.LATA3 = 1;

    TRISCbits.TRISC2 = 1; // C2 column 1
    TRISCbits.TRISC7 = 1; // C7 column 2
    TRISCbits.TRISC3 = 1; // C3 column 3
    TRISCbits.TRISC6 = 1; // C6 column 4
    
    LATCbits.LATC2 = 1; 
    LATCbits.LATC7 = 1;
    LATCbits.LATC3 = 1;
    LATCbits.LATC6 = 1;
    

    WPUCbits.WPUC7 = 1; // Weak Pull-up enabled
    WPUCbits.WPUC6 = 1; // Weak Pull-up enabled
    WPUCbits.WPUC3 = 1; // Weak Pull-up enabled
    WPUCbits.WPUC2 = 1; // Weak Pull-up enabled
}

char elego_keyboard(void)
{
    static const char hexaKeys[4][4] = {
        {'1','2','3','A'},
        {'4','5','6','B'},
        {'*','0','#','D'},
        {'7','8','9','C'}
     };

    for (uint8_t r = 0; r < 4; r++){
        if (r == 0){
            LATAbits.LATA0 = 0;
            LATAbits.LATA1 = 1;
            LATBbits.LATB7 = 1;
            LATAbits.LATA3 = 1;
        }
        if (r == 1){
            LATAbits.LATA1 = 0;
            LATAbits.LATA0 = 1;
            LATBbits.LATB7 = 1;
            LATAbits.LATA3 = 1;
        }
        if (r == 2){
            LATBbits.LATB7 = 0;
            LATAbits.LATA1 = 1;
            LATAbits.LATA0 = 1;
            LATAbits.LATA3 = 1;
        }
        if (r == 3){
            LATAbits.LATA1 = 1;
            LATBbits.LATB7 = 1;
            LATAbits.LATA0 = 1;
            LATAbits.LATA3 = 0;
        }
        
        delay_1ms();

        if (PORTCbits.RC2 == 0) {
            while(PORTCbits.RC2 == 0); 
            return hexaKeys[r][0];
        }
        if (PORTCbits.RC7 == 0) { 
            while(PORTCbits.RC7 == 0);
            return hexaKeys[r][1]; 
        } 
        if (PORTCbits.RC3 == 0) {
            while(PORTCbits.RC3 == 0); 
            return hexaKeys[r][2]; 
        } 
        if (PORTCbits.RC6 == 0) { 
            while(PORTCbits.RC6 == 0); 
            return hexaKeys[r][3]; } 
    }
    
    LATAbits.LATA0 = 1;
    LATAbits.LATA1 = 1;
    LATBbits.LATB7 = 1;
    LATAbits.LATA3 = 1;

    return 0; 
}
void elego_init_buzzer(void)
{
    ANSELCbits.ANSELC0 = 0;
    TRISCbits.TRISC0 = 0;
    LATCbits.LATC0 = 0;
}
void elego_active_buzzer(void)
{
    LATCbits.LATC0 = 1;
}

void elego_off_buzzer(void)
{
    LATCbits.LATC0 = 0;
}

void elego_alarme_buzzer()
{
    if (touche == 0){
        cnt++;
    }
    else{
        cnt =0;
        elego_off_buzzer();
        led2_off();
        led3_off();
        led4_off();
        led5_off();
    };
    if (cnt >= 500){
        elego_active_buzzer();
        led2_on();
        led3_on();
        led4_on();
        led5_on();
        delay_200ms();
        elego_off_buzzer();
    }
}

void delay(uint8_t k)
{
    for (uint8_t i=0; i<k;i++){
        delay_200ms();
    }
}

void IRsensorXOLED_init()
{
    SPI_init();

    my_u8g2_Setup_ssd1306_96x39_f(&u8g2, U8G2_R0,u8x8_byte_4wire_sw_spi_pic18,u8x8_gpio_and_delay_pic18);
    
    u8g2_InitDisplay(&u8g2);
   
    u8g2_SetPowerSave(&u8g2,0);
    
    u8g2_SetFlipMode(&u8g2, 0);
    
    u8g2_SetFont(&u8g2, u8g2_font_6x10_tf);
    
    elego_init_buzzer();
    
    elego_keyboard_init();
    
    u8g2_ClearBuffer(&u8g2);
    u8g2_DrawStr(&u8g2,10,24,"Détecteur on");
    u8g2_SendBuffer(&u8g2);
    
    delay(15);
    
    IRsensor_system_init();
}

void u8g2_display_off()
{
    u8g2_ClearBuffer(&u8g2);
    u8g2_SendBuffer(&u8g2);
}

