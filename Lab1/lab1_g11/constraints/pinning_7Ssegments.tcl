#Toggle switches
set_location_assignment PIN_AA23 -to SW[0]
set_location_assignment PIN_AB26 -to SW[1]
set_location_assignment PIN_AB25 -to SW[2]
set_location_assignment	PIN_AC27	-to SW[3]
#Red LEDs
set_location_assignment PIN_AJ6 -to LEDR[0]
set_location_assignment PIN_AK5 -to LEDR[1]
set_location_assignment PIN_AJ5 -to LEDR[2]
set_location_assignment PIN_AJ4 -to LEDR[3]
set_location_assignment PIN_AK3 -to LEDR[4]
set_location_assignment PIN_AH4 -to LEDR[5]
set_location_assignment PIN_AJ3 -to LEDR[6]
set_location_assignment PIN_AJ2 -to LEDR[7]
set_location_assignment PIN_AH3 -to LEDR[8]
set_location_assignment PIN_AD14 -to LEDR[9]
set_location_assignment PIN_AC13 -to LEDR[10]
set_location_assignment PIN_AB13 -to LEDR[11]
set_location_assignment PIN_AC12 -to LEDR[12]
set_location_assignment PIN_AB12 -to LEDR[13]
set_location_assignment PIN_AC11 -to LEDR[14]
set_location_assignment PIN_AD9 -to LEDR[15]
set_location_assignment PIN_AD8 -to LEDR[16]
set_location_assignment PIN_AJ7 -to LEDR[17]
#Seven segment display
set_location_assignment PIN_AE8 -to HEX0[0]
set_location_assignment PIN_AF9 -to HEX0[1]
set_location_assignment PIN_AH9 -to HEX0[2]
set_location_assignment PIN_AD10 -to HEX0[3] 
set_location_assignment PIN_AF10 -to HEX0[4]
set_location_assignment PIN_AD11 -to HEX0[5]
set_location_assignment PIN_AD12 -to HEX0[6]
set_location_assignment PIN_AF12 -to HEX0_DP
set_location_assignment PIN_AG13 -to HEX1[0]
set_location_assignment PIN_AE16 -to HEX1[1]
set_location_assignment PIN_AF16 -to HEX1[2]
set_location_assignment PIN_AG16 -to HEX1[3]
set_location_assignment PIN_AE17 -to HEX1[4]
set_location_assignment PIN_AF17 -to HEX1[5]
set_location_assignment PIN_AD17 -to HEX1[6]
set_location_assignment PIN_AC17 -to HEX1_DP
#50MHz clock
set_location_assignment PIN_AD15 -to clk50
#External asynchronous inputs
#Push buttons for external reset and enable
set_location_assignment PIN_T29 -to reset_n
set_location_assignment PIN_T28 -to ext_ena_n
#To avoid that the FPGA is driving an unintended value on pins that are not in use:
set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
#Pin AD25 is default assigned for two purposed and must be set to regular IO after configuration
set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"