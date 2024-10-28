
#include "../include/WiFi_Module.h"
#include "../include/dev_info.h"
// #include <stdio.h>
#include <8051.h>


void timer0_isr(void) __interrupt(INT_NO_TMR1){

}



void main(void) {
  delay(500);
  uart_begin(UART0,9600);
  delay(500);
  
  
  __xdata unsigned char data[30] = {0};
  __xdata unsigned char level[4] = {0};
  __xdata unsigned char url[150] = {0};


  while(1){
    memset(url,0,150);
    convert(level, convert_to_percentage(analog_read(3)));
    DeviceSerialNumber(data);
    strcat(url,data);
    strcat(url,":");
    strcat(url,level);
    strcat(url,";");
    if(wifi_send_command(url,"CONNECT",5) >= 0){
    }
    for(UINT8 i = 0; i < 60; i++)
      delay(5000);
    delay(1000);
      
  }
    
}

