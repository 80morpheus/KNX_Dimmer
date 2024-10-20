EESchema Schematic File Version 4
EELAYER 30 0
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
L Driver_LED:PCA9685PW U1
U 1 1 670842CC
P 2150 4100
F 0 "U1" H 2150 5281 50  0000 C CNN
F 1 "PCA9685PW" H 2150 5190 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 2175 3125 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 1750 4800 50  0001 C CNN
	1    2150 4100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q16
U 1 1 67087234
P 8200 6200
F 0 "Q16" H 8405 6246 50  0000 L CNN
F 1 "IRF3205" H 8405 6155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8450 6125 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8200 6200 50  0001 L CNN
	1    8200 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k16
U 1 1 670898B8
P 8000 6350
F 0 "R10k16" H 8070 6396 50  0000 L CNN
F 1 "R" H 8070 6305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 6350 50  0001 C CNN
F 3 "~" H 8000 6350 50  0001 C CNN
	1    8000 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 6500 8300 6500
Wire Wire Line
	8300 6500 8300 6400
$Comp
L Device:R R100
U 1 1 6708A975
P 7850 6200
F 0 "R100" V 7643 6200 50  0000 C CNN
F 1 "R" V 7734 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7780 6200 50  0001 C CNN
F 3 "~" H 7850 6200 50  0001 C CNN
	1    7850 6200
	0    1    1    0   
$EndComp
Connection ~ 8000 6200
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 6708E5AF
P 9900 5600
F 0 "J4" H 9980 5592 50  0000 L CNN
F 1 "Conn_01x08" H 9980 5501 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_8-G-5,08_1x08_P5.08mm_Vertical" H 9900 5600 50  0001 C CNN
F 3 "~" H 9900 5600 50  0001 C CNN
	1    9900 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 6708F65E
P 10000 1600
F 0 "J1" H 10080 1592 50  0000 L CNN
F 1 "Conn_01x08" H 10080 1501 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_8-G-5,08_1x08_P5.08mm_Vertical" H 10000 1600 50  0001 C CNN
F 3 "~" H 10000 1600 50  0001 C CNN
	1    10000 1600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q15
U 1 1 67093581
P 8200 5500
F 0 "Q15" H 8405 5546 50  0000 L CNN
F 1 "IRF3205" H 8405 5455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8450 5425 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8200 5500 50  0001 L CNN
	1    8200 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k15
U 1 1 67093587
P 8000 5650
F 0 "R10k15" H 8070 5696 50  0000 L CNN
F 1 "R" H 8070 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 5650 50  0001 C CNN
F 3 "~" H 8000 5650 50  0001 C CNN
	1    8000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5800 8300 5800
Wire Wire Line
	8300 5800 8300 5700
$Comp
L Device:R R32
U 1 1 6709358F
P 7850 5500
F 0 "R32" V 7643 5500 50  0000 C CNN
F 1 "R" V 7734 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7780 5500 50  0001 C CNN
F 3 "~" H 7850 5500 50  0001 C CNN
	1    7850 5500
	0    1    1    0   
$EndComp
Connection ~ 8000 5500
$Comp
L Transistor_FET:IRF3205 Q14
U 1 1 67094489
P 8200 4800
F 0 "Q14" H 8405 4846 50  0000 L CNN
F 1 "IRF3205" H 8405 4755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8450 4725 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8200 4800 50  0001 L CNN
	1    8200 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k14
U 1 1 6709448F
P 8000 4950
F 0 "R10k14" H 8070 4996 50  0000 L CNN
F 1 "R" H 8070 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 4950 50  0001 C CNN
F 3 "~" H 8000 4950 50  0001 C CNN
	1    8000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5100 8300 5100
Wire Wire Line
	8300 5100 8300 5000
$Comp
L Device:R R31
U 1 1 67094497
P 7850 4800
F 0 "R31" V 7643 4800 50  0000 C CNN
F 1 "R" V 7734 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7780 4800 50  0001 C CNN
F 3 "~" H 7850 4800 50  0001 C CNN
	1    7850 4800
	0    1    1    0   
$EndComp
Connection ~ 8000 4800
$Comp
L Transistor_FET:IRF3205 Q13
U 1 1 67094E45
P 8200 4150
F 0 "Q13" H 8405 4196 50  0000 L CNN
F 1 "IRF3205" H 8405 4105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8450 4075 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8200 4150 50  0001 L CNN
	1    8200 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k13
U 1 1 67094E4B
P 8000 4300
F 0 "R10k13" H 8070 4346 50  0000 L CNN
F 1 "R" H 8070 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 4300 50  0001 C CNN
F 3 "~" H 8000 4300 50  0001 C CNN
	1    8000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4450 8300 4450
Wire Wire Line
	8300 4450 8300 4350
$Comp
L Device:R R30
U 1 1 67094E53
P 7850 4150
F 0 "R30" V 7643 4150 50  0000 C CNN
F 1 "R" V 7734 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7780 4150 50  0001 C CNN
F 3 "~" H 7850 4150 50  0001 C CNN
	1    7850 4150
	0    1    1    0   
$EndComp
Connection ~ 8000 4150
$Comp
L Transistor_FET:IRF3205 Q8
U 1 1 67097B7D
P 6300 6050
F 0 "Q8" H 6505 6096 50  0000 L CNN
F 1 "IRF3205" H 6505 6005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6550 5975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6300 6050 50  0001 L CNN
	1    6300 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k8
U 1 1 67097B83
P 6100 6200
F 0 "R10k8" H 6170 6246 50  0000 L CNN
F 1 "R" H 6170 6155 50  0000 L CNN
F 2 "" V 6030 6200 50  0001 C CNN
F 3 "~" H 6100 6200 50  0001 C CNN
	1    6100 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6350 6400 6350
Wire Wire Line
	6400 6350 6400 6250
