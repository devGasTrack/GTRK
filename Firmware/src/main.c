
#include "../include/utils.h"
#include <8051.h>
#include <stdio.h>


void timer0_isr(void) __interrupt(INT_NO_TMR1){

}



void main(void) {
    uart_begin(UART0,115200);
    while(1){
        uart0_receive_byte(test, 30);
        if(strlen(test) > 2)
            uart0_println(test);
    }
}

