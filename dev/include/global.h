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

#ifndef GLOBAL_H
#define GLOBAL_H

//#define DEBUG_SOFT

#define ACCELERO
#define PIEZZO
#define GPS

#include <Arduino.h>
#include <HardwareSerial.h>

#ifdef DEBUG_SOFT
  #include <Debug.h>
#else
  #define OFFLINE

  #include <SPIFFS.h>
  #include <FS.h>
  
  #define PATH_FILE           "/travel.csv"
  #define PATH                "/"
  #define HEADER_CSV          "DATE, LATITUDE, LONGITUDE, ACCELX, ACCELY, ACCELZ, PIEZO\n"
  #define HEADER_CSV_GPS_ONLY "LATITUDE, LONGITUDE\r\n"

  #define TIMEOUT             200
#endif

#ifdef ACCELERO
  #include <Acl.h>
#endif

#ifdef PIEZZO
#endif

#ifdef GPS
  #define LED 25
  #include <GPS_parser.h>
#endif

/*----- CHANNELS -----*/
#ifdef ACCELERO
  #define SSPIN       27
#endif
#ifdef PIEZZO
  #define PIEZO_PIN   12
#endif


typedef enum
{
  INIT    = 0
} enum_state;

typedef struct
{
  uint8_t state;
  uint8_t error;
//  uint8_t ;
//  uint8_t ;
} state_machine;



#endif
