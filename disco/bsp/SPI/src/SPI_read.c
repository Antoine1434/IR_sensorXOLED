/*
* SPI/src/SPI_read.c
*/

#include <SPI/include/SPI.h>

uInt8_t SPI_read()
{
    SSP1IF = 0;
    SSP1BUF = 0xFF;        
    while(!SSP1IF);        
    return SSP1BUF;
}