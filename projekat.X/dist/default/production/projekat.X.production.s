subtitle "Microchip MPLAB XC8 C Compiler v2.45 (Free license) build 20230818022343 Og1 "

pagewidth 120

	opt flic

	processor	18F87K22
include "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\18f87k22.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD3 equ 0F16h ;# 
# 116 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD2 equ 0F17h ;# 
# 178 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD1 equ 0F18h ;# 
# 240 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD0 equ 0F19h ;# 
# 317 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR3CON equ 0F1Ah ;# 
# 428 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR2CON equ 0F1Bh ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG2 equ 0F1Ch ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG2 equ 0F1Dh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG2 equ 0F1Eh ;# 
# 677 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH2 equ 0F1Fh ;# 
# 697 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON2 equ 0F20h ;# 
# 820 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA2 equ 0F21h ;# 
# 947 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA2 equ 0F22h ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON2 equ 0F23h ;# 
# 1195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON1 equ 0F24h ;# 
# 1307 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON0 equ 0F25h ;# 
# 1419 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
MEMCON equ 0F26h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON3 equ 0F27h ;# 
# 1513 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON2 equ 0F28h ;# 
# 1575 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON1 equ 0F29h ;# 
# 1614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
REFOCON equ 0F2Ah ;# 
# 1679 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS2 equ 0F2Bh ;# 
# 1726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS1 equ 0F2Ch ;# 
# 1793 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS0 equ 0F2Dh ;# 
# 1875 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON equ 0F2Eh ;# 
# 1880 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON1 equ 0F2Eh ;# 
# 2127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON equ 0F2Fh ;# 
# 2132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON1 equ 0F2Fh ;# 
# 2379 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T12CON equ 0F30h ;# 
# 2450 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR12 equ 0F31h ;# 
# 2470 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR12 equ 0F32h ;# 
# 2490 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T10CON equ 0F33h ;# 
# 2561 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR10 equ 0F34h ;# 
# 2581 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR10 equ 0F35h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T8CON equ 0F36h ;# 
# 2672 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR8 equ 0F37h ;# 
# 2692 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR8 equ 0F38h ;# 
# 2712 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T6CON equ 0F39h ;# 
# 2783 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR6 equ 0F3Ah ;# 
# 2803 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR6 equ 0F3Bh ;# 
# 2823 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7GCON equ 0F3Ch ;# 
# 2927 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7CON equ 0F3Dh ;# 
# 3029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7 equ 0F3Eh ;# 
# 3036 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7L equ 0F3Eh ;# 
# 3106 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7H equ 0F3Fh ;# 
# 3126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP10CON equ 0F40h ;# 
# 3205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10 equ 0F41h ;# 
# 3212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10L equ 0F41h ;# 
# 3232 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10H equ 0F42h ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP9CON equ 0F43h ;# 
# 3331 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9 equ 0F44h ;# 
# 3338 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9L equ 0F44h ;# 
# 3358 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9H equ 0F45h ;# 
# 3378 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP8CON equ 0F46h ;# 
# 3457 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8 equ 0F47h ;# 
# 3464 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8L equ 0F47h ;# 
# 3484 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8H equ 0F48h ;# 
# 3504 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP3CON equ 0F49h ;# 
# 3586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3 equ 0F4Ah ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3L equ 0F4Ah ;# 
# 3613 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3H equ 0F4Bh ;# 
# 3633 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3DEL equ 0F4Ch ;# 
# 3703 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3AS equ 0F4Dh ;# 
# 3785 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP2CON equ 0F4Eh ;# 
# 3790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2CON equ 0F4Eh ;# 
# 3977 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2 equ 0F4Fh ;# 
# 3984 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2L equ 0F4Fh ;# 
# 4004 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2H equ 0F50h ;# 
# 4024 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2DEL equ 0F51h ;# 
# 4029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM2CON equ 0F51h ;# 
# 4162 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2AS equ 0F52h ;# 
# 4244 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PADCFG1 equ 0F53h ;# 
# 4299 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON equ 0F54h ;# 
# 4304 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON1 equ 0F54h ;# 
# 4579 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUICON equ 0F55h ;# 
# 4655 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONL equ 0F56h ;# 
# 4733 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONH equ 0F57h ;# 
# 4790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVAL equ 0F58h ;# 
# 4797 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALL equ 0F58h ;# 
# 4817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALH equ 0F59h ;# 
# 4837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMRPT equ 0F5Ah ;# 
# 4907 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMCFG equ 0F5Bh ;# 
# 4983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVAL equ 0F5Ch ;# 
# 4990 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALL equ 0F5Ch ;# 
# 5010 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALH equ 0F5Dh ;# 
# 5080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCAL equ 0F5Eh ;# 
# 5150 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCFG equ 0F5Fh ;# 
# 5215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE6 equ 0F60h ;# 
# 5254 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEDATA equ 0F61h ;# 
# 5274 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADR equ 0F62h ;# 
# 5294 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADRH equ 0F63h ;# 
# 5314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON2 equ 0F64h ;# 
# 5354 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON1 equ 0F65h ;# 
# 5359 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCTL equ 0F65h ;# 
# 5363 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON equ 0F65h ;# 
# 5861 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON2 equ 0F66h ;# 
# 6039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON1 equ 0F67h ;# 
# 6159 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2STAT equ 0F68h ;# 
# 6586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2ADD equ 0F69h ;# 
# 6656 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2MSK equ 0F69h ;# 
# 6726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2BUF equ 0F6Ah ;# 
# 6746 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T4CON equ 0F6Bh ;# 
# 6817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR4 equ 0F6Ch ;# 
# 6837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR4 equ 0F6Dh ;# 
# 6857 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP7CON equ 0F6Eh ;# 
# 6936 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7 equ 0F6Fh ;# 
# 6943 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7L equ 0F6Fh ;# 
# 6963 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7H equ 0F70h ;# 
# 6983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP6CON equ 0F71h ;# 
# 7062 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6 equ 0F72h ;# 
# 7069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6L equ 0F72h ;# 
# 7089 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6H equ 0F73h ;# 
# 7109 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP5CON equ 0F74h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5 equ 0F75h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5L equ 0F75h ;# 
# 7215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5H equ 0F76h ;# 
# 7235 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP4CON equ 0F77h ;# 
# 7314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4 equ 0F78h ;# 
# 7321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4L equ 0F78h ;# 
# 7341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4H equ 0F79h ;# 
# 7361 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5GCON equ 0F7Ah ;# 
# 7465 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5CON equ 0F7Bh ;# 
# 7567 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5 equ 0F7Ch ;# 
# 7574 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5L equ 0F7Ch ;# 
# 7594 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5H equ 0F7Dh ;# 
# 7614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON2 equ 0F7Eh ;# 
# 7634 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON1 equ 0F7Fh ;# 
# 7700 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTA equ 0F80h ;# 
# 7892 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTB equ 0F81h ;# 
# 8078 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTC equ 0F82h ;# 
# 8260 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTD equ 0F83h ;# 
# 8501 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTE equ 0F84h ;# 
# 8854 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTF equ 0F85h ;# 
# 9039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTG equ 0F86h ;# 
# 9250 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTH equ 0F87h ;# 
# 9460 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTJ equ 0F88h ;# 
# 9572 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATA equ 0F89h ;# 
# 9684 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATB equ 0F8Ah ;# 
# 9796 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATC equ 0F8Bh ;# 
# 9908 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATD equ 0F8Ch ;# 
# 10020 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATE equ 0F8Dh ;# 
# 10132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATF equ 0F8Eh ;# 
# 10234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATG equ 0F8Fh ;# 
# 10310 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATH equ 0F90h ;# 
# 10422 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATJ equ 0F91h ;# 
# 10534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISA equ 0F92h ;# 
# 10596 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISB equ 0F93h ;# 
# 10658 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISC equ 0F94h ;# 
# 10720 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISD equ 0F95h ;# 
# 10782 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISE equ 0F96h ;# 
# 10844 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISF equ 0F97h ;# 
# 10901 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISG equ 0F98h ;# 
# 10945 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISH equ 0F99h ;# 
# 11007 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISJ equ 0F9Ah ;# 
# 11069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCTUNE equ 0F9Bh ;# 
# 11139 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR1CON equ 0F9Ch ;# 
# 11205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE1 equ 0F9Dh ;# 
# 11288 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR1 equ 0F9Eh ;# 
# 11371 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR1 equ 0F9Fh ;# 
# 11454 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE2 equ 0FA0h ;# 
# 11526 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR2 equ 0FA1h ;# 
# 11598 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR2 equ 0FA2h ;# 
# 11670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE3 equ 0FA3h ;# 
# 11775 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR3 equ 0FA4h ;# 
# 11848 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR3 equ 0FA5h ;# 
# 11921 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR6 equ 0FA6h ;# 
# 11960 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSPCON equ 0FA7h ;# 
# 11999 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
HLVDCON equ 0FA8h ;# 
# 12069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR6 equ 0FA9h ;# 
# 12108 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1GCON equ 0FAAh ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA1 equ 0FABh ;# 
# 12217 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA equ 0FABh ;# 
# 12550 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA1 equ 0FACh ;# 
# 12555 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA equ 0FACh ;# 
# 12838 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG1 equ 0FADh ;# 
# 12843 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG equ 0FADh ;# 
# 12876 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG1 equ 0FAEh ;# 
# 12881 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG equ 0FAEh ;# 
# 12914 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG1 equ 0FAFh ;# 
# 12919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG equ 0FAFh ;# 
# 12952 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3GCON equ 0FB0h ;# 
# 13056 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3CON equ 0FB1h ;# 
# 13167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3 equ 0FB2h ;# 
# 13174 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3L equ 0FB2h ;# 
# 13194 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3H equ 0FB3h ;# 
# 13214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTAT equ 0FB4h ;# 
# 13219 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTATUS equ 0FB4h ;# 
# 13320 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CVRCON equ 0FB5h ;# 
# 13405 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE4 equ 0FB6h ;# 
# 13467 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR4 equ 0FB7h ;# 
# 13529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR4 equ 0FB8h ;# 
# 13599 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE5 equ 0FB9h ;# 
# 13661 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR5 equ 0FBAh ;# 
# 13723 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP1CON equ 0FBBh ;# 
# 13728 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1CON equ 0FBBh ;# 
# 13915 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1 equ 0FBCh ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1L equ 0FBCh ;# 
# 13942 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1H equ 0FBDh ;# 
# 13962 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1DEL equ 0FBEh ;# 
# 13967 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM1CON equ 0FBEh ;# 
# 14100 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1AS equ 0FBFh ;# 
# 14182 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON2 equ 0FC0h ;# 
# 14253 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON1 equ 0FC1h ;# 
# 14357 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON0 equ 0FC2h ;# 
# 14482 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRES equ 0FC3h ;# 
# 14489 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESL equ 0FC3h ;# 
# 14509 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESH equ 0FC4h ;# 
# 14529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON2 equ 0FC5h ;# 
# 14534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON2 equ 0FC5h ;# 
# 14883 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON1 equ 0FC6h ;# 
# 14888 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON1 equ 0FC6h ;# 
# 15121 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1STAT equ 0FC7h ;# 
# 15126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPSTAT equ 0FC7h ;# 
# 15719 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1ADD equ 0FC8h ;# 
# 15724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPADD equ 0FC8h ;# 
# 15957 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1MSK equ 0FC8h ;# 
# 16027 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1BUF equ 0FC9h ;# 
# 16032 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPBUF equ 0FC9h ;# 
# 16065 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T2CON equ 0FCAh ;# 
# 16136 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR2 equ 0FCBh ;# 
# 16156 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR2 equ 0FCCh ;# 
# 16176 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1CON equ 0FCDh ;# 
# 16278 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1 equ 0FCEh ;# 
# 16285 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1L equ 0FCEh ;# 
# 16305 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1H equ 0FCFh ;# 
# 16325 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCON equ 0FD0h ;# 
# 16478 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WDTCON equ 0FD1h ;# 
# 16538 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR5 equ 0FD2h ;# 
# 16627 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON equ 0FD3h ;# 
# 16704 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH1 equ 0FD4h ;# 
# 16724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T0CON equ 0FD5h ;# 
# 16794 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0 equ 0FD6h ;# 
# 16801 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0L equ 0FD6h ;# 
# 16821 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0H equ 0FD7h ;# 
# 16841 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STATUS equ 0FD8h ;# 
# 16912 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2 equ 0FD9h ;# 
# 16919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2L equ 0FD9h ;# 
# 16939 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2H equ 0FDAh ;# 
# 16946 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW2 equ 0FDBh ;# 
# 16966 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC2 equ 0FDCh ;# 
# 16986 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC2 equ 0FDDh ;# 
# 17006 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC2 equ 0FDEh ;# 
# 17026 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF2 equ 0FDFh ;# 
# 17046 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BSR equ 0FE0h ;# 
# 17053 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1 equ 0FE1h ;# 
# 17060 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1L equ 0FE1h ;# 
# 17080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1H equ 0FE2h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW1 equ 0FE3h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC1 equ 0FE4h ;# 
# 17127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC1 equ 0FE5h ;# 
# 17147 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC1 equ 0FE6h ;# 
# 17167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF1 equ 0FE7h ;# 
# 17187 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WREG equ 0FE8h ;# 
# 17207 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0 equ 0FE9h ;# 
# 17214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0L equ 0FE9h ;# 
# 17234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0H equ 0FEAh ;# 
# 17241 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW0 equ 0FEBh ;# 
# 17261 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC0 equ 0FECh ;# 
# 17281 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC0 equ 0FEDh ;# 
# 17301 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC0 equ 0FEEh ;# 
# 17321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF0 equ 0FEFh ;# 
# 17341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON3 equ 0FF0h ;# 
# 17453 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON2 equ 0FF1h ;# 
# 17546 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON equ 0FF2h ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PROD equ 0FF3h ;# 
# 17670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODL equ 0FF3h ;# 
# 17690 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODH equ 0FF4h ;# 
# 17710 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TABLAT equ 0FF5h ;# 
# 17732 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTR equ 0FF6h ;# 
# 17739 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRL equ 0FF6h ;# 
# 17759 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRH equ 0FF7h ;# 
# 17779 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRU equ 0FF8h ;# 
# 17788 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLAT equ 0FF9h ;# 
# 17795 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PC equ 0FF9h ;# 
# 17802 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCL equ 0FF9h ;# 
# 17822 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATH equ 0FFAh ;# 
# 17842 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATU equ 0FFBh ;# 
# 17849 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STKPTR equ 0FFCh ;# 
# 17923 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOS equ 0FFDh ;# 
# 17930 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSL equ 0FFDh ;# 
# 17950 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSH equ 0FFEh ;# 
# 17970 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD3 equ 0F16h ;# 
# 116 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD2 equ 0F17h ;# 
# 178 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD1 equ 0F18h ;# 
# 240 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD0 equ 0F19h ;# 
# 317 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR3CON equ 0F1Ah ;# 
# 428 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR2CON equ 0F1Bh ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG2 equ 0F1Ch ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG2 equ 0F1Dh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG2 equ 0F1Eh ;# 
# 677 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH2 equ 0F1Fh ;# 
# 697 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON2 equ 0F20h ;# 
# 820 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA2 equ 0F21h ;# 
# 947 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA2 equ 0F22h ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON2 equ 0F23h ;# 
# 1195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON1 equ 0F24h ;# 
# 1307 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON0 equ 0F25h ;# 
# 1419 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
MEMCON equ 0F26h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON3 equ 0F27h ;# 
# 1513 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON2 equ 0F28h ;# 
# 1575 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON1 equ 0F29h ;# 
# 1614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
REFOCON equ 0F2Ah ;# 
# 1679 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS2 equ 0F2Bh ;# 
# 1726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS1 equ 0F2Ch ;# 
# 1793 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS0 equ 0F2Dh ;# 
# 1875 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON equ 0F2Eh ;# 
# 1880 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON1 equ 0F2Eh ;# 
# 2127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON equ 0F2Fh ;# 
# 2132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON1 equ 0F2Fh ;# 
# 2379 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T12CON equ 0F30h ;# 
# 2450 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR12 equ 0F31h ;# 
# 2470 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR12 equ 0F32h ;# 
# 2490 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T10CON equ 0F33h ;# 
# 2561 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR10 equ 0F34h ;# 
# 2581 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR10 equ 0F35h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T8CON equ 0F36h ;# 
# 2672 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR8 equ 0F37h ;# 
# 2692 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR8 equ 0F38h ;# 
# 2712 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T6CON equ 0F39h ;# 
# 2783 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR6 equ 0F3Ah ;# 
# 2803 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR6 equ 0F3Bh ;# 
# 2823 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7GCON equ 0F3Ch ;# 
# 2927 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7CON equ 0F3Dh ;# 
# 3029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7 equ 0F3Eh ;# 
# 3036 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7L equ 0F3Eh ;# 
# 3106 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7H equ 0F3Fh ;# 
# 3126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP10CON equ 0F40h ;# 
# 3205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10 equ 0F41h ;# 
# 3212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10L equ 0F41h ;# 
# 3232 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10H equ 0F42h ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP9CON equ 0F43h ;# 
# 3331 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9 equ 0F44h ;# 
# 3338 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9L equ 0F44h ;# 
# 3358 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9H equ 0F45h ;# 
# 3378 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP8CON equ 0F46h ;# 
# 3457 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8 equ 0F47h ;# 
# 3464 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8L equ 0F47h ;# 
# 3484 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8H equ 0F48h ;# 
# 3504 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP3CON equ 0F49h ;# 
# 3586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3 equ 0F4Ah ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3L equ 0F4Ah ;# 
# 3613 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3H equ 0F4Bh ;# 
# 3633 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3DEL equ 0F4Ch ;# 
# 3703 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3AS equ 0F4Dh ;# 
# 3785 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP2CON equ 0F4Eh ;# 
# 3790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2CON equ 0F4Eh ;# 
# 3977 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2 equ 0F4Fh ;# 
# 3984 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2L equ 0F4Fh ;# 
# 4004 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2H equ 0F50h ;# 
# 4024 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2DEL equ 0F51h ;# 
# 4029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM2CON equ 0F51h ;# 
# 4162 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2AS equ 0F52h ;# 
# 4244 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PADCFG1 equ 0F53h ;# 
# 4299 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON equ 0F54h ;# 
# 4304 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON1 equ 0F54h ;# 
# 4579 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUICON equ 0F55h ;# 
# 4655 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONL equ 0F56h ;# 
# 4733 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONH equ 0F57h ;# 
# 4790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVAL equ 0F58h ;# 
# 4797 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALL equ 0F58h ;# 
# 4817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALH equ 0F59h ;# 
# 4837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMRPT equ 0F5Ah ;# 
# 4907 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMCFG equ 0F5Bh ;# 
# 4983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVAL equ 0F5Ch ;# 
# 4990 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALL equ 0F5Ch ;# 
# 5010 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALH equ 0F5Dh ;# 
# 5080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCAL equ 0F5Eh ;# 
# 5150 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCFG equ 0F5Fh ;# 
# 5215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE6 equ 0F60h ;# 
# 5254 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEDATA equ 0F61h ;# 
# 5274 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADR equ 0F62h ;# 
# 5294 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADRH equ 0F63h ;# 
# 5314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON2 equ 0F64h ;# 
# 5354 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON1 equ 0F65h ;# 
# 5359 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCTL equ 0F65h ;# 
# 5363 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON equ 0F65h ;# 
# 5861 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON2 equ 0F66h ;# 
# 6039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON1 equ 0F67h ;# 
# 6159 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2STAT equ 0F68h ;# 
# 6586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2ADD equ 0F69h ;# 
# 6656 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2MSK equ 0F69h ;# 
# 6726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2BUF equ 0F6Ah ;# 
# 6746 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T4CON equ 0F6Bh ;# 
# 6817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR4 equ 0F6Ch ;# 
# 6837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR4 equ 0F6Dh ;# 
# 6857 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP7CON equ 0F6Eh ;# 
# 6936 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7 equ 0F6Fh ;# 
# 6943 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7L equ 0F6Fh ;# 
# 6963 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7H equ 0F70h ;# 
# 6983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP6CON equ 0F71h ;# 
# 7062 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6 equ 0F72h ;# 
# 7069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6L equ 0F72h ;# 
# 7089 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6H equ 0F73h ;# 
# 7109 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP5CON equ 0F74h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5 equ 0F75h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5L equ 0F75h ;# 
# 7215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5H equ 0F76h ;# 
# 7235 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP4CON equ 0F77h ;# 
# 7314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4 equ 0F78h ;# 
# 7321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4L equ 0F78h ;# 
# 7341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4H equ 0F79h ;# 
# 7361 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5GCON equ 0F7Ah ;# 
# 7465 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5CON equ 0F7Bh ;# 
# 7567 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5 equ 0F7Ch ;# 
# 7574 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5L equ 0F7Ch ;# 
# 7594 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5H equ 0F7Dh ;# 
# 7614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON2 equ 0F7Eh ;# 
# 7634 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON1 equ 0F7Fh ;# 
# 7700 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTA equ 0F80h ;# 
# 7892 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTB equ 0F81h ;# 
# 8078 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTC equ 0F82h ;# 
# 8260 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTD equ 0F83h ;# 
# 8501 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTE equ 0F84h ;# 
# 8854 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTF equ 0F85h ;# 
# 9039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTG equ 0F86h ;# 
# 9250 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTH equ 0F87h ;# 
# 9460 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTJ equ 0F88h ;# 
# 9572 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATA equ 0F89h ;# 
# 9684 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATB equ 0F8Ah ;# 
# 9796 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATC equ 0F8Bh ;# 
# 9908 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATD equ 0F8Ch ;# 
# 10020 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATE equ 0F8Dh ;# 
# 10132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATF equ 0F8Eh ;# 
# 10234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATG equ 0F8Fh ;# 
# 10310 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATH equ 0F90h ;# 
# 10422 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATJ equ 0F91h ;# 
# 10534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISA equ 0F92h ;# 
# 10596 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISB equ 0F93h ;# 
# 10658 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISC equ 0F94h ;# 
# 10720 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISD equ 0F95h ;# 
# 10782 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISE equ 0F96h ;# 
# 10844 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISF equ 0F97h ;# 
# 10901 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISG equ 0F98h ;# 
# 10945 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISH equ 0F99h ;# 
# 11007 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISJ equ 0F9Ah ;# 
# 11069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCTUNE equ 0F9Bh ;# 
# 11139 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR1CON equ 0F9Ch ;# 
# 11205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE1 equ 0F9Dh ;# 
# 11288 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR1 equ 0F9Eh ;# 
# 11371 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR1 equ 0F9Fh ;# 
# 11454 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE2 equ 0FA0h ;# 
# 11526 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR2 equ 0FA1h ;# 
# 11598 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR2 equ 0FA2h ;# 
# 11670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE3 equ 0FA3h ;# 
# 11775 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR3 equ 0FA4h ;# 
# 11848 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR3 equ 0FA5h ;# 
# 11921 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR6 equ 0FA6h ;# 
# 11960 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSPCON equ 0FA7h ;# 
# 11999 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
HLVDCON equ 0FA8h ;# 
# 12069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR6 equ 0FA9h ;# 
# 12108 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1GCON equ 0FAAh ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA1 equ 0FABh ;# 
# 12217 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA equ 0FABh ;# 
# 12550 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA1 equ 0FACh ;# 
# 12555 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA equ 0FACh ;# 
# 12838 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG1 equ 0FADh ;# 
# 12843 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG equ 0FADh ;# 
# 12876 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG1 equ 0FAEh ;# 
# 12881 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG equ 0FAEh ;# 
# 12914 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG1 equ 0FAFh ;# 
# 12919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG equ 0FAFh ;# 
# 12952 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3GCON equ 0FB0h ;# 
# 13056 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3CON equ 0FB1h ;# 
# 13167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3 equ 0FB2h ;# 
# 13174 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3L equ 0FB2h ;# 
# 13194 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3H equ 0FB3h ;# 
# 13214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTAT equ 0FB4h ;# 
# 13219 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTATUS equ 0FB4h ;# 
# 13320 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CVRCON equ 0FB5h ;# 
# 13405 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE4 equ 0FB6h ;# 
# 13467 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR4 equ 0FB7h ;# 
# 13529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR4 equ 0FB8h ;# 
# 13599 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE5 equ 0FB9h ;# 
# 13661 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR5 equ 0FBAh ;# 
# 13723 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP1CON equ 0FBBh ;# 
# 13728 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1CON equ 0FBBh ;# 
# 13915 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1 equ 0FBCh ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1L equ 0FBCh ;# 
# 13942 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1H equ 0FBDh ;# 
# 13962 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1DEL equ 0FBEh ;# 
# 13967 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM1CON equ 0FBEh ;# 
# 14100 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1AS equ 0FBFh ;# 
# 14182 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON2 equ 0FC0h ;# 
# 14253 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON1 equ 0FC1h ;# 
# 14357 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON0 equ 0FC2h ;# 
# 14482 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRES equ 0FC3h ;# 
# 14489 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESL equ 0FC3h ;# 
# 14509 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESH equ 0FC4h ;# 
# 14529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON2 equ 0FC5h ;# 
# 14534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON2 equ 0FC5h ;# 
# 14883 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON1 equ 0FC6h ;# 
# 14888 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON1 equ 0FC6h ;# 
# 15121 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1STAT equ 0FC7h ;# 
# 15126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPSTAT equ 0FC7h ;# 
# 15719 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1ADD equ 0FC8h ;# 
# 15724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPADD equ 0FC8h ;# 
# 15957 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1MSK equ 0FC8h ;# 
# 16027 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1BUF equ 0FC9h ;# 
# 16032 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPBUF equ 0FC9h ;# 
# 16065 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T2CON equ 0FCAh ;# 
# 16136 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR2 equ 0FCBh ;# 
# 16156 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR2 equ 0FCCh ;# 
# 16176 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1CON equ 0FCDh ;# 
# 16278 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1 equ 0FCEh ;# 
# 16285 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1L equ 0FCEh ;# 
# 16305 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1H equ 0FCFh ;# 
# 16325 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCON equ 0FD0h ;# 
# 16478 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WDTCON equ 0FD1h ;# 
# 16538 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR5 equ 0FD2h ;# 
# 16627 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON equ 0FD3h ;# 
# 16704 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH1 equ 0FD4h ;# 
# 16724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T0CON equ 0FD5h ;# 
# 16794 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0 equ 0FD6h ;# 
# 16801 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0L equ 0FD6h ;# 
# 16821 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0H equ 0FD7h ;# 
# 16841 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STATUS equ 0FD8h ;# 
# 16912 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2 equ 0FD9h ;# 
# 16919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2L equ 0FD9h ;# 
# 16939 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2H equ 0FDAh ;# 
# 16946 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW2 equ 0FDBh ;# 
# 16966 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC2 equ 0FDCh ;# 
# 16986 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC2 equ 0FDDh ;# 
# 17006 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC2 equ 0FDEh ;# 
# 17026 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF2 equ 0FDFh ;# 
# 17046 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BSR equ 0FE0h ;# 
# 17053 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1 equ 0FE1h ;# 
# 17060 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1L equ 0FE1h ;# 
# 17080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1H equ 0FE2h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW1 equ 0FE3h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC1 equ 0FE4h ;# 
# 17127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC1 equ 0FE5h ;# 
# 17147 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC1 equ 0FE6h ;# 
# 17167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF1 equ 0FE7h ;# 
# 17187 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WREG equ 0FE8h ;# 
# 17207 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0 equ 0FE9h ;# 
# 17214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0L equ 0FE9h ;# 
# 17234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0H equ 0FEAh ;# 
# 17241 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW0 equ 0FEBh ;# 
# 17261 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC0 equ 0FECh ;# 
# 17281 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC0 equ 0FEDh ;# 
# 17301 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC0 equ 0FEEh ;# 
# 17321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF0 equ 0FEFh ;# 
# 17341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON3 equ 0FF0h ;# 
# 17453 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON2 equ 0FF1h ;# 
# 17546 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON equ 0FF2h ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PROD equ 0FF3h ;# 
# 17670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODL equ 0FF3h ;# 
# 17690 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODH equ 0FF4h ;# 
# 17710 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TABLAT equ 0FF5h ;# 
# 17732 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTR equ 0FF6h ;# 
# 17739 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRL equ 0FF6h ;# 
# 17759 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRH equ 0FF7h ;# 
# 17779 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRU equ 0FF8h ;# 
# 17788 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLAT equ 0FF9h ;# 
# 17795 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PC equ 0FF9h ;# 
# 17802 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCL equ 0FF9h ;# 
# 17822 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATH equ 0FFAh ;# 
# 17842 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATU equ 0FFBh ;# 
# 17849 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STKPTR equ 0FFCh ;# 
# 17923 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOS equ 0FFDh ;# 
# 17930 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSL equ 0FFDh ;# 
# 17950 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSH equ 0FFEh ;# 
# 17970 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD3 equ 0F16h ;# 
# 116 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD2 equ 0F17h ;# 
# 178 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD1 equ 0F18h ;# 
# 240 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD0 equ 0F19h ;# 
# 317 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR3CON equ 0F1Ah ;# 
# 428 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR2CON equ 0F1Bh ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG2 equ 0F1Ch ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG2 equ 0F1Dh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG2 equ 0F1Eh ;# 
# 677 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH2 equ 0F1Fh ;# 
# 697 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON2 equ 0F20h ;# 
# 820 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA2 equ 0F21h ;# 
# 947 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA2 equ 0F22h ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON2 equ 0F23h ;# 
# 1195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON1 equ 0F24h ;# 
# 1307 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON0 equ 0F25h ;# 
# 1419 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
MEMCON equ 0F26h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON3 equ 0F27h ;# 
# 1513 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON2 equ 0F28h ;# 
# 1575 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON1 equ 0F29h ;# 
# 1614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
REFOCON equ 0F2Ah ;# 
# 1679 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS2 equ 0F2Bh ;# 
# 1726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS1 equ 0F2Ch ;# 
# 1793 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS0 equ 0F2Dh ;# 
# 1875 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON equ 0F2Eh ;# 
# 1880 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON1 equ 0F2Eh ;# 
# 2127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON equ 0F2Fh ;# 
# 2132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON1 equ 0F2Fh ;# 
# 2379 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T12CON equ 0F30h ;# 
# 2450 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR12 equ 0F31h ;# 
# 2470 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR12 equ 0F32h ;# 
# 2490 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T10CON equ 0F33h ;# 
# 2561 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR10 equ 0F34h ;# 
# 2581 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR10 equ 0F35h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T8CON equ 0F36h ;# 
# 2672 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR8 equ 0F37h ;# 
# 2692 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR8 equ 0F38h ;# 
# 2712 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T6CON equ 0F39h ;# 
# 2783 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR6 equ 0F3Ah ;# 
# 2803 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR6 equ 0F3Bh ;# 
# 2823 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7GCON equ 0F3Ch ;# 
# 2927 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7CON equ 0F3Dh ;# 
# 3029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7 equ 0F3Eh ;# 
# 3036 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7L equ 0F3Eh ;# 
# 3106 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7H equ 0F3Fh ;# 
# 3126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP10CON equ 0F40h ;# 
# 3205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10 equ 0F41h ;# 
# 3212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10L equ 0F41h ;# 
# 3232 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10H equ 0F42h ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP9CON equ 0F43h ;# 
# 3331 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9 equ 0F44h ;# 
# 3338 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9L equ 0F44h ;# 
# 3358 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9H equ 0F45h ;# 
# 3378 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP8CON equ 0F46h ;# 
# 3457 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8 equ 0F47h ;# 
# 3464 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8L equ 0F47h ;# 
# 3484 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8H equ 0F48h ;# 
# 3504 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP3CON equ 0F49h ;# 
# 3586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3 equ 0F4Ah ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3L equ 0F4Ah ;# 
# 3613 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3H equ 0F4Bh ;# 
# 3633 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3DEL equ 0F4Ch ;# 
# 3703 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3AS equ 0F4Dh ;# 
# 3785 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP2CON equ 0F4Eh ;# 
# 3790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2CON equ 0F4Eh ;# 
# 3977 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2 equ 0F4Fh ;# 
# 3984 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2L equ 0F4Fh ;# 
# 4004 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2H equ 0F50h ;# 
# 4024 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2DEL equ 0F51h ;# 
# 4029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM2CON equ 0F51h ;# 
# 4162 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2AS equ 0F52h ;# 
# 4244 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PADCFG1 equ 0F53h ;# 
# 4299 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON equ 0F54h ;# 
# 4304 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON1 equ 0F54h ;# 
# 4579 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUICON equ 0F55h ;# 
# 4655 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONL equ 0F56h ;# 
# 4733 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONH equ 0F57h ;# 
# 4790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVAL equ 0F58h ;# 
# 4797 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALL equ 0F58h ;# 
# 4817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALH equ 0F59h ;# 
# 4837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMRPT equ 0F5Ah ;# 
# 4907 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMCFG equ 0F5Bh ;# 
# 4983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVAL equ 0F5Ch ;# 
# 4990 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALL equ 0F5Ch ;# 
# 5010 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALH equ 0F5Dh ;# 
# 5080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCAL equ 0F5Eh ;# 
# 5150 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCFG equ 0F5Fh ;# 
# 5215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE6 equ 0F60h ;# 
# 5254 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEDATA equ 0F61h ;# 
# 5274 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADR equ 0F62h ;# 
# 5294 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADRH equ 0F63h ;# 
# 5314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON2 equ 0F64h ;# 
# 5354 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON1 equ 0F65h ;# 
# 5359 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCTL equ 0F65h ;# 
# 5363 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON equ 0F65h ;# 
# 5861 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON2 equ 0F66h ;# 
# 6039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON1 equ 0F67h ;# 
# 6159 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2STAT equ 0F68h ;# 
# 6586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2ADD equ 0F69h ;# 
# 6656 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2MSK equ 0F69h ;# 
# 6726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2BUF equ 0F6Ah ;# 
# 6746 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T4CON equ 0F6Bh ;# 
# 6817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR4 equ 0F6Ch ;# 
# 6837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR4 equ 0F6Dh ;# 
# 6857 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP7CON equ 0F6Eh ;# 
# 6936 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7 equ 0F6Fh ;# 
# 6943 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7L equ 0F6Fh ;# 
# 6963 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7H equ 0F70h ;# 
# 6983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP6CON equ 0F71h ;# 
# 7062 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6 equ 0F72h ;# 
# 7069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6L equ 0F72h ;# 
# 7089 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6H equ 0F73h ;# 
# 7109 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP5CON equ 0F74h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5 equ 0F75h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5L equ 0F75h ;# 
# 7215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5H equ 0F76h ;# 
# 7235 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP4CON equ 0F77h ;# 
# 7314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4 equ 0F78h ;# 
# 7321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4L equ 0F78h ;# 
# 7341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4H equ 0F79h ;# 
# 7361 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5GCON equ 0F7Ah ;# 
# 7465 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5CON equ 0F7Bh ;# 
# 7567 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5 equ 0F7Ch ;# 
# 7574 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5L equ 0F7Ch ;# 
# 7594 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5H equ 0F7Dh ;# 
# 7614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON2 equ 0F7Eh ;# 
# 7634 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON1 equ 0F7Fh ;# 
# 7700 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTA equ 0F80h ;# 
# 7892 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTB equ 0F81h ;# 
# 8078 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTC equ 0F82h ;# 
# 8260 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTD equ 0F83h ;# 
# 8501 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTE equ 0F84h ;# 
# 8854 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTF equ 0F85h ;# 
# 9039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTG equ 0F86h ;# 
# 9250 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTH equ 0F87h ;# 
# 9460 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTJ equ 0F88h ;# 
# 9572 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATA equ 0F89h ;# 
# 9684 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATB equ 0F8Ah ;# 
# 9796 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATC equ 0F8Bh ;# 
# 9908 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATD equ 0F8Ch ;# 
# 10020 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATE equ 0F8Dh ;# 
# 10132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATF equ 0F8Eh ;# 
# 10234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATG equ 0F8Fh ;# 
# 10310 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATH equ 0F90h ;# 
# 10422 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATJ equ 0F91h ;# 
# 10534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISA equ 0F92h ;# 
# 10596 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISB equ 0F93h ;# 
# 10658 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISC equ 0F94h ;# 
# 10720 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISD equ 0F95h ;# 
# 10782 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISE equ 0F96h ;# 
# 10844 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISF equ 0F97h ;# 
# 10901 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISG equ 0F98h ;# 
# 10945 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISH equ 0F99h ;# 
# 11007 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISJ equ 0F9Ah ;# 
# 11069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCTUNE equ 0F9Bh ;# 
# 11139 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR1CON equ 0F9Ch ;# 
# 11205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE1 equ 0F9Dh ;# 
# 11288 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR1 equ 0F9Eh ;# 
# 11371 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR1 equ 0F9Fh ;# 
# 11454 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE2 equ 0FA0h ;# 
# 11526 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR2 equ 0FA1h ;# 
# 11598 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR2 equ 0FA2h ;# 
# 11670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE3 equ 0FA3h ;# 
# 11775 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR3 equ 0FA4h ;# 
# 11848 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR3 equ 0FA5h ;# 
# 11921 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR6 equ 0FA6h ;# 
# 11960 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSPCON equ 0FA7h ;# 
# 11999 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
HLVDCON equ 0FA8h ;# 
# 12069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR6 equ 0FA9h ;# 
# 12108 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1GCON equ 0FAAh ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA1 equ 0FABh ;# 
# 12217 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA equ 0FABh ;# 
# 12550 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA1 equ 0FACh ;# 
# 12555 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA equ 0FACh ;# 
# 12838 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG1 equ 0FADh ;# 
# 12843 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG equ 0FADh ;# 
# 12876 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG1 equ 0FAEh ;# 
# 12881 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG equ 0FAEh ;# 
# 12914 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG1 equ 0FAFh ;# 
# 12919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG equ 0FAFh ;# 
# 12952 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3GCON equ 0FB0h ;# 
# 13056 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3CON equ 0FB1h ;# 
# 13167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3 equ 0FB2h ;# 
# 13174 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3L equ 0FB2h ;# 
# 13194 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3H equ 0FB3h ;# 
# 13214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTAT equ 0FB4h ;# 
# 13219 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTATUS equ 0FB4h ;# 
# 13320 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CVRCON equ 0FB5h ;# 
# 13405 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE4 equ 0FB6h ;# 
# 13467 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR4 equ 0FB7h ;# 
# 13529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR4 equ 0FB8h ;# 
# 13599 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE5 equ 0FB9h ;# 
# 13661 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR5 equ 0FBAh ;# 
# 13723 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP1CON equ 0FBBh ;# 
# 13728 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1CON equ 0FBBh ;# 
# 13915 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1 equ 0FBCh ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1L equ 0FBCh ;# 
# 13942 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1H equ 0FBDh ;# 
# 13962 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1DEL equ 0FBEh ;# 
# 13967 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM1CON equ 0FBEh ;# 
# 14100 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1AS equ 0FBFh ;# 
# 14182 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON2 equ 0FC0h ;# 
# 14253 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON1 equ 0FC1h ;# 
# 14357 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON0 equ 0FC2h ;# 
# 14482 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRES equ 0FC3h ;# 
# 14489 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESL equ 0FC3h ;# 
# 14509 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESH equ 0FC4h ;# 
# 14529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON2 equ 0FC5h ;# 
# 14534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON2 equ 0FC5h ;# 
# 14883 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON1 equ 0FC6h ;# 
# 14888 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON1 equ 0FC6h ;# 
# 15121 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1STAT equ 0FC7h ;# 
# 15126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPSTAT equ 0FC7h ;# 
# 15719 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1ADD equ 0FC8h ;# 
# 15724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPADD equ 0FC8h ;# 
# 15957 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1MSK equ 0FC8h ;# 
# 16027 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1BUF equ 0FC9h ;# 
# 16032 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPBUF equ 0FC9h ;# 
# 16065 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T2CON equ 0FCAh ;# 
# 16136 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR2 equ 0FCBh ;# 
# 16156 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR2 equ 0FCCh ;# 
# 16176 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1CON equ 0FCDh ;# 
# 16278 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1 equ 0FCEh ;# 
# 16285 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1L equ 0FCEh ;# 
# 16305 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1H equ 0FCFh ;# 
# 16325 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCON equ 0FD0h ;# 
# 16478 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WDTCON equ 0FD1h ;# 
# 16538 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR5 equ 0FD2h ;# 
# 16627 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON equ 0FD3h ;# 
# 16704 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH1 equ 0FD4h ;# 
# 16724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T0CON equ 0FD5h ;# 
# 16794 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0 equ 0FD6h ;# 
# 16801 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0L equ 0FD6h ;# 
# 16821 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0H equ 0FD7h ;# 
# 16841 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STATUS equ 0FD8h ;# 
# 16912 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2 equ 0FD9h ;# 
# 16919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2L equ 0FD9h ;# 
# 16939 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2H equ 0FDAh ;# 
# 16946 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW2 equ 0FDBh ;# 
# 16966 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC2 equ 0FDCh ;# 
# 16986 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC2 equ 0FDDh ;# 
# 17006 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC2 equ 0FDEh ;# 
# 17026 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF2 equ 0FDFh ;# 
# 17046 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BSR equ 0FE0h ;# 
# 17053 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1 equ 0FE1h ;# 
# 17060 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1L equ 0FE1h ;# 
# 17080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1H equ 0FE2h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW1 equ 0FE3h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC1 equ 0FE4h ;# 
# 17127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC1 equ 0FE5h ;# 
# 17147 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC1 equ 0FE6h ;# 
# 17167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF1 equ 0FE7h ;# 
# 17187 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WREG equ 0FE8h ;# 
# 17207 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0 equ 0FE9h ;# 
# 17214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0L equ 0FE9h ;# 
# 17234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0H equ 0FEAh ;# 
# 17241 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW0 equ 0FEBh ;# 
# 17261 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC0 equ 0FECh ;# 
# 17281 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC0 equ 0FEDh ;# 
# 17301 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC0 equ 0FEEh ;# 
# 17321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF0 equ 0FEFh ;# 
# 17341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON3 equ 0FF0h ;# 
# 17453 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON2 equ 0FF1h ;# 
# 17546 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON equ 0FF2h ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PROD equ 0FF3h ;# 
# 17670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODL equ 0FF3h ;# 
# 17690 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODH equ 0FF4h ;# 
# 17710 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TABLAT equ 0FF5h ;# 
# 17732 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTR equ 0FF6h ;# 
# 17739 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRL equ 0FF6h ;# 
# 17759 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRH equ 0FF7h ;# 
# 17779 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRU equ 0FF8h ;# 
# 17788 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLAT equ 0FF9h ;# 
# 17795 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PC equ 0FF9h ;# 
# 17802 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCL equ 0FF9h ;# 
# 17822 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATH equ 0FFAh ;# 
# 17842 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATU equ 0FFBh ;# 
# 17849 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STKPTR equ 0FFCh ;# 
# 17923 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOS equ 0FFDh ;# 
# 17930 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSL equ 0FFDh ;# 
# 17950 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSH equ 0FFEh ;# 
# 17970 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD3 equ 0F16h ;# 
# 116 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD2 equ 0F17h ;# 
# 178 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD1 equ 0F18h ;# 
# 240 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD0 equ 0F19h ;# 
# 317 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR3CON equ 0F1Ah ;# 
# 428 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR2CON equ 0F1Bh ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG2 equ 0F1Ch ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG2 equ 0F1Dh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG2 equ 0F1Eh ;# 
# 677 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH2 equ 0F1Fh ;# 
# 697 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON2 equ 0F20h ;# 
# 820 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA2 equ 0F21h ;# 
# 947 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA2 equ 0F22h ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON2 equ 0F23h ;# 
# 1195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON1 equ 0F24h ;# 
# 1307 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON0 equ 0F25h ;# 
# 1419 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
MEMCON equ 0F26h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON3 equ 0F27h ;# 
# 1513 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON2 equ 0F28h ;# 
# 1575 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON1 equ 0F29h ;# 
# 1614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
REFOCON equ 0F2Ah ;# 
# 1679 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS2 equ 0F2Bh ;# 
# 1726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS1 equ 0F2Ch ;# 
# 1793 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS0 equ 0F2Dh ;# 
# 1875 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON equ 0F2Eh ;# 
# 1880 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON1 equ 0F2Eh ;# 
# 2127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON equ 0F2Fh ;# 
# 2132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON1 equ 0F2Fh ;# 
# 2379 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T12CON equ 0F30h ;# 
# 2450 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR12 equ 0F31h ;# 
# 2470 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR12 equ 0F32h ;# 
# 2490 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T10CON equ 0F33h ;# 
# 2561 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR10 equ 0F34h ;# 
# 2581 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR10 equ 0F35h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T8CON equ 0F36h ;# 
# 2672 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR8 equ 0F37h ;# 
# 2692 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR8 equ 0F38h ;# 
# 2712 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T6CON equ 0F39h ;# 
# 2783 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR6 equ 0F3Ah ;# 
# 2803 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR6 equ 0F3Bh ;# 
# 2823 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7GCON equ 0F3Ch ;# 
# 2927 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7CON equ 0F3Dh ;# 
# 3029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7 equ 0F3Eh ;# 
# 3036 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7L equ 0F3Eh ;# 
# 3106 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7H equ 0F3Fh ;# 
# 3126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP10CON equ 0F40h ;# 
# 3205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10 equ 0F41h ;# 
# 3212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10L equ 0F41h ;# 
# 3232 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10H equ 0F42h ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP9CON equ 0F43h ;# 
# 3331 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9 equ 0F44h ;# 
# 3338 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9L equ 0F44h ;# 
# 3358 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9H equ 0F45h ;# 
# 3378 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP8CON equ 0F46h ;# 
# 3457 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8 equ 0F47h ;# 
# 3464 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8L equ 0F47h ;# 
# 3484 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8H equ 0F48h ;# 
# 3504 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP3CON equ 0F49h ;# 
# 3586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3 equ 0F4Ah ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3L equ 0F4Ah ;# 
# 3613 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3H equ 0F4Bh ;# 
# 3633 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3DEL equ 0F4Ch ;# 
# 3703 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3AS equ 0F4Dh ;# 
# 3785 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP2CON equ 0F4Eh ;# 
# 3790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2CON equ 0F4Eh ;# 
# 3977 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2 equ 0F4Fh ;# 
# 3984 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2L equ 0F4Fh ;# 
# 4004 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2H equ 0F50h ;# 
# 4024 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2DEL equ 0F51h ;# 
# 4029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM2CON equ 0F51h ;# 
# 4162 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2AS equ 0F52h ;# 
# 4244 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PADCFG1 equ 0F53h ;# 
# 4299 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON equ 0F54h ;# 
# 4304 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON1 equ 0F54h ;# 
# 4579 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUICON equ 0F55h ;# 
# 4655 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONL equ 0F56h ;# 
# 4733 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONH equ 0F57h ;# 
# 4790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVAL equ 0F58h ;# 
# 4797 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALL equ 0F58h ;# 
# 4817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALH equ 0F59h ;# 
# 4837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMRPT equ 0F5Ah ;# 
# 4907 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMCFG equ 0F5Bh ;# 
# 4983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVAL equ 0F5Ch ;# 
# 4990 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALL equ 0F5Ch ;# 
# 5010 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALH equ 0F5Dh ;# 
# 5080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCAL equ 0F5Eh ;# 
# 5150 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCFG equ 0F5Fh ;# 
# 5215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE6 equ 0F60h ;# 
# 5254 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEDATA equ 0F61h ;# 
# 5274 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADR equ 0F62h ;# 
# 5294 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADRH equ 0F63h ;# 
# 5314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON2 equ 0F64h ;# 
# 5354 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON1 equ 0F65h ;# 
# 5359 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCTL equ 0F65h ;# 
# 5363 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON equ 0F65h ;# 
# 5861 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON2 equ 0F66h ;# 
# 6039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON1 equ 0F67h ;# 
# 6159 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2STAT equ 0F68h ;# 
# 6586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2ADD equ 0F69h ;# 
# 6656 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2MSK equ 0F69h ;# 
# 6726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2BUF equ 0F6Ah ;# 
# 6746 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T4CON equ 0F6Bh ;# 
# 6817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR4 equ 0F6Ch ;# 
# 6837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR4 equ 0F6Dh ;# 
# 6857 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP7CON equ 0F6Eh ;# 
# 6936 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7 equ 0F6Fh ;# 
# 6943 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7L equ 0F6Fh ;# 
# 6963 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7H equ 0F70h ;# 
# 6983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP6CON equ 0F71h ;# 
# 7062 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6 equ 0F72h ;# 
# 7069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6L equ 0F72h ;# 
# 7089 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6H equ 0F73h ;# 
# 7109 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP5CON equ 0F74h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5 equ 0F75h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5L equ 0F75h ;# 
# 7215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5H equ 0F76h ;# 
# 7235 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP4CON equ 0F77h ;# 
# 7314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4 equ 0F78h ;# 
# 7321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4L equ 0F78h ;# 
# 7341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4H equ 0F79h ;# 
# 7361 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5GCON equ 0F7Ah ;# 
# 7465 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5CON equ 0F7Bh ;# 
# 7567 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5 equ 0F7Ch ;# 
# 7574 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5L equ 0F7Ch ;# 
# 7594 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5H equ 0F7Dh ;# 
# 7614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON2 equ 0F7Eh ;# 
# 7634 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON1 equ 0F7Fh ;# 
# 7700 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTA equ 0F80h ;# 
# 7892 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTB equ 0F81h ;# 
# 8078 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTC equ 0F82h ;# 
# 8260 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTD equ 0F83h ;# 
# 8501 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTE equ 0F84h ;# 
# 8854 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTF equ 0F85h ;# 
# 9039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTG equ 0F86h ;# 
# 9250 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTH equ 0F87h ;# 
# 9460 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTJ equ 0F88h ;# 
# 9572 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATA equ 0F89h ;# 
# 9684 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATB equ 0F8Ah ;# 
# 9796 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATC equ 0F8Bh ;# 
# 9908 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATD equ 0F8Ch ;# 
# 10020 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATE equ 0F8Dh ;# 
# 10132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATF equ 0F8Eh ;# 
# 10234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATG equ 0F8Fh ;# 
# 10310 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATH equ 0F90h ;# 
# 10422 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATJ equ 0F91h ;# 
# 10534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISA equ 0F92h ;# 
# 10596 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISB equ 0F93h ;# 
# 10658 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISC equ 0F94h ;# 
# 10720 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISD equ 0F95h ;# 
# 10782 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISE equ 0F96h ;# 
# 10844 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISF equ 0F97h ;# 
# 10901 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISG equ 0F98h ;# 
# 10945 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISH equ 0F99h ;# 
# 11007 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISJ equ 0F9Ah ;# 
# 11069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCTUNE equ 0F9Bh ;# 
# 11139 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR1CON equ 0F9Ch ;# 
# 11205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE1 equ 0F9Dh ;# 
# 11288 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR1 equ 0F9Eh ;# 
# 11371 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR1 equ 0F9Fh ;# 
# 11454 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE2 equ 0FA0h ;# 
# 11526 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR2 equ 0FA1h ;# 
# 11598 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR2 equ 0FA2h ;# 
# 11670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE3 equ 0FA3h ;# 
# 11775 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR3 equ 0FA4h ;# 
# 11848 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR3 equ 0FA5h ;# 
# 11921 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR6 equ 0FA6h ;# 
# 11960 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSPCON equ 0FA7h ;# 
# 11999 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
HLVDCON equ 0FA8h ;# 
# 12069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR6 equ 0FA9h ;# 
# 12108 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1GCON equ 0FAAh ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA1 equ 0FABh ;# 
# 12217 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA equ 0FABh ;# 
# 12550 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA1 equ 0FACh ;# 
# 12555 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA equ 0FACh ;# 
# 12838 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG1 equ 0FADh ;# 
# 12843 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG equ 0FADh ;# 
# 12876 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG1 equ 0FAEh ;# 
# 12881 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG equ 0FAEh ;# 
# 12914 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG1 equ 0FAFh ;# 
# 12919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG equ 0FAFh ;# 
# 12952 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3GCON equ 0FB0h ;# 
# 13056 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3CON equ 0FB1h ;# 
# 13167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3 equ 0FB2h ;# 
# 13174 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3L equ 0FB2h ;# 
# 13194 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3H equ 0FB3h ;# 
# 13214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTAT equ 0FB4h ;# 
# 13219 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTATUS equ 0FB4h ;# 
# 13320 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CVRCON equ 0FB5h ;# 
# 13405 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE4 equ 0FB6h ;# 
# 13467 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR4 equ 0FB7h ;# 
# 13529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR4 equ 0FB8h ;# 
# 13599 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE5 equ 0FB9h ;# 
# 13661 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR5 equ 0FBAh ;# 
# 13723 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP1CON equ 0FBBh ;# 
# 13728 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1CON equ 0FBBh ;# 
# 13915 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1 equ 0FBCh ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1L equ 0FBCh ;# 
# 13942 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1H equ 0FBDh ;# 
# 13962 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1DEL equ 0FBEh ;# 
# 13967 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM1CON equ 0FBEh ;# 
# 14100 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1AS equ 0FBFh ;# 
# 14182 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON2 equ 0FC0h ;# 
# 14253 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON1 equ 0FC1h ;# 
# 14357 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON0 equ 0FC2h ;# 
# 14482 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRES equ 0FC3h ;# 
# 14489 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESL equ 0FC3h ;# 
# 14509 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESH equ 0FC4h ;# 
# 14529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON2 equ 0FC5h ;# 
# 14534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON2 equ 0FC5h ;# 
# 14883 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON1 equ 0FC6h ;# 
# 14888 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON1 equ 0FC6h ;# 
# 15121 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1STAT equ 0FC7h ;# 
# 15126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPSTAT equ 0FC7h ;# 
# 15719 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1ADD equ 0FC8h ;# 
# 15724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPADD equ 0FC8h ;# 
# 15957 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1MSK equ 0FC8h ;# 
# 16027 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1BUF equ 0FC9h ;# 
# 16032 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPBUF equ 0FC9h ;# 
# 16065 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T2CON equ 0FCAh ;# 
# 16136 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR2 equ 0FCBh ;# 
# 16156 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR2 equ 0FCCh ;# 
# 16176 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1CON equ 0FCDh ;# 
# 16278 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1 equ 0FCEh ;# 
# 16285 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1L equ 0FCEh ;# 
# 16305 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1H equ 0FCFh ;# 
# 16325 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCON equ 0FD0h ;# 
# 16478 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WDTCON equ 0FD1h ;# 
# 16538 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR5 equ 0FD2h ;# 
# 16627 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON equ 0FD3h ;# 
# 16704 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH1 equ 0FD4h ;# 
# 16724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T0CON equ 0FD5h ;# 
# 16794 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0 equ 0FD6h ;# 
# 16801 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0L equ 0FD6h ;# 
# 16821 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0H equ 0FD7h ;# 
# 16841 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STATUS equ 0FD8h ;# 
# 16912 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2 equ 0FD9h ;# 
# 16919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2L equ 0FD9h ;# 
# 16939 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2H equ 0FDAh ;# 
# 16946 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW2 equ 0FDBh ;# 
# 16966 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC2 equ 0FDCh ;# 
# 16986 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC2 equ 0FDDh ;# 
# 17006 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC2 equ 0FDEh ;# 
# 17026 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF2 equ 0FDFh ;# 
# 17046 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BSR equ 0FE0h ;# 
# 17053 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1 equ 0FE1h ;# 
# 17060 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1L equ 0FE1h ;# 
# 17080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1H equ 0FE2h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW1 equ 0FE3h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC1 equ 0FE4h ;# 
# 17127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC1 equ 0FE5h ;# 
# 17147 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC1 equ 0FE6h ;# 
# 17167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF1 equ 0FE7h ;# 
# 17187 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WREG equ 0FE8h ;# 
# 17207 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0 equ 0FE9h ;# 
# 17214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0L equ 0FE9h ;# 
# 17234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0H equ 0FEAh ;# 
# 17241 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW0 equ 0FEBh ;# 
# 17261 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC0 equ 0FECh ;# 
# 17281 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC0 equ 0FEDh ;# 
# 17301 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC0 equ 0FEEh ;# 
# 17321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF0 equ 0FEFh ;# 
# 17341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON3 equ 0FF0h ;# 
# 17453 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON2 equ 0FF1h ;# 
# 17546 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON equ 0FF2h ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PROD equ 0FF3h ;# 
# 17670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODL equ 0FF3h ;# 
# 17690 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODH equ 0FF4h ;# 
# 17710 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TABLAT equ 0FF5h ;# 
# 17732 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTR equ 0FF6h ;# 
# 17739 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRL equ 0FF6h ;# 
# 17759 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRH equ 0FF7h ;# 
# 17779 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRU equ 0FF8h ;# 
# 17788 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLAT equ 0FF9h ;# 
# 17795 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PC equ 0FF9h ;# 
# 17802 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCL equ 0FF9h ;# 
# 17822 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATH equ 0FFAh ;# 
# 17842 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATU equ 0FFBh ;# 
# 17849 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STKPTR equ 0FFCh ;# 
# 17923 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOS equ 0FFDh ;# 
# 17930 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSL equ 0FFDh ;# 
# 17950 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSH equ 0FFEh ;# 
# 17970 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD3 equ 0F16h ;# 
# 116 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD2 equ 0F17h ;# 
# 178 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD1 equ 0F18h ;# 
# 240 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD0 equ 0F19h ;# 
# 317 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR3CON equ 0F1Ah ;# 
# 428 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR2CON equ 0F1Bh ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG2 equ 0F1Ch ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG2 equ 0F1Dh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG2 equ 0F1Eh ;# 
# 677 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH2 equ 0F1Fh ;# 
# 697 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON2 equ 0F20h ;# 
# 820 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA2 equ 0F21h ;# 
# 947 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA2 equ 0F22h ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON2 equ 0F23h ;# 
# 1195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON1 equ 0F24h ;# 
# 1307 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON0 equ 0F25h ;# 
# 1419 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
MEMCON equ 0F26h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON3 equ 0F27h ;# 
# 1513 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON2 equ 0F28h ;# 
# 1575 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON1 equ 0F29h ;# 
# 1614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
REFOCON equ 0F2Ah ;# 
# 1679 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS2 equ 0F2Bh ;# 
# 1726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS1 equ 0F2Ch ;# 
# 1793 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS0 equ 0F2Dh ;# 
# 1875 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON equ 0F2Eh ;# 
# 1880 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON1 equ 0F2Eh ;# 
# 2127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON equ 0F2Fh ;# 
# 2132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON1 equ 0F2Fh ;# 
# 2379 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T12CON equ 0F30h ;# 
# 2450 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR12 equ 0F31h ;# 
# 2470 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR12 equ 0F32h ;# 
# 2490 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T10CON equ 0F33h ;# 
# 2561 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR10 equ 0F34h ;# 
# 2581 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR10 equ 0F35h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T8CON equ 0F36h ;# 
# 2672 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR8 equ 0F37h ;# 
# 2692 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR8 equ 0F38h ;# 
# 2712 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T6CON equ 0F39h ;# 
# 2783 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR6 equ 0F3Ah ;# 
# 2803 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR6 equ 0F3Bh ;# 
# 2823 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7GCON equ 0F3Ch ;# 
# 2927 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7CON equ 0F3Dh ;# 
# 3029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7 equ 0F3Eh ;# 
# 3036 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7L equ 0F3Eh ;# 
# 3106 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7H equ 0F3Fh ;# 
# 3126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP10CON equ 0F40h ;# 
# 3205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10 equ 0F41h ;# 
# 3212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10L equ 0F41h ;# 
# 3232 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10H equ 0F42h ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP9CON equ 0F43h ;# 
# 3331 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9 equ 0F44h ;# 
# 3338 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9L equ 0F44h ;# 
# 3358 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9H equ 0F45h ;# 
# 3378 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP8CON equ 0F46h ;# 
# 3457 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8 equ 0F47h ;# 
# 3464 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8L equ 0F47h ;# 
# 3484 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8H equ 0F48h ;# 
# 3504 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP3CON equ 0F49h ;# 
# 3586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3 equ 0F4Ah ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3L equ 0F4Ah ;# 
# 3613 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3H equ 0F4Bh ;# 
# 3633 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3DEL equ 0F4Ch ;# 
# 3703 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3AS equ 0F4Dh ;# 
# 3785 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP2CON equ 0F4Eh ;# 
# 3790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2CON equ 0F4Eh ;# 
# 3977 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2 equ 0F4Fh ;# 
# 3984 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2L equ 0F4Fh ;# 
# 4004 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2H equ 0F50h ;# 
# 4024 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2DEL equ 0F51h ;# 
# 4029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM2CON equ 0F51h ;# 
# 4162 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2AS equ 0F52h ;# 
# 4244 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PADCFG1 equ 0F53h ;# 
# 4299 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON equ 0F54h ;# 
# 4304 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON1 equ 0F54h ;# 
# 4579 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUICON equ 0F55h ;# 
# 4655 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONL equ 0F56h ;# 
# 4733 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONH equ 0F57h ;# 
# 4790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVAL equ 0F58h ;# 
# 4797 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALL equ 0F58h ;# 
# 4817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALH equ 0F59h ;# 
# 4837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMRPT equ 0F5Ah ;# 
# 4907 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMCFG equ 0F5Bh ;# 
# 4983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVAL equ 0F5Ch ;# 
# 4990 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALL equ 0F5Ch ;# 
# 5010 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALH equ 0F5Dh ;# 
# 5080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCAL equ 0F5Eh ;# 
# 5150 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCFG equ 0F5Fh ;# 
# 5215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE6 equ 0F60h ;# 
# 5254 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEDATA equ 0F61h ;# 
# 5274 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADR equ 0F62h ;# 
# 5294 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADRH equ 0F63h ;# 
# 5314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON2 equ 0F64h ;# 
# 5354 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON1 equ 0F65h ;# 
# 5359 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCTL equ 0F65h ;# 
# 5363 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON equ 0F65h ;# 
# 5861 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON2 equ 0F66h ;# 
# 6039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON1 equ 0F67h ;# 
# 6159 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2STAT equ 0F68h ;# 
# 6586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2ADD equ 0F69h ;# 
# 6656 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2MSK equ 0F69h ;# 
# 6726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2BUF equ 0F6Ah ;# 
# 6746 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T4CON equ 0F6Bh ;# 
# 6817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR4 equ 0F6Ch ;# 
# 6837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR4 equ 0F6Dh ;# 
# 6857 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP7CON equ 0F6Eh ;# 
# 6936 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7 equ 0F6Fh ;# 
# 6943 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7L equ 0F6Fh ;# 
# 6963 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7H equ 0F70h ;# 
# 6983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP6CON equ 0F71h ;# 
# 7062 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6 equ 0F72h ;# 
# 7069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6L equ 0F72h ;# 
# 7089 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6H equ 0F73h ;# 
# 7109 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP5CON equ 0F74h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5 equ 0F75h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5L equ 0F75h ;# 
# 7215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5H equ 0F76h ;# 
# 7235 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP4CON equ 0F77h ;# 
# 7314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4 equ 0F78h ;# 
# 7321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4L equ 0F78h ;# 
# 7341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4H equ 0F79h ;# 
# 7361 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5GCON equ 0F7Ah ;# 
# 7465 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5CON equ 0F7Bh ;# 
# 7567 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5 equ 0F7Ch ;# 
# 7574 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5L equ 0F7Ch ;# 
# 7594 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5H equ 0F7Dh ;# 
# 7614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON2 equ 0F7Eh ;# 
# 7634 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON1 equ 0F7Fh ;# 
# 7700 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTA equ 0F80h ;# 
# 7892 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTB equ 0F81h ;# 
# 8078 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTC equ 0F82h ;# 
# 8260 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTD equ 0F83h ;# 
# 8501 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTE equ 0F84h ;# 
# 8854 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTF equ 0F85h ;# 
# 9039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTG equ 0F86h ;# 
# 9250 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTH equ 0F87h ;# 
# 9460 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTJ equ 0F88h ;# 
# 9572 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATA equ 0F89h ;# 
# 9684 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATB equ 0F8Ah ;# 
# 9796 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATC equ 0F8Bh ;# 
# 9908 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATD equ 0F8Ch ;# 
# 10020 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATE equ 0F8Dh ;# 
# 10132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATF equ 0F8Eh ;# 
# 10234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATG equ 0F8Fh ;# 
# 10310 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATH equ 0F90h ;# 
# 10422 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATJ equ 0F91h ;# 
# 10534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISA equ 0F92h ;# 
# 10596 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISB equ 0F93h ;# 
# 10658 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISC equ 0F94h ;# 
# 10720 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISD equ 0F95h ;# 
# 10782 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISE equ 0F96h ;# 
# 10844 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISF equ 0F97h ;# 
# 10901 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISG equ 0F98h ;# 
# 10945 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISH equ 0F99h ;# 
# 11007 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISJ equ 0F9Ah ;# 
# 11069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCTUNE equ 0F9Bh ;# 
# 11139 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR1CON equ 0F9Ch ;# 
# 11205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE1 equ 0F9Dh ;# 
# 11288 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR1 equ 0F9Eh ;# 
# 11371 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR1 equ 0F9Fh ;# 
# 11454 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE2 equ 0FA0h ;# 
# 11526 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR2 equ 0FA1h ;# 
# 11598 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR2 equ 0FA2h ;# 
# 11670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE3 equ 0FA3h ;# 
# 11775 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR3 equ 0FA4h ;# 
# 11848 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR3 equ 0FA5h ;# 
# 11921 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR6 equ 0FA6h ;# 
# 11960 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSPCON equ 0FA7h ;# 
# 11999 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
HLVDCON equ 0FA8h ;# 
# 12069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR6 equ 0FA9h ;# 
# 12108 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1GCON equ 0FAAh ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA1 equ 0FABh ;# 
# 12217 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA equ 0FABh ;# 
# 12550 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA1 equ 0FACh ;# 
# 12555 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA equ 0FACh ;# 
# 12838 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG1 equ 0FADh ;# 
# 12843 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG equ 0FADh ;# 
# 12876 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG1 equ 0FAEh ;# 
# 12881 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG equ 0FAEh ;# 
# 12914 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG1 equ 0FAFh ;# 
# 12919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG equ 0FAFh ;# 
# 12952 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3GCON equ 0FB0h ;# 
# 13056 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3CON equ 0FB1h ;# 
# 13167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3 equ 0FB2h ;# 
# 13174 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3L equ 0FB2h ;# 
# 13194 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3H equ 0FB3h ;# 
# 13214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTAT equ 0FB4h ;# 
# 13219 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTATUS equ 0FB4h ;# 
# 13320 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CVRCON equ 0FB5h ;# 
# 13405 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE4 equ 0FB6h ;# 
# 13467 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR4 equ 0FB7h ;# 
# 13529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR4 equ 0FB8h ;# 
# 13599 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE5 equ 0FB9h ;# 
# 13661 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR5 equ 0FBAh ;# 
# 13723 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP1CON equ 0FBBh ;# 
# 13728 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1CON equ 0FBBh ;# 
# 13915 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1 equ 0FBCh ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1L equ 0FBCh ;# 
# 13942 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1H equ 0FBDh ;# 
# 13962 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1DEL equ 0FBEh ;# 
# 13967 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM1CON equ 0FBEh ;# 
# 14100 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1AS equ 0FBFh ;# 
# 14182 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON2 equ 0FC0h ;# 
# 14253 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON1 equ 0FC1h ;# 
# 14357 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON0 equ 0FC2h ;# 
# 14482 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRES equ 0FC3h ;# 
# 14489 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESL equ 0FC3h ;# 
# 14509 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESH equ 0FC4h ;# 
# 14529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON2 equ 0FC5h ;# 
# 14534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON2 equ 0FC5h ;# 
# 14883 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON1 equ 0FC6h ;# 
# 14888 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON1 equ 0FC6h ;# 
# 15121 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1STAT equ 0FC7h ;# 
# 15126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPSTAT equ 0FC7h ;# 
# 15719 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1ADD equ 0FC8h ;# 
# 15724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPADD equ 0FC8h ;# 
# 15957 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1MSK equ 0FC8h ;# 
# 16027 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1BUF equ 0FC9h ;# 
# 16032 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPBUF equ 0FC9h ;# 
# 16065 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T2CON equ 0FCAh ;# 
# 16136 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR2 equ 0FCBh ;# 
# 16156 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR2 equ 0FCCh ;# 
# 16176 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1CON equ 0FCDh ;# 
# 16278 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1 equ 0FCEh ;# 
# 16285 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1L equ 0FCEh ;# 
# 16305 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1H equ 0FCFh ;# 
# 16325 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCON equ 0FD0h ;# 
# 16478 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WDTCON equ 0FD1h ;# 
# 16538 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR5 equ 0FD2h ;# 
# 16627 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON equ 0FD3h ;# 
# 16704 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH1 equ 0FD4h ;# 
# 16724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T0CON equ 0FD5h ;# 
# 16794 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0 equ 0FD6h ;# 
# 16801 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0L equ 0FD6h ;# 
# 16821 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0H equ 0FD7h ;# 
# 16841 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STATUS equ 0FD8h ;# 
# 16912 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2 equ 0FD9h ;# 
# 16919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2L equ 0FD9h ;# 
# 16939 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2H equ 0FDAh ;# 
# 16946 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW2 equ 0FDBh ;# 
# 16966 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC2 equ 0FDCh ;# 
# 16986 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC2 equ 0FDDh ;# 
# 17006 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC2 equ 0FDEh ;# 
# 17026 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF2 equ 0FDFh ;# 
# 17046 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BSR equ 0FE0h ;# 
# 17053 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1 equ 0FE1h ;# 
# 17060 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1L equ 0FE1h ;# 
# 17080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1H equ 0FE2h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW1 equ 0FE3h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC1 equ 0FE4h ;# 
# 17127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC1 equ 0FE5h ;# 
# 17147 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC1 equ 0FE6h ;# 
# 17167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF1 equ 0FE7h ;# 
# 17187 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WREG equ 0FE8h ;# 
# 17207 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0 equ 0FE9h ;# 
# 17214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0L equ 0FE9h ;# 
# 17234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0H equ 0FEAh ;# 
# 17241 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW0 equ 0FEBh ;# 
# 17261 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC0 equ 0FECh ;# 
# 17281 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC0 equ 0FEDh ;# 
# 17301 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC0 equ 0FEEh ;# 
# 17321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF0 equ 0FEFh ;# 
# 17341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON3 equ 0FF0h ;# 
# 17453 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON2 equ 0FF1h ;# 
# 17546 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON equ 0FF2h ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PROD equ 0FF3h ;# 
# 17670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODL equ 0FF3h ;# 
# 17690 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODH equ 0FF4h ;# 
# 17710 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TABLAT equ 0FF5h ;# 
# 17732 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTR equ 0FF6h ;# 
# 17739 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRL equ 0FF6h ;# 
# 17759 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRH equ 0FF7h ;# 
# 17779 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRU equ 0FF8h ;# 
# 17788 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLAT equ 0FF9h ;# 
# 17795 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PC equ 0FF9h ;# 
# 17802 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCL equ 0FF9h ;# 
# 17822 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATH equ 0FFAh ;# 
# 17842 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATU equ 0FFBh ;# 
# 17849 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STKPTR equ 0FFCh ;# 
# 17923 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOS equ 0FFDh ;# 
# 17930 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSL equ 0FFDh ;# 
# 17950 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSH equ 0FFEh ;# 
# 17970 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD3 equ 0F16h ;# 
# 116 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD2 equ 0F17h ;# 
# 178 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD1 equ 0F18h ;# 
# 240 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD0 equ 0F19h ;# 
# 317 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR3CON equ 0F1Ah ;# 
# 428 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR2CON equ 0F1Bh ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG2 equ 0F1Ch ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG2 equ 0F1Dh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG2 equ 0F1Eh ;# 
# 677 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH2 equ 0F1Fh ;# 
# 697 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON2 equ 0F20h ;# 
# 820 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA2 equ 0F21h ;# 
# 947 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA2 equ 0F22h ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON2 equ 0F23h ;# 
# 1195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON1 equ 0F24h ;# 
# 1307 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON0 equ 0F25h ;# 
# 1419 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
MEMCON equ 0F26h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON3 equ 0F27h ;# 
# 1513 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON2 equ 0F28h ;# 
# 1575 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON1 equ 0F29h ;# 
# 1614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
REFOCON equ 0F2Ah ;# 
# 1679 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS2 equ 0F2Bh ;# 
# 1726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS1 equ 0F2Ch ;# 
# 1793 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS0 equ 0F2Dh ;# 
# 1875 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON equ 0F2Eh ;# 
# 1880 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON1 equ 0F2Eh ;# 
# 2127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON equ 0F2Fh ;# 
# 2132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON1 equ 0F2Fh ;# 
# 2379 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T12CON equ 0F30h ;# 
# 2450 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR12 equ 0F31h ;# 
# 2470 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR12 equ 0F32h ;# 
# 2490 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T10CON equ 0F33h ;# 
# 2561 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR10 equ 0F34h ;# 
# 2581 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR10 equ 0F35h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T8CON equ 0F36h ;# 
# 2672 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR8 equ 0F37h ;# 
# 2692 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR8 equ 0F38h ;# 
# 2712 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T6CON equ 0F39h ;# 
# 2783 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR6 equ 0F3Ah ;# 
# 2803 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR6 equ 0F3Bh ;# 
# 2823 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7GCON equ 0F3Ch ;# 
# 2927 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7CON equ 0F3Dh ;# 
# 3029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7 equ 0F3Eh ;# 
# 3036 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7L equ 0F3Eh ;# 
# 3106 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7H equ 0F3Fh ;# 
# 3126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP10CON equ 0F40h ;# 
# 3205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10 equ 0F41h ;# 
# 3212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10L equ 0F41h ;# 
# 3232 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10H equ 0F42h ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP9CON equ 0F43h ;# 
# 3331 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9 equ 0F44h ;# 
# 3338 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9L equ 0F44h ;# 
# 3358 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9H equ 0F45h ;# 
# 3378 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP8CON equ 0F46h ;# 
# 3457 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8 equ 0F47h ;# 
# 3464 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8L equ 0F47h ;# 
# 3484 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8H equ 0F48h ;# 
# 3504 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP3CON equ 0F49h ;# 
# 3586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3 equ 0F4Ah ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3L equ 0F4Ah ;# 
# 3613 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3H equ 0F4Bh ;# 
# 3633 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3DEL equ 0F4Ch ;# 
# 3703 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3AS equ 0F4Dh ;# 
# 3785 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP2CON equ 0F4Eh ;# 
# 3790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2CON equ 0F4Eh ;# 
# 3977 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2 equ 0F4Fh ;# 
# 3984 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2L equ 0F4Fh ;# 
# 4004 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2H equ 0F50h ;# 
# 4024 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2DEL equ 0F51h ;# 
# 4029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM2CON equ 0F51h ;# 
# 4162 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2AS equ 0F52h ;# 
# 4244 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PADCFG1 equ 0F53h ;# 
# 4299 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON equ 0F54h ;# 
# 4304 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON1 equ 0F54h ;# 
# 4579 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUICON equ 0F55h ;# 
# 4655 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONL equ 0F56h ;# 
# 4733 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONH equ 0F57h ;# 
# 4790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVAL equ 0F58h ;# 
# 4797 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALL equ 0F58h ;# 
# 4817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALH equ 0F59h ;# 
# 4837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMRPT equ 0F5Ah ;# 
# 4907 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMCFG equ 0F5Bh ;# 
# 4983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVAL equ 0F5Ch ;# 
# 4990 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALL equ 0F5Ch ;# 
# 5010 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALH equ 0F5Dh ;# 
# 5080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCAL equ 0F5Eh ;# 
# 5150 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCFG equ 0F5Fh ;# 
# 5215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE6 equ 0F60h ;# 
# 5254 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEDATA equ 0F61h ;# 
# 5274 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADR equ 0F62h ;# 
# 5294 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADRH equ 0F63h ;# 
# 5314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON2 equ 0F64h ;# 
# 5354 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON1 equ 0F65h ;# 
# 5359 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCTL equ 0F65h ;# 
# 5363 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON equ 0F65h ;# 
# 5861 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON2 equ 0F66h ;# 
# 6039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON1 equ 0F67h ;# 
# 6159 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2STAT equ 0F68h ;# 
# 6586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2ADD equ 0F69h ;# 
# 6656 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2MSK equ 0F69h ;# 
# 6726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2BUF equ 0F6Ah ;# 
# 6746 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T4CON equ 0F6Bh ;# 
# 6817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR4 equ 0F6Ch ;# 
# 6837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR4 equ 0F6Dh ;# 
# 6857 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP7CON equ 0F6Eh ;# 
# 6936 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7 equ 0F6Fh ;# 
# 6943 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7L equ 0F6Fh ;# 
# 6963 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7H equ 0F70h ;# 
# 6983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP6CON equ 0F71h ;# 
# 7062 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6 equ 0F72h ;# 
# 7069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6L equ 0F72h ;# 
# 7089 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6H equ 0F73h ;# 
# 7109 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP5CON equ 0F74h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5 equ 0F75h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5L equ 0F75h ;# 
# 7215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5H equ 0F76h ;# 
# 7235 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP4CON equ 0F77h ;# 
# 7314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4 equ 0F78h ;# 
# 7321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4L equ 0F78h ;# 
# 7341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4H equ 0F79h ;# 
# 7361 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5GCON equ 0F7Ah ;# 
# 7465 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5CON equ 0F7Bh ;# 
# 7567 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5 equ 0F7Ch ;# 
# 7574 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5L equ 0F7Ch ;# 
# 7594 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5H equ 0F7Dh ;# 
# 7614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON2 equ 0F7Eh ;# 
# 7634 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON1 equ 0F7Fh ;# 
# 7700 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTA equ 0F80h ;# 
# 7892 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTB equ 0F81h ;# 
# 8078 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTC equ 0F82h ;# 
# 8260 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTD equ 0F83h ;# 
# 8501 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTE equ 0F84h ;# 
# 8854 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTF equ 0F85h ;# 
# 9039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTG equ 0F86h ;# 
# 9250 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTH equ 0F87h ;# 
# 9460 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTJ equ 0F88h ;# 
# 9572 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATA equ 0F89h ;# 
# 9684 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATB equ 0F8Ah ;# 
# 9796 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATC equ 0F8Bh ;# 
# 9908 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATD equ 0F8Ch ;# 
# 10020 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATE equ 0F8Dh ;# 
# 10132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATF equ 0F8Eh ;# 
# 10234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATG equ 0F8Fh ;# 
# 10310 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATH equ 0F90h ;# 
# 10422 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATJ equ 0F91h ;# 
# 10534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISA equ 0F92h ;# 
# 10596 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISB equ 0F93h ;# 
# 10658 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISC equ 0F94h ;# 
# 10720 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISD equ 0F95h ;# 
# 10782 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISE equ 0F96h ;# 
# 10844 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISF equ 0F97h ;# 
# 10901 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISG equ 0F98h ;# 
# 10945 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISH equ 0F99h ;# 
# 11007 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISJ equ 0F9Ah ;# 
# 11069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCTUNE equ 0F9Bh ;# 
# 11139 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR1CON equ 0F9Ch ;# 
# 11205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE1 equ 0F9Dh ;# 
# 11288 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR1 equ 0F9Eh ;# 
# 11371 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR1 equ 0F9Fh ;# 
# 11454 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE2 equ 0FA0h ;# 
# 11526 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR2 equ 0FA1h ;# 
# 11598 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR2 equ 0FA2h ;# 
# 11670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE3 equ 0FA3h ;# 
# 11775 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR3 equ 0FA4h ;# 
# 11848 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR3 equ 0FA5h ;# 
# 11921 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR6 equ 0FA6h ;# 
# 11960 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSPCON equ 0FA7h ;# 
# 11999 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
HLVDCON equ 0FA8h ;# 
# 12069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR6 equ 0FA9h ;# 
# 12108 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1GCON equ 0FAAh ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA1 equ 0FABh ;# 
# 12217 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA equ 0FABh ;# 
# 12550 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA1 equ 0FACh ;# 
# 12555 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA equ 0FACh ;# 
# 12838 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG1 equ 0FADh ;# 
# 12843 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG equ 0FADh ;# 
# 12876 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG1 equ 0FAEh ;# 
# 12881 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG equ 0FAEh ;# 
# 12914 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG1 equ 0FAFh ;# 
# 12919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG equ 0FAFh ;# 
# 12952 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3GCON equ 0FB0h ;# 
# 13056 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3CON equ 0FB1h ;# 
# 13167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3 equ 0FB2h ;# 
# 13174 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3L equ 0FB2h ;# 
# 13194 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3H equ 0FB3h ;# 
# 13214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTAT equ 0FB4h ;# 
# 13219 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTATUS equ 0FB4h ;# 
# 13320 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CVRCON equ 0FB5h ;# 
# 13405 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE4 equ 0FB6h ;# 
# 13467 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR4 equ 0FB7h ;# 
# 13529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR4 equ 0FB8h ;# 
# 13599 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE5 equ 0FB9h ;# 
# 13661 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR5 equ 0FBAh ;# 
# 13723 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP1CON equ 0FBBh ;# 
# 13728 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1CON equ 0FBBh ;# 
# 13915 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1 equ 0FBCh ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1L equ 0FBCh ;# 
# 13942 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1H equ 0FBDh ;# 
# 13962 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1DEL equ 0FBEh ;# 
# 13967 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM1CON equ 0FBEh ;# 
# 14100 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1AS equ 0FBFh ;# 
# 14182 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON2 equ 0FC0h ;# 
# 14253 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON1 equ 0FC1h ;# 
# 14357 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON0 equ 0FC2h ;# 
# 14482 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRES equ 0FC3h ;# 
# 14489 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESL equ 0FC3h ;# 
# 14509 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESH equ 0FC4h ;# 
# 14529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON2 equ 0FC5h ;# 
# 14534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON2 equ 0FC5h ;# 
# 14883 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON1 equ 0FC6h ;# 
# 14888 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON1 equ 0FC6h ;# 
# 15121 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1STAT equ 0FC7h ;# 
# 15126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPSTAT equ 0FC7h ;# 
# 15719 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1ADD equ 0FC8h ;# 
# 15724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPADD equ 0FC8h ;# 
# 15957 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1MSK equ 0FC8h ;# 
# 16027 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1BUF equ 0FC9h ;# 
# 16032 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPBUF equ 0FC9h ;# 
# 16065 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T2CON equ 0FCAh ;# 
# 16136 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR2 equ 0FCBh ;# 
# 16156 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR2 equ 0FCCh ;# 
# 16176 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1CON equ 0FCDh ;# 
# 16278 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1 equ 0FCEh ;# 
# 16285 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1L equ 0FCEh ;# 
# 16305 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1H equ 0FCFh ;# 
# 16325 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCON equ 0FD0h ;# 
# 16478 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WDTCON equ 0FD1h ;# 
# 16538 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR5 equ 0FD2h ;# 
# 16627 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON equ 0FD3h ;# 
# 16704 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH1 equ 0FD4h ;# 
# 16724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T0CON equ 0FD5h ;# 
# 16794 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0 equ 0FD6h ;# 
# 16801 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0L equ 0FD6h ;# 
# 16821 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0H equ 0FD7h ;# 
# 16841 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STATUS equ 0FD8h ;# 
# 16912 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2 equ 0FD9h ;# 
# 16919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2L equ 0FD9h ;# 
# 16939 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2H equ 0FDAh ;# 
# 16946 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW2 equ 0FDBh ;# 
# 16966 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC2 equ 0FDCh ;# 
# 16986 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC2 equ 0FDDh ;# 
# 17006 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC2 equ 0FDEh ;# 
# 17026 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF2 equ 0FDFh ;# 
# 17046 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BSR equ 0FE0h ;# 
# 17053 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1 equ 0FE1h ;# 
# 17060 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1L equ 0FE1h ;# 
# 17080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1H equ 0FE2h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW1 equ 0FE3h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC1 equ 0FE4h ;# 
# 17127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC1 equ 0FE5h ;# 
# 17147 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC1 equ 0FE6h ;# 
# 17167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF1 equ 0FE7h ;# 
# 17187 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WREG equ 0FE8h ;# 
# 17207 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0 equ 0FE9h ;# 
# 17214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0L equ 0FE9h ;# 
# 17234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0H equ 0FEAh ;# 
# 17241 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW0 equ 0FEBh ;# 
# 17261 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC0 equ 0FECh ;# 
# 17281 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC0 equ 0FEDh ;# 
# 17301 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC0 equ 0FEEh ;# 
# 17321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF0 equ 0FEFh ;# 
# 17341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON3 equ 0FF0h ;# 
# 17453 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON2 equ 0FF1h ;# 
# 17546 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON equ 0FF2h ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PROD equ 0FF3h ;# 
# 17670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODL equ 0FF3h ;# 
# 17690 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODH equ 0FF4h ;# 
# 17710 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TABLAT equ 0FF5h ;# 
# 17732 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTR equ 0FF6h ;# 
# 17739 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRL equ 0FF6h ;# 
# 17759 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRH equ 0FF7h ;# 
# 17779 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRU equ 0FF8h ;# 
# 17788 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLAT equ 0FF9h ;# 
# 17795 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PC equ 0FF9h ;# 
# 17802 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCL equ 0FF9h ;# 
# 17822 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATH equ 0FFAh ;# 
# 17842 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATU equ 0FFBh ;# 
# 17849 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STKPTR equ 0FFCh ;# 
# 17923 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOS equ 0FFDh ;# 
# 17930 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSL equ 0FFDh ;# 
# 17950 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSH equ 0FFEh ;# 
# 17970 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD3 equ 0F16h ;# 
# 116 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD2 equ 0F17h ;# 
# 178 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD1 equ 0F18h ;# 
# 240 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD0 equ 0F19h ;# 
# 317 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR3CON equ 0F1Ah ;# 
# 428 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR2CON equ 0F1Bh ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG2 equ 0F1Ch ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG2 equ 0F1Dh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG2 equ 0F1Eh ;# 
# 677 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH2 equ 0F1Fh ;# 
# 697 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON2 equ 0F20h ;# 
# 820 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA2 equ 0F21h ;# 
# 947 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA2 equ 0F22h ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON2 equ 0F23h ;# 
# 1195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON1 equ 0F24h ;# 
# 1307 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON0 equ 0F25h ;# 
# 1419 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
MEMCON equ 0F26h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON3 equ 0F27h ;# 
# 1513 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON2 equ 0F28h ;# 
# 1575 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON1 equ 0F29h ;# 
# 1614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
REFOCON equ 0F2Ah ;# 
# 1679 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS2 equ 0F2Bh ;# 
# 1726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS1 equ 0F2Ch ;# 
# 1793 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS0 equ 0F2Dh ;# 
# 1875 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON equ 0F2Eh ;# 
# 1880 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON1 equ 0F2Eh ;# 
# 2127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON equ 0F2Fh ;# 
# 2132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON1 equ 0F2Fh ;# 
# 2379 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T12CON equ 0F30h ;# 
# 2450 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR12 equ 0F31h ;# 
# 2470 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR12 equ 0F32h ;# 
# 2490 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T10CON equ 0F33h ;# 
# 2561 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR10 equ 0F34h ;# 
# 2581 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR10 equ 0F35h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T8CON equ 0F36h ;# 
# 2672 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR8 equ 0F37h ;# 
# 2692 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR8 equ 0F38h ;# 
# 2712 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T6CON equ 0F39h ;# 
# 2783 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR6 equ 0F3Ah ;# 
# 2803 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR6 equ 0F3Bh ;# 
# 2823 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7GCON equ 0F3Ch ;# 
# 2927 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7CON equ 0F3Dh ;# 
# 3029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7 equ 0F3Eh ;# 
# 3036 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7L equ 0F3Eh ;# 
# 3106 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7H equ 0F3Fh ;# 
# 3126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP10CON equ 0F40h ;# 
# 3205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10 equ 0F41h ;# 
# 3212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10L equ 0F41h ;# 
# 3232 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10H equ 0F42h ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP9CON equ 0F43h ;# 
# 3331 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9 equ 0F44h ;# 
# 3338 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9L equ 0F44h ;# 
# 3358 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9H equ 0F45h ;# 
# 3378 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP8CON equ 0F46h ;# 
# 3457 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8 equ 0F47h ;# 
# 3464 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8L equ 0F47h ;# 
# 3484 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8H equ 0F48h ;# 
# 3504 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP3CON equ 0F49h ;# 
# 3586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3 equ 0F4Ah ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3L equ 0F4Ah ;# 
# 3613 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3H equ 0F4Bh ;# 
# 3633 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3DEL equ 0F4Ch ;# 
# 3703 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3AS equ 0F4Dh ;# 
# 3785 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP2CON equ 0F4Eh ;# 
# 3790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2CON equ 0F4Eh ;# 
# 3977 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2 equ 0F4Fh ;# 
# 3984 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2L equ 0F4Fh ;# 
# 4004 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2H equ 0F50h ;# 
# 4024 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2DEL equ 0F51h ;# 
# 4029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM2CON equ 0F51h ;# 
# 4162 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2AS equ 0F52h ;# 
# 4244 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PADCFG1 equ 0F53h ;# 
# 4299 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON equ 0F54h ;# 
# 4304 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON1 equ 0F54h ;# 
# 4579 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUICON equ 0F55h ;# 
# 4655 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONL equ 0F56h ;# 
# 4733 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONH equ 0F57h ;# 
# 4790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVAL equ 0F58h ;# 
# 4797 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALL equ 0F58h ;# 
# 4817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALH equ 0F59h ;# 
# 4837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMRPT equ 0F5Ah ;# 
# 4907 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMCFG equ 0F5Bh ;# 
# 4983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVAL equ 0F5Ch ;# 
# 4990 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALL equ 0F5Ch ;# 
# 5010 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALH equ 0F5Dh ;# 
# 5080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCAL equ 0F5Eh ;# 
# 5150 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCFG equ 0F5Fh ;# 
# 5215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE6 equ 0F60h ;# 
# 5254 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEDATA equ 0F61h ;# 
# 5274 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADR equ 0F62h ;# 
# 5294 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADRH equ 0F63h ;# 
# 5314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON2 equ 0F64h ;# 
# 5354 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON1 equ 0F65h ;# 
# 5359 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCTL equ 0F65h ;# 
# 5363 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON equ 0F65h ;# 
# 5861 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON2 equ 0F66h ;# 
# 6039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON1 equ 0F67h ;# 
# 6159 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2STAT equ 0F68h ;# 
# 6586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2ADD equ 0F69h ;# 
# 6656 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2MSK equ 0F69h ;# 
# 6726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2BUF equ 0F6Ah ;# 
# 6746 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T4CON equ 0F6Bh ;# 
# 6817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR4 equ 0F6Ch ;# 
# 6837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR4 equ 0F6Dh ;# 
# 6857 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP7CON equ 0F6Eh ;# 
# 6936 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7 equ 0F6Fh ;# 
# 6943 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7L equ 0F6Fh ;# 
# 6963 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7H equ 0F70h ;# 
# 6983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP6CON equ 0F71h ;# 
# 7062 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6 equ 0F72h ;# 
# 7069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6L equ 0F72h ;# 
# 7089 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6H equ 0F73h ;# 
# 7109 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP5CON equ 0F74h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5 equ 0F75h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5L equ 0F75h ;# 
# 7215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5H equ 0F76h ;# 
# 7235 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP4CON equ 0F77h ;# 
# 7314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4 equ 0F78h ;# 
# 7321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4L equ 0F78h ;# 
# 7341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4H equ 0F79h ;# 
# 7361 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5GCON equ 0F7Ah ;# 
# 7465 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5CON equ 0F7Bh ;# 
# 7567 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5 equ 0F7Ch ;# 
# 7574 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5L equ 0F7Ch ;# 
# 7594 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5H equ 0F7Dh ;# 
# 7614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON2 equ 0F7Eh ;# 
# 7634 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON1 equ 0F7Fh ;# 
# 7700 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTA equ 0F80h ;# 
# 7892 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTB equ 0F81h ;# 
# 8078 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTC equ 0F82h ;# 
# 8260 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTD equ 0F83h ;# 
# 8501 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTE equ 0F84h ;# 
# 8854 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTF equ 0F85h ;# 
# 9039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTG equ 0F86h ;# 
# 9250 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTH equ 0F87h ;# 
# 9460 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTJ equ 0F88h ;# 
# 9572 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATA equ 0F89h ;# 
# 9684 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATB equ 0F8Ah ;# 
# 9796 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATC equ 0F8Bh ;# 
# 9908 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATD equ 0F8Ch ;# 
# 10020 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATE equ 0F8Dh ;# 
# 10132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATF equ 0F8Eh ;# 
# 10234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATG equ 0F8Fh ;# 
# 10310 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATH equ 0F90h ;# 
# 10422 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATJ equ 0F91h ;# 
# 10534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISA equ 0F92h ;# 
# 10596 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISB equ 0F93h ;# 
# 10658 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISC equ 0F94h ;# 
# 10720 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISD equ 0F95h ;# 
# 10782 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISE equ 0F96h ;# 
# 10844 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISF equ 0F97h ;# 
# 10901 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISG equ 0F98h ;# 
# 10945 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISH equ 0F99h ;# 
# 11007 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISJ equ 0F9Ah ;# 
# 11069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCTUNE equ 0F9Bh ;# 
# 11139 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR1CON equ 0F9Ch ;# 
# 11205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE1 equ 0F9Dh ;# 
# 11288 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR1 equ 0F9Eh ;# 
# 11371 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR1 equ 0F9Fh ;# 
# 11454 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE2 equ 0FA0h ;# 
# 11526 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR2 equ 0FA1h ;# 
# 11598 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR2 equ 0FA2h ;# 
# 11670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE3 equ 0FA3h ;# 
# 11775 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR3 equ 0FA4h ;# 
# 11848 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR3 equ 0FA5h ;# 
# 11921 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR6 equ 0FA6h ;# 
# 11960 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSPCON equ 0FA7h ;# 
# 11999 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
HLVDCON equ 0FA8h ;# 
# 12069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR6 equ 0FA9h ;# 
# 12108 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1GCON equ 0FAAh ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA1 equ 0FABh ;# 
# 12217 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA equ 0FABh ;# 
# 12550 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA1 equ 0FACh ;# 
# 12555 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA equ 0FACh ;# 
# 12838 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG1 equ 0FADh ;# 
# 12843 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG equ 0FADh ;# 
# 12876 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG1 equ 0FAEh ;# 
# 12881 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG equ 0FAEh ;# 
# 12914 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG1 equ 0FAFh ;# 
# 12919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG equ 0FAFh ;# 
# 12952 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3GCON equ 0FB0h ;# 
# 13056 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3CON equ 0FB1h ;# 
# 13167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3 equ 0FB2h ;# 
# 13174 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3L equ 0FB2h ;# 
# 13194 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3H equ 0FB3h ;# 
# 13214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTAT equ 0FB4h ;# 
# 13219 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTATUS equ 0FB4h ;# 
# 13320 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CVRCON equ 0FB5h ;# 
# 13405 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE4 equ 0FB6h ;# 
# 13467 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR4 equ 0FB7h ;# 
# 13529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR4 equ 0FB8h ;# 
# 13599 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE5 equ 0FB9h ;# 
# 13661 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR5 equ 0FBAh ;# 
# 13723 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP1CON equ 0FBBh ;# 
# 13728 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1CON equ 0FBBh ;# 
# 13915 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1 equ 0FBCh ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1L equ 0FBCh ;# 
# 13942 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1H equ 0FBDh ;# 
# 13962 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1DEL equ 0FBEh ;# 
# 13967 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM1CON equ 0FBEh ;# 
# 14100 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1AS equ 0FBFh ;# 
# 14182 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON2 equ 0FC0h ;# 
# 14253 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON1 equ 0FC1h ;# 
# 14357 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON0 equ 0FC2h ;# 
# 14482 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRES equ 0FC3h ;# 
# 14489 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESL equ 0FC3h ;# 
# 14509 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESH equ 0FC4h ;# 
# 14529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON2 equ 0FC5h ;# 
# 14534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON2 equ 0FC5h ;# 
# 14883 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON1 equ 0FC6h ;# 
# 14888 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON1 equ 0FC6h ;# 
# 15121 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1STAT equ 0FC7h ;# 
# 15126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPSTAT equ 0FC7h ;# 
# 15719 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1ADD equ 0FC8h ;# 
# 15724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPADD equ 0FC8h ;# 
# 15957 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1MSK equ 0FC8h ;# 
# 16027 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1BUF equ 0FC9h ;# 
# 16032 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPBUF equ 0FC9h ;# 
# 16065 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T2CON equ 0FCAh ;# 
# 16136 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR2 equ 0FCBh ;# 
# 16156 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR2 equ 0FCCh ;# 
# 16176 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1CON equ 0FCDh ;# 
# 16278 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1 equ 0FCEh ;# 
# 16285 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1L equ 0FCEh ;# 
# 16305 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1H equ 0FCFh ;# 
# 16325 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCON equ 0FD0h ;# 
# 16478 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WDTCON equ 0FD1h ;# 
# 16538 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR5 equ 0FD2h ;# 
# 16627 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON equ 0FD3h ;# 
# 16704 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH1 equ 0FD4h ;# 
# 16724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T0CON equ 0FD5h ;# 
# 16794 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0 equ 0FD6h ;# 
# 16801 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0L equ 0FD6h ;# 
# 16821 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0H equ 0FD7h ;# 
# 16841 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STATUS equ 0FD8h ;# 
# 16912 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2 equ 0FD9h ;# 
# 16919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2L equ 0FD9h ;# 
# 16939 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2H equ 0FDAh ;# 
# 16946 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW2 equ 0FDBh ;# 
# 16966 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC2 equ 0FDCh ;# 
# 16986 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC2 equ 0FDDh ;# 
# 17006 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC2 equ 0FDEh ;# 
# 17026 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF2 equ 0FDFh ;# 
# 17046 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BSR equ 0FE0h ;# 
# 17053 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1 equ 0FE1h ;# 
# 17060 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1L equ 0FE1h ;# 
# 17080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1H equ 0FE2h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW1 equ 0FE3h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC1 equ 0FE4h ;# 
# 17127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC1 equ 0FE5h ;# 
# 17147 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC1 equ 0FE6h ;# 
# 17167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF1 equ 0FE7h ;# 
# 17187 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WREG equ 0FE8h ;# 
# 17207 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0 equ 0FE9h ;# 
# 17214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0L equ 0FE9h ;# 
# 17234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0H equ 0FEAh ;# 
# 17241 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW0 equ 0FEBh ;# 
# 17261 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC0 equ 0FECh ;# 
# 17281 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC0 equ 0FEDh ;# 
# 17301 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC0 equ 0FEEh ;# 
# 17321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF0 equ 0FEFh ;# 
# 17341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON3 equ 0FF0h ;# 
# 17453 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON2 equ 0FF1h ;# 
# 17546 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON equ 0FF2h ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PROD equ 0FF3h ;# 
# 17670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODL equ 0FF3h ;# 
# 17690 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODH equ 0FF4h ;# 
# 17710 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TABLAT equ 0FF5h ;# 
# 17732 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTR equ 0FF6h ;# 
# 17739 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRL equ 0FF6h ;# 
# 17759 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRH equ 0FF7h ;# 
# 17779 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRU equ 0FF8h ;# 
# 17788 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLAT equ 0FF9h ;# 
# 17795 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PC equ 0FF9h ;# 
# 17802 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCL equ 0FF9h ;# 
# 17822 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATH equ 0FFAh ;# 
# 17842 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATU equ 0FFBh ;# 
# 17849 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STKPTR equ 0FFCh ;# 
# 17923 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOS equ 0FFDh ;# 
# 17930 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSL equ 0FFDh ;# 
# 17950 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSH equ 0FFEh ;# 
# 17970 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD3 equ 0F16h ;# 
# 116 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD2 equ 0F17h ;# 
# 178 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD1 equ 0F18h ;# 
# 240 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PMD0 equ 0F19h ;# 
# 317 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR3CON equ 0F1Ah ;# 
# 428 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR2CON equ 0F1Bh ;# 
# 617 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG2 equ 0F1Ch ;# 
# 637 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG2 equ 0F1Dh ;# 
# 657 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG2 equ 0F1Eh ;# 
# 677 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH2 equ 0F1Fh ;# 
# 697 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON2 equ 0F20h ;# 
# 820 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA2 equ 0F21h ;# 
# 947 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA2 equ 0F22h ;# 
# 1083 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON2 equ 0F23h ;# 
# 1195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON1 equ 0F24h ;# 
# 1307 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ANCON0 equ 0F25h ;# 
# 1419 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
MEMCON equ 0F26h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON3 equ 0F27h ;# 
# 1513 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON2 equ 0F28h ;# 
# 1575 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ODCON1 equ 0F29h ;# 
# 1614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
REFOCON equ 0F2Ah ;# 
# 1679 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS2 equ 0F2Bh ;# 
# 1726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS1 equ 0F2Ch ;# 
# 1793 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPTMRS0 equ 0F2Dh ;# 
# 1875 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON equ 0F2Eh ;# 
# 1880 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM3CON1 equ 0F2Eh ;# 
# 2127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON equ 0F2Fh ;# 
# 2132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM2CON1 equ 0F2Fh ;# 
# 2379 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T12CON equ 0F30h ;# 
# 2450 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR12 equ 0F31h ;# 
# 2470 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR12 equ 0F32h ;# 
# 2490 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T10CON equ 0F33h ;# 
# 2561 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR10 equ 0F34h ;# 
# 2581 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR10 equ 0F35h ;# 
# 2601 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T8CON equ 0F36h ;# 
# 2672 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR8 equ 0F37h ;# 
# 2692 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR8 equ 0F38h ;# 
# 2712 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T6CON equ 0F39h ;# 
# 2783 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR6 equ 0F3Ah ;# 
# 2803 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR6 equ 0F3Bh ;# 
# 2823 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7GCON equ 0F3Ch ;# 
# 2927 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T7CON equ 0F3Dh ;# 
# 3029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7 equ 0F3Eh ;# 
# 3036 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7L equ 0F3Eh ;# 
# 3106 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR7H equ 0F3Fh ;# 
# 3126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP10CON equ 0F40h ;# 
# 3205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10 equ 0F41h ;# 
# 3212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10L equ 0F41h ;# 
# 3232 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR10H equ 0F42h ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP9CON equ 0F43h ;# 
# 3331 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9 equ 0F44h ;# 
# 3338 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9L equ 0F44h ;# 
# 3358 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR9H equ 0F45h ;# 
# 3378 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP8CON equ 0F46h ;# 
# 3457 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8 equ 0F47h ;# 
# 3464 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8L equ 0F47h ;# 
# 3484 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR8H equ 0F48h ;# 
# 3504 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP3CON equ 0F49h ;# 
# 3586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3 equ 0F4Ah ;# 
# 3593 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3L equ 0F4Ah ;# 
# 3613 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR3H equ 0F4Bh ;# 
# 3633 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3DEL equ 0F4Ch ;# 
# 3703 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP3AS equ 0F4Dh ;# 
# 3785 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP2CON equ 0F4Eh ;# 
# 3790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2CON equ 0F4Eh ;# 
# 3977 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2 equ 0F4Fh ;# 
# 3984 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2L equ 0F4Fh ;# 
# 4004 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR2H equ 0F50h ;# 
# 4024 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2DEL equ 0F51h ;# 
# 4029 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM2CON equ 0F51h ;# 
# 4162 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP2AS equ 0F52h ;# 
# 4244 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PADCFG1 equ 0F53h ;# 
# 4299 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON equ 0F54h ;# 
# 4304 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CM1CON1 equ 0F54h ;# 
# 4579 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUICON equ 0F55h ;# 
# 4655 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONL equ 0F56h ;# 
# 4733 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CTMUCONH equ 0F57h ;# 
# 4790 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVAL equ 0F58h ;# 
# 4797 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALL equ 0F58h ;# 
# 4817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMVALH equ 0F59h ;# 
# 4837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMRPT equ 0F5Ah ;# 
# 4907 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ALRMCFG equ 0F5Bh ;# 
# 4983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVAL equ 0F5Ch ;# 
# 4990 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALL equ 0F5Ch ;# 
# 5010 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCVALH equ 0F5Dh ;# 
# 5080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCAL equ 0F5Eh ;# 
# 5150 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RTCCFG equ 0F5Fh ;# 
# 5215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE6 equ 0F60h ;# 
# 5254 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEDATA equ 0F61h ;# 
# 5274 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADR equ 0F62h ;# 
# 5294 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EEADRH equ 0F63h ;# 
# 5314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON2 equ 0F64h ;# 
# 5354 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON1 equ 0F65h ;# 
# 5359 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCTL equ 0F65h ;# 
# 5363 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BAUDCON equ 0F65h ;# 
# 5861 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON2 equ 0F66h ;# 
# 6039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2CON1 equ 0F67h ;# 
# 6159 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2STAT equ 0F68h ;# 
# 6586 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2ADD equ 0F69h ;# 
# 6656 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2MSK equ 0F69h ;# 
# 6726 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP2BUF equ 0F6Ah ;# 
# 6746 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T4CON equ 0F6Bh ;# 
# 6817 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR4 equ 0F6Ch ;# 
# 6837 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR4 equ 0F6Dh ;# 
# 6857 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP7CON equ 0F6Eh ;# 
# 6936 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7 equ 0F6Fh ;# 
# 6943 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7L equ 0F6Fh ;# 
# 6963 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR7H equ 0F70h ;# 
# 6983 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP6CON equ 0F71h ;# 
# 7062 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6 equ 0F72h ;# 
# 7069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6L equ 0F72h ;# 
# 7089 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR6H equ 0F73h ;# 
# 7109 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP5CON equ 0F74h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5 equ 0F75h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5L equ 0F75h ;# 
# 7215 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR5H equ 0F76h ;# 
# 7235 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP4CON equ 0F77h ;# 
# 7314 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4 equ 0F78h ;# 
# 7321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4L equ 0F78h ;# 
# 7341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR4H equ 0F79h ;# 
# 7361 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5GCON equ 0F7Ah ;# 
# 7465 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T5CON equ 0F7Bh ;# 
# 7567 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5 equ 0F7Ch ;# 
# 7574 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5L equ 0F7Ch ;# 
# 7594 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR5H equ 0F7Dh ;# 
# 7614 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON2 equ 0F7Eh ;# 
# 7634 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
EECON1 equ 0F7Fh ;# 
# 7700 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTA equ 0F80h ;# 
# 7892 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTB equ 0F81h ;# 
# 8078 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTC equ 0F82h ;# 
# 8260 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTD equ 0F83h ;# 
# 8501 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTE equ 0F84h ;# 
# 8854 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTF equ 0F85h ;# 
# 9039 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTG equ 0F86h ;# 
# 9250 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTH equ 0F87h ;# 
# 9460 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PORTJ equ 0F88h ;# 
# 9572 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATA equ 0F89h ;# 
# 9684 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATB equ 0F8Ah ;# 
# 9796 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATC equ 0F8Bh ;# 
# 9908 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATD equ 0F8Ch ;# 
# 10020 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATE equ 0F8Dh ;# 
# 10132 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATF equ 0F8Eh ;# 
# 10234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATG equ 0F8Fh ;# 
# 10310 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATH equ 0F90h ;# 
# 10422 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
LATJ equ 0F91h ;# 
# 10534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISA equ 0F92h ;# 
# 10596 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISB equ 0F93h ;# 
# 10658 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISC equ 0F94h ;# 
# 10720 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISD equ 0F95h ;# 
# 10782 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISE equ 0F96h ;# 
# 10844 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISF equ 0F97h ;# 
# 10901 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISG equ 0F98h ;# 
# 10945 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISH equ 0F99h ;# 
# 11007 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TRISJ equ 0F9Ah ;# 
# 11069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCTUNE equ 0F9Bh ;# 
# 11139 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSTR1CON equ 0F9Ch ;# 
# 11205 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE1 equ 0F9Dh ;# 
# 11288 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR1 equ 0F9Eh ;# 
# 11371 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR1 equ 0F9Fh ;# 
# 11454 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE2 equ 0FA0h ;# 
# 11526 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR2 equ 0FA1h ;# 
# 11598 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR2 equ 0FA2h ;# 
# 11670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE3 equ 0FA3h ;# 
# 11775 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR3 equ 0FA4h ;# 
# 11848 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR3 equ 0FA5h ;# 
# 11921 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR6 equ 0FA6h ;# 
# 11960 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PSPCON equ 0FA7h ;# 
# 11999 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
HLVDCON equ 0FA8h ;# 
# 12069 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR6 equ 0FA9h ;# 
# 12108 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1GCON equ 0FAAh ;# 
# 12212 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA1 equ 0FABh ;# 
# 12217 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCSTA equ 0FABh ;# 
# 12550 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA1 equ 0FACh ;# 
# 12555 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXSTA equ 0FACh ;# 
# 12838 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG1 equ 0FADh ;# 
# 12843 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TXREG equ 0FADh ;# 
# 12876 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG1 equ 0FAEh ;# 
# 12881 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCREG equ 0FAEh ;# 
# 12914 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG1 equ 0FAFh ;# 
# 12919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRG equ 0FAFh ;# 
# 12952 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3GCON equ 0FB0h ;# 
# 13056 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T3CON equ 0FB1h ;# 
# 13167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3 equ 0FB2h ;# 
# 13174 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3L equ 0FB2h ;# 
# 13194 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR3H equ 0FB3h ;# 
# 13214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTAT equ 0FB4h ;# 
# 13219 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CMSTATUS equ 0FB4h ;# 
# 13320 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CVRCON equ 0FB5h ;# 
# 13405 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE4 equ 0FB6h ;# 
# 13467 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR4 equ 0FB7h ;# 
# 13529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR4 equ 0FB8h ;# 
# 13599 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIE5 equ 0FB9h ;# 
# 13661 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PIR5 equ 0FBAh ;# 
# 13723 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCP1CON equ 0FBBh ;# 
# 13728 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1CON equ 0FBBh ;# 
# 13915 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1 equ 0FBCh ;# 
# 13922 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1L equ 0FBCh ;# 
# 13942 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
CCPR1H equ 0FBDh ;# 
# 13962 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1DEL equ 0FBEh ;# 
# 13967 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PWM1CON equ 0FBEh ;# 
# 14100 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ECCP1AS equ 0FBFh ;# 
# 14182 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON2 equ 0FC0h ;# 
# 14253 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON1 equ 0FC1h ;# 
# 14357 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADCON0 equ 0FC2h ;# 
# 14482 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRES equ 0FC3h ;# 
# 14489 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESL equ 0FC3h ;# 
# 14509 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
ADRESH equ 0FC4h ;# 
# 14529 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON2 equ 0FC5h ;# 
# 14534 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON2 equ 0FC5h ;# 
# 14883 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1CON1 equ 0FC6h ;# 
# 14888 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPCON1 equ 0FC6h ;# 
# 15121 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1STAT equ 0FC7h ;# 
# 15126 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPSTAT equ 0FC7h ;# 
# 15719 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1ADD equ 0FC8h ;# 
# 15724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPADD equ 0FC8h ;# 
# 15957 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1MSK equ 0FC8h ;# 
# 16027 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSP1BUF equ 0FC9h ;# 
# 16032 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SSPBUF equ 0FC9h ;# 
# 16065 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T2CON equ 0FCAh ;# 
# 16136 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PR2 equ 0FCBh ;# 
# 16156 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR2 equ 0FCCh ;# 
# 16176 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T1CON equ 0FCDh ;# 
# 16278 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1 equ 0FCEh ;# 
# 16285 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1L equ 0FCEh ;# 
# 16305 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR1H equ 0FCFh ;# 
# 16325 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
RCON equ 0FD0h ;# 
# 16478 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WDTCON equ 0FD1h ;# 
# 16538 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
IPR5 equ 0FD2h ;# 
# 16627 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
OSCCON equ 0FD3h ;# 
# 16704 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
SPBRGH1 equ 0FD4h ;# 
# 16724 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
T0CON equ 0FD5h ;# 
# 16794 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0 equ 0FD6h ;# 
# 16801 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0L equ 0FD6h ;# 
# 16821 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TMR0H equ 0FD7h ;# 
# 16841 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STATUS equ 0FD8h ;# 
# 16912 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2 equ 0FD9h ;# 
# 16919 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2L equ 0FD9h ;# 
# 16939 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR2H equ 0FDAh ;# 
# 16946 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW2 equ 0FDBh ;# 
# 16966 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC2 equ 0FDCh ;# 
# 16986 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC2 equ 0FDDh ;# 
# 17006 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC2 equ 0FDEh ;# 
# 17026 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF2 equ 0FDFh ;# 
# 17046 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
BSR equ 0FE0h ;# 
# 17053 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1 equ 0FE1h ;# 
# 17060 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1L equ 0FE1h ;# 
# 17080 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR1H equ 0FE2h ;# 
# 17087 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW1 equ 0FE3h ;# 
# 17107 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC1 equ 0FE4h ;# 
# 17127 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC1 equ 0FE5h ;# 
# 17147 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC1 equ 0FE6h ;# 
# 17167 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF1 equ 0FE7h ;# 
# 17187 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
WREG equ 0FE8h ;# 
# 17207 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0 equ 0FE9h ;# 
# 17214 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0L equ 0FE9h ;# 
# 17234 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
FSR0H equ 0FEAh ;# 
# 17241 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PLUSW0 equ 0FEBh ;# 
# 17261 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PREINC0 equ 0FECh ;# 
# 17281 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTDEC0 equ 0FEDh ;# 
# 17301 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
POSTINC0 equ 0FEEh ;# 
# 17321 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INDF0 equ 0FEFh ;# 
# 17341 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON3 equ 0FF0h ;# 
# 17453 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON2 equ 0FF1h ;# 
# 17546 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
INTCON equ 0FF2h ;# 
# 17663 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PROD equ 0FF3h ;# 
# 17670 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODL equ 0FF3h ;# 
# 17690 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PRODH equ 0FF4h ;# 
# 17710 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TABLAT equ 0FF5h ;# 
# 17732 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTR equ 0FF6h ;# 
# 17739 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRL equ 0FF6h ;# 
# 17759 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRH equ 0FF7h ;# 
# 17779 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TBLPTRU equ 0FF8h ;# 
# 17788 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLAT equ 0FF9h ;# 
# 17795 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PC equ 0FF9h ;# 
# 17802 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCL equ 0FF9h ;# 
# 17822 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATH equ 0FFAh ;# 
# 17842 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
PCLATU equ 0FFBh ;# 
# 17849 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
STKPTR equ 0FFCh ;# 
# 17923 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOS equ 0FFDh ;# 
# 17930 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSL equ 0FFDh ;# 
# 17950 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSH equ 0FFEh ;# 
# 17970 "C:/Program Files/Microchip/MPLABX/v6.15/packs/Microchip/PIC18F-K_DFP/1.11.281/xc8\pic\include\proc\pic18f87k22.h"
TOSU equ 0FFFh ;# 
;; Function _EUSART1_DefaultFramingErrorHandler is unused but had its address taken
global _EUSART1_DefaultFramingErrorHandler
_EUSART1_DefaultFramingErrorHandler equ 0
;; Function _EUSART1_DefaultOverrunErrorHandler is unused but had its address taken
global _EUSART1_DefaultOverrunErrorHandler
_EUSART1_DefaultOverrunErrorHandler equ 0
;; Function _EUSART1_DefaultErrorHandler is unused but had its address taken
global _EUSART1_DefaultErrorHandler
_EUSART1_DefaultErrorHandler equ 0
	debug_source C
	FNCALL	_main,_ADC_GetConversion
	FNCALL	_main,_AveregeFilter
	FNCALL	_main,_EUSART1_Write
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_StandardDev
	FNCALL	_main,_calculateThreshold
	FNCALL	_main,_sampleSignal
	FNCALL	_sampleSignal,_ADC_GetConversion
	FNCALL	_sampleSignal,___lwmod
	FNCALL	_calculateThreshold,___flmul
	FNCALL	_StandardDev,___fladd
	FNCALL	_StandardDev,___fldiv
	FNCALL	_StandardDev,___flmul
	FNCALL	_StandardDev,___lwmod
	FNCALL	_StandardDev,___xxtofl
	FNCALL	_StandardDev,_sqrtf
	FNCALL	_SYSTEM_Initialize,_ADC_Initialize
	FNCALL	_SYSTEM_Initialize,_EUSART1_Initialize
	FNCALL	_SYSTEM_Initialize,_INTERRUPT_Initialize
	FNCALL	_SYSTEM_Initialize,_OSCILLATOR_Initialize
	FNCALL	_SYSTEM_Initialize,_PIN_MANAGER_Initialize
	FNCALL	_SYSTEM_Initialize,_TMR0_Initialize
	FNCALL	_SYSTEM_Initialize,_TMR5_Initialize
	FNCALL	_TMR5_Initialize,_TMR5_SetInterruptHandler
	FNCALL	_TMR0_Initialize,_TMR0_SetInterruptHandler
	FNCALL	_EUSART1_Initialize,_EUSART1_SetErrorHandler
	FNCALL	_EUSART1_Initialize,_EUSART1_SetFramingErrorHandler
	FNCALL	_EUSART1_Initialize,_EUSART1_SetOverrunErrorHandler
	FNCALL	_AveregeFilter,___lwmod
	FNROOT	_main
	FNCALL	_INTERRUPT_InterruptManager,_TMR0_ISR
	FNCALL	_INTERRUPT_InterruptManager,_TMR5_ISR
	FNCALL	_TMR5_ISR,_TMR5_DefaultInterruptHandler
	FNCALL	_TMR5_ISR,_TMR5_WriteTimer
	FNCALL	_TMR0_ISR,_TMR0_DefaultInterruptHandler
	FNCALL	intlevel2,_INTERRUPT_InterruptManager
	global	intlevel2
	FNROOT	intlevel2
	global	_prag_T
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"./mcc_generated_files/tmr5.h"
	line	58