$Comp
L Device:R R25
U 1 1 67097B8B
P 5950 6050
F 0 "R25" V 5743 6050 50  0000 C CNN
F 1 "R" V 5834 6050 50  0000 C CNN
F 2 "" V 5880 6050 50  0001 C CNN
F 3 "~" H 5950 6050 50  0001 C CNN
	1    5950 6050
	0    1    1    0   
$EndComp
Connection ~ 6100 6050
$Comp
L Transistor_FET:IRF3205 Q7
U 1 1 67097F85
P 6300 5400
F 0 "Q7" H 6505 5446 50  0000 L CNN
F 1 "IRF3205" H 6505 5355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6550 5325 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6300 5400 50  0001 L CNN
	1    6300 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k7
U 1 1 67097F8B
P 6100 5550
F 0 "R10k7" H 6170 5596 50  0000 L CNN
F 1 "R" H 6170 5505 50  0000 L CNN
F 2 "" V 6030 5550 50  0001 C CNN
F 3 "~" H 6100 5550 50  0001 C CNN
	1    6100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5700 6400 5700
Wire Wire Line
	6400 5700 6400 5600
$Comp
L Device:R R24
U 1 1 67097F93
P 5950 5400
F 0 "R24" V 5743 5400 50  0000 C CNN
F 1 "R" V 5834 5400 50  0000 C CNN
F 2 "" V 5880 5400 50  0001 C CNN
F 3 "~" H 5950 5400 50  0001 C CNN
	1    5950 5400
	0    1    1    0   
$EndComp
Connection ~ 6100 5400
$Comp
L Transistor_FET:IRF3205 Q6
U 1 1 67098193
P 6300 4700
F 0 "Q6" H 6505 4746 50  0000 L CNN
F 1 "IRF3205" H 6505 4655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6550 4625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6300 4700 50  0001 L CNN
	1    6300 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k6
U 1 1 67098199
P 6100 4850
F 0 "R10k6" H 6170 4896 50  0000 L CNN
F 1 "R" H 6170 4805 50  0000 L CNN
F 2 "" V 6030 4850 50  0001 C CNN
F 3 "~" H 6100 4850 50  0001 C CNN
	1    6100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 5000 6400 5000
Wire Wire Line
	6400 5000 6400 4900
$Comp
L Device:R R23
U 1 1 670981A1
P 5950 4700
F 0 "R23" V 5743 4700 50  0000 C CNN
F 1 "R" V 5834 4700 50  0000 C CNN
F 2 "" V 5880 4700 50  0001 C CNN
F 3 "~" H 5950 4700 50  0001 C CNN
	1    5950 4700
	0    1    1    0   
$EndComp
Connection ~ 6100 4700
$Comp
L Transistor_FET:IRF3205 Q5
U 1 1 67099175
P 6300 4050
F 0 "Q5" H 6505 4096 50  0000 L CNN
F 1 "IRF3205" H 6505 4005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6550 3975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6300 4050 50  0001 L CNN
	1    6300 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k5
U 1 1 6709917B
P 6100 4200
F 0 "R10k5" H 6170 4246 50  0000 L CNN
F 1 "R" H 6170 4155 50  0000 L CNN
F 2 "" V 6030 4200 50  0001 C CNN
F 3 "~" H 6100 4200 50  0001 C CNN
	1    6100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4350 6400 4350
Wire Wire Line
	6400 4350 6400 4250
$Comp
L Device:R R22
U 1 1 67099183
P 5950 4050
F 0 "R22" V 5743 4050 50  0000 C CNN
F 1 "R" V 5834 4050 50  0000 C CNN
F 2 "" V 5880 4050 50  0001 C CNN
F 3 "~" H 5950 4050 50  0001 C CNN
	1    5950 4050
	0    1    1    0   
$EndComp
Connection ~ 6100 4050
$Comp
L Transistor_FET:IRF3205 Q12
U 1 1 670C0B0F
P 8200 2900
F 0 "Q12" H 8405 2946 50  0000 L CNN
F 1 "IRF3205" H 8405 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8450 2825 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8200 2900 50  0001 L CNN
	1    8200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k12
U 1 1 670C0B15
P 8000 3050
F 0 "R10k12" H 8070 3096 50  0000 L CNN
F 1 "R" H 8070 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 3050 50  0001 C CNN
F 3 "~" H 8000 3050 50  0001 C CNN
	1    8000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3200 8300 3200
Wire Wire Line
	8300 3200 8300 3100
$Comp
L Device:R R29
U 1 1 670C0B1D
P 7850 2900
F 0 "R29" V 7643 2900 50  0000 C CNN
F 1 "R" V 7734 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7780 2900 50  0001 C CNN
F 3 "~" H 7850 2900 50  0001 C CNN
	1    7850 2900
	0    1    1    0   
$EndComp
Connection ~ 8000 2900
$Comp
L Transistor_FET:IRF3205 Q11
U 1 1 670C0B24
P 8200 2200
F 0 "Q11" H 8405 2246 50  0000 L CNN
F 1 "IRF3205" H 8405 2155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8450 2125 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8200 2200 50  0001 L CNN
	1    8200 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k11
U 1 1 670C0B2A
P 8000 2350
F 0 "R10k11" H 8070 2396 50  0000 L CNN
F 1 "R" H 8070 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 2350 50  0001 C CNN
F 3 "~" H 8000 2350 50  0001 C CNN
	1    8000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2500 8300 2500
Wire Wire Line
	8300 2500 8300 2400
$Comp
L Device:R R28
U 1 1 670C0B32
P 7850 2200
F 0 "R28" V 7643 2200 50  0000 C CNN
F 1 "R" V 7734 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7780 2200 50  0001 C CNN
F 3 "~" H 7850 2200 50  0001 C CNN
	1    7850 2200
	0    1    1    0   
$EndComp
Connection ~ 8000 2200
$Comp
L Transistor_FET:IRF3205 Q10
U 1 1 670C0B39
P 8200 1500
F 0 "Q10" H 8405 1546 50  0000 L CNN
F 1 "IRF3205" H 8405 1455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8450 1425 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8200 1500 50  0001 L CNN
	1    8200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k10
