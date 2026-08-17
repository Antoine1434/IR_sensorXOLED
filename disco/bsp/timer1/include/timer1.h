/**
 * @file timer1/include/timer1.h
 * @brief header file for TIMER0 library 
 * @author hugo descoubes - copyleft
 */

/** @ingroup TIMER */
/* @{ */
/** @defgroup  TIMER1 */
/** @ingroup TIMER1 */
/* @{ */
#ifndef _TIMER1_H
#define _TIMER1_H

#include <common/include/common.h>

/* API parameters */
#define TIMER1_PERIOD   20000     /* 2ms period example */
      
/* API reference */

 /**
  * @brief timer1 configuration
  * @li source : Fosc/4 (16MHz)
  * @li mode : 16 bits asynchronous
  * @li prescaler : prescale 1:16 and postcale 1:1
  * @li sleep : active on sleep mode
  * @li interrupt : interrupt enable with high priority ISR 
  * @li enable : timer enable by default
  * @warning reference counting period 1us (only for Fosc = HFINTOSC 64MHz) 
  * @param count number of reference cycles to count. range [0-65535]
  */
void timer1_init(uInt16_t count);

 /**
  * @brief timer 1 reload value
  * @warning reference counting period 1us (only for HFINTOSC 64MHz CPU clock) 
  * @param count number of reference cycles to count. range [0-65535]
  */
void timer1_reload(uInt16_t count);

 /**
  * @brief enable timer 1 module
  */
#define timer1_start() T1CONbits.TMR1ON = 1

 /**
  * @brief disable timer 1 module
  */
#define timer1_stop() T1CONbits.TMR1ON = 0

#endif /* _TIMER0_H */


















