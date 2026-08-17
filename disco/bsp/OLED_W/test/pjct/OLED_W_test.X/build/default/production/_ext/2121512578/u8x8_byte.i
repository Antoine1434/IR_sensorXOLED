
# 1 "../../../../u8g2/csrc/u8x8_byte.c"

# 13 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 28
typedef __int24 int24_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 65
typedef __uint24 uint24_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 109
typedef __int24 int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 154
typedef __uint24 uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 200
typedef __int24 int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 240
typedef __uint24 uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;

# 7 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\stdarg.h"
typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);

# 4 "C:\Program Files\Microchip\xc8\v2.20\pic\include\__size_t.h"
typedef unsigned size_t;

# 6 "C:\Program Files\Microchip\xc8\v2.20\pic\include\c90\stddef.h"
typedef int ptrdiff_t;

# 211 "../../../../u8g2/csrc/u8x8.h"
typedef struct u8x8_struct u8x8_t;
typedef struct u8x8_display_info_struct u8x8_display_info_t;
typedef struct u8x8_tile_struct u8x8_tile_t;

typedef uint8_t (*u8x8_msg_cb)(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
typedef uint16_t (*u8x8_char_cb)(u8x8_t *u8x8, uint8_t b);

# 228
struct u8x8_tile_struct
{
uint8_t *tile_ptr;
uint8_t cnt;
uint8_t x_pos;
uint8_t y_pos;
};


struct u8x8_display_info_struct
{


uint8_t chip_enable_level;
uint8_t chip_disable_level;

uint8_t post_chip_enable_wait_ns;
uint8_t pre_chip_disable_wait_ns;
uint8_t reset_pulse_width_ms;
uint8_t post_reset_wait_ms;

# 254
uint8_t sda_setup_time_ns;



uint8_t sck_pulse_width_ns;


uint32_t sck_clock_hz;

# 271
uint8_t spi_mode;


uint8_t i2c_bus_clock_100kHz;

# 280
uint8_t data_setup_time_ns;

uint8_t write_pulse_width_ns;


uint8_t tile_width;
uint8_t tile_height;

uint8_t default_x_offset;
uint8_t flipmode_x_offset;

# 297
uint16_t pixel_width;
uint16_t pixel_height;
};

# 342
struct u8x8_struct
{
const u8x8_display_info_t *display_info;
u8x8_char_cb next_cb;
u8x8_msg_cb display_cb;
u8x8_msg_cb cad_cb;
u8x8_msg_cb byte_cb;
u8x8_msg_cb gpio_and_delay_cb;
uint32_t bus_clock;
const uint8_t *font;
uint16_t encoding;
uint8_t x_offset;
uint8_t is_font_inverse_mode;
uint8_t i2c_address;


uint8_t i2c_started;

uint8_t utf8_state;
uint8_t gpio_result;
uint8_t debounce_default_pin_state;
uint8_t debounce_last_pin_state;
uint8_t debounce_state;
uint8_t debounce_result_msg;

# 372
};

# 407
typedef struct u8log_struct u8log_t;



typedef void (*u8log_cb)(u8log_t * u8log);

struct u8log_struct
{

void *aux_data;
uint8_t width, height;
u8log_cb cb;
uint8_t *screen_buffer;
uint8_t is_redraw_line_for_each_char;
int8_t line_height_offset;



uint8_t cursor_x, cursor_y;
uint8_t redraw_line;
uint8_t is_redraw_line;
uint8_t is_redraw_all;
uint8_t is_redraw_all_required_for_next_nl;
};

# 436
void u8x8_d_helper_display_setup_memory(u8x8_t *u8x8, const u8x8_display_info_t *display_info);
void u8x8_d_helper_display_init(u8x8_t *u8g2);

# 539
uint8_t u8x8_dummy_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

# 547
void u8x8_SetupDefaults(u8x8_t *u8x8);

void u8x8_Setup(u8x8_t *u8x8, u8x8_msg_cb display_cb, u8x8_msg_cb cad_cb, u8x8_msg_cb byte_cb, u8x8_msg_cb gpio_and_delay_cb);



uint8_t u8x8_DrawTile(u8x8_t *u8x8, uint8_t x, uint8_t y, uint8_t cnt, uint8_t *tile_ptr);

# 561
void u8x8_SetupMemory(u8x8_t *u8x8);

# 569
void u8x8_InitInterface(u8x8_t *u8x8);

# 577
void u8x8_InitDisplay(u8x8_t *u8x8);

void u8x8_SetPowerSave(u8x8_t *u8x8, uint8_t is_enable);
void u8x8_SetFlipMode(u8x8_t *u8x8, uint8_t mode);
void u8x8_SetContrast(u8x8_t *u8x8, uint8_t value);
void u8x8_ClearDisplayWithTile(u8x8_t *u8x8, const uint8_t *buf) ;
void u8x8_ClearDisplay(u8x8_t *u8x8);
void u8x8_FillDisplay(u8x8_t *u8x8);
void u8x8_RefreshDisplay(u8x8_t *u8x8);
void u8x8_ClearLine(u8x8_t *u8x8, uint8_t line);

# 621
uint8_t u8x8_cad_SendCmd(u8x8_t *u8x8, uint8_t cmd) ;
uint8_t u8x8_cad_SendArg(u8x8_t *u8x8, uint8_t arg) ;
uint8_t u8x8_cad_SendMultipleArg(u8x8_t *u8x8, uint8_t cnt, uint8_t arg) ;
uint8_t u8x8_cad_SendData(u8x8_t *u8x8, uint8_t cnt, uint8_t *data) ;
uint8_t u8x8_cad_StartTransfer(u8x8_t *u8x8) ;
uint8_t u8x8_cad_EndTransfer(u8x8_t *u8x8) ;
void u8x8_cad_vsendf(u8x8_t * u8x8, const char *fmt, va_list va);
void u8x8_SendF(u8x8_t * u8x8, const char *fmt, ...);

# 658
void u8x8_cad_SendSequence(u8x8_t *u8x8, uint8_t const *data);
uint8_t u8x8_cad_empty(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_110(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_gu800_cad_110(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_001(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_011(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_100(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_st7920_spi(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_ssd13xx_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_011_ssd13xx_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_ssd13xx_fast_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_st75256_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_ld7032_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_uc16xx_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_cad_uc1638_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

# 690
uint8_t u8x8_byte_SetDC(u8x8_t *u8x8, uint8_t dc) ;
uint8_t u8x8_byte_SendByte(u8x8_t *u8x8, uint8_t byte) ;
uint8_t u8x8_byte_SendBytes(u8x8_t *u8x8, uint8_t cnt, uint8_t *data) ;
uint8_t u8x8_byte_StartTransfer(u8x8_t *u8x8);
uint8_t u8x8_byte_EndTransfer(u8x8_t *u8x8);

uint8_t u8x8_byte_empty(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_byte_4wire_sw_spi(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_byte_8bit_6800mode(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_byte_8bit_8080mode(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_byte_3wire_sw_spi(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

void u8x8_byte_set_ks0108_cs(u8x8_t *u8x8, uint8_t arg) ;
uint8_t u8x8_byte_ks0108(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_byte_ssd13xx_sw_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_byte_sw_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_byte_sed1520(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

# 786
void u8x8_gpio_call(u8x8_t *u8x8, uint8_t msg, uint8_t arg) ;

# 795
uint8_t u8x8_GetMenuEvent(u8x8_t *u8x8);



void u8x8_SetupStdio(u8x8_t *u8x8);



void u8x8_Setup_SDL_128x64(u8x8_t *u8x8);
void u8x8_Setup_SDL_240x160(u8x8_t *u8x8);
void u8x8_Setup_SDL_256x128(u8x8_t *u8x8);
int u8g_sdl_get_key(void);



void u8x8_Setup_TGA_DESC(u8x8_t *u8x8);
void u8x8_Setup_TGA_LCD(u8x8_t *u8x8);
void tga_save(const char *name);



uint8_t u8x8_GetBitmapPixel(u8x8_t *u8x8, uint16_t x, uint16_t y);
void u8x8_SaveBitmapTGA(u8x8_t *u8x8, const char *filename);
void u8x8_SetupBitmap(u8x8_t *u8x8, uint16_t pixel_width, uint16_t pixel_height);
uint8_t u8x8_ConnectBitmapToU8x8(u8x8_t *u8x8);



void u8x8_SetupLinuxFb(u8x8_t *u8x8, int fbfd);
void u8x8_LinuxFbSetActiveColor(uint32_t color);



void u8x8_Setup_Utf8(u8x8_t *u8x8);
void utf8_show(void);

# 835
uint8_t u8x8_d_null_cb(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);


uint8_t u8x8_d_uc1701_ea_dogs102(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1701_mini12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1305_128x32_noname(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1305_128x32_adafruit(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

uint8_t u8x8_d_ssd1305_128x64_adafruit(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1305_128x64_raystar(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_128x64_noname(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_128x64_vcomh0(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_128x64_alt0(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1309_128x64_noname0(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

uint8_t u8x8_d_ssd1309_128x128_noname0(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

uint8_t u8x8_d_ssd1309_128x64_noname2(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

uint8_t u8x8_d_ssd1312_128x64_noname(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1312_128x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1312_120x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1312_120x28(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

uint8_t u8x8_d_ssd1306_2040x16(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_128x32_univision(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_128x32_winstar(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_102x64_ea_oleds102(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_64x48_er(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_48x64_winstar(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_64x32_noname(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_64x32_1f(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_96x16_er(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_96x40(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_96x39(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1306_72x40_er(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1106_128x64_noname(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1106_128x64_vcomh0(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1106_128x64_winstar(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1106_128x32_visionox(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1106_72x40_wise(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1106_64x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1107_64x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1107_seeed_96x96(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1107_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1107_128x80(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1107_pimoroni_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1107_seeed_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1107_hjr_oel1m0201_96x96(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1107_tk078f288_80x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1108_128x160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1108_160x160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ch1120_128x160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sh1122_256x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7920_128x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7920_144x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7920_160x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7920_192x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7920_256x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7920_128x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ls013b7dh03_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ls027b7dh01_400x240(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ls027b7dh01_m0_400x240(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ls013b7dh05_144x168(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ls011b7dh03_160x68(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7511_avd_320x240(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7511_640x320(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7528_nhd_c160100(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7528_erc16064(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7539_192x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_ea_dogm128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_lm6063(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_64128n(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_ea_dogm132(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_zolen_128x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_nhd_c12832(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_nhd_c12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_jlx12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_lm6059(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_ks0713(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_lx12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_erc12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7565_erc12864_alt(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_pi_132x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_jlx12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_122x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_enh_dg128064(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_enh_dg128064i(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_64x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_hem6432(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_os12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_erc13232(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_erc12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_lw12832(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_yxd12832(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7567_96x65(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7571_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7571_128x96(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7571_g12896(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7302_122x250(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7305_122x250(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7305_200x200(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7305_168x384(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7305_300x400(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7586s_s028hn118a(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7586s_jlx384160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7586s_erc240160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7586s_ymc240160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7586s_jlx320160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7586s_md240128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7586s_pe24064(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st7588_jlx12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75160_jm16096(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75161_jlx160160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_jlx256128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_wo256x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_jlx256160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_jlx256160m(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_jlx256160_alt(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_jlx240160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_jlx25664(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_jlx172104(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_jlx19296(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75256_jlx16080(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_st75320_jlx320240(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_nt7534_tg12864r(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ld7032_60x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ld7032_60x32_alt(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ld7032_128x36(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_t6963_240x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_t6963_240x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_t6963_128x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_t6963_128x64_alt(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_t6963_160x80(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_t6963_256x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_t6963_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_t6963_128x160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1316_128x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1316_96x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1317_96x96(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1318_128x96(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1318_128x96_xcp(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1320_160x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1320_160x132(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1320_160x80(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1320_128x72(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1322_240x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1322_topwin_240x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1322_nhd_256x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1322_zjy_256x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1322_nhd_128x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1362z_256x64_oel1m0033we(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1362_256x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1362_206x36(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1363_256x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_a2printer_384x240(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sed1330_240x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sed1330_240x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sed1330_256x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sed1330_320x200(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sed1330_320x160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ra8835_nhd_240x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ra8835_320x240(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ra8835_320x160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1325_nhd_128x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd0323_os128064(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1327_ws_96x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1327_seeed_96x96(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1327_ea_w128128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1327_midas_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1327_zjy_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1327_ws_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1327_visionox_128x96(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1326_er_256x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1329_128x96_noname(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1329_96x96_noname(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1601_128x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1601_128x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1604_jlx12864(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1604_jlx19264(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1608_erc24064(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1608_dem240064(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1608_erc240120(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1608_240x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1609_slg19264(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1610_ea_dogxl160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1611_ea_dogm240(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1611_ea_dogxl240(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1611_ew50850(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1611_cg160160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1617_jlx128128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1611_ids4073(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1628_128x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1628_256x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1628_256x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1638_160x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1638_192x96(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1638_240x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1698_160x160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_uc1698_240x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ks0108_128x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ks0108_erm19264(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_t7932_150x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_hd44102_100x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sbn1661_122x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sed1520_122x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_sbn1661_80x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_pcd8544_84x48(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_pcf8812_96x65(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_pcf8812_101x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_hx1230_96x68(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1606_172x72(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1607_200x200(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1607_v2_200x200(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1607_gd_200x200(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1607_ws_200x200(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_il3820_296x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_il3820_v2_296x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_lc7981_160x80(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_lc7981_160x160(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_lc7981_240x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_lc7981_240x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_lc7981_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ist3020_erc19264(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ist3088_320x240(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ist7920_128x128(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_max7219_64x8(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_max7219_32x8(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_max7219_16x16(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_max7219_8x8(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_s1d15e06_160100(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_s1d15300_lm6023(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_s1d15300_97x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_s1d15300_100x32(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_s1d15300_100x32i(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_s1d15721_240x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_gu800_128x64(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_gu800_160x16(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_gp1287ai_256x50(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_gp1247ai_253x63(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_gp1294ai_256x48(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);
uint8_t u8x8_d_ssd1315_128x64_noname(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr);

# 1083
uint16_t u8x8_upscale_byte(uint8_t x) ;

void u8x8_get_glyph_data(u8x8_t *u8x8, uint8_t encoding, uint8_t *buf, uint8_t tile_offset) ;

void u8x8_utf8_init(u8x8_t *u8x8);
uint16_t u8x8_ascii_next(u8x8_t *u8x8, uint8_t b);
uint16_t u8x8_utf8_next(u8x8_t *u8x8, uint8_t b);




void u8x8_SetFont(u8x8_t *u8x8, const uint8_t *font_8x8);
void u8x8_DrawGlyph(u8x8_t *u8x8, uint8_t x, uint8_t y, uint8_t encoding);
void u8x8_Draw2x2Glyph(u8x8_t *u8x8, uint8_t x, uint8_t y, uint8_t encoding);
void u8x8_Draw1x2Glyph(u8x8_t *u8x8, uint8_t x, uint8_t y, uint8_t encoding);
uint8_t u8x8_DrawString(u8x8_t *u8x8, uint8_t x, uint8_t y, const char *s);
uint8_t u8x8_DrawUTF8(u8x8_t *u8x8, uint8_t x, uint8_t y, const char *s);
uint8_t u8x8_Draw2x2String(u8x8_t *u8x8, uint8_t x, uint8_t y, const char *s);
uint8_t u8x8_Draw2x2UTF8(u8x8_t *u8x8, uint8_t x, uint8_t y, const char *s);
uint8_t u8x8_Draw1x2String(u8x8_t *u8x8, uint8_t x, uint8_t y, const char *s);
uint8_t u8x8_Draw1x2UTF8(u8x8_t *u8x8, uint8_t x, uint8_t y, const char *s);
uint8_t u8x8_GetUTF8Len(u8x8_t *u8x8, const char *s);




const char *u8x8_u8toa(uint8_t v, uint8_t d);
const char *u8x8_s8toa(int8_t v, uint8_t d);
const char *u8x8_u8tox(uint8_t v, uint8_t d);
const char *u8x8_u16toa(uint16_t v, uint8_t d);
const char *u8x8_utoa(uint16_t v);

# 1119
uint8_t u8x8_GetStringLineCnt(const char *str);
const char *u8x8_GetStringLineStart(uint8_t line_idx, const char *str );
void u8x8_CopyStringLine(char *dest, uint8_t line_idx, const char *str);

uint8_t u8x8_DrawUTF8Line(u8x8_t *u8x8, uint8_t x, uint8_t y, uint8_t w, const char *s);

uint8_t u8x8_DrawUTF8Lines(u8x8_t *u8x8, uint8_t x, uint8_t y, uint8_t w, const char *s);




struct _u8sl_struct
{
uint8_t visible;
uint8_t total;
uint8_t first_pos;
uint8_t current_pos;

uint8_t x;
uint8_t y;
};
typedef struct _u8sl_struct u8sl_t;

typedef void (*u8x8_sl_cb)(u8x8_t *u8x8, u8sl_t *u8sl, uint8_t idx, const void *aux);

void u8sl_Next(u8sl_t *u8sl);
void u8sl_Prev(u8sl_t *u8sl);

uint8_t u8x8_UserInterfaceSelectionList(u8x8_t *u8x8, const char *title, uint8_t start_pos, const char *sl);




uint8_t u8x8_UserInterfaceMessage(u8x8_t *u8x8, const char *title1, const char *title2, const char *title3, const char *buttons);

# 1158
uint8_t u8x8_capture_get_pixel_1(uint16_t x, uint16_t y, uint8_t *dest_ptr, uint8_t tile_width);



uint8_t u8x8_capture_get_pixel_2(uint16_t x, uint16_t y, uint8_t *dest_ptr, uint8_t tile_width);



void u8x8_capture_write_pbm_pre(uint8_t tile_width, uint8_t tile_height, void (*out)(const char *s));
void u8x8_capture_write_pbm_buffer(uint8_t *buffer, uint8_t tile_width, uint8_t tile_height, uint8_t (*get_pixel)(uint16_t x, uint16_t y, uint8_t *dest_ptr, uint8_t tile_width), void (*out)(const char *s));

void u8x8_capture_write_xbm_pre(uint8_t tile_width, uint8_t tile_height, void (*out)(const char *s));
void u8x8_capture_write_xbm_buffer(uint8_t *buffer, uint8_t tile_width, uint8_t tile_height, uint8_t (*get_pixel)(uint16_t x, uint16_t y, uint8_t *dest_ptr, uint8_t tile_width), void (*out)(const char *s));

# 1178
uint8_t u8x8_UserInterfaceInputValue(u8x8_t *u8x8, const char *title, const char *pre, uint8_t *value, uint8_t lo, uint8_t hi, uint8_t digits, const char *post);



void u8log_Init(u8log_t *u8log, uint8_t width, uint8_t height, uint8_t *buf);
void u8log_SetCallback(u8log_t *u8log, u8log_cb cb, void *aux_data);
void u8log_SetRedrawMode(u8log_t *u8log, uint8_t is_redraw_line_for_each_char);
void u8log_SetLineHeightOffset(u8log_t *u8log, int8_t line_height_offset);
void u8log_WriteString(u8log_t *u8log, const char *s) ;
void u8log_WriteChar(u8log_t *u8log, uint8_t c) ;
void u8log_WriteHex8(u8log_t *u8log, uint8_t b) ;
void u8log_WriteHex16(u8log_t *u8log, uint16_t v);
void u8log_WriteHex32(u8log_t *u8log, uint32_t v);
void u8log_WriteDec8(u8log_t *u8log, uint8_t v, uint8_t d);
void u8log_WriteDec16(u8log_t *u8log, uint16_t v, uint8_t d);



void u8x8_DrawLog(u8x8_t *u8x8, uint8_t x, uint8_t y, u8log_t *u8log);
void u8log_u8x8_cb(u8log_t * u8log);




extern const uint8_t u8x8_font_amstrad_cpc_extended_f[] ;
extern const uint8_t u8x8_font_amstrad_cpc_extended_r[] ;
extern const uint8_t u8x8_font_amstrad_cpc_extended_n[] ;
extern const uint8_t u8x8_font_amstrad_cpc_extended_u[] ;
extern const uint8_t u8x8_font_5x7_f[] ;
extern const uint8_t u8x8_font_5x7_r[] ;
extern const uint8_t u8x8_font_5x7_n[] ;
extern const uint8_t u8x8_font_5x8_f[] ;
extern const uint8_t u8x8_font_5x8_r[] ;
extern const uint8_t u8x8_font_5x8_n[] ;
extern const uint8_t u8x8_font_8x13_1x2_f[] ;
extern const uint8_t u8x8_font_8x13_1x2_r[] ;
extern const uint8_t u8x8_font_8x13_1x2_n[] ;
extern const uint8_t u8x8_font_8x13B_1x2_f[] ;
extern const uint8_t u8x8_font_8x13B_1x2_r[] ;
extern const uint8_t u8x8_font_8x13B_1x2_n[] ;
extern const uint8_t u8x8_font_7x14_1x2_f[] ;
extern const uint8_t u8x8_font_7x14_1x2_r[] ;
extern const uint8_t u8x8_font_7x14_1x2_n[] ;
extern const uint8_t u8x8_font_7x14B_1x2_f[] ;
extern const uint8_t u8x8_font_7x14B_1x2_r[] ;
extern const uint8_t u8x8_font_7x14B_1x2_n[] ;
extern const uint8_t u8x8_font_open_iconic_arrow_1x1[] ;
extern const uint8_t u8x8_font_open_iconic_check_1x1[] ;
extern const uint8_t u8x8_font_open_iconic_embedded_1x1[] ;
extern const uint8_t u8x8_font_open_iconic_play_1x1[] ;
extern const uint8_t u8x8_font_open_iconic_thing_1x1[] ;
extern const uint8_t u8x8_font_open_iconic_weather_1x1[] ;
extern const uint8_t u8x8_font_open_iconic_arrow_2x2[] ;
extern const uint8_t u8x8_font_open_iconic_check_2x2[] ;
extern const uint8_t u8x8_font_open_iconic_embedded_2x2[] ;
extern const uint8_t u8x8_font_open_iconic_play_2x2[] ;
extern const uint8_t u8x8_font_open_iconic_thing_2x2[] ;
extern const uint8_t u8x8_font_open_iconic_weather_2x2[] ;
extern const uint8_t u8x8_font_open_iconic_arrow_4x4[] ;
extern const uint8_t u8x8_font_open_iconic_check_4x4[] ;
extern const uint8_t u8x8_font_open_iconic_embedded_4x4[] ;
extern const uint8_t u8x8_font_open_iconic_play_4x4[] ;
extern const uint8_t u8x8_font_open_iconic_thing_4x4[] ;
extern const uint8_t u8x8_font_open_iconic_weather_4x4[] ;
extern const uint8_t u8x8_font_open_iconic_arrow_8x8[] ;
extern const uint8_t u8x8_font_open_iconic_check_8x8[] ;
extern const uint8_t u8x8_font_open_iconic_embedded_8x8[] ;
extern const uint8_t u8x8_font_open_iconic_play_8x8[] ;
extern const uint8_t u8x8_font_open_iconic_thing_8x8[] ;
extern const uint8_t u8x8_font_open_iconic_weather_8x8[] ;
extern const uint8_t u8x8_font_profont29_2x3_f[] ;
extern const uint8_t u8x8_font_profont29_2x3_r[] ;
extern const uint8_t u8x8_font_profont29_2x3_n[] ;
extern const uint8_t u8x8_font_artossans8_r[] ;
extern const uint8_t u8x8_font_artossans8_n[] ;
extern const uint8_t u8x8_font_artossans8_u[] ;
extern const uint8_t u8x8_font_artosserif8_r[] ;
extern const uint8_t u8x8_font_artosserif8_n[] ;
extern const uint8_t u8x8_font_artosserif8_u[] ;
extern const uint8_t u8x8_font_chroma48medium8_r[] ;
extern const uint8_t u8x8_font_chroma48medium8_n[] ;
extern const uint8_t u8x8_font_chroma48medium8_u[] ;
extern const uint8_t u8x8_font_saikyosansbold8_n[] ;
extern const uint8_t u8x8_font_saikyosansbold8_u[] ;
extern const uint8_t u8x8_font_torussansbold8_r[] ;
extern const uint8_t u8x8_font_torussansbold8_n[] ;
extern const uint8_t u8x8_font_torussansbold8_u[] ;
extern const uint8_t u8x8_font_victoriabold8_r[] ;
extern const uint8_t u8x8_font_victoriabold8_n[] ;
extern const uint8_t u8x8_font_victoriabold8_u[] ;
extern const uint8_t u8x8_font_victoriamedium8_r[] ;
extern const uint8_t u8x8_font_victoriamedium8_n[] ;
extern const uint8_t u8x8_font_victoriamedium8_u[] ;
extern const uint8_t u8x8_font_courB18_2x3_f[] ;
extern const uint8_t u8x8_font_courB18_2x3_r[] ;
extern const uint8_t u8x8_font_courB18_2x3_n[] ;
extern const uint8_t u8x8_font_courR18_2x3_f[] ;
extern const uint8_t u8x8_font_courR18_2x3_r[] ;
extern const uint8_t u8x8_font_courR18_2x3_n[] ;
extern const uint8_t u8x8_font_courB24_3x4_f[] ;
extern const uint8_t u8x8_font_courB24_3x4_r[] ;
extern const uint8_t u8x8_font_courB24_3x4_n[] ;
extern const uint8_t u8x8_font_courR24_3x4_f[] ;
extern const uint8_t u8x8_font_courR24_3x4_r[] ;
extern const uint8_t u8x8_font_courR24_3x4_n[] ;
extern const uint8_t u8x8_font_lucasarts_scumm_subtitle_o_2x2_f[] ;
extern const uint8_t u8x8_font_lucasarts_scumm_subtitle_o_2x2_r[] ;
extern const uint8_t u8x8_font_lucasarts_scumm_subtitle_o_2x2_n[] ;
extern const uint8_t u8x8_font_lucasarts_scumm_subtitle_r_2x2_f[] ;
extern const uint8_t u8x8_font_lucasarts_scumm_subtitle_r_2x2_r[] ;
extern const uint8_t u8x8_font_lucasarts_scumm_subtitle_r_2x2_n[] ;
extern const uint8_t u8x8_font_inr21_2x4_f[] ;
extern const uint8_t u8x8_font_inr21_2x4_r[] ;
extern const uint8_t u8x8_font_inr21_2x4_n[] ;
extern const uint8_t u8x8_font_inr33_3x6_f[] ;
extern const uint8_t u8x8_font_inr33_3x6_r[] ;
extern const uint8_t u8x8_font_inr33_3x6_n[] ;
extern const uint8_t u8x8_font_inr46_4x8_f[] ;
extern const uint8_t u8x8_font_inr46_4x8_r[] ;
extern const uint8_t u8x8_font_inr46_4x8_n[] ;
extern const uint8_t u8x8_font_inb21_2x4_f[] ;
extern const uint8_t u8x8_font_inb21_2x4_r[] ;
extern const uint8_t u8x8_font_inb21_2x4_n[] ;
extern const uint8_t u8x8_font_inb33_3x6_f[] ;
extern const uint8_t u8x8_font_inb33_3x6_r[] ;
extern const uint8_t u8x8_font_inb33_3x6_n[] ;
extern const uint8_t u8x8_font_inb46_4x8_f[] ;
extern const uint8_t u8x8_font_inb46_4x8_r[] ;
extern const uint8_t u8x8_font_inb46_4x8_n[] ;
extern const uint8_t u8x8_font_pressstart2p_f[] ;
extern const uint8_t u8x8_font_pressstart2p_r[] ;
extern const uint8_t u8x8_font_pressstart2p_n[] ;
extern const uint8_t u8x8_font_pressstart2p_u[] ;
extern const uint8_t u8x8_font_pcsenior_f[] ;
extern const uint8_t u8x8_font_pcsenior_r[] ;
extern const uint8_t u8x8_font_pcsenior_n[] ;
extern const uint8_t u8x8_font_pcsenior_u[] ;
extern const uint8_t u8x8_font_pxplusibmcgathin_f[] ;
extern const uint8_t u8x8_font_pxplusibmcgathin_r[] ;
extern const uint8_t u8x8_font_pxplusibmcgathin_n[] ;
extern const uint8_t u8x8_font_pxplusibmcgathin_u[] ;
extern const uint8_t u8x8_font_pxplusibmcga_f[] ;
extern const uint8_t u8x8_font_pxplusibmcga_r[] ;
extern const uint8_t u8x8_font_pxplusibmcga_n[] ;
extern const uint8_t u8x8_font_pxplusibmcga_u[] ;
extern const uint8_t u8x8_font_pxplustandynewtv_f[] ;
extern const uint8_t u8x8_font_pxplustandynewtv_r[] ;
extern const uint8_t u8x8_font_pxplustandynewtv_n[] ;
extern const uint8_t u8x8_font_pxplustandynewtv_u[] ;
extern const uint8_t u8x8_font_px437wyse700a_2x2_f[] ;
extern const uint8_t u8x8_font_px437wyse700a_2x2_r[] ;
extern const uint8_t u8x8_font_px437wyse700a_2x2_n[] ;
extern const uint8_t u8x8_font_px437wyse700b_2x2_f[] ;
extern const uint8_t u8x8_font_px437wyse700b_2x2_r[] ;
extern const uint8_t u8x8_font_px437wyse700b_2x2_n[] ;

# 39 "../../../../u8g2/csrc/u8x8_byte.c"
uint8_t u8x8_byte_SetDC(u8x8_t *u8x8, uint8_t dc)
{
return u8x8->byte_cb(u8x8, 32, dc, (0));
}

uint8_t u8x8_byte_SendBytes(u8x8_t *u8x8, uint8_t cnt, uint8_t *data)
{
return u8x8->byte_cb(u8x8, 23, cnt, (void *)data);
}

uint8_t u8x8_byte_SendByte(u8x8_t *u8x8, uint8_t byte)
{
return u8x8_byte_SendBytes(u8x8, 1, &byte);
}

uint8_t u8x8_byte_StartTransfer(u8x8_t *u8x8)
{
return u8x8->byte_cb(u8x8, 24, 0, (0));
}

uint8_t u8x8_byte_EndTransfer(u8x8_t *u8x8)
{
return u8x8->byte_cb(u8x8, 25, 0, (0));
}



uint8_t u8x8_byte_empty( u8x8_t *u8x8, uint8_t msg,  uint8_t arg_int,  void *arg_ptr)
{
switch(msg)
{
case 23:
case 20:
case 32:
case 24:
case 25:
break;
}
return 1;
}

# 107
uint8_t u8x8_byte_4wire_sw_spi(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
uint8_t i, b;
uint8_t *data;
uint8_t takeover_edge = ((u8x8)->display_info->spi_mode & 0x01);
uint8_t not_takeover_edge = 1 - takeover_edge;

switch(msg)
{
case 23:
data = (uint8_t *)arg_ptr;
while( arg_int > 0 )
{
b = *data;
data++;
arg_int--;
for( i = 0; i < 8; i++ )
{
if ( b & 128 )
u8x8_gpio_call(u8x8, (64+(1)), (1));
else
u8x8_gpio_call(u8x8, (64+(1)), (0));
b <<= 1;

u8x8_gpio_call(u8x8, (64+(0)), (not_takeover_edge));
u8x8_gpio_call((u8x8), (44), (u8x8->display_info->sda_setup_time_ns));
u8x8_gpio_call(u8x8, (64+(0)), (takeover_edge));
u8x8_gpio_call((u8x8), (44), (u8x8->display_info->sck_pulse_width_ns));
}
}
break;

case 20:

u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));



u8x8_gpio_call(u8x8, (64+(0)), (((u8x8)->display_info->spi_mode & 0x01)));
break;
case 32:
u8x8_gpio_call(u8x8, (64+(10)), (arg_int));
break;
case 24:
u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_enable_level));
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->post_chip_enable_wait_ns, (0));
break;
case 25:
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->pre_chip_disable_wait_ns, (0));
u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));
break;
default:
return 0;
}
return 1;
}



uint8_t u8x8_byte_8bit_6800mode(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
uint8_t i, b;
uint8_t *data;

switch(msg)
{
case 23:
data = (uint8_t *)arg_ptr;
while( arg_int > 0 )
{
b = *data;
data++;
arg_int--;
for( i = (64+(0)); i <= (64+(7)); i++ )
{
u8x8_gpio_call(u8x8, i, b&1);
b >>= 1;
}

u8x8_gpio_call((u8x8), (44), (u8x8->display_info->data_setup_time_ns));
u8x8_gpio_call(u8x8, (64+(8)), 1);
u8x8_gpio_call((u8x8), (44), (u8x8->display_info->write_pulse_width_ns));
u8x8_gpio_call(u8x8, (64+(8)), 0);
}
break;

case 20:

u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));

u8x8_gpio_call(u8x8, (64+(8)), 0);
break;
case 32:
u8x8_gpio_call(u8x8, (64+(10)), (arg_int));
break;
case 24:
u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_enable_level));
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->post_chip_enable_wait_ns, (0));
break;
case 25:
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->pre_chip_disable_wait_ns, (0));
u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));
break;
default:
return 0;
}
return 1;
}

uint8_t u8x8_byte_8bit_8080mode(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
uint8_t i, b;
uint8_t *data;

switch(msg)
{
case 23:
data = (uint8_t *)arg_ptr;
while( arg_int > 0 )
{
b = *data;
data++;
arg_int--;
for( i = (64+(0)); i <= (64+(7)); i++ )
{
u8x8_gpio_call(u8x8, i, b&1);
b >>= 1;
}

u8x8_gpio_call((u8x8), (44), (u8x8->display_info->data_setup_time_ns));
u8x8_gpio_call(u8x8, (64+(8)), 0);
u8x8_gpio_call((u8x8), (44), (u8x8->display_info->write_pulse_width_ns));
u8x8_gpio_call(u8x8, (64+(8)), 1);
}
break;

case 20:

u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));

u8x8_gpio_call(u8x8, (64+(8)), 1);
break;
case 32:
u8x8_gpio_call(u8x8, (64+(10)), (arg_int));
break;
case 24:
u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_enable_level));
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->post_chip_enable_wait_ns, (0));
break;
case 25:
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->pre_chip_disable_wait_ns, (0));
u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));
break;
default:
return 0;
}
return 1;
}



uint8_t u8x8_byte_3wire_sw_spi(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
uint8_t i;
uint8_t *data;
uint8_t takeover_edge = ((u8x8)->display_info->spi_mode & 0x01);
uint8_t not_takeover_edge = 1 - takeover_edge;
uint16_t b;
static uint8_t last_dc;

switch(msg)
{
case 23:
data = (uint8_t *)arg_ptr;
while( arg_int > 0 )
{
b = *data;
if ( last_dc != 0 )
b |= 256;
data++;
arg_int--;
for( i = 0; i < 9; i++ )
{
if ( b & 256 )
u8x8_gpio_call(u8x8, (64+(1)), (1));
else
u8x8_gpio_call(u8x8, (64+(1)), (0));
b <<= 1;

u8x8_gpio_call(u8x8, (64+(0)), (not_takeover_edge));
u8x8_gpio_call((u8x8), (44), (u8x8->display_info->sda_setup_time_ns));
u8x8_gpio_call(u8x8, (64+(0)), (takeover_edge));
u8x8_gpio_call((u8x8), (44), (u8x8->display_info->sck_pulse_width_ns));
}
}
break;

case 20:

u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));



u8x8_gpio_call(u8x8, (64+(0)), (((u8x8)->display_info->spi_mode & 0x01)));
break;
case 32:
last_dc = arg_int;
break;
case 24:
u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_enable_level));
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->post_chip_enable_wait_ns, (0));
break;
case 25:
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->pre_chip_disable_wait_ns, (0));
u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));
break;
default:
return 0;
}
return 1;
}



void u8x8_byte_set_ks0108_cs(u8x8_t *u8x8, uint8_t arg)
{
u8x8_gpio_call(u8x8, (64+(9)), (arg&1));
arg = arg >> 1;
u8x8_gpio_call(u8x8, (64+(14)), arg&1);
arg = arg >> 1;
u8x8_gpio_call(u8x8, (64+(15)), arg&1);
}


uint8_t u8x8_byte_ks0108(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
uint8_t i, b;
uint8_t *data;

switch(msg)
{
case 23:
data = (uint8_t *)arg_ptr;
while( arg_int > 0 )
{
b = *data;
data++;
arg_int--;
for( i = (64+(0)); i <= (64+(7)); i++ )
{
u8x8_gpio_call(u8x8, i, b&1);
b >>= 1;
}

u8x8_gpio_call((u8x8), (44), (u8x8->display_info->data_setup_time_ns));
u8x8_gpio_call(u8x8, (64+(8)), 1);
u8x8_gpio_call((u8x8), (44), (u8x8->display_info->write_pulse_width_ns));
u8x8_gpio_call(u8x8, (64+(8)), 0);
}
break;

case 20:

u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));

u8x8_gpio_call(u8x8, (64+(8)), 0);
break;
case 32:
u8x8_gpio_call(u8x8, (64+(10)), (arg_int));
break;
case 24:

u8x8_byte_set_ks0108_cs(u8x8, arg_int);
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->post_chip_enable_wait_ns, (0));
break;
case 25:
u8x8->gpio_and_delay_cb(u8x8, 44, u8x8->display_info->pre_chip_disable_wait_ns, (0));
u8x8_byte_set_ks0108_cs(u8x8, arg_int);
break;
default:
return 0;
}
return 1;
}

# 397
uint8_t u8x8_byte_sed1520(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
uint8_t i, b;
uint8_t *data;
static uint8_t enable_pin;

switch(msg)
{
case 23:
data = (uint8_t *)arg_ptr;
while( arg_int > 0 )
{
b = *data;
data++;
arg_int--;
for( i = (64+(0)); i <= (64+(7)); i++ )
{
u8x8_gpio_call(u8x8, i, b&1);
b >>= 1;
}

u8x8_gpio_call((u8x8), (44), (u8x8->display_info->data_setup_time_ns));
u8x8_gpio_call(u8x8, enable_pin, 1);
u8x8_gpio_call((u8x8), (44), (200));
u8x8_gpio_call((u8x8), (44), (u8x8->display_info->write_pulse_width_ns));
u8x8_gpio_call(u8x8, enable_pin, 0);
}
break;

case 20:

u8x8_gpio_call(u8x8, (64+(9)), (u8x8->display_info->chip_disable_level));

u8x8_gpio_call(u8x8, (64+(8)), 0);
u8x8_gpio_call(u8x8, (64+(9)), 0);
enable_pin = (64+(8));
break;
case 32:
u8x8_gpio_call(u8x8, (64+(10)), (arg_int));
break;
case 24:



enable_pin = (64+(8));
if ( arg_int != 0 )
enable_pin = (64+(9));
break;
case 25:
break;
default:
return 0;
}
return 1;
}

# 461
static void i2c_delay(u8x8_t *u8x8) ;
static void i2c_delay(u8x8_t *u8x8)
{

u8x8_gpio_call((u8x8), (45), (u8x8->display_info->i2c_bus_clock_100kHz));
}

static void i2c_init(u8x8_t *u8x8)
{
u8x8_gpio_call(u8x8, (64+(12)), (1));
u8x8_gpio_call(u8x8, (64+(13)), (1));

i2c_delay(u8x8);
}



static void i2c_read_scl_and_delay(u8x8_t *u8x8)
{

u8x8_gpio_call(u8x8, (64+(12)), (1));

i2c_delay(u8x8);
}

static void i2c_clear_scl(u8x8_t *u8x8)
{
u8x8_gpio_call(u8x8, (64+(12)), (0));
}

static void i2c_read_sda(u8x8_t *u8x8)
{

u8x8_gpio_call(u8x8, (64+(13)), (1));
}

static void i2c_clear_sda(u8x8_t *u8x8)
{

u8x8_gpio_call(u8x8, (64+(13)), (0));
}

static void i2c_start(u8x8_t *u8x8)
{
if ( u8x8->i2c_started != 0 )
{

i2c_read_sda(u8x8);
i2c_delay(u8x8);
i2c_read_scl_and_delay(u8x8);
}
i2c_read_sda(u8x8);

i2c_clear_sda(u8x8);
i2c_delay(u8x8);
i2c_clear_scl(u8x8);
u8x8->i2c_started = 1;
}


static void i2c_stop(u8x8_t *u8x8)
{

i2c_clear_sda(u8x8);
i2c_delay(u8x8);


i2c_read_scl_and_delay(u8x8);


i2c_read_sda(u8x8);
i2c_delay(u8x8);
u8x8->i2c_started = 0;
}

static void i2c_write_bit(u8x8_t *u8x8, uint8_t val)
{
if (val)
i2c_read_sda(u8x8);
else
i2c_clear_sda(u8x8);

i2c_delay(u8x8);
i2c_read_scl_and_delay(u8x8);
i2c_clear_scl(u8x8);
}

static void i2c_read_bit(u8x8_t *u8x8)
{


i2c_read_sda(u8x8);
i2c_delay(u8x8);
i2c_read_scl_and_delay(u8x8);
i2c_read_sda(u8x8);
i2c_delay(u8x8);
i2c_clear_scl(u8x8);

}

static void i2c_write_byte(u8x8_t *u8x8, uint8_t b)
{
i2c_write_bit(u8x8, b & 128);
i2c_write_bit(u8x8, b & 64);
i2c_write_bit(u8x8, b & 32);
i2c_write_bit(u8x8, b & 16);
i2c_write_bit(u8x8, b & 8);
i2c_write_bit(u8x8, b & 4);
i2c_write_bit(u8x8, b & 2);
i2c_write_bit(u8x8, b & 1);




i2c_read_bit(u8x8);
}

uint8_t u8x8_byte_sw_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr)
{
uint8_t *data;

switch(msg)
{
case 23:
data = (uint8_t *)arg_ptr;

while( arg_int > 0 )
{
i2c_write_byte(u8x8, *data);
data++;
arg_int--;
}

break;

case 20:
i2c_init(u8x8);
break;
case 32:
break;
case 24:
i2c_start(u8x8);
i2c_write_byte(u8x8, ((u8x8)->i2c_address));

break;
case 25:
i2c_stop(u8x8);
break;
default:
return 0;
}
return 1;
}

