
#ifndef _WIFI_UTILS
#define _WIFI_UTILS
#include <WiFi.h>
#include <WiFiClientSecure.h>
#include <WiFiClient.h>
#include <HTTPClient.h>
#include <SPIFFS.h>

typedef struct{
  String ssid;  
  String pass;  
} wifi_router;

  bool Wifi_Connect(char * SSID, char * password);
  int getSavedWifiDetails(wifi_router * current_router);
  void readWifiDetails(String data_in, wifi_router * wr);

#endif