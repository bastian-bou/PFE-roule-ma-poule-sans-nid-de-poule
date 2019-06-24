EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3500 3500 0    50   Output ~ 0
SDA_ADXL345
Text GLabel 3500 3700 0    50   Output ~ 0
SCL_ADXL345
Text GLabel 3500 3900 0    50   UnSpc ~ 0
GND_ADXL345
Text GLabel 3500 4100 0    50   UnSpc ~ 0
VCC_ADXL345
Text GLabel 3500 4300 0    50   Output ~ 0
CS_ADXL345
Text GLabel 5500 3500 2    50   Input ~ 0
SDA_ESP32
Text GLabel 5500 3700 2    50   Input ~ 0
SCL_ESP32
Text GLabel 5500 3900 2    50   UnSpc ~ 0
GND_ESP32
Text GLabel 5500 2900 2    50   UnSpc ~ 0
VCC_ESP32
$Comp
L Device:R R1
U 1 1 5C3B5AF0
P 3900 3150
F 0 "R1" H 3970 3196 50  0000 L CNN
F 1 "Rt" H 3970 3105 50  0000 L CNN
F 2 "" V 3830 3150 50  0001 C CNN
F 3 "~" H 3900 3150 50  0001 C CNN
	1    3900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C3B5B6F
P 4400 3150
F 0 "R2" H 4470 3196 50  0000 L CNN
F 1 "Rt" H 4470 3105 50  0000 L CNN
F 2 "" V 4330 3150 50  0001 C CNN
F 3 "~" H 4400 3150 50  0001 C CNN
	1    4400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2900 4900 2900
Wire Wire Line
	3900 2900 3900 3000
Wire Wire Line
	4400 3000 4400 2900
Connection ~ 4400 2900
Wire Wire Line
	4400 2900 3900 2900
Wire Wire Line
	3900 3300 3900 3500
Wire Wire Line
	3900 3500 3500 3500
Wire Wire Line
	4400 3300 4400 3700
Wire Wire Line
	4400 3700 3500 3700
Wire Wire Line
	3900 3500 5500 3500
Connection ~ 3900 3500
Wire Wire Line
	4400 3700 5500 3700
Connection ~ 4400 3700
Wire Wire Line
	5500 3900 3500 3900
Wire Wire Line
	3500 4300 3700 4300
Wire Wire Line
	4900 4300 4900 2900
Connection ~ 4900 2900
Wire Wire Line
	4900 2900 4400 2900
Wire Wire Line
	3500 4100 3700 4100
Wire Wire Line
	3700 4100 3700 4300
Connection ~ 3700 4300
Wire Wire Line
	3700 4300 4900 4300
Wire Notes Line
	2900 3300 3600 3300
Wire Notes Line
	3600 3300 3600 4500
Wire Notes Line
	3600 4500 2900 4500
Text Notes 3050 4500 0    50   ~ 0
ADXL345
Text Notes 5600 4500 0    50   ~ 0
ESP32
Wire Notes Line
	6000 2800 5400 2800
Wire Notes Line
	5400 2800 5400 4500
Wire Notes Line
	5400 4500 6000 4500
$EndSCHEMATC
