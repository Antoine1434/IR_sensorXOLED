#include <bsplib.h>




uInt8_t buffer[96][39] @0x160;

 void OLED_W_full(uInt8_t choose){
    for(uInt8_t page = 0; page < 8; page++){
        SPI_write_command(0xB0 | page);
        SPI_write_command(0x00);
        SPI_write_command(0x10);

        LATBbits.LATB2 = 0;
    if (choose){
        for(uInt8_t col = 0; col < 128; col++){
            LATBbits.LATB0 = 1;
            SPI_send(0xFF);
         
        }
        
    }
    else{
        for(uInt8_t col = 0; col < 128; col++){
            LATBbits.LATB0 = 1;
            SPI_send(0x00);
        } 
    }
    LATBbits.LATB2 = 1;

    }
 }
 
 void OLED_W_xy(uInt8_t x, uInt8_t y)
 {
     


    uInt8_t page = y/8;
    uInt8_t a = y%8;
    
    
        
    //buffer[page][x] |= (1<<a);
    //SPI_write_data(buffer[page][x]);
    
    
    for (int i = 0; i < 96; i++){
        if (i>92 && i<120 && i!=x){
                buffer[page][i] |= (1<<a);
                }
       SPI_write_data(buffer[page][i]);
    } 

    for(int k = 0 ; k<=7;k++){
        if (k!=page){
    SPI_write_command(0xB0 | k);
    SPI_write_command(0x00);       
    SPI_write_command(0x10);
            for (int i = 0; i < 128; i++){
                if (i>92 && i<120 && i!=x){
                    buffer[k][i] = 0x00;
                }
    
                SPI_write_data(buffer[k][i]);
            } 
        }
    }
 }





uint8_t u8x8_byte_4wire_sw_spi_pic18(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
  
  uint8_t *data;

 
  switch(msg)
  {
    case U8X8_MSG_BYTE_SEND:
      data = (uint8_t *)arg_ptr;
           while(arg_int--)
            {
                SPI_write(*data++);
            }
      
      LATAbits.LATA7 ^= 1;
      
      break;
      
    case U8X8_MSG_BYTE_INIT: 
      /* disable chipselect */
      LATBbits.LATB2 = 1;
      /* no wait required here */
      break;
    case U8X8_MSG_BYTE_SET_DC:
      LATBbits.LATB0 = arg_int; // 0=commande, 1=donnée; 
      break;
    case U8X8_MSG_BYTE_START_TRANSFER:
      LATBbits.LATB2 = 0;
      break;
    case U8X8_MSG_BYTE_END_TRANSFER:
      LATBbits.LATB2 = 1;
      break;
    default:
      return 0;
  }
  return 1;
} 

uint8_t u8x8_gpio_and_delay_pic18(u8x8_t *u8x8,uint8_t msg,uint8_t arg_int,void *arg_ptr)
{
    
    switch(msg){
        case U8X8_MSG_GPIO_RESET:
            LATAbits.LATA2 = arg_int;
            break;
        case U8X8_MSG_GPIO_DC:
            LATBbits.LATB0 = arg_int;
            break;
        case U8X8_MSG_GPIO_CS:
            LATBbits.LATB2 = arg_int;
            break;
        case U8X8_MSG_DELAY_MILLI:
            while(arg_int--){
                delay_1ms();
            }
            break;
        case U8X8_MSG_DELAY_10MICRO:
            while(arg_int--){
                delay_10us();
            }
            break;
        case U8X8_MSG_GPIO_AND_DELAY_INIT:
            ANSELA = 0;
            ANSELB = 0;
    
            TRISAbits.TRISA2 = 0;// RESET (RD2 -> RA2)
            LATAbits.LATA2 = 0; // When the pin is pulled LOW, initialization of the chip is executed.
            delay_200ms();
            LATAbits.LATA2 = 1;
            delay_200ms();
            
            TRISBbits.TRISB2 = 0;// CS (RD3 -> RB2)
            LATBbits.LATB2 = 0;
    
            TRISBbits.TRISB1 = 0; // SCK (RB1)
            TRISBbits.TRISB3 = 0; // SDI (RB3)
    
            TRISBbits.TRISB0 = 0; // D/C (RD1 -> RB0)
            LATBbits.LATB0 = 0; 
   
    break;
        default:
            return 0;
    }
    return 1;
}






uint8_t eight[5] = {
    0x36, // col 0
    0x49, // col 1
    0x49, // col 2
    0x49, // col 3
    0x36  // col 4
            
};

void OLED_W_eight(uInt8_t x, uInt8_t y)
{
    /*  for(uInt8_t page = 0; page < 8; page++){
        SPI_write_command(0xB0 | page);
        SPI_write_command(0x00);
        SPI_write_command(0x10);

        LATBbits.LATB2 = 0;
 
        for(uInt8_t col = 0; col < 128; col++){
            if (page == 4 && col == 30){
                               buffer[page][col] |= (1<<page);
               
       SPI_write_data(buffer[page][col]);
            }
            if ((col > 60 && col < 62) | (col > 40 && col<42)){
            LATBbits.LATB0 = 1;
            SPI_send(0xFF);

            }


    
            else{
                 LATBbits.LATB0 = 1;
            SPI_send(0x00);  
            }
        }
        
          }*/
    uint8_t page = y / 8;

    if (page > 4 || x > 88)
        return;

    SPI_write_command(0xB0 | page);
    SPI_write_command(0x00 | (x & 0x0F));
    SPI_write_command(0x10 | (x >> 4));

    for (uInt8_t i = 0; i < 5; i++)
    {
        buffer[page][x + i] = eight[i];
        SPI_write_data(buffer[page][x + i]);
    }
}

void DrawLine(u8g2_t *u8g2, u8g2_uint_t x1, u8g2_uint_t y1, u8g2_uint_t x2, u8g2_uint_t y2)
{
     u8g2_uint_t tmp;
  u8g2_uint_t x,y;
  u8g2_uint_t dx, dy;
  u8g2_int_t err;
  u8g2_int_t ystep;

  uint8_t swapxy = 0;
  
  /* no intersection check at the moment, should be added... */

  if ( x1 > x2 ) dx = x1-x2; else dx = x2-x1;
  if ( y1 > y2 ) dy = y1-y2; else dy = y2-y1;

  if ( dy > dx ) 
  {
    swapxy = 1;
    tmp = dx; dx =dy; dy = tmp;
    tmp = x1; x1 =y1; y1 = tmp;
    tmp = x2; x2 =y2; y2 = tmp;
  }
  if ( x1 > x2 ) 
  {
    tmp = x1; x1 =x2; x2 = tmp;
    tmp = y1; y1 =y2; y2 = tmp;
  }
  err = dx >> 1;
  if ( y2 > y1 ) ystep = 1; else ystep = -1;
  y = y1;

#ifndef  U8G2_16BIT
  if ( x2 == 255 )
    x2--;
#else
  if ( x2 == 0xffff )
    x2--;
#endif

  for( x = x1; x <= x2; x++ )
  {
    if ( swapxy == 0 ) 
      u8g2_DrawPixel(u8g2, x, y); 
    else 
      u8g2_DrawPixel(u8g2, y, x); 
    err -= (u8g2_uint_t)dy;
    if ( err < 0 ) 
    {
      y += (u8g2_uint_t)ystep;
      err += (u8g2_uint_t)dx;
    }
  }
}