U 1 1 670C0B3F
P 8000 1650
F 0 "R10k10" H 8070 1696 50  0000 L CNN
F 1 "R" H 8070 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 1650 50  0001 C CNN
F 3 "~" H 8000 1650 50  0001 C CNN
	1    8000 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1800 8300 1800
Wire Wire Line
	8300 1800 8300 1700
$Comp
L Device:R R27
U 1 1 670C0B47
P 7850 1500
F 0 "R27" V 7643 1500 50  0000 C CNN
F 1 "R" V 7734 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7780 1500 50  0001 C CNN
F 3 "~" H 7850 1500 50  0001 C CNN
	1    7850 1500
	0    1    1    0   
$EndComp
Connection ~ 8000 1500
$Comp
L Transistor_FET:IRF3205 Q9
U 1 1 670C0B4E
P 8200 850
F 0 "Q9" H 8405 896 50  0000 L CNN
F 1 "IRF3205" H 8405 805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8450 775 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 8200 850 50  0001 L CNN
	1    8200 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k9
U 1 1 670C0B54
P 8000 1000
F 0 "R10k9" H 8070 1046 50  0000 L CNN
F 1 "R" H 8070 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7930 1000 50  0001 C CNN
F 3 "~" H 8000 1000 50  0001 C CNN
	1    8000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1150 8300 1150
Wire Wire Line
	8300 1150 8300 1050
$Comp
L Device:R R26
U 1 1 670C0B5C
P 7850 850
F 0 "R26" V 7643 850 50  0000 C CNN
F 1 "R" V 7734 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7780 850 50  0001 C CNN
F 3 "~" H 7850 850 50  0001 C CNN
	1    7850 850 
	0    1    1    0   
$EndComp
Connection ~ 8000 850 
$Comp
L Transistor_FET:IRF3205 Q4
U 1 1 670C0B63
P 6300 2750
F 0 "Q4" H 6505 2796 50  0000 L CNN
F 1 "IRF3205" H 6505 2705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6550 2675 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6300 2750 50  0001 L CNN
	1    6300 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k4
U 1 1 670C0B69
P 6100 2900
F 0 "R10k4" H 6170 2946 50  0000 L CNN
F 1 "R" H 6170 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 2900 50  0001 C CNN
F 3 "~" H 6100 2900 50  0001 C CNN
	1    6100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3050 6400 3050
Wire Wire Line
	6400 3050 6400 2950
$Comp
L Device:R R21
U 1 1 670C0B71
P 5950 2750
F 0 "R21" V 5743 2750 50  0000 C CNN
F 1 "R" V 5834 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5880 2750 50  0001 C CNN
F 3 "~" H 5950 2750 50  0001 C CNN
	1    5950 2750
	0    1    1    0   
$EndComp
Connection ~ 6100 2750
$Comp
L Transistor_FET:IRF3205 Q3
U 1 1 670C0B78
P 6300 2100
F 0 "Q3" H 6505 2146 50  0000 L CNN
F 1 "IRF3205" H 6505 2055 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6550 2025 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6300 2100 50  0001 L CNN
	1    6300 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k3
U 1 1 670C0B7E
P 6100 2250
F 0 "R10k3" H 6170 2296 50  0000 L CNN
F 1 "R" H 6170 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 2250 50  0001 C CNN
F 3 "~" H 6100 2250 50  0001 C CNN
	1    6100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2400 6400 2400
Wire Wire Line
	6400 2400 6400 2300
$Comp
L Device:R R20
U 1 1 670C0B86
P 5950 2100
F 0 "R20" V 5743 2100 50  0000 C CNN
F 1 "R" V 5834 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5880 2100 50  0001 C CNN
F 3 "~" H 5950 2100 50  0001 C CNN
	1    5950 2100
	0    1    1    0   
$EndComp
Connection ~ 6100 2100
$Comp
L Transistor_FET:IRF3205 Q2
U 1 1 670C0B8D
P 6300 1400
F 0 "Q2" H 6505 1446 50  0000 L CNN
F 1 "IRF3205" H 6505 1355 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6550 1325 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6300 1400 50  0001 L CNN
	1    6300 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k2
U 1 1 670C0B93
P 6100 1550
F 0 "R10k2" H 6170 1596 50  0000 L CNN
F 1 "R" H 6170 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 1550 50  0001 C CNN
F 3 "~" H 6100 1550 50  0001 C CNN
	1    6100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1700 6400 1700
Wire Wire Line
	6400 1700 6400 1600
$Comp
L Device:R R19
U 1 1 670C0B9B
P 5950 1400
F 0 "R19" V 5743 1400 50  0000 C CNN
F 1 "R" V 5834 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5880 1400 50  0001 C CNN
F 3 "~" H 5950 1400 50  0001 C CNN
	1    5950 1400
	0    1    1    0   
$EndComp
Connection ~ 6100 1400
$Comp
L Transistor_FET:IRF3205 Q1
U 1 1 670C0BA2
P 6300 750
F 0 "Q1" H 6505 796 50  0000 L CNN
F 1 "IRF3205" H 6505 705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6550 675 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 6300 750 50  0001 L CNN
	1    6300 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10k1
U 1 1 670C0BA8
P 6100 900
F 0 "R10k1" H 6170 946 50  0000 L CNN
F 1 "R" H 6170 855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6030 900 50  0001 C CNN
F 3 "~" H 6100 900 50  0001 C CNN
	1    6100 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1050 6400 1050
Wire Wire Line
	6400 1050 6400 950 
$Comp
L Device:R R18
U 1 1 670C0BB0
P 5950 750
F 0 "R18" V 5743 750 50  0000 C CNN
F 1 "R" V 5834 750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5880 750 50  0001 C CNN
F 3 "~" H 5950 750 50  0001 C CNN
	1    5950 750 
	0    1    1    0   
