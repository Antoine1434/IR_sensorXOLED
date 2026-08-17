/*
 * SPI/src/SPI_init.c
 * SPI initialisation
 * author 
 */
#include <bsplib.h>

void SPI_init()
{
    ANSELB = 0;
    ANSELC = 0;
    
    TRISCbits.TRISC4 = 1; // SDI1 must have corresponding TRIS bit set
    TRISBbits.TRISB3 = 0; // SDO must have corresponding TRIS bit cleared
    TRISBbits.TRISB1 = 0; // SCK (Master mode) must have corresponding TRIS bit cleared
    TRISCbits.TRISC2 = 1; // SS must have corresponding TRIS bit set 
    
    SSP1CON1bits.CKP = 0; // Idle state for the clock is a low level
    SSP1CON1bits.SSPM = 0b0001; // SPI Master mode: Clock = Fosc/16
    
    SSP1STATbits.SMP = 0; // Input data is sampled at the end of data output time
    SSP1STATbits.CKE = 1; // Transmit occurs on the transition from active to Idle clock state
   
    SSP1CLKPPS = 0b01001; // PORTB pin 1 (RB1)
    RB1PPS = 0x0F; // MSSP1 (SCK/SCL) pin output (The RxyPPS and SSPxCLKPPS controls must select the same pin)
    SSP1SSPPS = 0b10010; // SS to pin RC2
    RB3PPS = 0x10; // 0x10 MSSP1 (SDO/SDA)
    SSP1DATPPS = 0x14; //SDI to pin RC4
      
    SSP1IF = 0; // interrupt flag bit, SSP1IF
    SSP1CON1bits.WCOL = 0; // A write to the SSPxBUF register was attempted while the previous byte was still transmitting (must be cleared by software)
    SSP1CON1bits.SSPEN = 1; // Enables the serial port for SPI
    
}
