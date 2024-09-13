#include "../include/utils.h"


void delay(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++) {
        for (j = 0; j < 456; j++) {
        }
    }
}

/// @brief Set the output mode of the port
/// @param port Selected port to set {PORT1, PORT2, PORT3}
/// @param value the 8 bit output mode of the port
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

/// @brief Read the output mode of the port
/// @param port Selected port to read {PORT1, PORT2, PORT3}
/// @return the 8 bit output mode of the port
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

/// @brief Set the current direction of the selected port
/// @param port Selected port to set {PORT1, PORT2, PORT3}
/// @param dir the 8 bit direction of the port
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
/// @brief Read the current direction of the selected port
/// @param port Selected port to read from {PORT1, PORT2, PORT3}
/// @return the 8 bit direction of the port
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

/// @brief Set the value of the selected port
/// @param port Selected port{PORT1, PORT2, PORT3}
/// @param value 8 bit value to set the port to
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

/// @brief Read the port value
/// @param port The port to read from {PORT1, PORT2, PORT3}
/// @return 8 bit value of the port
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
/// @brief Configure port to a particular mode
/// @param port Selected port {PORT1, PORT2, PORT3}
/// @param mode Mode to set the port to {HIGH_IMPEDANCE, PP_OUT, OD_OUT, QUASI_BI}
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
/// @brief Start ADC conversion
/// @param  
void start_adc(void){
    ADC_CTRL |= 1 << 4;
}
/// @brief Check if ADC conversion is done. (This does not need Interrupt)
/// @param  
/// @return 1 for done, 0 if not done
UINT8 is_adc_done(void){
    UINT8 data = ADC_CTRL >> 4;
    data &= 0x01;
    return data;
}

/// @brief Switch ON ADC Module in the MC
/// @param state 1 is ON and 0 is OFF
void ADC_Enable(UINT8 state){
    if(state > 0)
        ADC_CFG |= 1 << 3;
    else{ 
        UINT8 _data = ~ (1 << 3);
        ADC_CFG &= _data;
    }
}
/// @brief Set ADC conversion speed(Slow or fast). Check datasheet for more details
/// @param speed 0 for slow, 1 for fast
void set_ADC_speed(UINT8 speed){
    if(speed > 0)
        ADC_CFG |= 1;
    else {
        UINT8 _data = ~ 1;
        ADC_CFG &= _data;
    }
}
/// @brief Set ADC Channel to read from
/// @param channel Channel to configure adc input from
void set_ADC_channel(UINT8 channel){
    ADC_CTRL &= 0xFC;
    ADC_CTRL |= channel & 0x03;
}
/// @brief Read ADC from any analog channel
/// @param channel Selected channel to read ADC from
/// @return 8 bit ADC value
UINT8 analog_read(int channel){
    ADC_Enable(1);
    set_ADC_speed(1);
    set_ADC_channel((UINT8)channel);
    start_adc();
    while(is_adc_done() == 1){}
    ADC_Enable(0);
    return ADC_DATA;
}

/// @brief Software Serial on all Port 3
/// @param  
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