$EndComp
Connection ~ 6100 750 
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 670CC650
P 10000 2700
F 0 "J2" H 10080 2692 50  0000 L CNN
F 1 "Conn_01x08" H 10080 2601 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_8-G-5,08_1x08_P5.08mm_Vertical" H 10000 2700 50  0001 C CNN
F 3 "~" H 10000 2700 50  0001 C CNN
	1    10000 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 670CDBEB
P 9900 4300
F 0 "J3" H 9980 4292 50  0000 L CNN
F 1 "Conn_01x08" H 9980 4201 50  0000 L CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBVA_2,5_8-G-5,08_1x08_P5.08mm_Vertical" H 9900 4300 50  0001 C CNN
F 3 "~" H 9900 4300 50  0001 C CNN
	1    9900 4300
	1    0    0    -1  
$EndComp
Text GLabel 9800 1400 0    50   Input ~ 0
GND_LED
Text GLabel 9800 1600 0    50   Input ~ 0
GND_LED
Text GLabel 9800 1800 0    50   Input ~ 0
GND_LED
Text GLabel 9800 2000 0    50   Input ~ 0
GND_LED
Text GLabel 9800 2500 0    50   Input ~ 0
GND_LED
Text GLabel 9800 2700 0    50   Input ~ 0
GND_LED
Text GLabel 9800 2900 0    50   Input ~ 0
GND_LED
Text GLabel 9800 3100 0    50   Input ~ 0
GND_LED
Text GLabel 9700 4100 0    50   Input ~ 0
GND_LED
Text GLabel 9700 4300 0    50   Input ~ 0
GND_LED
Text GLabel 9700 4500 0    50   Input ~ 0
GND_LED
Text GLabel 9700 4700 0    50   Input ~ 0
GND_LED
Text GLabel 9700 5400 0    50   Input ~ 0
GND_LED
Text GLabel 9700 5600 0    50   Input ~ 0
GND_LED
Text GLabel 9700 5800 0    50   Input ~ 0
GND_LED
Text GLabel 9700 6000 0    50   Input ~ 0
GND_LED
Text GLabel 8300 6500 2    50   Input ~ 0
GND_LED
Text GLabel 8300 5800 2    50   Input ~ 0
GND_LED
Text GLabel 8300 5100 2    50   Input ~ 0
GND_LED
Text GLabel 8300 4450 2    50   Input ~ 0
GND_LED
Text GLabel 8300 3200 2    50   Input ~ 0
GND_LED
Text GLabel 8300 2500 2    50   Input ~ 0
GND_LED
Text GLabel 6400 6350 2    50   Input ~ 0
GND_LED
Text GLabel 6400 5700 2    50   Input ~ 0
GND_LED
Text GLabel 6400 5000 2    50   Input ~ 0
GND_LED
Text GLabel 6400 4350 2    50   Input ~ 0
GND_LED
Text GLabel 6400 3050 2    50   Input ~ 0
GND_LED
Text GLabel 6400 2400 2    50   Input ~ 0
GND_LED
Text GLabel 6400 1700 2    50   Input ~ 0
GND_LED
Text GLabel 6400 1050 2    50   Input ~ 0
GND_LED
Text GLabel 8300 1150 2    50   Input ~ 0
GND_LED
Text GLabel 8300 1800 2    50   Input ~ 0
GND_LED
Text GLabel 2150 5200 3    50   Input ~ 0
GND_µC
Wire Wire Line
	1450 4300 1450 4400
Wire Wire Line
	1450 5200 2150 5200
Connection ~ 1450 4400
Wire Wire Line
	1450 4400 1450 4500
Connection ~ 1450 4500
Wire Wire Line
	1450 4500 1450 4600
Connection ~ 1450 4600
Wire Wire Line
	1450 4600 1450 4700
Connection ~ 1450 4700
Wire Wire Line
	1450 4700 1450 4800
Connection ~ 1450 4800
Wire Wire Line
	1450 4800 1450 5200
$Comp
L Device:R R1
U 1 1 670ED525
P 1450 4000
F 0 "R1" H 1380 3954 50  0000 R CNN
F 1 "R" H 1380 4045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1380 4000 50  0001 C CNN
F 3 "~" H 1450 4000 50  0001 C CNN
	1    1450 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 3700 1450 3850
Wire Wire Line
	1450 4150 1450 4300
Connection ~ 1450 4300
Text GLabel 1450 3400 0    50   Input ~ 0
SCL_µC
Text GLabel 1450 3500 0    50   Input ~ 0
SDA_µC
Wire Wire Line
	8300 6000 8900 6000
Wire Wire Line
	9250 6000 9250 5900
Wire Wire Line
	9250 5900 9700 5900
Wire Wire Line
	9700 5700 9250 5700
Wire Wire Line
	9250 5700 9250 5850
Wire Wire Line
	9250 5850 9200 5850
Wire Wire Line
	9700 5500 9300 5500
Wire Wire Line
	8750 5500 8750 5300
Wire Wire Line
	8750 5300 8300 5300
Wire Wire Line
	9700 5300 9300 5300
Wire Wire Line
	8850 5200 6400 5200
Wire Wire Line
	8850 5200 8850 5300
Wire Wire Line
	7700 4150 7700 4450
Wire Wire Line
	9700 4600 9250 4600
Wire Wire Line
	9700 4400 9200 4400
Wire Wire Line
	9200 4400 9200 4500
Wire Wire Line
	9200 4500 9150 4500
Wire Wire Line
	8300 3950 8700 3950
Wire Wire Line
	9100 3950 9100 4200
Wire Wire Line
	9100 4200 9700 4200
Wire Wire Line
	9700 4000 9200 4000
Wire Wire Line
	9200 4000 9200 3850
Wire Wire Line
	9200 3850 9150 3850
Wire Wire Line
	6400 550  9350 550 
Wire Wire Line
	9350 550  9350 1300
