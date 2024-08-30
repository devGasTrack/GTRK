
#include "../include/utils.h"
#include <8051.h>
#include <stdio.h>

void main(void) {
    bit_bang_uart_begin();

    while(1){

        char data[30] = {0};
        sprintf(data,"adc config: %d",ADC_CFG);
        println(data);

        delay(1000);
        set_ADC_channel(3);
        sprintf(data,"adc config: %d",ADC_CTRL);
        println(data);
        delay(1000);

    }
}

