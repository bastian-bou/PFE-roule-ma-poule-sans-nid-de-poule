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

#ifndef DEBUG_H
#define DEBUG_H

#include <WiFi.h>
#include <WiFiClient.h>
#include <WiFiAP.h>

#define WIFI_SSID           "test_nidDePoule"
#define WIFI_PWD            "NidDePoule"

#define MAX_SRV_CLIENTS     2

typedef enum params {
     NOTHING           = 0
    ,WIFI_DEBUG        = 1
    ,SERIAL_DEBUG      = 2
    ,SERIAL_WIFI_DEBUG = 3
} params;

class Debug 
{
    private:
    params      loc_param;
    WiFiServer  server;
    WiFiClient  serverClients[MAX_SRV_CLIENTS];
    

    public:
    //Constructor and Desctructor
    Debug(params param);
    ~Debug();

    /**
    * Brief : Method to initialized in setup()
    **/
    void init(void);

    /**
     * Brief : Method to send a string in telnet
     * Param : String to send
     **/
    void sendData(String data);

};

#endif