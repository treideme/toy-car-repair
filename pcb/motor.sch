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
LIBS:controller-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 6
Title "Motor Control"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L JQ1P-5V-F K2
U 1 1 5F3C9334
P 4900 4000
F 0 "K2" H 6050 4300 50  0000 L CNN
F 1 "JQ1P-5V-F" H 6050 4200 50  0000 L CNN
F 2 "lib:JQ1P5VF" H 6050 4100 50  0001 L CNN
F 3 "https://www3.panasonic.biz/ac/e_download/control/relay/power/catalog/mech_eng_jq.pdf?via=ok" H 6050 4000 50  0001 L CNN
F 4 "Electromechanical Relay 5VDC 62.5Ohm 10(NO)/3(NC)A SPDT (20x10x16)mm THT Power Relay" H 6050 3900 50  0001 L CNN "Description"
F 5 "16" H 6050 3800 50  0001 L CNN "Height"
F 6 "Panasonic" H 6050 3700 50  0001 L CNN "Manufacturer_Name"
F 7 "JQ1P-5V-F" H 6050 3600 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "JQ1P-5V-F" H 6050 3500 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/jq1p-5v-f/panasonic" H 6050 3400 50  0001 L CNN "Arrow Price/Stock"
F 10 "769-JQ1P-5V-F" H 6050 3300 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Panasonic-Industrial-Devices/JQ1P-5V-F?qs=sEN%2FkO1EG6YilE9F85mAlw%3D%3D" H 6050 3200 50  0001 L CNN "Mouser Price/Stock"
F 12 "C58271" H 4900 4000 60  0001 C CNN "LCSC"
	1    4900 4000
	1    0    0    1   
$EndComp
$Comp
L GND #PWR021
U 1 1 5F3C9467
P 2300 3700
F 0 "#PWR021" H 2300 3450 50  0001 C CNN
F 1 "GND" H 2300 3550 50  0000 C CNN
F 2 "" H 2300 3700 50  0001 C CNN
F 3 "" H 2300 3700 50  0001 C CNN
	1    2300 3700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR022
U 1 1 5F3C947F
P 6350 3700
F 0 "#PWR022" H 6350 3450 50  0001 C CNN
F 1 "GND" H 6350 3550 50  0000 C CNN
F 2 "" H 6350 3700 50  0001 C CNN
F 3 "" H 6350 3700 50  0001 C CNN
	1    6350 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 3700 6350 3900
Wire Wire Line
	6350 3900 6200 3900
Wire Wire Line
	2300 3700 2300 3900
Wire Wire Line
	2300 3900 2400 3900
$Comp
L +6V #PWR023
U 1 1 5F3C949C
P 3850 3600
F 0 "#PWR023" H 3850 3450 50  0001 C CNN
F 1 "+6V" H 3850 3740 50  0000 C CNN
F 2 "" H 3850 3600 50  0001 C CNN
F 3 "" H 3850 3600 50  0001 C CNN
	1    3850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3600 3850 3800
Wire Wire Line
	3850 3800 3700 3800
$Comp
L +6V #PWR024
U 1 1 5F3C94BD
P 4700 3550
F 0 "#PWR024" H 4700 3400 50  0001 C CNN
F 1 "+6V" H 4700 3690 50  0000 C CNN
F 2 "" H 4700 3550 50  0001 C CNN
F 3 "" H 4700 3550 50  0001 C CNN
	1    4700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3550 4700 3800
Wire Wire Line
	4700 3800 4900 3800
$Comp
L +6V #PWR025
U 1 1 5F3C94D8
P 3850 4150
F 0 "#PWR025" H 3850 4000 50  0001 C CNN
F 1 "+6V" H 3850 4290 50  0000 C CNN
F 2 "" H 3850 4150 50  0001 C CNN
F 3 "" H 3850 4150 50  0001 C CNN
	1    3850 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 4150 3850 4000
Wire Wire Line
	3850 4000 3700 4000
$Comp
L +6V #PWR026
U 1 1 5F3C94F6
P 4700 4150
F 0 "#PWR026" H 4700 4000 50  0001 C CNN
F 1 "+6V" H 4700 4290 50  0000 C CNN
F 2 "" H 4700 4150 50  0001 C CNN
F 3 "" H 4700 4150 50  0001 C CNN
	1    4700 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 4150 4700 4000
Wire Wire Line
	4700 4000 4900 4000
Text HLabel 4100 3800 1    60   Output ~ 0
MOTOR_OUT_1
Text HLabel 4450 3800 1    60   Output ~ 0
MOTOR_OUT_2
Wire Wire Line
	4100 3800 4100 3900
Wire Wire Line
	4100 3900 3700 3900
Wire Wire Line
	4450 3800 4450 3900
Wire Wire Line
	4450 3900 4900 3900
Text HLabel 2150 4000 0    60   Input ~ 0
MOTOR_CTL_1
Text HLabel 6500 4000 2    60   Input ~ 0
MOTOR_CTL_2
Wire Wire Line
	2150 4000 2400 4000
Wire Wire Line
	6500 4000 6200 4000
$Comp
L JQ1P-5V-F K1
U 1 1 5F3D49C3
P 3700 4000
F 0 "K1" H 4850 4300 50  0000 L CNN
F 1 "JQ1P-5V-F" H 4850 4200 50  0000 L CNN
F 2 "JQ1P5VF" H 4850 4100 50  0001 L CNN
F 3 "https://www3.panasonic.biz/ac/e_download/control/relay/power/catalog/mech_eng_jq.pdf?via=ok" H 4850 4000 50  0001 L CNN
F 4 "Electromechanical Relay 5VDC 62.5Ohm 10(NO)/3(NC)A SPDT (20x10x16)mm THT Power Relay" H 4850 3900 50  0001 L CNN "Description"
F 5 "16" H 4850 3800 50  0001 L CNN "Height"
F 6 "Panasonic" H 4850 3700 50  0001 L CNN "Manufacturer_Name"
F 7 "JQ1P-5V-F" H 4850 3600 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "JQ1P-5V-F" H 4850 3500 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/jq1p-5v-f/panasonic" H 4850 3400 50  0001 L CNN "Arrow Price/Stock"
F 10 "769-JQ1P-5V-F" H 4850 3300 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Panasonic-Industrial-Devices/JQ1P-5V-F?qs=sEN%2FkO1EG6YilE9F85mAlw%3D%3D" H 4850 3200 50  0001 L CNN "Mouser Price/Stock"
	1    3700 4000
	-1   0    0    1   
$EndComp
$EndSCHEMATC
