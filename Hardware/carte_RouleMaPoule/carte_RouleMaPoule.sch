EESchema Schematic File Version 4
LIBS:carte_RouleMaPoule-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "2019-02-03"
Rev "A"
Comp "Bastian Bouchardon"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RouleMaPoule:LTC3536 U1
U 1 1 5C7BAFB5
P 2200 1600
F 0 "U1" H 2200 2125 50  0000 C CNN
F 1 "LTC3536" H 2200 2034 50  0000 C CNN
F 2 "Package_SO:MSOP-12-1EP_3x4mm_P0.65mm_EP1.65x2.85mm" H 2200 1600 50  0001 C CNN
F 3 "" H 2200 1600 50  0001 C CNN
	1    2200 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5C7BCF6E
P 2200 950
F 0 "L1" V 2390 950 50  0000 C CNN
F 1 "4.7µH" V 2299 950 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 2200 950 50  0001 C CNN
F 3 "~" H 2200 950 50  0001 C CNN
F 4 "DFE252012PD-4R7M=P2" V 2200 950 50  0001 C CNN "Ref Fab"
F 5 "2871486" V 2200 950 50  0001 C CNN "Farnell"
	1    2200 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5C7BD0B9
P 1250 1750
F 0 "C1" H 1365 1796 50  0000 L CNN
F 1 "10µF" H 1365 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1288 1600 50  0001 C CNN
F 3 "~" H 1250 1750 50  0001 C CNN
	1    1250 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C7BD121
P 2800 1750
F 0 "R1" V 3000 1750 50  0000 C CNN
F 1 "49.9K" V 2900 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2730 1750 50  0001 C CNN
F 3 "~" H 2800 1750 50  0001 C CNN
	1    2800 1750
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5C7BD221
P 3200 1750
F 0 "C4" V 2948 1750 50  0000 C CNN
F 1 "220pF" V 3039 1750 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3238 1600 50  0001 C CNN
F 3 "~" H 3200 1750 50  0001 C CNN
	1    3200 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5C7BD2A3
P 3450 1450
F 0 "R7" H 3520 1496 50  0000 L CNN
F 1 "6.49K" H 3500 1400 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3380 1450 50  0001 C CNN
F 3 "~" H 3450 1450 50  0001 C CNN
	1    3450 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C7BD323
P 3450 2050
F 0 "R8" H 3520 2096 50  0000 L CNN
F 1 "221K" H 3500 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3380 2050 50  0001 C CNN
F 3 "~" H 3450 2050 50  0001 C CNN
	1    3450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C7BD3AA
P 3450 1050
F 0 "C5" H 3565 1096 50  0000 L CNN
F 1 "47pF" H 3565 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3488 900 50  0001 C CNN
F 3 "~" H 3450 1050 50  0001 C CNN
	1    3450 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C7BD429
P 3800 1650
F 0 "R9" V 3700 1650 50  0000 C CNN
F 1 "1M" V 3800 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3730 1650 50  0001 C CNN
F 3 "~" H 3800 1650 50  0001 C CNN
	1    3800 1650
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5C7BD4F0
P 4050 2050
F 0 "C6" H 4165 2096 50  0000 L CNN
F 1 "22µF" H 4165 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4088 1900 50  0001 C CNN
F 3 "~" H 4050 2050 50  0001 C CNN
	1    4050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1300 1850 950 
Wire Wire Line
	1850 950  2050 950 
Wire Wire Line
	2550 1300 2550 950 
Wire Wire Line
	2550 950  2350 950 
Wire Wire Line
	1250 1600 1250 1450
$Comp
L power:GND #PWR03
U 1 1 5C7BD77D
P 2200 2500
F 0 "#PWR03" H 2200 2250 50  0001 C CNN
F 1 "GND" H 2205 2327 50  0000 C CNN
F 2 "" H 2200 2500 50  0001 C CNN
F 3 "" H 2200 2500 50  0001 C CNN
	1    2200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1550 1750 1550
Wire Wire Line
	1750 1550 1750 2400
Wire Wire Line
	1750 2400 2100 2400
Wire Wire Line
	2200 2500 2200 2400
Wire Wire Line
	2100 2100 2100 2400
