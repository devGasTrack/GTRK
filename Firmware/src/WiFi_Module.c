#include "../include/WiFi_Module.h"
#include "../include/utils.h"


int echo_find(char * keyword, int TIMEOUT){
    UINT8 ch;
    UINT8 current_char = 0;
    UINT8 keyword_length = strlen(keyword);

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

    uart0_println(cmd);
    if (!echo_find(ack, TIMEOUT))
        return 0;
    return -1;
}

int wifi_flash_peek_ssid(void){
    return 0;
}

int wifi_flash_peek_pwd(void){
    return 0;
}

int start_server(char * ip, char * port){
    __xdata unsigned char command [100] = {0};
    sprintf(command, "AT+CIPAP=\"%s\",\"192.168.0.2\",\"255.255.255.0\"", ip);
    if(wifi_send_command(command,"OK",30) != 0){
        return -1;
    }
    if(wifi_send_command("AT+CIPMUX=1","OK", 30) != 0){
        return -1;
    }
    memset(command, 0, sizeof(command));
    sprintf(command, "AT+CIPSERVER=1,%s", port);
    if(wifi_send_command(command,"OK", 30) != 0){
        return -1;
    }
    while(echo_find("0,CONNECT",30) != 0){}
    wifi_send_command("AT+CIPSEND=0,14", ">",30); // not finished
    /*
        plan is to load html page into _xdata and sent on the next command
        The web page is written in html and a python script converts it to *.h file that will be loaded on the next command
    */
    wifi_send_command("HELLO GASTRACK","OK",30); // not finished
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
    
    // if(wifi_flash_peek_ssid() != 0 || wifi_flash_peek_pwd() != 0){
    //     wifi_start_hotspot("Gastrack", "123456789");
    //     start_server("192.168.0.1", "80");
    // }

    return 0;
    
}


int wifi_start_hotspot(char * ssid, char * pwd){
    __xdata unsigned char device_name[10] = {0};
    __xdata unsigned char command[100] = {0};

    DeviceType(device_name);

    if(wifi_send_command("AT+CWMODE=2", "OK", 30) != 0){
        return -1;
    }

    if(wifi_send_command("AT+CWDHCP=0,1", "OK",30) != 0){
        return -1;
    }

    sprintf(command,"AT+CWSAP=\"%s(%s)\",\"%s\",5,3", ssid, device_name, pwd);

    if(wifi_send_command(command, "OK", 30) != 0){
        return -1;
    }
    return 0;
}

int wifi_connect(char * ssid, char * pwd){
    __xdata unsigned char str[50] = {0};

    sprintf(str, "AT+CWJAP= \"%s\",\"%s\"", ssid, pwd);

    if(wifi_send_command("AT+CWMODE=1", "OK", 30) != 0){
        return -1;
    }
    if(wifi_send_command(str,"OK", 30) != 0){
        return -1;
    }
    return 0;
}

int wifi_http_get(char * url){

}
int wifi_http_add_header(char * header, char * value){

}
int wifi_http_post(char * url, char * body){

}