Wire Wire Line
	9350 1300 9400 1300
Wire Wire Line
	8300 650  9300 650 
Wire Wire Line
	9300 650  9300 1500
Wire Wire Line
	9300 1500 9350 1500
Wire Wire Line
	6400 1200 9250 1200
Wire Wire Line
	9250 1200 9250 1700
Wire Wire Line
	9250 1700 9350 1700
Wire Wire Line
	9800 1900 9550 1900
Wire Wire Line
	9200 1900 9200 1300
Wire Wire Line
	9200 1300 8300 1300
Wire Wire Line
	6400 1900 9150 1900
Wire Wire Line
	9150 1900 9150 2400
Wire Wire Line
	9150 2400 9200 2400
Wire Wire Line
	8300 2000 9100 2000
Wire Wire Line
	9100 2000 9100 2600
Wire Wire Line
	9100 2600 9150 2600
Wire Wire Line
	6400 2550 9050 2550
Wire Wire Line
	9050 2550 9050 2800
Wire Wire Line
	9050 2800 9150 2800
Wire Wire Line
	9800 3000 9450 3000
Wire Wire Line
	9000 3000 9000 2700
Wire Wire Line
	9000 2700 8300 2700
$Comp
L Isolator:LTV-817 U17
U 1 1 670F4F04
P 4700 7600
F 0 "U17" H 4700 7925 50  0000 C CNN
F 1 "LTV-817" H 4700 7834 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 7400 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 7500 50  0001 L CNN
	1    4700 7600
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U16
U 1 1 670F7557
P 4700 7100
F 0 "U16" H 4700 7425 50  0000 C CNN
F 1 "LTV-817" H 4700 7334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 6900 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 7000 50  0001 L CNN
	1    4700 7100
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U15
U 1 1 670FB6DA
P 4700 6600
F 0 "U15" H 4700 6925 50  0000 C CNN
F 1 "LTV-817" H 4700 6834 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 6400 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 6500 50  0001 L CNN
	1    4700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7700 6900 7250
Wire Wire Line
	6900 7250 6900 6200
Wire Wire Line
	6900 6200 7700 6200
Wire Wire Line
	5800 6050 5800 6750
Wire Wire Line
	5800 6750 5000 7200
Wire Wire Line
	7700 5500 7700 5800
Wire Wire Line
	7700 5800 5750 5800
Wire Wire Line
	5750 5800 5750 6250
Wire Wire Line
	5750 6250 5000 6700
$Comp
L Isolator:LTV-817 U14
U 1 1 671065B3
P 4700 6100
F 0 "U14" H 4700 6425 50  0000 C CNN
F 1 "LTV-817" H 4700 6334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 5900 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 6000 50  0001 L CNN
	1    4700 6100
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U13
U 1 1 671079C7
P 4700 5600
F 0 "U13" H 4700 5925 50  0000 C CNN
F 1 "LTV-817" H 4700 5834 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 5400 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 5500 50  0001 L CNN
	1    4700 5600
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U12
U 1 1 67108A00
P 4700 5100
F 0 "U12" H 4700 5425 50  0000 C CNN
F 1 "LTV-817" H 4700 5334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 4900 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 5000 50  0001 L CNN
	1    4700 5100
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U11
U 1 1 67109945
P 4700 4600
F 0 "U11" H 4700 4925 50  0000 C CNN
F 1 "LTV-817" H 4700 4834 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 4400 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 4500 50  0001 L CNN
	1    4700 4600
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U10
U 1 1 6710A73D
P 4700 4100
F 0 "U10" H 4700 4425 50  0000 C CNN
F 1 "LTV-817" H 4700 4334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 3900 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 4000 50  0001 L CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U9
U 1 1 6710B91E
P 4700 3600
F 0 "U9" H 4700 3925 50  0000 C CNN
F 1 "LTV-817" H 4700 3834 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 3400 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 3500 50  0001 L CNN
	1    4700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5400 5800 5750
Wire Wire Line
	5800 5750 5000 6200
Wire Wire Line
	5000 5700 5800 5250
Wire Wire Line
	5800 5250 5800 5150
Wire Wire Line
	5800 5150 7700 5150
Wire Wire Line
	7700 5150 7700 4800
Wire Wire Line
	5800 4700 5800 4750
Wire Wire Line
	5800 4750 5000 5200
Wire Wire Line
	5800 4050 5800 3750
Wire Wire Line
	5800 3750 5000 4200
$Comp
L Isolator:LTV-817 U8
U 1 1 6711F1F3
P 4700 3100
F 0 "U8" H 4700 3425 50  0000 C CNN
F 1 "LTV-817" H 4700 3334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 2900 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 3000 50  0001 L CNN
	1    4700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4500 5000 4450
$Comp
L Isolator:LTV-817 U7
U 1 1 67148509
P 4700 2600
F 0 "U7" H 4700 2925 50  0000 C CNN
F 1 "LTV-817" H 4700 2834 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 2400 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 2500 50  0001 L CNN
	1    4700 2600
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U6
U 1 1 6714951F
P 4700 2100
F 0 "U6" H 4700 2425 50  0000 C CNN
F 1 "LTV-817" H 4700 2334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 1900 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 2000 50  0001 L CNN
	1    4700 2100
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U5
U 1 1 6714BF11
P 4700 1600
F 0 "U5" H 4700 1925 50  0000 C CNN
F 1 "LTV-817" H 4700 1834 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 1400 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 1500 50  0001 L CNN
	1    4700 1600
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U4
U 1 1 6714CDCD
P 4700 1100
F 0 "U4" H 4700 1425 50  0000 C CNN
F 1 "LTV-817" H 4700 1334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 900 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 1000 50  0001 L CNN
	1    4700 1100
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U3
U 1 1 6714DEA0
P 4700 600
F 0 "U3" H 4700 925 50  0000 C CNN
F 1 "LTV-817" H 4700 834 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 400 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 500 50  0001 L CNN
	1    4700 600 
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-817 U2
U 1 1 6714ED28
P 4700 100
F 0 "U2" H 4700 425 50  0000 C CNN
F 1 "LTV-817" H 4700 334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 4500 -100 50  0001 L CIN
F 3 "http://www.us.liteon.com/downloads/LTV-817-827-847.PDF" H 4700 0   50  0001 L CNN
	1    4700 100 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3700 7700 3700