Connection ~ 2100 2400
Wire Wire Line
	2100 2400 2200 2400
Wire Wire Line
	2200 2400 2300 2400
Connection ~ 2200 2400
Wire Wire Line
	2300 2100 2300 2400
Connection ~ 2300 2400
Wire Wire Line
	1850 1650 1650 1650
Wire Wire Line
	1650 1650 1650 1450
Connection ~ 1650 1450
Wire Wire Line
	1650 1450 1850 1450
Wire Wire Line
	1250 1450 1550 1450
Wire Wire Line
	1850 1750 1550 1750
Wire Wire Line
	1550 1750 1550 1450
Connection ~ 1550 1450
Wire Wire Line
	1550 1450 1650 1450
Wire Wire Line
	1250 1900 1250 2400
Wire Wire Line
	1250 2400 1750 2400
Connection ~ 1750 2400
Wire Wire Line
	4050 2400 4050 2200
Wire Wire Line
	2300 2400 3450 2400
Wire Wire Line
	3450 2200 3450 2400
Connection ~ 3450 2400
Wire Wire Line
	3450 2400 4050 2400
Wire Wire Line
	3450 1900 3450 1750
Wire Wire Line
	3350 1750 3450 1750
Connection ~ 3450 1750
Wire Wire Line
	3450 1750 3450 1650
Wire Wire Line
	3650 1650 3450 1650
Connection ~ 3450 1650
Wire Wire Line
	3450 1650 3450 1600
Wire Wire Line
	3050 1750 2950 1750
Wire Wire Line
	2650 1750 2550 1750
Wire Wire Line
	2550 1650 3450 1650
Wire Wire Line
	2550 1450 2850 1450
Wire Wire Line
	2850 1450 2850 800 
Wire Wire Line
	2850 800  3450 800 
Wire Wire Line
	3450 800  3450 900 
Connection ~ 3450 800 
Wire Wire Line
	3450 800  3950 800 
Wire Wire Line
	3450 1200 3450 1300
Wire Wire Line
	3950 1650 3950 800 
Connection ~ 3950 800 
Wire Wire Line
	3950 800  4050 800 
Wire Wire Line
	4050 800  4050 1900
Connection ~ 4050 800 
Wire Wire Line
	4050 800  4150 800 
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5C7C40D1
P 650 1550
F 0 "J1" H 570 1225 50  0000 C CNN
F 1 "Conn_01x02" H 570 1316 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B2B-PH-K_1x02_P2.00mm_Vertical" H 650 1550 50  0001 C CNN
F 3 "~" H 650 1550 50  0001 C CNN
	1    650  1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C7C4ACA
P 950 1600
F 0 "#PWR01" H 950 1350 50  0001 C CNN
F 1 "GND" H 955 1427 50  0000 C CNN
F 2 "" H 950 1600 50  0001 C CNN
F 3 "" H 950 1600 50  0001 C CNN
	1    950  1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1600 950  1550
Wire Wire Line
	950  1550 850  1550
Wire Wire Line
	850  1450 1250 1450
Connection ~ 1250 1450
$Comp
L power:+3.3V #PWR08
U 1 1 5C7C71F0
P 4150 800
F 0 "#PWR08" H 4150 650 50  0001 C CNN
F 1 "+3.3V" H 4165 973 50  0000 C CNN
F 2 "" H 4150 800 50  0001 C CNN
F 3 "" H 4150 800 50  0001 C CNN
	1    4150 800 
	1    0    0    -1  
$EndComp
Wire Notes Line
	4400 2750 500  2750
$Comp
L Connector_Generic:Conn_01x19 J3
U 1 1 5C7C8695
P 3600 5300
F 0 "J3" H 3680 5342 50  0000 L CNN
F 1 "Conn_01x19" H 3680 5251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical" H 3600 5300 50  0001 C CNN
F 3 "~" H 3600 5300 50  0001 C CNN
	1    3600 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x19 J4
U 1 1 5C7C874F
P 4200 5300
F 0 "J4" H 4120 6417 50  0000 C CNN
F 1 "Conn_01x19" H 4120 6326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical" H 4200 5300 50  0001 C CNN
F 3 "~" H 4200 5300 50  0001 C CNN
	1    4200 5300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5C7C928B
