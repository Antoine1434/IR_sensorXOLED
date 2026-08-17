; file common/delay/src/delay_10us.h
; brief 10us software delay
; warning 10us duration only for 64MHz cpu clock  
; author 

#include <pic18f27k40.inc>

; linker memory static allocation directives for data
PSECT bss_delay,class=BANK0,space=1 ; bank0
; static privates declarations
delay_cnt1:  ds 1   ; 1 byte static memory allocation 
bsr_tmp:     ds  1 ; label qui pointe vers une donnée

; linker memory static allocation directives for code
PSECT text, class=CODE, reloc=2, space=0

global _delay_10us

// 1 cycle vaut 62.5ns
 
;MOVLW 0x28 
;MOVWF count
 
 
_delay_10us:
    
    ;DECFSZ count,1,1
    ;GOTO _delay_10us
    ;RETURN
    
    ;save BSR context
    MOVFF BSR, WREG
    MOVLB 0 ; aller en banque 0
    MOVFF WREG, bsr_tmp
    
    MOVLW 53 ;constante sur 8bits mit dans W qui fait 8 bits
    MOVWF delay_cnt1
 
   ; (1cy + 2cy)*53 + 3cy pour condition pas ok
delay_10us_L1:
    DECFSZ delay_cnt1,F ;dure 1 cycle, dure 2 cycles si test est bon, ( Instruction sur 16 bits sauf GOTO,CALL,MOVFF sur 32bits) , garde le résultat dans delat_cnt1
    GOTO delay_10us_L1 ;2 cycles
    
    ;restore BSR context
    MOVFF bsr_tmp, BSR
    RETURN
END