Wire Wire Line
	7700 3700 7700 2900
Wire Wire Line
	5800 2750 5800 3200
Wire Wire Line
	5800 3200 5000 3200
Wire Wire Line
	5000 2700 5750 2700
Wire Wire Line
	5750 2700 5750 2500
Wire Wire Line
	5750 2500 7700 2500
Wire Wire Line
	7700 2500 7700 2200
Wire Wire Line
	5800 2100 5800 2200
Wire Wire Line
	5800 2200 5000 2200
Wire Wire Line
	7700 1500 7700 1850
Wire Wire Line
	7700 1850 5800 1850
Wire Wire Line
	5800 1850 5800 1700
Wire Wire Line
	5800 1700 5000 1700
Wire Wire Line
	5800 1400 5800 1200
Wire Wire Line
	5800 1200 5000 1200
Wire Wire Line
	7700 850  7700 1150
Wire Wire Line
	7700 1150 5700 1150
Wire Wire Line
	5700 1150 5700 700 
Wire Wire Line
	5700 700  5000 700 
Wire Wire Line
	5800 750  5800 200 
Wire Wire Line
	5800 200  5000 200 
Wire Wire Line
	5000 0    5200 0   
Wire Wire Line
	5200 0    5200 500 
Wire Wire Line
	5200 7500 5000 7500
Wire Wire Line
	5000 7000 5200 7000
Connection ~ 5200 7000
Wire Wire Line
	5200 7000 5200 7500
Wire Wire Line
	5000 6500 5200 6500
Connection ~ 5200 6500
Wire Wire Line
	5200 6500 5200 7000
Wire Wire Line
	5000 6000 5200 6000
Connection ~ 5200 6000
Wire Wire Line
	5200 6000 5200 6500
Wire Wire Line
	5000 5500 5200 5500
Connection ~ 5200 5500
Wire Wire Line
	5200 5500 5200 6000
Wire Wire Line
	5000 5000 5200 5000
Connection ~ 5200 5000
Wire Wire Line
	5200 5000 5200 5500
Wire Wire Line
	5000 4000 5200 4000
Connection ~ 5200 4000
Wire Wire Line
	5200 4000 5200 4450
Wire Wire Line
	5000 3500 5200 3500
Connection ~ 5200 3500
Wire Wire Line
	5200 3500 5200 4000
Wire Wire Line
	5000 3000 5200 3000
Connection ~ 5200 3000
Wire Wire Line
	5200 3000 5200 3500
Wire Wire Line
	5000 2500 5200 2500
Connection ~ 5200 2500
Wire Wire Line
	5200 2500 5200 3000
Wire Wire Line
	5000 2000 5200 2000
Connection ~ 5200 2000
Wire Wire Line
	5200 2000 5200 2500
Wire Wire Line
	5000 1500 5200 1500
Connection ~ 5200 1500
Wire Wire Line
	5200 1500 5200 2000
Wire Wire Line
	5000 1000 5200 1000
Connection ~ 5200 1000
Wire Wire Line
	5200 1000 5200 1500
Wire Wire Line
	5000 500  5200 500 
Connection ~ 5200 500 
Wire Wire Line
	5200 500  5200 1000
Wire Wire Line
	7700 4450 5700 4450
Wire Wire Line
	5700 4450 5700 4700
Wire Wire Line
	5700 4700 5000 4700
Wire Wire Line
	5000 4450 5200 4450
Connection ~ 5200 4450
Wire Wire Line
	5200 4450 5200 5000
$Comp
L Device:R R2
U 1 1 671E7883
P 4250 200
F 0 "R2" V 4043 200 50  0000 C CNN
F 1 "1k" V 4134 200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 200 50  0001 C CNN
F 3 "~" H 4250 200 50  0001 C CNN
	1    4250 200 
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 671F29B7
P 4250 700
F 0 "R3" V 4043 700 50  0000 C CNN
F 1 "R" V 4134 700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 700 50  0001 C CNN
F 3 "~" H 4250 700 50  0001 C CNN
	1    4250 700 
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 671F36AE
P 4250 1200
F 0 "R4" V 4043 1200 50  0000 C CNN
F 1 "R" V 4134 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 1200 50  0001 C CNN
F 3 "~" H 4250 1200 50  0001 C CNN
	1    4250 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 671F45BB
P 4250 1700
F 0 "R5" V 4043 1700 50  0000 C CNN
F 1 "R" V 4134 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 1700 50  0001 C CNN
F 3 "~" H 4250 1700 50  0001 C CNN
	1    4250 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 671F5412
P 4250 2200
F 0 "R6" V 4043 2200 50  0000 C CNN
F 1 "R" V 4134 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 2200 50  0001 C CNN
F 3 "~" H 4250 2200 50  0001 C CNN
	1    4250 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 671F6D22
P 4250 2700
F 0 "R7" V 4043 2700 50  0000 C CNN
F 1 "R" V 4134 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 2700 50  0001 C CNN
F 3 "~" H 4250 2700 50  0001 C CNN
	1    4250 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 671F7B10
P 4250 3200
F 0 "R8" V 4043 3200 50  0000 C CNN
F 1 "R" V 4134 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 3200 50  0001 C CNN
F 3 "~" H 4250 3200 50  0001 C CNN
	1    4250 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 671F89DC
P 4250 3700
F 0 "R9" V 4043 3700 50  0000 C CNN
F 1 "R" V 4134 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 3700 50  0001 C CNN
F 3 "~" H 4250 3700 50  0001 C CNN
	1    4250 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 671F98E3
