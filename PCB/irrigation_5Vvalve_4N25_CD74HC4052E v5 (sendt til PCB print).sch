EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Irrigation"
Date "2019-02-08"
Rev "1.00"
Comp ""
Comment1 "with battery monitor and 5V/12V option for valve"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_BJT:TIP120 Q1
U 1 1 5C4F21EB
P 5850 4200
F 0 "Q1" H 6057 4246 50  0001 L CNN
F 1 "TIP120" H 6057 4200 50  0000 L CNN
F 2 "footprint:TIP120_flat_v4" H 6050 4125 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/TI/TIP120.pdf" H 5850 4200 50  0001 L CNN
	1    5850 4200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5C4F22D3
P 6400 4200
F 0 "R2" H 6470 4200 50  0000 L CNN
F 1 "5k" H 6470 4155 50  0000 L TNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6330 4200 50  0001 C CNN
F 3 "~" H 6400 4200 50  0001 C CNN
	1    6400 4200
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5C4F30A2
P 4700 1300
F 0 "SW1" H 4700 1535 50  0001 C CNN
F 1 "ON/OFF" H 4700 1443 50  0000 C CNN
F 2 "footprint:2p_connector_v3" H 4700 1300 50  0001 C CNN
F 3 "" H 4700 1300 50  0001 C CNN
	1    4700 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5C4F9789
P 2250 1550
F 0 "J1" H 2277 1526 50  0000 L CNN
F 1 "Sol" H 2277 1435 50  0000 L CNN
F 2 "footprint:2p_connector_v2" H 2250 1550 50  0001 C CNN
F 3 "~" H 2250 1550 50  0001 C CNN
	1    2250 1550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5C4F97F0
P 5950 4650
F 0 "J3" H 5977 4626 50  0000 L CNN
F 1 "Valve" H 5977 4535 50  0000 L CNN
F 2 "footprint:2p_connector_v3" H 5950 4650 50  0001 C CNN
F 3 "~" H 5950 4650 50  0001 C CNN
	1    5950 4650
	1    0    0    -1  
$EndComp
$Comp
L wemos_mini:WeMos_mini U2
U 1 1 5C4F9AC3
P 5900 2950
F 0 "U2" H 5900 3693 60  0001 C CNN
F 1 "WeMos_mini" H 5900 3481 60  0000 C CNN
F 2 "wemos_d1_mini:D1_mini_board_v10" H 6450 2250 60  0001 C CNN
F 3 "http://www.wemos.cc/Products/d1_mini.html" H 5900 3481 60  0001 C CNN
	1    5900 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C4F9DC6
P 4600 3500
F 0 "R1" H 4670 3500 50  0000 L CNN
F 1 "100k" H 4670 3455 50  0000 L TNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4530 3500 50  0001 C CNN
F 3 "~" H 4600 3500 50  0001 C CNN
	1    4600 3500
	1    0    0    -1  
$EndComp
$Comp
L NNR-lib:SOIL_SENSOR SS1
U 1 1 5C4FA314
P 9200 2350
F 0 "SS1" H 9728 1696 47  0001 L CNN
F 1 "SOIL_SENSOR" H 9728 1650 50  0000 L CNN
F 2 "footprint:Soil sensor_v6" H 10650 2300 50  0001 C CNN
F 3 "https://www.aliexpress.com/item/Free-Shipping-Soil-Hygrometer-Humidity-Detection-Module-Moisture-Water-Sensor-Soil-moisture-for-Arduino/32704803481.html?spm=2114.search0104.3.16.6368597e5Z19nX&transAbTest=ae803_4&ws_ab_test=searchweb0_0%2Csearchweb201602_2_10065_10068_319_317_10696_453_10084_454_10083_433_10618_431_10304_10307_10820_10821_537_10302_536_10902_10059_10884_10887_100031_321_322_10103%2Csearchweb201603_51%2CppcSwitch_0&algo_pvid=aab9002f-3c39-4bfa-ba02-40efef501c31&algo_expid=aab9002f-3c39-4bfa-ba02-40efef501c31-2" H 10650 2300 50  0001 C CNN
	1    9200 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 1550 2450 1550
