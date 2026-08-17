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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../../../../../bsp/common/delay_200ms.as ../../../../../bsp/common/delay_1ms.as ../../../../../bsp/common/delay_10us.as ../../../../../bsp/gpio/src/led_init.c ../../../../../bsp/gpio/src/switch_init.as ../../../../../bsp/IRsensor/src/IRsensor_analyze_data.c ../../../../../bsp/IRsensor/src/IRsensor_init.c ../../../../../bsp/IRsensor/src/IRsensor_read_data.c ../../../src/IR_sensorXOLED_display.c ../../../../../bsp/OLED_W/src/OLED_W_init.c ../../../../../bsp/SPI/src/SPI_init.c ../../../../../bsp/SPI/src/SPI_read.c ../../../../../bsp/SPI/src/SPI_write.c ../../../../../bsp/timer0/src/timer0_init.c ../../../../../bsp/timer0/src/timer0_reload.c ../../../../../bsp/timer1/src/timer1_init.c ../../../../../bsp/timer1/src/timer1_reload.c ../../../../../bsp/u8g2/csrc/u8g2_box.c ../../../../../bsp/u8g2/csrc/u8g2_buffer.c ../../../../../bsp/u8g2/csrc/u8g2_circle.c ../../../../../bsp/u8g2/csrc/u8g2_cleardisplay.c ../../../../../bsp/u8g2/csrc/u8g2_hvline.c ../../../../../bsp/u8g2/csrc/u8g2_intersection.c ../../../../../bsp/u8g2/csrc/u8g2_line.c ../../../../../bsp/u8g2/csrc/u8g2_ll_hvline.c ../../../../../bsp/u8g2/csrc/u8g2_setup.c ../../../../../bsp/u8g2_pic18/u8g2_pic18.c ../../../../../bsp/u8g2/csrc/u8g2_font.c ../../../../../bsp/u8g2/csrc/u8g2_polygon.c ../../../../../bsp/u8g2/csrc/u8x8_8x8.c ../../../../../bsp/u8g2/csrc/u8x8_byte.c ../../../../../bsp/u8g2/csrc/u8x8_cad.c ../../../../../bsp/u8g2/csrc/u8x8_d_ssd1306_96x40.c ../../../../../bsp/u8g2/csrc/u8x8_display.c ../../../../../bsp/u8g2/csrc/u8x8_gpio.c ../../../../../bsp/u8g2/csrc/u8x8_setup.c ../../../../../bsp/u8g2/csrc/u8x8_string.c ../../main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1677729834/delay_200ms.o ${OBJECTDIR}/_ext/1677729834/delay_1ms.o ${OBJECTDIR}/_ext/1677729834/delay_10us.o ${OBJECTDIR}/_ext/839877155/led_init.p1 ${OBJECTDIR}/_ext/839877155/switch_init.o ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1 ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1 ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1 ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1 ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1 ${OBJECTDIR}/_ext/1767733118/SPI_init.p1 ${OBJECTDIR}/_ext/1767733118/SPI_read.p1 ${OBJECTDIR}/_ext/1767733118/SPI_write.p1 ${OBJECTDIR}/_ext/1126170143/timer0_init.p1 ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1 ${OBJECTDIR}/_ext/1127093664/timer1_init.p1 ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1 ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1 ${OBJECTDIR}/_ext/43898991/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1677729834/delay_200ms.o.d ${OBJECTDIR}/_ext/1677729834/delay_1ms.o.d ${OBJECTDIR}/_ext/1677729834/delay_10us.o.d ${OBJECTDIR}/_ext/839877155/led_init.p1.d ${OBJECTDIR}/_ext/839877155/switch_init.o.d ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1.d ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1.d ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1.d ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1.d ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1.d ${OBJECTDIR}/_ext/1767733118/SPI_init.p1.d ${OBJECTDIR}/_ext/1767733118/SPI_read.p1.d ${OBJECTDIR}/_ext/1767733118/SPI_write.p1.d ${OBJECTDIR}/_ext/1126170143/timer0_init.p1.d ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1.d ${OBJECTDIR}/_ext/1127093664/timer1_init.p1.d ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1.d ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1.d ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1.d ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1.d ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1.d ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1.d ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1.d ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1.d ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1.d ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1.d ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1.d ${OBJECTDIR}/_ext/43898991/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1677729834/delay_200ms.o ${OBJECTDIR}/_ext/1677729834/delay_1ms.o ${OBJECTDIR}/_ext/1677729834/delay_10us.o ${OBJECTDIR}/_ext/839877155/led_init.p1 ${OBJECTDIR}/_ext/839877155/switch_init.o ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1 ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1 ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1 ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1 ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1 ${OBJECTDIR}/_ext/1767733118/SPI_init.p1 ${OBJECTDIR}/_ext/1767733118/SPI_read.p1 ${OBJECTDIR}/_ext/1767733118/SPI_write.p1 ${OBJECTDIR}/_ext/1126170143/timer0_init.p1 ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1 ${OBJECTDIR}/_ext/1127093664/timer1_init.p1 ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1 ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1 ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1 ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1 ${OBJECTDIR}/_ext/43898991/main.p1

