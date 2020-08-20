EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:20021221-00010C4LF
LIBS:stm32
LIBS:PAM8403DR
LIBS:JQ1P-5V-F
LIBS:Connector_Generic_MountingPin
LIBS:controller-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L Conn_01x05 J1
U 1 1 5F3B35A9
P 1350 1450
F 0 "J1" H 1350 1750 50  0000 C CNN
F 1 "Steering" V 1450 1400 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B05B-XH-A_05x2.50mm_Straight" H 1350 1450 50  0001 C CNN
F 3 "" H 1350 1450 50  0001 C CNN
F 4 "JST" H 1350 1450 60  0001 C CNN "Manufacturer"
F 5 "B5B-XH-A(LF)(SN)" H 1350 1450 60  0001 C CNN "MFRPN"
F 6 "C157991" H 1350 1450 60  0001 C CNN "LCSC"
	1    1350 1450
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5F3B3697
P 1900 1350
F 0 "R5" V 1850 1150 50  0000 C CNN
F 1 "220" V 1900 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 1350 50  0001 C CNN
F 3 "" H 1900 1350 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 1350 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 1350 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 1350 60  0001 C CNN "LCSC"
	1    1900 1350
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5F3B3772
P 1900 1450
F 0 "R6" V 1850 1250 50  0000 C CNN
F 1 "220" V 1900 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 1450 50  0001 C CNN
F 3 "" H 1900 1450 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 1450 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 1450 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 1450 60  0001 C CNN "LCSC"
	1    1900 1450
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 5F3B3791
P 1900 1550
F 0 "R7" V 1850 1350 50  0000 C CNN
F 1 "220" V 1900 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 1550 50  0001 C CNN
F 3 "" H 1900 1550 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 1550 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 1550 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 1550 60  0001 C CNN "LCSC"
	1    1900 1550
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5F3B37BB
P 1900 1650
F 0 "R8" V 1850 1450 50  0000 C CNN
F 1 "220" V 1900 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 1650 50  0001 C CNN
F 3 "" H 1900 1650 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 1650 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 1650 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 1650 60  0001 C CNN "LCSC"
	1    1900 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR028
U 1 1 5F3B3BE1
P 1550 1150
F 0 "#PWR028" H 1550 900 50  0001 C CNN
F 1 "GND" H 1550 1000 50  0000 C CNN
F 2 "" H 1550 1150 50  0001 C CNN
F 3 "" H 1550 1150 50  0001 C CNN
	1    1550 1150
	-1   0    0    1   
$EndComp
Text HLabel 2300 1350 2    60   Output ~ 0
HORN_IN
Text HLabel 2300 1450 2    60   Output ~ 0
MUSIC_IN
Text HLabel 2300 1550 2    60   Output ~ 0
RIGHT_IN
Text HLabel 2300 1650 2    60   Output ~ 0
LEFT_IN
$Comp
L Conn_01x03 J2
U 1 1 5F3B47CB
P 1350 2200
F 0 "J2" H 1350 2400 50  0000 C CNN
F 1 "Volume" H 1350 2000 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B03B-XH-A_03x2.50mm_Straight" H 1350 2200 50  0001 C CNN
F 3 "" H 1350 2200 50  0001 C CNN
F 4 "JST" H 1350 2200 60  0001 C CNN "Manufacturer"
F 5 "B3B-XH-A(LF)(SN)" H 1350 2200 60  0001 C CNN "MFNPN"
F 6 "C144394" H 1350 2200 60  0001 C CNN "LCSC"
	1    1350 2200
	-1   0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5F3B48C9
P 1900 2200
F 0 "R10" V 1850 2000 50  0000 C CNN
F 1 "220" V 1900 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 2200 50  0001 C CNN
F 3 "" H 1900 2200 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 2200 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 2200 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 2200 60  0001 C CNN "LCSC"
	1    1900 2200
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5F3B48F7
P 1900 2300
F 0 "R11" V 1850 2100 50  0000 C CNN
F 1 "220" V 1900 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 2300 50  0001 C CNN
F 3 "" H 1900 2300 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 2300 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 2300 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 2300 60  0001 C CNN "LCSC"
	1    1900 2300
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 5F3B4880
P 1900 2100
F 0 "R9" V 1850 1900 50  0000 C CNN
F 1 "220" V 1900 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 2100 50  0001 C CNN
F 3 "" H 1900 2100 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 2100 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 2100 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 2100 60  0001 C CNN "LCSC"
	1    1900 2100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR029
U 1 1 5F3B49B1
P 2150 2300
F 0 "#PWR029" H 2150 2050 50  0001 C CNN
F 1 "GND" H 2150 2150 50  0000 C CNN
F 2 "" H 2150 2300 50  0001 C CNN
F 3 "" H 2150 2300 50  0001 C CNN
	1    2150 2300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR030