Wire Wire Line
	3450 1300 2550 1300
Wire Wire Line
	2550 1300 2550 1450
Wire Wire Line
	2550 1450 2450 1450
Wire Wire Line
	5150 1300 5150 2600
Wire Wire Line
	5750 4400 5750 4650
$Comp
L power:GND #PWR06
U 1 1 5C512636
P 6050 1900
F 0 "#PWR06" H 6050 1650 50  0001 C CNN
F 1 "GND" H 6055 1727 50  0000 C CNN
F 2 "" H 6050 1900 50  0001 C CNN
F 3 "" H 6050 1900 50  0001 C CNN
	1    6050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3100 4350 3050
Wire Wire Line
	4600 3650 4600 4950
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C580511
P 2550 1200
F 0 "#FLG01" H 2550 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 2550 1374 50  0000 C CNN
F 2 "" H 2550 1200 50  0001 C CNN
F 3 "~" H 2550 1200 50  0001 C CNN
	1    2550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1200 2550 1300
Connection ~ 2550 1300
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C5831E2
P 3300 2750
F 0 "#FLG02" H 3300 2825 50  0001 C CNN
F 1 "PWR_FLAG" H 3300 2923 50  0000 C CNN
F 2 "" H 3300 2750 50  0001 C CNN
F 3 "~" H 3300 2750 50  0001 C CNN
	1    3300 2750
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5C594544
P 4900 1050
F 0 "#FLG03" H 4900 1125 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 1224 50  0000 C CNN
F 2 "" H 4900 1050 50  0001 C CNN
F 3 "~" H 4900 1050 50  0001 C CNN
	1    4900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2600 5400 2600
$Comp
L power:GND #PWR07
U 1 1 5C5C5510
P 9350 2050
F 0 "#PWR07" H 9350 1800 50  0001 C CNN
F 1 "GND" H 9355 1877 50  0000 C CNN
F 2 "" H 9350 2050 50  0001 C CNN
F 3 "" H 9350 2050 50  0001 C CNN
	1    9350 2050
	0    1    1    0   
$EndComp
$Comp
L NNR-lib:GND_FLAG #G01
U 1 1 5C5C7A00
P 4150 3350
F 0 "#G01" H 4150 3350 50  0001 C CNN
F 1 "GND_FLAG" H 4150 3350 50  0001 C CNN
F 2 "" H 4150 3350 50  0001 C CNN
F 3 "" H 4150 3350 50  0001 C CNN
	1    4150 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5C5CB3E8
P 5750 4000
F 0 "#PWR05" H 5750 3750 50  0001 C CNN
F 1 "GND" H 5755 3827 50  0000 C CNN
F 2 "" H 5750 4000 50  0001 C CNN
F 3 "" H 5750 4000 50  0001 C CNN
	1    5750 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 1050 4900 1300
Connection ~ 4900 1300
Wire Wire Line
	4900 1300 5000 1300
Connection ~ 5000 1300
Wire Wire Line
	5000 1300 5150 1300
Wire Wire Line
	2550 1550 2550 1800
Wire Wire Line
	2550 1800 3100 1800
$Comp
L power:GND #PWR04
U 1 1 5C52E918
P 5400 2700
F 0 "#PWR04" H 5400 2450 50  0001 C CNN
F 1 "GND" H 5405 2527 50  0000 C CNN
F 2 "" H 5400 2700 50  0001 C CNN
F 3 "" H 5400 2700 50  0001 C CNN
	1    5400 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C5D972A
P 3100 1850
F 0 "#PWR02" H 3100 1600 50  0001 C CNN
F 1 "GND" H 3105 1677 50  0000 C CNN
F 2 "" H 3100 1850 50  0001 C CNN
F 3 "" H 3100 1850 50  0001 C CNN
	1    3100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1850 3100 1800