# Source Files
SOURCEFILES=../../../../../bsp/common/delay_200ms.as ../../../../../bsp/common/delay_1ms.as ../../../../../bsp/common/delay_10us.as ../../../../../bsp/gpio/src/led_init.c ../../../../../bsp/gpio/src/switch_init.as ../../../../../bsp/IRsensor/src/IRsensor_analyze_data.c ../../../../../bsp/IRsensor/src/IRsensor_init.c ../../../../../bsp/IRsensor/src/IRsensor_read_data.c ../../../src/IR_sensorXOLED_display.c ../../../../../bsp/OLED_W/src/OLED_W_init.c ../../../../../bsp/SPI/src/SPI_init.c ../../../../../bsp/SPI/src/SPI_read.c ../../../../../bsp/SPI/src/SPI_write.c ../../../../../bsp/timer0/src/timer0_init.c ../../../../../bsp/timer0/src/timer0_reload.c ../../../../../bsp/timer1/src/timer1_init.c ../../../../../bsp/timer1/src/timer1_reload.c ../../../../../bsp/u8g2/csrc/u8g2_box.c ../../../../../bsp/u8g2/csrc/u8g2_buffer.c ../../../../../bsp/u8g2/csrc/u8g2_circle.c ../../../../../bsp/u8g2/csrc/u8g2_cleardisplay.c ../../../../../bsp/u8g2/csrc/u8g2_hvline.c ../../../../../bsp/u8g2/csrc/u8g2_intersection.c ../../../../../bsp/u8g2/csrc/u8g2_line.c ../../../../../bsp/u8g2/csrc/u8g2_ll_hvline.c ../../../../../bsp/u8g2/csrc/u8g2_setup.c ../../../../../bsp/u8g2_pic18/u8g2_pic18.c ../../../../../bsp/u8g2/csrc/u8g2_font.c ../../../../../bsp/u8g2/csrc/u8g2_polygon.c ../../../../../bsp/u8g2/csrc/u8x8_8x8.c ../../../../../bsp/u8g2/csrc/u8x8_byte.c ../../../../../bsp/u8g2/csrc/u8x8_cad.c ../../../../../bsp/u8g2/csrc/u8x8_d_ssd1306_96x40.c ../../../../../bsp/u8g2/csrc/u8x8_display.c ../../../../../bsp/u8g2/csrc/u8x8_gpio.c ../../../../../bsp/u8g2/csrc/u8x8_setup.c ../../../../../bsp/u8g2/csrc/u8x8_string.c ../../main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F27K40
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/839877155/led_init.p1: ../../../../../bsp/gpio/src/led_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/839877155" 
	@${RM} ${OBJECTDIR}/_ext/839877155/led_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/839877155/led_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/839877155/led_init.p1 ../../../../../bsp/gpio/src/led_init.c 
	@-${MV} ${OBJECTDIR}/_ext/839877155/led_init.d ${OBJECTDIR}/_ext/839877155/led_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/839877155/led_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1: ../../../../../bsp/IRsensor/src/IRsensor_analyze_data.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1355450633" 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1 ../../../../../bsp/IRsensor/src/IRsensor_analyze_data.c 
	@-${MV} ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.d ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1: ../../../../../bsp/IRsensor/src/IRsensor_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1355450633" 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1 ../../../../../bsp/IRsensor/src/IRsensor_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1355450633/IRsensor_init.d ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1: ../../../../../bsp/IRsensor/src/IRsensor_read_data.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1355450633" 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1 ../../../../../bsp/IRsensor/src/IRsensor_read_data.c 
	@-${MV} ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.d ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1: ../../../src/IR_sensorXOLED_display.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1 ../../../src/IR_sensorXOLED_display.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.d ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/39916504/OLED_W_init.p1: ../../../../../bsp/OLED_W/src/OLED_W_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/39916504" 
	@${RM} ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1 ../../../../../bsp/OLED_W/src/OLED_W_init.c 
	@-${MV} ${OBJECTDIR}/_ext/39916504/OLED_W_init.d ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1767733118/SPI_init.p1: ../../../../../bsp/SPI/src/SPI_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767733118" 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1767733118/SPI_init.p1 ../../../../../bsp/SPI/src/SPI_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1767733118/SPI_init.d ${OBJECTDIR}/_ext/1767733118/SPI_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1767733118/SPI_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1767733118/SPI_read.p1: ../../../../../bsp/SPI/src/SPI_read.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767733118" 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_read.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_read.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1767733118/SPI_read.p1 ../../../../../bsp/SPI/src/SPI_read.c 
	@-${MV} ${OBJECTDIR}/_ext/1767733118/SPI_read.d ${OBJECTDIR}/_ext/1767733118/SPI_read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1767733118/SPI_read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1767733118/SPI_write.p1: ../../../../../bsp/SPI/src/SPI_write.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767733118" 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_write.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_write.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1767733118/SPI_write.p1 ../../../../../bsp/SPI/src/SPI_write.c 
	@-${MV} ${OBJECTDIR}/_ext/1767733118/SPI_write.d ${OBJECTDIR}/_ext/1767733118/SPI_write.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1767733118/SPI_write.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1126170143/timer0_init.p1: ../../../../../bsp/timer0/src/timer0_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1126170143" 
	@${RM} ${OBJECTDIR}/_ext/1126170143/timer0_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1126170143/timer0_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1126170143/timer0_init.p1 ../../../../../bsp/timer0/src/timer0_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1126170143/timer0_init.d ${OBJECTDIR}/_ext/1126170143/timer0_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1126170143/timer0_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1126170143/timer0_reload.p1: ../../../../../bsp/timer0/src/timer0_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1126170143" 
	@${RM} ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1 ../../../../../bsp/timer0/src/timer0_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/1126170143/timer0_reload.d ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1127093664/timer1_init.p1: ../../../../../bsp/timer1/src/timer1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1127093664" 
	@${RM} ${OBJECTDIR}/_ext/1127093664/timer1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1127093664/timer1_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1127093664/timer1_init.p1 ../../../../../bsp/timer1/src/timer1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1127093664/timer1_init.d ${OBJECTDIR}/_ext/1127093664/timer1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1127093664/timer1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1127093664/timer1_reload.p1: ../../../../../bsp/timer1/src/timer1_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1127093664" 
	@${RM} ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1 ../../../../../bsp/timer1/src/timer1_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/1127093664/timer1_reload.d ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_box.p1: ../../../../../bsp/u8g2/csrc/u8g2_box.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1 ../../../../../bsp/u8g2/csrc/u8g2_box.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_box.d ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1: ../../../../../bsp/u8g2/csrc/u8g2_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1 ../../../../../bsp/u8g2/csrc/u8g2_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.d ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1: ../../../../../bsp/u8g2/csrc/u8g2_circle.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1 ../../../../../bsp/u8g2/csrc/u8g2_circle.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_circle.d ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1: ../../../../../bsp/u8g2/csrc/u8g2_cleardisplay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1 ../../../../../bsp/u8g2/csrc/u8g2_cleardisplay.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.d ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1: ../../../../../bsp/u8g2/csrc/u8g2_hvline.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O0     -o ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1 ../../../../../bsp/u8g2/csrc/u8g2_hvline.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.d ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1: ../../../../../bsp/u8g2/csrc/u8g2_intersection.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1 ../../../../../bsp/u8g2/csrc/u8g2_intersection.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.d ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_line.p1: ../../../../../bsp/u8g2/csrc/u8g2_line.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1 ../../../../../bsp/u8g2/csrc/u8g2_line.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_line.d ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1: ../../../../../bsp/u8g2/csrc/u8g2_ll_hvline.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1 ../../../../../bsp/u8g2/csrc/u8g2_ll_hvline.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.d ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1: ../../../../../bsp/u8g2/csrc/u8g2_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1 ../../../../../bsp/u8g2/csrc/u8g2_setup.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_setup.d ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1: ../../../../../bsp/u8g2_pic18/u8g2_pic18.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067500865" 
	@${RM} ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1 ../../../../../bsp/u8g2_pic18/u8g2_pic18.c 
	@-${MV} ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.d ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_font.p1: ../../../../../bsp/u8g2/csrc/u8g2_font.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1 ../../../../../bsp/u8g2/csrc/u8g2_font.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_font.d ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1: ../../../../../bsp/u8g2/csrc/u8g2_polygon.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1 ../../../../../bsp/u8g2/csrc/u8g2_polygon.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.d ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1: ../../../../../bsp/u8g2/csrc/u8x8_8x8.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1 ../../../../../bsp/u8g2/csrc/u8x8_8x8.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.d ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1: ../../../../../bsp/u8g2/csrc/u8x8_byte.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1 ../../../../../bsp/u8g2/csrc/u8x8_byte.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_byte.d ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1: ../../../../../bsp/u8g2/csrc/u8x8_cad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1 ../../../../../bsp/u8g2/csrc/u8x8_cad.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_cad.d ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1: ../../../../../bsp/u8g2/csrc/u8x8_d_ssd1306_96x40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1 ../../../../../bsp/u8g2/csrc/u8x8_d_ssd1306_96x40.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.d ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_display.p1: ../../../../../bsp/u8g2/csrc/u8x8_display.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1 ../../../../../bsp/u8g2/csrc/u8x8_display.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_display.d ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1: ../../../../../bsp/u8g2/csrc/u8x8_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1 ../../../../../bsp/u8g2/csrc/u8x8_gpio.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.d ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1: ../../../../../bsp/u8g2/csrc/u8x8_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1 ../../../../../bsp/u8g2/csrc/u8x8_setup.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_setup.d ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_string.p1: ../../../../../bsp/u8g2/csrc/u8x8_string.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1 ../../../../../bsp/u8g2/csrc/u8x8_string.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_string.d ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/main.p1: ../../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/43898991/main.p1 ../../main.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/main.d ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/839877155/led_init.p1: ../../../../../bsp/gpio/src/led_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/839877155" 
	@${RM} ${OBJECTDIR}/_ext/839877155/led_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/839877155/led_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/839877155/led_init.p1 ../../../../../bsp/gpio/src/led_init.c 
	@-${MV} ${OBJECTDIR}/_ext/839877155/led_init.d ${OBJECTDIR}/_ext/839877155/led_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/839877155/led_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1: ../../../../../bsp/IRsensor/src/IRsensor_analyze_data.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1355450633" 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1 ../../../../../bsp/IRsensor/src/IRsensor_analyze_data.c 
	@-${MV} ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.d ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1355450633/IRsensor_analyze_data.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1: ../../../../../bsp/IRsensor/src/IRsensor_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1355450633" 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1 ../../../../../bsp/IRsensor/src/IRsensor_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1355450633/IRsensor_init.d ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1355450633/IRsensor_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1: ../../../../../bsp/IRsensor/src/IRsensor_read_data.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1355450633" 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1 ../../../../../bsp/IRsensor/src/IRsensor_read_data.c 
	@-${MV} ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.d ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1355450633/IRsensor_read_data.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1: ../../../src/IR_sensorXOLED_display.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1 ../../../src/IR_sensorXOLED_display.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.d ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/IR_sensorXOLED_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/39916504/OLED_W_init.p1: ../../../../../bsp/OLED_W/src/OLED_W_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/39916504" 
	@${RM} ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1 ../../../../../bsp/OLED_W/src/OLED_W_init.c 
	@-${MV} ${OBJECTDIR}/_ext/39916504/OLED_W_init.d ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/39916504/OLED_W_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1767733118/SPI_init.p1: ../../../../../bsp/SPI/src/SPI_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767733118" 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1767733118/SPI_init.p1 ../../../../../bsp/SPI/src/SPI_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1767733118/SPI_init.d ${OBJECTDIR}/_ext/1767733118/SPI_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1767733118/SPI_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1767733118/SPI_read.p1: ../../../../../bsp/SPI/src/SPI_read.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767733118" 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_read.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_read.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1767733118/SPI_read.p1 ../../../../../bsp/SPI/src/SPI_read.c 
	@-${MV} ${OBJECTDIR}/_ext/1767733118/SPI_read.d ${OBJECTDIR}/_ext/1767733118/SPI_read.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1767733118/SPI_read.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1767733118/SPI_write.p1: ../../../../../bsp/SPI/src/SPI_write.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1767733118" 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_write.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1767733118/SPI_write.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1767733118/SPI_write.p1 ../../../../../bsp/SPI/src/SPI_write.c 
	@-${MV} ${OBJECTDIR}/_ext/1767733118/SPI_write.d ${OBJECTDIR}/_ext/1767733118/SPI_write.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1767733118/SPI_write.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1126170143/timer0_init.p1: ../../../../../bsp/timer0/src/timer0_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1126170143" 
	@${RM} ${OBJECTDIR}/_ext/1126170143/timer0_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1126170143/timer0_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1126170143/timer0_init.p1 ../../../../../bsp/timer0/src/timer0_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1126170143/timer0_init.d ${OBJECTDIR}/_ext/1126170143/timer0_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1126170143/timer0_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1126170143/timer0_reload.p1: ../../../../../bsp/timer0/src/timer0_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1126170143" 
	@${RM} ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1 ../../../../../bsp/timer0/src/timer0_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/1126170143/timer0_reload.d ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1126170143/timer0_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1127093664/timer1_init.p1: ../../../../../bsp/timer1/src/timer1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1127093664" 
	@${RM} ${OBJECTDIR}/_ext/1127093664/timer1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1127093664/timer1_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1127093664/timer1_init.p1 ../../../../../bsp/timer1/src/timer1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1127093664/timer1_init.d ${OBJECTDIR}/_ext/1127093664/timer1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1127093664/timer1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1127093664/timer1_reload.p1: ../../../../../bsp/timer1/src/timer1_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1127093664" 
	@${RM} ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1 ../../../../../bsp/timer1/src/timer1_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/1127093664/timer1_reload.d ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1127093664/timer1_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_box.p1: ../../../../../bsp/u8g2/csrc/u8g2_box.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1 ../../../../../bsp/u8g2/csrc/u8g2_box.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_box.d ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_box.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1: ../../../../../bsp/u8g2/csrc/u8g2_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1 ../../../../../bsp/u8g2/csrc/u8g2_buffer.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.d ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1: ../../../../../bsp/u8g2/csrc/u8g2_circle.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1 ../../../../../bsp/u8g2/csrc/u8g2_circle.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_circle.d ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_circle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1: ../../../../../bsp/u8g2/csrc/u8g2_cleardisplay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1 ../../../../../bsp/u8g2/csrc/u8g2_cleardisplay.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.d ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_cleardisplay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1: ../../../../../bsp/u8g2/csrc/u8g2_hvline.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O0     -o ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1 ../../../../../bsp/u8g2/csrc/u8g2_hvline.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.d ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_hvline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1: ../../../../../bsp/u8g2/csrc/u8g2_intersection.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1 ../../../../../bsp/u8g2/csrc/u8g2_intersection.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.d ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_intersection.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_line.p1: ../../../../../bsp/u8g2/csrc/u8g2_line.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1 ../../../../../bsp/u8g2/csrc/u8g2_line.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_line.d ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_line.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1: ../../../../../bsp/u8g2/csrc/u8g2_ll_hvline.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1 ../../../../../bsp/u8g2/csrc/u8g2_ll_hvline.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.d ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_ll_hvline.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1: ../../../../../bsp/u8g2/csrc/u8g2_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1 ../../../../../bsp/u8g2/csrc/u8g2_setup.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_setup.d ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1: ../../../../../bsp/u8g2_pic18/u8g2_pic18.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1067500865" 
	@${RM} ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1 ../../../../../bsp/u8g2_pic18/u8g2_pic18.c 
	@-${MV} ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.d ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1067500865/u8g2_pic18.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_font.p1: ../../../../../bsp/u8g2/csrc/u8g2_font.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1 ../../../../../bsp/u8g2/csrc/u8g2_font.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_font.d ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_font.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1: ../../../../../bsp/u8g2/csrc/u8g2_polygon.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1 ../../../../../bsp/u8g2/csrc/u8g2_polygon.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.d ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8g2_polygon.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1: ../../../../../bsp/u8g2/csrc/u8x8_8x8.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1 ../../../../../bsp/u8g2/csrc/u8x8_8x8.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.d ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_8x8.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1: ../../../../../bsp/u8g2/csrc/u8x8_byte.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1 ../../../../../bsp/u8g2/csrc/u8x8_byte.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_byte.d ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_byte.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1: ../../../../../bsp/u8g2/csrc/u8x8_cad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1 ../../../../../bsp/u8g2/csrc/u8x8_cad.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_cad.d ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_cad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1: ../../../../../bsp/u8g2/csrc/u8x8_d_ssd1306_96x40.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1 ../../../../../bsp/u8g2/csrc/u8x8_d_ssd1306_96x40.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.d ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_d_ssd1306_96x40.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_display.p1: ../../../../../bsp/u8g2/csrc/u8x8_display.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1 ../../../../../bsp/u8g2/csrc/u8x8_display.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_display.d ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_display.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1: ../../../../../bsp/u8g2/csrc/u8x8_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1 ../../../../../bsp/u8g2/csrc/u8x8_gpio.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.d ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1: ../../../../../bsp/u8g2/csrc/u8x8_setup.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1 ../../../../../bsp/u8g2/csrc/u8x8_setup.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_setup.d ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_setup.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1603162333/u8x8_string.p1: ../../../../../bsp/u8g2/csrc/u8x8_string.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1603162333" 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1 ../../../../../bsp/u8g2/csrc/u8x8_string.c 
	@-${MV} ${OBJECTDIR}/_ext/1603162333/u8x8_string.d ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1603162333/u8x8_string.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/main.p1: ../../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1     -o ${OBJECTDIR}/_ext/43898991/main.p1 ../../main.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/main.d ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1677729834/delay_200ms.o: ../../../../../bsp/common/delay_200ms.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1677729834" 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_200ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_200ms.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1   -o ${OBJECTDIR}/_ext/1677729834/delay_200ms.o  ../../../../../bsp/common/delay_200ms.as 
	@-${MV} ${OBJECTDIR}/_ext/1677729834/delay_200ms.d ${OBJECTDIR}/_ext/1677729834/delay_200ms.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1677729834/delay_200ms.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1677729834/delay_1ms.o: ../../../../../bsp/common/delay_1ms.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1677729834" 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_1ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_1ms.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1   -o ${OBJECTDIR}/_ext/1677729834/delay_1ms.o  ../../../../../bsp/common/delay_1ms.as 
	@-${MV} ${OBJECTDIR}/_ext/1677729834/delay_1ms.d ${OBJECTDIR}/_ext/1677729834/delay_1ms.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1677729834/delay_1ms.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1677729834/delay_10us.o: ../../../../../bsp/common/delay_10us.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1677729834" 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_10us.o.d 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_10us.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1   -o ${OBJECTDIR}/_ext/1677729834/delay_10us.o  ../../../../../bsp/common/delay_10us.as 
	@-${MV} ${OBJECTDIR}/_ext/1677729834/delay_10us.d ${OBJECTDIR}/_ext/1677729834/delay_10us.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1677729834/delay_10us.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/839877155/switch_init.o: ../../../../../bsp/gpio/src/switch_init.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/839877155" 
	@${RM} ${OBJECTDIR}/_ext/839877155/switch_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/839877155/switch_init.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1   -o ${OBJECTDIR}/_ext/839877155/switch_init.o  ../../../../../bsp/gpio/src/switch_init.as 
	@-${MV} ${OBJECTDIR}/_ext/839877155/switch_init.d ${OBJECTDIR}/_ext/839877155/switch_init.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/839877155/switch_init.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1677729834/delay_200ms.o: ../../../../../bsp/common/delay_200ms.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1677729834" 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_200ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_200ms.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1   -o ${OBJECTDIR}/_ext/1677729834/delay_200ms.o  ../../../../../bsp/common/delay_200ms.as 
	@-${MV} ${OBJECTDIR}/_ext/1677729834/delay_200ms.d ${OBJECTDIR}/_ext/1677729834/delay_200ms.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1677729834/delay_200ms.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1677729834/delay_1ms.o: ../../../../../bsp/common/delay_1ms.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1677729834" 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_1ms.o.d 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_1ms.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1   -o ${OBJECTDIR}/_ext/1677729834/delay_1ms.o  ../../../../../bsp/common/delay_1ms.as 
	@-${MV} ${OBJECTDIR}/_ext/1677729834/delay_1ms.d ${OBJECTDIR}/_ext/1677729834/delay_1ms.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1677729834/delay_1ms.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1677729834/delay_10us.o: ../../../../../bsp/common/delay_10us.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1677729834" 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_10us.o.d 
	@${RM} ${OBJECTDIR}/_ext/1677729834/delay_10us.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1   -o ${OBJECTDIR}/_ext/1677729834/delay_10us.o  ../../../../../bsp/common/delay_10us.as 
	@-${MV} ${OBJECTDIR}/_ext/1677729834/delay_10us.d ${OBJECTDIR}/_ext/1677729834/delay_10us.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1677729834/delay_10us.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/839877155/switch_init.o: ../../../../../bsp/gpio/src/switch_init.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/839877155" 
	@${RM} ${OBJECTDIR}/_ext/839877155/switch_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/839877155/switch_init.o 
	${MP_CC} -c $(MP_EXTRA_AS_PRE) -mcpu=$(MP_PROCESSOR_OPTION)    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto -O1   -o ${OBJECTDIR}/_ext/839877155/switch_init.o  ../../../../../bsp/gpio/src/switch_init.as 
	@-${MV} ${OBJECTDIR}/_ext/839877155/switch_init.d ${OBJECTDIR}/_ext/839877155/switch_init.o.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/839877155/switch_init.o.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -I"../../../../../bsp" -I"../../../../../bsp/u8g2/csrc" -I"../../../../" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c90 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/IR_sensorXOLED.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
