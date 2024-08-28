
#include "../include/utils.h"
#include <8051.h>

void main(void) {
    configure_port(PORT3, PP_OUT);
    set_port_value(PORT3, 0x00);

    while(1){
        set_port_value(PORT3, 0xFF);
        delay(300);
        set_port_value(PORT3, 0x00);
        delay(300);
    }
}

