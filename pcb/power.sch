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
Sheet 5 6
Title "Power Supply"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM1085-3.3 U4
U 1 1 5F39E835
P 4500 2400
F 0 "U4" H 4350 2525 50  0000 C CNN
F 1 "LD1085D2T33R" H 4500 2525 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-263-2" H 4500 2650 50  0001 C CIN
F 3 "" H 4500 2400 50  0001 C CNN
F 4 "LD1085D2T33R" H 4500 2400 60  0001 C CNN "MFRPN"
F 5 "STMicroelectronics" H 4500 2400 60  0001 C CNN "Manufacturer"
F 6 "C7913" H 4500 2400 60  0001 C CNN "LCSC"
	1    4500 2400
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 5F39EF2D
P 3950 2550
F 0 "C20" H 3975 2650 50  0000 L CNN
F 1 "100nF" H 3975 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3988 2400 50  0001 C CNN
F 3 "" H 3950 2550 50  0001 C CNN
F 4 "C184760" H 3950 2550 60  0001 C CNN "LCSC"
F 5 "GCM188R71C104KA37D" H 3950 2550 60  0001 C CNN "MFRPN"
F 6 "Murata" H 3950 2550 60  0001 C CNN "Manufacturer"
	1    3950 2550
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 5F39EF3D
P 5000 2550
F 0 "C21" H 5025 2650 50  0000 L CNN
F 1 "100nF" H 5025 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5038 2400 50  0001 C CNN
F 3 "" H 5000 2550 50  0001 C CNN
F 4 "C184760" H 5000 2550 60  0001 C CNN "LCSC"
F 5 "GCM188R71C104KA37D" H 5000 2550 60  0001 C CNN "MFRPN"
F 6 "Murata" H 5000 2550 60  0001 C CNN "Manufacturer"
	1    5000 2550
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 5F39EF95
P 3600 2550
F 0 "C19" H 3625 2650 50  0000 L CNN
F 1 "10uF" H 3625 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3638 2400 50  0001 C CNN
F 3 "" H 3600 2550 50  0001 C CNN
F 4 "C77075" H 3600 2550 60  0001 C CNN "LCSC"
F 5 "GRM21BR61C106KE15L" H 3600 2550 60  0001 C CNN "MFRPN"
F 6 "Murata Electronics" H 3600 2550 60  0001 C CNN "Manufacturer"
	1    3600 2550
	1    0    0    -1  
$EndComp
$Comp
L C C22
U 1 1 5F39F037
P 5350 2550
F 0 "C22" H 5375 2650 50  0000 L CNN
F 1 "10uF" H 5375 2450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5388 2400 50  0001 C CNN
F 3 "" H 5350 2550 50  0001 C CNN
F 4 "C77075" H 5350 2550 60  0001 C CNN "LCSC"
F 5 "GRM21BR61C106KE15L" H 5350 2550 60  0001 C CNN "MFRPN"
F 6 "Murata Electronics" H 5350 2550 60  0001 C CNN "Manufacturer"
	1    5350 2550
	1    0    0    -1  
$EndComp
Connection ~ 3600 2400
Connection ~ 3950 2400
Wire Wire Line
	4800 2400 5600 2400
Connection ~ 5000 2400
Wire Wire Line
	3600 2700 5350 2700
Connection ~ 3950 2700
Connection ~ 4500 2700
Connection ~ 5000 2700
Connection ~ 5350 2400
$Comp
L +3V3 #PWR025
U 1 1 5F39F146
P 5600 2400
F 0 "#PWR025" H 5600 2250 50  0001 C CNN
F 1 "+3V3" H 5600 2540 50  0000 C CNN
F 2 "" H 5600 2400 50  0001 C CNN
F 3 "" H 5600 2400 50  0001 C CNN
	1    5600 2400
	0    1    1    0   
$EndComp
$Comp
L Fuse F1
U 1 1 5F39F1DB
P 3250 2400
F 0 "F1" V 3330 2400 50  0000 C CNN
F 1 "16V 10A" V 3175 2400 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD2920" V 3180 2400 50  0001 C CNN
F 3 "" H 3250 2400 50  0001 C CNN
F 4 "Littlefuse" V 3250 2400 60  0001 C CNN "Manufacturer"
F 5 "C207091" V 3250 2400 60  0001 C CNN "LCSC"
F 6 "2920L500/16MR" V 3250 2400 60  0001 C CNN "MFRPN"
	1    3250 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 2400 3100 2400
$Comp
L GND #PWR026
U 1 1 5F3D3D27
P 4800 2700
F 0 "#PWR026" H 4800 2450 50  0001 C CNN
F 1 "GND" H 4800 2550 50  0000 C CNN
F 2 "" H 4800 2700 50  0001 C CNN
F 3 "" H 4800 2700 50  0001 C CNN
	1    4800 2700
	1    0    0    -1  
$EndComp
Connection ~ 4800 2700
$Comp
L +6V #PWR027
U 1 1 5F3CB177
P 3600 2300
F 0 "#PWR027" H 3600 2150 50  0001 C CNN
F 1 "+6V" H 3600 2440 50  0000 C CNN
F 2 "" H 3600 2300 50  0001 C CNN
F 3 "" H 3600 2300 50  0001 C CNN
	1    3600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2300 3600 2400
Wire Wire Line
	3400 2400 4200 2400
Text GLabel 2850 2400 0    60   Input ~ 0
ACC_BAT
$EndSCHEMATC