U 1 1 5F3B49D0
P 2150 2100
F 0 "#PWR030" H 2150 1950 50  0001 C CNN
F 1 "+3V3" H 2150 2240 50  0000 C CNN
F 2 "" H 2150 2100 50  0001 C CNN
F 3 "" H 2150 2100 50  0001 C CNN
	1    2150 2100
	1    0    0    -1  
$EndComp
Text HLabel 2300 2200 2    60   Output ~ 0
VOLUME_IN
$Comp
L Conn_01x02 J3
U 1 1 5F3B4CE6
P 1350 2600
F 0 "J3" H 1350 2700 50  0000 C CNN
F 1 "Light" H 1350 2400 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 1350 2600 50  0001 C CNN
F 3 "" H 1350 2600 50  0001 C CNN
F 4 "B2B-XH-A(LF)(SN)" H 1350 2600 60  0001 C CNN "MFRPN"
F 5 "JST" H 1350 2600 60  0001 C CNN "Manufacturer"
F 6 "C158012" H 1350 2600 60  0001 C CNN "LCSC"
	1    1350 2600
	-1   0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5F3B4E03
P 1900 2600
F 0 "R12" V 1850 2400 50  0000 C CNN
F 1 "220" V 1900 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 2600 50  0001 C CNN
F 3 "" H 1900 2600 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 2600 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 2600 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 2600 60  0001 C CNN "LCSC"
	1    1900 2600
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5F3B4E4C
P 1900 2700
F 0 "R13" V 1850 2500 50  0000 C CNN
F 1 "220" V 1900 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 2700 50  0001 C CNN
F 3 "" H 1900 2700 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 2700 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 2700 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 2700 60  0001 C CNN "LCSC"
	1    1900 2700
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR031
U 1 1 5F3B4EFA
P 2100 2600
F 0 "#PWR031" H 2100 2450 50  0001 C CNN
F 1 "+3V3" H 2100 2740 50  0000 C CNN
F 2 "" H 2100 2600 50  0001 C CNN
F 3 "" H 2100 2600 50  0001 C CNN
	1    2100 2600
	0    1    1    0   
$EndComp
Text HLabel 2300 2700 2    60   Output ~ 0
LIGHT_IN
$Comp
L Conn_01x02 J4
U 1 1 5F3B5209
P 1350 3150
F 0 "J4" H 1350 3250 50  0000 C CNN
F 1 "Gas_In" H 1350 2950 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 1350 3150 50  0001 C CNN
F 3 "" H 1350 3150 50  0001 C CNN
F 4 "B2B-XH-A(LF)(SN)" H 1350 3150 60  0001 C CNN "MFRPN"
F 5 "JST" H 1350 3150 60  0001 C CNN "Manufacturer"
F 6 "C158012" H 1350 3150 60  0001 C CNN "LCSC"
	1    1350 3150
	-1   0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5F3B5256
P 1900 3150
F 0 "R14" V 1850 2950 50  0000 C CNN
F 1 "220" V 1900 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 3150 50  0001 C CNN
F 3 "" H 1900 3150 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 3150 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 3150 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 3150 60  0001 C CNN "LCSC"
	1    1900 3150
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 5F3B52C2
P 1900 3250
F 0 "R15" V 1850 3050 50  0000 C CNN
F 1 "220" V 1900 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 3250 50  0001 C CNN
F 3 "" H 1900 3250 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 3250 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 3250 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 3250 60  0001 C CNN "LCSC"
	1    1900 3250
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR032
U 1 1 5F3B534B
P 2100 3150
F 0 "#PWR032" H 2100 3000 50  0001 C CNN
F 1 "+3V3" H 2100 3290 50  0000 C CNN
F 2 "" H 2100 3150 50  0001 C CNN
F 3 "" H 2100 3150 50  0001 C CNN
	1    2100 3150
	0    1    1    0   
$EndComp
Text HLabel 2300 3250 2    60   Output ~ 0
GAS_IN
$Comp
L Conn_01x04 J5
U 1 1 5F3B545D
P 1350 3800
F 0 "J5" H 1350 4000 50  0000 C CNN
F 1 "Direction" H 1350 3500 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B04B-XH-A_04x2.50mm_Straight" H 1350 3800 50  0001 C CNN
F 3 "" H 1350 3800 50  0001 C CNN
F 4 "JST" H 1350 3800 60  0001 C CNN "Manufacturer"
F 5 "B4B-XH-A(LF)(SN)" H 1350 3800 60  0001 C CNN "MFRPN"
F 6 "C144395" H 1350 3800 60  0001 C CNN "LCSC"
	1    1350 3800
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 5F3B561B
P 2150 3700
F 0 "#PWR033" H 2150 3450 50  0001 C CNN
F 1 "GND" H 2150 3550 50  0000 C CNN
F 2 "" H 2150 3700 50  0001 C CNN
F 3 "" H 2150 3700 50  0001 C CNN
	1    2150 3700
	0    -1   -1   0   