P 4800 4450
F 0 "#PWR09" H 4800 4200 50  0001 C CNN
F 1 "GND" H 4805 4277 50  0000 C CNN
F 2 "" H 4800 4450 50  0001 C CNN
F 3 "" H 4800 4450 50  0001 C CNN
	1    4800 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5C7C92D4
P 4800 5050
F 0 "#PWR010" H 4800 4800 50  0001 C CNN
F 1 "GND" H 4805 4877 50  0000 C CNN
F 2 "" H 4800 5050 50  0001 C CNN
F 3 "" H 4800 5050 50  0001 C CNN
	1    4800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5000 4800 5000
Wire Wire Line
	4800 5000 4800 5050
Wire Wire Line
	4400 4400 4800 4400
Wire Wire Line
	4800 4400 4800 4450
$Comp
L power:GND #PWR07
U 1 1 5C7CA659
P 3000 5750
F 0 "#PWR07" H 3000 5500 50  0001 C CNN
F 1 "GND" H 3005 5577 50  0000 C CNN
F 2 "" H 3000 5750 50  0001 C CNN
F 3 "" H 3000 5750 50  0001 C CNN
	1    3000 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5750 3000 5700
Wire Wire Line
	3000 5700 3400 5700
$Comp
L Device:CP C3
U 1 1 5C7CB1A4
P 2600 4550
F 0 "C3" H 2718 4596 50  0000 L CNN
F 1 "220µF" H 2718 4505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 2638 4400 50  0001 C CNN
F 3 "~" H 2600 4550 50  0001 C CNN
	1    2600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4400 2600 4400
Wire Wire Line
	2600 4400 2400 4400
Wire Wire Line
	2400 4400 2400 4300
Connection ~ 2600 4400
$Comp
L power:+3.3V #PWR04
U 1 1 5C7CC865
P 2400 4300
F 0 "#PWR04" H 2400 4150 50  0001 C CNN
F 1 "+3.3V" H 2415 4473 50  0000 C CNN
F 2 "" H 2400 4300 50  0001 C CNN
F 3 "" H 2400 4300 50  0001 C CNN
	1    2400 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C7CC8DB
P 2600 4800
F 0 "#PWR06" H 2600 4550 50  0001 C CNN
F 1 "GND" H 2605 4627 50  0000 C CNN
F 2 "" H 2600 4800 50  0001 C CNN
F 3 "" H 2600 4800 50  0001 C CNN
	1    2600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4800 2600 4700
$Comp
L Device:C C2
U 1 1 5C7CD538
P 2400 4550
F 0 "C2" H 2200 4600 50  0000 L CNN
F 1 "100nF" H 2150 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2438 4400 50  0001 C CNN
F 3 "~" H 2400 4550 50  0001 C CNN
	1    2400 4550
	1    0    0    -1  
$EndComp
Connection ~ 2400 4400
$Comp
L power:GND #PWR05
U 1 1 5C7CD605
P 2400 4800
F 0 "#PWR05" H 2400 4550 50  0001 C CNN
F 1 "GND" H 2405 4627 50  0000 C CNN
F 2 "" H 2400 4800 50  0001 C CNN
F 3 "" H 2400 4800 50  0001 C CNN
	1    2400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4800 2400 4700
Text GLabel 4500 5500 2    50   Input ~ 0
RX
Text GLabel 4500 5400 2    50   Output ~ 0
TX
Wire Wire Line
	4500 5400 4400 5400
Wire Wire Line
	4400 5500 4500 5500
Text GLabel 4500 4900 2    50   BiDi ~ 0
SDA
Text GLabel 4500 4600 2    50   Output ~ 0
SCL
Wire Wire Line
	4400 4600 4500 4600
Wire Wire Line
	4400 4900 4500 4900
$Comp
L Device:R R2
U 1 1 5C7D1E90
P 3150 5200
F 0 "R2" V 3100 5000 50  0000 C CNN
F 1 "R" V 3150 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3080 5200 50  0001 C CNN
F 3 "~" H 3150 5200 50  0001 C CNN
	1    3150 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C7D1F76