;initializer for _prag_T
	db	low(0C8h)
	global	_errno
	global	_timer0ReloadVal
	global	_timer5ReloadVal
	global	_eusart1RxLastError
	global	_flag_tmr0
	global	_scaled_value
	global	_servo
	global	_brojac_T_on
	global	_brojac_T
	global	_circularBuffer
	global	_TXREG1
_TXREG1	set	0xFAD
	global	_RCREG1
_RCREG1	set	0xFAE
	global	_SPBRGH1
_SPBRGH1	set	0xFD4
	global	_SPBRG1
_SPBRG1	set	0xFAF
	global	_TXSTA1
_TXSTA1	set	0xFAC
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_T5CON
_T5CON	set	0xF7B
	global	_TMR5L
_TMR5L	set	0xF7C
	global	_TMR5H
_TMR5H	set	0xF7D
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISB
_TRISB	set	0xF93
	global	_LATC
_LATC	set	0xF8B
	global	_LATB
_LATB	set	0xF8A
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_TMR0_InterruptHandler
psect	nvCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pnvCOMRAM
__pnvCOMRAM:
	global	_TMR0_InterruptHandler
_TMR0_InterruptHandler:
       ds      3
	global	_TMR5_InterruptHandler
	global	_TMR5_InterruptHandler
