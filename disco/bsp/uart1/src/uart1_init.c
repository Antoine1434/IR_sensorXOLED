/*
 * uart1/src/uart1_init.c
 * uart1 configuration
 * author 
 */

#include <uart1/include/uart1.h>

#define fclock  64000000 

extern uInt8_t rx1_uart1_flag;
	
void uart1_init(uInt32_t bdrate)
{
    //Configurer RC6 en output
    //TRISCbits.TRISC6 = 0;
    
   // Initialiser buffer reception (RC7)
   ANSELCbits.ANSELC7 = 0; 
   
    RC6PPS= 0x09; // Sélectionner l'input et l'output input pour avoir sur RC6,TX1 et RX sur RC7
    RX1PPS = 0x17;
    
    //Activation
    RC1STAbits.SPEN = 1;
    RC1STAbits.RX9 = 0;
    RC1STAbits.CREN=1;
    
    
   
   
    //UART1 Transmitter configuration
    TX1STA = 0x24;
    
    //UART Baudrate configuration
    BAUDCON1 =0x08;
    
    uInt16_t load = ((fclock/(4*bdrate))-1);
    
    
    //Baud rate = 9600 avec fosc = 64MHz
   SP1BRGH = (uInt8_t) (load>>8);
   SP1BRGL = (uInt8_t) (load);
    
   //Configurer interruption Rx
   PIR3bits.RC1IF= 0; // clear uart1 
 PIE3bits.RC1IE = 1; //interrupt enable
 IPR3bits.RC1IP = 0; //low priority
   
   
  
}