P 3150 5300
F 0 "R3" V 3100 5100 50  0000 C CNN
F 1 "R" V 3150 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3080 5300 50  0001 C CNN
F 3 "~" H 3150 5300 50  0001 C CNN
	1    3150 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5C7D1FDA
P 3150 5400
F 0 "R4" V 3100 5200 50  0000 C CNN
F 1 "R" V 3150 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3080 5400 50  0001 C CNN
F 3 "~" H 3150 5400 50  0001 C CNN
	1    3150 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5C7D2021
P 3150 5500
F 0 "R5" V 3100 5300 50  0000 C CNN
F 1 "R" V 3150 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3080 5500 50  0001 C CNN
F 3 "~" H 3150 5500 50  0001 C CNN
	1    3150 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5C7D2058
P 3150 5600
F 0 "R6" V 3100 5400 50  0000 C CNN
F 1 "R" V 3150 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3080 5600 50  0001 C CNN
F 3 "~" H 3150 5600 50  0001 C CNN
	1    3150 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 5200 3400 5200
Wire Wire Line
	3400 5300 3300 5300
Wire Wire Line
	3400 5400 3300 5400
Wire Wire Line
	3400 5500 3300 5500
Wire Wire Line
	3400 5600 3300 5600
$Comp
L power:GND #PWR02
U 1 1 5C7D6682
P 2050 6050
F 0 "#PWR02" H 2050 5800 50  0001 C CNN
F 1 "GND" H 2055 5877 50  0000 C CNN
F 2 "" H 2050 6050 50  0001 C CNN
F 3 "" H 2050 6050 50  0001 C CNN
	1    2050 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5C7DAAC1
P 2400 5200
F 0 "D1" H 2500 5250 50  0000 C CNN
F 1 "LED" H 2150 5250 50  0000 C CNN
F 2 "LED_SMD:LED_1210_3225Metric" H 2400 5200 50  0001 C CNN
F 3 "~" H 2400 5200 50  0001 C CNN
	1    2400 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5C7DAB35
P 2400 5350
F 0 "D2" H 2500 5400 50  0000 C CNN
F 1 "LED" H 2150 5400 50  0000 C CNN
F 2 "LED_SMD:LED_1210_3225Metric" H 2400 5350 50  0001 C CNN
F 3 "~" H 2400 5350 50  0001 C CNN
	1    2400 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5C7DABF4
P 2400 5500
F 0 "D3" H 2500 5550 50  0000 C CNN
F 1 "LED" H 2150 5550 50  0000 C CNN
F 2 "LED_SMD:LED_1210_3225Metric" H 2400 5500 50  0001 C CNN
F 3 "~" H 2400 5500 50  0001 C CNN
	1    2400 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5C7DAC40
P 2400 5650
F 0 "D4" H 2500 5700 50  0000 C CNN
F 1 "LED" H 2150 5700 50  0000 C CNN
F 2 "LED_SMD:LED_1210_3225Metric" H 2400 5650 50  0001 C CNN
F 3 "~" H 2400 5650 50  0001 C CNN
	1    2400 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5C7DAC87
P 2400 5800
F 0 "D5" H 2500 5850 50  0000 C CNN
F 1 "LED" H 2150 5850 50  0000 C CNN
F 2 "LED_SMD:LED_1210_3225Metric" H 2400 5800 50  0001 C CNN
F 3 "~" H 2400 5800 50  0001 C CNN
	1    2400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5200 3000 5200
Wire Wire Line
	2550 5300 2550 5350
Wire Wire Line
	2550 5300 3000 5300
Wire Wire Line
	2550 5500 2650 5500
Wire Wire Line
	2650 5500 2650 5400
Wire Wire Line
	2650 5400 3000 5400
Wire Wire Line
	3000 5500 2750 5500
Wire Wire Line
	2750 5500 2750 5650
Wire Wire Line
	2550 5650 2750 5650
Wire Wire Line
	3000 5600 2850 5600
Wire Wire Line
	2850 5600 2850 5800
Wire Wire Line
	2550 5800 2850 5800
Wire Wire Line
	2250 5200 2050 5200
Wire Wire Line
	2250 5350 2050 5350
