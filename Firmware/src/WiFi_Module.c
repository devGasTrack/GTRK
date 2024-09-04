#include <stdlib.h>
#include "../include/WiFi_Module.h"
#include <string.h>
#include "../include/utils.h"


int echo_find(char * keyword, int TIMEOUT){
    UINT8 ch;
    UINT8 current_char = 0;
    UINT8 keyword_length = strlen(keyword);

    if(keyword == NULL)
        return -1;

    for(int i = 0; i < TIMEOUT; i++){
        uart0_receive_byte(&ch,10);
        uart0_write(ch);
        if(ch == keyword[current_char]){
            if (++current_char == keyword_length){
                return 0;
            }
        }
    }
    return -1;
} 


int wifi_send_command(char * cmd, char * ack, int TIMEOUT){
    if(cmd == NULL || ack == NULL)
        return -1;

    uart0_println(cmd);
    if (!echo_find(ack, TIMEOUT))
        return 0;
    return -1;
}


int wifi_init(void){
    int ret; 
    uart_begin(UART0,115200);
    if(wifi_send_command("AT+RST", "ready",30) != 0){
        return -1;
    }

    if(wifi_send_command("ATE0", "OK", 30) != 0){
        return -2;
    }
    //check flash and read last saved settings
    //if it is empty, setup hotspot

    // if(wifi_flash_peek_ssid() != 0 || wifi_flash_peek_pwd() != 0){
    //     wifi_start_hotspot("Gastrack", "123456789");
    //     start_server("127.0.0.1", "80");
    // }
    
}


int wifi_start_hotspot(char * ssid, char * pwd){

}
int wifi_connect(char * ssid, char * pwd){

}
int wifi_http_get(char * url){

}
int wifi_http_add_header(char * header, char * value){

}
int wifi_http_post(char * url, char * body){

}