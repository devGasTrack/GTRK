
#include "../include/utils.h"
#include <8051.h>
#include <stdio.h>

void timer0_isr(void) __interrupt(INT_NO_TMR1){
    P3 = ~P3;
    update_timer_reg(TIMER1, 0xFFFE);
}

void main(void) {
    bit_bang_uart_begin();
    select_tmr_clk_src(TIMER1, 0);
    select_timer_clk(TIMER1, DIV_12);
    set_timer_mode(TIMER1,TMR_MODE_1);
    update_timer_reg(TIMER1, 0xFFFE);
    timer_interrupt(TIMER1,1);
    start_timer(TIMER1);

    while(1){
        

    }
}