_TMR5_InterruptHandler:
       ds      3
	global	_bufferIndex
	global	_bufferIndex
_bufferIndex:
       ds      2
	global	_EUSART1_ErrorHandler
psect	nvBANK0,class=BANK0,space=1,noexec,lowdata
global __pnvBANK0
__pnvBANK0:
	global	_EUSART1_ErrorHandler
_EUSART1_ErrorHandler:
       ds      3
	global	_EUSART1_OverrunErrorHandler
	global	_EUSART1_OverrunErrorHandler
_EUSART1_OverrunErrorHandler:
       ds      3
	global	_EUSART1_FramingErrorHandler
	global	_EUSART1_FramingErrorHandler
_EUSART1_FramingErrorHandler:
       ds      3
	global	_RCSTA1bits
_RCSTA1bits	set	0xFAB
	global	_TXSTA1bits
_TXSTA1bits	set	0xFAC
	global	_T0CON
_T0CON	set	0xFD5
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_LATBbits
_LATBbits	set	0xF8A
	global	_T5GCONbits
_T5GCONbits	set	0xF7A
	global	_T5CONbits
_T5CONbits	set	0xF7B
	global	_ANCON2
_ANCON2	set	0xF23
	global	_ANCON1
_ANCON1	set	0xF24
	global	_ANCON0