$EndComp
$Comp
L +6V #PWR034
U 1 1 5F3B569C
P 2300 3800
F 0 "#PWR034" H 2300 3650 50  0001 C CNN
F 1 "+6V" H 2300 3940 50  0000 C CNN
F 2 "" H 2300 3800 50  0001 C CNN
F 3 "" H 2300 3800 50  0001 C CNN
	1    2300 3800
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 5F3B5746
P 1900 3900
F 0 "R16" V 1850 3700 50  0000 C CNN
F 1 "220" V 1900 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 3900 50  0001 C CNN
F 3 "" H 1900 3900 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 3900 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 3900 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 3900 60  0001 C CNN "LCSC"
	1    1900 3900
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 5F3B57AB
P 1900 4000
F 0 "R17" V 1850 3800 50  0000 C CNN
F 1 "220" V 1900 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1830 4000 50  0001 C CNN
F 3 "" H 1900 4000 50  0001 C CNN
F 4 "ERJ3GEYJ221V" V 1900 4000 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 1900 4000 60  0001 C CNN "Manufacture"
F 6 "C403454" V 1900 4000 60  0001 C CNN "LCSC"
	1    1900 4000
	0    1    1    0   
$EndComp
Text HLabel 2300 3900 2    60   Output ~ 0
BACKWARD_IN
Text HLabel 2300 4000 2    60   Output ~ 0
FORWARD_IN
$Comp
L Conn_01x02 J6
U 1 1 5F3B5FDE
P 1350 4550
F 0 "J6" H 1350 4650 50  0000 C CNN
F 1 "Light_Out" H 1350 4350 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 1350 4550 50  0001 C CNN
F 3 "" H 1350 4550 50  0001 C CNN
F 4 "B2B-XH-A(LF)(SN)" H 1350 4550 60  0001 C CNN "MFRPN"
F 5 "JST" H 1350 4550 60  0001 C CNN "Manufacturer"
F 6 "C158012" H 1350 4550 60  0001 C CNN "LCSC"
	1    1350 4550
	-1   0    0    -1  
$EndComp
$Comp
L +6V #PWR035
U 1 1 5F3B6135
P 1700 4550
F 0 "#PWR035" H 1700 4400 50  0001 C CNN
F 1 "+6V" H 1700 4690 50  0000 C CNN
F 2 "" H 1700 4550 50  0001 C CNN
F 3 "" H 1700 4550 50  0001 C CNN
	1    1700 4550
	0    1    1    0   
$EndComp
Text HLabel 2300 4650 2    60   Input ~ 0
LIGHT_OUT
$Comp
L Conn_01x02 J7
U 1 1 5F3B64CE
P 1350 4950
F 0 "J7" H 1350 5050 50  0000 C CNN
F 1 "LED_Out" H 1350 4750 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 1350 4950 50  0001 C CNN
F 3 "" H 1350 4950 50  0001 C CNN
F 4 "B2B-XH-A(LF)(SN)" H 1350 4950 60  0001 C CNN "MFRPN"
F 5 "JST" H 1350 4950 60  0001 C CNN "Manufacturer"
F 6 "C158012" H 1350 4950 60  0001 C CNN "LCSC"
	1    1350 4950
	-1   0    0    -1  
$EndComp
$Comp
L +6V #PWR036
U 1 1 5F3B657F
P 1750 4950
F 0 "#PWR036" H 1750 4800 50  0001 C CNN
F 1 "+6V" H 1750 5090 50  0000 C CNN
F 2 "" H 1750 4950 50  0001 C CNN
F 3 "" H 1750 4950 50  0001 C CNN
	1    1750 4950
	0    1    1    0   
$EndComp
Text HLabel 2300 5050 2    60   Input ~ 0
LED_OUT
$Comp
L Micro_SD_Card_Det_Hirose_DM3AT J8
U 1 1 5F3B69F1
P 2000 6300
F 0 "J8" H 1350 7000 50  0000 C CNN
F 1 "uSD" H 2650 7000 50  0000 R CNN
F 2 "Connectors_Card:Hirose_DM3AT-SF-PEJM5" H 4050 7000 50  0001 C CNN
F 3 "" H 2000 6400 50  0001 C CNN
F 4 "Hirose" H 2000 6300 60  0001 C CNN "Manufacturer"
F 5 "DM3AT-SF-PEJM5" H 2000 6300 60  0001 C CNN "MFRPN"
F 6 "C114218" H 2000 6300 60  0001 C CNN "LCSC"
	1    2000 6300
	-1   0    0    -1  
$EndComp
$Comp
L +3V3 #PWR037
U 1 1 5F3B6BE5
P 3000 6850
F 0 "#PWR037" H 3000 6700 50  0001 C CNN
F 1 "+3V3" H 3000 6990 50  0000 C CNN
F 2 "" H 3000 6850 50  0001 C CNN
F 3 "" H 3000 6850 50  0001 C CNN
	1    3000 6850
	-1   0    0    1   