/// @brief Initialise Uart
/// @param  type The Uart to be initialised (UART0 or UART1)
/// @param baudrate Selected baudrate for transmission
void uart_begin(enum UART_TYPE type, long baudrate){
    //uart_buffer_flush();
    UINT8 freq = get_system_freq();
    long mult = 0l; 
    switch(freq){
        case 0: mult = 187500;
                break;
        case 1: mult = 750000;
                break;
        case 2: mult = 3000000;
                break;
        case 3: mult = 6000000;
                break;
        case 4: mult = 12000000;
                break;
        case 5: mult = 16000000;
                break;
        case 6: mult = 24000000;
                break;
    }
    if(type == UART0){
        T2CON &= 0xCF;
        T2MOD |= 0xA0;
        PCON |= 0x80;
        TH1 = 256 - mult / 16 / baudrate;
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
    __xdata unsigned char t[256] = {0};
    sprintf(t,"%s\n", data);
    uart0_print(t);
}

/// @brief Funtion to receive one byte from UART0
/// @param received_byte Pointer to the received byte
/// @param timeout_ms Timeout in Milliseconds
/// @return 0 for success, 1 for timeout
UINT8 uart0_receive_byte(UINT8 * received_byte, UINT8 timeout_ms){
    UINT8 ret = 1;
    for(int _t  = 0; _t < timeout_ms * 1000; _t++){
        if ((SCON & 0x01)  == 1){
            *received_byte = SBUF;
            ret = 0;
            SCON &= 0xFE;
            break; 
        }
        delay(1);
    }

    return ret;  
}

/// @brief Read a maximum of (max_len - 1) from UART0
/// @param received_bytes Pointer to received data
/// @param max_len Maximum Data expected from UART0
/// @param timeout_ms Timeout in Milliseconds
/// @return 
int uart0_read_bytes(UINT8 * received_bytes,int max_len, UINT8 timeout_ms){
    int ret = 0;
    UINT8 current_recv;
    while (uart0_receive_byte(&current_recv, timeout_ms) == 0){
        if(ret == max_len - 1){
            break;
        }
        received_bytes[ret++] = current_recv;
    }

    return ret;  
}

/// @brief Function to read a string from UART0 until a specified condition byte is encountered or a timeout occurs.
/// @param received_bytes Pointer to an array where the received string will be stored.
/// @param max_len Maximum length of the array to prevent overflow.
/// @param timeout_ms Timeout in milliseconds for each byte reception.
/// @param condition Byte value that will stop the reception when encountered.
/// @return The number of bytes successfully received (not including the null terminator).
int uart0_read_string_until(UINT8 * received_bytes,int max_len, UINT8 timeout_ms, UINT8 condition){
    int ret = 0;
    UINT8 current_recv;
    do{
        if(uart0_receive_byte(&current_recv, timeout_ms) != 0)
            break;
        
        if(current_recv == condition){
            break;
        }
        received_bytes[ret++] = current_recv;
    }while (ret < max_len);
    
    received_bytes[ret] = '\0';
    return ret;
}


/// @brief Search if str is present in base.
/// @param base String to search from
/// @param str String to search
/// @return return -1 if not present or inxex of str.
int search_str(char *base, char *str) {
    if (base == NULL || str == NULL) return -1;

    int base_len = strlen(base);
    int str_len = strlen(str);

    if (str_len == 0) return -1;

    for (int i = 0; i <= base_len - str_len; i++) {
        int j = 0;
        while (j < str_len && base[i + j] == str[j]) {
            j++;
        }
        if (j == str_len) return i;
    }

    return -1;
}


/// @brief Extract SSID from UART0 input. Please make sure that uart_begin is called and UART0 is enabled. The data reside in pwd
/// @param 
/// @return 0 if not extracted. 1 if extraction was successful
UINT8 extract_ssid_from_master(void){
  char * data;
  UINT8 ret = 0;
      if(uart0_read_string_until(instruction,50,30,'\n') > 2){
        if(search_str(instruction,"SSID")>= 0){
          ret = 1;
          data = strchr(instruction,':');
          strcpy(ssid,data+1);
        }
      }
      return ret;
}

/// @brief Extract PWD from UART0 input. Please make sure that uart_begin is called and UART0 is enabled. The data reside in pwd
/// @param 
/// @return 0 if not extracted. 1 if extraction was successful
UINT8 extract_pwd_from_master(void){
  char * data;
  UINT8 ret = 0;
      if(uart0_read_string_until(instruction,50,30,'\n') > 2){
        if(search_str(instruction,"PWD")>= 0){
          ret = 1;
          data = strchr(instruction,':');
          strcpy(pwd,data+1);
        }
      }
      return ret;
}

/// @brief Read device settings from master
/// @param timeout timeout in seconds
/// @return 0 for success, 1 for failure
UINT8 read_settings_from_master(UINT8 timeout){
  UINT8 ret = 0;
  for(UINT8 t = 0; t < timeout; t++){
    for(UINT16 i = 0; i < 1000; i++){
      if(extract_ssid_from_master() > 0 ){
        ret++;
      }

      if(extract_pwd_from_master() > 0 ){
        ret++;
      }
      if(ret >= 2) {
        return 0;
      }
      delay(1);
    }
  }
  return 1;
}