_ANCON0	set	0xF25
	global	_REFOCON
_REFOCON	set	0xF2A
	global	_OSCCON2
_OSCCON2	set	0xF64
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_BAUDCON1
_BAUDCON1	set	0xF65
	global	_T5GCON
_T5GCON	set	0xF7A
	global	_LATA
_LATA	set	0xF89
	global	_LATD
_LATD	set	0xF8C
	global	_LATE
_LATE	set	0xF8D
	global	_OSCTUNE
_OSCTUNE	set	0xF9B
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_RCSTA1
_RCSTA1	set	0xFAB
	global	_PIE5bits
_PIE5bits	set	0xFB9
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_PIR5bits
_PIR5bits	set	0xFBA
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISE
_TRISE	set	0xF96
	global	_LATH
_LATH	set	0xF90
	global	_LATG
_LATG	set	0xF8F
	global	_LATF
_LATF	set	0xF8E
	global	_TRISH
_TRISH	set	0xF99
	global	_TRISG
_TRISG	set	0xF98
	global	_TRISF
_TRISF	set	0xF97
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config RETEN = "ON"
	config INTOSCSEL = "HIGH"
	config SOSCSEL = "DIG"
	config XINST = "OFF"
	config FOSC = "HS2"
	config PLLCFG = "ON"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRTEN = "OFF"
	config BOREN = "SBORDIS"
	config BORV = "3"
	config BORPWR = "ZPBORMV"
	config WDTEN = "OFF"
	config WDTPS = "1048576"
	config RTCOSC = "SOSCREF"
	config EASHFT = "ON"
	config ABW = "MM"
	config BW = "16"
	config WAIT = "OFF"
	config CCP2MX = "PORTC"
	config ECCPMX = "PORTE"
	config MSSPMSK = "MSK7"
	config MCLRE = "ON"
	config STVREN = "ON"
	config BBSIZ = "BB2K"
	config DEBUG = "OFF"
	config CP0 = "OFF"
	config CP1 = "OFF"
	config CP2 = "OFF"
	config CP3 = "OFF"
	config CP4 = "OFF"
	config CP5 = "OFF"
	config CP6 = "OFF"
	config CP7 = "OFF"
	config CPB = "OFF"
	config CPD = "OFF"
	config WRT0 = "OFF"
	config WRT1 = "OFF"
	config WRT2 = "OFF"
	config WRT3 = "OFF"
	config WRT4 = "OFF"
	config WRT5 = "OFF"
	config WRT6 = "OFF"
	config WRT7 = "OFF"
	config WRTC = "OFF"
	config WRTB = "OFF"
	config WRTD = "OFF"
	config EBRT0 = "OFF"
	config EBRT1 = "OFF"
	config EBRT2 = "OFF"
	config EBRT3 = "OFF"
	config EBRT4 = "OFF"
	config EBRT5 = "OFF"
	config EBRT6 = "OFF"
	config EBRT7 = "OFF"
	config EBRTB = "OFF"
	file	"dist/default/production\projekat.X.production.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_ADC_InterruptHandler
_ADC_InterruptHandler:
       ds      3
	global	_errno
_errno:
       ds      2
	global	_timer0ReloadVal
_timer0ReloadVal:
       ds      2
	global	_timer5ReloadVal
_timer5ReloadVal:
       ds      2
	global	_eusart1RxLastError
_eusart1RxLastError:
       ds      1
	global	_flag_tmr0
_flag_tmr0:
       ds      1
	global	_scaled_value
_scaled_value:
       ds      1
	global	_servo
_servo:
       ds      1
	global	_brojac_T_on
_brojac_T_on:
       ds      1
	global	_brojac_T
_brojac_T:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"./mcc_generated_files/tmr5.h"
	line	58
	global	_prag_T
_prag_T:
       ds      1
psect	bssBIGRAM,class=BIGRAM,space=1,noexec
global __pbssBIGRAM
__pbssBIGRAM:
	global	_circularBuffer
_circularBuffer:
       ds      3600
	file	"dist/default/production\projekat.X.production.s"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (1 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	line	#
; Clear objects allocated to BIGRAM (3600 bytes)
	global __pbssBIGRAM
lfsr	0,__pbssBIGRAM
lfsr	1,3600
clear_0:
clrf	postinc0,c
movf	postdec1,w
movf	fsr1l,w
bnz	clear_0
movf	fsr1h,w
bnz	clear_0
; Clear objects allocated to COMRAM (15 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	15
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec,lowdata
global __pcstackBANK0
__pcstackBANK0:
	global	main@stdDev
main@stdDev:	; 4 bytes @ 0x0
	ds   4
	global	main@value
main@value:	; 2 bytes @ 0x4
	ds   2
	global	main@average
main@average:	; 2 bytes @ 0x6
	ds   2
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_INTERRUPT_Initialize:	; 1 bytes @ 0x0
?_PIN_MANAGER_Initialize:	; 1 bytes @ 0x0
?_OSCILLATOR_Initialize:	; 1 bytes @ 0x0
?_TMR5_Initialize:	; 1 bytes @ 0x0
?_TMR0_Initialize:	; 1 bytes @ 0x0
?_ADC_Initialize:	; 1 bytes @ 0x0
?_EUSART1_Initialize:	; 1 bytes @ 0x0
?_TMR0_ISR:	; 1 bytes @ 0x0
??_TMR0_ISR:	; 1 bytes @ 0x0
?_TMR5_ISR:	; 1 bytes @ 0x0
?_TMR5_DefaultInterruptHandler:	; 1 bytes @ 0x0
??_TMR5_DefaultInterruptHandler:	; 1 bytes @ 0x0
?_TMR0_DefaultInterruptHandler:	; 1 bytes @ 0x0
??_TMR0_DefaultInterruptHandler:	; 1 bytes @ 0x0
?_SYSTEM_Initialize:	; 1 bytes @ 0x0
?_INTERRUPT_InterruptManager:	; 1 bytes @ 0x0
?_TMR5_WriteTimer:	; 1 bytes @ 0x0
?_EUSART1_Write:	; 1 bytes @ 0x0
?_sampleSignal:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	TMR5_WriteTimer@timerVal
TMR5_WriteTimer@timerVal:	; 2 bytes @ 0x0
	ds   2
??_TMR5_ISR:	; 1 bytes @ 0x2
??_INTERRUPT_InterruptManager:	; 1 bytes @ 0x2
??_TMR5_WriteTimer:	; 1 bytes @ 0x2
	ds   2
??_INTERRUPT_Initialize:	; 1 bytes @ 0x4
??_PIN_MANAGER_Initialize:	; 1 bytes @ 0x4
??_OSCILLATOR_Initialize:	; 1 bytes @ 0x4
??_ADC_Initialize:	; 1 bytes @ 0x4
?_TMR5_SetInterruptHandler:	; 1 bytes @ 0x4
?_TMR0_SetInterruptHandler:	; 1 bytes @ 0x4
?_EUSART1_SetFramingErrorHandler:	; 1 bytes @ 0x4
?_EUSART1_SetOverrunErrorHandler:	; 1 bytes @ 0x4
?_EUSART1_SetErrorHandler:	; 1 bytes @ 0x4
??_EUSART1_Write:	; 1 bytes @ 0x4
	global	?_ADC_GetConversion
?_ADC_GetConversion:	; 2 bytes @ 0x4
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x4
	global	?_sqrtf
?_sqrtf:	; 4 bytes @ 0x4
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x4
	global	?___flmul
?___flmul:	; 4 bytes @ 0x4
	global	EUSART1_Write@txData
EUSART1_Write@txData:	; 1 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	global	TMR5_SetInterruptHandler@InterruptHandler
TMR5_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x4
	global	TMR0_SetInterruptHandler@InterruptHandler
TMR0_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x4
	global	EUSART1_SetFramingErrorHandler@interruptHandler
EUSART1_SetFramingErrorHandler@interruptHandler:	; 3 bytes @ 0x4
	global	EUSART1_SetOverrunErrorHandler@interruptHandler
EUSART1_SetOverrunErrorHandler@interruptHandler:	; 3 bytes @ 0x4
	global	EUSART1_SetErrorHandler@interruptHandler
EUSART1_SetErrorHandler@interruptHandler:	; 3 bytes @ 0x4
	global	___fldiv@b
___fldiv@b:	; 4 bytes @ 0x4
	global	___flmul@b
___flmul@b:	; 4 bytes @ 0x4
	global	sqrtf@x
sqrtf@x:	; 4 bytes @ 0x4
	ds   2
??_ADC_GetConversion:	; 1 bytes @ 0x6
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x6
	ds   1
??_TMR5_Initialize:	; 1 bytes @ 0x7
??_TMR0_Initialize:	; 1 bytes @ 0x7
??_EUSART1_Initialize:	; 1 bytes @ 0x7
??_TMR5_SetInterruptHandler:	; 1 bytes @ 0x7
??_TMR0_SetInterruptHandler:	; 1 bytes @ 0x7
??_EUSART1_SetFramingErrorHandler:	; 1 bytes @ 0x7
??_EUSART1_SetOverrunErrorHandler:	; 1 bytes @ 0x7
??_EUSART1_SetErrorHandler:	; 1 bytes @ 0x7
	ds   1
??_sqrtf:	; 1 bytes @ 0x8
??___lwmod:	; 1 bytes @ 0x8
	global	ADC_GetConversion@channel
ADC_GetConversion@channel:	; 1 bytes @ 0x8
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x8
	global	___fldiv@a
___fldiv@a:	; 4 bytes @ 0x8
	global	___flmul@a
___flmul@a:	; 4 bytes @ 0x8
	ds   1
??_SYSTEM_Initialize:	; 1 bytes @ 0x9
??_sampleSignal:	; 1 bytes @ 0x9
	global	?_AveregeFilter
?_AveregeFilter:	; 2 bytes @ 0x9
	global	?___xxtofl
?___xxtofl:	; 4 bytes @ 0x9
	global	sampleSignal@sample
sampleSignal@sample:	; 2 bytes @ 0x9
	global	___xxtofl@val
___xxtofl@val:	; 4 bytes @ 0x9
	ds   2
??_AveregeFilter:	; 1 bytes @ 0xB
	ds   1
??___fldiv:	; 1 bytes @ 0xC
??___flmul:	; 1 bytes @ 0xC
	ds   1
??___xxtofl:	; 1 bytes @ 0xD
	global	sqrtf@s
sqrtf@s:	; 4 bytes @ 0xD
	ds   2
	global	AveregeFilter@sum
AveregeFilter@sum:	; 4 bytes @ 0xF
	ds   1
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x10
	global	___fldiv@rem
___fldiv@rem:	; 4 bytes @ 0x10
	ds   1
	global	___flmul@aexp
___flmul@aexp:	; 1 bytes @ 0x11
	global	___xxtofl@sign
___xxtofl@sign:	; 1 bytes @ 0x11
	global	sqrtf@i
sqrtf@i:	; 4 bytes @ 0x11
	ds   1
	global	___xxtofl@exp
___xxtofl@exp:	; 1 bytes @ 0x12
	global	___flmul@grs
___flmul@grs:	; 4 bytes @ 0x12
	ds   1
	global	AveregeFilter@i
AveregeFilter@i:	; 1 bytes @ 0x13
	global	___xxtofl@arg
___xxtofl@arg:	; 4 bytes @ 0x13
	ds   1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x14
	ds   1
	global	___fldiv@new_exp
___fldiv@new_exp:	; 2 bytes @ 0x15
	global	sqrtf@q
sqrtf@q:	; 4 bytes @ 0x15
	ds   1
	global	___flmul@bexp
___flmul@bexp:	; 1 bytes @ 0x16
	ds   1
	global	___fldiv@grs
___fldiv@grs:	; 4 bytes @ 0x17
	global	___flmul@prod
___flmul@prod:	; 4 bytes @ 0x17
	ds   2
	global	sqrtf@t
sqrtf@t:	; 4 bytes @ 0x19
	ds   2
	global	___fldiv@bexp
___fldiv@bexp:	; 1 bytes @ 0x1B
	global	___flmul@temp
___flmul@temp:	; 2 bytes @ 0x1B
	ds   1
	global	___fldiv@aexp
___fldiv@aexp:	; 1 bytes @ 0x1C
	ds   1
	global	?_calculateThreshold
?_calculateThreshold:	; 2 bytes @ 0x1D
	global	?___fladd
?___fladd:	; 4 bytes @ 0x1D
	global	calculateThreshold@stdDev
calculateThreshold@stdDev:	; 4 bytes @ 0x1D
	global	___fladd@b
___fladd@b:	; 4 bytes @ 0x1D
	global	sqrtf@m
sqrtf@m:	; 4 bytes @ 0x1D
	ds   4
??_calculateThreshold:	; 1 bytes @ 0x21
	global	___fladd@a
___fladd@a:	; 4 bytes @ 0x21
	global	sqrtf@r
sqrtf@r:	; 4 bytes @ 0x21
	ds   4
??___fladd:	; 1 bytes @ 0x25
	global	sqrtf@ix
sqrtf@ix:	; 4 bytes @ 0x25
	ds   4
	global	___fladd@signs
___fladd@signs:	; 1 bytes @ 0x29
	ds   1
	global	___fladd@aexp
___fladd@aexp:	; 1 bytes @ 0x2A
	ds   1
	global	___fladd@bexp
___fladd@bexp:	; 1 bytes @ 0x2B
	ds   1
	global	___fladd@grs
___fladd@grs:	; 1 bytes @ 0x2C
	ds   1
	global	?_StandardDev
?_StandardDev:	; 4 bytes @ 0x2D
	global	StandardDev@average
StandardDev@average:	; 2 bytes @ 0x2D
	ds   4
??_StandardDev:	; 1 bytes @ 0x31
	ds   4
	global	StandardDev@razlika
StandardDev@razlika:	; 4 bytes @ 0x35
	ds   4
	global	StandardDev@variance
StandardDev@variance:	; 4 bytes @ 0x39
	ds   4
	global	StandardDev@i
StandardDev@i:	; 1 bytes @ 0x3D
	ds   1
??_main:	; 1 bytes @ 0x3E
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         3615
;!    Persistent  17
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     62      86
;!    BANK0           160      8      17
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15           22      0       0

;!
;!Pointer List with Targets:
;!
;!    ADC_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    EUSART1_ErrorHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> EUSART1_DefaultErrorHandler(), NULL(), 
;!
;!    EUSART1_FramingErrorHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> EUSART1_DefaultFramingErrorHandler(), NULL(), 
;!
;!    EUSART1_OverrunErrorHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> EUSART1_DefaultOverrunErrorHandler(), NULL(), 
;!
;!    EUSART1_SetErrorHandler@interruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> EUSART1_DefaultErrorHandler(), 
;!
;!    EUSART1_SetFramingErrorHandler@interruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> EUSART1_DefaultFramingErrorHandler(), 
;!
;!    EUSART1_SetOverrunErrorHandler@interruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> EUSART1_DefaultOverrunErrorHandler(), 
;!
;!    TMR0_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> TMR0_DefaultInterruptHandler(), NULL(), 
;!
;!    TMR0_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> TMR0_DefaultInterruptHandler(), 
;!
;!    TMR5_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> TMR5_DefaultInterruptHandler(), NULL(), 
;!
;!    TMR5_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> TMR5_DefaultInterruptHandler(), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_StandardDev
;!    _sampleSignal->_ADC_GetConversion
;!    _sampleSignal->___lwmod
;!    _calculateThreshold->___flmul
;!    _StandardDev->___fladd
;!    ___xxtofl->___lwmod
;!    ___fladd->___flmul
;!    _SYSTEM_Initialize->_TMR0_Initialize
;!    _SYSTEM_Initialize->_TMR5_Initialize
;!    _TMR5_Initialize->_TMR5_SetInterruptHandler
;!    _TMR0_Initialize->_TMR0_SetInterruptHandler
;!    _EUSART1_Initialize->_EUSART1_SetErrorHandler
;!    _EUSART1_Initialize->_EUSART1_SetFramingErrorHandler
;!    _EUSART1_Initialize->_EUSART1_SetOverrunErrorHandler
;!    _AveregeFilter->___lwmod
;!
;!Critical Paths under _INTERRUPT_InterruptManager in COMRAM
;!
;!    _TMR5_ISR->_TMR5_DefaultInterruptHandler
;!    _TMR5_ISR->_TMR5_WriteTimer
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _INTERRUPT_InterruptManager in BANK15
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                10    10      0   16733
;!                                              0 BANK0      8     8      0
;!                  _ADC_GetConversion
;!                      _AveregeFilter
;!                      _EUSART1_Write
;!                  _SYSTEM_Initialize
;!                        _StandardDev
;!                 _calculateThreshold
;!                       _sampleSignal
;! ---------------------------------------------------------------------------------
;! (1) _sampleSignal                                         2     2      0     837
;!                                              9 COMRAM     2     2      0
;!                  _ADC_GetConversion
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) _ADC_GetConversion                                    5     3      2      31
;!                                              4 COMRAM     5     3      2
;! ---------------------------------------------------------------------------------
;! (1) _calculateThreshold                                  10     6      4    2851
;!                                             29 COMRAM     4     0      4
;!                            ___flmul
;! ---------------------------------------------------------------------------------
;! (1) _StandardDev                                         17    13      4   11250
;!                                             45 COMRAM    17    13      4
;!                            ___fladd
;!                            ___fldiv
;!                            ___flmul
;!                            ___lwmod
;!                           ___xxtofl
;!                              _sqrtf
;! ---------------------------------------------------------------------------------
;! (2) _sqrtf                                               41    37      4    1157
;!                                              4 COMRAM    37    33      4
;! ---------------------------------------------------------------------------------
;! (2) ___xxtofl                                            14    10      4     656
;!                                              9 COMRAM    14    10      4
;!                            ___lwmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flmul                                             25    17      8    2693
;!                                              4 COMRAM    25    17      8
;! ---------------------------------------------------------------------------------
;! (2) ___fldiv                                             25    17      8    2183
;!                                              4 COMRAM    25    17      8
;! ---------------------------------------------------------------------------------
;! (2) ___fladd                                             16     8      8    3402
;!                                             29 COMRAM    16     8      8
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    0     0      0     605
;!                     _ADC_Initialize
;!                 _EUSART1_Initialize
;!               _INTERRUPT_Initialize
;!              _OSCILLATOR_Initialize
;!             _PIN_MANAGER_Initialize
;!                    _TMR0_Initialize
;!                    _TMR5_Initialize
;! ---------------------------------------------------------------------------------
;! (2) _TMR5_Initialize                                      2     2      0     121
;!                                              7 COMRAM     2     2      0
;!           _TMR5_SetInterruptHandler
;! ---------------------------------------------------------------------------------
;! (3) _TMR5_SetInterruptHandler                             3     0      3     121
;!                                              4 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _TMR0_Initialize                                      2     2      0     121
;!                                              7 COMRAM     2     2      0
;!           _TMR0_SetInterruptHandler
;! ---------------------------------------------------------------------------------
;! (3) _TMR0_SetInterruptHandler                             3     0      3     121
;!                                              4 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _PIN_MANAGER_Initialize                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _OSCILLATOR_Initialize                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _INTERRUPT_Initialize                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _EUSART1_Initialize                                   0     0      0     363
;!            _EUSART1_SetErrorHandler
;!     _EUSART1_SetFramingErrorHandler
;!     _EUSART1_SetOverrunErrorHandler
;! ---------------------------------------------------------------------------------
;! (3) _EUSART1_SetOverrunErrorHandler                       3     0      3     121
;!                                              4 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _EUSART1_SetFramingErrorHandler                       3     0      3     121
;!                                              4 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _EUSART1_SetErrorHandler                              3     0      3     121
;!                                              4 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _ADC_Initialize                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _EUSART1_Write                                        1     1      0      22
;!                                              4 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _AveregeFilter                                       11     9      2     908
;!                                              9 COMRAM    11     9      2
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     772
;!                                              4 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _INTERRUPT_InterruptManager                           2     2      0     240
;!                                              2 COMRAM     2     2      0
;!                           _TMR0_ISR
;!                           _TMR5_ISR
;! ---------------------------------------------------------------------------------
;! (5) _TMR5_ISR                                             0     0      0     240
;!                                NULL *
;!       _TMR5_DefaultInterruptHandler *
;!                    _TMR5_WriteTimer
;! ---------------------------------------------------------------------------------
;! (6) _TMR5_WriteTimer                                      2     0      2     240
;!                                              0 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (6) _TMR5_DefaultInterruptHandler                         2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (5) _TMR0_ISR                                             0     0      0       0
;!                                NULL *
;!       _TMR0_DefaultInterruptHandler *
;! ---------------------------------------------------------------------------------
;! (6) _TMR0_DefaultInterruptHandler                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) NULL(Fake)                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_GetConversion
;!   _AveregeFilter
;!     ___lwmod
;!   _EUSART1_Write
;!   _SYSTEM_Initialize
;!     _ADC_Initialize
;!     _EUSART1_Initialize
;!       _EUSART1_SetErrorHandler
;!       _EUSART1_SetFramingErrorHandler
;!       _EUSART1_SetOverrunErrorHandler
;!     _INTERRUPT_Initialize
;!     _OSCILLATOR_Initialize
;!     _PIN_MANAGER_Initialize
;!     _TMR0_Initialize
;!       _TMR0_SetInterruptHandler
;!     _TMR5_Initialize
;!       _TMR5_SetInterruptHandler
;!   _StandardDev
;!     ___fladd
;!       ___flmul (ARG)
;!     ___fldiv
;!     ___flmul
;!     ___lwmod
;!     ___xxtofl
;!       ___lwmod (ARG)
;!     _sqrtf
;!   _calculateThreshold
;!     ___flmul
;!   _sampleSignal
;!     _ADC_GetConversion
;!     ___lwmod
;!
;! _INTERRUPT_InterruptManager (ROOT)
;!   _TMR0_ISR
;!     NULL(Fake) *
;!     _TMR0_DefaultInterruptHandler *
;!   _TMR5_ISR
;!     NULL(Fake) *
;!     _TMR5_DefaultInterruptHandler *
;!     _TMR5_WriteTimer *
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             F15      0     E10      52       93.2%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK14          100      0       0      32        0.0%
;!BANK14             100      0       0      33        0.0%
;!BITBANK13          100      0       0      30        0.0%
;!BANK13             100      0       0      31        0.0%
;!BITBANK12          100      0       0      28        0.0%
;!BANK12             100      0       0      29        0.0%
;!BITBANK11          100      0       0      26        0.0%
;!BANK11             100      0       0      27        0.0%
;!BITBANK10          100      0       0      24        0.0%
;!BANK10             100      0       0      25        0.0%
;!BITBANK9           100      0       0      22        0.0%
;!BANK9              100      0       0      23        0.0%
;!BITBANK8           100      0       0      20        0.0%
;!BANK8              100      0       0      21        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      8      11       5       10.6%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     3E      56       1       91.5%
;!BITBIGSFRllh        39      0       0      48        0.0%
;!BITBIGSFRhlhh       1A      0       0      37        0.0%
;!BITBANK15           16      0       0      34        0.0%
;!BANK15              16      0       0      35        0.0%
;!BITBIGSFRlhllll     14      0       0      47        0.0%
;!BITBIGSFRhh          D      0       0      36        0.0%
;!BITBIGSFRllll        D      0       0      50        0.0%
;!BITBIGSFRlhhlll      C      0       0      42        0.0%
;!BITBIGSFRlhhlhh      B      0       0      39        0.0%
;!BITBIGSFRlhlllh      B      0       0      46        0.0%
;!BITBIGSFRlhhllh      9      0       0      41        0.0%
;!BITBIGSFRlhhlhl      5      0       0      40        0.0%
;!BITBIGSFRlllh        4      0       0      49        0.0%
;!BITBIGSFRlhhh        2      0       0      38        0.0%
;!BITBIGSFRlhhlll      2      0       0      43        0.0%
;!BITBIGSFRlhlhh       1      0       0      44        0.0%
;!BITBIGSFRlhlhll      1      0       0      45        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      67      51        0.0%
;!DATA                 0      0     E77       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 111 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  stdDev          4    0[BANK0 ] float 
;;  average         2    6[BANK0 ] unsigned short 
;;  threshold       2    0        unsigned short 
;;  value           2    4[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_ADC_GetConversion
;;		_AveregeFilter
;;		_EUSART1_Write
;;		_SYSTEM_Initialize
;;		_StandardDev
;;		_calculateThreshold
;;		_sampleSignal
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	111
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	111
	
_main:
;incstack = 0
	callstack 25
	line	114
	
l3671:
;main.c: 114:     SYSTEM_Initialize();
	call	_SYSTEM_Initialize	;wreg free
	line	121
	
l3673:
;main.c: 121:     (INTCONbits.GIE = 1);
	bsf	((c:4082))^0f00h,c,7	;volatile
	line	127
	
l3675:
;main.c: 127:     (INTCONbits.PEIE = 1);
	bsf	((c:4082))^0f00h,c,6	;volatile
	line	133
;main.c: 131:     uint16_t value;;main.c: 133:     while (1)
	
l438:
	line	135
;main.c: 134:     {;main.c: 135:         value = ADC_GetConversion(channel_AN0);
	movlw	(0)&0ffh
	
	call	_ADC_GetConversion
	movff	0+?_ADC_GetConversion,(main@value)
	movff	1+?_ADC_GetConversion,(main@value+1)
	line	137
	
l3677:
;main.c: 137:         sampleSignal();
	call	_sampleSignal	;wreg free
	line	138
	
l3679:
;main.c: 138:         uint16_t average = AveregeFilter();
	call	_AveregeFilter	;wreg free
	movff	0+?_AveregeFilter,(main@average)
	movff	1+?_AveregeFilter,(main@average+1)
	line	139
	
l3681:
;main.c: 139:         float stdDev = StandardDev(average);
	movff	(main@average),(c:StandardDev@average)
	movff	(main@average+1),(c:StandardDev@average+1)
	call	_StandardDev	;wreg free
	movff	0+?_StandardDev,(main@stdDev)
	movff	1+?_StandardDev,(main@stdDev+1)
	movff	2+?_StandardDev,(main@stdDev+2)
	movff	3+?_StandardDev,(main@stdDev+3)
	
	line	140
	
l3683:
	movff	(main@stdDev),(c:calculateThreshold@stdDev)
	movff	(main@stdDev+1),(c:calculateThreshold@stdDev+1)
	movff	(main@stdDev+2),(c:calculateThreshold@stdDev+2)
	movff	(main@stdDev+3),(c:calculateThreshold@stdDev+3)
	call	_calculateThreshold	;wreg free
	line	142
	
l3685:
;main.c: 142:         if (average > 1500) {
		movlw	221
	movlb	0	; () banked
	subwf	 ((main@average))&0ffh,w
	movlw	5
	subwfb	((main@average+1))&0ffh,w
	btfss	status,0
	goto	u3691
	goto	u3690

u3691:
	goto	l3689
u3690:
	line	143
	
l3687:; BSR set to: 0

;main.c: 143:             scaled_value=20;
	movlw	low(014h)
	movwf	((c:_scaled_value))^00h,c	;volatile
	line	145
;main.c: 145:         }
	goto	l3691
	line	147
	
l3689:; BSR set to: 0

;main.c: 147:             scaled_value=10;
	movlw	low(0Ah)
	movwf	((c:_scaled_value))^00h,c	;volatile
	line	151
	
l3691:; BSR set to: 0

;main.c: 151:         EUSART1_Write(0x03);
	movlw	(03h)&0ffh
	
	call	_EUSART1_Write
	line	152
	
l3693:
;main.c: 152:         EUSART1_Write((uint8_t)value);
	movlb	0	; () banked
	movf	((main@value))&0ffh,w
	
	call	_EUSART1_Write
	line	153
	
l3695:
;main.c: 153:         EUSART1_Write((uint8_t)(value>>8));
	movlb	0	; () banked
	movf	((main@value+1))&0ffh,w
	
	call	_EUSART1_Write
	line	155
	
l3697:
;main.c: 155:         EUSART1_Write((uint8_t)average);
	movlb	0	; () banked
	movf	((main@average))&0ffh,w
	
	call	_EUSART1_Write
	line	156
	
l3699:
;main.c: 156:         EUSART1_Write((uint8_t)(average>>8));
	movlb	0	; () banked
	movf	((main@average+1))&0ffh,w
	
	call	_EUSART1_Write
	line	159
	
l3701:
;main.c: 159:         EUSART1_Write(0xFC);
	movlw	(0FCh)&0ffh
	
	call	_EUSART1_Write
	goto	l438
	global	start
	goto	start
	callstack 0
	line	161
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_sampleSignal

;; *************** function _sampleSignal *****************
;; Defined at:
;;		line 62 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  sample          2    9[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_ADC_GetConversion
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	62
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	62
	
_sampleSignal:
;incstack = 0
	callstack 26
	line	64
	
l3613:
;main.c: 64:     uint16_t sample = ADC_GetConversion(channel_AN0);
	movlw	(0)&0ffh
	
	call	_ADC_GetConversion
	movff	0+?_ADC_GetConversion,(c:sampleSignal@sample)
	movff	1+?_ADC_GetConversion,(c:sampleSignal@sample+1)
	line	65
	
l3615:
;main.c: 65:     circularBuffer[bufferIndex] = sample;
	bcf	status,0
	rlcf	((c:_bufferIndex))^00h,c,w
	movwf	fsr2l
	rlcf	((c:_bufferIndex+1))^00h,c,w
	movwf	fsr2h
	movlw	low(_circularBuffer)
	addwf	fsr2l
	movlw	high(_circularBuffer)
	addwfc	fsr2h
	movff	(c:sampleSignal@sample),postinc2
	movff	(c:sampleSignal@sample+1),postdec2
	line	66
	
l3617:
;main.c: 66:     bufferIndex = (bufferIndex+1)%1800;
	movlw	low(01h)
	addwf	((c:_bufferIndex))^00h,c,w
	movwf	((c:___lwmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	((c:_bufferIndex+1))^00h,c,w
	movwf	1+((c:___lwmod@dividend))^00h,c
	movlw	high(0708h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0708h)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:_bufferIndex)
	movff	1+?___lwmod,(c:_bufferIndex+1)
	line	67
;main.c: 67:     while(!flag_tmr0);
	
l3619:
	movf	((c:_flag_tmr0))^00h,c,w	;volatile
	btfsc	status,2
	goto	u3651
	goto	u3650
u3651:
	goto	l3619
u3650:
	line	68
	
l3621:
;main.c: 68:     flag_tmr0 = 0;
	movlw	low(0)
	movwf	((c:_flag_tmr0))^00h,c	;volatile
	line	69
	
l417:
	return	;funcret
	callstack 0
GLOBAL	__end_of_sampleSignal
	__end_of_sampleSignal:
	signat	_sampleSignal,89
	global	_ADC_GetConversion

;; *************** function _ADC_GetConversion *****************
;; Defined at:
;;		line 108 in file "mcc_generated_files/adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     enum E6498
;; Auto vars:     Size  Location     Type
;;  channel         1    8[COMRAM] enum E6498
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sampleSignal
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/adc.c"
	line	108
global __ptext2
__ptext2:
psect	text2
	file	"mcc_generated_files/adc.c"
	line	108
	
_ADC_GetConversion:
;incstack = 0
	callstack 26
;ADC_GetConversion@channel stored from wreg
	movwf	((c:ADC_GetConversion@channel))^00h,c
	line	111
	
l2987:
;mcc_generated_files/adc.c: 108: adc_result_t ADC_GetConversion(adc_channel_t channel);mcc_generated_files/adc.c: 109: {;mcc_generated_files/adc.c: 111:     ADCON0bits.CHS = channel;
	movff	(c:ADC_GetConversion@channel),??_ADC_GetConversion+0+0
	rlncf	(??_ADC_GetConversion+0+0)^00h,c
	rlncf	(??_ADC_GetConversion+0+0)^00h,c
	movf	((c:4034))^0f00h,c,w	;volatile
	xorwf	(??_ADC_GetConversion+0+0)^00h,c,w
	andlw	not (((1<<5)-1)<<2)
	xorwf	(??_ADC_GetConversion+0+0)^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	114
	
l2989:
;mcc_generated_files/adc.c: 114:     ADCON0bits.ADON = 1;
	bsf	((c:4034))^0f00h,c,0	;volatile
	line	118
	
l2991:
;mcc_generated_files/adc.c: 118:     ADCON0bits.GO_nDONE = 1;
	bsf	((c:4034))^0f00h,c,1	;volatile
	line	123
;mcc_generated_files/adc.c: 122:     {;mcc_generated_files/adc.c: 123:     }
	
l235:
	line	121
;mcc_generated_files/adc.c: 121:     while (ADCON0bits.GO_nDONE)
	btfsc	((c:4034))^0f00h,c,1	;volatile
	goto	u2551
	goto	u2550
u2551:
	goto	l235
u2550:
	line	126
	
l2993:
;mcc_generated_files/adc.c: 126:     return ((adc_result_t)((ADRESH << 8) + ADRESL));
	movf	((c:4036))^0f00h,c,w	;volatile
	movwf	(??_ADC_GetConversion+0+0+1)^00h,c
	clrf	(??_ADC_GetConversion+0+0)^00h,c
	movf	((c:4035))^0f00h,c,w	;volatile
	addwf	(??_ADC_GetConversion+0+0)^00h,c,w
	movwf	((c:?_ADC_GetConversion))^00h,c
	movlw	0
	addwfc	(??_ADC_GetConversion+0+1)^00h,c,w
	movwf	1+((c:?_ADC_GetConversion))^00h,c
	line	127
	
l238:
	return	;funcret
	callstack 0
GLOBAL	__end_of_ADC_GetConversion
	__end_of_ADC_GetConversion:
	signat	_ADC_GetConversion,4218
	global	_calculateThreshold

;; *************** function _calculateThreshold *****************
;; Defined at:
;;		line 92 in file "main.c"
;; Parameters:    Size  Location     Type
;;  stdDev          4   29[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  thresholdRat    4    0        float 
;;  threshold       2    0        unsigned short 
;; Return value:  Size  Location     Type
;;                  2   29[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___flmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	92
global __ptext3
__ptext3:
psect	text3
	file	"main.c"
	line	92
	
_calculateThreshold:
;incstack = 0
	callstack 26
	line	93
	
l3657:
	movff	(c:calculateThreshold@stdDev),(c:___flmul@b)
	movff	(c:calculateThreshold@stdDev+1),(c:___flmul@b+1)
	movff	(c:calculateThreshold@stdDev+2),(c:___flmul@b+2)
	movff	(c:calculateThreshold@stdDev+3),(c:___flmul@b+3)
	movlw	low(normalize32(0x3f800000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x3f800000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x3f800000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x3f800000))
	movwf	((c:___flmul@a+3))^00h,c
	call	___flmul	;wreg free
	line	94
	
l3659:
	line	95
	
l3661:
;main.c: 95:     return (uint16_t)(threshold);
	movlw	high(05DCh)
	movwf	((c:?_calculateThreshold+1))^00h,c
	movlw	low(05DCh)
	movwf	((c:?_calculateThreshold))^00h,c
	line	104
	
l430:
	return	;funcret
	callstack 0
GLOBAL	__end_of_calculateThreshold
	__end_of_calculateThreshold:
	signat	_calculateThreshold,4218
	global	_StandardDev

;; *************** function _StandardDev *****************
;; Defined at:
;;		line 80 in file "main.c"
;; Parameters:    Size  Location     Type
;;  average         2   45[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  razlika         4   53[COMRAM] float 
;;  i               1   61[COMRAM] unsigned char 
;;  variance        4   57[COMRAM] float 
;; Return value:  Size  Location     Type
;;                  4   45[COMRAM] float 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___fladd
;;		___fldiv
;;		___flmul
;;		___lwmod
;;		___xxtofl
;;		_sqrtf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	line	80
global __ptext4
__ptext4:
psect	text4
	file	"main.c"
	line	80
	
_StandardDev:
;incstack = 0
	callstack 26
	line	81
	
l3639:
;main.c: 81:     float variance = 0;
	movlw	low(normalize32(0x0))
	movwf	((c:StandardDev@variance))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:StandardDev@variance+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:StandardDev@variance+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:StandardDev@variance+3))^00h,c
	line	83
;main.c: 83:     for(uint8_t i= 0; i<128; i++){
	movlw	low(0)
	movwf	((c:StandardDev@i))^00h,c
	line	84
	
l3645:
;main.c: 84:         float razlika = circularBuffer[(bufferIndex-i+1800)%1800]-average;
	movlw	high(0708h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0708h)
	movwf	((c:___lwmod@divisor))^00h,c
	movf	((c:StandardDev@i))^00h,c,w
	subwf	((c:_bufferIndex))^00h,c,w
	movwf	(??_StandardDev+0+0)^00h,c
	movlw	0
	subwfb	((c:_bufferIndex+1))^00h,c,w
	movwf	(??_StandardDev+0+0+1)^00h,c
	movlw	low(0708h)
	addwf	(??_StandardDev+0+0)^00h,c,w
	movwf	((c:___lwmod@dividend))^00h,c
	movlw	high(0708h)
	addwfc	(??_StandardDev+0+1)^00h,c,w
	movwf	1+((c:___lwmod@dividend))^00h,c
	call	___lwmod	;wreg free
	bcf	status,0
	rlcf	(0+?___lwmod)^00h,c,f
	rlcf	(1+?___lwmod)^00h,c,f
	movlw	low(_circularBuffer)
	addwf	(0+?___lwmod)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_circularBuffer)
	addwfc	(1+?___lwmod)^00h,c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_StandardDev+2+0
	movff	postdec2,??_StandardDev+2+0+1
	movf	((c:StandardDev@average))^00h,c,w
	subwf	(??_StandardDev+2+0)^00h,c
	movf	((c:StandardDev@average+1))^00h,c,w
	subwfb	(??_StandardDev+2+1)^00h,c
	movff	??_StandardDev+2+0,(c:___xxtofl@val)
	movff	??_StandardDev+2+1,(c:___xxtofl@val+1)
	clrf	((c:___xxtofl@val+2))^00h,c
	clrf	((c:___xxtofl@val+3))^00h,c
	movlw	(0)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(c:StandardDev@razlika)
	movff	1+?___xxtofl,(c:StandardDev@razlika+1)
	movff	2+?___xxtofl,(c:StandardDev@razlika+2)
	movff	3+?___xxtofl,(c:StandardDev@razlika+3)
	
	line	85
	
l3647:
;main.c: 85:         variance += razlika*razlika;
	movff	(c:StandardDev@variance),(c:___fladd@b)
	movff	(c:StandardDev@variance+1),(c:___fladd@b+1)
	movff	(c:StandardDev@variance+2),(c:___fladd@b+2)
	movff	(c:StandardDev@variance+3),(c:___fladd@b+3)
	movff	(c:StandardDev@razlika),(c:___flmul@a)
	movff	(c:StandardDev@razlika+1),(c:___flmul@a+1)
	movff	(c:StandardDev@razlika+2),(c:___flmul@a+2)
	movff	(c:StandardDev@razlika+3),(c:___flmul@a+3)
	movff	(c:StandardDev@razlika),(c:___flmul@b)
	movff	(c:StandardDev@razlika+1),(c:___flmul@b+1)
	movff	(c:StandardDev@razlika+2),(c:___flmul@b+2)
	movff	(c:StandardDev@razlika+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@a)
	movff	1+?___flmul,(c:___fladd@a+1)
	movff	2+?___flmul,(c:___fladd@a+2)
	movff	3+?___flmul,(c:___fladd@a+3)
	
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:StandardDev@variance)
	movff	1+?___fladd,(c:StandardDev@variance+1)
	movff	2+?___fladd,(c:StandardDev@variance+2)
	movff	3+?___fladd,(c:StandardDev@variance+3)
	
	line	87
	
l3649:
;main.c: 87:     }
	incf	((c:StandardDev@i))^00h,c
	
l3651:
		movlw	080h-1
	cpfsgt	((c:StandardDev@i))^00h,c
	goto	u3681
	goto	u3680

u3681:
	goto	l3645
u3680:
	line	88
	
l3653:
;main.c: 88:     variance /= 128;
	movff	(c:StandardDev@variance),(c:___fldiv@b)
	movff	(c:StandardDev@variance+1),(c:___fldiv@b+1)
	movff	(c:StandardDev@variance+2),(c:___fldiv@b+2)
	movff	(c:StandardDev@variance+3),(c:___fldiv@b+3)
	movlw	low(normalize32(0x43000000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x43000000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x43000000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x43000000))
	movwf	((c:___fldiv@a+3))^00h,c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:StandardDev@variance)
	movff	1+?___fldiv,(c:StandardDev@variance+1)
	movff	2+?___fldiv,(c:StandardDev@variance+2)
	movff	3+?___fldiv,(c:StandardDev@variance+3)
	
	line	89
;main.c: 89:     return sqrtf(variance);
	movff	(c:StandardDev@variance),(c:sqrtf@x)
	movff	(c:StandardDev@variance+1),(c:sqrtf@x+1)
	movff	(c:StandardDev@variance+2),(c:sqrtf@x+2)
	movff	(c:StandardDev@variance+3),(c:sqrtf@x+3)
	call	_sqrtf	;wreg free
	movff	0+?_sqrtf,(c:?_StandardDev)
	movff	1+?_sqrtf,(c:?_StandardDev+1)
	movff	2+?_sqrtf,(c:?_StandardDev+2)
	movff	3+?_sqrtf,(c:?_StandardDev+3)
	
	line	91
	
l427:
	return	;funcret
	callstack 0
GLOBAL	__end_of_StandardDev
	__end_of_StandardDev:
	signat	_StandardDev,4220
	global	_sqrtf

;; *************** function _sqrtf *****************
;; Defined at:
;;		line 24 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sqrtf.c"
;; Parameters:    Size  Location     Type
;;  x               4    4[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  ix              4   37[COMRAM] struct .
;;  r               4   33[COMRAM] unsigned long 
;;  m               4   29[COMRAM] long 
;;  t               4   25[COMRAM] long 
;;  q               4   21[COMRAM] long 
;;  i               4   17[COMRAM] long 
;;  s               4   13[COMRAM] long 
;;  z               4    0        float 
;; Return value:  Size  Location     Type
;;                  4    4[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        28       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        37       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       37 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_StandardDev
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sqrtf.c"
	line	24
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sqrtf.c"
	line	24
	
_sqrtf:
;incstack = 0
	callstack 26
	line	31
	
l2997:
	movff	(c:sqrtf@x),(c:sqrtf@ix)
	movff	(c:sqrtf@x+1),(c:sqrtf@ix+1)
	movff	(c:sqrtf@x+2),(c:sqrtf@ix+2)
	movff	(c:sqrtf@x+3),(c:sqrtf@ix+3)
	line	34
	
l2999:
	movlw	0
	andwf	((c:sqrtf@ix))^00h,c,w
	movwf	(??_sqrtf+0+0)^00h,c
	movlw	0
	andwf	((c:sqrtf@ix+1))^00h,c,w
	movwf	1+(??_sqrtf+0+0)^00h,c
	
	movlw	080h
	andwf	((c:sqrtf@ix+2))^00h,c,w
	movwf	2+(??_sqrtf+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:sqrtf@ix+3))^00h,c,w
	movwf	3+(??_sqrtf+0+0)^00h,c
		movlw	128
	xorwf	(??_sqrtf+0+2)^00h,c,w
	bnz	u2561
	movlw	127
	xorwf	(??_sqrtf+0+3)^00h,c,w
iorwf	(??_sqrtf+0+0)^00h,c,w
iorwf	(??_sqrtf+0+1)^00h,c,w
	btfss	status,2
	goto	u2561
	goto	u2560

u2561:
	goto	l3011
u2560:
	line	36
	
l3001:
	movlw	0FFh
	andwf	((c:sqrtf@ix))^00h,c,w
	movwf	(??_sqrtf+0+0)^00h,c
	movlw	0FFh
	andwf	((c:sqrtf@ix+1))^00h,c,w
	movwf	1+(??_sqrtf+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:sqrtf@ix+2))^00h,c,w
	movwf	2+(??_sqrtf+0+0)^00h,c
	
	movlw	0
	andwf	((c:sqrtf@ix+3))^00h,c,w
	movwf	3+(??_sqrtf+0+0)^00h,c
	movf	(??_sqrtf+0+0)^00h,c,w
iorwf	(??_sqrtf+0+1)^00h,c,w
iorwf	(??_sqrtf+0+2)^00h,c,w
iorwf	(??_sqrtf+0+3)^00h,c,w
	btfss	status,2
	goto	u2571
	goto	u2570

u2571:
	goto	l3005
u2570:
	
l3003:
	btfsc	((c:sqrtf@ix+3))^00h,c,7
	goto	u2580
	goto	u2581

u2581:
	goto	l3007
u2580:
	line	37
	
l3005:
	movlw	0FFh
	iorwf	((c:sqrtf@ix))^00h,c
	movlw	0FFh
	iorwf	((c:sqrtf@ix+1))^00h,c
	movlw	07Fh
	iorwf	((c:sqrtf@ix+2))^00h,c
	movlw	0
	iorwf	((c:sqrtf@ix+3))^00h,c
	line	39
	
l3007:
	movff	(c:sqrtf@ix),(c:?_sqrtf)
	movff	(c:sqrtf@ix+1),(c:?_sqrtf+1)
	movff	(c:sqrtf@ix+2),(c:?_sqrtf+2)
	movff	(c:sqrtf@ix+3),(c:?_sqrtf+3)
	goto	l1126
	line	43
	
l3011:
	btfsc	((c:sqrtf@ix+3))^00h,c,7
	goto	u2590
	movf	((c:sqrtf@ix+3))^00h,c,w
	iorwf	((c:sqrtf@ix+2))^00h,c,w
	iorwf	((c:sqrtf@ix+1))^00h,c,w
	bnz	u2591
	decf	((c:sqrtf@ix))^00h,c,w
	btfsc	status,0
	goto	u2591
	goto	u2590

u2591:
	goto	l3027
u2590:
	line	44
	
l3013:
	movlw	0FFh
	andwf	((c:sqrtf@ix))^00h,c,w
	movwf	(??_sqrtf+0+0)^00h,c
	movlw	0FFh
	andwf	((c:sqrtf@ix+1))^00h,c,w
	movwf	1+(??_sqrtf+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:sqrtf@ix+2))^00h,c,w
	movwf	2+(??_sqrtf+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:sqrtf@ix+3))^00h,c,w
	movwf	3+(??_sqrtf+0+0)^00h,c
	movf	(??_sqrtf+0+0)^00h,c,w
iorwf	(??_sqrtf+0+1)^00h,c,w
iorwf	(??_sqrtf+0+2)^00h,c,w
iorwf	(??_sqrtf+0+3)^00h,c,w
	btfss	status,2
	goto	u2601
	goto	u2600

u2601:
	goto	l3019
u2600:
	line	46
	
l3015:
	movlw	low(normalize32(0x0))
	movwf	((c:?_sqrtf))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?_sqrtf+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?_sqrtf+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?_sqrtf+3))^00h,c
	goto	l1126
	line	48
	
