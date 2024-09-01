
#include "../include/utils.h"
#include <8051.h>
#include <stdio.h>

void timer0_isr(void) __interrupt(INT_NO_TMR1){

}

void uart0_isr(void) __interrupt(INT_NO_UART0){
    if (SCON & 0x01) { 
        if(uart_counter <= 255)
            uart_buf[uart_counter++] = SBUF;

        SCON &= 0xFE;
    }
}

void main(void) {
    //bit_bang_uart_begin();
    uart_begin(UART0);
    while(1){
        char data[50] = {0};
        uart0_println("abcdefghijklmnopqrstuvwxyz");

    }
}