Connection ~ 3100 1800
Wire Wire Line
	5000 1300 5000 4750
Wire Wire Line
	5000 4750 5750 4750
$Comp
L Isolator:PC817 Opto1
U 1 1 5C922828
P 5950 1600
F 0 "Opto1" H 5950 1925 50  0000 C CNN
F 1 "PC817" H 5950 1834 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 5750 1400 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 5950 1600 50  0001 L CNN
	1    5950 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C92A51D
P 4350 3100
F 0 "#PWR01" H 4350 2850 50  0001 C CNN
F 1 "GND" H 4355 2927 50  0000 C CNN
F 2 "" H 4350 3100 50  0001 C CNN
F 3 "" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1900 5850 1900
$Comp
L Switch:SW_Push_Open SW2
U 1 1 5C938ACF
P 6600 3750
F 0 "SW2" H 6600 3560 50  0000 C CNN
F 1 "flash" H 6600 3651 50  0000 C CNN
F 2 "footprint:onoff_push_button_2x3_pins_v3" H 6600 3950 50  0001 C CNN
F 3 "" H 6600 3950 50  0001 C CNN
	1    6600 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 3100 6800 3100
Wire Wire Line
	6400 3000 7000 3000
Wire Wire Line
	6400 3300 6400 3750
Wire Wire Line
	4350 1300 4500 1300
Wire Wire Line
	4350 1400 4600 1400
Wire Wire Line
	3100 1800 3450 1800
$Comp
L Device:Battery_Cell bat_18650
U 1 1 5C9C0D4A
P 3300 2950
F 0 "bat_18650" H 3182 2954 50  0000 R CNN
F 1 "Battery_Cell" H 3182 3045 50  0000 R CNN
F 2 "footprint:BatteryHolder_MPD_BH-18650-PC2_v4" V 3300 3010 50  0001 C CNN
F 3 "~" V 3300 3010 50  0001 C CNN
	1    3300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3100 5400 3100
Wire Wire Line
	4900 1900 4900 3100
Wire Wire Line
	5150 1300 5850 1300
Connection ~ 5150 1300
Wire Wire Line
	9350 1950 9350 1300
Wire Wire Line
	6400 3200 7200 3200
Wire Wire Line
	6800 3100 6800 3750
Wire Wire Line
	9700 4950 9700 2400
Wire Wire Line
	4600 4950 9700 4950
Wire Wire Line
	7200 3200 7200 3700
Wire Wire Line
	7200 3700 8300 3700
Wire Wire Line
	8300 3700 8300 3500
$Comp
L power:GND #PWR0101
U 1 1 5CAC0D57
P 8900 3500
F 0 "#PWR0101" H 8900 3250 50  0001 C CNN
F 1 "GND" H 8905 3327 50  0000 C CNN
F 2 "" H 8900 3500 50  0001 C CNN
F 3 "" H 8900 3500 50  0001 C CNN
	1    8900 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CAC2116
P 9200 3000
F 0 "#PWR0102" H 9200 2750 50  0001 C CNN
F 1 "GND" H 9205 2827 50  0000 C CNN
F 2 "" H 9200 3000 50  0001 C CNN
F 3 "" H 9200 3000 50  0001 C CNN
	1    9200 3000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5CAC2133
P 9200 3100
F 0 "#PWR0103" H 9200 2850 50  0001 C CNN
F 1 "GND" H 9205 2927 50  0000 C CNN
F 2 "" H 9200 3100 50  0001 C CNN
F 3 "" H 9200 3100 50  0001 C CNN
	1    9200 3100
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:CD4052B U5
U 1 1 5CAC48A2
P 8500 3000
F 0 "U5" V 8546 3741 50  0000 L CNN
F 1 "CD4052B" V 8455 3741 50  0000 L CNN
F 2 "footprint:74HC4052_analogue_mux_v1" H 8650 2250 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 8480 3200 50  0001 C CNN
	1    8500 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 2800 7250 3650