l3019:
	btfsc	((c:sqrtf@ix+3))^00h,c,7
	goto	u2610
	goto	u2611

u2611:
	goto	l3027
u2610:
	line	49
	
l3021:
	movlw	high(021h)
	movwf	((c:_errno+1))^00h,c
	movlw	low(021h)
	movwf	((c:_errno))^00h,c
	line	50
	movlw	low(07FFFFFFFh)
	movwf	((c:sqrtf@ix))^00h,c
	movlw	high(07FFFFFFFh)
	movwf	((c:sqrtf@ix+1))^00h,c
	movlw	low highword(07FFFFFFFh)
	movwf	((c:sqrtf@ix+2))^00h,c
	movlw	high highword(07FFFFFFFh)
	movwf	((c:sqrtf@ix+3))^00h,c
	goto	l3007
	line	55
	
l3027:
	movlw	(017h)&0ffh
	movwf	(??_sqrtf+0+0)^00h,c
	movff	(c:sqrtf@ix),??_sqrtf+1+0
	movff	(c:sqrtf@ix+1),??_sqrtf+1+0+1
	movff	(c:sqrtf@ix+2),??_sqrtf+1+0+2
	movff	(c:sqrtf@ix+3),??_sqrtf+1+0+3
u2625:
	tstfsz	((??_sqrtf+0+0))^00h,c
	goto	u2626
	goto	u2627
	u2626:
	rlcf	(??_sqrtf+1+3)^00h,c,w
	rrcf	(??_sqrtf+1+3)^00h,c
	rrcf	(??_sqrtf+1+2)^00h,c
	rrcf	(??_sqrtf+1+1)^00h,c
	rrcf	(??_sqrtf+1+0)^00h,c
	decfsz	((??_sqrtf+0+0))^00h,c
	goto	u2625
	u2627:
	
	movff	??_sqrtf+1+0,(c:sqrtf@m)
	movff	??_sqrtf+1+1,(c:sqrtf@m+1)
	movff	??_sqrtf+1+2,(c:sqrtf@m+2)
	movff	??_sqrtf+1+3,(c:sqrtf@m+3)
	line	56
	movf	((c:sqrtf@m))^00h,c,w
iorwf	((c:sqrtf@m+1))^00h,c,w
iorwf	((c:sqrtf@m+2))^00h,c,w
iorwf	((c:sqrtf@m+3))^00h,c,w
	btfss	status,2
	goto	u2631
	goto	u2630

u2631:
	goto	l1130
u2630:
	line	57
	
l3029:
	movlw	low(0)
	movwf	((c:sqrtf@i))^00h,c
	movlw	high(0)
	movwf	((c:sqrtf@i+1))^00h,c
	movlw	low highword(0)
	movwf	((c:sqrtf@i+2))^00h,c
	movlw	high highword(0)
	movwf	((c:sqrtf@i+3))^00h,c
	goto	l3035
	line	58
	
l3031:
	bcf	status,0
	rlcf	((c:sqrtf@ix))^00h,c
	rlcf	((c:sqrtf@ix+1))^00h,c
	rlcf	((c:sqrtf@ix+2))^00h,c
	rlcf	((c:sqrtf@ix+3))^00h,c
	
l3033:
	movlw	low(01h)
	addwf	((c:sqrtf@i))^00h,c
	movlw	0
	addwfc	((c:sqrtf@i+1))^00h,c
	addwfc	((c:sqrtf@i+2))^00h,c
	addwfc	((c:sqrtf@i+3))^00h,c
	
l3035:
	
	btfss	((c:sqrtf@ix+2))^00h,c,(23)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l3031
u2640:
	line	59
	
l3037:
	movlw	0FFh
	addwf	((c:sqrtf@i))^00h,c,w
	movwf	(??_sqrtf+0+0)^00h,c
	movlw	0FFh
	addwfc	((c:sqrtf@i+1))^00h,c,w
	movwf	1+(??_sqrtf+0+0)^00h,c
	
	movlw	0FFh
	addwfc	((c:sqrtf@i+2))^00h,c,w
	movwf	2+(??_sqrtf+0+0)^00h,c
	
	movlw	0FFh
	addwfc	((c:sqrtf@i+3))^00h,c,w
	movwf	3+(??_sqrtf+0+0)^00h,c
	movf	(??_sqrtf+0+0)^00h,c,w
	subwf	((c:sqrtf@m))^00h,c
	movf	(??_sqrtf+0+1)^00h,c,w
	subwfb	((c:sqrtf@m+1))^00h,c
	movf	(??_sqrtf+0+2)^00h,c,w
	subwfb	((c:sqrtf@m+2))^00h,c
	movf	(??_sqrtf+0+3)^00h,c,w
	subwfb	((c:sqrtf@m+3))^00h,c

	line	60
	
l1130:
	line	61
	movlw	081h
	addwf	((c:sqrtf@m))^00h,c
	movlw	0FFh
	addwfc	((c:sqrtf@m+1))^00h,c
	movlw	0FFh
	addwfc	((c:sqrtf@m+2))^00h,c
	movlw	0FFh
	addwfc	((c:sqrtf@m+3))^00h,c
	line	62
	movlw	0FFh
	andwf	((c:sqrtf@ix))^00h,c,w
	movwf	(??_sqrtf+0+0)^00h,c
	movlw	0FFh
	andwf	((c:sqrtf@ix+1))^00h,c,w
	movwf	1+(??_sqrtf+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:sqrtf@ix+2))^00h,c,w
	movwf	2+(??_sqrtf+0+0)^00h,c
	
	movlw	0
	andwf	((c:sqrtf@ix+3))^00h,c,w
	movwf	3+(??_sqrtf+0+0)^00h,c
	movlw	0
	iorwf	(??_sqrtf+0+0)^00h,c,w
	movwf	((c:sqrtf@ix))^00h,c
	movlw	0
	iorwf	(??_sqrtf+0+1)^00h,c,w
	movwf	1+((c:sqrtf@ix))^00h,c
	
	movlw	080h
	iorwf	(??_sqrtf+0+2)^00h,c,w
	movwf	2+((c:sqrtf@ix))^00h,c
	
	movlw	0
	iorwf	(??_sqrtf+0+3)^00h,c,w
	movwf	3+((c:sqrtf@ix))^00h,c
	line	63
	
l3039:
	
	btfss	((c:sqrtf@m))^00h,c,(0)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l1134
u2650:
	line	64
	
l3041:
	movf	((c:sqrtf@ix))^00h,c,w
	addwf	((c:sqrtf@ix))^00h,c
	movf	((c:sqrtf@ix+1))^00h,c,w
	addwfc	((c:sqrtf@ix+1))^00h,c
	movf	((c:sqrtf@ix+2))^00h,c,w
	addwfc	((c:sqrtf@ix+2))^00h,c
	movf	((c:sqrtf@ix+3))^00h,c,w
	addwfc	((c:sqrtf@ix+3))^00h,c
	
l1134:
	line	65
	rlcf	((c:sqrtf@m+3))^00h,c,w
	rrcf	((c:sqrtf@m+3))^00h,c
	rrcf	((c:sqrtf@m+2))^00h,c
	rrcf	((c:sqrtf@m+1))^00h,c
	rrcf	((c:sqrtf@m))^00h,c
	line	68
	movf	((c:sqrtf@ix))^00h,c,w
	addwf	((c:sqrtf@ix))^00h,c
	movf	((c:sqrtf@ix+1))^00h,c,w
	addwfc	((c:sqrtf@ix+1))^00h,c
	movf	((c:sqrtf@ix+2))^00h,c,w
	addwfc	((c:sqrtf@ix+2))^00h,c
	movf	((c:sqrtf@ix+3))^00h,c,w
	addwfc	((c:sqrtf@ix+3))^00h,c
	line	69
	
l3043:
	movlw	low(0)
	movwf	((c:sqrtf@s))^00h,c
	movlw	high(0)
	movwf	((c:sqrtf@s+1))^00h,c
	movlw	low highword(0)
	movwf	((c:sqrtf@s+2))^00h,c
	movlw	high highword(0)
	movwf	((c:sqrtf@s+3))^00h,c
	movff	(c:sqrtf@s),(c:sqrtf@q)
	movff	(c:sqrtf@s+1),(c:sqrtf@q+1)
	movff	(c:sqrtf@s+2),(c:sqrtf@q+2)
	movff	(c:sqrtf@s+3),(c:sqrtf@q+3)
	line	70
	
l3045:
	movlw	low(01000000h)
	movwf	((c:sqrtf@r))^00h,c
	movlw	high(01000000h)
	movwf	((c:sqrtf@r+1))^00h,c
	movlw	low highword(01000000h)
	movwf	((c:sqrtf@r+2))^00h,c
	movlw	high highword(01000000h)
	movwf	((c:sqrtf@r+3))^00h,c
	line	72
	goto	l3053
	line	73
	
l3047:
	movf	((c:sqrtf@s))^00h,c,w
	addwf	((c:sqrtf@r))^00h,c,w
	movwf	((c:sqrtf@t))^00h,c
	movf	((c:sqrtf@s+1))^00h,c,w
	addwfc	((c:sqrtf@r+1))^00h,c,w
	movwf	1+((c:sqrtf@t))^00h,c
	
	movf	((c:sqrtf@s+2))^00h,c,w
	addwfc	((c:sqrtf@r+2))^00h,c,w
	movwf	2+((c:sqrtf@t))^00h,c
	
	movf	((c:sqrtf@s+3))^00h,c,w
	addwfc	((c:sqrtf@r+3))^00h,c,w
	movwf	3+((c:sqrtf@t))^00h,c
	line	74
		movf	((c:sqrtf@t))^00h,c,w
	subwf	((c:sqrtf@ix))^00h,c,w
	movf	((c:sqrtf@t+1))^00h,c,w
	subwfb	((c:sqrtf@ix+1))^00h,c,w
	movf	((c:sqrtf@t+2))^00h,c,w
	subwfb	((c:sqrtf@ix+2))^00h,c,w
	movf	((c:sqrtf@ix+3))^00h,c,w
	xorlw	80h
	movwf	(??_sqrtf+0+0)^00h,c
	movf	((c:sqrtf@t+3))^00h,c,w
	xorlw	80h
	subwfb	(??_sqrtf+0+0)^00h,c,w
	btfss	status,0
	goto	u2661
	goto	u2660

u2661:
	goto	l1137
u2660:
	line	75
	
l3049:
	movf	((c:sqrtf@t))^00h,c,w
	addwf	((c:sqrtf@r))^00h,c,w
	movwf	((c:sqrtf@s))^00h,c
	movf	((c:sqrtf@t+1))^00h,c,w
	addwfc	((c:sqrtf@r+1))^00h,c,w
	movwf	1+((c:sqrtf@s))^00h,c
	
	movf	((c:sqrtf@t+2))^00h,c,w
	addwfc	((c:sqrtf@r+2))^00h,c,w
	movwf	2+((c:sqrtf@s))^00h,c
	
	movf	((c:sqrtf@t+3))^00h,c,w
	addwfc	((c:sqrtf@r+3))^00h,c,w
	movwf	3+((c:sqrtf@s))^00h,c
	line	76
	movf	((c:sqrtf@t))^00h,c,w
	subwf	((c:sqrtf@ix))^00h,c
	movf	((c:sqrtf@t+1))^00h,c,w
	subwfb	((c:sqrtf@ix+1))^00h,c
	movf	((c:sqrtf@t+2))^00h,c,w
	subwfb	((c:sqrtf@ix+2))^00h,c
	movf	((c:sqrtf@t+3))^00h,c,w
	subwfb	((c:sqrtf@ix+3))^00h,c
	line	77
	movf	((c:sqrtf@r))^00h,c,w
	addwf	((c:sqrtf@q))^00h,c
	movf	((c:sqrtf@r+1))^00h,c,w
	addwfc	((c:sqrtf@q+1))^00h,c
	movf	((c:sqrtf@r+2))^00h,c,w
	addwfc	((c:sqrtf@q+2))^00h,c
	movf	((c:sqrtf@r+3))^00h,c,w
	addwfc	((c:sqrtf@q+3))^00h,c
	line	78
	
l1137:
	line	79
	movf	((c:sqrtf@ix))^00h,c,w
	addwf	((c:sqrtf@ix))^00h,c
	movf	((c:sqrtf@ix+1))^00h,c,w
	addwfc	((c:sqrtf@ix+1))^00h,c
	movf	((c:sqrtf@ix+2))^00h,c,w
	addwfc	((c:sqrtf@ix+2))^00h,c
	movf	((c:sqrtf@ix+3))^00h,c,w
	addwfc	((c:sqrtf@ix+3))^00h,c
	line	80
	
l3051:
	bcf	status,0
	rrcf	((c:sqrtf@r+3))^00h,c
	rrcf	((c:sqrtf@r+2))^00h,c
	rrcf	((c:sqrtf@r+1))^00h,c
	rrcf	((c:sqrtf@r))^00h,c
	line	72
	
l3053:
	movf	((c:sqrtf@r))^00h,c,w
iorwf	((c:sqrtf@r+1))^00h,c,w
iorwf	((c:sqrtf@r+2))^00h,c,w
iorwf	((c:sqrtf@r+3))^00h,c,w
	btfss	status,2
	goto	u2671
	goto	u2670

u2671:
	goto	l3047
u2670:
	line	84
	
l3055:
	movf	((c:sqrtf@ix))^00h,c,w
iorwf	((c:sqrtf@ix+1))^00h,c,w
iorwf	((c:sqrtf@ix+2))^00h,c,w
iorwf	((c:sqrtf@ix+3))^00h,c,w
	btfsc	status,2
	goto	u2681
	goto	u2680

u2681:
	goto	l1139
u2680:
	line	96
	
l3057:
	movlw	01h
	andwf	((c:sqrtf@q))^00h,c,w
	movwf	(??_sqrtf+0+0)^00h,c
	movlw	0
	andwf	((c:sqrtf@q+1))^00h,c,w
	movwf	1+(??_sqrtf+0+0)^00h,c
	
	movlw	0
	andwf	((c:sqrtf@q+2))^00h,c,w
	movwf	2+(??_sqrtf+0+0)^00h,c
	
	movlw	0
	andwf	((c:sqrtf@q+3))^00h,c,w
	movwf	3+(??_sqrtf+0+0)^00h,c
	movf	(??_sqrtf+0+0)^00h,c,w
	addwf	((c:sqrtf@q))^00h,c
	movf	(??_sqrtf+0+1)^00h,c,w
	addwfc	((c:sqrtf@q+1))^00h,c
	movf	(??_sqrtf+0+2)^00h,c,w
	addwfc	((c:sqrtf@q+2))^00h,c
	movf	(??_sqrtf+0+3)^00h,c,w
	addwfc	((c:sqrtf@q+3))^00h,c

	line	98
	
l1139:
	line	99
	movff	(c:sqrtf@q),??_sqrtf+0+0
	movff	(c:sqrtf@q+1),??_sqrtf+0+0+1
	movff	(c:sqrtf@q+2),??_sqrtf+0+0+2
	movff	(c:sqrtf@q+3),??_sqrtf+0+0+3
	rlcf	(??_sqrtf+0+3)^00h,c,w
	rrcf	(??_sqrtf+0+3)^00h,c
	rrcf	(??_sqrtf+0+2)^00h,c
	rrcf	(??_sqrtf+0+1)^00h,c
	rrcf	(??_sqrtf+0+0)^00h,c
	movlw	0
	addwf	(??_sqrtf+0+0)^00h,c,w
	movwf	((c:sqrtf@ix))^00h,c
	movlw	0
	addwfc	(??_sqrtf+0+1)^00h,c,w
	movwf	1+((c:sqrtf@ix))^00h,c
	
	movlw	0
	addwfc	(??_sqrtf+0+2)^00h,c,w
	movwf	2+((c:sqrtf@ix))^00h,c
	
	movlw	03Fh
	addwfc	(??_sqrtf+0+3)^00h,c,w
	movwf	3+((c:sqrtf@ix))^00h,c
	line	100
	movff	(c:sqrtf@m),??_sqrtf+0+0
	movff	(c:sqrtf@m+1),??_sqrtf+0+0+1
	movff	(c:sqrtf@m+2),??_sqrtf+0+0+2
	movff	(c:sqrtf@m+3),??_sqrtf+0+0+3
	movlw	017h
