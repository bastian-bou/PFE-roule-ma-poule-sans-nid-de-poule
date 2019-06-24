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

#ifndef ACL_H
#define ACL_H

#include <Wire.h>
#include <Arduino.h>



// Déclaration of the adress of the module
#define ADXL345_Adresse         0x1D // ADXL345 adress
#define POWER_CTL               0x2D // Power Control register
#define DATA_FORMAT             0x31 // Data Format register
#define DATAX0                  0x32 // LSB axe X
#define DATAX1                  0x33 // MSB axe X
#define DATAY0                  0x34 // LSB axe Y
#define DATAY1                  0x35 // MSB Y
#define DATAZ0                  0x36 // LSB axe Z
#define DATAZ1                  0x37 // bMSB Z

// Configuration of the module
#define ADXL345_Precision2G     0x00
#define ADXL345_Precision4G     0x01
#define ADXL345_Precision8G     0x02
#define ADXL345_Precision16G    0x03
#define ADXL345_ModeMesure      0x08

// Transmission
#define FORMAT                  2


class Acl 
{

    private :

        byte buffer[6]; // storage of data of the module
        int i = 0;
        int composante_X;
        int composante_Y;
        int composante_Z;
        void getValues();

    public :
        Acl();
        ~Acl();

        void init(int SDA, int SCL);

        
        String toString();
        int getX();
        int getY();
        int getZ();

};

#endif