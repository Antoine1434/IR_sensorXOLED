/*
* SPI/src/SPI_write.c
*/

#include <bsplib.h>

void SPI_write_command(uInt8_t payload)
{
    LATBbits.LATB0 = 0; // D/C low level to send command
    LATBbits.LATB2 = 0;
    SPI_send(payload);
    LATBbits.LATB2 = 1;

}

void SPI_write_data(uInt8_t payload)
{
    LATBbits.LATB0 = 1; // D/C high level to send data
    LATBbits.LATB2 = 0;
    SPI_send(payload);
    LATBbits.LATB2 = 1;
}

void SPI_write(uInt8_t payload){
    SSP1BUF = payload;
    while (!SSP1STATbits.BF);
}