u2695:
	bcf	status,0
	rlcf	(??_sqrtf+0+0)^00h,c
	rlcf	(??_sqrtf+0+1)^00h,c
	rlcf	(??_sqrtf+0+2)^00h,c
	rlcf	(??_sqrtf+0+3)^00h,c
	decfsz	wreg
	goto	u2695
	movf	(??_sqrtf+0+0)^00h,c,w
	addwf	((c:sqrtf@ix))^00h,c
	movf	(??_sqrtf+0+1)^00h,c,w
	addwfc	((c:sqrtf@ix+1))^00h,c
	movf	(??_sqrtf+0+2)^00h,c,w
	addwfc	((c:sqrtf@ix+2))^00h,c
	movf	(??_sqrtf+0+3)^00h,c,w
	addwfc	((c:sqrtf@ix+3))^00h,c

	goto	l3007
	line	102
	
l1126:
	return	;funcret
	callstack 0
GLOBAL	__end_of_sqrtf
	__end_of_sqrtf:
	signat	_sqrtf,4220
	global	___xxtofl

;; *************** function ___xxtofl *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\xxtofl.c"
;; Parameters:    Size  Location     Type
;;  sign            1    wreg     unsigned char 
;;  val             4    9[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   17[COMRAM] unsigned char 
;;  arg             4   19[COMRAM] unsigned long 
;;  exp             1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    9[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_StandardDev
;;		_EMGServoVrednosti
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\xxtofl.c"
	line	10
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\xxtofl.c"
	line	10
	
___xxtofl:
;incstack = 0
	callstack 26
;___xxtofl@sign stored from wreg
	movwf	((c:___xxtofl@sign))^00h,c
	line	15
	
l3549:
	movf	((c:___xxtofl@sign))^00h,c,w
	btfsc	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l1101
u3540:
	
l3551:
	btfsc	((c:___xxtofl@val+3))^00h,c,7
	goto	u3550
	goto	u3551

u3551:
	goto	l1101
u3550:
	line	16
	
l3553:
	movff	(c:___xxtofl@val),??___xxtofl+0+0
	movff	(c:___xxtofl@val+1),??___xxtofl+0+0+1
	movff	(c:___xxtofl@val+2),??___xxtofl+0+0+2
	movff	(c:___xxtofl@val+3),??___xxtofl+0+0+3
	comf	(??___xxtofl+0+0)^00h,c
	comf	(??___xxtofl+0+1)^00h,c
	comf	(??___xxtofl+0+2)^00h,c
	comf	(??___xxtofl+0+3)^00h,c
	incf	(??___xxtofl+0+0)^00h,c
	movlw	0
	addwfc	(??___xxtofl+0+1)^00h,c
	addwfc	(??___xxtofl+0+2)^00h,c
	addwfc	(??___xxtofl+0+3)^00h,c
	movff	??___xxtofl+0+0,(c:___xxtofl@arg)
	movff	??___xxtofl+0+1,(c:___xxtofl@arg+1)
	movff	??___xxtofl+0+2,(c:___xxtofl@arg+2)
	movff	??___xxtofl+0+3,(c:___xxtofl@arg+3)
	line	17
	goto	l3555
	line	18
	
l1101:
	line	19
	movff	(c:___xxtofl@val),(c:___xxtofl@arg)
	movff	(c:___xxtofl@val+1),(c:___xxtofl@arg+1)
	movff	(c:___xxtofl@val+2),(c:___xxtofl@arg+2)
	movff	(c:___xxtofl@val+3),(c:___xxtofl@arg+3)
	line	21
	
l3555:
	movf	((c:___xxtofl@val))^00h,c,w
iorwf	((c:___xxtofl@val+1))^00h,c,w
iorwf	((c:___xxtofl@val+2))^00h,c,w
iorwf	((c:___xxtofl@val+3))^00h,c,w
	btfss	status,2
	goto	u3561
	goto	u3560

u3561:
	goto	l3561
u3560:
	line	22
	
l3557:
	movlw	low(normalize32(0x0))
	movwf	((c:?___xxtofl))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___xxtofl+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___xxtofl+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___xxtofl+3))^00h,c
	goto	l1104
	line	23
	
l3561:
	movlw	low(096h)
	movwf	((c:___xxtofl@exp))^00h,c
	line	24
	goto	l3565
	line	25
	
l3563:
	incf	((c:___xxtofl@exp))^00h,c
	line	26
	bcf	status,0
	rrcf	((c:___xxtofl@arg+3))^00h,c
	rrcf	((c:___xxtofl@arg+2))^00h,c
	rrcf	((c:___xxtofl@arg+1))^00h,c
	rrcf	((c:___xxtofl@arg))^00h,c
	line	24
	
l3565:
	movlw	0
	andwf	((c:___xxtofl@arg))^00h,c,w
	movwf	(??___xxtofl+0+0)^00h,c
	movlw	0
	andwf	((c:___xxtofl@arg+1))^00h,c,w
	movwf	1+(??___xxtofl+0+0)^00h,c
	
	movlw	0
	andwf	((c:___xxtofl@arg+2))^00h,c,w
	movwf	2+(??___xxtofl+0+0)^00h,c
	
	movlw	0FEh
	andwf	((c:___xxtofl@arg+3))^00h,c,w
	movwf	3+(??___xxtofl+0+0)^00h,c
	movf	(??___xxtofl+0+0)^00h,c,w
iorwf	(??___xxtofl+0+1)^00h,c,w
iorwf	(??___xxtofl+0+2)^00h,c,w
iorwf	(??___xxtofl+0+3)^00h,c,w
	btfss	status,2
	goto	u3571
	goto	u3570

u3571:
	goto	l3563
u3570:
	goto	l1108
	line	29
	
l3567:
	incf	((c:___xxtofl@exp))^00h,c
	line	30
	
l3569:
	movlw	low(01h)
	addwf	((c:___xxtofl@arg))^00h,c
	movlw	0
	addwfc	((c:___xxtofl@arg+1))^00h,c
	addwfc	((c:___xxtofl@arg+2))^00h,c
	addwfc	((c:___xxtofl@arg+3))^00h,c
	line	31
	
l3571:
	bcf	status,0
	rrcf	((c:___xxtofl@arg+3))^00h,c
	rrcf	((c:___xxtofl@arg+2))^00h,c
	rrcf	((c:___xxtofl@arg+1))^00h,c
	rrcf	((c:___xxtofl@arg))^00h,c
	line	32
	
l1108:
	line	28
	movlw	0
	andwf	((c:___xxtofl@arg))^00h,c,w
	movwf	(??___xxtofl+0+0)^00h,c
	movlw	0
	andwf	((c:___xxtofl@arg+1))^00h,c,w
	movwf	1+(??___xxtofl+0+0)^00h,c
	
	movlw	0
	andwf	((c:___xxtofl@arg+2))^00h,c,w
	movwf	2+(??___xxtofl+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___xxtofl@arg+3))^00h,c,w
	movwf	3+(??___xxtofl+0+0)^00h,c
	movf	(??___xxtofl+0+0)^00h,c,w
iorwf	(??___xxtofl+0+1)^00h,c,w
iorwf	(??___xxtofl+0+2)^00h,c,w
iorwf	(??___xxtofl+0+3)^00h,c,w
	btfss	status,2
	goto	u3581
	goto	u3580

u3581:
	goto	l3567
u3580:
	goto	l3575
	line	34
	
l3573:
	decf	((c:___xxtofl@exp))^00h,c
	line	35
	bcf	status,0
	rlcf	((c:___xxtofl@arg))^00h,c
	rlcf	((c:___xxtofl@arg+1))^00h,c
	rlcf	((c:___xxtofl@arg+2))^00h,c
	rlcf	((c:___xxtofl@arg+3))^00h,c
	line	33
	
l3575:
	
	btfsc	((c:___xxtofl@arg+2))^00h,c,(23)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l1115
u3590:
	
l3577:
		movlw	02h-0
	cpfslt	((c:___xxtofl@exp))^00h,c
	goto	u3601
	goto	u3600

u3601:
	goto	l3573
u3600:
	
l1115:
	line	37
	
	btfsc	((c:___xxtofl@exp))^00h,c,(0)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l3581
u3610:
	line	38
	
l3579:
	bcf	(0+(23/8)+(c:___xxtofl@arg))^00h,c,(23)&7
	line	39
	
l3581:
	bcf status,0
	rrcf	((c:___xxtofl@exp))^00h,c

	line	40
	
l3583:
	movff	(c:___xxtofl@exp),??___xxtofl+0+0
	clrf	(??___xxtofl+0+0+1)^00h,c
	clrf	(??___xxtofl+0+0+2)^00h,c
	clrf	(??___xxtofl+0+0+3)^00h,c
	movff	??___xxtofl+0+0,??___xxtofl+0+3
	clrf	(??___xxtofl+0+2)^00h,c
	clrf	(??___xxtofl+0+1)^00h,c
	clrf	(??___xxtofl+0+0)^00h,c
	movf	(??___xxtofl+0+0)^00h,c,w
	iorwf	((c:___xxtofl@arg))^00h,c
	movf	(??___xxtofl+0+1)^00h,c,w
	iorwf	((c:___xxtofl@arg+1))^00h,c
	movf	(??___xxtofl+0+2)^00h,c,w
	iorwf	((c:___xxtofl@arg+2))^00h,c
	movf	(??___xxtofl+0+3)^00h,c,w
	iorwf	((c:___xxtofl@arg+3))^00h,c

	line	41
	
l3585:
	movf	((c:___xxtofl@sign))^00h,c,w
	btfsc	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3591
u3620:
	
l3587:
	btfsc	((c:___xxtofl@val+3))^00h,c,7
	goto	u3630
	goto	u3631

u3631:
	goto	l3591
u3630:
	line	42
	
l3589:
	bsf	(0+(31/8)+(c:___xxtofl@arg))^00h,c,(31)&7
	line	43
	
l3591:
	movff	(c:___xxtofl@arg),(c:?___xxtofl)
	movff	(c:___xxtofl@arg+1),(c:?___xxtofl+1)
	movff	(c:___xxtofl@arg+2),(c:?___xxtofl+2)
	movff	(c:___xxtofl@arg+3),(c:?___xxtofl+3)
	line	44
	
l1104:
	return	;funcret
	callstack 0
GLOBAL	__end_of___xxtofl
	__end_of___xxtofl:
	signat	___xxtofl,8316
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sprcmul.c"
;; Parameters:    Size  Location     Type
;;  b               4    4[COMRAM] unsigned char 
;;  a               4    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  prod            4   23[COMRAM] struct .
;;  grs             4   18[COMRAM] unsigned long 
;;  temp            2   27[COMRAM] struct .
;;  bexp            1   22[COMRAM] unsigned char 
;;  aexp            1   17[COMRAM] unsigned char 
;;  sign            1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_StandardDev
;;		_calculateThreshold
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sprcmul.c"
	line	8
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sprcmul.c"
	line	8
	
___flmul:
;incstack = 0
	callstack 26
	line	17
	
l3403:
	movf	(0+((c:___flmul@b)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___flmul@sign))^00h,c
	line	18
	movf	(0+((c:___flmul@b)+03h))^00h,c,w
	addwf	(0+((c:___flmul@b)+03h))^00h,c,w
	movwf	((c:___flmul@bexp))^00h,c
	line	19
	
l3405:
	
	btfss	(0+((c:___flmul@b)+02h))^00h,c,(7)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l3409
u3320:
	line	20
	
l3407:
	bsf	(0+(0/8)+(c:___flmul@bexp))^00h,c,(0)&7
	line	24
	
l3409:
	movf	((c:___flmul@bexp))^00h,c,w
	btfsc	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l3417
u3330:
	line	26
	
l3411:
		incf	((c:___flmul@bexp))^00h,c,w
	btfss	status,2
	goto	u3341
	goto	u3340

u3341:
	goto	l3415
u3340:
	line	28
	
l3413:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@b+3))^00h,c
	line	31
	
l3415:
	bsf	(0+(23/8)+(c:___flmul@b))^00h,c,(23)&7
	line	33
	goto	l3419
	line	36
	
l3417:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@b+3))^00h,c
	line	39
	
l3419:
	movf	(0+((c:___flmul@a)+03h))^00h,c,w
	andlw	low(080h)
	xorwf	((c:___flmul@sign))^00h,c
	line	40
	
l3421:
	movf	(0+((c:___flmul@a)+03h))^00h,c,w
	addwf	(0+((c:___flmul@a)+03h))^00h,c,w
	movwf	((c:___flmul@aexp))^00h,c
	line	41
	
l3423:
	
	btfss	(0+((c:___flmul@a)+02h))^00h,c,(7)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l3427
u3350:
	line	42
	
l3425:
	bsf	(0+(0/8)+(c:___flmul@aexp))^00h,c,(0)&7
	line	45
	
l3427:
	movf	((c:___flmul@aexp))^00h,c,w
	btfsc	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l3435
u3360:
	line	48
	
l3429:
		incf	((c:___flmul@aexp))^00h,c,w
	btfss	status,2
	goto	u3371
	goto	u3370

u3371:
	goto	l3433
u3370:
	line	50
	
l3431:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@a+3))^00h,c
	line	53
	
l3433:
	bsf	(0+(23/8)+(c:___flmul@a))^00h,c,(23)&7
	line	54
	goto	l1060
	line	57
	
l3435:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@a+3))^00h,c
	line	58
	
l1060:
	line	65
	movf	((c:___flmul@aexp))^00h,c,w
	btfsc	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l3439
u3380:
	
l3437:
	movf	((c:___flmul@bexp))^00h,c,w
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l3443
u3390:
	line	66
	
l3439:
	movlw	low(normalize32(0x0))
	movwf	((c:?___flmul))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___flmul+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___flmul+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___flmul+3))^00h,c
	goto	l1064
	line	95
	
l3443:
	movf	(0+((c:___flmul@a)+02h))^00h,c,w
	mulwf	((c:___flmul@b))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	96
	
l3445:
	movf	((c:___flmul@temp))^00h,c,w
	movwf	((c:___flmul@grs))^00h,c
	clrf	((c:___flmul@grs+1))^00h,c
	clrf	((c:___flmul@grs+2))^00h,c
	clrf	((c:___flmul@grs+3))^00h,c

	line	97
	
l3447:
	movf	(0+((c:___flmul@temp)+01h))^00h,c,w
	movwf	((c:___flmul@prod))^00h,c
	clrf	((c:___flmul@prod+1))^00h,c
	clrf	((c:___flmul@prod+2))^00h,c
	clrf	((c:___flmul@prod+3))^00h,c

	line	98
	movf	(0+((c:___flmul@a)+01h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+01h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	99
	
l3449:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+1))^00h,c
	addwfc	((c:___flmul@grs+2))^00h,c
	addwfc	((c:___flmul@grs+3))^00h,c
	line	100
	
l3451:
	movf	(0+((c:___flmul@temp)+01h))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+1))^00h,c
	addwfc	((c:___flmul@prod+2))^00h,c
	addwfc	((c:___flmul@prod+3))^00h,c
	line	101
	movf	((c:___flmul@a))^00h,c,w
	mulwf	(0+((c:___flmul@b)+02h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	102
	
l3453:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+1))^00h,c
	addwfc	((c:___flmul@grs+2))^00h,c
	addwfc	((c:___flmul@grs+3))^00h,c
	line	103
	
l3455:
	movf	(0+((c:___flmul@temp)+01h))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+1))^00h,c
	addwfc	((c:___flmul@prod+2))^00h,c
	addwfc	((c:___flmul@prod+3))^00h,c
	line	104
	
l3457:
	movff	(c:___flmul@grs+2),(c:___flmul@grs+3)
	movff	(c:___flmul@grs+1),(c:___flmul@grs+2)
	movff	(c:___flmul@grs),(c:___flmul@grs+1)
	clrf	((c:___flmul@grs))^00h,c
	line	105
	
l3459:
	movf	((c:___flmul@a))^00h,c,w
	mulwf	(0+((c:___flmul@b)+01h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	106
	
l3461:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@grs+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+3))^00h,c

	line	107
	
l3463:
	movf	(0+((c:___flmul@a)+01h))^00h,c,w
	mulwf	((c:___flmul@b))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	108
	
l3465:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@grs+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+3))^00h,c

	line	109
	
l3467:
	movff	(c:___flmul@grs+2),(c:___flmul@grs+3)
	movff	(c:___flmul@grs+1),(c:___flmul@grs+2)
	movff	(c:___flmul@grs),(c:___flmul@grs+1)
	clrf	((c:___flmul@grs))^00h,c
	line	110
	movf	((c:___flmul@a))^00h,c,w
	mulwf	((c:___flmul@b))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	111
	
l3469:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@grs+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+3))^00h,c

	line	112
	
l3471:
	movf	(0+((c:___flmul@a)+02h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+01h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	113
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+3))^00h,c

	line	114
	
l3473:
	movf	(0+((c:___flmul@a)+01h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+02h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	115
	
l3475:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+3))^00h,c

	line	116
	movf	(0+((c:___flmul@a)+02h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+02h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	117
	
l3477:
	movf	((c:___flmul@temp))^00h,c,w
	movwf	(??___flmul+0+0)^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	movwf	1+(??___flmul+0+0)^00h,c
	
	clrf	2+(??___flmul+0+0)^00h,c
	
	clrf	3+(??___flmul+0+0)^00h,c
	movff	??___flmul+0+2,??___flmul+0+3
	movff	??___flmul+0+1,??___flmul+0+2
	movff	??___flmul+0+0,??___flmul+0+1
	clrf	(??___flmul+0+0)^00h,c
	movf	(??___flmul+0+0)^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	(??___flmul+0+1)^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movf	(??___flmul+0+2)^00h,c,w
	addwfc	((c:___flmul@prod+2))^00h,c
	movf	(??___flmul+0+3)^00h,c,w
	addwfc	((c:___flmul@prod+3))^00h,c

	line	145
	
l3479:
	movff	(c:___flmul@grs),??___flmul+0+0
	movff	(c:___flmul@grs+1),??___flmul+0+0+1
	movff	(c:___flmul@grs+2),??___flmul+0+0+2
	movff	(c:___flmul@grs+3),??___flmul+0+0+3
	movlw	018h+1
	goto	u3400
u3405:
	bcf	status,0
	rrcf	(??___flmul+0+3)^00h,c
	rrcf	(??___flmul+0+2)^00h,c
	rrcf	(??___flmul+0+1)^00h,c
	rrcf	(??___flmul+0+0)^00h,c
u3400:
	decfsz	wreg
	goto	u3405
	movf	(??___flmul+0+0)^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	(??___flmul+0+1)^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movf	(??___flmul+0+2)^00h,c,w
	addwfc	((c:___flmul@prod+2))^00h,c
	movf	(??___flmul+0+3)^00h,c,w
	addwfc	((c:___flmul@prod+3))^00h,c

	line	146
	
l3481:
	movff	(c:___flmul@grs+2),(c:___flmul@grs+3)
	movff	(c:___flmul@grs+1),(c:___flmul@grs+2)
	movff	(c:___flmul@grs),(c:___flmul@grs+1)
	clrf	((c:___flmul@grs))^00h,c
	line	149
	
l3483:
	movf	((c:___flmul@aexp))^00h,c,w
	movff	(c:___flmul@bexp),??___flmul+0+0
	clrf	(??___flmul+0+0+1)^00h,c
	addwf	(??___flmul+0+0)^00h,c
	movlw	0
	addwfc	(??___flmul+0+1)^00h,c
	movlw	low(-126)
	addwf	(??___flmul+0+0)^00h,c,w
	movwf	((c:___flmul@temp))^00h,c
	movlw	high(-126)
	addwfc	(??___flmul+0+1)^00h,c,w
	movwf	1+((c:___flmul@temp))^00h,c
	line	152
	goto	l3491
	line	153
	
l3485:
	bcf	status,0
	rlcf	((c:___flmul@prod))^00h,c
	rlcf	((c:___flmul@prod+1))^00h,c
	rlcf	((c:___flmul@prod+2))^00h,c
	rlcf	((c:___flmul@prod+3))^00h,c
	line	154
	
l3487:
	
	btfss	((c:___flmul@grs+3))^00h,c,(31)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l1067
u3410:
	line	155
	
l3489:
	bsf	(0+(0/8)+(c:___flmul@prod))^00h,c,(0)&7
	line	156
	
l1067:
	line	157
	bcf	status,0
	rlcf	((c:___flmul@grs))^00h,c
	rlcf	((c:___flmul@grs+1))^00h,c
	rlcf	((c:___flmul@grs+2))^00h,c
	rlcf	((c:___flmul@grs+3))^00h,c
	line	158
	decf	((c:___flmul@temp))^00h,c
	btfss	status,0
	decf	((c:___flmul@temp+1))^00h,c
	line	152
	
l3491:
	
	btfss	((c:___flmul@prod+2))^00h,c,(23)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l3485
u3420:
	line	163
	
l3493:
	movlw	low(0)
	movwf	((c:___flmul@aexp))^00h,c
	line	164
	
l3495:
	
	btfss	((c:___flmul@grs+3))^00h,c,(31)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l1069
u3430:
	line	165
	
l3497:
	movlw	0FFh
	andwf	((c:___flmul@grs))^00h,c,w
	movwf	(??___flmul+0+0)^00h,c
	movlw	0FFh
	andwf	((c:___flmul@grs+1))^00h,c,w
	movwf	1+(??___flmul+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___flmul@grs+2))^00h,c,w
	movwf	2+(??___flmul+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___flmul@grs+3))^00h,c,w
	movwf	3+(??___flmul+0+0)^00h,c
	movf	(??___flmul+0+0)^00h,c,w
iorwf	(??___flmul+0+1)^00h,c,w
iorwf	(??___flmul+0+2)^00h,c,w
iorwf	(??___flmul+0+3)^00h,c,w
	btfsc	status,2
	goto	u3441
	goto	u3440

u3441:
	goto	l1070
u3440:
	line	166
	
l3499:
	movlw	low(01h)
	movwf	((c:___flmul@aexp))^00h,c
	line	167
	goto	l1069
	line	168
	
l1070:
	line	169
	
	btfss	((c:___flmul@prod))^00h,c,(0)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l1069
u3450:
	goto	l3499
	line	173
	
l1069:
	line	174
	movf	((c:___flmul@aexp))^00h,c,w
	btfsc	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l3511
u3460:
	line	175
	
l3503:
	movlw	low(01h)
	addwf	((c:___flmul@prod))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+1))^00h,c
	addwfc	((c:___flmul@prod+2))^00h,c
	addwfc	((c:___flmul@prod+3))^00h,c
	line	176
	
l3505:
	
	btfss	((c:___flmul@prod+3))^00h,c,(24)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l3511
u3470:
	line	177
	
l3507:
	movff	(c:___flmul@prod),??___flmul+0+0
	movff	(c:___flmul@prod+1),??___flmul+0+0+1
	movff	(c:___flmul@prod+2),??___flmul+0+0+2
	movff	(c:___flmul@prod+3),??___flmul+0+0+3
	rlcf	(??___flmul+0+3)^00h,c,w
	rrcf	(??___flmul+0+3)^00h,c
	rrcf	(??___flmul+0+2)^00h,c
	rrcf	(??___flmul+0+1)^00h,c
	rrcf	(??___flmul+0+0)^00h,c
	movff	??___flmul+0+0,(c:___flmul@prod)
	movff	??___flmul+0+1,(c:___flmul@prod+1)
	movff	??___flmul+0+2,(c:___flmul@prod+2)
	movff	??___flmul+0+3,(c:___flmul@prod+3)
	line	178
	
l3509:
	infsnz	((c:___flmul@temp))^00h,c
	incf	((c:___flmul@temp+1))^00h,c
	line	183
	
l3511:
	btfsc	((c:___flmul@temp+1))^00h,c,7
	goto	u3481
	movf	((c:___flmul@temp+1))^00h,c,w
	bnz	u3480
	incf	((c:___flmul@temp))^00h,c,w
	btfss	status,0
	goto	u3481
	goto	u3480

u3481:
	goto	l3515
u3480:
	line	184
	
l3513:
	movlw	low(07F800000h)
	movwf	((c:___flmul@prod))^00h,c
	movlw	high(07F800000h)
	movwf	((c:___flmul@prod+1))^00h,c
	movlw	low highword(07F800000h)
	movwf	((c:___flmul@prod+2))^00h,c
	movlw	high highword(07F800000h)
	movwf	((c:___flmul@prod+3))^00h,c
	line	185
	goto	l3527
	line	187
	
l3515:
	btfsc	((c:___flmul@temp+1))^00h,c,7
	goto	u3490
	movf	((c:___flmul@temp+1))^00h,c,w
	bnz	u3491
	decf	((c:___flmul@temp))^00h,c,w
	btfsc	status,0
	goto	u3491
	goto	u3490

u3491:
	goto	l1077
u3490:
	line	188
	
l3517:
	movlw	low(0)
	movwf	((c:___flmul@prod))^00h,c
	movlw	high(0)
	movwf	((c:___flmul@prod+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___flmul@prod+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___flmul@prod+3))^00h,c
	line	190
	movlw	low(0)
	movwf	((c:___flmul@sign))^00h,c
	line	191
	goto	l3527
	line	192
	
l1077:
	line	194
	movff	(c:___flmul@temp),(c:___flmul@bexp)
	line	195
	
l3519:
	movlw	0FFh
	andwf	((c:___flmul@prod))^00h,c
	movlw	0FFh
	andwf	((c:___flmul@prod+1))^00h,c
	movlw	07Fh
	andwf	((c:___flmul@prod+2))^00h,c
	movlw	0
	andwf	((c:___flmul@prod+3))^00h,c
	line	196
	
l3521:
	
	btfss	((c:___flmul@bexp))^00h,c,(0)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l3525
u3500:
	line	197
	
l3523:
	bsf	(0+(7/8)+0+((c:___flmul@prod)+02h))^00h,c,(7)&7
	line	199
	
l3525:
	bcf	status,0
	rrcf	((c:___flmul@bexp))^00h,c,w
	movwf	(0+((c:___flmul@prod)+03h))^00h,c
	line	201
	
l3527:
	movf	((c:___flmul@sign))^00h,c,w
	iorwf	(0+((c:___flmul@prod)+03h))^00h,c
	line	203
	
l3529:
	movff	(c:___flmul@prod),(c:?___flmul)
	movff	(c:___flmul@prod+1),(c:?___flmul+1)
	movff	(c:___flmul@prod+2),(c:?___flmul+2)
	movff	(c:___flmul@prod+3),(c:?___flmul+3)
	line	205
	
l1064:
	return	;funcret
	callstack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 11 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sprcdiv.c"
;; Parameters:    Size  Location     Type
;;  b               4    4[COMRAM] unsigned char 
;;  a               4    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  grs             4   23[COMRAM] unsigned long 
;;  rem             4   16[COMRAM] unsigned long 
;;  new_exp         2   21[COMRAM] short 
;;  aexp            1   28[COMRAM] unsigned char 
;;  bexp            1   27[COMRAM] unsigned char 
;;  sign            1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_StandardDev
;;		_EMGServoVrednosti
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sprcdiv.c"
	line	11
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sprcdiv.c"
	line	11
	
___fldiv:
;incstack = 0
	callstack 26
	line	26
	
l3265:
	movf	(0+((c:___fldiv@b)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___fldiv@sign))^00h,c
	line	27
	movf	(0+((c:___fldiv@b)+03h))^00h,c,w
	addwf	(0+((c:___fldiv@b)+03h))^00h,c,w
	movwf	((c:___fldiv@bexp))^00h,c
	line	28
	
l3267:
	
	btfss	(0+((c:___fldiv@b)+02h))^00h,c,(7)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l3271
u3090:
	line	29
	
l3269:
	bsf	(0+(0/8)+(c:___fldiv@bexp))^00h,c,(0)&7
	line	33
	
l3271:
	movf	((c:___fldiv@bexp))^00h,c,w
	btfsc	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l3281
u3100:
	line	35
	
l3273:
		incf	((c:___fldiv@bexp))^00h,c,w
	btfss	status,2
	goto	u3111
	goto	u3110

u3111:
	goto	l3277
u3110:
	line	37
	
l3275:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@b+3))^00h,c
	line	40
	
l3277:
	bsf	(0+(23/8)+(c:___fldiv@b))^00h,c,(23)&7
	line	42
	
l3279:
	movlw	low(0)
	movwf	(0+((c:___fldiv@b)+03h))^00h,c
	line	43
	goto	l3283
	line	46
	
l3281:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@b+3))^00h,c
	line	49
	
l3283:
	movf	(0+((c:___fldiv@a)+03h))^00h,c,w
	andlw	low(080h)
	xorwf	((c:___fldiv@sign))^00h,c
	line	50
	
l3285:
	movf	(0+((c:___fldiv@a)+03h))^00h,c,w
	addwf	(0+((c:___fldiv@a)+03h))^00h,c,w
	movwf	((c:___fldiv@aexp))^00h,c
	line	51
	
l3287:
	
	btfss	(0+((c:___fldiv@a)+02h))^00h,c,(7)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l3291
u3120:
	line	52
	
l3289:
	bsf	(0+(0/8)+(c:___fldiv@aexp))^00h,c,(0)&7
	line	56
	
l3291:
	movf	((c:___fldiv@aexp))^00h,c,w
	btfsc	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3301
u3130:
	line	58
	
l3293:
		incf	((c:___fldiv@aexp))^00h,c,w
	btfss	status,2
	goto	u3141
	goto	u3140

u3141:
	goto	l3297
u3140:
	line	60
	
l3295:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@a+3))^00h,c
	line	63
	
l3297:
	bsf	(0+(23/8)+(c:___fldiv@a))^00h,c,(23)&7
	line	65
	
l3299:
	movlw	low(0)
	movwf	(0+((c:___fldiv@a)+03h))^00h,c
	line	66
	goto	l3303
	line	69
	
l3301:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@a+3))^00h,c
	line	75
	
l3303:
	movf	((c:___fldiv@a))^00h,c,w
iorwf	((c:___fldiv@a+1))^00h,c,w
iorwf	((c:___fldiv@a+2))^00h,c,w
iorwf	((c:___fldiv@a+3))^00h,c,w
	btfss	status,2
	goto	u3151
	goto	u3150

u3151:
	goto	l3315
u3150:
	line	76
	
l3305:
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	77
	
l3307:
	movlw	low(07F80h)
	iorwf	(0+((c:___fldiv@b)+02h))^00h,c
	movlw	high(07F80h)
	iorwf	(1+((c:___fldiv@b)+02h))^00h,c
	line	78
	
l3309:
	movf	((c:___fldiv@sign))^00h,c,w
	iorwf	(0+((c:___fldiv@b)+03h))^00h,c
	line	79
	
l3311:
	movff	(c:___fldiv@b),(c:?___fldiv)
	movff	(c:___fldiv@b+1),(c:?___fldiv+1)
	movff	(c:___fldiv@b+2),(c:?___fldiv+2)
	movff	(c:___fldiv@b+3),(c:?___fldiv+3)
	goto	l1028
	line	83
	
l3315:
	movf	((c:___fldiv@bexp))^00h,c,w
	btfss	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l3323
u3160:
	line	84
	
l3317:
	line	85
	
l3319:
	movlw	low(0)
	movwf	((c:?___fldiv))^00h,c
	movlw	high(0)
	movwf	((c:?___fldiv+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fldiv+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fldiv+3))^00h,c
	goto	l1028
	line	89
	
l3323:
	movf	((c:___fldiv@aexp))^00h,c,w
	movff	(c:___fldiv@bexp),??___fldiv+0+0
	clrf	(??___fldiv+0+0+1)^00h,c
	subwf	(??___fldiv+0+0)^00h,c
	movlw	0
	subwfb	(??___fldiv+0+1)^00h,c
	movlw	low(07Fh)
	addwf	(??___fldiv+0+0)^00h,c,w
	movwf	((c:___fldiv@new_exp))^00h,c
	movlw	high(07Fh)
	addwfc	(??___fldiv+0+1)^00h,c,w
	movwf	1+((c:___fldiv@new_exp))^00h,c
	line	92
	
l3325:
	movff	(c:___fldiv@b),(c:___fldiv@rem)
	movff	(c:___fldiv@b+1),(c:___fldiv@rem+1)
	movff	(c:___fldiv@b+2),(c:___fldiv@rem+2)
	movff	(c:___fldiv@b+3),(c:___fldiv@rem+3)
	line	93
	
l3327:
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	94
	
l3329:
	movlw	low(0)
	movwf	((c:___fldiv@grs))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@grs+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@grs+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@grs+3))^00h,c
	line	96
	
l3331:
	movlw	low(0)
	movwf	((c:___fldiv@aexp))^00h,c
	line	97
	goto	l1030
	line	100
	
l3333:
	movf	((c:___fldiv@aexp))^00h,c,w
	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l3341
u3170:
	line	101
	
l3335:
	bcf	status,0
	rlcf	((c:___fldiv@rem))^00h,c
	rlcf	((c:___fldiv@rem+1))^00h,c
	rlcf	((c:___fldiv@rem+2))^00h,c
	rlcf	((c:___fldiv@rem+3))^00h,c
	line	102
	bcf	status,0
	rlcf	((c:___fldiv@b))^00h,c
	rlcf	((c:___fldiv@b+1))^00h,c
	rlcf	((c:___fldiv@b+2))^00h,c
	rlcf	((c:___fldiv@b+3))^00h,c
	line	103
	
l3337:
	
	btfss	((c:___fldiv@grs+3))^00h,c,(31)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l1033
u3180:
	line	104
	
l3339:
	bsf	(0+(0/8)+(c:___fldiv@b))^00h,c,(0)&7
	line	105
	
l1033:
	line	106
	bcf	status,0
	rlcf	((c:___fldiv@grs))^00h,c
	rlcf	((c:___fldiv@grs+1))^00h,c
	rlcf	((c:___fldiv@grs+2))^00h,c
	rlcf	((c:___fldiv@grs+3))^00h,c
	line	112
	
l3341:
		movf	((c:___fldiv@a))^00h,c,w
	subwf	((c:___fldiv@rem))^00h,c,w
	movf	((c:___fldiv@a+1))^00h,c,w
	subwfb	((c:___fldiv@rem+1))^00h,c,w
	movf	((c:___fldiv@a+2))^00h,c,w
	subwfb	((c:___fldiv@rem+2))^00h,c,w
	movf	((c:___fldiv@a+3))^00h,c,w
	subwfb	((c:___fldiv@rem+3))^00h,c,w
	btfss	status,0
	goto	u3191
	goto	u3190

u3191:
	goto	l3347
u3190:
	line	115
	
l3343:
	bsf	(0+(30/8)+(c:___fldiv@grs))^00h,c,(30)&7
	line	116
	
l3345:
	movf	((c:___fldiv@a))^00h,c,w
	subwf	((c:___fldiv@rem))^00h,c
	movf	((c:___fldiv@a+1))^00h,c,w
	subwfb	((c:___fldiv@rem+1))^00h,c
	movf	((c:___fldiv@a+2))^00h,c,w
	subwfb	((c:___fldiv@rem+2))^00h,c
	movf	((c:___fldiv@a+3))^00h,c,w
	subwfb	((c:___fldiv@rem+3))^00h,c
	line	118
	
l3347:
	incf	((c:___fldiv@aexp))^00h,c
	line	119
	
l1030:
	line	97
		movlw	01Ah-1
	cpfsgt	((c:___fldiv@aexp))^00h,c
	goto	u3201
	goto	u3200

u3201:
	goto	l3333
u3200:
	line	122
	
l3349:
	movf	((c:___fldiv@rem))^00h,c,w
iorwf	((c:___fldiv@rem+1))^00h,c,w
iorwf	((c:___fldiv@rem+2))^00h,c,w
iorwf	((c:___fldiv@rem+3))^00h,c,w
	btfsc	status,2
	goto	u3211
	goto	u3210

u3211:
	goto	l3359
u3210:
	line	123
	
l3351:
	bsf	(0+(0/8)+(c:___fldiv@grs))^00h,c,(0)&7
	goto	l3359
	line	128
	
l3353:
	bcf	status,0
	rlcf	((c:___fldiv@b))^00h,c
	rlcf	((c:___fldiv@b+1))^00h,c
	rlcf	((c:___fldiv@b+2))^00h,c
	rlcf	((c:___fldiv@b+3))^00h,c
	line	129
	
