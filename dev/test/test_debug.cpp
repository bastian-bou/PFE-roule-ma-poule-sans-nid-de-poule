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



#include <Arduino.h>
#include <unity.h>
#include "Debug.h"

// void setUp(void) {
// // set stuff up here
// }

// void tearDown(void) {
// // clean stuff up here
// }

void test_ssid(void) {
    TEST_ASSERT_EQUAL(WIFI_SSID, "test_nidDePoule");
}

void test_wifiPwd(void) {
    TEST_ASSERT_EQUAL(WIFI_PWD, "NidDePoule");
}

void test_max_clientsTelnet(void) {
    TEST_ASSERT_EQUAL(MAX_SRV_CLIENTS, 1);
}


void setup() {
    UNITY_BEGIN();
    RUN_TEST(test_ssid);
    RUN_TEST(test_wifiPwd);
    RUN_TEST(test_max_clientsTelnet);
    UNITY_END(); // stop unit testing
}


void loop() {
    
}