#ifndef _ESP_01_API
#define _ESP_01_API

#include "../include/utils.h"

    int wifi_send_command(char * cmd, char * ack, int TIMEOUT);

    int wifi_init(void);
    int wifi_start_hotspot(char * ssid, char * pwd);
    int wifi_connect(char * ssid, char * pwd);
    int wifi_http_get(char * url);
    int wifi_http_add_header(char * mheader, char * header, char * value);
    int wifi_http_post(char * url, char * body, ...);

#endif