l3355:
	
	btfss	((c:___fldiv@grs+3))^00h,c,(31)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l1039
u3220:
	line	130
	
l3357:
	bsf	(0+(0/8)+(c:___fldiv@b))^00h,c,(0)&7
	line	131
	
l1039:
	line	132
	bcf	status,0
	rlcf	((c:___fldiv@grs))^00h,c
	rlcf	((c:___fldiv@grs+1))^00h,c
	rlcf	((c:___fldiv@grs+2))^00h,c
	rlcf	((c:___fldiv@grs+3))^00h,c
	line	133
	decf	((c:___fldiv@new_exp))^00h,c
	btfss	status,0
	decf	((c:___fldiv@new_exp+1))^00h,c
	line	127
	
l3359:
	
	btfss	((c:___fldiv@b+2))^00h,c,(23)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l3353
u3230:
	line	139
	
l3361:
	movlw	low(0)
	movwf	((c:___fldiv@aexp))^00h,c
	line	140
	
l3363:
	
	btfss	((c:___fldiv@grs+3))^00h,c,(31)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l1041
u3240:
	line	141
	
l3365:
	movlw	0FFh
	andwf	((c:___fldiv@grs))^00h,c,w
	movwf	(??___fldiv+0+0)^00h,c
	movlw	0FFh
	andwf	((c:___fldiv@grs+1))^00h,c,w
	movwf	1+(??___fldiv+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___fldiv@grs+2))^00h,c,w
	movwf	2+(??___fldiv+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___fldiv@grs+3))^00h,c,w
	movwf	3+(??___fldiv+0+0)^00h,c
	movf	(??___fldiv+0+0)^00h,c,w
iorwf	(??___fldiv+0+1)^00h,c,w
iorwf	(??___fldiv+0+2)^00h,c,w
iorwf	(??___fldiv+0+3)^00h,c,w
	btfsc	status,2
	goto	u3251
	goto	u3250

u3251:
	goto	l1042
u3250:
	line	142
	
l3367:
	movlw	low(01h)
	movwf	((c:___fldiv@aexp))^00h,c
	line	143
	goto	l1041
	line	144
	
l1042:
	line	145
	
	btfss	((c:___fldiv@b))^00h,c,(0)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l1041
u3260:
	goto	l3367
	line	149
	
l1041:
	line	150
	movf	((c:___fldiv@aexp))^00h,c,w
	btfsc	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l3379
u3270:
	line	151
	
l3371:
	movlw	low(01h)
	addwf	((c:___fldiv@b))^00h,c
	movlw	0
	addwfc	((c:___fldiv@b+1))^00h,c
	addwfc	((c:___fldiv@b+2))^00h,c
	addwfc	((c:___fldiv@b+3))^00h,c
	line	152
	
l3373:
	
	btfss	((c:___fldiv@b+3))^00h,c,(24)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l3379
u3280:
	line	153
	
l3375:
	movff	(c:___fldiv@b),??___fldiv+0+0
	movff	(c:___fldiv@b+1),??___fldiv+0+0+1
	movff	(c:___fldiv@b+2),??___fldiv+0+0+2
	movff	(c:___fldiv@b+3),??___fldiv+0+0+3
	rlcf	(??___fldiv+0+3)^00h,c,w
	rrcf	(??___fldiv+0+3)^00h,c
	rrcf	(??___fldiv+0+2)^00h,c
	rrcf	(??___fldiv+0+1)^00h,c
	rrcf	(??___fldiv+0+0)^00h,c
	movff	??___fldiv+0+0,(c:___fldiv@b)
	movff	??___fldiv+0+1,(c:___fldiv@b+1)
	movff	??___fldiv+0+2,(c:___fldiv@b+2)
	movff	??___fldiv+0+3,(c:___fldiv@b+3)
	line	154
	
l3377:
	infsnz	((c:___fldiv@new_exp))^00h,c
	incf	((c:___fldiv@new_exp+1))^00h,c
	line	159
	
l3379:
	btfsc	((c:___fldiv@new_exp+1))^00h,c,7
	goto	u3291
	movf	((c:___fldiv@new_exp+1))^00h,c,w
	bnz	u3290
	incf	((c:___fldiv@new_exp))^00h,c,w
	btfss	status,0
	goto	u3291
	goto	u3290

u3291:
	goto	l3383
u3290:
	line	160
	
l3381:
	movlw	high(0FFh)
	movwf	((c:___fldiv@new_exp+1))^00h,c
	setf	((c:___fldiv@new_exp))^00h,c
	line	161
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	165
	
l3383:
	btfsc	((c:___fldiv@new_exp+1))^00h,c,7
	goto	u3300
	movf	((c:___fldiv@new_exp+1))^00h,c,w
	bnz	u3301
	decf	((c:___fldiv@new_exp))^00h,c,w
	btfsc	status,0
	goto	u3301
	goto	u3300

u3301:
	goto	l3387
u3300:
	line	166
	
l3385:
	movlw	high(0)
	movwf	((c:___fldiv@new_exp+1))^00h,c
	movlw	low(0)
	movwf	((c:___fldiv@new_exp))^00h,c
	line	167
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	169
	movlw	low(0)
	movwf	((c:___fldiv@sign))^00h,c
	line	173
	
l3387:
	movff	(c:___fldiv@new_exp),(c:___fldiv@bexp)
	line	175
	
l3389:
	
	btfss	((c:___fldiv@bexp))^00h,c,(0)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l3393
u3310:
	line	176
	
l3391:
	bsf	(0+(7/8)+0+((c:___fldiv@b)+02h))^00h,c,(7)&7
	line	177
	goto	l3395
	line	180
	
l3393:
	bcf	(0+(7/8)+0+((c:___fldiv@b)+02h))^00h,c,(7)&7
	line	182
	
l3395:
	bcf	status,0
	rrcf	((c:___fldiv@bexp))^00h,c,w
	movwf	(0+((c:___fldiv@b)+03h))^00h,c
	goto	l3309
	line	185
	
l1028:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4   29[COMRAM] unsigned char 
;;  a               4   33[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  grs             1   44[COMRAM] unsigned char 
;;  bexp            1   43[COMRAM] unsigned char 
;;  aexp            1   42[COMRAM] unsigned char 
;;  signs           1   41[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   29[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        16       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_StandardDev
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sprcadd.c"
	line	10
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\sprcadd.c"
	line	10
	
___fladd:
;incstack = 0
	callstack 26
	line	21
	
l3063:
	movf	(0+((c:___fladd@b)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___fladd@signs))^00h,c
	line	22
	movf	(0+((c:___fladd@b)+03h))^00h,c,w
	addwf	(0+((c:___fladd@b)+03h))^00h,c,w
	movwf	((c:___fladd@bexp))^00h,c
	line	23
	
l3065:
	
	btfss	(0+((c:___fladd@b)+02h))^00h,c,(7)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l3069
u2700:
	line	24
	
l3067:
	bsf	(0+(0/8)+(c:___fladd@bexp))^00h,c,(0)&7
	line	28
	
l3069:
	movf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l3079
u2710:
	line	30
	
l3071:
		incf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u2721
	goto	u2720

u2721:
	goto	l3075
u2720:
	line	32
	
l3073:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@b+3))^00h,c
	line	35
	
l3075:
	bsf	(0+(23/8)+(c:___fladd@b))^00h,c,(23)&7
	line	37
	
l3077:
	movlw	low(0)
	movwf	(0+((c:___fladd@b)+03h))^00h,c
	line	38
	goto	l3081
	line	41
	
l3079:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@b+3))^00h,c
	line	44
	
l3081:
	movf	(0+((c:___fladd@a)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___fladd@aexp))^00h,c
	line	46
	
l3083:
	movf	((c:___fladd@signs))^00h,c,w
xorwf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,2
	goto	u2731
	goto	u2730

u2731:
	goto	l3087
u2730:
	line	47
	
l3085:
	bsf	(0+(6/8)+(c:___fladd@signs))^00h,c,(6)&7
	line	49
	
l3087:
	movf	(0+((c:___fladd@a)+03h))^00h,c,w
	addwf	(0+((c:___fladd@a)+03h))^00h,c,w
	movwf	((c:___fladd@aexp))^00h,c
	line	50
	
l3089:
	
	btfss	(0+((c:___fladd@a)+02h))^00h,c,(7)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l3093
u2740:
	line	51
	
l3091:
	bsf	(0+(0/8)+(c:___fladd@aexp))^00h,c,(0)&7
	line	55
	
l3093:
	movf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l3103
u2750:
	line	57
	
l3095:
		incf	((c:___fladd@aexp))^00h,c,w
	btfss	status,2
	goto	u2761
	goto	u2760

u2761:
	goto	l3099
u2760:
	line	59
	
l3097:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@a+3))^00h,c
	line	62
	
l3099:
	bsf	(0+(23/8)+(c:___fladd@a))^00h,c,(23)&7
	line	64
	
l3101:
	movlw	low(0)
	movwf	(0+((c:___fladd@a)+03h))^00h,c
	line	65
	goto	l3105
	line	68
	
l3103:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@a+3))^00h,c
	line	75
	
l3105:
		movf	((c:___fladd@bexp))^00h,c,w
	subwf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,0
	goto	u2771
	goto	u2770

u2771:
	goto	l3141
u2770:
	line	77
	
l3107:
	
	btfss	((c:___fladd@signs))^00h,c,(6)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l3111
u2780:
	line	78
	
l3109:
	movlw	(080h)&0ffh
	xorwf	((c:___fladd@signs))^00h,c
	line	81
	
l3111:
	movff	(c:___fladd@bexp),(c:___fladd@grs)
	line	82
	
l3113:
	movff	(c:___fladd@aexp),(c:___fladd@bexp)
	line	83
	
l3115:
	movff	(c:___fladd@grs),(c:___fladd@aexp)
	line	84
	
l3117:
	movff	(c:___fladd@b),(c:___fladd@grs)
	line	85
	
l3119:
	movff	(c:___fladd@a),(c:___fladd@b)
	line	86
	
l3121:
	movff	(c:___fladd@grs),(c:___fladd@a)
	line	87
	
l3123:
	movff	0+((c:___fladd@b)+01h),(c:___fladd@grs)
	line	88
	
l3125:
	movff	0+((c:___fladd@a)+01h),0+((c:___fladd@b)+01h)
	line	89
	
l3127:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+01h)
	line	90
	
l3129:
	movff	0+((c:___fladd@b)+02h),(c:___fladd@grs)
	line	91
	
l3131:
	movff	0+((c:___fladd@a)+02h),0+((c:___fladd@b)+02h)
	line	92
	
l3133:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+02h)
	line	93
	
l3135:
	movff	0+((c:___fladd@b)+03h),(c:___fladd@grs)
	line	94
	
l3137:
	movff	0+((c:___fladd@a)+03h),0+((c:___fladd@b)+03h)
	line	95
	
l3139:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+03h)
	line	98
	
l3141:
	movlw	low(0)
	movwf	((c:___fladd@grs))^00h,c
	line	100
	
l3143:
	movf	((c:___fladd@bexp))^00h,c,w
	movff	(c:___fladd@aexp),??___fladd+0+0
	clrf	(??___fladd+0+0+1)^00h,c
	subwf	(??___fladd+0+0)^00h,c
	movlw	0
	subwfb	(??___fladd+0+1)^00h,c
	btfsc	(??___fladd+0+1)^00h,c,7
	goto	u2791
	movf	(??___fladd+0+1)^00h,c,w
	bnz	u2790
	movlw	26
	subwf	 (??___fladd+0+0)^00h,c,w
	btfss	status,0
	goto	u2791
	goto	u2790

u2791:
	goto	l975
u2790:
	line	101
	
l3145:
	movf	((c:___fladd@b))^00h,c,w
iorwf	((c:___fladd@b+1))^00h,c,w
iorwf	((c:___fladd@b+2))^00h,c,w
iorwf	((c:___fladd@b+3))^00h,c,w
	btfss	status,2
	goto	u2801
	goto	u2800

u2801:
	movlw	1
	goto	u2810
u2800:
	movlw	0
u2810:
	movwf	((c:___fladd@grs))^00h,c
	line	102
	
l3147:
	movlw	low(0)
	movwf	((c:___fladd@b))^00h,c
	movlw	high(0)
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fladd@b+3))^00h,c
	line	103
	
l3149:
	movff	(c:___fladd@aexp),(c:___fladd@bexp)
	line	104
	goto	l974
	line	106
	
l976:
	line	109
	
	btfss	((c:___fladd@grs))^00h,c,(0)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l3153
u2820:
	line	110
	
l3151:
	bcf	status,0
	rrcf	((c:___fladd@grs))^00h,c,w
	iorlw	low(01h)
	movwf	((c:___fladd@grs))^00h,c
	line	111
	goto	l3155
	line	113
	
l3153:
	bcf status,0
	rrcf	((c:___fladd@grs))^00h,c

	line	115
	
l3155:
	
	btfss	((c:___fladd@b))^00h,c,(0)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l3159
u2830:
	line	116
	
l3157:
	bsf	(0+(7/8)+(c:___fladd@grs))^00h,c,(7)&7
	line	118
	
l3159:
	rlcf	((c:___fladd@b+3))^00h,c,w
	rrcf	((c:___fladd@b+3))^00h,c
	rrcf	((c:___fladd@b+2))^00h,c
	rrcf	((c:___fladd@b+1))^00h,c
	rrcf	((c:___fladd@b))^00h,c
	line	119
	
l3161:
	incf	((c:___fladd@bexp))^00h,c
	line	120
	
l975:
	line	106
		movf	((c:___fladd@aexp))^00h,c,w
	subwf	((c:___fladd@bexp))^00h,c,w
	btfss	status,0
	goto	u2841
	goto	u2840

u2841:
	goto	l976
u2840:
	line	121
	
l974:
	line	124
	
	btfsc	((c:___fladd@signs))^00h,c,(6)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l3187
u2850:
	line	127
	
l3163:
	movf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l3169
u2860:
	line	128
	
l3165:
	movlw	low(normalize32(0x0))
	movwf	((c:?___fladd))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___fladd+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___fladd+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___fladd+3))^00h,c
	goto	l983
	line	132
	
l3169:
	movf	((c:___fladd@a))^00h,c,w
	addwf	((c:___fladd@b))^00h,c
	movf	((c:___fladd@a+1))^00h,c,w
	addwfc	((c:___fladd@b+1))^00h,c
	movf	((c:___fladd@a+2))^00h,c,w
	addwfc	((c:___fladd@b+2))^00h,c
	movf	((c:___fladd@a+3))^00h,c,w
	addwfc	((c:___fladd@b+3))^00h,c
	line	134
	
l3171:
	
	btfss	((c:___fladd@b+3))^00h,c,(24)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l3223
u2870:
	line	135
	
l3173:
	
	btfss	((c:___fladd@grs))^00h,c,(0)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l3177
u2880:
	line	136
	
l3175:
	bcf	status,0
	rrcf	((c:___fladd@grs))^00h,c,w
	iorlw	low(01h)
	movwf	((c:___fladd@grs))^00h,c
	line	137
	goto	l3179
	line	139
	
l3177:
	bcf status,0
	rrcf	((c:___fladd@grs))^00h,c

	line	141
	
l3179:
	
	btfss	((c:___fladd@b))^00h,c,(0)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l3183
u2890:
	line	142
	
l3181:
	bsf	(0+(7/8)+(c:___fladd@grs))^00h,c,(7)&7
	line	144
	
l3183:
	rlcf	((c:___fladd@b+3))^00h,c,w
	rrcf	((c:___fladd@b+3))^00h,c
	rrcf	((c:___fladd@b+2))^00h,c
	rrcf	((c:___fladd@b+1))^00h,c
	rrcf	((c:___fladd@b))^00h,c
	line	145
	
l3185:
	incf	((c:___fladd@bexp))^00h,c
	goto	l3223
	line	153
	
l3187:
		movf	((c:___fladd@a))^00h,c,w
	subwf	((c:___fladd@b))^00h,c,w
	movf	((c:___fladd@a+1))^00h,c,w
	subwfb	((c:___fladd@b+1))^00h,c,w
	movf	((c:___fladd@a+2))^00h,c,w
	subwfb	((c:___fladd@b+2))^00h,c,w
	movf	((c:___fladd@b+3))^00h,c,w
	xorlw	80h
	movwf	(??___fladd+0+0)^00h,c
	movf	((c:___fladd@a+3))^00h,c,w
	xorlw	80h
	subwfb	(??___fladd+0+0)^00h,c,w
	btfsc	status,0
	goto	u2901
	goto	u2900

u2901:
	goto	l3197
u2900:
	line	154
	
l3189:
	movf	((c:___fladd@b))^00h,c,w
	subwf	((c:___fladd@a))^00h,c,w
	movwf	(??___fladd+0+0)^00h,c
	movf	((c:___fladd@b+1))^00h,c,w
	subwfb	((c:___fladd@a+1))^00h,c,w
	movwf	1+(??___fladd+0+0)^00h,c
	
	movf	((c:___fladd@b+2))^00h,c,w
	subwfb	((c:___fladd@a+2))^00h,c,w
	movwf	2+(??___fladd+0+0)^00h,c
	
	movf	((c:___fladd@b+3))^00h,c,w
	subwfb	((c:___fladd@a+3))^00h,c,w
	movwf	3+(??___fladd+0+0)^00h,c
	movlw	0FFh
	addwf	(??___fladd+0+0)^00h,c,w
	movwf	((c:___fladd@b))^00h,c
	movlw	0FFh
	addwfc	(??___fladd+0+1)^00h,c,w
	movwf	1+((c:___fladd@b))^00h,c
	
	movlw	0FFh
	addwfc	(??___fladd+0+2)^00h,c,w
	movwf	2+((c:___fladd@b))^00h,c
	
	movlw	0FFh
	addwfc	(??___fladd+0+3)^00h,c,w
	movwf	3+((c:___fladd@b))^00h,c
	line	155
	movlw	(080h)&0ffh
	xorwf	((c:___fladd@signs))^00h,c
	line	156
	
l3191:
	negf	((c:___fladd@grs))^00h,c
	line	157
	
l3193:
	movf	((c:___fladd@grs))^00h,c,w
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l991
u2910:
	line	158
	
l3195:
	movlw	low(01h)
	addwf	((c:___fladd@b))^00h,c
	movlw	0
	addwfc	((c:___fladd@b+1))^00h,c
	addwfc	((c:___fladd@b+2))^00h,c
	addwfc	((c:___fladd@b+3))^00h,c
	goto	l991
	line	162
	
l3197:
	movf	((c:___fladd@a))^00h,c,w
	subwf	((c:___fladd@b))^00h,c
	movf	((c:___fladd@a+1))^00h,c,w
	subwfb	((c:___fladd@b+1))^00h,c
	movf	((c:___fladd@a+2))^00h,c,w
	subwfb	((c:___fladd@b+2))^00h,c
	movf	((c:___fladd@a+3))^00h,c,w
	subwfb	((c:___fladd@b+3))^00h,c
	line	163
	
l991:
	line	166
	movf	((c:___fladd@b))^00h,c,w
iorwf	((c:___fladd@b+1))^00h,c,w
iorwf	((c:___fladd@b+2))^00h,c,w
iorwf	((c:___fladd@b+3))^00h,c,w
	btfss	status,2
	goto	u2921
	goto	u2920

u2921:
	goto	l3221
u2920:
	
l3199:
	movf	((c:___fladd@grs))^00h,c,w
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l3221
u2930:
	line	167
	
l3201:
	movlw	low(normalize32(0x0))
	movwf	((c:?___fladd))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___fladd+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___fladd+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___fladd+3))^00h,c
	goto	l983
	line	172
	
l3205:
	bcf	status,0
	rlcf	((c:___fladd@b))^00h,c
	rlcf	((c:___fladd@b+1))^00h,c
	rlcf	((c:___fladd@b+2))^00h,c
	rlcf	((c:___fladd@b+3))^00h,c
	line	173
	
l3207:
	
	btfss	((c:___fladd@grs))^00h,c,(7)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l3211
u2940:
	line	174
	
l3209:
	bsf	(0+(0/8)+(c:___fladd@b))^00h,c,(0)&7
	line	176
	
l3211:
	
	btfss	((c:___fladd@grs))^00h,c,(0)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l3215
u2950:
	line	177
	
l3213:
	bsf	status,0
	
	rlcf	((c:___fladd@grs))^00h,c
	line	178
	goto	l3217
	line	180
	
l3215:
	bcf status,0
	rlcf	((c:___fladd@grs))^00h,c

	line	182
	
l3217:
	movf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l3221
u2960:
	line	183
	
l3219:
	decf	((c:___fladd@bexp))^00h,c
	line	171
	
l3221:
	
	btfss	((c:___fladd@b+2))^00h,c,(23)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l3205
u2970:
	line	192
	
l3223:
	movlw	low(0)
	movwf	((c:___fladd@aexp))^00h,c
	line	193
	
l3225:
	
	btfss	((c:___fladd@grs))^00h,c,(7)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l1000
u2980:
	line	194
	
l3227:
	movff	(c:___fladd@grs),??___fladd+0+0
	movlw	07Fh
	andwf	(??___fladd+0+0)^00h,c
	btfsc	status,2
	goto	u2991
	goto	u2990
u2991:
	goto	l1001
u2990:
	line	195
	
l3229:
	movlw	low(01h)
	movwf	((c:___fladd@aexp))^00h,c
	line	196
	goto	l1000
	line	197
	
l1001:
	line	198
	
	btfss	((c:___fladd@b))^00h,c,(0)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l1000
u3000:
	goto	l3229
	line	202
	
l1000:
	line	203
	movf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l3241
u3010:
	line	204
	
l3233:
	movlw	low(01h)
	addwf	((c:___fladd@b))^00h,c
	movlw	0
	addwfc	((c:___fladd@b+1))^00h,c
	addwfc	((c:___fladd@b+2))^00h,c
	addwfc	((c:___fladd@b+3))^00h,c
	line	205
	
l3235:
	
	btfss	((c:___fladd@b+3))^00h,c,(24)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l3241
u3020:
	line	206
	
l3237:
	movff	(c:___fladd@b),??___fladd+0+0
	movff	(c:___fladd@b+1),??___fladd+0+0+1
	movff	(c:___fladd@b+2),??___fladd+0+0+2
	movff	(c:___fladd@b+3),??___fladd+0+0+3
	rlcf	(??___fladd+0+3)^00h,c,w
	rrcf	(??___fladd+0+3)^00h,c
	rrcf	(??___fladd+0+2)^00h,c
	rrcf	(??___fladd+0+1)^00h,c
	rrcf	(??___fladd+0+0)^00h,c
	movff	??___fladd+0+0,(c:___fladd@b)
	movff	??___fladd+0+1,(c:___fladd@b+1)
	movff	??___fladd+0+2,(c:___fladd@b+2)
	movff	??___fladd+0+3,(c:___fladd@b+3)
	line	207
		incf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u3031
	goto	u3030

u3031:
	goto	l3241
u3030:
	line	208
	
l3239:
	incf	((c:___fladd@bexp))^00h,c
	line	215
	
l3241:
		incf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u3041
	goto	u3040

u3041:
	goto	l3245
u3040:
	
l3243:
	movf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u3051
	goto	u3050
u3051:
	goto	l3249
u3050:
	line	216
	
l3245:
	movlw	low(0)
	movwf	((c:___fladd@b))^00h,c
	movlw	high(0)
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fladd@b+3))^00h,c
	line	218
	movf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l3249
u3060:
	line	219
	
l3247:
	movlw	low(0)
	movwf	((c:___fladd@signs))^00h,c
	line	225
	
l3249:
	
	btfss	((c:___fladd@bexp))^00h,c,(0)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l3253
u3070:
	line	226
	
l3251:
	bsf	(0+(7/8)+0+((c:___fladd@b)+02h))^00h,c,(7)&7
	line	227
	goto	l3255
	line	230
	
l3253:
	bcf	(0+(7/8)+0+((c:___fladd@b)+02h))^00h,c,(7)&7
	line	232
	
l3255:
	bcf	status,0
	rrcf	((c:___fladd@bexp))^00h,c,w
	movwf	(0+((c:___fladd@b)+03h))^00h,c
	line	233
	
l3257:
	
	btfss	((c:___fladd@signs))^00h,c,(7)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l3261
u3080:
	line	234
	
l3259:
	bsf	(0+(7/8)+0+((c:___fladd@b)+03h))^00h,c,(7)&7
	line	236
	
l3261:
	movff	(c:___fladd@b),(c:?___fladd)
	movff	(c:___fladd@b+1),(c:?___fladd+1)
	movff	(c:___fladd@b+2),(c:?___fladd+2)
	movff	(c:___fladd@b+3),(c:?___fladd+3)
	line	237
	
l983:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	_SYSTEM_Initialize

;; *************** function _SYSTEM_Initialize *****************
;; Defined at:
;;		line 50 in file "mcc_generated_files/mcc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_ADC_Initialize
;;		_EUSART1_Initialize
;;		_INTERRUPT_Initialize
;;		_OSCILLATOR_Initialize
;;		_PIN_MANAGER_Initialize
;;		_TMR0_Initialize
;;		_TMR5_Initialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/mcc.c"
	line	50
global __ptext10
__ptext10:
psect	text10
	file	"mcc_generated_files/mcc.c"
	line	50
	
_SYSTEM_Initialize:
;incstack = 0
	callstack 25
	line	53
	
l3595:
;mcc_generated_files/mcc.c: 53:     INTERRUPT_Initialize();
	call	_INTERRUPT_Initialize	;wreg free
	line	54
	
l3597:
;mcc_generated_files/mcc.c: 54:     PIN_MANAGER_Initialize();
	call	_PIN_MANAGER_Initialize	;wreg free
	line	55
	
l3599:
;mcc_generated_files/mcc.c: 55:     OSCILLATOR_Initialize();
	call	_OSCILLATOR_Initialize	;wreg free
	line	56
	
l3601:
;mcc_generated_files/mcc.c: 56:     TMR5_Initialize();
	call	_TMR5_Initialize	;wreg free
	line	57
	
l3603:
;mcc_generated_files/mcc.c: 57:     TMR0_Initialize();
	call	_TMR0_Initialize	;wreg free
	line	58
	
l3605:
;mcc_generated_files/mcc.c: 58:     ADC_Initialize();
	call	_ADC_Initialize	;wreg free
	line	59
	
l3607:
;mcc_generated_files/mcc.c: 59:     EUSART1_Initialize();
	call	_EUSART1_Initialize	;wreg free
	line	60
	
l37:
	return	;funcret
	callstack 0
GLOBAL	__end_of_SYSTEM_Initialize
	__end_of_SYSTEM_Initialize:
	signat	_SYSTEM_Initialize,89
	global	_TMR5_Initialize

;; *************** function _TMR5_Initialize *****************
;; Defined at:
;;		line 64 in file "mcc_generated_files/tmr5.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_TMR5_SetInterruptHandler
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/tmr5.c"
	line	64
global __ptext11
__ptext11:
psect	text11
	file	"mcc_generated_files/tmr5.c"
	line	64
	
_TMR5_Initialize:
;incstack = 0
	callstack 25
	line	69
	
l2949:
;mcc_generated_files/tmr5.c: 69:     T5GCON = 0x00;
	movlw	low(0)
	movwf	((c:3962))^0f00h,c	;volatile
	line	72
;mcc_generated_files/tmr5.c: 72:     TMR5H = 0xF9;
	movlw	low(0F9h)
	movwf	((c:3965))^0f00h,c	;volatile
	line	75
;mcc_generated_files/tmr5.c: 75:     TMR5L = 0xC0;
	movlw	low(0C0h)
	movwf	((c:3964))^0f00h,c	;volatile
	line	78
	
l2951:
;mcc_generated_files/tmr5.c: 78:     PIR5bits.TMR5IF = 0;
	bcf	((c:4026))^0f00h,c,1	;volatile
	line	81
	
l2953:
;mcc_generated_files/tmr5.c: 81:     timer5ReloadVal=(uint16_t)((TMR5H << 8) | TMR5L);
	movf	((c:3964))^0f00h,c,w	;volatile
	movff	(c:3965),??_TMR5_Initialize+0+0	;volatile
	clrf	(??_TMR5_Initialize+0+0+1)^00h,c
	movff	??_TMR5_Initialize+0+0,??_TMR5_Initialize+0+1
	clrf	(??_TMR5_Initialize+0+0)^00h,c
	iorwf	(??_TMR5_Initialize+0+0)^00h,c,w
	movwf	((c:_timer5ReloadVal))^00h,c	;volatile
	movf	(??_TMR5_Initialize+0+1)^00h,c,w
	movwf	1+((c:_timer5ReloadVal))^00h,c	;volatile
	line	84
	
l2955:
;mcc_generated_files/tmr5.c: 84:     PIE5bits.TMR5IE = 1;
	bsf	((c:4025))^0f00h,c,1	;volatile
	line	87
	
l2957:
;mcc_generated_files/tmr5.c: 87:     TMR5_SetInterruptHandler(TMR5_DefaultInterruptHandler);
		movlw	low(_TMR5_DefaultInterruptHandler)
	movwf	((c:TMR5_SetInterruptHandler@InterruptHandler))^00h,c
	movlw	high(_TMR5_DefaultInterruptHandler)
	movwf	((c:TMR5_SetInterruptHandler@InterruptHandler+1))^00h,c
	movlw	low highword(_TMR5_DefaultInterruptHandler)
	movwf	((c:TMR5_SetInterruptHandler@InterruptHandler+2))^00h,c

	call	_TMR5_SetInterruptHandler	;wreg free
	line	90
	
l2959:
;mcc_generated_files/tmr5.c: 90:     T5CON = 0x01;
	movlw	low(01h)
	movwf	((c:3963))^0f00h,c	;volatile
	line	91
	
l163:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR5_Initialize
	__end_of_TMR5_Initialize:
	signat	_TMR5_Initialize,89
	global	_TMR5_SetInterruptHandler

;; *************** function _TMR5_SetInterruptHandler *****************
;; Defined at:
;;		line 171 in file "mcc_generated_files/tmr5.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    4[COMRAM] PTR FTN()void 
;;		 -> TMR5_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR5_Initialize
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	line	171
global __ptext12
__ptext12:
psect	text12
	file	"mcc_generated_files/tmr5.c"
	line	171
	
_TMR5_SetInterruptHandler:
;incstack = 0
	callstack 25
	line	172
	
l2919:
;mcc_generated_files/tmr5.c: 172:     TMR5_InterruptHandler = InterruptHandler;
		movff	(c:TMR5_SetInterruptHandler@InterruptHandler),(c:_TMR5_InterruptHandler)
	movff	(c:TMR5_SetInterruptHandler@InterruptHandler+1),(c:_TMR5_InterruptHandler+1)
	movff	(c:TMR5_SetInterruptHandler@InterruptHandler+2),(c:_TMR5_InterruptHandler+2)

	line	173
	
l193:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR5_SetInterruptHandler
	__end_of_TMR5_SetInterruptHandler:
	signat	_TMR5_SetInterruptHandler,4217
	global	_TMR0_Initialize

;; *************** function _TMR0_Initialize *****************
;; Defined at:
;;		line 67 in file "mcc_generated_files/tmr0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_TMR0_SetInterruptHandler
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/tmr0.c"
	line	67
global __ptext13
__ptext13:
psect	text13
	file	"mcc_generated_files/tmr0.c"
	line	67
	
_TMR0_Initialize:
;incstack = 0
	callstack 25
	line	72
	
l2961:
;mcc_generated_files/tmr0.c: 72:     T0CONbits.T08BIT = 0;
	bcf	((c:4053))^0f00h,c,6	;volatile
	line	75
	
l2963:
;mcc_generated_files/tmr0.c: 75:     TMR0H = 0xE0;
	movlw	low(0E0h)
	movwf	((c:4055))^0f00h,c	;volatile
	line	78
;mcc_generated_files/tmr0.c: 78:     TMR0L = 0xBF;
	movlw	low(0BFh)
	movwf	((c:4054))^0f00h,c	;volatile
	line	82
	
l2965:
;mcc_generated_files/tmr0.c: 82:     timer0ReloadVal = (uint16_t)((TMR0H << 8) | TMR0L);
	movf	((c:4054))^0f00h,c,w	;volatile
	movff	(c:4055),??_TMR0_Initialize+0+0	;volatile
	clrf	(??_TMR0_Initialize+0+0+1)^00h,c
	movff	??_TMR0_Initialize+0+0,??_TMR0_Initialize+0+1
	clrf	(??_TMR0_Initialize+0+0)^00h,c
	iorwf	(??_TMR0_Initialize+0+0)^00h,c,w
	movwf	((c:_timer0ReloadVal))^00h,c	;volatile
	movf	(??_TMR0_Initialize+0+1)^00h,c,w
	movwf	1+((c:_timer0ReloadVal))^00h,c	;volatile
	line	85
	
l2967:
;mcc_generated_files/tmr0.c: 85:     INTCONbits.TMR0IF = 0;
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	88
	
l2969:
;mcc_generated_files/tmr0.c: 88:     INTCONbits.TMR0IE = 1;
	bsf	((c:4082))^0f00h,c,5	;volatile
	line	91
	
l2971:
;mcc_generated_files/tmr0.c: 91:     TMR0_SetInterruptHandler(TMR0_DefaultInterruptHandler);
		movlw	low(_TMR0_DefaultInterruptHandler)
	movwf	((c:TMR0_SetInterruptHandler@InterruptHandler))^00h,c
	movlw	high(_TMR0_DefaultInterruptHandler)
	movwf	((c:TMR0_SetInterruptHandler@InterruptHandler+1))^00h,c
	movlw	low highword(_TMR0_DefaultInterruptHandler)
	movwf	((c:TMR0_SetInterruptHandler@InterruptHandler+2))^00h,c

	call	_TMR0_SetInterruptHandler	;wreg free
	line	94
	
l2973:
;mcc_generated_files/tmr0.c: 94:     T0CON = 0x9F;
	movlw	low(09Fh)
	movwf	((c:4053))^0f00h,c	;volatile
	line	95
	
l264:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR0_Initialize
	__end_of_TMR0_Initialize:
	signat	_TMR0_Initialize,89
	global	_TMR0_SetInterruptHandler

;; *************** function _TMR0_SetInterruptHandler *****************
;; Defined at:
;;		line 156 in file "mcc_generated_files/tmr0.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    4[COMRAM] PTR FTN()void 
;;		 -> TMR0_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR0_Initialize
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	line	156
global __ptext14
__ptext14:
psect	text14
	file	"mcc_generated_files/tmr0.c"
	line	156
	
_TMR0_SetInterruptHandler:
;incstack = 0
	callstack 25
	line	157
	
l2921:
;mcc_generated_files/tmr0.c: 157:     TMR0_InterruptHandler = InterruptHandler;
		movff	(c:TMR0_SetInterruptHandler@InterruptHandler),(c:_TMR0_InterruptHandler)
	movff	(c:TMR0_SetInterruptHandler@InterruptHandler+1),(c:_TMR0_InterruptHandler+1)
	movff	(c:TMR0_SetInterruptHandler@InterruptHandler+2),(c:_TMR0_InterruptHandler+2)

	line	158
	
l286:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR0_SetInterruptHandler
	__end_of_TMR0_SetInterruptHandler:
	signat	_TMR0_SetInterruptHandler,4217
	global	_PIN_MANAGER_Initialize

;; *************** function _PIN_MANAGER_Initialize *****************
;; Defined at:
;;		line 55 in file "mcc_generated_files/pin_manager.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/pin_manager.c"
	line	55
global __ptext15
__ptext15:
psect	text15
	file	"mcc_generated_files/pin_manager.c"
	line	55
	
_PIN_MANAGER_Initialize:
;incstack = 0
	callstack 26
	line	60
	
l2931:
;mcc_generated_files/pin_manager.c: 60:     LATE = 0x00;
	movlw	low(0)
	movwf	((c:3981))^0f00h,c	;volatile
	line	61
;mcc_generated_files/pin_manager.c: 61:     LATD = 0x00;
	movlw	low(0)
	movwf	((c:3980))^0f00h,c	;volatile
	line	62
;mcc_generated_files/pin_manager.c: 62:     LATA = 0x00;
	movlw	low(0)
	movwf	((c:3977))^0f00h,c	;volatile
	line	63
;mcc_generated_files/pin_manager.c: 63:     LATF = 0x00;
	movlw	low(0)
	movwf	((c:3982))^0f00h,c	;volatile
	line	64
;mcc_generated_files/pin_manager.c: 64:     LATB = 0x00;
	movlw	low(0)
	movwf	((c:3978))^0f00h,c	;volatile
	line	65
;mcc_generated_files/pin_manager.c: 65:     LATG = 0x00;
	movlw	low(0)
	movwf	((c:3983))^0f00h,c	;volatile
	line	66
;mcc_generated_files/pin_manager.c: 66:     LATC = 0x00;
	movlw	low(0)
	movwf	((c:3979))^0f00h,c	;volatile
	line	67
