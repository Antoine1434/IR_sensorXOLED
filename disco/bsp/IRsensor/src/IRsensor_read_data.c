/*
 * IRsensor/src/IRsensor_read_data.c
 * read data IRsensor
 * author 
 */

#include <IRsensor/include/IRsensor.h>



uInt8_t  IRsensor_read_data()
{
    if (PORTBbits.RB5){
            
        return TRUE;
    }
    else{   
        return FALSE;
    } 
}