Wire Wire Line
	2250 5500 2050 5500
Wire Wire Line
	2250 5650 2050 5650
Wire Wire Line
	2250 5800 2050 5800
Wire Wire Line
	2050 5200 2050 5350
Connection ~ 2050 5350
Wire Wire Line
	2050 5350 2050 5500
Connection ~ 2050 5500
Wire Wire Line
	2050 5500 2050 5650
Connection ~ 2050 5650
Wire Wire Line
	2050 5650 2050 5800
Connection ~ 2050 5800
Wire Wire Line
	2050 5800 2050 6050
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5C7F0B0F
P 2800 6200
F 0 "J2" H 2720 5975 50  0000 C CNN
F 1 "Conn_01x01" H 2720 6066 50  0000 C CNN
F 2 "Connector_Pin:Pin_D0.7mm_L6.5mm_W1.8mm_FlatFork" H 2800 6200 50  0001 C CNN
F 3 "~" H 2800 6200 50  0001 C CNN
	1    2800 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 6200 3300 6200
Wire Wire Line
	3300 6200 3300 5800
Wire Wire Line
	3300 5800 3400 5800
Text Label 3050 6200 0    50   ~ 0
Touch
$Comp
L Connector_Generic:Conn_02x06_Counter_Clockwise J5
U 1 1 5C7F35BC
P 7450 1250
F 0 "J5" H 7500 1667 50  0000 C CNN
F 1 "Conn_02x06_Counter_Clockwise" H 7500 1576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 7450 1250 50  0001 C CNN
F 3 "~" H 7450 1250 50  0001 C CNN
	1    7450 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Top_Bottom J6
U 1 1 5C7F5ADB
P 7450 2050
F 0 "J6" H 7500 2367 50  0000 C CNN
F 1 "Conn_02x04_Top_Bottom" H 7500 2276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 7450 2050 50  0001 C CNN
F 3 "~" H 7450 2050 50  0001 C CNN
	1    7450 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5C7F5E70
P 6750 1700
F 0 "R11" H 6820 1746 50  0000 L CNN
F 1 "1K" H 6820 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6680 1700 50  0001 C CNN
F 3 "~" H 6750 1700 50  0001 C CNN
	1    6750 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C7F5FF3
P 6450 1700
F 0 "R10" H 6520 1746 50  0000 L CNN
F 1 "1K" H 6520 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6380 1700 50  0001 C CNN
F 3 "~" H 6450 1700 50  0001 C CNN
	1    6450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1850 6450 2050
Wire Wire Line
	6450 2050 7150 2050
Wire Wire Line
	7250 1950 7200 1950
Wire Wire Line
	6750 1950 6750 1850
Wire Wire Line
	7200 1950 7200 1850
Wire Wire Line
	7200 1850 7850 1850
Wire Wire Line
	7850 1850 7850 1950
Wire Wire Line
	7850 1950 7750 1950
Connection ~ 7200 1950
Wire Wire Line
	7200 1950 6750 1950
Wire Wire Line
	7150 2050 7150 1800
Wire Wire Line
	7150 1800 7900 1800
Wire Wire Line
	7900 1800 7900 2050
Wire Wire Line
	7900 2050 7750 2050
Connection ~ 7150 2050
Wire Wire Line
	7150 2050 7250 2050
Wire Wire Line
	7250 2150 7150 2150
Wire Wire Line
	7150 2150 7150 2350
Wire Wire Line
	7150 2350 7850 2350
Wire Wire Line
	7850 2350 7850 2150
Wire Wire Line
	7850 2150 7750 2150
Connection ~ 7150 2350
Wire Wire Line
	7250 2250 7250 2400
Wire Wire Line
	7250 2400 7900 2400
Wire Wire Line
	7900 2400 7900 2250
Wire Wire Line
	7900 2250 7750 2250
$Comp
L power:GND #PWR012
U 1 1 5C807717
P 7150 2700
F 0 "#PWR012" H 7150 2450 50  0001 C CNN
F 1 "GND" H 7155 2527 50  0000 C CNN
F 2 "" H 7150 2700 50  0001 C CNN
F 3 "" H 7150 2700 50  0001 C CNN
	1    7150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5C80779A
