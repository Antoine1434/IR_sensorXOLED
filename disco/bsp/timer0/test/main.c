/*
 * test program for timer0 library
 * author 
 */
#include <bsplib.h>

void __interrupt(high_priority) isr_high (void)
{ 
    static char toggle;  // variable statique : vaut 0 qu'au premier appel de la fonction coup suivant retiens la valeur de toggle (variable globale toujours statique))
 if (PIR0bits.TMR0IF==1){
     PIR0bits.TMR0IF= 0; //clear interrupt flag, à faire le plus rapidement possible dans la boucle
     timer0_reload(TIMER0_PERIOD );
     //led2_on();
     //Séquenceur d'états
     if (toggle){
         toggle = 0;
         led2_on();
     }
     else{
         toggle = 1;
         led2_off();
     }
     
     };
 
     
    
 
}


void __interrupt(low_priority) isr_low (void)
{
/*PIR0bits.TMR0IF= 0;
 PIE0bits.TMR0IE = 1;
 IPR0bits.TMR0IP = 0;
 
 INTCONbits.GIEL = 1;	
 INTCONbits.GIEH = 1;	
 INTCONbits.IPEN = 1;	*/

    
     
    }


void main(void)
{
    led2_init();
    timer0_init(TIMER0_PERIOD);
    PIE0bits.TMR0IE=1; // interrupt enable
    
    while (1) {
        asm("sleep");
    }   
}


