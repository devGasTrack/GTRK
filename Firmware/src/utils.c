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

/// @brief Bit Bang Uart transmit function to tranfer one byte only
/// @param data Character to transmit
void bit_bang_uart_tx(UINT8 data){
    PIN_FUNC = 0;
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

/// @brief Print a string using bit banged uart
/// @param str character array to print
void print(char * str){
    int index = 0;
    while(str[index] != '\0'){
        bit_bang_uart_tx(str[index++]);
    }
}

/// @brief Print a string using bit banged uart and add carriage return and new line to it
/// @param str character array to print
void println(char * str){
    print(str);
    bit_bang_uart_tx('\r');
    bit_bang_uart_tx('\n');
}

/// @brief Get Current System Frequency
/// @param 
/// @return Returns Frequency
UINT8 get_system_freq(void){
    return CLOCK_CFG & 0x07;
}

/// @brief This function sets the timer mode
/// @param  _t sets the timer to be configured
/// @param  _mode sets the mode to be in. This unique to TIMER0 and TIMER1. There is TMR_MODE_0, TMR_MODE_1, TMR_MODE_2 and TMR_MODE_3
void set_timer_mode(enum TIMER _t, enum TIMER_MODE _mode){
    if(_t == TIMER0){
        TMOD &= 0xFC;
        switch (_mode){
            case TMR_MODE_0:    break;
            case TMR_MODE_1:    TMOD |= 0x01;
                                break;
            case TMR_MODE_2:    TMOD |= 0x02;
                                break;
            case TMR_MODE_3:    TMOD |= 0x03;
                                break;
        }
    }
    else if(_t == TIMER1){
        TMOD &= 0xCF;
        switch (_mode){
            case TMR_MODE_0:    break;
            case TMR_MODE_1:    TMOD |= 0x10;
                                break;
            case TMR_MODE_2:    TMOD |= 0x20;
                                break;
            case TMR_MODE_3:    TMOD |= 0x30;
                                break;
        }
    }
    else if(_t == TIMER2){
        T2CON &= 0xCD;
        switch (_mode){
            case TMR_MODE_0: break;

        }
    }

}
/// @brief Used to set the clock division for the timer
/// @param _t is the selected timer
/// @param _clk is the division selected (DIV_12, DIV_4, DIV_2, F_SYS)
void select_timer_clk(enum TIMER _t, enum TIMER_CLK _clk){
    if(_t == TIMER0){
        T2MOD &= 0x6F;
        if(_clk == DIV_12) {}
        if(_clk == DIV_4) T2MOD |= 0x10;
        if (_clk == F_SYS) T2MOD |= 0x90;
    }
    else if(_t == TIMER1){
        T2MOD &= 0x5F;
        if(_clk == DIV_12) {}
        if(_clk == DIV_4) T2MOD |= 0x20;
        if(_clk == F_SYS) T2MOD |= 0xA0;
    }
    else if(_t == TIMER2){
        T2MOD &= 0x3F;
        if(_clk == DIV_12) T2MOD |= 0x10;
        if(_clk == DIV_4 || _clk == DIV_2) T2MOD |= 0x40;
        if(_clk == F_SYS) T2MOD |= 0xC0;
    }

}

/// @brief This is used to configure the clock source to be internal or external
/// @param  _t is the selected timer
/// @param source (0 for internal, 1 for external)
void select_tmr_clk_src(enum TIMER _t, UINT8 source){
    if(_t == TIMER0 && source == 0){
        TMOD &= 0xFB;
    }
    else if(_t == TIMER0 && source == 1){
        TMOD |= 0x04;
    }
    else if(_t == TIMER1 && source == 0){
        TMOD &= 0xBF;
    }
    else if(_t == TIMER1 && source == 1){
        TMOD |= 0x40;
    }

}

/// @brief This is used to set the TL and TH of the timer selected
/// @param  _t Selected Time
/// @param value UINT16 value to written into the registers
void update_timer_reg(enum TIMER _t, UINT16 value){
    switch(_t){
        case TIMER0:    TL0 = (UINT8)value;
                        TH0 = (UINT8)(value >> 8);
                        break;
        case TIMER1:    TL1 = (UINT8)value;
                        TH1 = (UINT8)(value >> 8);
                        break;
        case TIMER2:    TL2 = (UINT8)value;
                        TH2 = (UINT8)(value >> 8);
                        break;
    }
}

/// @brief Enable or disable interrupt for the selected timer
/// @param  _t Selected Timer
/// @param enable_bit 0 to disable, 1 to enable
void timer_interrupt(enum TIMER _t, UINT8 enable_bit){
    
    if(_t == TIMER0){
        if(enable_bit > 0) {
            IE |= 0x80;
            IE |= 0x02;
        }
        else IE &= 0xFD;
    }
    else if(_t == TIMER1){
        if(enable_bit > 0) {
            IE |= 0x80;
            IE |= 0x08; 
        }
        else IE &= 0xF7;
    }
    else if(_t == TIMER2){
        if(enable_bit > 0) {
            IE |= 0x80;
            IE |= 0x20;
        }
        else IE &= 0xDF;
    }
}

/// @brief Start selected timer
/// @param _t Selected timer
void start_timer(enum TIMER _t){
    if(_t == TIMER0){
        TCON |=0x10;
    }
    else if(_t == TIMER1){
        TCON |=0x40;
    }
    if(_t == TIMER2){
        T2CON |=0x04;
    }
}

/// @brief Stop selected timer
/// @param _t Timer to stop
void stop_timer(enum TIMER _t){
    if(_t == TIMER0){
        TCON &=0xEF;
    }
    else if(_t == TIMER1){
        TCON &=0xBF;
    }
    if(_t == TIMER2){
        T2CON &=0xFB;
    }
}
// void init_timer(enum TIMER _t){

// }

/// @brief Function to initialise UART
/// @param type The UART to be initialised. UART0 or UART1
void uart_begin(enum UART_TYPE type){
    //uart_buffer_flush();
    if(type == UART0){
        T2CON &= 0xCF;
        T2MOD |= 0xA0;
        PCON |= 0x80;
        TH1 = 236; 
        timer_interrupt(TIMER1,1);
        set_timer_mode(TIMER1,TMR_MODE_2);
        TMOD &= 0xB7;
        start_timer(TIMER1);
        SCON |= 0x50;
        IE &= 0xBF;
        IE |= 0x90;
    }
    else{
        // to be implemented later.
    }
    
}

/// @brief Clear uart buf
/// @param 
void uart_buffer_flush(void){
    uart_counter = 0;
    IE &= 0x7F;
    for(UINT8 i = 0; i <= 255; i++){
        uart_buf[i] = '\0';
    }
    IE |= 0x80;
}
/// @brief Read the buffer containing data recieved through UART
/// @param buf buffer to read the data to. Must not be null
/// @return number of data read
UINT8 uart_read(char * buf){
    UINT8 count = 0;
    uart_counter = 0;
    for(UINT8 i = 0; i <= 255; i++){
        if(uart_buf[i] == '\0') break;
        buf[i] = uart_buf[i];
        count = i + 1;
    }
    uart_buffer_flush();
    return count;
}

/// @brief Write a byte using uart0
/// @param data to be written
void uart0_write(UINT8 data){
    SBUF = data;
    while (((SCON >> 1) & 0x01) == 0) {
        //wait till the transmission is done
    }
    SCON &= 0xFD; 
}

/// @brief Write string to uart0
/// @param data String to write
void uart0_print(char * data){
    int index = 0;
    while(data[index] != '\0'){
        uart0_write(data[index++]);
    }
}

/// @brief Write string via uart and add carriage return and new line at the end
/// @param data String to be written.
void uart0_println(char * data){
    uart0_print(data);
    uart0_print('\r');
    uart0_print('\n');
}