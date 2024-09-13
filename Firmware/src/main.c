
#include "../include/utils.h"
#include <8051.h>


void timer0_isr(void) __interrupt(INT_NO_TMR1){

}



void main(void) {

uart_begin(UART0,9600);

    while(1){
      if(read_settings_from_master(5) == 0){
        uart0_println("Master detected");
      }

    }
    
}

