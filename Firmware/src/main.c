
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
    uart_begin(UART0,9600);
    while(1){
        char data[50] = {0};
        uart0_println("GAS TRACK v1.0.0");
        uart0_println("Hardware Developed by ");
        uart0_println("Fayele Moses Olukoya \t Circuit Design");
        uart0_println("Fayele Moses Olukoya \t PCB Design");
        uart0_println("JLCPCB \t PCB Manufacture");
        uart0_println("Fayele Joshua Oluwatunmise \t Enclosure Design");
        uart0_println("DIMENSION FORGE \t Enclosure Manufacturer");
        uart0_println("Fayele Moses Olukoya \t Firmware Developer");

        delay(500);


    }
}

