#include "../include/utils.h"
void delay(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++) {
        for (j = 0; j < 456; j++) {
        }
    }
}

void set_output_mode(enum PORT port, UINT8 value){
    if(port == PORT1){
        P1_MOD_OC = value;
    }
    else if(port == PORT2){

    }
    else if(port == PORT3){
        P3_MOD_OC = value;
    }
}

UINT8 read_output_mode (enum PORT port){
    UINT8 ret = 0;
    if(port == PORT1){
       ret = P1_MOD_OC;
    }
    else if(port == PORT2){
        ret = 0;
    }
    else if(port == PORT3){
        ret = P3_MOD_OC;
    }
    return ret;
}

void set_port_dir(enum PORT port, UINT8 dir){
    if(port == PORT1){
        P1_DIR_PU = dir;
    }
    else if(port == PORT2){

    }
    else if(port == PORT3){
        P3_DIR_PU = dir;
    }
}

UINT8 read_port_dir (enum PORT port){
    UINT8 ret = 0;
    if(port == PORT1){
       ret = P1_DIR_PU;
    }
    else if(port == PORT2){
        ret = 0;
    }
    else if(port == PORT3){
        ret = P3_DIR_PU;
    }
    return ret;
}

void set_port_value(enum PORT port, UINT8 value){
    if(port == PORT1){
        P1 = value;
    }
    else if(port == PORT2){
        P2 = value;
    }
    else if(port == PORT3){
        P3 = value;
    }
}
UINT8 read_port_value (enum PORT port){
    UINT8 ret = 0;
    if(port == PORT1){
       ret = P1;
    }
    else if(port == PORT2){
        ret = P2;
    }
    else if(port == PORT3){
        ret = P3;
    }
    return ret;
}

void configure_port(enum PORT port, enum PORT_MODE mode){
    if(mode == HIGH_IMPEDANCE){
        set_output_mode(port,0x00);
        set_port_dir(port, 0x00);
    }
    else if(mode == PP_OUT){
        set_output_mode(port,0x00);
        set_port_dir(port, 0xFF);
    }
    else if(mode == OD_OUT){
        set_output_mode(port,0xFF);
        set_port_dir(port, 0x00);
    }
    else if(mode == QUASI_BI){
        set_output_mode(port,0xFF);
        set_port_dir(port, 0xFF);
    }
    
}

void start_adc(void){
    ADC_CTRL |= 1 << 4;
}

UINT8 is_adc_done(void){
    UINT8 data = ADC_CTRL >> 4;
    data &= 0x01;
    return data;
}


void ADC_Enable(UINT8 state){
    if(state > 0)
        ADC_CFG |= 1 << 3;
    else{ 
        UINT8 _data = ~ (1 << 3);
        ADC_CFG &= _data;
    }
}

void set_ADC_speed(UINT8 speed){
    if(speed > 0)
        ADC_CFG |= 1;
    else {
        UINT8 _data = ~ 1;
        ADC_CFG &= _data;
    }
}

void set_ADC_channel(UINT8 channel){
    ADC_CTRL &= 0xFC;
    ADC_CTRL |= channel & 0x03;
}

UINT8 analog_read(int channel){
    ADC_Enable(1);
    set_ADC_speed(1);
    set_ADC_channel((UINT8)channel);
    start_adc();
    while(is_adc_done() == 1){}
    ADC_Enable(0);
    return ADC_DATA;
}

void bit_bang_uart_begin(void){
    configure_port(PORT3, PP_OUT);
    set_port_value(PORT3, 0xFF);
    delay(500);
}

void bit_bang_uart_tx(UINT8 data){
    set_port_value(PORT3, 0x00);
    delay(1);
    for (int i = 0; i < 8; i++) {
        if (data & (1 << i)) {
            set_port_value(PORT3, 0xFF);
        } else {
            set_port_value(PORT3, 0x00);
        }
        delay(1);
    }
    set_port_value(PORT3, 0xFF); 
    delay(1);
}

void print(char * str){
    int index = 0;
    while(str[index] != '\0'){
        bit_bang_uart_tx(str[index++]);
    }
}

void println(char * str){
    print(str);
    bit_bang_uart_tx('\r');
    bit_bang_uart_tx('\n');
}

UINT8 get_system_freq(void){
    return CLOCK_CFG & 0x07;
}