#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../main.c ../../../src/OLED_W_init.c ../../../src/OLED_W_display.c ../../../../common/delay_10us.as ../../../../common/delay_1ms.as ../../../../common/delay_200ms.as ../../../../gpio/src/led_init.c ../../../../gpio/src/switch_init.as ../../../../rn52_correction/src/rn52_cmd.c ../../../../rn52_correction/src/rn52_init.c ../../../../SPI/src/SPI_init.c ../../../../SPI/src/SPI_write.c ../../../../timer0/src/timer0_init.c ../../../../timer0/src/timer0_reload.c ../../../../timer1/src/timer1_init.c ../../../../timer1/src/timer1_reload.c ../../../../u8g2/csrc/u8x8_8x8.c ../../../../u8g2/csrc/u8x8_byte.c ../../../../u8g2/csrc/u8x8_gpio.c ../../../../u8g2/csrc/u8x8_d_ssd1306_96x40.c ../../../../u8g2/csrc/u8x8_cad.c ../../../../u8g2/csrc/u8x8_display.c ../../../../u8g2/csrc/u8x8_setup.c ../../../../u8g2/csrc/u8x8_string.c ../../../../u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c ../../../../u8g2/csrc/u8g2_line.c ../../../../u8g2/csrc/u8g2_buffer.c ../../../../uart1_correction/src/uart1_getc.c ../../../../uart1_correction/src/uart1_gets.c ../../../../uart1_correction/src/uart1_init.c ../../../../uart1_correction/src/uart1_putc.c ../../../../uart1_correction/src/uart1_puts.c ../../../../uart2_correction/src/uart2_getc.c ../../../../uart2_correction/src/uart2_gets.c ../../../../uart2_correction/src/uart2_init.c ../../../../uart2_correction/src/uart2_putc.c ../../../../uart2_correction/src/uart2_puts.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/43898991/main.p1 ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1 ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1 ${OBJECTDIR}/_ext/1889496363/delay_10us.o ${OBJECTDIR}/_ext/1889496363/delay_1ms.o ${OBJECTDIR}/_ext/1889496363/delay_200ms.o ${OBJECTDIR}/_ext/1810918684/led_init.p1 ${OBJECTDIR}/_ext/1810918684/switch_init.o ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 ${OBJECTDIR}/_ext/495400039/rn52_init.p1 ${OBJECTDIR}/_ext/502061985/SPI_init.p1 ${OBJECTDIR}/_ext/502061985/SPI_write.p1 ${OBJECTDIR}/_ext/626975392/timer0_init.p1 ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 ${OBJECTDIR}/_ext/627898913/timer1_init.p1 ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1 ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1 ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1 ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 ${OBJECTDIR}/_ext/522902897/uart1_init.p1 ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/43898991/main.p1.d ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1.d ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1.d ${OBJECTDIR}/_ext/1889496363/delay_10us.o.d ${OBJECTDIR}/_ext/1889496363/delay_1ms.o.d ${OBJECTDIR}/_ext/1889496363/delay_200ms.o.d ${OBJECTDIR}/_ext/1810918684/led_init.p1.d ${OBJECTDIR}/_ext/1810918684/switch_init.o.d ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d ${OBJECTDIR}/_ext/502061985/SPI_init.p1.d ${OBJECTDIR}/_ext/502061985/SPI_write.p1.d ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1.d ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1.d ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1.d ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1.d ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1.d ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1.d ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1.d ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1.d ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1.d ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1.d ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1.d ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/43898991/main.p1 ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1 ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1 ${OBJECTDIR}/_ext/1889496363/delay_10us.o ${OBJECTDIR}/_ext/1889496363/delay_1ms.o ${OBJECTDIR}/_ext/1889496363/delay_200ms.o ${OBJECTDIR}/_ext/1810918684/led_init.p1 ${OBJECTDIR}/_ext/1810918684/switch_init.o ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 ${OBJECTDIR}/_ext/495400039/rn52_init.p1 ${OBJECTDIR}/_ext/502061985/SPI_init.p1 ${OBJECTDIR}/_ext/502061985/SPI_write.p1 ${OBJECTDIR}/_ext/626975392/timer0_init.p1 ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 ${OBJECTDIR}/_ext/627898913/timer1_init.p1 ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1 ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1 ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1 ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1 ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 ${OBJECTDIR}/_ext/522902897/uart1_init.p1 ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1