P 4250 4200
F 0 "R10" V 4043 4200 50  0000 C CNN
F 1 "R" V 4134 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 4200 50  0001 C CNN
F 3 "~" H 4250 4200 50  0001 C CNN
	1    4250 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 671FA7B9
P 4250 4700
F 0 "R11" V 4043 4700 50  0000 C CNN
F 1 "R" V 4134 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 4700 50  0001 C CNN
F 3 "~" H 4250 4700 50  0001 C CNN
	1    4250 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 671FB635
P 4250 5200
F 0 "R12" V 4043 5200 50  0000 C CNN
F 1 "R" V 4134 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 5200 50  0001 C CNN
F 3 "~" H 4250 5200 50  0001 C CNN
	1    4250 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 671FC58B
P 4250 5700
F 0 "R13" V 4043 5700 50  0000 C CNN
F 1 "R" V 4134 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 5700 50  0001 C CNN
F 3 "~" H 4250 5700 50  0001 C CNN
	1    4250 5700
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 671FD3AA
P 4250 6200
F 0 "R14" V 4043 6200 50  0000 C CNN
F 1 "R" V 4134 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 6200 50  0001 C CNN
F 3 "~" H 4250 6200 50  0001 C CNN
	1    4250 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 671FE1F6
P 4250 6700
F 0 "R15" V 4043 6700 50  0000 C CNN
F 1 "R" V 4134 6700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 6700 50  0001 C CNN
F 3 "~" H 4250 6700 50  0001 C CNN
	1    4250 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 671FF10F
P 4250 7200
F 0 "R16" V 4043 7200 50  0000 C CNN
F 1 "R" V 4134 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 7200 50  0001 C CNN
F 3 "~" H 4250 7200 50  0001 C CNN
	1    4250 7200
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 672000C1
P 4250 7700
F 0 "R17" V 4043 7700 50  0000 C CNN
F 1 "R" V 4134 7700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4180 7700 50  0001 C CNN
F 3 "~" H 4250 7700 50  0001 C CNN
	1    4250 7700
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 7700 4100 7200
Connection ~ 4100 700 
Wire Wire Line
	4100 700  4100 200 
Connection ~ 4100 1200
Wire Wire Line
	4100 1200 4100 700 
Connection ~ 4100 1700
Wire Wire Line
	4100 1700 4100 1200
Connection ~ 4100 2200
Wire Wire Line
	4100 2200 4100 1700
Connection ~ 4100 2700
Wire Wire Line
	4100 2700 4100 2200
Connection ~ 4100 3200
Wire Wire Line
	4100 3200 4100 2700
Connection ~ 4100 3700
Wire Wire Line
	4100 3700 4100 3200
Connection ~ 4100 4200
Wire Wire Line
	4100 4200 4100 3700
Connection ~ 4100 4700
Wire Wire Line
	4100 4700 4100 4200
Connection ~ 4100 5200
Wire Wire Line
	4100 5200 4100 4700
Connection ~ 4100 5700
Wire Wire Line
	4100 5700 4100 5200
Connection ~ 4100 6200
Wire Wire Line
	4100 6200 4100 5700
Connection ~ 4100 6700
Wire Wire Line
	4100 6700 4100 6200
Connection ~ 4100 7200
Wire Wire Line
	4100 7200 4100 6700
Wire Wire Line
	4400 4500 4000 4500
Wire Wire Line
	4000 4500 4000 4300
Wire Wire Line
	4000 4300 2850 4300
Wire Wire Line
	2850 4200 4000 4200
Wire Wire Line
	4000 4200 4000 4000
Wire Wire Line
	4000 4000 4400 4000
Wire Wire Line
	4400 3500 3950 3500
Wire Wire Line
	3950 3500 3950 4100
Wire Wire Line
	3950 4100 2850 4100
Wire Wire Line
	2850 4000 3900 4000
Wire Wire Line
	3900 4000 3900 3000
Wire Wire Line
	3900 3000 4400 3000
Wire Wire Line
	2850 3900 3850 3900
Wire Wire Line
	3850 3900 3850 2500
Wire Wire Line
	3850 2500 4400 2500
Wire Wire Line
	2850 3800 3800 3800
Wire Wire Line
	3800 3800 3800 2000
Wire Wire Line
	3800 2000 4400 2000
Wire Wire Line
	2850 3700 3750 3700
Wire Wire Line
	3750 3700 3750 1500
Wire Wire Line
	3750 1500 4400 1500
Wire Wire Line
	2850 3600 3700 3600
Wire Wire Line
	3700 3600 3700 1000
Wire Wire Line
	3700 1000 4400 1000
Wire Wire Line
	2850 3500 3650 3500
Wire Wire Line
	3650 3500 3650 500 
Wire Wire Line
	3650 500  4400 500 
Wire Wire Line
	2850 3400 3600 3400
Wire Wire Line
	3600 3400 3600 0   
Wire Wire Line
	3600 0    4400 0   
Wire Wire Line
	2850 4400 3950 4400
Wire Wire Line
	3950 4400 3950 5000
Wire Wire Line
	3950 5000 4400 5000
Wire Wire Line
	4400 5500 3900 5500
Wire Wire Line
	3900 5500 3900 4500
Wire Wire Line
	3900 4500 2850 4500
Wire Wire Line
	4400 6000 3850 6000
Wire Wire Line
	3850 6000 3850 4600
Wire Wire Line
	3850 4600 2850 4600
Wire Wire Line
	4400 6500 3800 6500
Wire Wire Line
	3800 6500 3800 4700
Wire Wire Line
	3800 4700 2850 4700
Wire Wire Line
	3750 7000 3750 4800
Wire Wire Line
	3750 4800 2850 4800
Wire Wire Line
	3750 7000 4400 7000
Wire Wire Line
	3700 7500 3700 4900
Wire Wire Line
	3700 4900 2850 4900
Wire Wire Line
	3700 7500 4400 7500
