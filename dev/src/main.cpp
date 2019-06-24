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

/* ----------------------libraries---------------------- */
#include "global.h"
#include <string>

/* -----------------global variables-------------------- */
#define WIFI_SSID           "test_nidDePoule"
#define WIFI_PWD            "NidDePoule"

#ifdef DEBUG_SOFT
  Debug deb(SERIAL_DEBUG);
#endif

#ifdef ACCELERO
  Acl myACL; // the library object for Accelerometer
  char strMes[150];
#endif

#ifdef GPS
  GPS_parser gps;
#endif

#ifdef OFFLINE

unsigned long nextTime;
unsigned long currentTime;

bool flagData = true;

void listDir(const char * dirname, uint8_t levels)
{
  Serial.printf("Listing directory: %s\r\n", dirname);

  File root = SPIFFS.open(dirname);
  if(!root){
    Serial.println("- failed to open directory");
    return;
  }
  if(!root.isDirectory()){
    Serial.println(" - not a directory");
    return;
  }

  File _file = root.openNextFile();
  while(_file){
    if(_file.isDirectory()){
      Serial.print("  DIR : ");
      Serial.println(_file.name());
      if(levels){
          listDir(_file.name(), levels -1);
      }
    } else {
      Serial.print("  FILE: ");
      Serial.print(_file.name());
      Serial.print("\tSIZE: ");
      Serial.println(_file.size());
    }
    _file = root.openNextFile();
  }
}

#endif

#ifdef PIEZZO

volatile unsigned long pulse = 0;
volatile unsigned long prevTime = 0;

void risingPiezo();
void fallingPiezo();

#endif

void setup()
{
  #ifdef DEBUG_SOFT
    deb.init();
    deb.sendData("-----Start TEST by Embedded device-----\n\n");
  #endif

  #ifdef ACCELERO
    myACL.init(21, 22);
  #endif

  #ifdef PIEZZO
    pinMode(PIEZO_PIN, INPUT);
    attachInterrupt(digitalPinToInterrupt(PIEZO_PIN), fallingPiezo, FALLING);
  #endif

  #ifdef GPS
    Serial2.begin(4800);
    pinMode(LED, OUTPUT);
    digitalWrite(LED, LOW);
  #endif

  #ifdef OFFLINE
    File _file;
    Serial.begin(9600);
    Serial.print("\n-----Start Command-----\n");
    if (!SPIFFS.begin(true)) {
      Serial.println("An Error has occurred while mounting SPIFFS");
      return;
    }
    if (!SPIFFS.exists(PATH_FILE)) {
      _file = SPIFFS.open(PATH_FILE, FILE_WRITE);
      _file.print(HEADER_CSV);
    } else {
      _file = SPIFFS.open(PATH_FILE, FILE_APPEND);
      if (_file.size() == 0){
        _file.print(HEADER_CSV);
      }
    }

    currentTime = millis();
    nextTime = millis() + TIMEOUT;

  #endif
    
}

void loop()
{
  #ifdef ACCELERO
    
    #ifdef DEBUG_SOFT
      deb.sendData(myACL.toString());
    #endif
    delay(5);
  #endif


  #ifdef GPS
    if (Serial2.available() > 0) {
      
      size_t len = Serial2.available();
      uint8_t sbuf[len];

      Serial2.readBytes(sbuf, len);

      char * trame = (char *) sbuf + '\n';
      gps.rmc_parser(trame);

      #ifdef DEBUG_SOFT
      if (gps.fix) {
        deb.sendData("Heure : ");
        deb.sendData((String) (gps.hour + 1));
        deb.sendData(":");
        deb.sendData((String) gps.minute);
        deb.sendData(":");
        deb.sendData((String) gps.seconds);
        deb.sendData("\n");
        deb.sendData("Position : ");
        deb.sendData((String) gps.latitudeDegrees);
        deb.sendData(", ");
        deb.sendData((String) gps.longitudeDegrees);
        deb.sendData("\n");
        deb.sendData("Vitesse (km/h) : ");
        deb.sendData((String) (gps.speed * 1.85));
        deb.sendData("\n\n");
      }
      
      #endif
      

    }
    if (gps.fix) {
      digitalWrite(LED, HIGH);
    } else {
      digitalWrite(LED, LOW);
    }
  #endif

  #ifdef OFFLINE
    currentTime = millis();
    if (flagData && gps.fix && (currentTime > nextTime)) {
      nextTime = millis() + TIMEOUT;
      File _file;
      _file = SPIFFS.open(PATH_FILE, FILE_APPEND);
      _file.printf("%d:%d:%d, ", (gps.hour + 1), gps.minute, gps.seconds);
      if (gps.fix) {
        _file.printf("%f, %f, ", gps.latitudeDegrees, gps.longitudeDegrees);
      } else {
      _file.printf(", ");
      }
       _file.print(myACL.toString());

       _file.printf("%lu \r\n", pulse);
       pulse = 0;
      //_file.printf("\r\n");
    }

    if (Serial.available()) {
      char character;
      File _openfile;
      File _fileWrite;

      character = Serial.read();

      switch (character) {
        case 'h' : 
          Serial.write("h - help\n");
          Serial.write("r - read file\n");
          Serial.write("e - erase file\n");
          Serial.write("l - list files\n");
          Serial.write("o - toggle on/off append data\n");
          Serial.write("s - Size still available\n");
          Serial.write("\n");
        break;

        case 'r' : 
          _openfile = SPIFFS.open(PATH_FILE);
          if (_openfile) {
            if(_openfile.size() == 0)
              Serial.printf("File %s empty\n", PATH_FILE);
            while (_openfile.available()) {
              Serial.write(_openfile.read());
            }
          } else 
            Serial.print("No file\n");
        break;

        case 'e' :
          _fileWrite = SPIFFS.open(PATH_FILE, FILE_WRITE);
          _fileWrite.print(HEADER_CSV);
          Serial.print("File remove\n");
        break;

        case 'l' :
          listDir(PATH, 0);
        break;

        case 'o' :
          flagData = !flagData;
          if(flagData) Serial.print("Launch append in file\n");
          else Serial.print("Stop append in file\n");
        break;

        case 's' :
          Serial.printf("Remaining size : %d (%d%%)\n", (SPIFFS.totalBytes() - SPIFFS.usedBytes())
                        , ((SPIFFS.usedBytes() * 100) / SPIFFS.totalBytes()));
        break;

        default : 
          Serial.write("try h\n");
        break;
      }
    }
   #endif
  
}

#ifdef PIEZZO
  void risingPiezo()
  {
    pulse = micros() - prevTime;
    //Serial.printf("pulse : %lu\n", pulse);
    attachInterrupt(digitalPinToInterrupt(PIEZO_PIN), fallingPiezo, FALLING);
  }

  void fallingPiezo()
  {
    prevTime = micros();
    attachInterrupt(digitalPinToInterrupt(PIEZO_PIN), risingPiezo, RISING);
  }
#endif