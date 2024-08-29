#ifndef _UTILS_H
#define _UTILS_H
#include "../include/EVT/CH552.H"
    enum PORT{PORT1, PORT2, PORT3};
    enum PORT_MODE {HIGH_IMPEDANCE, PP_OUT, OD_OUT, QUASI_BI};
    void set_output_mode(enum PORT port, UINT8 value);
    UINT8 read_output_mode (enum PORT port);
    void set_port_dir(enum PORT port, UINT8 value);
    UINT8 read_port_dir (enum PORT port);
    void set_port_value(enum PORT port, UINT8 value);
    UINT8 read_port_value (enum PORT port);
    void configure_port(enum PORT port, enum PORT_MODE mode);
    void delay(unsigned int ms);
    void set_bit(volatile UINT8 * reg, UINT8 _bit);
    void clear_bit(volatile UINT8 * reg, UINT8 _bit);
    UINT8 read_bit(volatile UINT8 * reg, UINT8 _bit);
    void ADC_Enable(UINT8 state);
    void set_ADC_speed(UINT8 speed);
    void set_ADC_channel(UINT8 channel);
    UINT8 analog_read(int channel);

#endif