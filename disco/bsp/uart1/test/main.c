/*
 * test program for uart1 library
 * author 
 */

#include <bsplib.h>
uInt8_t rx1_uart1_flag;
uInt8_t rx1_uart1_payload;


void __interrupt(high_priority) isr_high (void)
{ 
    /* high ISR processing */					
}


void __interrupt(low_priority) isr_low (void)
{
    uart1_isr_process();		
}

void main(void)
{
    uInt8_t payload_uart1;
    
    //Configurer UART1
    uart1_init(UART1_BAUD_RATE);
    
    //Autoriser interruptions
    INTCONbits.IPEN = 1;
    INTCONbits.GIEL = 1;
    INTCONbits.GIEH = 1;
    
    uart1_puts("\n\rStart APP\n\r"); 
    
    while (1) {

        if ( uart1_getc(&payload_uart1,0) ) {
            uart1_putc(payload_uart1); // émission /aller
            uart1_puts("\n\r");      
        }// réception /retour
    }      
}
