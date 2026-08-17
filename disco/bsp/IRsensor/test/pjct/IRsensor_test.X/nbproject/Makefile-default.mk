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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
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
SOURCEFILES_QUOTED_IF_SPACED=../../../src/IRsensor_init.c ../../../src/IRsensor_read_data.c ../../main.c ../../../src/IRsensor_analyze_data.c ../../../../gpio/src/led_init.c ../../../../gpio/src/switch_init.as ../../../../rn52_correction/src/rn52_cmd.c ../../../../rn52_correction/src/rn52_init.c ../../../../timer0/src/timer0_init.c ../../../../timer0/src/timer0_reload.c ../../../../timer1/src/timer1_init.c ../../../../timer1/src/timer1_reload.c ../../../../uart1_correction/src/uart1_getc.c ../../../../uart1_correction/src/uart1_gets.c ../../../../uart1_correction/src/uart1_init.c ../../../../uart1_correction/src/uart1_putc.c ../../../../uart1_correction/src/uart1_puts.c ../../../../uart2_correction/src/uart2_getc.c ../../../../uart2_correction/src/uart2_gets.c ../../../../uart2_correction/src/uart2_init.c ../../../../uart2_correction/src/uart2_putc.c ../../../../uart2_correction/src/uart2_puts.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1 ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1 ${OBJECTDIR}/_ext/43898991/main.p1 ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1 ${OBJECTDIR}/_ext/1810918684/led_init.p1 ${OBJECTDIR}/_ext/1810918684/switch_init.obj ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 ${OBJECTDIR}/_ext/495400039/rn52_init.p1 ${OBJECTDIR}/_ext/626975392/timer0_init.p1 ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 ${OBJECTDIR}/_ext/627898913/timer1_init.p1 ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 ${OBJECTDIR}/_ext/522902897/uart1_init.p1 ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1.d ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1.d ${OBJECTDIR}/_ext/43898991/main.p1.d ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1.d ${OBJECTDIR}/_ext/1810918684/led_init.p1.d ${OBJECTDIR}/_ext/1810918684/switch_init.obj.d ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1 ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1 ${OBJECTDIR}/_ext/43898991/main.p1 ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1 ${OBJECTDIR}/_ext/1810918684/led_init.p1 ${OBJECTDIR}/_ext/1810918684/switch_init.obj ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 ${OBJECTDIR}/_ext/495400039/rn52_init.p1 ${OBJECTDIR}/_ext/626975392/timer0_init.p1 ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 ${OBJECTDIR}/_ext/627898913/timer1_init.p1 ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 ${OBJECTDIR}/_ext/522902897/uart1_init.p1 ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1