P 8050 2200
F 0 "#PWR015" H 8050 2050 50  0001 C CNN
F 1 "+3.3V" H 8065 2373 50  0000 C CNN
F 2 "" H 8050 2200 50  0001 C CNN
F 3 "" H 8050 2200 50  0001 C CNN
	1    8050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2200 8050 2250
Wire Wire Line
	8050 2250 7900 2250
Connection ~ 7900 2250
$Comp
L Device:C C8
U 1 1 5C80A8A6
P 8050 2450
F 0 "C8" H 8165 2496 50  0000 L CNN
F 1 "100nF" H 8165 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8088 2300 50  0001 C CNN
F 3 "~" H 8050 2450 50  0001 C CNN
	1    8050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2300 8050 2250
Connection ~ 8050 2250
$Comp
L power:GND #PWR016
U 1 1 5C80DB97
P 8050 2700
F 0 "#PWR016" H 8050 2450 50  0001 C CNN
F 1 "GND" H 8055 2527 50  0000 C CNN
F 2 "" H 8050 2700 50  0001 C CNN
F 3 "" H 8050 2700 50  0001 C CNN
	1    8050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2700 8050 2600
Wire Wire Line
	7150 2350 7150 2700
$Comp
L power:+3.3V #PWR011
U 1 1 5C8141B3
P 6600 1450
F 0 "#PWR011" H 6600 1300 50  0001 C CNN
F 1 "+3.3V" H 6615 1623 50  0000 C CNN
F 2 "" H 6600 1450 50  0001 C CNN
F 3 "" H 6600 1450 50  0001 C CNN
	1    6600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1450 6600 1500
Wire Wire Line
	6600 1500 6450 1500
Wire Wire Line
	6450 1500 6450 1550
Wire Wire Line
	6600 1500 6750 1500
Wire Wire Line
	6750 1500 6750 1550
Connection ~ 6600 1500
Text GLabel 6350 1950 0    50   Input ~ 0
SCL
Text GLabel 6350 2050 0    50   BiDi ~ 0
SDA
Wire Wire Line
	6350 2050 6450 2050
Connection ~ 6450 2050
Wire Wire Line
	6350 1950 6750 1950
Connection ~ 6750 1950
Wire Wire Line
	7250 1050 6750 1050
Wire Wire Line
	6750 1050 6750 1500
Connection ~ 6750 1500
Text Label 6950 1050 0    50   ~ 0
CS
$Comp
L RouleMaPoule:A2035 U2
U 1 1 5C82E2EB
P 9350 4950
F 0 "U2" H 9350 5775 50  0000 C CNN
F 1 "A2035" H 9350 5684 50  0000 C CNN
F 2 "RouleMaPoule:A2035" H 9150 5100 50  0001 C CNN
F 3 "" H 9150 5100 50  0001 C CNN
	1    9350 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5C832B15
P 8700 4100
F 0 "R13" H 8770 4146 50  0000 L CNN
F 1 "10K" H 8770 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8630 4100 50  0001 C CNN
F 3 "~" H 8700 4100 50  0001 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4650 8800 4650
Wire Wire Line
	8800 4650 8800 4250
Wire Wire Line
	8800 4250 9900 4250
Wire Wire Line
	9900 4250 9900 4650
Wire Wire Line
	9900 4650 9800 4650
$Comp
L Device:R R12
U 1 1 5C837495
P 8500 4950
F 0 "R12" H 8300 4900 50  0000 L CNN
F 1 "10K" H 8300 4800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 8430 4950 50  0001 C CNN
F 3 "~" H 8500 4950 50  0001 C CNN
	1    8500 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4800 8500 4750
Wire Wire Line
	8500 4750 8900 4750
Wire Wire Line
	8900 5150 8500 5150
Wire Wire Line
	8500 5150 8500 5100
$Comp
L power:GND #PWR019
U 1 1 5C84065F
P 8750 5400
F 0 "#PWR019" H 8750 5150 50  0001 C CNN
F 1 "GND" H 8755 5227 50  0000 C CNN
F 2 "" H 8750 5400 50  0001 C CNN
F 3 "" H 8750 5400 50  0001 C CNN
	1    8750 5400
	1    0    0    -1  
