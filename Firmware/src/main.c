
#include "../include/utils.h"
#include <8051.h>
#include <stdio.h>


void timer0_isr(void) __interrupt(INT_NO_TMR1){

}



void main(void) {
    uart_begin(UART0,9600);
    while(1){
        uart0_print(test);
        DeviceSerialNumber(test);
        uart0_println(test);
        DeviceType(test);
        uart0_println(test);
        DeviceManufactureDate(test);
        uart0_println(test);

    }
}

