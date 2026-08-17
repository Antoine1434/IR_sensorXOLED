; file common/delay/src/delay_200ms.h
; brief 200ms software delay
; warning 200ms duration only for 64MHz cpu clock  
; author hugo

#include <pic18f27k40.inc>

; linker memory static allocation directives for data
PSECT bss_delay, class=BANK0, space=1
; static privates declarations
delay_cnt1:  ds  1
delay_cnt2:  ds  1
delay_cnt3:  ds  1
bsr_tmp:     ds  1

; linker memory static allocation directives for code
PSECT text, class=CODE, reloc=2, space=0

global _delay_200ms

_delay_200ms:
    ; save BSR context
    movff   BSR, WREG
    movlb   0
    movff   WREG, bsr_tmp

    ; delay calculation :
    ; Fcpu = 64MHz, Tcpu = 15.625ns
    ; Fcy = Fcpu/4 = 16MHz, Tcy = 62.5ns
    ;
    ; first internal loop :
    ; Tloop1 = (1 + 2) * delay_cnt * Tcy + 2 * Tcy
    ; Tloop1 ~ 3 * delay_cnt * Tcy
    ;
    ; second internal loop :
    ; Tloop2 = (Tloop1 + 5 * Tcy) * delay_cnt2  + (Tloop1 + 4 * Tcy) 
    ; Tloop2 ~ Tloop1 * delay_cnt2
    ;
    ; external loop :
    ; Tloop3 = (Tloop2 + 7 * Tcy) * delay_cnt3  + (Tloop1 + 6 * Tcy) 
    ; Tloop3 ~ Tloop2 * delay_cnt3
    movlw   200
    movwf   delay_cnt3	

delay_200ms_L1:	
    movlw   100
    movwf   delay_cnt2	

delay_200ms_L2:	
    movlw   53
    movwf   delay_cnt1	

delay_200ms_L3:					
    decfsz  delay_cnt1,f		
    bra     $-2
    decfsz  delay_cnt2,f		
    goto    delay_200ms_L2   			
    decfsz  delay_cnt3,f		
    goto    delay_200ms_L1

    ; restore BSR context
    movff    bsr_tmp, BSR
    return
END