Wire Wire Line
	7250 3650 8100 3650
Wire Wire Line
	8100 3650 8100 3500
Wire Wire Line
	6400 2800 7250 2800
Wire Wire Line
	7300 2700 7300 3600
Wire Wire Line
	7300 3600 8000 3600
Wire Wire Line
	8000 3600 8000 3500
Wire Wire Line
	6400 2700 7300 2700
Wire Wire Line
	8200 2250 8200 2500
Wire Wire Line
	8200 2250 9350 2250
Wire Wire Line
	8300 2400 8300 2500
Wire Wire Line
	8300 2400 9700 2400
Wire Wire Line
	6050 1300 7800 1300
Connection ~ 7800 1300
Wire Wire Line
	7800 1300 8000 1300
Wire Wire Line
	7800 1300 7800 2900
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5CAF6943
P 4150 2950
F 0 "J4" H 4177 2926 50  0000 L CNN
F 1 "Batt" H 4177 2835 50  0000 L CNN
F 2 "footprint:2p_connector_v3" H 4150 2950 50  0001 C CNN
F 3 "~" H 4150 2950 50  0001 C CNN
	1    4150 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 2750 4350 2750
Connection ~ 4350 2750
Wire Wire Line
	4350 2750 4350 2850
Wire Wire Line
	4350 3050 4350 2950
Connection ~ 4350 3050
Wire Wire Line
	3300 3050 4150 3050
Wire Wire Line
	9350 1950 9050 1950
Wire Wire Line
	9050 1950 9050 2150
Wire Wire Line
	9050 2150 9350 2150
Connection ~ 9350 1950
Text Notes 8800 2000 0    20   ~ 0
To make compatible\nwith capacitive \n3-pin sensor.
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 5CB0FBBE
P 8600 1650
F 0 "J5" H 8628 1676 50  0000 L CNN
F 1 "Spare connection" H 8628 1585 50  0000 L CNN
F 2 "footprint:3p_switch_v3" H 8600 1650 50  0001 C CNN
F 3 "~" H 8600 1650 50  0001 C CNN
	1    8600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1650 8000 1300
Connection ~ 8000 1300
Wire Wire Line
	8000 1300 9350 1300
$Comp
L power:GND #PWR0104
U 1 1 5CB12D0C
P 8400 1550
F 0 "#PWR0104" H 8400 1300 50  0001 C CNN
F 1 "GND" H 8405 1377 50  0000 C CNN
F 2 "" H 8400 1550 50  0001 C CNN
F 3 "" H 8400 1550 50  0001 C CNN
	1    8400 1550
	0    1    1    0   
$EndComp
$Comp
L NNR-lib:J5019 U4
U 1 1 5C94F80F
P 3850 1550
F 0 "U4" H 3900 2193 60  0000 C CNN
F 1 "J5019" H 3900 2087 60  0000 C CNN
F 2 "footprint:J5019_v6" H 3900 1981 60  0000 C CNN
F 3 "https://www.aliexpress.com/item/Lithium-Li-ion-18650-3-7V-4-2V-Battery-Charger-Board-DC-DC-Step-Up-Boost/32901921699.html" H 3900 1981 60  0001 C CNN
	1    3850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1650 8400 1650
Wire Wire Line
	8400 1750 8400 2500
Connection ~ 3300 2750
Wire Wire Line
	4600 1400 4600 2750
Wire Wire Line
	4350 2750 4600 2750
Connection ~ 4600 2750
Wire Wire Line
	4600 2750 4600 3350
Connection ~ 4150 3050
Wire Wire Line
	4150 3050 4350 3050
Wire Wire Line
	7000 3000 7000 4200
Wire Wire Line
	6050 4200 6250 4200
Wire Wire Line
	6550 4200 7000 4200
$EndSCHEMATC