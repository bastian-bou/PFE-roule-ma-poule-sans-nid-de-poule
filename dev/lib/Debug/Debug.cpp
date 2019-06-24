/**
--------------------------------------------------------

Author :  Bastian Bouchardon
Tutors :  Emmanuel Neron
          Nicolas Monmarche
Owner :   SES Nouvelle
Polytech Tours 2018
DII 5A

Date : 20/10/2018

Creative Commons BY-NC-SA
https://creativecommons.org/licenses/by-nc-sa/4.0/

--------------------------------------------------------
**/


#include <Debug.h>


Debug::Debug(params param)
{
  loc_param = param;

  //server telnet
  server = WiFiServer(23);
}

Debug::~Debug()
{
  for(uint8_t i = 0; i < MAX_SRV_CLIENTS; i++) {
      if (serverClients[i]) serverClients[i].stop();
  }
}

void Debug::init(void)
{

  if (loc_param == SERIAL_DEBUG || loc_param == SERIAL_WIFI_DEBUG) {
    Serial.begin(9600);
    Serial.print("\n\nDemarrage Serial monitor\n");
  }
  
  if (loc_param == WIFI_DEBUG || loc_param == SERIAL_WIFI_DEBUG) {
    uint8_t _timeout_client = 0;
    uint8_t _i;

    WiFi.softAP(WIFI_SSID, WIFI_PWD);
    if(loc_param == SERIAL_WIFI_DEBUG) {
      IPAddress myIP = WiFi.softAPIP();
      Serial.print("AP IP address: ");
      Serial.println(myIP);
    }

    server.begin();
    server.setNoDelay(true);
  }
}

void Debug::sendData
(
     String data
)
{
  if (loc_param == WIFI_DEBUG || loc_param == SERIAL_WIFI_DEBUG) {
    uint8_t _i;
    uint8_t _data_length = data.length();
    
    if(server.hasClient()) {
      for(_i = 0; _i < MAX_SRV_CLIENTS; _i++){
        //find free/disconnected spot
        if (!serverClients[_i] || !serverClients[_i].connected()){
          if(serverClients[_i]) serverClients[_i].stop();
          serverClients[_i] = server.available();
          if (!serverClients[_i]) Serial.println("available broken");
          Serial.print("New client: ");
          Serial.print(_i); Serial.print(' ');
          Serial.println(serverClients[_i].remoteIP());
          break;
        }
      }
      if (_i >= MAX_SRV_CLIENTS) {
        //no free/disconnected spot so reject
        server.available().stop();
      }
    }
    for (_i = 0; _i < MAX_SRV_CLIENTS; _i++) {
      if (serverClients[_i] && serverClients[_i].connected()){
        uint8_t _buf[_data_length];
        data.getBytes(_buf, _data_length);
        serverClients[_i].write(_buf, _data_length);
        delay(1);
      }
    }
  }
  if (loc_param == SERIAL_DEBUG || loc_param == SERIAL_WIFI_DEBUG) {
    Serial.print(data);
  }
}