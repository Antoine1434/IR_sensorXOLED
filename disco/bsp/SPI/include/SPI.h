/**
 * @file SPI/include/SPI.h
 * @brief header file for SPI library 
 * @author antoine merceron - copyleft
 */

/** @ingroup SPI */
/* @{ */
/** @defgroup  SPI */
/** @ingroup SPI */
/* @{ */

#ifndef _SPI_H
#define _SPI_H

#include <common/include/common.h>

/*API reference*/

/**
 * @brief SPI configuration 
 */
void SPI_init(void);

/**
 * @brief send 8 bits payload (command) to an SPI slave device
 */
void SPI_write_command(uInt8_t payload);

/**
 * @brief send 8 bits payload (data) to an SPI slave device
 */
void SPI_write_data(uInt8_t payload);

/**
 * @brief send 8 bits payload (not manage if the payload is a data or a command) to an SPI slave device
 */
void SPI_write(uInt8_t payload);

/**
 * @brief read 8 bits payload to an SPI slave device
 */
uInt8_t SPI_read(void);

/**
 * @brief send 8 bits data and wait the end of the transmission
 */
#define SPI_send(value)   SSP1BUF = value;    \
                          while( !SSP1STATbits.BF ); 


#endif /*_SPI_H*/