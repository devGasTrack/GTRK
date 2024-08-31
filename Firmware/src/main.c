
#include "../include/utils.h"
#include <8051.h>
#include <stdio.h>

void main(void) {
    bit_bang_uart_begin();
    select_tmr_clk_src(TIMER0, 0);
    select_timer_clk(TIMER0, F_SYS);
    set_timer_mode(TIMER0,TMR_MODE_1);
    update_timer_reg(TIMER0, 0);
    timer_interrupt(TIMER0,0);
    start_timer(TIMER0);

    UINT16 check;

    while(1){
        check = TH0 << 8 | TL0;
        char data[30] = {0};
        sprintf(data,"Timer Value: %d",check);
        println(data);

        delay(1000);

    }
}