$EndComp
$Comp
L R R18
U 1 1 5F3B724F
P 3250 5900
F 0 "R18" V 3200 5700 50  0000 C CNN
F 1 "22" V 3250 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 5900 50  0001 C CNN
F 3 "" H 3250 5900 50  0001 C CNN
F 4 "ERJ3GEYJ220V" V 3250 5900 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3250 5900 60  0001 C CNN "Manufacture"
F 6 "C278638" V 3250 5900 60  0001 C CNN "LCSC"
	1    3250 5900
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 5F3B73A3
P 3250 6000
F 0 "R19" V 3200 5800 50  0000 C CNN
F 1 "22" V 3250 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 6000 50  0001 C CNN
F 3 "" H 3250 6000 50  0001 C CNN
F 4 "ERJ3GEYJ220V" V 3250 6000 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3250 6000 60  0001 C CNN "Manufacture"
F 6 "C278638" V 3250 6000 60  0001 C CNN "LCSC"
	1    3250 6000
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 5F3B73FE
P 3250 6100
F 0 "R20" V 3200 5900 50  0000 C CNN
F 1 "22" V 3250 6100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 6100 50  0001 C CNN
F 3 "" H 3250 6100 50  0001 C CNN
F 4 "ERJ3GEYJ220V" V 3250 6100 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3250 6100 60  0001 C CNN "Manufacture"
F 6 "C278638" V 3250 6100 60  0001 C CNN "LCSC"
	1    3250 6100
	0    1    1    0   
$EndComp
$Comp
L R R21
U 1 1 5F3B7656
P 3250 6300
F 0 "R21" V 3200 6100 50  0000 C CNN
F 1 "22" V 3250 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 6300 50  0001 C CNN
F 3 "" H 3250 6300 50  0001 C CNN
F 4 "ERJ3GEYJ220V" V 3250 6300 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3250 6300 60  0001 C CNN "Manufacture"
F 6 "C278638" V 3250 6300 60  0001 C CNN "LCSC"
	1    3250 6300
	0    1    1    0   
$EndComp
$Comp
L R R22
U 1 1 5F3B76BF
P 3250 6500
F 0 "R22" V 3200 6300 50  0000 C CNN
F 1 "22" V 3250 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 6500 50  0001 C CNN
F 3 "" H 3250 6500 50  0001 C CNN
F 4 "ERJ3GEYJ220V" V 3250 6500 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3250 6500 60  0001 C CNN "Manufacture"
F 6 "C278638" V 3250 6500 60  0001 C CNN "LCSC"
	1    3250 6500
	0    1    1    0   
$EndComp
$Comp
L R R23
U 1 1 5F3B772B
P 3250 6600
F 0 "R23" V 3200 6400 50  0000 C CNN
F 1 "22" V 3250 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 6600 50  0001 C CNN
F 3 "" H 3250 6600 50  0001 C CNN
F 4 "ERJ3GEYJ220V" V 3250 6600 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3250 6600 60  0001 C CNN "Manufacture"
F 6 "C278638" V 3250 6600 60  0001 C CNN "LCSC"
	1    3250 6600
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 5F3B779A
P 3250 6700
F 0 "R24" V 3200 6500 50  0000 C CNN
F 1 "22" V 3250 6700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 6700 50  0001 C CNN
F 3 "" H 3250 6700 50  0001 C CNN
F 4 "ERJ3GEYJ220V" V 3250 6700 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3250 6700 60  0001 C CNN "Manufacture"
F 6 "C278638" V 3250 6700 60  0001 C CNN "LCSC"
	1    3250 6700
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR038
U 1 1 5F3B7A35
P 2950 5450
F 0 "#PWR038" H 2950 5300 50  0001 C CNN
F 1 "+3V3" H 2950 5590 50  0000 C CNN
F 2 "" H 2950 5450 50  0001 C CNN
F 3 "" H 2950 5450 50  0001 C CNN
	1    2950 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 5F3B7EDE
P 3350 6400
F 0 "#PWR039" H 3350 6150 50  0001 C CNN
F 1 "GND" H 3350 6250 50  0000 C CNN
F 2 "" H 3350 6400 50  0001 C CNN
F 3 "" H 3350 6400 50  0001 C CNN
	1    3350 6400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR040
U 1 1 5F3B7FC1
P 1200 7050
F 0 "#PWR040" H 1200 6800 50  0001 C CNN
F 1 "GND" H 1200 6900 50  0000 C CNN
F 2 "" H 1200 7050 50  0001 C CNN
F 3 "" H 1200 7050 50  0001 C CNN
	1    1200 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1350 1750 1350
Wire Wire Line
	1550 1450 1750 1450