Wire Wire Line
	2150 5200 4100 5200
Connection ~ 2150 5200
Text GLabel 5200 100  2    50   Input ~ 0
V+_LED
$Comp
L Device:Fuse F7
U 1 1 67386E04
P 9150 5300
F 0 "F7" V 8953 5300 50  0000 C CNN
F 1 "Fuse" V 9044 5300 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9080 5300 50  0001 C CNN
F 3 "~" H 9150 5300 50  0001 C CNN
	1    9150 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 5300 8850 5300
$Comp
L Device:Fuse F8
U 1 1 67388C9F
P 9150 5500
F 0 "F8" V 8953 5500 50  0000 C CNN
F 1 "Fuse" V 9044 5500 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9080 5500 50  0001 C CNN
F 3 "~" H 9150 5500 50  0001 C CNN
	1    9150 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 5500 8750 5500
$Comp
L Device:Fuse F4
U 1 1 67389C09
P 9050 5850
F 0 "F4" V 8853 5850 50  0000 C CNN
F 1 "Fuse" V 8944 5850 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 8980 5850 50  0001 C CNN
F 3 "~" H 9050 5850 50  0001 C CNN
	1    9050 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 5850 6400 5850
$Comp
L Device:Fuse F5
U 1 1 6738AD09
P 9050 6000
F 0 "F5" V 8853 6000 50  0000 C CNN
F 1 "Fuse" V 8944 6000 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 8980 6000 50  0001 C CNN
F 3 "~" H 9050 6000 50  0001 C CNN
	1    9050 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 6000 9250 6000
$Comp
L Device:Fuse F6
U 1 1 6738BAFB
P 9100 4600
F 0 "F6" V 8903 4600 50  0000 C CNN
F 1 "Fuse" V 8994 4600 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9030 4600 50  0001 C CNN
F 3 "~" H 9100 4600 50  0001 C CNN
	1    9100 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 4600 8300 4600
$Comp
L Device:Fuse F2
U 1 1 6738CA85
P 9000 3850
F 0 "F2" V 8803 3850 50  0000 C CNN
F 1 "Fuse" V 8894 3850 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 8930 3850 50  0001 C CNN
F 3 "~" H 9000 3850 50  0001 C CNN
	1    9000 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 3850 6400 3850
$Comp
L Device:Fuse F1
U 1 1 6738DA8D
P 8850 3950
F 0 "F1" V 8653 3950 50  0000 C CNN
F 1 "Fuse" V 8744 3950 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 8780 3950 50  0001 C CNN
F 3 "~" H 8850 3950 50  0001 C CNN
	1    8850 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 3950 9100 3950
$Comp
L Device:Fuse F3
U 1 1 6738E932
P 9000 4500
F 0 "F3" V 8803 4500 50  0000 C CNN
F 1 "Fuse" V 8894 4500 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 8930 4500 50  0001 C CNN
F 3 "~" H 9000 4500 50  0001 C CNN
	1    9000 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 4500 6400 4500
$Comp
L Device:Fuse F11
U 1 1 6738FBA8
P 9300 3000
F 0 "F11" V 9103 3000 50  0000 C CNN
F 1 "Fuse" V 9194 3000 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9230 3000 50  0001 C CNN
F 3 "~" H 9300 3000 50  0001 C CNN
	1    9300 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 3000 9000 3000
$Comp
L Device:Fuse F10
U 1 1 67390D0A
P 9300 2800
F 0 "F10" V 9103 2800 50  0000 C CNN
F 1 "Fuse" V 9194 2800 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9230 2800 50  0001 C CNN
F 3 "~" H 9300 2800 50  0001 C CNN
	1    9300 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 2800 9800 2800
$Comp
L Device:Fuse F9
U 1 1 67391E2A
P 9300 2600
F 0 "F9" V 9103 2600 50  0000 C CNN
F 1 "Fuse" V 9194 2600 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9230 2600 50  0001 C CNN
F 3 "~" H 9300 2600 50  0001 C CNN
	1    9300 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 2600 9800 2600
$Comp
L Device:Fuse F12
U 1 1 67392D56
P 9350 2400
F 0 "F12" V 9153 2400 50  0000 C CNN
F 1 "Fuse" V 9244 2400 50  0000 C CNN
F 2 "" V 9280 2400 50  0001 C CNN
F 3 "~" H 9350 2400 50  0001 C CNN
	1    9350 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 2400 9800 2400
$Comp
L Device:Fuse F13
U 1 1 67393D0F
P 9400 1900
F 0 "F13" V 9203 1900 50  0000 C CNN
F 1 "Fuse" V 9294 1900 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9330 1900 50  0001 C CNN
F 3 "~" H 9400 1900 50  0001 C CNN
	1    9400 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 1900 9200 1900
$Comp
L Device:Fuse F15
U 1 1 67394CD1
P 9500 1700
F 0 "F15" V 9303 1700 50  0000 C CNN
F 1 "Fuse" V 9394 1700 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9430 1700 50  0001 C CNN
F 3 "~" H 9500 1700 50  0001 C CNN
	1    9500 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 1700 9800 1700
$Comp
L Device:Fuse F14
U 1 1 67395BEA
P 9500 1500
F 0 "F14" V 9303 1500 50  0000 C CNN
F 1 "Fuse" V 9394 1500 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9430 1500 50  0001 C CNN
F 3 "~" H 9500 1500 50  0001 C CNN
	1    9500 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 1500 9800 1500
$Comp
L Device:Fuse F16
U 1 1 67396BC9
P 9550 1300
F 0 "F16" V 9353 1300 50  0000 C CNN
F 1 "Fuse" V 9444 1300 50  0000 C CNN
F 2 "Fuse:Fuse_2816_7142Metric_Pad3.20x4.45mm_HandSolder" V 9480 1300 50  0001 C CNN
F 3 "~" H 9550 1300 50  0001 C CNN
	1    9550 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 1300 9800 1300
$EndSCHEMATC
