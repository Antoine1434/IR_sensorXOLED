; file gpio/src/switch_init.asm
; brief switch initialization 
; author 

#include <pic18f27k40.inc>

    
; linker memory static allocation directives
PSECT text, class=CODE, reloc=2, space=0

global _switch1_init
global _switch2_init
 
_switch1_init:
    MOVLB 0xF; // Aller dans banque spéciale SFR pour accéder à ANSELB
    BCF ANSELB, 4 ;// configure la branche en numérique/ met bit n°4 à 0 du registre d'adresse relative de 8bits dans la banque spéciale sfr
    BSF TRISB,4;
    return
    
_switch2_init:
    MOVLB 0xF;
    BCF ANSELC, 5 ; // configure la branche en numérique
    BSF TRISC,5;
    return
END