;mcc_generated_files/pin_manager.c: 67:     LATH = 0x00;
	movlw	low(0)
	movwf	((c:3984))^0f00h,c	;volatile
	line	72
	
l2933:
;mcc_generated_files/pin_manager.c: 72:     TRISE = 0xFF;
	setf	((c:3990))^0f00h,c	;volatile
	line	73
;mcc_generated_files/pin_manager.c: 73:     TRISF = 0xFE;
	movlw	low(0FEh)
	movwf	((c:3991))^0f00h,c	;volatile
	line	74
	
l2935:
;mcc_generated_files/pin_manager.c: 74:     TRISA = 0xFF;
	setf	((c:3986))^0f00h,c	;volatile
	line	75
;mcc_generated_files/pin_manager.c: 75:     TRISG = 0x1F;
	movlw	low(01Fh)
	movwf	((c:3992))^0f00h,c	;volatile
	line	76
;mcc_generated_files/pin_manager.c: 76:     TRISB = 0xFE;
	movlw	low(0FEh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	77
	
l2937:
;mcc_generated_files/pin_manager.c: 77:     TRISH = 0xFF;
	setf	((c:3993))^0f00h,c	;volatile
	line	78
;mcc_generated_files/pin_manager.c: 78:     TRISC = 0xBF;
	movlw	low(0BFh)
	movwf	((c:3988))^0f00h,c	;volatile
	line	79
	
l2939:
;mcc_generated_files/pin_manager.c: 79:     TRISD = 0xFF;
	setf	((c:3989))^0f00h,c	;volatile
	line	84
	
l2941:
;mcc_generated_files/pin_manager.c: 84:     ANCON0 = 0xFF;
	movlb	15	; () banked
	setf	((3877))&0ffh	;volatile
	line	85
	
l2943:; BSR set to: 15

;mcc_generated_files/pin_manager.c: 85:     ANCON1 = 0xFF;
	setf	((3876))&0ffh	;volatile
	line	86
	
l2945:; BSR set to: 15

;mcc_generated_files/pin_manager.c: 86:     ANCON2 = 0xFF;
	setf	((3875))&0ffh	;volatile
	line	99
	
l121:; BSR set to: 15

	return	;funcret
	callstack 0
GLOBAL	__end_of_PIN_MANAGER_Initialize
	__end_of_PIN_MANAGER_Initialize:
	signat	_PIN_MANAGER_Initialize,89
	global	_OSCILLATOR_Initialize

;; *************** function _OSCILLATOR_Initialize *****************
;; Defined at:
;;		line 62 in file "mcc_generated_files/mcc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/mcc.c"
	line	62
global __ptext16
__ptext16:
psect	text16
	file	"mcc_generated_files/mcc.c"
	line	62
	
_OSCILLATOR_Initialize:; BSR set to: 15

;incstack = 0
	callstack 26
	line	65
	
l2947:
;mcc_generated_files/mcc.c: 65:     OSCCON = 0x60;
	movlw	low(060h)
	movwf	((c:4051))^0f00h,c	;volatile
	line	67
;mcc_generated_files/mcc.c: 67:     OSCCON2 = 0x00;
	movlw	low(0)
	movwf	((c:3940))^0f00h,c	;volatile
	line	69
;mcc_generated_files/mcc.c: 69:     OSCTUNE = 0x00;
	movlw	low(0)
	movwf	((c:3995))^0f00h,c	;volatile
	line	71
;mcc_generated_files/mcc.c: 71:     REFOCON = 0x00;
	movlw	low(0)
	movlb	15	; () banked
	movwf	((3882))&0ffh	;volatile
	line	72
	
l40:; BSR set to: 15

	return	;funcret
	callstack 0
GLOBAL	__end_of_OSCILLATOR_Initialize
	__end_of_OSCILLATOR_Initialize:
	signat	_OSCILLATOR_Initialize,89
	global	_INTERRUPT_Initialize

;; *************** function _INTERRUPT_Initialize *****************
;; Defined at:
;;		line 52 in file "mcc_generated_files/interrupt_manager.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/interrupt_manager.c"
	line	52
global __ptext17
__ptext17:
psect	text17
	file	"mcc_generated_files/interrupt_manager.c"
	line	52
	
_INTERRUPT_Initialize:; BSR set to: 15

;incstack = 0
	callstack 26
	line	55
	
l2929:
;mcc_generated_files/interrupt_manager.c: 55:     RCONbits.IPEN = 0;
	bcf	((c:4048))^0f00h,c,7	;volatile
	line	56
	
l67:
	return	;funcret
	callstack 0
GLOBAL	__end_of_INTERRUPT_Initialize
	__end_of_INTERRUPT_Initialize:
	signat	_INTERRUPT_Initialize,89
	global	_EUSART1_Initialize

;; *************** function _EUSART1_Initialize *****************
;; Defined at:
;;		line 66 in file "mcc_generated_files/eusart1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_EUSART1_SetErrorHandler
;;		_EUSART1_SetFramingErrorHandler
;;		_EUSART1_SetOverrunErrorHandler
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/eusart1.c"
	line	66
global __ptext18
__ptext18:
psect	text18
	file	"mcc_generated_files/eusart1.c"
	line	66
	
_EUSART1_Initialize:
;incstack = 0
	callstack 25
	line	71
	
l2977:
;mcc_generated_files/eusart1.c: 71:     BAUDCON1 = 0x48;
	movlw	low(048h)
	movwf	((c:3941))^0f00h,c	;volatile
	line	74
;mcc_generated_files/eusart1.c: 74:     RCSTA1 = 0x90;
	movlw	low(090h)
	movwf	((c:4011))^0f00h,c	;volatile
	line	77
;mcc_generated_files/eusart1.c: 77:     TXSTA1 = 0x24;
	movlw	low(024h)
	movwf	((c:4012))^0f00h,c	;volatile
	line	80
;mcc_generated_files/eusart1.c: 80:     SPBRG1 = 0x40;
	movlw	low(040h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	83
;mcc_generated_files/eusart1.c: 83:     SPBRGH1 = 0x03;
	movlw	low(03h)
	movwf	((c:4052))^0f00h,c	;volatile
	line	86
	
l2979:
;mcc_generated_files/eusart1.c: 86:     EUSART1_SetFramingErrorHandler(EUSART1_DefaultFramingErrorHandler);
		movlw	low(_EUSART1_DefaultFramingErrorHandler)
	movwf	((c:EUSART1_SetFramingErrorHandler@interruptHandler))^00h,c
	movlw	high(_EUSART1_DefaultFramingErrorHandler)
	movwf	((c:EUSART1_SetFramingErrorHandler@interruptHandler+1))^00h,c
	movlw	low highword(_EUSART1_DefaultFramingErrorHandler)
	movwf	((c:EUSART1_SetFramingErrorHandler@interruptHandler+2))^00h,c

	call	_EUSART1_SetFramingErrorHandler	;wreg free
	line	87
	
l2981:
;mcc_generated_files/eusart1.c: 87:     EUSART1_SetOverrunErrorHandler(EUSART1_DefaultOverrunErrorHandler);
		movlw	low(_EUSART1_DefaultOverrunErrorHandler)
	movwf	((c:EUSART1_SetOverrunErrorHandler@interruptHandler))^00h,c
	movlw	high(_EUSART1_DefaultOverrunErrorHandler)
	movwf	((c:EUSART1_SetOverrunErrorHandler@interruptHandler+1))^00h,c
	movlw	low highword(_EUSART1_DefaultOverrunErrorHandler)
	movwf	((c:EUSART1_SetOverrunErrorHandler@interruptHandler+2))^00h,c

	call	_EUSART1_SetOverrunErrorHandler	;wreg free
	line	88
	
l2983:
;mcc_generated_files/eusart1.c: 88:     EUSART1_SetErrorHandler(EUSART1_DefaultErrorHandler);
		movlw	low(_EUSART1_DefaultErrorHandler)
	movwf	((c:EUSART1_SetErrorHandler@interruptHandler))^00h,c
	movlw	high(_EUSART1_DefaultErrorHandler)
	movwf	((c:EUSART1_SetErrorHandler@interruptHandler+1))^00h,c
	movlw	low highword(_EUSART1_DefaultErrorHandler)
	movwf	((c:EUSART1_SetErrorHandler@interruptHandler+2))^00h,c

	call	_EUSART1_SetErrorHandler	;wreg free
	line	90
	
l2985:
;mcc_generated_files/eusart1.c: 90:     eusart1RxLastError.status = 0;
	movlw	low(0)
	movwf	((c:_eusart1RxLastError))^00h,c	;volatile
	line	92
	
l332:
	return	;funcret
	callstack 0
GLOBAL	__end_of_EUSART1_Initialize
	__end_of_EUSART1_Initialize:
	signat	_EUSART1_Initialize,89
	global	_EUSART1_SetOverrunErrorHandler

;; *************** function _EUSART1_SetOverrunErrorHandler *****************
;; Defined at:
;;		line 170 in file "mcc_generated_files/eusart1.c"
;; Parameters:    Size  Location     Type
;;  interruptHan    3    4[COMRAM] PTR FTN()void 
;;		 -> EUSART1_DefaultOverrunErrorHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EUSART1_Initialize
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	line	170
global __ptext19
__ptext19:
psect	text19
	file	"mcc_generated_files/eusart1.c"
	line	170
	
_EUSART1_SetOverrunErrorHandler:
;incstack = 0
	callstack 25
	line	171
	
l2925:
;mcc_generated_files/eusart1.c: 171:     EUSART1_OverrunErrorHandler = interruptHandler;
		movff	(c:EUSART1_SetOverrunErrorHandler@interruptHandler),(_EUSART1_OverrunErrorHandler)
	movff	(c:EUSART1_SetOverrunErrorHandler@interruptHandler+1),(_EUSART1_OverrunErrorHandler+1)
	movff	(c:EUSART1_SetOverrunErrorHandler@interruptHandler+2),(_EUSART1_OverrunErrorHandler+2)

	line	172
	
l380:
	return	;funcret
	callstack 0
GLOBAL	__end_of_EUSART1_SetOverrunErrorHandler
	__end_of_EUSART1_SetOverrunErrorHandler:
	signat	_EUSART1_SetOverrunErrorHandler,4217
	global	_EUSART1_SetFramingErrorHandler

;; *************** function _EUSART1_SetFramingErrorHandler *****************
;; Defined at:
;;		line 166 in file "mcc_generated_files/eusart1.c"
;; Parameters:    Size  Location     Type
;;  interruptHan    3    4[COMRAM] PTR FTN()void 
;;		 -> EUSART1_DefaultFramingErrorHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EUSART1_Initialize
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	line	166
global __ptext20
__ptext20:
psect	text20
	file	"mcc_generated_files/eusart1.c"
	line	166
	
_EUSART1_SetFramingErrorHandler:
;incstack = 0
	callstack 25
	line	167
	
l2923:
;mcc_generated_files/eusart1.c: 167:     EUSART1_FramingErrorHandler = interruptHandler;
		movff	(c:EUSART1_SetFramingErrorHandler@interruptHandler),(_EUSART1_FramingErrorHandler)
	movff	(c:EUSART1_SetFramingErrorHandler@interruptHandler+1),(_EUSART1_FramingErrorHandler+1)
	movff	(c:EUSART1_SetFramingErrorHandler@interruptHandler+2),(_EUSART1_FramingErrorHandler+2)

	line	168
	
l377:
	return	;funcret
	callstack 0
GLOBAL	__end_of_EUSART1_SetFramingErrorHandler
	__end_of_EUSART1_SetFramingErrorHandler:
	signat	_EUSART1_SetFramingErrorHandler,4217
	global	_EUSART1_SetErrorHandler

;; *************** function _EUSART1_SetErrorHandler *****************
;; Defined at:
;;		line 174 in file "mcc_generated_files/eusart1.c"
;; Parameters:    Size  Location     Type
;;  interruptHan    3    4[COMRAM] PTR FTN()void 
;;		 -> EUSART1_DefaultErrorHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EUSART1_Initialize
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	line	174
global __ptext21
__ptext21:
psect	text21
	file	"mcc_generated_files/eusart1.c"
	line	174
	
_EUSART1_SetErrorHandler:
;incstack = 0
	callstack 25
	line	175
	
l2927:
;mcc_generated_files/eusart1.c: 175:     EUSART1_ErrorHandler = interruptHandler;
		movff	(c:EUSART1_SetErrorHandler@interruptHandler),(_EUSART1_ErrorHandler)
	movff	(c:EUSART1_SetErrorHandler@interruptHandler+1),(_EUSART1_ErrorHandler+1)
	movff	(c:EUSART1_SetErrorHandler@interruptHandler+2),(_EUSART1_ErrorHandler+2)

	line	176
	
l383:
	return	;funcret
	callstack 0
GLOBAL	__end_of_EUSART1_SetErrorHandler
	__end_of_EUSART1_SetErrorHandler:
	signat	_EUSART1_SetErrorHandler,4217
	global	_ADC_Initialize

;; *************** function _ADC_Initialize *****************
;; Defined at:
;;		line 62 in file "mcc_generated_files/adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/adc.c"
	line	62
global __ptext22
__ptext22:
psect	text22
	file	"mcc_generated_files/adc.c"
	line	62
	
_ADC_Initialize:
;incstack = 0
	callstack 26
	line	67
	
l2975:
;mcc_generated_files/adc.c: 67:     ADCON0 = 0x01;
	movlw	low(01h)
	movwf	((c:4034))^0f00h,c	;volatile
	line	70
;mcc_generated_files/adc.c: 70:     ADCON1 = 0x80;
	movlw	low(080h)
	movwf	((c:4033))^0f00h,c	;volatile
	line	73
;mcc_generated_files/adc.c: 73:     ADCON2 = 0xBE;
	movlw	low(0BEh)
	movwf	((c:4032))^0f00h,c	;volatile
	line	76
;mcc_generated_files/adc.c: 76:     ADRESH = 0x00;
	movlw	low(0)
	movwf	((c:4036))^0f00h,c	;volatile
	line	79
;mcc_generated_files/adc.c: 79:     ADRESL = 0x00;
	movlw	low(0)
	movwf	((c:4035))^0f00h,c	;volatile
	line	81
	
l223:
	return	;funcret
	callstack 0
GLOBAL	__end_of_ADC_Initialize
	__end_of_ADC_Initialize:
	signat	_ADC_Initialize,89
	global	_EUSART1_Write

;; *************** function _EUSART1_Write *****************
;; Defined at:
;;		line 132 in file "mcc_generated_files/eusart1.c"
;; Parameters:    Size  Location     Type
;;  txData          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  txData          1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/eusart1.c"
	line	132
global __ptext23
__ptext23:
psect	text23
	file	"mcc_generated_files/eusart1.c"
	line	132
	
_EUSART1_Write:
;incstack = 0
	callstack 27
;EUSART1_Write@txData stored from wreg
	movwf	((c:EUSART1_Write@txData))^00h,c
	line	134
	
l3609:
	line	136
;mcc_generated_files/eusart1.c: 135:     {;mcc_generated_files/eusart1.c: 136:     }
	
l356:
	line	134
;mcc_generated_files/eusart1.c: 134:     while(0 == PIR1bits.TX1IF)
	btfss	((c:3998))^0f00h,c,4	;volatile
	goto	u3641
	goto	u3640
u3641:
	goto	l356
u3640:
	line	138
	
l3611:
;mcc_generated_files/eusart1.c: 138:     TXREG1 = txData;
	movff	(c:EUSART1_Write@txData),(c:4013)	;volatile
	line	139
	
l359:
	return	;funcret
	callstack 0
GLOBAL	__end_of_EUSART1_Write
	__end_of_EUSART1_Write:
	signat	_EUSART1_Write,4217
	global	_AveregeFilter

;; *************** function _AveregeFilter *****************
;; Defined at:
;;		line 70 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   19[COMRAM] unsigned char 
;;  sum             4   15[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] unsigned short 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	70
global __ptext24
__ptext24:
psect	text24
	file	"main.c"
	line	70
	
_AveregeFilter:
;incstack = 0
	callstack 26
	line	72
	
l3623:
;main.c: 72:     uint32_t sum = 0;
	movlw	low(0)
	movwf	((c:AveregeFilter@sum))^00h,c
	movlw	high(0)
	movwf	((c:AveregeFilter@sum+1))^00h,c
	movlw	low highword(0)
	movwf	((c:AveregeFilter@sum+2))^00h,c
	movlw	high highword(0)
	movwf	((c:AveregeFilter@sum+3))^00h,c
	line	73
;main.c: 73:     for(uint8_t i=0; i<128; i++){
	movlw	low(0)
	movwf	((c:AveregeFilter@i))^00h,c
	line	74
	
l3629:
;main.c: 74:         sum += circularBuffer[(bufferIndex - i + 1800) % 1800];
	movf	((c:AveregeFilter@i))^00h,c,w
	subwf	((c:_bufferIndex))^00h,c,w
	movwf	(??_AveregeFilter+0+0)^00h,c
	movlw	0
	subwfb	((c:_bufferIndex+1))^00h,c,w
	movwf	(??_AveregeFilter+0+0+1)^00h,c
	movlw	low(0708h)
	addwf	(??_AveregeFilter+0+0)^00h,c,w
	movwf	((c:___lwmod@dividend))^00h,c
	movlw	high(0708h)
	addwfc	(??_AveregeFilter+0+1)^00h,c,w
	movwf	1+((c:___lwmod@dividend))^00h,c
	movlw	high(0708h)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0708h)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	bcf	status,0
	rlcf	(0+?___lwmod)^00h,c,f
	rlcf	(1+?___lwmod)^00h,c,f
	movlw	low(_circularBuffer)
	addwf	(0+?___lwmod)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_circularBuffer)
	addwfc	(1+?___lwmod)^00h,c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_AveregeFilter+2+0
	movff	postdec2,??_AveregeFilter+2+0+1
	movf	(??_AveregeFilter+2+0)^00h,c,w
	addwf	((c:AveregeFilter@sum))^00h,c
	movf	(??_AveregeFilter+2+1)^00h,c,w
	addwfc	((c:AveregeFilter@sum+1))^00h,c
	movlw	0
	addwfc	((c:AveregeFilter@sum+2))^00h,c
	movlw	0
	addwfc	((c:AveregeFilter@sum+3))^00h,c

	line	76
	
l3631:
;main.c: 76:     }
	incf	((c:AveregeFilter@i))^00h,c
	
l3633:
		movlw	080h-1
	cpfsgt	((c:AveregeFilter@i))^00h,c
	goto	u3661
	goto	u3660

u3661:
	goto	l3629
u3660:
	line	77
	
l3635:
;main.c: 77:     return (uint16_t)(sum/128);
	movff	(c:AveregeFilter@sum),??_AveregeFilter+0+0
	movff	(c:AveregeFilter@sum+1),??_AveregeFilter+0+0+1
	movff	(c:AveregeFilter@sum+2),??_AveregeFilter+0+0+2
	movff	(c:AveregeFilter@sum+3),??_AveregeFilter+0+0+3
	movlw	07h+1
	goto	u3670
u3675:
	bcf	status,0
	rrcf	(??_AveregeFilter+0+3)^00h,c
	rrcf	(??_AveregeFilter+0+2)^00h,c
	rrcf	(??_AveregeFilter+0+1)^00h,c
	rrcf	(??_AveregeFilter+0+0)^00h,c
u3670:
	decfsz	wreg
	goto	u3675
	movff	??_AveregeFilter+0+0,(c:?_AveregeFilter)
	movff	??_AveregeFilter+0+1,(c:?_AveregeFilter+1)
	line	79
	
l422:
	return	;funcret
	callstack 0
GLOBAL	__end_of_AveregeFilter
	__end_of_AveregeFilter:
	signat	_AveregeFilter,90
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    4[COMRAM] unsigned int 
;;  divisor         2    6[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sampleSignal
;;		_AveregeFilter
;;		_StandardDev
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\lwmod.c"
	line	7
global __ptext25
__ptext25:
psect	text25
	file	"C:\Program Files\Microchip\xc8\v2.45\pic\sources\c99\common\lwmod.c"
	line	7
	
___lwmod:
;incstack = 0
	callstack 26
	line	12
	
l3533:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u3511
	goto	u3510

u3511:
	goto	l947
u3510:
	line	13
	
l3535:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l3539
	line	15
	
l3537:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l3539:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l3537
u3520:
	line	19
	
l3541:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u3531
	goto	u3530

u3531:
	goto	l3545
u3530:
	line	20
	
l3543:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l3545:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l3547:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l3541
	line	23
	
l947:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l954:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	_INTERRUPT_InterruptManager

;; *************** function _INTERRUPT_InterruptManager *****************
;; Defined at:
;;		line 58 in file "mcc_generated_files/interrupt_manager.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_TMR0_ISR
;;		_TMR5_ISR
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
	file	"dist/default/production\projekat.X.production.s"
	line	#
global __pintcode
__pintcode:
psect	intcode
	file	"mcc_generated_files/interrupt_manager.c"
	line	58
	
_INTERRUPT_InterruptManager:
;incstack = 0
	callstack 25
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	movff	pclath+0,??_INTERRUPT_InterruptManager+0
	movff	pclatu+0,??_INTERRUPT_InterruptManager+1
	line	61
	
i2l2849:
;mcc_generated_files/interrupt_manager.c: 61:     if(INTCONbits.TMR0IE == 1 && INTCONbits.TMR0IF == 1)
	btfss	((c:4082))^0f00h,c,5	;volatile
	goto	i2u249_41
	goto	i2u249_40
i2u249_41:
	goto	i2l72
i2u249_40:
	
i2l2851:
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	i2u250_41
	goto	i2u250_40
i2u250_41:
	goto	i2l72
i2u250_40:
	line	63
	
i2l2853:
;mcc_generated_files/interrupt_manager.c: 62:     {;mcc_generated_files/interrupt_manager.c: 63:         TMR0_ISR();
	call	_TMR0_ISR	;wreg free
	line	64
;mcc_generated_files/interrupt_manager.c: 64:     }
	goto	i2l78
	line	65
;mcc_generated_files/interrupt_manager.c: 65:     else if(INTCONbits.PEIE == 1)
	
i2l72:
	btfss	((c:4082))^0f00h,c,6	;volatile
	goto	i2u251_41
	goto	i2u251_40
i2u251_41:
	goto	i2l78
i2u251_40:
	line	67
	
i2l2855:
;mcc_generated_files/interrupt_manager.c: 66:     {;mcc_generated_files/interrupt_manager.c: 67:         if(PIE5bits.TMR5IE == 1 && PIR5bits.TMR5IF == 1)
	btfss	((c:4025))^0f00h,c,1	;volatile
	goto	i2u252_41
	goto	i2u252_40
i2u252_41:
	goto	i2l77
i2u252_40:
	
i2l2857:
	btfss	((c:4026))^0f00h,c,1	;volatile
	goto	i2u253_41
	goto	i2u253_40
i2u253_41:
	goto	i2l77
i2u253_40:
	line	69
	
i2l2859:
;mcc_generated_files/interrupt_manager.c: 68:         {;mcc_generated_files/interrupt_manager.c: 69:             TMR5_ISR();
	call	_TMR5_ISR	;wreg free
	line	70
;mcc_generated_files/interrupt_manager.c: 70:         }
	goto	i2l78
	line	79
;mcc_generated_files/interrupt_manager.c: 77:     {;mcc_generated_files/interrupt_manager.c: 79:     }
	
i2l77:
	line	80
	
i2l78:
	movff	??_INTERRUPT_InterruptManager+1,pclatu+0
	movff	??_INTERRUPT_InterruptManager+0,pclath+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	callstack 0
GLOBAL	__end_of_INTERRUPT_InterruptManager
	__end_of_INTERRUPT_InterruptManager:
	signat	_INTERRUPT_InterruptManager,89
	global	_TMR5_ISR

;; *************** function _TMR5_ISR *****************
;; Defined at:
;;		line 157 in file "mcc_generated_files/tmr5.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		NULL
;;		_TMR5_DefaultInterruptHandler
;;		_TMR5_WriteTimer
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/tmr5.c"
	line	157
global __ptext27
__ptext27:
psect	text27
	file	"mcc_generated_files/tmr5.c"
	line	157
	
_TMR5_ISR:
;incstack = 0
	callstack 25
	line	161
	
i2l2789:
;mcc_generated_files/tmr5.c: 161:     PIR5bits.TMR5IF = 0;
	bcf	((c:4026))^0f00h,c,1	;volatile
	line	162
	
i2l2791:
;mcc_generated_files/tmr5.c: 162:     TMR5_WriteTimer(timer5ReloadVal);
	movff	(c:_timer5ReloadVal),(c:TMR5_WriteTimer@timerVal)	;volatile
	movff	(c:_timer5ReloadVal+1),(c:TMR5_WriteTimer@timerVal+1)	;volatile
	call	_TMR5_WriteTimer	;wreg free
	line	164
	
i2l2793:
;mcc_generated_files/tmr5.c: 164:     if(TMR5_InterruptHandler)
	movf	((c:_TMR5_InterruptHandler))^00h,c,w
iorwf	((c:_TMR5_InterruptHandler+1))^00h,c,w
iorwf	((c:_TMR5_InterruptHandler+2))^00h,c,w
	btfsc	status,2
	goto	i2u243_41
	goto	i2u243_40

i2u243_41:
	goto	i2l190
i2u243_40:
	line	166
	
i2l2795:
;mcc_generated_files/tmr5.c: 165:     {;mcc_generated_files/tmr5.c: 166:         TMR5_InterruptHandler();
	call	i2u244_48
	goto	i2u244_49
i2u244_48:
	push
	movwf	pclath
	movf	((c:_TMR5_InterruptHandler))^00h,c,w
	movwf	tosl
	movf	((c:_TMR5_InterruptHandler+1))^00h,c,w
	movwf	tosl+1
	movf	((c:_TMR5_InterruptHandler+2))^00h,c,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u244_49:
	line	168
	
i2l190:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR5_ISR
	__end_of_TMR5_ISR:
	signat	_TMR5_ISR,89
	global	_TMR5_WriteTimer

;; *************** function _TMR5_WriteTimer *****************
;; Defined at:
;;		line 120 in file "mcc_generated_files/tmr5.c"
;; Parameters:    Size  Location     Type
;;  timerVal        2    0[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR5_ISR
;;		_TMR5_Reload
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	line	120
global __ptext28
__ptext28:
psect	text28
	file	"mcc_generated_files/tmr5.c"
	line	120
	
_TMR5_WriteTimer:
;incstack = 0
	callstack 25
	line	122
	
i2l2153:
;mcc_generated_files/tmr5.c: 120: void TMR5_WriteTimer(uint16_t timerVal);mcc_generated_files/tmr5.c: 121: {;mcc_generated_files/tmr5.c: 122:     if (T5CONbits.nT5SYNC == 1)
	btfss	((c:3963))^0f00h,c,2	;volatile
	goto	i2u133_41
	goto	i2u133_40
i2u133_41:
	goto	i2l2163
i2u133_40:
	line	125
	
i2l2155:
;mcc_generated_files/tmr5.c: 123:     {;mcc_generated_files/tmr5.c: 125:         T5CONbits.TMR5ON = 0;
	bcf	((c:3963))^0f00h,c,0	;volatile
	line	128
	
i2l2157:
;mcc_generated_files/tmr5.c: 128:         TMR5H = (uint8_t)(timerVal >> 8);
	movf	((c:TMR5_WriteTimer@timerVal+1))^00h,c,w
	movwf	((c:3965))^0f00h,c	;volatile
	line	129
	
i2l2159:
;mcc_generated_files/tmr5.c: 129:         TMR5L = (uint8_t)timerVal;
	movff	(c:TMR5_WriteTimer@timerVal),(c:3964)	;volatile
	line	132
	
i2l2161:
;mcc_generated_files/tmr5.c: 132:         T5CONbits.TMR5ON =1;
	bsf	((c:3963))^0f00h,c,0	;volatile
	line	133
;mcc_generated_files/tmr5.c: 133:     }
	goto	i2l177
	line	137
	
i2l2163:
;mcc_generated_files/tmr5.c: 135:     {;mcc_generated_files/tmr5.c: 137:         TMR5H = (uint8_t)(timerVal >> 8);
	movf	((c:TMR5_WriteTimer@timerVal+1))^00h,c,w
	movwf	((c:3965))^0f00h,c	;volatile
	line	138
	
i2l2165:
;mcc_generated_files/tmr5.c: 138:         TMR5L = (uint8_t)timerVal;
	movff	(c:TMR5_WriteTimer@timerVal),(c:3964)	;volatile
	line	140
	
i2l177:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR5_WriteTimer
	__end_of_TMR5_WriteTimer:
	signat	_TMR5_WriteTimer,4217
	global	_TMR5_DefaultInterruptHandler

;; *************** function _TMR5_DefaultInterruptHandler *****************
;; Defined at:
;;		line 175 in file "mcc_generated_files/tmr5.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR5_Initialize
;;		_TMR5_ISR
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	line	175
global __ptext29
__ptext29:
psect	text29
	file	"mcc_generated_files/tmr5.c"
	line	175
	
_TMR5_DefaultInterruptHandler:
;incstack = 0
	callstack 25
	line	177
	
i2l1225:
;mcc_generated_files/tmr5.c: 177:     brojac_T++;
	incf	((c:_brojac_T))^00h,c
	line	179
;mcc_generated_files/tmr5.c: 179:     switch(servo){
	goto	i2l1243
	line	181
;mcc_generated_files/tmr5.c: 181:                 case HIGH_STATE:
	
i2l197:
	line	182
;mcc_generated_files/tmr5.c: 182:                     LATBbits.LATB0 = 1;
	bsf	((c:3978))^0f00h,c,0	;volatile
	line	183
	
i2l1227:
;mcc_generated_files/tmr5.c: 183:                     brojac_T_on++;
	incf	((c:_brojac_T_on))^00h,c
	line	185
	
i2l1229:
;mcc_generated_files/tmr5.c: 185:                     if(brojac_T_on >= scaled_value){
		movf	((c:_scaled_value))^00h,c,w	;volatile
	subwf	((c:_brojac_T_on))^00h,c,w
	btfss	status,0
	goto	i2u2_41
	goto	i2u2_40

i2u2_41:
	goto	i2l204
i2u2_40:
	line	186
	
i2l1231:
;mcc_generated_files/tmr5.c: 186:                         servo = LOW_STATE;
	movlw	low(02h)
	movwf	((c:_servo))^00h,c	;volatile
	line	187
;mcc_generated_files/tmr5.c: 187:                         brojac_T_on = 0;
	movlw	low(0)
	movwf	((c:_brojac_T_on))^00h,c
	goto	i2l204
	line	191
;mcc_generated_files/tmr5.c: 191:                 case LOW_STATE:
	
i2l200:
	line	192
;mcc_generated_files/tmr5.c: 192:                     LATBbits.LATB0 = 0;
	bcf	((c:3978))^0f00h,c,0	;volatile
	line	194
	
i2l1233:
;mcc_generated_files/tmr5.c: 194:                     if(brojac_T >= prag_T){
		movf	((c:_prag_T))^00h,c,w
	subwf	((c:_brojac_T))^00h,c,w
	btfss	status,0
	goto	i2u3_41
	goto	i2u3_40

i2u3_41:
	goto	i2l204
i2u3_40:
	line	195
	
i2l1235:
;mcc_generated_files/tmr5.c: 195:                         servo = IDLE_STATE;
	movlw	low(0)
	movwf	((c:_servo))^00h,c	;volatile
	line	196
;mcc_generated_files/tmr5.c: 196:                         brojac_T = 0;
	movlw	low(0)
	movwf	((c:_brojac_T))^00h,c
	goto	i2l204
	line	202
	
i2l1237:
;mcc_generated_files/tmr5.c: 202:                     if(brojac_T >= prag_T){
		movf	((c:_prag_T))^00h,c,w
	subwf	((c:_brojac_T))^00h,c,w
	btfss	status,0
	goto	i2u4_41
	goto	i2u4_40

i2u4_41:
	goto	i2l204
i2u4_40:
	line	203
	
i2l1239:
;mcc_generated_files/tmr5.c: 203:                         servo = HIGH_STATE;
	movlw	low(01h)
	movwf	((c:_servo))^00h,c	;volatile
	line	204
;mcc_generated_files/tmr5.c: 204:                         brojac_T = 0;
	movlw	low(0)
	movwf	((c:_brojac_T))^00h,c
	goto	i2l204
	line	208
	
i2l1243:
	movf	((c:_servo))^00h,c,w	;volatile
	movwf	(??_TMR5_DefaultInterruptHandler+0+0)^00h,c
	clrf	(??_TMR5_DefaultInterruptHandler+0+0+1)^00h,c

	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_TMR5_DefaultInterruptHandler+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	i2l3723
	goto	i2l204
	
i2l3723:
; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_TMR5_DefaultInterruptHandler+0+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	i2l1237
	xorlw	1^0	; case 1
	skipnz
	goto	i2l197
	xorlw	2^1	; case 2
	skipnz
	goto	i2l200
	goto	i2l204

	line	209
	
i2l204:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR5_DefaultInterruptHandler
	__end_of_TMR5_DefaultInterruptHandler:
	signat	_TMR5_DefaultInterruptHandler,89
	global	_TMR0_ISR

;; *************** function _TMR0_ISR *****************
;; Defined at:
;;		line 136 in file "mcc_generated_files/tmr0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		NULL
;;		_TMR0_DefaultInterruptHandler
;; This function is called by:
;;		_INTERRUPT_InterruptManager
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/tmr0.c"
	line	136
global __ptext30
__ptext30:
psect	text30
	file	"mcc_generated_files/tmr0.c"
	line	136
	
_TMR0_ISR:
;incstack = 0
	callstack 25
	line	140
	
i2l1875:
;mcc_generated_files/tmr0.c: 140:     INTCONbits.TMR0IF = 0;
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	144
	
i2l1877:
;mcc_generated_files/tmr0.c: 144:     TMR0H = timer0ReloadVal >> 8;
	movf	((c:_timer0ReloadVal+1))^00h,c,w	;volatile
	movwf	((c:4055))^0f00h,c	;volatile
	line	145
	
i2l1879:
;mcc_generated_files/tmr0.c: 145:     TMR0L = (uint8_t) timer0ReloadVal;
	movff	(c:_timer0ReloadVal),(c:4054)	;volatile
	line	147
	
i2l1881:
;mcc_generated_files/tmr0.c: 147:     if(TMR0_InterruptHandler)
	movf	((c:_TMR0_InterruptHandler))^00h,c,w
iorwf	((c:_TMR0_InterruptHandler+1))^00h,c,w
iorwf	((c:_TMR0_InterruptHandler+2))^00h,c,w
	btfsc	status,2
	goto	i2u114_41
	goto	i2u114_40

i2u114_41:
	goto	i2l283
i2u114_40:
	line	149
	
i2l1883:
;mcc_generated_files/tmr0.c: 148:     {;mcc_generated_files/tmr0.c: 149:         TMR0_InterruptHandler();
	call	i2u115_48
	goto	i2u115_49
i2u115_48:
	push
	movwf	pclath
	movf	((c:_TMR0_InterruptHandler))^00h,c,w
	movwf	tosl
	movf	((c:_TMR0_InterruptHandler+1))^00h,c,w
	movwf	tosl+1
	movf	((c:_TMR0_InterruptHandler+2))^00h,c,w
	movwf	tosl+2
	movf	pclath,w
	
	return	;indir
	i2u115_49:
	line	153
	
i2l283:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR0_ISR
	__end_of_TMR0_ISR:
	signat	_TMR0_ISR,89
	global	_TMR0_DefaultInterruptHandler

;; *************** function _TMR0_DefaultInterruptHandler *****************
;; Defined at:
;;		line 160 in file "mcc_generated_files/tmr0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TMR0_Initialize
;;		_TMR0_ISR
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	line	160
global __ptext31
__ptext31:
psect	text31
	file	"mcc_generated_files/tmr0.c"
	line	160
	
_TMR0_DefaultInterruptHandler:
;incstack = 0
	callstack 25
	line	161
	
i2l1259:
;mcc_generated_files/tmr0.c: 161:     flag_tmr0=1;
	movlw	low(01h)
	movwf	((c:_flag_tmr0))^00h,c	;volatile
	line	162
	
i2l289:
	return	;funcret
	callstack 0
GLOBAL	__end_of_TMR0_DefaultInterruptHandler
	__end_of_TMR0_DefaultInterruptHandler:
	signat	_TMR0_DefaultInterruptHandler,89
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	3
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	file ""
	line	0
psect	text32,class=CODE,space=0,reloc=2,group=0
global __ptext32
__ptext32:
fp__TMR5_DefaultInterruptHandler:
	file ""
	line	0
psect	text32
fp__TMR0_DefaultInterruptHandler:
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp8
	wtemp8 set btemp+1
	global	ttemp5
	ttemp5 set btemp+1
	global	ttemp6
	ttemp6 set btemp+4
	global	ttemp7
	ttemp7 set btemp+8
	end
