
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

  wifi_send_command("ATE0", "ATE0", 5);
  uart0_println(level);

  while(1){
    convert(level, convert_to_percentage(analog_read(3)));
    if(wifi_send_command("AT+CIPSTART=\"TCP\",\"gastrackafrica.com.ng\",80","CONNECT",5) >= 0){
      delay(2000);
      UINT8 len = getURL(url,"15.19089","15.19089",level);
      strcpy(data,"AT+CIPSEND=");
      convert(level, len);
      strcat(data, level);
      if(wifi_send_command(data,">",5) >= 0){
        wifi_send_command(url, "OK", 10);
      }
      delay(2000);
      wifi_send_command("AT+CIPCLOSE","OK",5);
      delay(500);
    }
    
    for(int i = 0; i < 6; i++){
      delay(1000);
    }
      
  }
    
}

