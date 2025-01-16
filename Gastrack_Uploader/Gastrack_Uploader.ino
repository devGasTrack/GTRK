#include "wifi_utils.h"
#include "server.h"
#include "certificate.h"

#define RXD2 16
#define TXD2 17

IPAddress local_ip(192,168,0,1);
IPAddress gateway(192,168,0,1);
IPAddress subnet(255,255,255,0);

void setup(){
  Serial.begin(115200);
  Serial2.begin(9600, SERIAL_8N1, RXD2, TXD2);

  wifi_router wifi_details;
  WiFi.mode(WIFI_STA);
  Serial.println("Start");
  int check = getSavedWifiDetails(&wifi_details);
  if(check != 0){
    Serial2.println("Could not retrieve details");
    WiFi.mode(WIFI_AP);
    start_server();
    WiFi.softAPConfig(local_ip, gateway, subnet);
    WiFi.softAP("Gastrack", "12345678");
    Serial2.println(WiFi.softAPIP());
    
  }
  else{

  if(!Wifi_Connect(const_cast<char*>(wifi_details.ssid.c_str()), const_cast<char*>(wifi_details.pass.c_str()))){
    WiFi.mode(WIFI_AP);
    start_server();
    WiFi.softAPConfig(local_ip, gateway, subnet);
    WiFi.softAP("Gastrack", "12345678");
    Serial2.println(WiFi.softAPIP());
  }

  WiFi.setAutoReconnect(true);
  }

}

void loop(){
  server_loop();
  String _0x68a4;
  while(Serial2.available() > 0){
    _0x68a4 = Serial2.readStringUntil('\n');
    Serial.println(_0x68a4);
    Serial2.println("CONNECT");
    Serial2.flush();
  WiFiClientSecure *client = new WiFiClientSecure;
  HTTPClient https;

  String body = "{\"device_id\": \""+ _0x68a4.substring(0,_0x68a4.indexOf(':')) + "\",\"latitude\": 15.19089,\"longitude\": 15.19089,\"level\":"+ _0x68a4.substring(_0x68a4.indexOf(':') + 1, _0x68a4.indexOf(';'))+ "}";
  Serial.println(body);
  //https://apidm3yka5di.gastrackafrica.com.ng/api/v1/device_log_wgkzqfhw2lvgvlcxi5z0thob0s925i
  if (https.begin("apidm3yka5di.gastrackafrica.com.ng",443,"/api/v1/device_log_wgkzqfhw2lvgvlcxi5z0thob0s925i", xx)) {
    Serial.println("Connection established");
  } else {
    Serial.println("Failed to connect");
  }
  https.setTimeout(10000);
  https.addHeader("Content-Type", "application/json");
  https.addHeader("Accept", "application/json");
  https.addHeader("apiUsername", "gastrack_devices");
  https.addHeader("apiKey", "uxjUg1Wpmnts7k5Cg6fbjfqnsrCQjO");

  int httpResponseCode = https.POST(body);
  if (httpResponseCode > 0) {
    String responseBody = https.getString(); // Get the response body
    Serial2.println("Res:" + String(httpResponseCode));
    Serial.println("Response Body: " + responseBody);
  } else {
    Serial.print("Error on HTTP request: ");
    Serial.println(https.errorToString(httpResponseCode).c_str());
  }

  https.end();

  Serial.println();
  }
}