# Source Files
SOURCEFILES=../../main.c ../../../src/OLED_W_init.c ../../../src/OLED_W_display.c ../../../../common/delay_10us.as ../../../../common/delay_1ms.as ../../../../common/delay_200ms.as ../../../../gpio/src/led_init.c ../../../../gpio/src/switch_init.as ../../../../rn52_correction/src/rn52_cmd.c ../../../../rn52_correction/src/rn52_init.c ../../../../SPI/src/SPI_init.c ../../../../SPI/src/SPI_write.c ../../../../timer0/src/timer0_init.c ../../../../timer0/src/timer0_reload.c ../../../../timer1/src/timer1_init.c ../../../../timer1/src/timer1_reload.c ../../../../u8g2/csrc/u8x8_8x8.c ../../../../u8g2/csrc/u8x8_byte.c ../../../../u8g2/csrc/u8x8_gpio.c ../../../../u8g2/csrc/u8x8_d_ssd1306_96x40.c ../../../../u8g2/csrc/u8x8_cad.c ../../../../u8g2/csrc/u8x8_display.c ../../../../u8g2/csrc/u8x8_setup.c ../../../../u8g2/csrc/u8x8_string.c ../../../../u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c ../../../../u8g2/csrc/u8g2_line.c ../../../../u8g2/csrc/u8g2_buffer.c ../../../../uart1_correction/src/uart1_getc.c ../../../../uart1_correction/src/uart1_gets.c ../../../../uart1_correction/src/uart1_init.c ../../../../uart1_correction/src/uart1_putc.c ../../../../uart1_correction/src/uart1_puts.c ../../../../uart2_correction/src/uart2_getc.c ../../../../uart2_correction/src/uart2_gets.c ../../../../uart2_correction/src/uart2_init.c ../../../../uart2_correction/src/uart2_putc.c ../../../../uart2_correction/src/uart2_puts.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F27K40
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/43898991/main.p1: ../../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/43898991/main.p1 ../../main.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/main.d ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1: ../../../src/OLED_W_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1 ../../../src/OLED_W_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/OLED_W_init.d ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1: ../../../src/OLED_W_display.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1 ../../../src/OLED_W_display.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/OLED_W_display.d ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1810918684/led_init.p1: ../../../../gpio/src/led_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1810918684" 
	@${RM} ${OBJECTDIR}/_ext/1810918684/led_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1810918684/led_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1810918684/led_init.p1 ../../../../gpio/src/led_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1810918684/led_init.d ${OBJECTDIR}/_ext/1810918684/led_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1810918684/led_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/495400039/rn52_cmd.p1: ../../../../rn52_correction/src/rn52_cmd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/495400039" 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 ../../../../rn52_correction/src/rn52_cmd.c 
	@-${MV} ${OBJECTDIR}/_ext/495400039/rn52_cmd.d ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/495400039/rn52_init.p1: ../../../../rn52_correction/src/rn52_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/495400039" 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/495400039/rn52_init.p1 ../../../../rn52_correction/src/rn52_init.c 
	@-${MV} ${OBJECTDIR}/_ext/495400039/rn52_init.d ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/502061985/SPI_init.p1: ../../../../SPI/src/SPI_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/502061985" 
	@${RM} ${OBJECTDIR}/_ext/502061985/SPI_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/502061985/SPI_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/502061985/SPI_init.p1 ../../../../SPI/src/SPI_init.c 
	@-${MV} ${OBJECTDIR}/_ext/502061985/SPI_init.d ${OBJECTDIR}/_ext/502061985/SPI_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/502061985/SPI_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/502061985/SPI_write.p1: ../../../../SPI/src/SPI_write.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/502061985" 
	@${RM} ${OBJECTDIR}/_ext/502061985/SPI_write.p1.d 
	@${RM} ${OBJECTDIR}/_ext/502061985/SPI_write.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/502061985/SPI_write.p1 ../../../../SPI/src/SPI_write.c 
	@-${MV} ${OBJECTDIR}/_ext/502061985/SPI_write.d ${OBJECTDIR}/_ext/502061985/SPI_write.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/502061985/SPI_write.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/626975392/timer0_init.p1: ../../../../timer0/src/timer0_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/626975392" 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/626975392/timer0_init.p1 ../../../../timer0/src/timer0_init.c 
	@-${MV} ${OBJECTDIR}/_ext/626975392/timer0_init.d ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/626975392/timer0_reload.p1: ../../../../timer0/src/timer0_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/626975392" 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 ../../../../timer0/src/timer0_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/626975392/timer0_reload.d ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/627898913/timer1_init.p1: ../../../../timer1/src/timer1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/627898913" 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/627898913/timer1_init.p1 ../../../../timer1/src/timer1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/627898913/timer1_init.d ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/627898913/timer1_reload.p1: ../../../../timer1/src/timer1_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/627898913" 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 ../../../../timer1/src/timer1_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/627898913/timer1_reload.d ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1: ../../../../u8g2/csrc/u8x8_8x8.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1 ../../../../u8g2/csrc/u8x8_8x8.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.d ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1: ../../../../u8g2/csrc/u8x8_byte.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1 ../../../../u8g2/csrc/u8x8_byte.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_byte.d ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1: ../../../../u8g2/csrc/u8x8_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1 ../../../../u8g2/csrc/u8x8_gpio.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.d ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1: ../../../../u8g2/csrc/u8x8_d_ssd1306_96x40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1 ../../../../u8g2/csrc/u8x8_d_ssd1306_96x40.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.d ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1: ../../../../u8g2/csrc/u8x8_cad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1 ../../../../u8g2/csrc/u8x8_cad.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_cad.d ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_display.p1: ../../../../u8g2/csrc/u8x8_display.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1 ../../../../u8g2/csrc/u8x8_display.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_display.d ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1: ../../../../u8g2/csrc/u8x8_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1 ../../../../u8g2/csrc/u8x8_setup.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_setup.d ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_string.p1: ../../../../u8g2/csrc/u8x8_string.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1 ../../../../u8g2/csrc/u8x8_string.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_string.d ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1: ../../../../u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1 ../../../../u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.d ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8g2_line.p1: ../../../../u8g2/csrc/u8g2_line.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1 ../../../../u8g2/csrc/u8g2_line.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8g2_line.d ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1: ../../../../u8g2/csrc/u8g2_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1 ../../../../u8g2/csrc/u8g2_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.d ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_getc.p1: ../../../../uart1_correction/src/uart1_getc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 ../../../../uart1_correction/src/uart1_getc.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_getc.d ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_gets.p1: ../../../../uart1_correction/src/uart1_gets.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 ../../../../uart1_correction/src/uart1_gets.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_gets.d ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_init.p1: ../../../../uart1_correction/src/uart1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_init.p1 ../../../../uart1_correction/src/uart1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_init.d ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_putc.p1: ../../../../uart1_correction/src/uart1_putc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 ../../../../uart1_correction/src/uart1_putc.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_putc.d ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_puts.p1: ../../../../uart1_correction/src/uart1_puts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 ../../../../uart1_correction/src/uart1_puts.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_puts.d ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_getc.p1: ../../../../uart2_correction/src/uart2_getc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 ../../../../uart2_correction/src/uart2_getc.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_getc.d ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_gets.p1: ../../../../uart2_correction/src/uart2_gets.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 ../../../../uart2_correction/src/uart2_gets.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_gets.d ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_init.p1: ../../../../uart2_correction/src/uart2_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 ../../../../uart2_correction/src/uart2_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_init.d ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_putc.p1: ../../../../uart2_correction/src/uart2_putc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 ../../../../uart2_correction/src/uart2_putc.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_putc.d ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_puts.p1: ../../../../uart2_correction/src/uart2_puts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1 ../../../../uart2_correction/src/uart2_puts.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_puts.d ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/43898991/main.p1: ../../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/43898991/main.p1 ../../main.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/main.d ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1: ../../../src/OLED_W_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1 ../../../src/OLED_W_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/OLED_W_init.d ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/OLED_W_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1: ../../../src/OLED_W_display.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1 ../../../src/OLED_W_display.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/OLED_W_display.d ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/OLED_W_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1810918684/led_init.p1: ../../../../gpio/src/led_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1810918684" 
	@${RM} ${OBJECTDIR}/_ext/1810918684/led_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1810918684/led_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1810918684/led_init.p1 ../../../../gpio/src/led_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1810918684/led_init.d ${OBJECTDIR}/_ext/1810918684/led_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1810918684/led_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/495400039/rn52_cmd.p1: ../../../../rn52_correction/src/rn52_cmd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/495400039" 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 ../../../../rn52_correction/src/rn52_cmd.c 
	@-${MV} ${OBJECTDIR}/_ext/495400039/rn52_cmd.d ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/495400039/rn52_init.p1: ../../../../rn52_correction/src/rn52_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/495400039" 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/495400039/rn52_init.p1 ../../../../rn52_correction/src/rn52_init.c 
	@-${MV} ${OBJECTDIR}/_ext/495400039/rn52_init.d ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/502061985/SPI_init.p1: ../../../../SPI/src/SPI_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/502061985" 
	@${RM} ${OBJECTDIR}/_ext/502061985/SPI_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/502061985/SPI_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/502061985/SPI_init.p1 ../../../../SPI/src/SPI_init.c 
	@-${MV} ${OBJECTDIR}/_ext/502061985/SPI_init.d ${OBJECTDIR}/_ext/502061985/SPI_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/502061985/SPI_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/502061985/SPI_write.p1: ../../../../SPI/src/SPI_write.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/502061985" 
	@${RM} ${OBJECTDIR}/_ext/502061985/SPI_write.p1.d 
	@${RM} ${OBJECTDIR}/_ext/502061985/SPI_write.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/502061985/SPI_write.p1 ../../../../SPI/src/SPI_write.c 
	@-${MV} ${OBJECTDIR}/_ext/502061985/SPI_write.d ${OBJECTDIR}/_ext/502061985/SPI_write.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/502061985/SPI_write.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/626975392/timer0_init.p1: ../../../../timer0/src/timer0_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/626975392" 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/626975392/timer0_init.p1 ../../../../timer0/src/timer0_init.c 
	@-${MV} ${OBJECTDIR}/_ext/626975392/timer0_init.d ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/626975392/timer0_reload.p1: ../../../../timer0/src/timer0_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/626975392" 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 ../../../../timer0/src/timer0_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/626975392/timer0_reload.d ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/627898913/timer1_init.p1: ../../../../timer1/src/timer1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/627898913" 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/627898913/timer1_init.p1 ../../../../timer1/src/timer1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/627898913/timer1_init.d ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/627898913/timer1_reload.p1: ../../../../timer1/src/timer1_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/627898913" 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 ../../../../timer1/src/timer1_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/627898913/timer1_reload.d ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1: ../../../../u8g2/csrc/u8x8_8x8.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1 ../../../../u8g2/csrc/u8x8_8x8.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.d ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_8x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1: ../../../../u8g2/csrc/u8x8_byte.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1 ../../../../u8g2/csrc/u8x8_byte.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_byte.d ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_byte.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1: ../../../../u8g2/csrc/u8x8_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1 ../../../../u8g2/csrc/u8x8_gpio.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.d ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1: ../../../../u8g2/csrc/u8x8_d_ssd1306_96x40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1 ../../../../u8g2/csrc/u8x8_d_ssd1306_96x40.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.d ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_96x40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1: ../../../../u8g2/csrc/u8x8_cad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1 ../../../../u8g2/csrc/u8x8_cad.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_cad.d ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_cad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_display.p1: ../../../../u8g2/csrc/u8x8_display.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1 ../../../../u8g2/csrc/u8x8_display.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_display.d ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1: ../../../../u8g2/csrc/u8x8_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1 ../../../../u8g2/csrc/u8x8_setup.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_setup.d ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_string.p1: ../../../../u8g2/csrc/u8x8_string.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1 ../../../../u8g2/csrc/u8x8_string.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_string.d ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_string.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1: ../../../../u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1 ../../../../u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.d ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8x8_d_ssd1306_128x64_noname.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8g2_line.p1: ../../../../u8g2/csrc/u8g2_line.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1 ../../../../u8g2/csrc/u8g2_line.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8g2_line.d ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8g2_line.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1: ../../../../u8g2/csrc/u8g2_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2121512578" 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1 ../../../../u8g2/csrc/u8g2_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.d ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2121512578/u8g2_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_getc.p1: ../../../../uart1_correction/src/uart1_getc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 ../../../../uart1_correction/src/uart1_getc.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_getc.d ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_gets.p1: ../../../../uart1_correction/src/uart1_gets.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 ../../../../uart1_correction/src/uart1_gets.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_gets.d ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_init.p1: ../../../../uart1_correction/src/uart1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_init.p1 ../../../../uart1_correction/src/uart1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_init.d ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_putc.p1: ../../../../uart1_correction/src/uart1_putc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 ../../../../uart1_correction/src/uart1_putc.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_putc.d ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_puts.p1: ../../../../uart1_correction/src/uart1_puts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 ../../../../uart1_correction/src/uart1_puts.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_puts.d ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_getc.p1: ../../../../uart2_correction/src/uart2_getc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 ../../../../uart2_correction/src/uart2_getc.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_getc.d ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_gets.p1: ../../../../uart2_correction/src/uart2_gets.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 ../../../../uart2_correction/src/uart2_gets.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_gets.d ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_init.p1: ../../../../uart2_correction/src/uart2_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 ../../../../uart2_correction/src/uart2_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_init.d ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_putc.p1: ../../../../uart2_correction/src/uart2_putc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 ../../../../uart2_correction/src/uart2_putc.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_putc.d ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_puts.p1: ../../../../uart2_correction/src/uart2_puts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1 ../../../../uart2_correction/src/uart2_puts.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_puts.d ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1889496363/delay_10us.o: ../../../../common/delay_10us.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1889496363" 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_10us.o.d 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_10us.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto   -o ${OBJECTDIR}/_ext/1889496363/delay_10us.o  ../../../../common/delay_10us.as 
	@-${MV} ${OBJECTDIR}/_ext/1889496363/delay_10us.d ${OBJECTDIR}/_ext/1889496363/delay_10us.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1889496363/delay_10us.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1889496363/delay_1ms.o: ../../../../common/delay_1ms.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1889496363" 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_1ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_1ms.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto   -o ${OBJECTDIR}/_ext/1889496363/delay_1ms.o  ../../../../common/delay_1ms.as 
	@-${MV} ${OBJECTDIR}/_ext/1889496363/delay_1ms.d ${OBJECTDIR}/_ext/1889496363/delay_1ms.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1889496363/delay_1ms.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1889496363/delay_200ms.o: ../../../../common/delay_200ms.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1889496363" 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_200ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_200ms.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto   -o ${OBJECTDIR}/_ext/1889496363/delay_200ms.o  ../../../../common/delay_200ms.as 
	@-${MV} ${OBJECTDIR}/_ext/1889496363/delay_200ms.d ${OBJECTDIR}/_ext/1889496363/delay_200ms.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1889496363/delay_200ms.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1810918684/switch_init.o: ../../../../gpio/src/switch_init.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1810918684" 
	@${RM} ${OBJECTDIR}/_ext/1810918684/switch_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1810918684/switch_init.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto   -o ${OBJECTDIR}/_ext/1810918684/switch_init.o  ../../../../gpio/src/switch_init.as 
	@-${MV} ${OBJECTDIR}/_ext/1810918684/switch_init.d ${OBJECTDIR}/_ext/1810918684/switch_init.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1810918684/switch_init.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1889496363/delay_10us.o: ../../../../common/delay_10us.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1889496363" 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_10us.o.d 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_10us.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto   -o ${OBJECTDIR}/_ext/1889496363/delay_10us.o  ../../../../common/delay_10us.as 
	@-${MV} ${OBJECTDIR}/_ext/1889496363/delay_10us.d ${OBJECTDIR}/_ext/1889496363/delay_10us.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1889496363/delay_10us.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1889496363/delay_1ms.o: ../../../../common/delay_1ms.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1889496363" 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_1ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_1ms.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto   -o ${OBJECTDIR}/_ext/1889496363/delay_1ms.o  ../../../../common/delay_1ms.as 
	@-${MV} ${OBJECTDIR}/_ext/1889496363/delay_1ms.d ${OBJECTDIR}/_ext/1889496363/delay_1ms.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1889496363/delay_1ms.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1889496363/delay_200ms.o: ../../../../common/delay_200ms.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1889496363" 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_200ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1889496363/delay_200ms.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto   -o ${OBJECTDIR}/_ext/1889496363/delay_200ms.o  ../../../../common/delay_200ms.as 
	@-${MV} ${OBJECTDIR}/_ext/1889496363/delay_200ms.d ${OBJECTDIR}/_ext/1889496363/delay_200ms.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1889496363/delay_200ms.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1810918684/switch_init.o: ../../../../gpio/src/switch_init.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1810918684" 
	@${RM} ${OBJECTDIR}/_ext/1810918684/switch_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1810918684/switch_init.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto   -o ${OBJECTDIR}/_ext/1810918684/switch_init.o  ../../../../gpio/src/switch_init.as 
	@-${MV} ${OBJECTDIR}/_ext/1810918684/switch_init.d ${OBJECTDIR}/_ext/1810918684/switch_init.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1810918684/switch_init.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fshort-double -fshort-float -memi=wordwrite -O1 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../" -I"../../../../u8g2/csrc" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/OLED_W_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
