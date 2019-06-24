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

#include "Acl.h"

Acl::Acl() 
{

}

Acl::~Acl()
{

}

void Acl::init(int SDA, int SCL)
{
    Wire.begin (SDA, SCL); // initialization of I2C communication
    Wire.beginTransmission (ADXL345_Adresse); // configuration of the module
    Wire.write (DATA_FORMAT);
    Wire.write (ADXL345_Precision16G);
    Wire.endTransmission ();
    Wire.beginTransmission (ADXL345_Adresse);
    Wire.write (POWER_CTL);
    Wire.write (ADXL345_ModeMesure);
    Wire.endTransmission ();
}

void Acl::getValues()
{
    String data = "Accel, ";

    Wire.beginTransmission (ADXL345_Adresse);
    Wire.write(DATAX0);
    Wire.endTransmission ();

    Wire.beginTransmission (ADXL345_Adresse);
    Wire.requestFrom(ADXL345_Adresse, 6); // Recovery of the 6 components
    i=0;
    while (Wire.available())
    {
        buffer[i] = Wire.read();
        i++;
    }
    Wire.endTransmission();

    composante_X=(buffer[1] << 8) | buffer[0]; // Development of the 3 components
    composante_Y=(buffer[3] << 8) | buffer[2];
    composante_Z=(buffer[5] << 8) | buffer[4];
}

int Acl::getX()
{
    getValues();
    return composante_X;
}

int Acl::getY()
{
    getValues();
    return composante_Y;
}

int Acl::getZ()
{
    getValues();
    return composante_Z;
}

String Acl::toString()
{
    getValues();

    
#if FORMAT == 0
    String data = "Accel, ";
    data += composante_X;
    data += ", ";
    data += composante_Y;
    data += ", ";
    data += composante_Z;
    data += "\n\r";
#elif FORMAT == 1
    String data = "Accel, ";
    data = "X=";
    data += composante_X;
    data += '\t';
    data +="Y=";
    data += composante_Y;
    data +='\t';
    data +="Z=";
    data += composante_Z;
    data += "\r\n";
#elif FORMAT == 2
    String data = "";
    data += composante_X;
    data += ", ";
    data += composante_Y;
    data += ", ";
    data += composante_Z;
    data += ", ";

#endif
    return data;
}