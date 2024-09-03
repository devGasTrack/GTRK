#ifndef _UTILS_H
#define _UTILS_H
#include "../include/EVT/CH552.H"
#include <stdlib.h>
#include <stdbool.h>
#include "../include/dev_info.h"

    enum PORT{PORT1, PORT2, PORT3};
    enum PORT_MODE {HIGH_IMPEDANCE, PP_OUT, OD_OUT, QUASI_BI};
    enum TIMER{TIMER0, TIMER1, TIMER2};
    enum UART_TYPE{UART0, UART1};
    enum TIMER_MODE {TMR_MODE_0,TMR_MODE_1,TMR_MODE_2, TMR_MODE_3};
    enum TIMER_CLK {DIV_12, DIV_4, DIV_2, F_SYS};
    void set_output_mode(enum PORT port, UINT8 value);
    UINT8 read_output_mode (enum PORT port);
    void set_port_dir(enum PORT port, UINT8 value);
    UINT8 read_port_dir (enum PORT port);
    void set_port_value(enum PORT port, UINT8 value);
    UINT8 read_port_value (enum PORT port);
    void configure_port(enum PORT port, enum PORT_MODE mode);
    void delay(unsigned int ms);
    void set_bit(volatile UINT8 reg, UINT8 _bit);
    void clear_bit(volatile UINT8 reg, UINT8 _bit);
    UINT8 read_bit(volatile UINT8 reg, UINT8 _bit);
    void ADC_Enable(UINT8 state);
    void set_ADC_speed(UINT8 speed);
    void set_ADC_channel(UINT8 channel);
    UINT8 analog_read(int channel);
    void bit_bang_uart_begin(void);
    void bit_bang_uart_tx(UINT8 data);
    void print(char * str);
    void println(char * str);
    UINT8 get_system_freq(void);
    void set_timer_mode(enum TIMER _t, enum TIMER_MODE _mode);
    void start_timer(enum TIMER _t);
    void stop_timer(enum TIMER _t);
    void timer_interrupt(enum TIMER _t, UINT8 enable_bit);
    void update_timer_reg(enum TIMER _t, UINT16 value);
    void select_tmr_clk_src(enum TIMER _t, UINT8 source);
    void select_timer_clk(enum TIMER _t, enum TIMER_CLK _clk);
    void set_timer_mode(enum TIMER _t, enum TIMER_MODE _mode);
    void init_timer(enum TIMER _t);
    void uart_begin(enum UART_TYPE type, long baudrate);
    void uart_buffer_flush(void);
    UINT8 uart_read(char * buf);
    void uart0_print(char * data);
    void uart0_println(char * data);
    void uart0_write(UINT8 data);
    int uart0_read_bytes(UINT8 * received_bytes,int max_len, UINT8 timeout_ms);
    UINT8 uart0_receive_byte(UINT8 * received_byte, UINT8 timeout_ms);
    int uart0_read_string_until(UINT8 * received_bytes,int max_len, UINT8 timeout_ms, UINT8 condition);
#endif