Wire Wire Line
	1550 1550 1750 1550
Wire Wire Line
	1550 1650 1750 1650
Wire Wire Line
	1550 1150 1550 1250
Wire Wire Line
	2300 1350 2050 1350
Wire Wire Line
	2050 1450 2300 1450
Wire Wire Line
	2050 1550 2300 1550
Wire Wire Line
	2050 1650 2300 1650
Wire Wire Line
	1550 2100 1750 2100
Wire Wire Line
	1550 2200 1750 2200
Wire Wire Line
	1550 2300 1750 2300
Wire Wire Line
	2050 2100 2150 2100
Wire Wire Line
	2050 2300 2150 2300
Wire Wire Line
	2050 2200 2300 2200
Wire Wire Line
	1550 2600 1750 2600
Wire Wire Line
	1550 2700 1750 2700
Wire Wire Line
	2050 2600 2100 2600
Wire Wire Line
	2050 2700 2300 2700
Wire Wire Line
	1550 3150 1750 3150
Wire Wire Line
	1550 3250 1750 3250
Wire Wire Line
	2050 3150 2100 3150
Wire Wire Line
	2050 3250 2300 3250
Wire Wire Line
	2150 3700 1550 3700
Wire Wire Line
	1550 3800 2300 3800
Wire Wire Line
	1550 4000 1750 4000
Wire Wire Line
	1750 3900 1550 3900
Wire Wire Line
	2050 3900 2300 3900
Wire Wire Line
	2050 4000 2300 4000
Wire Wire Line
	1550 4550 1700 4550
Wire Wire Line
	1550 4650 2300 4650
Wire Wire Line
	1750 4950 1550 4950
Wire Wire Line
	1550 5050 2300 5050
Wire Wire Line
	2900 6800 3000 6800
Wire Wire Line
	3000 6800 3000 6850
Wire Wire Line
	2900 5900 3100 5900
Wire Wire Line
	2900 6000 3100 6000
Wire Wire Line
	2900 6100 3100 6100
Wire Wire Line
	2900 6300 3100 6300
Wire Wire Line
	2900 6500 3100 6500
Wire Wire Line
	2900 6600 3100 6600
Wire Wire Line
	2900 6700 3100 6700
Wire Wire Line
	3400 5900 4500 5900
Wire Wire Line
	3400 6000 4500 6000
Wire Wire Line
	3400 6100 4500 6100
Wire Wire Line
	3350 6400 2900 6400
Wire Wire Line
	1200 6800 1200 7050
Wire Wire Line
	2950 5450 2950 6200
Connection ~ 2950 6200
Wire Wire Line
	2950 6200 2900 6200
$Comp
L C C23
U 1 1 5F3B8524
P 2050 7150
F 0 "C23" H 2075 7250 50  0000 L CNN
F 1 "10uF" H 2075 7050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2088 7000 50  0001 C CNN
F 3 "" H 2050 7150 50  0001 C CNN
F 4 "C77075" H 2050 7150 60  0001 C CNN "LCSC"
F 5 "GRM21BR61C106KE15L" H 2050 7150 60  0001 C CNN "MFRPN"
F 6 "Murata Electronics" H 2050 7150 60  0001 C CNN "Manufacturer"
	1    2050 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 7050 1900 7050
Wire Wire Line
	1900 7050 1900 7150
Wire Wire Line
	3000 6850 2800 6850
Wire Wire Line
	2800 6850 2800 7150
Wire Wire Line
	2800 7150 2200 7150
$Comp
L R R25
U 1 1 5F3B887A
P 3450 5650
F 0 "R25" V 3400 5450 50  0000 C CNN
F 1 "47K" V 3450 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3380 5650 50  0001 C CNN
F 3 "" H 3450 5650 50  0001 C CNN
F 4 "ERJ3GEYJ473V" V 3450 5650 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3450 5650 60  0001 C CNN "Manufacture"
F 6 "C278642" V 3450 5650 60  0001 C CNN "LCSC"
	1    3450 5650
	-1   0    0    1   
$EndComp
$Comp
L R R26
U 1 1 5F3B8A28
P 3600 5650
F 0 "R26" V 3550 5450 50  0000 C CNN
F 1 "47K" V 3600 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3530 5650 50  0001 C CNN
F 3 "" H 3600 5650 50  0001 C CNN
F 4 "ERJ3GEYJ473V" V 3600 5650 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3600 5650 60  0001 C CNN "Manufacture"
F 6 "C278642" V 3600 5650 60  0001 C CNN "LCSC"
	1    3600 5650
	-1   0    0    1   
$EndComp
$Comp
L R R27
U 1 1 5F3B8A9F
P 3750 5650
F 0 "R27" V 3700 5450 50  0000 C CNN
F 1 "47K" V 3750 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3680 5650 50  0001 C CNN
F 3 "" H 3750 5650 50  0001 C CNN
F 4 "ERJ3GEYJ473V" V 3750 5650 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3750 5650 60  0001 C CNN "Manufacture"
F 6 "C278642" V 3750 5650 60  0001 C CNN "LCSC"
	1    3750 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 5800 3450 5900
