#include "wifi_utils.h"
#include <Arduino.h>

bool Wifi_Connect(char * SSID, char * password){
  bool ret = false;
  Serial.println("Connecting to WiFi:" + String(SSID) + "\tPassword:" + String(password));
  WiFi.begin(SSID, password);
  for(int countdown = 30; countdown > 0; countdown--){ 
    Serial.println("---------------------------------Count Down (" + String(countdown) + ")---------------------------------" );
    if(WiFi.status() != WL_CONNECTED) {
      delay(250);
      ret = false;
    }
    else{
      Serial.println("Connected to WiFi:" + String(SSID));
      ret = true;
      break;
    }
  }
  return ret;

}


void readWifiDetails(String data_in, wifi_router * wr){
  Serial.println(data_in);
  String sub = data_in.substring(1,data_in.indexOf(','));
  wr->ssid = sub.substring(sub.indexOf('\"')+1,sub.lastIndexOf('\"'));
  sub = data_in.substring(data_in.indexOf(',')+1,data_in.lastIndexOf('}'));
  wr->pass = sub.substring(sub.indexOf('\"')+1,sub.lastIndexOf('\"'));
}

int getSavedWifiDetails(wifi_router * current_router){
  if (!SPIFFS.begin(true)) {
    Serial.println("SPIFFS Error");
    return -1;
  }

  File file = SPIFFS.open("/wifi_settings.txt", "r");
  if (!file) {
    Serial.println("No Wifi_Settings file");
    return -2;
  }
  while (file.available()) {
    String wifi_settings = file.readString();
    readWifiDetails(wifi_settings,current_router);
  }

  Serial.println();
  file.close();
  return 0;
}

