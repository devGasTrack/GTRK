
#include "../include/utils.h"
#include <8051.h>
#include <stdio.h>

void timer0_isr(void) __interrupt(INT_NO_TMR0){
    P3 = ~P3;
    update_timer_reg(TIMER1, 0xFFFE);
}

void uart0_isr(void) __interrupt(INT_NO_UART0){
    if (SCON & 0x01) { 
        if(uart_counter <= 255)
            uart_buf[uart_counter++] = SBUF;

        SCON &= ~0x02;
    }
    if (SCON & 0x02) { 
        SCON &= ~0x02;
    }
}

void main(void) {
    bit_bang_uart_begin();
    uart_begin(UART0);
    while(1){
        

    }
}