Connection ~ 3450 5900
Wire Wire Line
	3600 5800 3600 6000
Connection ~ 3600 6000
Wire Wire Line
	3750 5800 3750 6100
Connection ~ 3750 6100
$Comp
L R R28
U 1 1 5F3B8C33
P 3900 5650
F 0 "R28" V 3850 5450 50  0000 C CNN
F 1 "47K" V 3900 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3830 5650 50  0001 C CNN
F 3 "" H 3900 5650 50  0001 C CNN
F 4 "ERJ3GEYJ473V" V 3900 5650 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 3900 5650 60  0001 C CNN "Manufacture"
F 6 "C278642" V 3900 5650 60  0001 C CNN "LCSC"
	1    3900 5650
	-1   0    0    1   
$EndComp
$Comp
L R R29
U 1 1 5F3B8CB6
P 4050 5650
F 0 "R29" V 4000 5450 50  0000 C CNN
F 1 "47K" V 4050 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3980 5650 50  0001 C CNN
F 3 "" H 4050 5650 50  0001 C CNN
F 4 "ERJ3GEYJ473V" V 4050 5650 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 4050 5650 60  0001 C CNN "Manufacture"
F 6 "C278642" V 4050 5650 60  0001 C CNN "LCSC"
	1    4050 5650
	-1   0    0    1   
$EndComp
$Comp
L R R30
U 1 1 5F3B8D6E
P 4200 5650
F 0 "R30" V 4150 5450 50  0000 C CNN
F 1 "47K" V 4200 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4130 5650 50  0001 C CNN
F 3 "" H 4200 5650 50  0001 C CNN
F 4 "ERJ3GEYJ473V" V 4200 5650 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 4200 5650 60  0001 C CNN "Manufacture"
F 6 "C278642" V 4200 5650 60  0001 C CNN "LCSC"
	1    4200 5650
	-1   0    0    1   
$EndComp
$Comp
L R R31
U 1 1 5F3B8E35
P 4350 5650
F 0 "R31" V 4300 5450 50  0000 C CNN
F 1 "47K" V 4350 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4280 5650 50  0001 C CNN
F 3 "" H 4350 5650 50  0001 C CNN
F 4 "ERJ3GEYJ473V" V 4350 5650 60  0001 C CNN "MFRPN"
F 5 "Panasonic" V 4350 5650 60  0001 C CNN "Manufacture"
F 6 "C278642" V 4350 5650 60  0001 C CNN "LCSC"
	1    4350 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 6300 4500 6300
Wire Wire Line
	3400 6500 4500 6500
Wire Wire Line
	3400 6600 4500 6600
Wire Wire Line
	3400 6700 4500 6700
Wire Wire Line
	3900 5800 3900 6300
Connection ~ 3900 6300
Wire Wire Line
	4050 5800 4050 6500
Connection ~ 4050 6500
Wire Wire Line
	4200 5800 4200 6600
Connection ~ 4200 6600
Wire Wire Line
	4350 5800 4350 6700
Connection ~ 4350 6700
Wire Wire Line
	3450 5500 3450 5450
Wire Wire Line
	2950 5450 4350 5450
Wire Wire Line
	3600 5450 3600 5500
Connection ~ 3450 5450
Wire Wire Line
	3750 5450 3750 5500
Connection ~ 3600 5450
Wire Wire Line
	3900 5450 3900 5500
Connection ~ 3750 5450
Wire Wire Line
	4050 5450 4050 5500
Connection ~ 3900 5450
Wire Wire Line
	4200 5450 4200 5500
Connection ~ 4050 5450
Wire Wire Line
	4350 5450 4350 5500
Connection ~ 4200 5450
Text HLabel 4500 5900 2    60   BiDi ~ 0
SD_D2
Text HLabel 4500 6000 2    60   BiDi ~ 0
SD_D3
Text HLabel 4500 6100 2    60   BiDi ~ 0
SD_CMD
Text HLabel 4500 6300 2    60   BiDi ~ 0
SD_CLK
Text HLabel 4500 6500 2    60   BiDi ~ 0
SD_D0
Text HLabel 4500 6600 2    60   BiDi ~ 0
SD_D1
Text HLabel 4500 6700 2    60   BiDi ~ 0
SD_DET
$Comp
L Conn_01x02 J9
U 1 1 5F3C0DED
P 3550 1250
F 0 "J9" H 3550 1350 50  0000 C CNN
F 1 "SPK_R_OUT" H 3550 1050 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 3550 1250 50  0001 C CNN
F 3 "" H 3550 1250 50  0001 C CNN
F 4 "B2B-XH-A(LF)(SN)" H 3550 1250 60  0001 C CNN "MFRPN"
F 5 "JST" H 3550 1250 60  0001 C CNN "Manufacturer"
F 6 "C158012" H 3550 1250 60  0001 C CNN "LCSC"
	1    3550 1250
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x02 J10
U 1 1 5F3C0F6B
P 3550 1650
F 0 "J10" H 3550 1750 50  0000 C CNN
F 1 "SPK_L_OUT" H 3550 1450 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 3550 1650 50  0001 C CNN
F 3 "" H 3550 1650 50  0001 C CNN
F 4 "B2B-XH-A(LF)(SN)" H 3550 1650 60  0001 C CNN "MFRPN"
F 5 "JST" H 3550 1650 60  0001 C CNN "Manufacturer"
F 6 "C158012" H 3550 1650 60  0001 C CNN "LCSC"
	1    3550 1650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3750 1250 4100 1250
