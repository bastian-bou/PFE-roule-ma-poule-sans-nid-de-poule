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
$Comp
L Device:Microphone MK1
U 1 1 5C377223
P 4200 3500
F 0 "MK1" H 4330 3546 50  0000 L CNN
F 1 "Piézo" H 4330 3455 50  0000 L CNN
F 2 "" V 4200 3600 50  0001 C CNN
F 3 "~" V 4200 3600 50  0001 C CNN
	1    4200 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C3772C6
P 5000 3500
F 0 "R1" H 5070 3546 50  0000 L CNN
F 1 "1M" H 5070 3455 50  0000 L CNN
F 2 "" V 4930 3500 50  0001 C CNN
F 3 "~" H 5000 3500 50  0001 C CNN
	1    5000 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Oscilloscope MES1
U 1 1 5C377345
P 5900 3500
F 0 "MES1" H 6030 3546 50  0000 L CNN
F 1 "Oscilloscope" H 6030 3455 50  0000 L CNN
F 2 "" V 5900 3600 50  0001 C CNN
F 3 "~" V 5900 3600 50  0001 C CNN
	1    5900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3700 4200 3800
Wire Wire Line
	5900 3800 5900 3700
Wire Wire Line
	4200 3300 4200 3200
Wire Wire Line
	5900 3200 5900 3300
Wire Wire Line
	4200 3200 5000 3200
Wire Wire Line
	4200 3800 5000 3800
Wire Wire Line
	5000 3650 5000 3800
Connection ~ 5000 3800
Wire Wire Line
	5000 3800 5900 3800
Wire Wire Line
	5000 3350 5000 3200
Connection ~ 5000 3200
Wire Wire Line
	5000 3200 5900 3200
$EndSCHEMATC
