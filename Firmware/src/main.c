
#include "../include/utils.h"
#include <8051.h>

void main(void) {
    bit_bang_uart_begin();

    while(1){
       for(int i = 0; i < 256; i++){
        bit_bang_uart_tx((UINT8)i);
        delay(250);
       }
    }
}