Wire Wire Line
	3750 1350 4100 1350
Wire Wire Line
	3750 1650 4100 1650
Wire Wire Line
	3750 1750 4100 1750
Text HLabel 4100 1250 2    60   Input ~ 0
RIGHT_SPKOUT_P
Text HLabel 4100 1350 2    60   Input ~ 0
RIGHT_SPKOUT_N
Text HLabel 4100 1650 2    60   Input ~ 0
LEFT_SPKOUT_P
Text HLabel 4100 1750 2    60   Input ~ 0
LEFT_SPKOUT_N
$Comp
L Conn_01x02 J11
U 1 1 5F3CDD12
P 3550 2550
F 0 "J11" H 3550 2650 50  0000 C CNN
F 1 "Batt" H 3550 2350 50  0000 C CNN
F 2 "Connectors_JST:JST_VH_B2P-VH-B_2x3.96mm_Vertical" H 3550 2550 50  0001 C CNN
F 3 "" H 3550 2550 50  0001 C CNN
F 4 "B2P-VH(LF)(SN)" H 3550 2550 60  0001 C CNN "MFRPN"
F 5 "JST" H 3550 2550 60  0001 C CNN "Manufacturer"
F 6 "C160315" H 3550 2550 60  0001 C CNN "LCSC"
	1    3550 2550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR041
U 1 1 5F3CDF5A
P 3900 2650
F 0 "#PWR041" H 3900 2400 50  0001 C CNN
F 1 "GND" H 3900 2500 50  0000 C CNN
F 2 "" H 3900 2650 50  0001 C CNN
F 3 "" H 3900 2650 50  0001 C CNN
	1    3900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2650 3900 2550
Wire Wire Line
	3900 2550 3750 2550
$Comp
L +BATT #PWR042
U 1 1 5F3CE041
P 3900 2300
F 0 "#PWR042" H 3900 2150 50  0001 C CNN
F 1 "+BATT" H 3900 2440 50  0000 C CNN
F 2 "" H 3900 2300 50  0001 C CNN
F 3 "" H 3900 2300 50  0001 C CNN
	1    3900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2300 3900 2450
Wire Wire Line
	3900 2450 3750 2450
$Comp
L Conn_01x02 J12
U 1 1 5F3CE179
P 3550 3200
F 0 "J12" H 3550 3300 50  0000 C CNN
F 1 "Motor" H 3550 3000 50  0000 C CNN
F 2 "Connectors_JST:JST_VH_B2P-VH-B_2x3.96mm_Vertical" H 3550 3200 50  0001 C CNN
F 3 "" H 3550 3200 50  0001 C CNN
F 4 "B2P-VH(LF)(SN)" H 3550 3200 60  0001 C CNN "MFRPN"
F 5 "JST" H 3550 3200 60  0001 C CNN "Manufacturer"
F 6 "C160315" H 3550 3200 60  0001 C CNN "LCSC"
	1    3550 3200
	-1   0    0    1   
$EndComp
Text HLabel 4100 3100 2    60   Input ~ 0
MOTOR_OUT_2
Text HLabel 4100 3200 2    60   Input ~ 0
MOTOR_OUT_1
Wire Wire Line
	4100 3200 3750 3200
Wire Wire Line
	4100 3100 3750 3100
$Comp
L Conn_01x02 J13
U 1 1 5F3CCDAC
P 5850 4500
F 0 "J13" H 5850 4600 50  0000 C CNN
F 1 "ACC" H 5850 4300 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 5850 4500 50  0001 C CNN
F 3 "" H 5850 4500 50  0001 C CNN
F 4 "B2B-XH-A(LF)(SN)" H 5850 4500 60  0001 C CNN "MFRPN"
F 5 "JST" H 5850 4500 60  0001 C CNN "Manufacturer"
F 6 "C158012" H 5850 4500 60  0001 C CNN "LCSC"
	1    5850 4500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5F3CD285
