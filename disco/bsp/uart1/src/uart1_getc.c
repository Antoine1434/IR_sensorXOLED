/*
 * uart1/src/uart1_getc.c
 * one byte payload receiving
 * author 
 */

#include <uart1/include/uart1.h>
#include <pic18f27k40.h>

#define UART1_XON   0x11
#define UART1_XOFF  0x13

circ_buffer_t uart1_rx;

uInt8_t rx1_uart1_flag;
uInt8_t rx1_uart1_payload;



void uart1_isr_process (void)
{
    uInt8_t lost;
    /*if(PIR3bits.RC1IF){
        rx1_uart1_payload =  RC1REG; //  remise à 0 de RC1IF(Interrupt Flag) --> on lit la donnée  
        rx1_uart1_flag=1; //Activer flag
    }*/
    if (PIR3bits.RC1IF){
        if (uart1_rx.nb_elt< UART1_CIRC_BUFF_SIZE){
            uart1_rx.buffer[uart1_rx.idx_write] = RC1REG;
            uart1_rx.nb_elt ++;
            uart1_rx.idx_write ++;
     
            if (uart1_rx.idx_write >= UART1_CIRC_BUFF_SIZE){ //idx.write utiliser pour savoir si le buffer est plein (nb d'éléments varie avec la vitesse d'écriture et la vitesse de lecture)
                uart1_rx.idx_write = 0;
}
}else{
            lost = RC1REG;
    }
}
/* void buffer_circulaire(circ_buffer_t *buffer){
    buffer.idx_write = 0;
    buffer.nb_elt =0;
    buffer.idx_read = 0;
    
    if(buffer.nb_elt != UART1_CIRC_BUFF_SIZE ){
        
                //buffer.idx_read +=1;
        if(rx1_uart1_flag/*écriture de données){
        buffer.idx_write += 1;
        buffer.nb_elt += 1;
        }
        
      if (uart1_getc(&rx1_uart1_payload,0) /*lecture de données)
      {
      buffer.idx_read +=1;
      buffer.nb_elt -= 1;  
    };
    }
    else{
        //CLEAR buffer;
        buffer.idx_write = 0;
        buffer.idx_read= 0;
        buffer.nb_elt =0;

        
    }; Faux */
   
}

uInt8_t uart1_getc(uInt8_t *payload, uInt8_t echo)
{
    /* if (rx1_uart1_flag ){
        rx1_uart1_flag =0; //Acquitter flag reception
        
        //Lire la donnée
       *payload = rx1_uart1_payload ;
        
        if (echo){
            uart1_putc(*payload);
           }
        
        return 1; //retourne vrai
    } else {
        return 0;//retourne faux
    }
 */
  if (uart1_rx.nb_elt< UART1_CIRC_BUFF_SIZE){
            uart1_rx.buffer[uart1_rx.idx_read] = RC1REG;
            uart1_rx.nb_elt --;
            uart1_rx.idx_read ++;
}
}