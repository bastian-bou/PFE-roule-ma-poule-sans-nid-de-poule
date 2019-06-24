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

#ifndef GPS_PARSER_H
#define GPS_PARSER_H

#include <Arduino.h>


class GPS_parser 
{
    public:

        uint8_t hour, minute, seconds, year, month, day;
        uint16_t milliseconds;
        // Floating point latitude and longitude value in degrees.
        float latitude, longitude;
        // Fixed point latitude and longitude value with degrees stored in units of 1/100000 degrees,
        // and minutes stored in units of 1/100000 degrees.
        int32_t latitude_fixed, longitude_fixed;
        float latitudeDegrees, longitudeDegrees;
        float speed, angle;
        char lat, lon, mag;
        boolean fix;


        GPS_parser();
        ~GPS_parser();
        int rmc_parser(char *nmea);

    private:
};

#endif