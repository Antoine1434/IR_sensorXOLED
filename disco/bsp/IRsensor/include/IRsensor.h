/**
 * @file IRsensor/include/IRsensor.h
 * @brief header file for IRsensor library 
 * @author antoine merceron - copyleft
 */

/** @ingroup IRsensor */
/* @{ */
/** @defgroup  IRsensor */
/** @ingroup IRsensor */
/* @{ */

#ifndef _IRsensor_H
#define _IRsensor_H

#define init_test

#include <common/include/common.h>

/* API parameters */
#define SYSTEM_TICK_PERIOD_IR      62500 /* période d'interruption 1s */

/*API reference*/

/**
* @brief IRsensor configuration
*/
 void IRsensor_init(void);
 
/**
* @brief IRsensor read data
*/
 uInt8_t IRsensor_read_data(void);

/**
* @brief IRsensor read data
*/
 uInt8_t IRsensor_analyze_data(uInt8_t data);

/**
* @brief IRsensor display data with uart
*/
#ifdef UART
void IRsensor_display(uInt8_t compteur);
#endif

/**
* @brief IRsensor stop 
*/
void IRsensor_stop(void);

/**
* @brief IRsensor system initialisation
*/
void IRsensor_system_init(void);

/**
* @brief activation EN (pin RD2 <--> pin RB1)  
*/
#define EN_init()   TRISAbits.TRISA1 = 0; \
                    LATAbits.LATA1 = 1;
                                       
/**
* @brief activation OUT (pin RB0)  
*/                           
#define OUT_init()  ANSELBbits.ANSELB5 = 0; \ /*ST and TTL input buffers are enabled */
                    TRISBbits.TRISB5 = 1;

#define IRsensor_off()  ANSELBbits.ANSELB5 = 1; \
                        TRISBbits.TRISB5 = 0;
#endif /* _IRsensor_H */
 