P 6100 4750
F 0 "#PWR043" H 6100 4500 50  0001 C CNN
F 1 "GND" H 6100 4600 50  0000 C CNN
F 2 "" H 6100 4750 50  0001 C CNN
F 3 "" H 6100 4750 50  0001 C CNN
	1    6100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4600 6100 4600
Wire Wire Line
	6100 4600 6100 4750
$Comp
L JQ1P-5V-F K3
U 1 1 5F3CD714
P 6200 4500
F 0 "K3" H 7350 4800 50  0000 L CNN
F 1 "JQ1P-5V-F" H 7350 4700 50  0000 L CNN
F 2 "lib:JQ1P5VF" H 7350 4600 50  0001 L CNN
F 3 "https://www3.panasonic.biz/ac/e_download/control/relay/power/catalog/mech_eng_jq.pdf?via=ok" H 7350 4500 50  0001 L CNN
F 4 "Electromechanical Relay 5VDC 62.5Ohm 10(NO)/3(NC)A SPDT (20x10x16)mm THT Power Relay" H 7350 4400 50  0001 L CNN "Description"
F 5 "16" H 7350 4300 50  0001 L CNN "Height"
F 6 "Panasonic" H 7350 4200 50  0001 L CNN "Manufacturer_Name"
F 7 "JQ1P-5V-F" H 7350 4100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "JQ1P-5V-F" H 7350 4000 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/jq1p-5v-f/panasonic" H 7350 3900 50  0001 L CNN "Arrow Price/Stock"
F 10 "769-JQ1P-5V-F" H 7350 3800 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Panasonic-Industrial-Devices/JQ1P-5V-F?qs=sEN%2FkO1EG6YilE9F85mAlw%3D%3D" H 7350 3700 50  0001 L CNN "Mouser Price/Stock"
F 12 "C58271" H 6200 4500 60  0001 C CNN "LCSC"
	1    6200 4500
	1    0    0    1   
$EndComp
Wire Wire Line
	6050 4500 6200 4500
Wire Wire Line
	7500 4500 7650 4500
$Comp
L +BATT #PWR044
U 1 1 5F3CDAA6
P 7650 4500
F 0 "#PWR044" H 7650 4350 50  0001 C CNN
F 1 "+BATT" H 7650 4640 50  0000 C CNN
F 2 "" H 7650 4500 50  0001 C CNN
F 3 "" H 7650 4500 50  0001 C CNN
	1    7650 4500
	0    1    1    0   
$EndComp
$Comp
L +BATT #PWR045
U 1 1 5F3CDB36
P 5950 4200
F 0 "#PWR045" H 5950 4050 50  0001 C CNN
F 1 "+BATT" H 5950 4340 50  0000 C CNN
F 2 "" H 5950 4200 50  0001 C CNN
F 3 "" H 5950 4200 50  0001 C CNN
	1    5950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4200 5950 4400
Wire Wire Line
	5950 4400 6200 4400
Text GLabel 6200 3950 1    60   Output ~ 0
ACC_BAT
Wire Wire Line
	6200 3950 6200 4300
NoConn ~ 7500 4400
$Comp
L Screw_Terminal_01x01 M1
U 1 1 5F3DCA10
P 6500 5800
F 0 "M1" H 6500 5900 50  0000 C CNN
F 1 "M3" H 6500 5700 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6500 5800 50  0001 C CNN
F 3 "" H 6500 5800 50  0001 C CNN
	1    6500 5800
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_01x01 M2
U 1 1 5F3DD03D
P 6800 5800
F 0 "M2" H 6800 5900 50  0000 C CNN
F 1 "M3" H 6800 5700 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6800 5800 50  0001 C CNN
F 3 "" H 6800 5800 50  0001 C CNN
	1    6800 5800
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_01x01 M3
U 1 1 5F3DD0D9
P 7100 5800
F 0 "M3" H 7100 5900 50  0000 C CNN
F 1 "M3" H 7100 5700 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 7100 5800 50  0001 C CNN
F 3 "" H 7100 5800 50  0001 C CNN
	1    7100 5800
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_01x01 M4
U 1 1 5F3DD178
P 7400 5800
F 0 "M4" H 7400 5900 50  0000 C CNN
F 1 "M3" H 7400 5700 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 7400 5800 50  0001 C CNN
F 3 "" H 7400 5800 50  0001 C CNN
	1    7400 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 6000 7400 6000
Connection ~ 6800 6000
Connection ~ 7100 6000
$Comp
L GND #PWR046
U 1 1 5F3DD3E7
P 6700 6000
F 0 "#PWR046" H 6700 5750 50  0001 C CNN
F 1 "GND" H 6700 5850 50  0000 C CNN
F 2 "" H 6700 6000 50  0001 C CNN
F 3 "" H 6700 6000 50  0001 C CNN
	1    6700 6000
	1    0    0    -1  
$EndComp
Connection ~ 6700 6000
$EndSCHEMATC
