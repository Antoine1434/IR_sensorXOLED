/*
 * test program for OLED_W library
 * author 
 */

#include <bsplib.h>


//static u8x8_t  u8x8 @ 0x140;
//static u8g2_t  u8g2 @ 0x140;

void __interrupt(high_priority) isr_high (void)
{

}

void __interrupt(low_priority) isr_low (void)
{

}

//u8g2_t a,b,c,d;


void main()
{
    //u8g2_uint_t a,b,c,d;
    //a=0;
    //b = 15;
    //c = 12;
    //d = 14;
    SPI_init();
    OLED_W_init();
   /* u8x8_Setup(&u8x8,u8x8_d_ssd1306_96x39,u8x8_cad_001,u8x8_byte_4wire_sw_spi_pic18,u8x8_gpio_and_delay_pic18);      
    u8x8_ClearDisplay(&u8x8);
    //u8g2_DrawLine(&u8x8,a, b,c,d);
   
   //u8x8_d_ssd1306_96x39(&u8g2, U8G2_R0,u8x8_byte_4wire_sw_spi_pic18,u8x8_gpio_and_delay_pic18);

u8g2_InitDisplay(&u8g2);       // initialise le contrôleur
u8g2_SetPowerSave(&u8g2, 0);   // sort du mode veille (souvent oublié ? écran noir)
//u8g2_ClearBuffer(&u8g2);       // vide le buffer en RAM

//u8g2_DrawLine(&u8g2, a, b, c, d);

//u8g2_SendBuffer(&u8g2);   
    
    */
    while(1){
        //mOLED_W_xy(96,39);
        OLED_W_full(0);
        OLED_W_eight(85,10);
    
    }


	
}
