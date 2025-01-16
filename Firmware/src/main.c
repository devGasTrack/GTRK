
#include "../include/WiFi_Module.h"
#include "../include/dev_info.h"
#include <8051.h>


void main(void) {
  delay(500);
  uart_begin(UART0,9600);
  delay(500);
  wifi_init();
  __xdata unsigned char data[30] = {0};
  __xdata unsigned char level[4] = {0};
  __xdata unsigned char url[150] = {0};


  while(1){
    memset(url,0,150);
    convert(level, convert_to_percentage(analog_read(3)));
    DeviceSerialNumber(data);
    upload_data(level, data);
    delay(1000); 
  }  
}
