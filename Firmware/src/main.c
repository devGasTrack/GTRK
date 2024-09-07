
#include "../include/WiFi_Module.h"
#include <8051.h>
#include <stdio.h>

__xdata unsigned char test[50] = {0};

void timer0_isr(void) __interrupt(INT_NO_TMR1){

}



void main(void) {
    
    wifi_init();
    int ret;
    //char * body = "{\"headers\": {\"Accept\": \"application/json\",\"Accept-Encoding\": \"gzip, deflate\",\"Accept-Language\": \"en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7\",\"Content-Length\": \"0\",\"Host\": \"httpbin.org\",\"Origin\": \"http://httpbin.org\",\"Referer\": \"http://httpbin.org/\",\"User-Agent\": \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36\",\"X-Amzn-Trace-Id\": \"Root=1-6150581e-1ad4bd5254b4bf5218070413\"}}";
    do{
        ret = wifi_connect("Network112", "Password");
    }while (ret != 0);

    // __xdata unsigned char h1[30] = {0};
    // __xdata unsigned char h2[30] = {0};
    // wifi_http_add_header(h1, "connection","keep-alive");
    // wifi_http_add_header(h2,"content-type","application/json");
    while(1){
        // wifi_http_post("http://httpbin.org/post",body,h1,h2);
        for(int i = 0; i < 10; i++)
            delay(1000);
    }
}