# Source Files
SOURCEFILES=../../../src/IRsensor_init.c ../../../src/IRsensor_read_data.c ../../main.c ../../../src/IRsensor_analyze_data.c ../../../../gpio/src/led_init.c ../../../../gpio/src/switch_init.as ../../../../rn52_correction/src/rn52_cmd.c ../../../../rn52_correction/src/rn52_init.c ../../../../timer0/src/timer0_init.c ../../../../timer0/src/timer0_reload.c ../../../../timer1/src/timer1_init.c ../../../../timer1/src/timer1_reload.c ../../../../uart1_correction/src/uart1_getc.c ../../../../uart1_correction/src/uart1_gets.c ../../../../uart1_correction/src/uart1_init.c ../../../../uart1_correction/src/uart1_putc.c ../../../../uart1_correction/src/uart1_puts.c ../../../../uart2_correction/src/uart2_getc.c ../../../../uart2_correction/src/uart2_gets.c ../../../../uart2_correction/src/uart2_init.c ../../../../uart2_correction/src/uart2_putc.c ../../../../uart2_correction/src/uart2_puts.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F27K40
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1: ../../../src/IRsensor_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1 ../../../src/IRsensor_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/IRsensor_init.d ${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1: ../../../src/IRsensor_read_data.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1 ../../../src/IRsensor_read_data.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.d ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/main.p1: ../../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/43898991/main.p1 ../../main.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/main.d ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1: ../../../src/IRsensor_analyze_data.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1 ../../../src/IRsensor_analyze_data.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.d ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1810918684/led_init.p1: ../../../../gpio/src/led_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1810918684" 
	@${RM} ${OBJECTDIR}/_ext/1810918684/led_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1810918684/led_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1810918684/led_init.p1 ../../../../gpio/src/led_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1810918684/led_init.d ${OBJECTDIR}/_ext/1810918684/led_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1810918684/led_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/495400039/rn52_cmd.p1: ../../../../rn52_correction/src/rn52_cmd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/495400039" 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 ../../../../rn52_correction/src/rn52_cmd.c 
	@-${MV} ${OBJECTDIR}/_ext/495400039/rn52_cmd.d ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/495400039/rn52_init.p1: ../../../../rn52_correction/src/rn52_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/495400039" 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/495400039/rn52_init.p1 ../../../../rn52_correction/src/rn52_init.c 
	@-${MV} ${OBJECTDIR}/_ext/495400039/rn52_init.d ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/626975392/timer0_init.p1: ../../../../timer0/src/timer0_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/626975392" 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/626975392/timer0_init.p1 ../../../../timer0/src/timer0_init.c 
	@-${MV} ${OBJECTDIR}/_ext/626975392/timer0_init.d ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/626975392/timer0_reload.p1: ../../../../timer0/src/timer0_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/626975392" 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/626975392/timer0_reload.p1 ../../../../timer0/src/timer0_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/626975392/timer0_reload.d ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/627898913/timer1_init.p1: ../../../../timer1/src/timer1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/627898913" 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/627898913/timer1_init.p1 ../../../../timer1/src/timer1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/627898913/timer1_init.d ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/627898913/timer1_reload.p1: ../../../../timer1/src/timer1_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/627898913" 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/627898913/timer1_reload.p1 ../../../../timer1/src/timer1_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/627898913/timer1_reload.d ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_getc.p1: ../../../../uart1_correction/src/uart1_getc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_getc.p1 ../../../../uart1_correction/src/uart1_getc.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_getc.d ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_gets.p1: ../../../../uart1_correction/src/uart1_gets.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_gets.p1 ../../../../uart1_correction/src/uart1_gets.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_gets.d ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_init.p1: ../../../../uart1_correction/src/uart1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_init.p1 ../../../../uart1_correction/src/uart1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_init.d ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_putc.p1: ../../../../uart1_correction/src/uart1_putc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_putc.p1 ../../../../uart1_correction/src/uart1_putc.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_putc.d ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_puts.p1: ../../../../uart1_correction/src/uart1_puts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_puts.p1 ../../../../uart1_correction/src/uart1_puts.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_puts.d ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_getc.p1: ../../../../uart2_correction/src/uart2_getc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 ../../../../uart2_correction/src/uart2_getc.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_getc.d ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_gets.p1: ../../../../uart2_correction/src/uart2_gets.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 ../../../../uart2_correction/src/uart2_gets.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_gets.d ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_init.p1: ../../../../uart2_correction/src/uart2_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_init.p1 ../../../../uart2_correction/src/uart2_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_init.d ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_putc.p1: ../../../../uart2_correction/src/uart2_putc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 ../../../../uart2_correction/src/uart2_putc.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_putc.d ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_puts.p1: ../../../../uart2_correction/src/uart2_puts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_puts.p1 ../../../../uart2_correction/src/uart2_puts.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_puts.d ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1: ../../../src/IRsensor_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1 ../../../src/IRsensor_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/IRsensor_init.d ${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/IRsensor_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1: ../../../src/IRsensor_read_data.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1 ../../../src/IRsensor_read_data.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.d ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/IRsensor_read_data.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/43898991/main.p1: ../../main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/43898991" 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/43898991/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/43898991/main.p1 ../../main.c 
	@-${MV} ${OBJECTDIR}/_ext/43898991/main.d ${OBJECTDIR}/_ext/43898991/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/43898991/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1: ../../../src/IRsensor_analyze_data.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1386528437" 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1 ../../../src/IRsensor_analyze_data.c 
	@-${MV} ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.d ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1386528437/IRsensor_analyze_data.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1810918684/led_init.p1: ../../../../gpio/src/led_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1810918684" 
	@${RM} ${OBJECTDIR}/_ext/1810918684/led_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1810918684/led_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1810918684/led_init.p1 ../../../../gpio/src/led_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1810918684/led_init.d ${OBJECTDIR}/_ext/1810918684/led_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1810918684/led_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/495400039/rn52_cmd.p1: ../../../../rn52_correction/src/rn52_cmd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/495400039" 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/495400039/rn52_cmd.p1 ../../../../rn52_correction/src/rn52_cmd.c 
	@-${MV} ${OBJECTDIR}/_ext/495400039/rn52_cmd.d ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/495400039/rn52_cmd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/495400039/rn52_init.p1: ../../../../rn52_correction/src/rn52_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/495400039" 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/495400039/rn52_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/495400039/rn52_init.p1 ../../../../rn52_correction/src/rn52_init.c 
	@-${MV} ${OBJECTDIR}/_ext/495400039/rn52_init.d ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/495400039/rn52_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/626975392/timer0_init.p1: ../../../../timer0/src/timer0_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/626975392" 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/626975392/timer0_init.p1 ../../../../timer0/src/timer0_init.c 
	@-${MV} ${OBJECTDIR}/_ext/626975392/timer0_init.d ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/626975392/timer0_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/626975392/timer0_reload.p1: ../../../../timer0/src/timer0_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/626975392" 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/626975392/timer0_reload.p1 ../../../../timer0/src/timer0_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/626975392/timer0_reload.d ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/626975392/timer0_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/627898913/timer1_init.p1: ../../../../timer1/src/timer1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/627898913" 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/627898913/timer1_init.p1 ../../../../timer1/src/timer1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/627898913/timer1_init.d ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/627898913/timer1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/627898913/timer1_reload.p1: ../../../../timer1/src/timer1_reload.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/627898913" 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d 
	@${RM} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/627898913/timer1_reload.p1 ../../../../timer1/src/timer1_reload.c 
	@-${MV} ${OBJECTDIR}/_ext/627898913/timer1_reload.d ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/627898913/timer1_reload.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_getc.p1: ../../../../uart1_correction/src/uart1_getc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_getc.p1 ../../../../uart1_correction/src/uart1_getc.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_getc.d ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_getc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_gets.p1: ../../../../uart1_correction/src/uart1_gets.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_gets.p1 ../../../../uart1_correction/src/uart1_gets.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_gets.d ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_init.p1: ../../../../uart1_correction/src/uart1_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_init.p1 ../../../../uart1_correction/src/uart1_init.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_init.d ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_putc.p1: ../../../../uart1_correction/src/uart1_putc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_putc.p1 ../../../../uart1_correction/src/uart1_putc.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_putc.d ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_putc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/522902897/uart1_puts.p1: ../../../../uart1_correction/src/uart1_puts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/522902897" 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/522902897/uart1_puts.p1 ../../../../uart1_correction/src/uart1_puts.c 
	@-${MV} ${OBJECTDIR}/_ext/522902897/uart1_puts.d ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/522902897/uart1_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_getc.p1: ../../../../uart2_correction/src/uart2_getc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_getc.p1 ../../../../uart2_correction/src/uart2_getc.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_getc.d ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_getc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_gets.p1: ../../../../uart2_correction/src/uart2_gets.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_gets.p1 ../../../../uart2_correction/src/uart2_gets.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_gets.d ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_gets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_init.p1: ../../../../uart2_correction/src/uart2_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_init.p1 ../../../../uart2_correction/src/uart2_init.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_init.d ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_putc.p1: ../../../../uart2_correction/src/uart2_putc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_putc.p1 ../../../../uart2_correction/src/uart2_putc.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_putc.d ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_putc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1033437074/uart2_puts.p1: ../../../../uart2_correction/src/uart2_puts.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1033437074" 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     -o${OBJECTDIR}/_ext/1033437074/uart2_puts.p1 ../../../../uart2_correction/src/uart2_puts.c 
	@-${MV} ${OBJECTDIR}/_ext/1033437074/uart2_puts.d ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1033437074/uart2_puts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1810918684/switch_init.obj: ../../../../gpio/src/switch_init.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1810918684" 
	@${RM} ${OBJECTDIR}/_ext/1810918684/switch_init.obj.d 
	@${RM} ${OBJECTDIR}/_ext/1810918684/switch_init.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1  --debugger=none    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1810918684/switch_init.obj  ../../../../gpio/src/switch_init.as 
	@-${MV} ${OBJECTDIR}/_ext/1810918684/switch_init.d ${OBJECTDIR}/_ext/1810918684/switch_init.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1810918684/switch_init.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1810918684/switch_init.obj: ../../../../gpio/src/switch_init.as  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1810918684" 
	@${RM} ${OBJECTDIR}/_ext/1810918684/switch_init.obj.d 
	@${RM} ${OBJECTDIR}/_ext/1810918684/switch_init.obj 
	${MP_CC} -C $(MP_EXTRA_AS_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/1810918684/switch_init.obj  ../../../../gpio/src/switch_init.as 
	@-${MV} ${OBJECTDIR}/_ext/1810918684/switch_init.d ${OBJECTDIR}/_ext/1810918684/switch_init.obj.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1810918684/switch_init.obj.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../lib/bsplib.lpp ../../../../lib/bsplib_asm.lib  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.map  -D__DEBUG=1  --debugger=none  -DXPRJ_default=$(CND_CONF)    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"        $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\lib\bsplib.lpp ..\..\..\..\lib\bsplib_asm.lib 
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../lib/bsplib.lpp ../../../../lib/bsplib_asm.lib 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)    --double=24 --float=24 --emi=wordwrite --opt=+asm,+asmfile,-speed,+space,-debug,-local --addrqual=ignore --mode=free -P -N255 -I"../../../../" --warn=-3 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/IRsensor_test.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\lib\bsplib.lpp ..\..\..\..\lib\bsplib_asm.lib 
	
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
