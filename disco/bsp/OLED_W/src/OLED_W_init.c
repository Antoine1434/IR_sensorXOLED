/*
 * OLED_W/src/OLED_W_init.c
 * OLED_W initialisation
 * author 
 */
#include <bsplib.h>


void OLED_W_init()
{
    ANSELA = 0;
    ANSELB = 0;
    
    TRISAbits.TRISA2 = 0;// RESET (RD2 -> RA2)
    LATAbits.LATA2 = 0; // When the pin is pulled LOW, initialization of the chip is executed.
    delay_200ms();
    LATAbits.LATA2 = 1;
    delay_200ms();
            
    TRISBbits.TRISB2 = 0;// CS (RD3 -> RB2)
    LATBbits.LATB2 = 0;
    
    TRISBbits.TRISB1 = 0; // SCK (RB1)
    TRISBbits.TRISB3 = 0; // SDI (RB3)
    
    TRISBbits.TRISB0 = 0; // D/C (RD1 -> RB0)
    LATBbits.LATB0 = 0; 
    
    /*Software Configuration*/
    SPI_write_command(0xAE); // Display OFF
    
    SPI_write_command(0xD5); // clock divide ratio (0x00=1) and oscillator
    SPI_write_command(0x80);
    
    SPI_write_command(0xA8); // SET MUX RATIO
    SPI_write_command(0x27);
    
    SPI_write_command(0xD3); // SET display offset
    SPI_write_command(0x00);
    
    SPI_write_command(0x40); // SET display start line
    
    SPI_write_command(0x8D); // Enable charge pump regulator
    SPI_write_command(0x14);
    
    SPI_write_command(0x20); // horizontal addressing mode
    SPI_write_command(0x00);
    
    
    
    //SPI_write_command(0xA0); // SET segment re-map
    SPI_write_command(0xA1);
    
    // SPI_write_command(0xC0); // Set COM Output Scan Direction
    SPI_write_command(0xC8); //  c0: scan dir normal, c8: reverse,
    
    SPI_write_command(0xDA); // Set COM Pins hardware configuration
    SPI_write_command(0x12);
    
    SPI_write_command(0x81); // Set Contrast Control
    SPI_write_command(0x7F);
    
    SPI_write_command(0xD9); // [2] pre-charge period 0x0f1
    SPI_write_command(0xF1);
    
    SPI_write_command(0xDB); // vcomh deselect level 
    SPI_write_command(0x20);
    
    SPI_write_command(0x02); // Deactivate scroll 
    
    SPI_write_command(0xA4); // Disable Entire Display On
    
    SPI_write_command(0xA6); // Set Normal Display
    
    SPI_write_command(0xD5); // Set Osc Frequency
    SPI_write_command(0x80);

    SPI_write_command(0xAF); // Display On
    
    LATBbits.LATB2 = 1;
}