$EndComp
NoConn ~ 8900 5250
NoConn ~ 8900 5600
NoConn ~ 9800 5600
NoConn ~ 9800 5250
NoConn ~ 9800 5150
NoConn ~ 9800 5050
NoConn ~ 9800 4950
NoConn ~ 9800 4850
NoConn ~ 9800 4750
NoConn ~ 9800 4550
NoConn ~ 8900 4450
$Comp
L power:GND #PWR018
U 1 1 5C87914A
P 8750 4900
F 0 "#PWR018" H 8750 4650 50  0001 C CNN
F 1 "GND" H 8755 4727 50  0000 C CNN
F 2 "" H 8750 4900 50  0001 C CNN
F 3 "" H 8750 4900 50  0001 C CNN
	1    8750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 4900 8750 4850
Wire Wire Line
	8750 4850 8900 4850
Wire Wire Line
	8750 5400 8750 5350
Wire Wire Line
	8750 5350 8900 5350
Wire Wire Line
	8700 4250 8700 4350
Wire Wire Line
	8700 4350 8900 4350
$Comp
L power:+3.3V #PWR017
U 1 1 5C888054
P 8700 3850
F 0 "#PWR017" H 8700 3700 50  0001 C CNN
F 1 "+3.3V" H 8715 4023 50  0000 C CNN
F 2 "" H 8700 3850 50  0001 C CNN
F 3 "" H 8700 3850 50  0001 C CNN
	1    8700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3850 8700 3950
$Comp
L Device:CP C7
U 1 1 5C88D1E2
P 7800 4750
F 0 "C7" H 7600 4800 50  0000 L CNN
F 1 "220µF" H 7450 4650 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 7838 4600 50  0001 C CNN
F 3 "~" H 7800 4750 50  0001 C CNN
	1    7800 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5C88D2C6
P 8200 4750
F 0 "C9" H 8300 4900 50  0000 L CNN
F 1 "100nF" H 8300 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8238 4600 50  0001 C CNN
F 3 "~" H 8200 4750 50  0001 C CNN
	1    8200 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5C8925FA
P 8000 5000
F 0 "#PWR014" H 8000 4750 50  0001 C CNN
F 1 "GND" H 8005 4827 50  0000 C CNN
F 2 "" H 8000 5000 50  0001 C CNN
F 3 "" H 8000 5000 50  0001 C CNN
	1    8000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5000 8000 4950
Wire Wire Line
	8000 4950 7800 4950
Wire Wire Line
	7800 4950 7800 4900
Wire Wire Line
	8000 4950 8200 4950
Wire Wire Line
	8200 4950 8200 4900
Connection ~ 8000 4950
Wire Wire Line
	8900 4550 8200 4550
Wire Wire Line
	7800 4550 7800 4600
Wire Wire Line
	8200 4550 8200 4600
Connection ~ 8200 4550
Wire Wire Line
	8200 4550 7800 4550
$Comp
L power:+3.3V #PWR013
U 1 1 5C8A849E
P 7800 4450
F 0 "#PWR013" H 7800 4300 50  0001 C CNN
F 1 "+3.3V" H 7815 4623 50  0000 C CNN
F 2 "" H 7800 4450 50  0001 C CNN
F 3 "" H 7800 4450 50  0001 C CNN
	1    7800 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4450 7800 4550
Connection ~ 7800 4550
Text GLabel 10000 4350 2    50   Input ~ 0
TX
Text GLabel 10000 4450 2    50   Output ~ 0
RX
Wire Wire Line
	10000 4450 9800 4450
Wire Wire Line
	9800 4350 10000 4350
Wire Notes Line
	6950 3050 6950 6500
Wire Notes Line
	4400 500  4400 3050
Wire Notes Line
	4400 3050 11200 3050
Text Notes 3200 7300 0    197  ~ 0
ESP32
Text Notes 9050 6300 0    197  ~ 0
GPS
Text Notes 8600 950  0    197  ~ 0
ACCELEROMETRE
Text Notes 700  850  0    197  ~ 0
ALIM
Text Notes 500  1950 0    50   ~ 0
Batterie Li-Ion
$EndSCHEMATC
