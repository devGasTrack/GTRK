#include "../include/utils.h"

void delay(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++) {
        for (j = 0; j < 123; j++) {
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

void set_bit(volatile UINT8 * reg, UINT8 _bit){
    *reg |= 1 << _bit;
}

void clear_bit(volatile UINT8 * reg, UINT8 _bit){
    UINT8 _data = ~ (1 << _bit);
    *reg &= _data;
}

 UINT8 read_bit(volatile UINT8 * reg, UINT8 _bit){
    UINT8 _data = *reg >> _bit;
    return _data & 0x01;
}

void ADC_Enable(UINT8 state){
    if(state == 0)
        clear_bit(&ADC_CFG,3);
    else 
        set_bit(&ADC_CFG, 3);
}

void set_ADC_speed(UINT8 speed){
    if(speed == 0)
        clear_bit(&ADC_CFG,0);
    else 
        set_bit(&ADC_CFG, 0);
}

void set_ADC_channel(UINT8 channel){
    switch(channel){
        case 0: clear_bit(&ADC_CTRL,0);
                clear_bit(&ADC_CTRL,1);
                break;
        case 1: set_bit(&ADC_CTRL,0);
                clear_bit(&ADC_CTRL,1);
                break;
        case 2: clear_bit(&ADC_CTRL,0);
                set_bit(&ADC_CTRL,1);
                break;
        case 3: set_bit(&ADC_CTRL,0);
                set_bit(&ADC_CTRL,1);
                break;
    }
}

UINT8 analog_read(int channel){
    ADC_Enable(1);
    set_ADC_speed(1);
    set_ADC_channel((UINT8)channel);
    set_bit(&ADC_CTRL,4);
    while(read_bit(ADC_CTRL,4) == 1){}
    ADC_Enable(0);
    return ADC_DATA;
}
