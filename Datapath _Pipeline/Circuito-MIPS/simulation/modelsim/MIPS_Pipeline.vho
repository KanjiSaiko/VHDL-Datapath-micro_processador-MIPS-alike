-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "12/11/2024 22:57:46"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_Pipeline IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	R0_out : OUT std_logic_vector(7 DOWNTO 0);
	R1_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END MIPS_Pipeline;

-- Design Ports Information
-- R0_out[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[7]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[6]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_Pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_R0_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R1_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ulaEX_MEM[0]~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \ulaEX_MEM[1]~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \ulaEX_MEM[5]~28_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \ulaEX_MEM[6]~31_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \regs[1][0]~q\ : std_logic;
SIGNAL \R0ID_EX~3_combout\ : std_logic;
SIGNAL \regs[3][1]~q\ : std_logic;
SIGNAL \regs[12][3]~q\ : std_logic;
SIGNAL \R0ID_EX~16_combout\ : std_logic;
SIGNAL \R0ID_EX~17_combout\ : std_logic;
SIGNAL \regs[15][5]~q\ : std_logic;
SIGNAL \R0ID_EX~28_combout\ : std_logic;
SIGNAL \regs[3][5]~q\ : std_logic;
SIGNAL \R0ID_EX~29_combout\ : std_logic;
SIGNAL \R0ID_EX~31_combout\ : std_logic;
SIGNAL \regs[3][6]~q\ : std_logic;
SIGNAL \regs[12][7]~q\ : std_logic;
SIGNAL \R0ID_EX~36_combout\ : std_logic;
SIGNAL \regs[1][7]~q\ : std_logic;
SIGNAL \R1ID_EX~2_combout\ : std_logic;
SIGNAL \R1ID_EX~3_combout\ : std_logic;
SIGNAL \regs[5][0]~q\ : std_logic;
SIGNAL \regs[6][0]~q\ : std_logic;
SIGNAL \regs[4][0]~q\ : std_logic;
SIGNAL \R1ID_EX~4_combout\ : std_logic;
SIGNAL \regs[7][0]~q\ : std_logic;
SIGNAL \R1ID_EX~5_combout\ : std_logic;
SIGNAL \R1ID_EX~9_combout\ : std_logic;
SIGNAL \regs[6][1]~q\ : std_logic;
SIGNAL \regs[10][1]~q\ : std_logic;
SIGNAL \regs[11][1]~q\ : std_logic;
SIGNAL \R1ID_EX~21_combout\ : std_logic;
SIGNAL \R1ID_EX~22_combout\ : std_logic;
SIGNAL \regs[9][2]~q\ : std_logic;
SIGNAL \regs[8][2]~q\ : std_logic;
SIGNAL \R1ID_EX~27_combout\ : std_logic;
SIGNAL \R1ID_EX~28_combout\ : std_logic;
SIGNAL \R1ID_EX~29_combout\ : std_logic;
SIGNAL \R1ID_EX~30_combout\ : std_logic;
SIGNAL \R1ID_EX~31_combout\ : std_logic;
SIGNAL \regs[6][3]~q\ : std_logic;
SIGNAL \regs[7][3]~q\ : std_logic;
SIGNAL \regs[11][3]~q\ : std_logic;
SIGNAL \R1ID_EX~43_combout\ : std_logic;
SIGNAL \R1ID_EX~44_combout\ : std_logic;
SIGNAL \regs[6][4]~q\ : std_logic;
SIGNAL \regs[11][5]~q\ : std_logic;
SIGNAL \regs[7][5]~q\ : std_logic;
SIGNAL \R1ID_EX~65_combout\ : std_logic;
SIGNAL \R1ID_EX~66_combout\ : std_logic;
SIGNAL \regs[6][6]~q\ : std_logic;
SIGNAL \regs[9][6]~q\ : std_logic;
SIGNAL \R1ID_EX~71_combout\ : std_logic;
SIGNAL \R1ID_EX~72_combout\ : std_logic;
SIGNAL \R1ID_EX~73_combout\ : std_logic;
SIGNAL \R1ID_EX~74_combout\ : std_logic;
SIGNAL \R1ID_EX~75_combout\ : std_logic;
SIGNAL \regs[9][7]~q\ : std_logic;
SIGNAL \R1ID_EX~80_combout\ : std_logic;
SIGNAL \regs[7][7]~q\ : std_logic;
SIGNAL \regs~0_combout\ : std_logic;
SIGNAL \mem_d~29_combout\ : std_logic;
SIGNAL \regs~13_combout\ : std_logic;
SIGNAL \regs~29_combout\ : std_logic;
SIGNAL \regs~33_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \mem_i~0_combout\ : std_logic;
SIGNAL \mem_i~1_combout\ : std_logic;
SIGNAL \InIF_ID~1_combout\ : std_logic;
SIGNAL \mem_i~3_combout\ : std_logic;
SIGNAL \mem_i~7_combout\ : std_logic;
SIGNAL \RwID_EX~0_combout\ : std_logic;
SIGNAL \RwID_EX~1_combout\ : std_logic;
SIGNAL \RwID_EX~2_combout\ : std_logic;
SIGNAL \RwID_EX~3_combout\ : std_logic;
SIGNAL \RwID_EX~14_combout\ : std_logic;
SIGNAL \RwID_EX~15_combout\ : std_logic;
SIGNAL \RwID_EX~16_combout\ : std_logic;
SIGNAL \RwID_EX~17_combout\ : std_logic;
SIGNAL \RwID_EX~18_combout\ : std_logic;
SIGNAL \RwID_EX~52_combout\ : std_logic;
SIGNAL \RwID_EX~53_combout\ : std_logic;
SIGNAL \RwID_EX~58_combout\ : std_logic;
SIGNAL \RwID_EX~67_combout\ : std_logic;
SIGNAL \RwID_EX~68_combout\ : std_logic;
SIGNAL \RwID_EX~85_combout\ : std_logic;
SIGNAL \RwID_EX~86_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \ulaEX_MEM~12_combout\ : std_logic;
SIGNAL \mem_d~33_combout\ : std_logic;
SIGNAL \mem_i~8_combout\ : std_logic;
SIGNAL \mem_i~9_combout\ : std_logic;
SIGNAL \InIF_ID~5_combout\ : std_logic;
SIGNAL \mem_i~11_combout\ : std_logic;
SIGNAL \mem_i~12_combout\ : std_logic;
SIGNAL \InIF_ID~7_combout\ : std_logic;
SIGNAL \ulaEX_MEM~18_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \ulaEX_MEM~30_combout\ : std_logic;
SIGNAL \ulaEX_MEM~33_combout\ : std_logic;
SIGNAL \mem_i~14_combout\ : std_logic;
SIGNAL \mem_i~15_combout\ : std_logic;
SIGNAL \InIF_ID~8_combout\ : std_logic;
SIGNAL \mem_i~16_combout\ : std_logic;
SIGNAL \mem_i~17_combout\ : std_logic;
SIGNAL \mem_i~18_combout\ : std_logic;
SIGNAL \InIF_ID~12_combout\ : std_logic;
SIGNAL \mem_i~19_combout\ : std_logic;
SIGNAL \mem_i~20_combout\ : std_logic;
SIGNAL \InIF_ID~15_combout\ : std_logic;
SIGNAL \mem_i~22_combout\ : std_logic;
SIGNAL \mem_i~23_combout\ : std_logic;
SIGNAL \InIF_ID~17_combout\ : std_logic;
SIGNAL \InMEM_WB[15]~feeder_combout\ : std_logic;
SIGNAL \regs[5][0]~feeder_combout\ : std_logic;
SIGNAL \regs[4][0]~feeder_combout\ : std_logic;
SIGNAL \regs[6][1]~feeder_combout\ : std_logic;
SIGNAL \regs[11][1]~feeder_combout\ : std_logic;
SIGNAL \regs[10][1]~feeder_combout\ : std_logic;
SIGNAL \regs[9][2]~feeder_combout\ : std_logic;
SIGNAL \regs[8][2]~feeder_combout\ : std_logic;
SIGNAL \regs[11][3]~feeder_combout\ : std_logic;
SIGNAL \regs[12][3]~feeder_combout\ : std_logic;
SIGNAL \regs[7][3]~feeder_combout\ : std_logic;
SIGNAL \regs[6][3]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \regs[6][4]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \regs[11][5]~feeder_combout\ : std_logic;
SIGNAL \regs[15][5]~feeder_combout\ : std_logic;
SIGNAL \regs[9][6]~feeder_combout\ : std_logic;
SIGNAL \regs[3][6]~feeder_combout\ : std_logic;
SIGNAL \regs[6][6]~feeder_combout\ : std_logic;
SIGNAL \regs[1][7]~feeder_combout\ : std_logic;
SIGNAL \regs[9][7]~feeder_combout\ : std_logic;
SIGNAL \regs[7][7]~feeder_combout\ : std_logic;
SIGNAL \regs[12][7]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \R0_out[0]~output_o\ : std_logic;
SIGNAL \R0_out[1]~output_o\ : std_logic;
SIGNAL \R0_out[2]~output_o\ : std_logic;
SIGNAL \R0_out[3]~output_o\ : std_logic;
SIGNAL \R0_out[4]~output_o\ : std_logic;
SIGNAL \R0_out[5]~output_o\ : std_logic;
SIGNAL \R0_out[6]~output_o\ : std_logic;
SIGNAL \R0_out[7]~output_o\ : std_logic;
SIGNAL \R1_out[0]~output_o\ : std_logic;
SIGNAL \R1_out[1]~output_o\ : std_logic;
SIGNAL \R1_out[2]~output_o\ : std_logic;
SIGNAL \R1_out[3]~output_o\ : std_logic;
SIGNAL \R1_out[4]~output_o\ : std_logic;
SIGNAL \R1_out[5]~output_o\ : std_logic;
SIGNAL \R1_out[6]~output_o\ : std_logic;
SIGNAL \R1_out[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \InID_EX~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC[0]~8_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \InEX_MEM~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \desvio~2_combout\ : std_logic;
SIGNAL \mem_i~2_combout\ : std_logic;
SIGNAL \PC[4]~17\ : std_logic;
SIGNAL \PC[5]~19\ : std_logic;
SIGNAL \PC[6]~21\ : std_logic;
SIGNAL \PC[7]~22_combout\ : std_logic;
SIGNAL \InEX_MEM~10_combout\ : std_logic;
SIGNAL \PC[5]~18_combout\ : std_logic;
SIGNAL \mem_i~10_combout\ : std_logic;
SIGNAL \InIF_ID~6_combout\ : std_logic;
SIGNAL \InID_EX~5_combout\ : std_logic;
SIGNAL \InEX_MEM~9_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \PC[6]~20_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \InIF_ID~0_combout\ : std_logic;
SIGNAL \InIF_ID~2_combout\ : std_logic;
SIGNAL \InID_EX~1_combout\ : std_logic;
SIGNAL \InEX_MEM~2_combout\ : std_logic;
SIGNAL \InMEM_WB[13]~feeder_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \mem_i~21_combout\ : std_logic;
SIGNAL \InIF_ID~16_combout\ : std_logic;
SIGNAL \InID_EX~13_combout\ : std_logic;
SIGNAL \InID_EX~12_combout\ : std_logic;
SIGNAL \regs[15][1]~feeder_combout\ : std_logic;
SIGNAL \regs[7][0]~4_combout\ : std_logic;
SIGNAL \InEX_MEM~14_combout\ : std_logic;
SIGNAL \InEX_MEM~12_combout\ : std_logic;
SIGNAL \InID_EX~14_combout\ : std_logic;
SIGNAL \InEX_MEM~11_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \regs[15][0]~8_combout\ : std_logic;
SIGNAL \regs[15][1]~q\ : std_logic;
SIGNAL \InIF_ID~13_combout\ : std_logic;
SIGNAL \InIF_ID~14_combout\ : std_logic;
SIGNAL \InID_EX~11_combout\ : std_logic;
SIGNAL \regs[7][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \regs[7][0]~48_combout\ : std_logic;
SIGNAL \regs[7][1]~q\ : std_logic;
SIGNAL \RwID_EX~7_combout\ : std_logic;
SIGNAL \RwID_EX~8_combout\ : std_logic;
SIGNAL \regs[12][1]~feeder_combout\ : std_logic;
SIGNAL \InEX_MEM~13_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \regs[12][0]~7_combout\ : std_logic;
SIGNAL \regs[12][1]~q\ : std_logic;
SIGNAL \regs[8][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \regs[8][0]~43_combout\ : std_logic;
SIGNAL \regs[8][1]~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \regs[0][0]~11_combout\ : std_logic;
SIGNAL \regs[0][1]~q\ : std_logic;
SIGNAL \RwID_EX~4_combout\ : std_logic;
SIGNAL \RwID_EX~5_combout\ : std_logic;
SIGNAL \RwID_EX~6_combout\ : std_logic;
SIGNAL \RwID_EX~9_combout\ : std_logic;
SIGNAL \RwID_EX~10_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \RwID_EX[0]~11_combout\ : std_logic;
SIGNAL \InID_EX~10_combout\ : std_logic;
SIGNAL \InEX_MEM~6_combout\ : std_logic;
SIGNAL \mem_d~34_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \mem_d~35_combout\ : std_logic;
SIGNAL \mem_d~19_q\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \mem_d~18_q\ : std_logic;
SIGNAL \InEX_MEM~5_combout\ : std_logic;
SIGNAL \InMEM_WB[1]~feeder_combout\ : std_logic;
SIGNAL \InEX_MEM~8_combout\ : std_logic;
SIGNAL \InMEM_WB[6]~feeder_combout\ : std_logic;
SIGNAL \regs[0][2]~q\ : std_logic;
SIGNAL \InID_EX~4_combout\ : std_logic;
SIGNAL \R0ID_EX~13_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \regs[2][0]~9_combout\ : std_logic;
SIGNAL \regs[2][2]~q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \regs[3][0]~12_combout\ : std_logic;
SIGNAL \regs[3][2]~q\ : std_logic;
SIGNAL \R0ID_EX~14_combout\ : std_logic;
SIGNAL \regs[13][2]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \regs[13][0]~5_combout\ : std_logic;
SIGNAL \regs[13][2]~q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \regs[14][0]~6_combout\ : std_logic;
SIGNAL \regs[14][2]~q\ : std_logic;
SIGNAL \R0ID_EX~11_combout\ : std_logic;
SIGNAL \R0ID_EX~12_combout\ : std_logic;
SIGNAL \R0ID_EX~15_combout\ : std_logic;
SIGNAL \R0ID_EX[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \InID_EX~7_combout\ : std_logic;
SIGNAL \regs[14][1]~feeder_combout\ : std_logic;
SIGNAL \regs[14][1]~q\ : std_logic;
SIGNAL \regs[2][1]~q\ : std_logic;
SIGNAL \R1ID_EX~14_combout\ : std_logic;
SIGNAL \R1ID_EX~15_combout\ : std_logic;
SIGNAL \regs[4][1]~feeder_combout\ : std_logic;
SIGNAL \regs[4][0]~47_combout\ : std_logic;
SIGNAL \regs[4][1]~q\ : std_logic;
SIGNAL \R1ID_EX~18_combout\ : std_logic;
SIGNAL \R1ID_EX~19_combout\ : std_logic;
SIGNAL \InIF_ID~9_combout\ : std_logic;
SIGNAL \InIF_ID~10_combout\ : std_logic;
SIGNAL \InID_EX~8_combout\ : std_logic;
SIGNAL \regs[9][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \regs[9][0]~42_combout\ : std_logic;
SIGNAL \regs[9][1]~q\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \regs[5][0]~45_combout\ : std_logic;
SIGNAL \regs[5][1]~q\ : std_logic;
SIGNAL \regs[1][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \regs[1][0]~10_combout\ : std_logic;
SIGNAL \regs[1][1]~q\ : std_logic;
SIGNAL \R1ID_EX~16_combout\ : std_logic;
SIGNAL \R1ID_EX~17_combout\ : std_logic;
SIGNAL \R1ID_EX~20_combout\ : std_logic;
SIGNAL \R1ID_EX~23_combout\ : std_logic;
SIGNAL \R1ID_EX~24_combout\ : std_logic;
SIGNAL \mem_i~6_combout\ : std_logic;
SIGNAL \InIF_ID~4_combout\ : std_logic;
SIGNAL \InID_EX~3_combout\ : std_logic;
SIGNAL \R1ID_EX[4]~91_combout\ : std_logic;
SIGNAL \R1ID_EX[4]~13_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \ulaEX_MEM[0]~9_cout\ : std_logic;
SIGNAL \ulaEX_MEM[0]~11\ : std_logic;
SIGNAL \ulaEX_MEM[1]~17\ : std_logic;
SIGNAL \ulaEX_MEM[2]~19_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \R0ID_EX[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \ulaEX_MEM[2]~20\ : std_logic;
SIGNAL \ulaEX_MEM[3]~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \R0ID_EX[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \ulaEX_MEM[3]~23\ : std_logic;
SIGNAL \ulaEX_MEM[4]~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \mem_d~30_combout\ : std_logic;
SIGNAL \mem_d~32_combout\ : std_logic;
SIGNAL \mem_d~27_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \mem_d~26_combout\ : std_logic;
SIGNAL \mem_d~28_combout\ : std_logic;
SIGNAL \mem_d~31_combout\ : std_logic;
SIGNAL \regs[6][5]~feeder_combout\ : std_logic;
SIGNAL \regs[6][0]~46_combout\ : std_logic;
SIGNAL \regs[6][5]~q\ : std_logic;
SIGNAL \regs[2][5]~feeder_combout\ : std_logic;
SIGNAL \regs[2][5]~q\ : std_logic;
SIGNAL \RwID_EX~45_combout\ : std_logic;
SIGNAL \RwID_EX~46_combout\ : std_logic;
SIGNAL \regs[1][5]~q\ : std_logic;
SIGNAL \regs[5][5]~q\ : std_logic;
SIGNAL \RwID_EX~47_combout\ : std_logic;
SIGNAL \RwID_EX~48_combout\ : std_logic;
SIGNAL \regs[12][5]~feeder_combout\ : std_logic;
SIGNAL \regs[12][5]~q\ : std_logic;
SIGNAL \regs[0][5]~feeder_combout\ : std_logic;
SIGNAL \regs[0][5]~q\ : std_logic;
SIGNAL \regs[8][5]~feeder_combout\ : std_logic;
SIGNAL \regs[8][5]~q\ : std_logic;
SIGNAL \RwID_EX~49_combout\ : std_logic;
SIGNAL \RwID_EX~50_combout\ : std_logic;
SIGNAL \RwID_EX~51_combout\ : std_logic;
SIGNAL \RwID_EX~54_combout\ : std_logic;
SIGNAL \RwID_EX~55_combout\ : std_logic;
SIGNAL \RwEX_MEM[5]~feeder_combout\ : std_logic;
SIGNAL \regs[15][3]~feeder_combout\ : std_logic;
SIGNAL \regs[15][3]~q\ : std_logic;
SIGNAL \regs[3][3]~q\ : std_logic;
SIGNAL \RwID_EX~30_combout\ : std_logic;
SIGNAL \RwID_EX~31_combout\ : std_logic;
SIGNAL \regs[8][3]~feeder_combout\ : std_logic;
SIGNAL \regs[8][3]~q\ : std_logic;
SIGNAL \regs[4][3]~feeder_combout\ : std_logic;
SIGNAL \regs[4][3]~q\ : std_logic;
SIGNAL \RwID_EX~27_combout\ : std_logic;
SIGNAL \RwID_EX~28_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \regs[10][0]~41_combout\ : std_logic;
SIGNAL \regs[10][3]~q\ : std_logic;
SIGNAL \regs[14][3]~feeder_combout\ : std_logic;
SIGNAL \regs[14][3]~q\ : std_logic;
SIGNAL \regs[2][3]~feeder_combout\ : std_logic;
SIGNAL \regs[2][3]~q\ : std_logic;
SIGNAL \RwID_EX~25_combout\ : std_logic;
SIGNAL \RwID_EX~26_combout\ : std_logic;
SIGNAL \RwID_EX~29_combout\ : std_logic;
SIGNAL \regs[13][3]~feeder_combout\ : std_logic;
SIGNAL \regs[13][3]~q\ : std_logic;
SIGNAL \regs[5][3]~q\ : std_logic;
SIGNAL \regs[9][3]~feeder_combout\ : std_logic;
SIGNAL \regs[9][3]~q\ : std_logic;
SIGNAL \regs[1][3]~q\ : std_logic;
SIGNAL \RwID_EX~23_combout\ : std_logic;
SIGNAL \RwID_EX~24_combout\ : std_logic;
SIGNAL \RwID_EX~32_combout\ : std_logic;
SIGNAL \RwID_EX~33_combout\ : std_logic;
SIGNAL \RwEX_MEM[3]~feeder_combout\ : std_logic;
SIGNAL \regs[15][4]~q\ : std_logic;
SIGNAL \regs[14][4]~q\ : std_logic;
SIGNAL \RwID_EX~63_combout\ : std_logic;
SIGNAL \RwID_EX~64_combout\ : std_logic;
SIGNAL \regs[1][4]~q\ : std_logic;
SIGNAL \RwID_EX~60_combout\ : std_logic;
SIGNAL \RwID_EX~61_combout\ : std_logic;
SIGNAL \regs[7][4]~feeder_combout\ : std_logic;
SIGNAL \regs[7][4]~q\ : std_logic;
SIGNAL \regs[5][4]~q\ : std_logic;
SIGNAL \RwID_EX~59_combout\ : std_logic;
SIGNAL \RwID_EX~62_combout\ : std_logic;
SIGNAL \regs[11][0]~44_combout\ : std_logic;
SIGNAL \regs[11][4]~q\ : std_logic;
SIGNAL \regs[10][4]~feeder_combout\ : std_logic;
SIGNAL \regs[10][4]~q\ : std_logic;
SIGNAL \regs[8][4]~feeder_combout\ : std_logic;
SIGNAL \regs[8][4]~q\ : std_logic;
SIGNAL \RwID_EX~56_combout\ : std_logic;
SIGNAL \RwID_EX~57_combout\ : std_logic;
SIGNAL \RwID_EX~65_combout\ : std_logic;
SIGNAL \RwID_EX~66_combout\ : std_logic;
SIGNAL \RwEX_MEM[4]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \mem_d~24_q\ : std_logic;
SIGNAL \regs[3][7]~q\ : std_logic;
SIGNAL \R1ID_EX~87_combout\ : std_logic;
SIGNAL \regs[15][7]~feeder_combout\ : std_logic;
SIGNAL \regs[15][7]~q\ : std_logic;
SIGNAL \R1ID_EX~88_combout\ : std_logic;
SIGNAL \regs[10][7]~feeder_combout\ : std_logic;
SIGNAL \regs[10][7]~q\ : std_logic;
SIGNAL \regs[6][7]~feeder_combout\ : std_logic;
SIGNAL \regs[6][7]~q\ : std_logic;
SIGNAL \R1ID_EX~82_combout\ : std_logic;
SIGNAL \R1ID_EX~83_combout\ : std_logic;
SIGNAL \regs[8][7]~feeder_combout\ : std_logic;
SIGNAL \regs[8][7]~q\ : std_logic;
SIGNAL \regs[0][7]~q\ : std_logic;
SIGNAL \regs[4][7]~feeder_combout\ : std_logic;
SIGNAL \regs[4][7]~q\ : std_logic;
SIGNAL \R1ID_EX~84_combout\ : std_logic;
SIGNAL \R1ID_EX~85_combout\ : std_logic;
SIGNAL \R1ID_EX~86_combout\ : std_logic;
SIGNAL \regs[5][7]~feeder_combout\ : std_logic;
SIGNAL \regs[5][7]~q\ : std_logic;
SIGNAL \regs[13][7]~feeder_combout\ : std_logic;
SIGNAL \regs[13][7]~q\ : std_logic;
SIGNAL \R1ID_EX~81_combout\ : std_logic;
SIGNAL \R1ID_EX~89_combout\ : std_logic;
SIGNAL \R1ID_EX~90_combout\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \regs[2][7]~q\ : std_logic;
SIGNAL \R0ID_EX~38_combout\ : std_logic;
SIGNAL \R0ID_EX~39_combout\ : std_logic;
SIGNAL \R0ID_EX~37_combout\ : std_logic;
SIGNAL \R0ID_EX~40_combout\ : std_logic;
SIGNAL \R0ID_EX[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \regs[4][6]~feeder_combout\ : std_logic;
SIGNAL \regs[4][6]~q\ : std_logic;
SIGNAL \R1ID_EX~69_combout\ : std_logic;
SIGNAL \R1ID_EX~70_combout\ : std_logic;
SIGNAL \regs[14][6]~q\ : std_logic;
SIGNAL \regs[13][6]~q\ : std_logic;
SIGNAL \regs[12][6]~q\ : std_logic;
SIGNAL \R1ID_EX~76_combout\ : std_logic;
SIGNAL \R1ID_EX~77_combout\ : std_logic;
SIGNAL \R1ID_EX~78_combout\ : std_logic;
SIGNAL \R1ID_EX~79_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \R0ID_EX[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ulaEX_MEM[4]~26\ : std_logic;
SIGNAL \ulaEX_MEM[5]~29\ : std_logic;
SIGNAL \ulaEX_MEM[6]~32\ : std_logic;
SIGNAL \ulaEX_MEM[7]~34_combout\ : std_logic;
SIGNAL \regs[2][6]~q\ : std_logic;
SIGNAL \regs[0][6]~q\ : std_logic;
SIGNAL \regs[1][6]~feeder_combout\ : std_logic;
SIGNAL \regs[1][6]~q\ : std_logic;
SIGNAL \R0ID_EX~33_combout\ : std_logic;
SIGNAL \R0ID_EX~34_combout\ : std_logic;
SIGNAL \regs[15][6]~feeder_combout\ : std_logic;
SIGNAL \regs[15][6]~q\ : std_logic;
SIGNAL \R0ID_EX~32_combout\ : std_logic;
SIGNAL \R0ID_EX~35_combout\ : std_logic;
SIGNAL \regs[15][0]~feeder_combout\ : std_logic;
SIGNAL \regs[15][0]~q\ : std_logic;
SIGNAL \regs[13][0]~feeder_combout\ : std_logic;
SIGNAL \regs[13][0]~q\ : std_logic;
SIGNAL \R1ID_EX~10_combout\ : std_logic;
SIGNAL \regs[3][0]~feeder_combout\ : std_logic;
SIGNAL \regs[3][0]~q\ : std_logic;
SIGNAL \regs[2][0]~q\ : std_logic;
SIGNAL \regs[0][0]~q\ : std_logic;
SIGNAL \R1ID_EX~6_combout\ : std_logic;
SIGNAL \R1ID_EX~7_combout\ : std_logic;
SIGNAL \R1ID_EX~8_combout\ : std_logic;
SIGNAL \R1ID_EX~11_combout\ : std_logic;
SIGNAL \R1ID_EX~12_combout\ : std_logic;
SIGNAL \regs[12][2]~q\ : std_logic;
SIGNAL \R1ID_EX~32_combout\ : std_logic;
SIGNAL \R1ID_EX~33_combout\ : std_logic;
SIGNAL \regs[6][2]~q\ : std_logic;
SIGNAL \regs[5][2]~q\ : std_logic;
SIGNAL \regs[4][2]~feeder_combout\ : std_logic;
SIGNAL \regs[4][2]~q\ : std_logic;
SIGNAL \R1ID_EX~25_combout\ : std_logic;
SIGNAL \regs[7][2]~q\ : std_logic;
SIGNAL \R1ID_EX~26_combout\ : std_logic;
SIGNAL \R1ID_EX~34_combout\ : std_logic;
SIGNAL \R1ID_EX~35_combout\ : std_logic;
SIGNAL \R1ID_EX~36_combout\ : std_logic;
SIGNAL \R1ID_EX~37_combout\ : std_logic;
SIGNAL \R1ID_EX~40_combout\ : std_logic;
SIGNAL \R1ID_EX~41_combout\ : std_logic;
SIGNAL \R1ID_EX~38_combout\ : std_logic;
SIGNAL \R1ID_EX~39_combout\ : std_logic;
SIGNAL \R1ID_EX~42_combout\ : std_logic;
SIGNAL \R1ID_EX~45_combout\ : std_logic;
SIGNAL \R1ID_EX~46_combout\ : std_logic;
SIGNAL \regs[12][4]~q\ : std_logic;
SIGNAL \R1ID_EX~54_combout\ : std_logic;
SIGNAL \R1ID_EX~55_combout\ : std_logic;
SIGNAL \regs[0][4]~feeder_combout\ : std_logic;
SIGNAL \regs[0][4]~q\ : std_logic;
SIGNAL \R1ID_EX~51_combout\ : std_logic;
SIGNAL \regs[3][4]~q\ : std_logic;
SIGNAL \R1ID_EX~52_combout\ : std_logic;
SIGNAL \regs[4][4]~q\ : std_logic;
SIGNAL \R1ID_EX~49_combout\ : std_logic;
SIGNAL \R1ID_EX~50_combout\ : std_logic;
SIGNAL \R1ID_EX~53_combout\ : std_logic;
SIGNAL \regs[9][4]~feeder_combout\ : std_logic;
SIGNAL \regs[9][4]~q\ : std_logic;
SIGNAL \R1ID_EX~47_combout\ : std_logic;
SIGNAL \R1ID_EX~48_combout\ : std_logic;
SIGNAL \R1ID_EX~56_combout\ : std_logic;
SIGNAL \R1ID_EX~57_combout\ : std_logic;
SIGNAL \regs[14][5]~q\ : std_logic;
SIGNAL \regs[10][5]~feeder_combout\ : std_logic;
SIGNAL \regs[10][5]~q\ : std_logic;
SIGNAL \R1ID_EX~58_combout\ : std_logic;
SIGNAL \R1ID_EX~59_combout\ : std_logic;
SIGNAL \regs[4][5]~feeder_combout\ : std_logic;
SIGNAL \regs[4][5]~q\ : std_logic;
SIGNAL \R1ID_EX~62_combout\ : std_logic;
SIGNAL \R1ID_EX~63_combout\ : std_logic;
SIGNAL \R1ID_EX~60_combout\ : std_logic;
SIGNAL \regs[9][5]~feeder_combout\ : std_logic;
SIGNAL \regs[9][5]~q\ : std_logic;
SIGNAL \R1ID_EX~61_combout\ : std_logic;
SIGNAL \R1ID_EX~64_combout\ : std_logic;
SIGNAL \R1ID_EX~67_combout\ : std_logic;
SIGNAL \R1ID_EX~68_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \ulaEX_MEM~36_combout\ : std_logic;
SIGNAL \ulaEX_MEM[7]~13_combout\ : std_logic;
SIGNAL \ulaEX_MEM[7]~14_combout\ : std_logic;
SIGNAL \ulaEX_MEM[7]~15_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \regs~37_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \mem_d~25_q\ : std_logic;
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \regs~38_combout\ : std_logic;
SIGNAL \regs~39_combout\ : std_logic;
SIGNAL \regs~40_combout\ : std_logic;
SIGNAL \regs[11][7]~feeder_combout\ : std_logic;
SIGNAL \regs[11][7]~q\ : std_logic;
SIGNAL \RwID_EX~74_combout\ : std_logic;
SIGNAL \RwID_EX~75_combout\ : std_logic;
SIGNAL \regs[14][7]~feeder_combout\ : std_logic;
SIGNAL \regs[14][7]~q\ : std_logic;
SIGNAL \RwID_EX~69_combout\ : std_logic;
SIGNAL \RwID_EX~70_combout\ : std_logic;
SIGNAL \RwID_EX~71_combout\ : std_logic;
SIGNAL \RwID_EX~72_combout\ : std_logic;
SIGNAL \RwID_EX~73_combout\ : std_logic;
SIGNAL \RwID_EX~76_combout\ : std_logic;
SIGNAL \RwID_EX~77_combout\ : std_logic;
SIGNAL \RwEX_MEM[7]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \regs~34_combout\ : std_logic;
SIGNAL \regs~35_combout\ : std_logic;
SIGNAL \regs~36_combout\ : std_logic;
SIGNAL \regs[7][6]~q\ : std_logic;
SIGNAL \regs[5][6]~q\ : std_logic;
SIGNAL \RwID_EX~78_combout\ : std_logic;
SIGNAL \RwID_EX~79_combout\ : std_logic;
SIGNAL \RwID_EX~82_combout\ : std_logic;
SIGNAL \RwID_EX~83_combout\ : std_logic;
SIGNAL \regs[10][6]~q\ : std_logic;
SIGNAL \regs[8][6]~feeder_combout\ : std_logic;
SIGNAL \regs[8][6]~q\ : std_logic;
SIGNAL \RwID_EX~80_combout\ : std_logic;
SIGNAL \regs[11][6]~q\ : std_logic;
SIGNAL \RwID_EX~81_combout\ : std_logic;
SIGNAL \RwID_EX~84_combout\ : std_logic;
SIGNAL \RwID_EX~87_combout\ : std_logic;
SIGNAL \RwID_EX~88_combout\ : std_logic;
SIGNAL \RwEX_MEM[6]~feeder_combout\ : std_logic;
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mem_d~23_q\ : std_logic;
SIGNAL \mem_d~17feeder_combout\ : std_logic;
SIGNAL \mem_d~17_q\ : std_logic;
SIGNAL \regs~30_combout\ : std_logic;
SIGNAL \regs~31_combout\ : std_logic;
SIGNAL \regs~32_combout\ : std_logic;
SIGNAL \regs[13][5]~feeder_combout\ : std_logic;
SIGNAL \regs[13][5]~q\ : std_logic;
SIGNAL \R0ID_EX~26_combout\ : std_logic;
SIGNAL \R0ID_EX~27_combout\ : std_logic;
SIGNAL \R0ID_EX~30_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \ulaEX_MEM~27_combout\ : std_logic;
SIGNAL \regs~25_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \mem_d~22_q\ : std_logic;
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \regs~26_combout\ : std_logic;
SIGNAL \regs~27_combout\ : std_logic;
SIGNAL \regs~28_combout\ : std_logic;
SIGNAL \regs[2][4]~feeder_combout\ : std_logic;
SIGNAL \regs[2][4]~q\ : std_logic;
SIGNAL \R0ID_EX~23_combout\ : std_logic;
SIGNAL \R0ID_EX~24_combout\ : std_logic;
SIGNAL \regs[13][4]~feeder_combout\ : std_logic;
SIGNAL \regs[13][4]~q\ : std_logic;
SIGNAL \R0ID_EX~21_combout\ : std_logic;
SIGNAL \R0ID_EX~22_combout\ : std_logic;
SIGNAL \R0ID_EX~25_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \ulaEX_MEM~24_combout\ : std_logic;
SIGNAL \regs~21_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \mem_d~21_q\ : std_logic;
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \regs~22_combout\ : std_logic;
SIGNAL \regs~23_combout\ : std_logic;
SIGNAL \regs~24_combout\ : std_logic;
SIGNAL \regs[0][3]~feeder_combout\ : std_logic;
SIGNAL \regs[0][3]~q\ : std_logic;
SIGNAL \R0ID_EX~18_combout\ : std_logic;
SIGNAL \R0ID_EX~19_combout\ : std_logic;
SIGNAL \R0ID_EX~20_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \ulaEX_MEM~21_combout\ : std_logic;
SIGNAL \regs~17_combout\ : std_logic;
SIGNAL \mem_d_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \mem_d~20_q\ : std_logic;
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \regs~18_combout\ : std_logic;
SIGNAL \regs~19_combout\ : std_logic;
SIGNAL \regs~20_combout\ : std_logic;
SIGNAL \regs[15][2]~feeder_combout\ : std_logic;
SIGNAL \regs[15][2]~q\ : std_logic;
SIGNAL \RwID_EX~41_combout\ : std_logic;
SIGNAL \RwID_EX~42_combout\ : std_logic;
SIGNAL \RwID_EX~34_combout\ : std_logic;
SIGNAL \RwID_EX~35_combout\ : std_logic;
SIGNAL \regs[11][2]~feeder_combout\ : std_logic;
SIGNAL \regs[11][2]~q\ : std_logic;
SIGNAL \regs[10][2]~feeder_combout\ : std_logic;
SIGNAL \regs[10][2]~q\ : std_logic;
SIGNAL \RwID_EX~36_combout\ : std_logic;
SIGNAL \RwID_EX~37_combout\ : std_logic;
SIGNAL \regs[1][2]~feeder_combout\ : std_logic;
SIGNAL \regs[1][2]~q\ : std_logic;
SIGNAL \RwID_EX~38_combout\ : std_logic;
SIGNAL \RwID_EX~39_combout\ : std_logic;
SIGNAL \RwID_EX~40_combout\ : std_logic;
SIGNAL \RwID_EX~43_combout\ : std_logic;
SIGNAL \RwID_EX~44_combout\ : std_logic;
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs~1_combout\ : std_logic;
SIGNAL \regs~2_combout\ : std_logic;
SIGNAL \regs~3_combout\ : std_logic;
SIGNAL \regs[12][0]~q\ : std_logic;
SIGNAL \regs[14][0]~q\ : std_logic;
SIGNAL \RwID_EX~19_combout\ : std_logic;
SIGNAL \RwID_EX~20_combout\ : std_logic;
SIGNAL \regs[10][0]~feeder_combout\ : std_logic;
SIGNAL \regs[10][0]~q\ : std_logic;
SIGNAL \regs[11][0]~q\ : std_logic;
SIGNAL \regs[9][0]~q\ : std_logic;
SIGNAL \regs[8][0]~feeder_combout\ : std_logic;
SIGNAL \regs[8][0]~q\ : std_logic;
SIGNAL \RwID_EX~12_combout\ : std_logic;
SIGNAL \RwID_EX~13_combout\ : std_logic;
SIGNAL \RwID_EX~21_combout\ : std_logic;
SIGNAL \RwID_EX~22_combout\ : std_logic;
SIGNAL \mem_d_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \regs~14_combout\ : std_logic;
SIGNAL \regs~15_combout\ : std_logic;
SIGNAL \regs~16_combout\ : std_logic;
SIGNAL \regs[13][1]~feeder_combout\ : std_logic;
SIGNAL \regs[13][1]~q\ : std_logic;
SIGNAL \R0ID_EX~6_combout\ : std_logic;
SIGNAL \R0ID_EX~7_combout\ : std_logic;
SIGNAL \R0ID_EX~8_combout\ : std_logic;
SIGNAL \R0ID_EX~9_combout\ : std_logic;
SIGNAL \R0ID_EX~10_combout\ : std_logic;
SIGNAL \R0ID_EX[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \InEX_MEM~1_combout\ : std_logic;
SIGNAL \desvio~0_combout\ : std_logic;
SIGNAL \InEX_MEM~0_combout\ : std_logic;
SIGNAL \desvio~1_combout\ : std_logic;
SIGNAL \InEX_MEM~4_combout\ : std_logic;
SIGNAL \PC[0]~9\ : std_logic;
SIGNAL \PC[1]~10_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \PC[1]~11\ : std_logic;
SIGNAL \PC[2]~12_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \PC[2]~13\ : std_logic;
SIGNAL \PC[3]~14_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \mem_i~13_combout\ : std_logic;
SIGNAL \InIF_ID~11_combout\ : std_logic;
SIGNAL \InID_EX~9_combout\ : std_logic;
SIGNAL \InEX_MEM~7_combout\ : std_logic;
SIGNAL \PC[3]~15\ : std_logic;
SIGNAL \PC[4]~16_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \mem_i~4_combout\ : std_logic;
SIGNAL \mem_i~5_combout\ : std_logic;
SIGNAL \InIF_ID~3_combout\ : std_logic;
SIGNAL \InID_EX~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \R0ID_EX[3]~0_combout\ : std_logic;
SIGNAL \InID_EX~6_combout\ : std_logic;
SIGNAL \R0ID_EX~1_combout\ : std_logic;
SIGNAL \R0ID_EX~2_combout\ : std_logic;
SIGNAL \R0ID_EX~4_combout\ : std_logic;
SIGNAL \R0ID_EX~5_combout\ : std_logic;
SIGNAL \R0ID_EX[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \R0ID_EX[6]~_Duplicate_1_q\ : std_logic;
SIGNAL mem_d_rtl_0_bypass : std_logic_vector(0 TO 32);
SIGNAL ulaEX_MEM : std_logic_vector(7 DOWNTO 0);
SIGNAL RwID_EX : std_logic_vector(7 DOWNTO 0);
SIGNAL RwEX_MEM : std_logic_vector(7 DOWNTO 0);
SIGNAL R1ID_EX : std_logic_vector(7 DOWNTO 0);
SIGNAL PC : std_logic_vector(7 DOWNTO 0);
SIGNAL InMEM_WB : std_logic_vector(15 DOWNTO 0);
SIGNAL InIF_ID : std_logic_vector(15 DOWNTO 0);
SIGNAL InID_EX : std_logic_vector(15 DOWNTO 0);
SIGNAL InEX_MEM : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_desvio~2_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
R0_out <= ww_R0_out;
R1_out <= ww_R1_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem_d_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & RwEX_MEM(7) & 
RwEX_MEM(6) & RwEX_MEM(5) & RwEX_MEM(4) & RwEX_MEM(3) & RwEX_MEM(2) & RwEX_MEM(1) & RwEX_MEM(0));

\mem_d_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (InMEM_WB(6) & InMEM_WB(6) & InMEM_WB(5) & InMEM_WB(4) & InMEM_WB(3) & InMEM_WB(2) & InMEM_WB(1) & InMEM_WB(0));

\mem_d_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (InEX_MEM(6) & InEX_MEM(6) & InEX_MEM(5) & InEX_MEM(4) & InEX_MEM(3) & InEX_MEM(2) & InEX_MEM(1) & InEX_MEM(0));

\mem_d_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\mem_d_rtl_0|auto_generated|ram_block1a1\ <= \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\mem_d_rtl_0|auto_generated|ram_block1a2\ <= \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\mem_d_rtl_0|auto_generated|ram_block1a3\ <= \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\mem_d_rtl_0|auto_generated|ram_block1a4\ <= \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\mem_d_rtl_0|auto_generated|ram_block1a5\ <= \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\mem_d_rtl_0|auto_generated|ram_block1a6\ <= \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\mem_d_rtl_0|auto_generated|ram_block1a7\ <= \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~1\ & \Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_out2~dataout\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_out2~DATAOUT1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_out2~DATAOUT2\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_out2~DATAOUT3\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_out2~DATAOUT4\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_out2~DATAOUT5\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_out2~DATAOUT6\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_out2~DATAOUT7\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_out2~DATAOUT8\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_out2~DATAOUT9\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_out2~DATAOUT10\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_out2~DATAOUT11\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_out2~DATAOUT12\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_out2~DATAOUT13\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_out2~DATAOUT14\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_out2~DATAOUT15\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\R0ID_EX~40_combout\ & \R0ID_EX~35_combout\ & \R0ID_EX~30_combout\ & \R0ID_EX~25_combout\ & \R0ID_EX~20_combout\ & \R0ID_EX~15_combout\ & \R0ID_EX~10_combout\ & \R0ID_EX~5_combout\ & gnd);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (R1ID_EX(7) & R1ID_EX(6) & R1ID_EX(5) & R1ID_EX(4) & R1ID_EX(3) & R1ID_EX(2) & R1ID_EX(1) & R1ID_EX(0) & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_desvio~2_combout\ <= NOT \desvio~2_combout\;

-- Location: FF_X22_Y16_N3
\ulaEX_MEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ulaEX_MEM[0]~10_combout\,
	asdata => \ulaEX_MEM~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_desvio~2_combout\,
	sload => \ulaEX_MEM[7]~13_combout\,
	ena => \ulaEX_MEM[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ulaEX_MEM(0));

-- Location: FF_X22_Y16_N5
\ulaEX_MEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ulaEX_MEM[1]~16_combout\,
	asdata => \ulaEX_MEM~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_desvio~2_combout\,
	sload => \ulaEX_MEM[7]~13_combout\,
	ena => \ulaEX_MEM[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ulaEX_MEM(1));

-- Location: FF_X22_Y16_N13
\ulaEX_MEM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ulaEX_MEM[5]~28_combout\,
	asdata => \ulaEX_MEM~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_desvio~2_combout\,
	sload => \ulaEX_MEM[7]~13_combout\,
	ena => \ulaEX_MEM[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ulaEX_MEM(5));

-- Location: FF_X22_Y16_N15
\ulaEX_MEM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ulaEX_MEM[6]~31_combout\,
	asdata => \ulaEX_MEM~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_desvio~2_combout\,
	sload => \ulaEX_MEM[7]~13_combout\,
	ena => \ulaEX_MEM[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ulaEX_MEM(6));

-- Location: LCCOMB_X22_Y16_N2
\ulaEX_MEM[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[0]~10_combout\ = (\Add2~0_combout\ & ((\R0ID_EX[0]~_Duplicate_1_q\ & (\ulaEX_MEM[0]~9_cout\ & VCC)) # (!\R0ID_EX[0]~_Duplicate_1_q\ & (!\ulaEX_MEM[0]~9_cout\)))) # (!\Add2~0_combout\ & ((\R0ID_EX[0]~_Duplicate_1_q\ & (!\ulaEX_MEM[0]~9_cout\)) # 
-- (!\R0ID_EX[0]~_Duplicate_1_q\ & ((\ulaEX_MEM[0]~9_cout\) # (GND)))))
-- \ulaEX_MEM[0]~11\ = CARRY((\Add2~0_combout\ & (!\R0ID_EX[0]~_Duplicate_1_q\ & !\ulaEX_MEM[0]~9_cout\)) # (!\Add2~0_combout\ & ((!\ulaEX_MEM[0]~9_cout\) # (!\R0ID_EX[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \R0ID_EX[0]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ulaEX_MEM[0]~9_cout\,
	combout => \ulaEX_MEM[0]~10_combout\,
	cout => \ulaEX_MEM[0]~11\);

-- Location: DSPOUT_X20_Y16_N2
\Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X18_Y16_N0
\Mult0|auto_generated|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~0_combout\ = (InEX_MEM(1) & (\Mult0|auto_generated|le3a\(0) $ (VCC))) # (!InEX_MEM(1) & (\Mult0|auto_generated|le3a\(0) & VCC))
-- \Mult0|auto_generated|op_3~1\ = CARRY((InEX_MEM(1) & \Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(1),
	datab => \Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult0|auto_generated|op_3~0_combout\,
	cout => \Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X22_Y16_N4
\ulaEX_MEM[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[1]~16_combout\ = ((\R0ID_EX[1]~_Duplicate_1_q\ $ (\Add2~1_combout\ $ (!\ulaEX_MEM[0]~11\)))) # (GND)
-- \ulaEX_MEM[1]~17\ = CARRY((\R0ID_EX[1]~_Duplicate_1_q\ & ((\Add2~1_combout\) # (!\ulaEX_MEM[0]~11\))) # (!\R0ID_EX[1]~_Duplicate_1_q\ & (\Add2~1_combout\ & !\ulaEX_MEM[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[1]~_Duplicate_1_q\,
	datab => \Add2~1_combout\,
	datad => VCC,
	cin => \ulaEX_MEM[0]~11\,
	combout => \ulaEX_MEM[1]~16_combout\,
	cout => \ulaEX_MEM[1]~17\);

-- Location: LCCOMB_X18_Y16_N2
\Mult0|auto_generated|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~2_combout\ = (\Mult0|auto_generated|le3a\(1) & (!\Mult0|auto_generated|op_3~1\)) # (!\Mult0|auto_generated|le3a\(1) & ((\Mult0|auto_generated|op_3~1\) # (GND)))
-- \Mult0|auto_generated|op_3~3\ = CARRY((!\Mult0|auto_generated|op_3~1\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~1\,
	combout => \Mult0|auto_generated|op_3~2_combout\,
	cout => \Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X18_Y16_N22
\Mult0|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|le4a\(2) $ (\Mult0|auto_generated|le3a\(4) $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|le4a\(2) & ((\Mult0|auto_generated|le3a\(4)) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|le4a\(2) & (\Mult0|auto_generated|le3a\(4) & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(2),
	datab => \Mult0|auto_generated|le3a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y16_N12
\ulaEX_MEM[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[5]~28_combout\ = ((\Add2~5_combout\ $ (\R0ID_EX[5]~_Duplicate_1_q\ $ (!\ulaEX_MEM[4]~26\)))) # (GND)
-- \ulaEX_MEM[5]~29\ = CARRY((\Add2~5_combout\ & ((\R0ID_EX[5]~_Duplicate_1_q\) # (!\ulaEX_MEM[4]~26\))) # (!\Add2~5_combout\ & (\R0ID_EX[5]~_Duplicate_1_q\ & !\ulaEX_MEM[4]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~5_combout\,
	datab => \R0ID_EX[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ulaEX_MEM[4]~26\,
	combout => \ulaEX_MEM[5]~28_combout\,
	cout => \ulaEX_MEM[5]~29\);

-- Location: LCCOMB_X18_Y16_N10
\Mult0|auto_generated|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~10_combout\ = (\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|op_1~6_combout\ & (\Mult0|auto_generated|op_3~9\ & VCC)) # (!\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|op_3~9\)))) # 
-- (!\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|op_3~9\) # (GND)))))
-- \Mult0|auto_generated|op_3~11\ = CARRY((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|op_1~6_combout\ & !\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|le5a\(1) & ((!\Mult0|auto_generated|op_3~9\) # 
-- (!\Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(1),
	datab => \Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~9\,
	combout => \Mult0|auto_generated|op_3~10_combout\,
	cout => \Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X22_Y16_N14
\ulaEX_MEM[6]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[6]~31_combout\ = (\R0ID_EX[6]~_Duplicate_1_q\ & ((\Add2~6_combout\ & (\ulaEX_MEM[5]~29\ & VCC)) # (!\Add2~6_combout\ & (!\ulaEX_MEM[5]~29\)))) # (!\R0ID_EX[6]~_Duplicate_1_q\ & ((\Add2~6_combout\ & (!\ulaEX_MEM[5]~29\)) # (!\Add2~6_combout\ & 
-- ((\ulaEX_MEM[5]~29\) # (GND)))))
-- \ulaEX_MEM[6]~32\ = CARRY((\R0ID_EX[6]~_Duplicate_1_q\ & (!\Add2~6_combout\ & !\ulaEX_MEM[5]~29\)) # (!\R0ID_EX[6]~_Duplicate_1_q\ & ((!\ulaEX_MEM[5]~29\) # (!\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[6]~_Duplicate_1_q\,
	datab => \Add2~6_combout\,
	datad => VCC,
	cin => \ulaEX_MEM[5]~29\,
	combout => \ulaEX_MEM[6]~31_combout\,
	cout => \ulaEX_MEM[6]~32\);

-- Location: LCCOMB_X18_Y16_N26
\Mult0|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|le3a\(6) $ (\Mult0|auto_generated|le4a\(4) $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|le3a\(6) & ((\Mult0|auto_generated|le4a\(4)) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|le3a\(6) & (\Mult0|auto_generated|le4a\(4) & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(6),
	datab => \Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X18_Y16_N12
\Mult0|auto_generated|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~12_combout\ = ((\Mult0|auto_generated|op_1~8_combout\ $ (\Mult0|auto_generated|le5a\(2) $ (!\Mult0|auto_generated|op_3~11\)))) # (GND)
-- \Mult0|auto_generated|op_3~13\ = CARRY((\Mult0|auto_generated|op_1~8_combout\ & ((\Mult0|auto_generated|le5a\(2)) # (!\Mult0|auto_generated|op_3~11\))) # (!\Mult0|auto_generated|op_1~8_combout\ & (\Mult0|auto_generated|le5a\(2) & 
-- !\Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~8_combout\,
	datab => \Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~11\,
	combout => \Mult0|auto_generated|op_3~12_combout\,
	cout => \Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X18_Y15_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (PC(3) & (!\Add1~5\)) # (!PC(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X18_Y15_N10
\Add1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (PC(5) & (!\Add1~9\)) # (!PC(5) & ((\Add1~9\) # (GND)))
-- \Add1~16\ = CARRY((!\Add1~9\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X23_Y19_N10
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\R0ID_EX[6]~_Duplicate_1_q\ & (RwEX_MEM(6) & (RwEX_MEM(7) $ (!\R0ID_EX[7]~_Duplicate_1_q\)))) # (!\R0ID_EX[6]~_Duplicate_1_q\ & (!RwEX_MEM(6) & (RwEX_MEM(7) $ (!\R0ID_EX[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[6]~_Duplicate_1_q\,
	datab => RwEX_MEM(7),
	datac => \R0ID_EX[7]~_Duplicate_1_q\,
	datad => RwEX_MEM(6),
	combout => \Equal0~3_combout\);

-- Location: FF_X21_Y17_N11
\regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][0]~q\);

-- Location: LCCOMB_X24_Y17_N10
\R0ID_EX~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~3_combout\ = (InID_EX(5) & (((InID_EX(4))))) # (!InID_EX(5) & ((InID_EX(4) & (\regs[1][0]~q\)) # (!InID_EX(4) & ((\regs[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][0]~q\,
	datab => InID_EX(5),
	datac => \regs[0][0]~q\,
	datad => InID_EX(4),
	combout => \R0ID_EX~3_combout\);

-- Location: FF_X25_Y15_N1
\regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][1]~q\);

-- Location: FF_X24_Y18_N7
\regs[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[12][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[12][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][3]~q\);

-- Location: LCCOMB_X24_Y18_N8
\R0ID_EX~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~16_combout\ = (InID_EX(4) & (((InID_EX(5))))) # (!InID_EX(4) & ((InID_EX(5) & ((\regs[14][3]~q\))) # (!InID_EX(5) & (\regs[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][3]~q\,
	datab => InID_EX(4),
	datac => InID_EX(5),
	datad => \regs[14][3]~q\,
	combout => \R0ID_EX~16_combout\);

-- Location: LCCOMB_X24_Y14_N24
\R0ID_EX~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~17_combout\ = (\R0ID_EX~16_combout\ & ((\regs[15][3]~q\) # ((!InID_EX(4))))) # (!\R0ID_EX~16_combout\ & (((\regs[13][3]~q\ & InID_EX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][3]~q\,
	datab => \regs[13][3]~q\,
	datac => \R0ID_EX~16_combout\,
	datad => InID_EX(4),
	combout => \R0ID_EX~17_combout\);

-- Location: FF_X24_Y14_N27
\regs[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[15][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[15][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][5]~q\);

-- Location: LCCOMB_X25_Y16_N2
\R0ID_EX~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~28_combout\ = (InID_EX(5) & (((InID_EX(4))))) # (!InID_EX(5) & ((InID_EX(4) & ((\regs[1][5]~q\))) # (!InID_EX(4) & (\regs[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][5]~q\,
	datab => InID_EX(5),
	datac => \regs[1][5]~q\,
	datad => InID_EX(4),
	combout => \R0ID_EX~28_combout\);

-- Location: FF_X25_Y15_N23
\regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][5]~q\);

-- Location: LCCOMB_X25_Y16_N20
\R0ID_EX~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~29_combout\ = (InID_EX(5) & ((\R0ID_EX~28_combout\ & (\regs[3][5]~q\)) # (!\R0ID_EX~28_combout\ & ((\regs[2][5]~q\))))) # (!InID_EX(5) & (((\R0ID_EX~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][5]~q\,
	datab => \regs[2][5]~q\,
	datac => InID_EX(5),
	datad => \R0ID_EX~28_combout\,
	combout => \R0ID_EX~29_combout\);

-- Location: LCCOMB_X24_Y16_N30
\R0ID_EX~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~31_combout\ = (InID_EX(5) & (((\regs[14][6]~q\) # (InID_EX(4))))) # (!InID_EX(5) & (\regs[12][6]~q\ & ((!InID_EX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(5),
	datab => \regs[12][6]~q\,
	datac => \regs[14][6]~q\,
	datad => InID_EX(4),
	combout => \R0ID_EX~31_combout\);

-- Location: FF_X25_Y15_N27
\regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[3][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][6]~q\);

-- Location: FF_X24_Y18_N31
\regs[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[12][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[12][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][7]~q\);

-- Location: LCCOMB_X24_Y16_N22
\R0ID_EX~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~36_combout\ = (InID_EX(4) & (((InID_EX(5))))) # (!InID_EX(4) & ((InID_EX(5) & (\regs[14][7]~q\)) # (!InID_EX(5) & ((\regs[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => \regs[14][7]~q\,
	datac => InID_EX(5),
	datad => \regs[12][7]~q\,
	combout => \R0ID_EX~36_combout\);

-- Location: FF_X25_Y15_N21
\regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[1][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][7]~q\);

-- Location: LCCOMB_X25_Y18_N4
\R1ID_EX~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~2_combout\ = (InID_EX(0) & (((\regs[9][0]~q\) # (InID_EX(1))))) # (!InID_EX(0) & (\regs[8][0]~q\ & ((!InID_EX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => \regs[8][0]~q\,
	datac => \regs[9][0]~q\,
	datad => InID_EX(1),
	combout => \R1ID_EX~2_combout\);

-- Location: LCCOMB_X25_Y18_N28
\R1ID_EX~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~3_combout\ = (\R1ID_EX~2_combout\ & ((\regs[11][0]~q\) # ((!InID_EX(1))))) # (!\R1ID_EX~2_combout\ & (((\regs[10][0]~q\ & InID_EX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][0]~q\,
	datab => \R1ID_EX~2_combout\,
	datac => \regs[10][0]~q\,
	datad => InID_EX(1),
	combout => \R1ID_EX~3_combout\);

-- Location: FF_X25_Y16_N31
\regs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[5][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[5][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][0]~q\);

-- Location: FF_X26_Y17_N7
\regs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][0]~q\);

-- Location: FF_X28_Y17_N29
\regs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[4][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[4][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][0]~q\);

-- Location: LCCOMB_X28_Y17_N22
\R1ID_EX~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~4_combout\ = (InID_EX(0) & (((InID_EX(1))))) # (!InID_EX(0) & ((InID_EX(1) & ((\regs[6][0]~q\))) # (!InID_EX(1) & (\regs[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => \regs[4][0]~q\,
	datac => \regs[6][0]~q\,
	datad => InID_EX(1),
	combout => \R1ID_EX~4_combout\);

-- Location: FF_X25_Y17_N27
\regs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][0]~q\);

-- Location: LCCOMB_X25_Y17_N26
\R1ID_EX~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~5_combout\ = (InID_EX(0) & ((\R1ID_EX~4_combout\ & ((\regs[7][0]~q\))) # (!\R1ID_EX~4_combout\ & (\regs[5][0]~q\)))) # (!InID_EX(0) & (((\R1ID_EX~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => \regs[5][0]~q\,
	datac => \regs[7][0]~q\,
	datad => \R1ID_EX~4_combout\,
	combout => \R1ID_EX~5_combout\);

-- Location: LCCOMB_X26_Y16_N16
\R1ID_EX~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~9_combout\ = (InID_EX(0) & (((InID_EX(1))))) # (!InID_EX(0) & ((InID_EX(1) & ((\regs[14][0]~q\))) # (!InID_EX(1) & (\regs[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][0]~q\,
	datab => InID_EX(0),
	datac => \regs[14][0]~q\,
	datad => InID_EX(1),
	combout => \R1ID_EX~9_combout\);

-- Location: FF_X19_Y15_N9
\regs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[6][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[6][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][1]~q\);

-- Location: FF_X26_Y18_N27
\regs[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[10][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][1]~q\);

-- Location: FF_X29_Y15_N7
\regs[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[11][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[11][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][1]~q\);

-- Location: LCCOMB_X28_Y15_N6
\R1ID_EX~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~21_combout\ = (InID_EX(3) & (((InID_EX(2))))) # (!InID_EX(3) & ((InID_EX(2) & ((\regs[7][1]~q\))) # (!InID_EX(2) & (\regs[3][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][1]~q\,
	datab => InID_EX(3),
	datac => \regs[7][1]~q\,
	datad => InID_EX(2),
	combout => \R1ID_EX~21_combout\);

-- Location: LCCOMB_X28_Y15_N8
\R1ID_EX~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~22_combout\ = (InID_EX(3) & ((\R1ID_EX~21_combout\ & ((\regs[15][1]~q\))) # (!\R1ID_EX~21_combout\ & (\regs[11][1]~q\)))) # (!InID_EX(3) & (((\R1ID_EX~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][1]~q\,
	datab => InID_EX(3),
	datac => \regs[15][1]~q\,
	datad => \R1ID_EX~21_combout\,
	combout => \R1ID_EX~22_combout\);

-- Location: FF_X25_Y18_N27
\regs[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[9][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][2]~q\);

-- Location: FF_X26_Y18_N31
\regs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[8][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[8][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][2]~q\);

-- Location: LCCOMB_X26_Y18_N8
\R1ID_EX~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~27_combout\ = (InID_EX(0) & (((InID_EX(1))))) # (!InID_EX(0) & ((InID_EX(1) & (\regs[10][2]~q\)) # (!InID_EX(1) & ((\regs[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => \regs[10][2]~q\,
	datac => \regs[8][2]~q\,
	datad => InID_EX(1),
	combout => \R1ID_EX~27_combout\);

-- Location: LCCOMB_X26_Y18_N22
\R1ID_EX~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~28_combout\ = (\R1ID_EX~27_combout\ & (((\regs[11][2]~q\) # (!InID_EX(0))))) # (!\R1ID_EX~27_combout\ & (\regs[9][2]~q\ & ((InID_EX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][2]~q\,
	datab => \regs[11][2]~q\,
	datac => \R1ID_EX~27_combout\,
	datad => InID_EX(0),
	combout => \R1ID_EX~28_combout\);

-- Location: LCCOMB_X24_Y17_N2
\R1ID_EX~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~29_combout\ = (InID_EX(1) & ((InID_EX(0)) # ((\regs[2][2]~q\)))) # (!InID_EX(1) & (!InID_EX(0) & ((\regs[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => InID_EX(0),
	datac => \regs[2][2]~q\,
	datad => \regs[0][2]~q\,
	combout => \R1ID_EX~29_combout\);

-- Location: LCCOMB_X25_Y15_N28
\R1ID_EX~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~30_combout\ = (InID_EX(0) & ((\R1ID_EX~29_combout\ & (\regs[3][2]~q\)) # (!\R1ID_EX~29_combout\ & ((\regs[1][2]~q\))))) # (!InID_EX(0) & (\R1ID_EX~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => \R1ID_EX~29_combout\,
	datac => \regs[3][2]~q\,
	datad => \regs[1][2]~q\,
	combout => \R1ID_EX~30_combout\);

-- Location: LCCOMB_X19_Y15_N26
\R1ID_EX~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~31_combout\ = (InID_EX(2) & (((InID_EX(3))))) # (!InID_EX(2) & ((InID_EX(3) & ((\R1ID_EX~28_combout\))) # (!InID_EX(3) & (\R1ID_EX~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~30_combout\,
	datab => InID_EX(2),
	datac => InID_EX(3),
	datad => \R1ID_EX~28_combout\,
	combout => \R1ID_EX~31_combout\);

-- Location: FF_X26_Y19_N13
\regs[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[6][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[6][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][3]~q\);

-- Location: FF_X25_Y17_N13
\regs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[7][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[7][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][3]~q\);

-- Location: FF_X23_Y14_N25
\regs[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[11][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[11][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][3]~q\);

-- Location: LCCOMB_X23_Y14_N14
\R1ID_EX~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~43_combout\ = (InID_EX(3) & ((\regs[11][3]~q\) # ((InID_EX(2))))) # (!InID_EX(3) & (((\regs[3][3]~q\ & !InID_EX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(3),
	datab => \regs[11][3]~q\,
	datac => \regs[3][3]~q\,
	datad => InID_EX(2),
	combout => \R1ID_EX~43_combout\);

-- Location: LCCOMB_X24_Y14_N18
\R1ID_EX~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~44_combout\ = (InID_EX(2) & ((\R1ID_EX~43_combout\ & (\regs[15][3]~q\)) # (!\R1ID_EX~43_combout\ & ((\regs[7][3]~q\))))) # (!InID_EX(2) & (((\R1ID_EX~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][3]~q\,
	datab => \regs[7][3]~q\,
	datac => InID_EX(2),
	datad => \R1ID_EX~43_combout\,
	combout => \R1ID_EX~44_combout\);

-- Location: FF_X26_Y19_N21
\regs[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[6][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[6][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][4]~q\);

-- Location: FF_X25_Y14_N25
\regs[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[11][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[11][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][5]~q\);

-- Location: FF_X25_Y17_N11
\regs[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][5]~q\);

-- Location: LCCOMB_X25_Y17_N16
\R1ID_EX~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~65_combout\ = (InID_EX(2) & ((InID_EX(3)) # ((\regs[7][5]~q\)))) # (!InID_EX(2) & (!InID_EX(3) & (\regs[3][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(2),
	datab => InID_EX(3),
	datac => \regs[3][5]~q\,
	datad => \regs[7][5]~q\,
	combout => \R1ID_EX~65_combout\);

-- Location: LCCOMB_X25_Y19_N22
\R1ID_EX~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~66_combout\ = (InID_EX(3) & ((\R1ID_EX~65_combout\ & (\regs[15][5]~q\)) # (!\R1ID_EX~65_combout\ & ((\regs[11][5]~q\))))) # (!InID_EX(3) & (((\R1ID_EX~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][5]~q\,
	datab => \regs[11][5]~q\,
	datac => InID_EX(3),
	datad => \R1ID_EX~65_combout\,
	combout => \R1ID_EX~66_combout\);

-- Location: FF_X19_Y15_N7
\regs[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[6][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[6][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][6]~q\);

-- Location: FF_X25_Y18_N13
\regs[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[9][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][6]~q\);

-- Location: LCCOMB_X23_Y17_N4
\R1ID_EX~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~71_combout\ = (InID_EX(1) & ((InID_EX(0)) # ((\regs[10][6]~q\)))) # (!InID_EX(1) & (!InID_EX(0) & ((\regs[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => InID_EX(0),
	datac => \regs[10][6]~q\,
	datad => \regs[8][6]~q\,
	combout => \R1ID_EX~71_combout\);

-- Location: LCCOMB_X21_Y15_N26
\R1ID_EX~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~72_combout\ = (InID_EX(0) & ((\R1ID_EX~71_combout\ & (\regs[11][6]~q\)) # (!\R1ID_EX~71_combout\ & ((\regs[9][6]~q\))))) # (!InID_EX(0) & (((\R1ID_EX~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => \regs[11][6]~q\,
	datac => \regs[9][6]~q\,
	datad => \R1ID_EX~71_combout\,
	combout => \R1ID_EX~72_combout\);

-- Location: LCCOMB_X24_Y17_N30
\R1ID_EX~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~73_combout\ = (InID_EX(0) & (((InID_EX(1))))) # (!InID_EX(0) & ((InID_EX(1) & ((\regs[2][6]~q\))) # (!InID_EX(1) & (\regs[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][6]~q\,
	datab => InID_EX(0),
	datac => \regs[2][6]~q\,
	datad => InID_EX(1),
	combout => \R1ID_EX~73_combout\);

-- Location: LCCOMB_X25_Y15_N18
\R1ID_EX~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~74_combout\ = (InID_EX(0) & ((\R1ID_EX~73_combout\ & (\regs[3][6]~q\)) # (!\R1ID_EX~73_combout\ & ((\regs[1][6]~q\))))) # (!InID_EX(0) & (((\R1ID_EX~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][6]~q\,
	datab => \regs[1][6]~q\,
	datac => InID_EX(0),
	datad => \R1ID_EX~73_combout\,
	combout => \R1ID_EX~74_combout\);

-- Location: LCCOMB_X21_Y15_N12
\R1ID_EX~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~75_combout\ = (InID_EX(2) & (((InID_EX(3))))) # (!InID_EX(2) & ((InID_EX(3) & (\R1ID_EX~72_combout\)) # (!InID_EX(3) & ((\R1ID_EX~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~72_combout\,
	datab => InID_EX(2),
	datac => InID_EX(3),
	datad => \R1ID_EX~74_combout\,
	combout => \R1ID_EX~75_combout\);

-- Location: FF_X23_Y14_N9
\regs[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[9][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][7]~q\);

-- Location: LCCOMB_X24_Y14_N22
\R1ID_EX~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~80_combout\ = (InID_EX(3) & ((\regs[9][7]~q\) # ((InID_EX(2))))) # (!InID_EX(3) & (((!InID_EX(2) & \regs[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][7]~q\,
	datab => InID_EX(3),
	datac => InID_EX(2),
	datad => \regs[1][7]~q\,
	combout => \R1ID_EX~80_combout\);

-- Location: FF_X24_Y19_N21
\regs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[7][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[7][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][7]~q\);

-- Location: FF_X21_Y18_N31
\InIF_ID[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(13));

-- Location: FF_X24_Y15_N11
\InMEM_WB[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InMEM_WB[15]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(15));

-- Location: LCCOMB_X24_Y15_N18
\regs~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~0_combout\ = (!\Equal9~0_combout\ & ((\Equal10~0_combout\ & ((InMEM_WB(0)))) # (!\Equal10~0_combout\ & (ulaEX_MEM(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Equal9~0_combout\,
	datac => ulaEX_MEM(0),
	datad => InMEM_WB(0),
	combout => \regs~0_combout\);

-- Location: FF_X23_Y16_N7
\mem_d_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(4));

-- Location: FF_X23_Y15_N23
\mem_d_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(8));

-- Location: FF_X23_Y16_N31
\mem_d_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(6));

-- Location: FF_X22_Y15_N13
\mem_d_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(9));

-- Location: FF_X22_Y15_N7
\mem_d_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(11));

-- Location: FF_X22_Y15_N25
\mem_d_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(12));

-- Location: FF_X22_Y15_N23
\mem_d_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(10));

-- Location: LCCOMB_X22_Y15_N22
\mem_d~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~29_combout\ = (mem_d_rtl_0_bypass(9) & (mem_d_rtl_0_bypass(10) & (mem_d_rtl_0_bypass(12) $ (!mem_d_rtl_0_bypass(11))))) # (!mem_d_rtl_0_bypass(9) & (!mem_d_rtl_0_bypass(10) & (mem_d_rtl_0_bypass(12) $ (!mem_d_rtl_0_bypass(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_d_rtl_0_bypass(9),
	datab => mem_d_rtl_0_bypass(12),
	datac => mem_d_rtl_0_bypass(10),
	datad => mem_d_rtl_0_bypass(11),
	combout => \mem_d~29_combout\);

-- Location: FF_X23_Y15_N31
\mem_d_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InMEM_WB(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(13));

-- Location: FF_X21_Y18_N15
\InIF_ID[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(4));

-- Location: FF_X18_Y18_N15
\InIF_ID[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(6));

-- Location: LCCOMB_X24_Y15_N12
\regs~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~13_combout\ = (!\Equal9~0_combout\ & ((\Equal10~0_combout\ & (InMEM_WB(1))) # (!\Equal10~0_combout\ & ((ulaEX_MEM(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(1),
	datab => \Equal9~0_combout\,
	datac => \Equal10~0_combout\,
	datad => ulaEX_MEM(1),
	combout => \regs~13_combout\);

-- Location: LCCOMB_X22_Y15_N2
\regs~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~29_combout\ = (!\Equal9~0_combout\ & ((\Equal10~0_combout\ & ((InMEM_WB(5)))) # (!\Equal10~0_combout\ & (ulaEX_MEM(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => ulaEX_MEM(5),
	datac => InMEM_WB(5),
	datad => \Equal9~0_combout\,
	combout => \regs~29_combout\);

-- Location: FF_X23_Y15_N9
\mem_d_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(28));

-- Location: LCCOMB_X24_Y15_N26
\regs~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~33_combout\ = (!\Equal9~0_combout\ & ((\Equal10~0_combout\ & (InMEM_WB(6))) # (!\Equal10~0_combout\ & ((ulaEX_MEM(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => InMEM_WB(6),
	datac => ulaEX_MEM(6),
	datad => \Equal9~0_combout\,
	combout => \regs~33_combout\);

-- Location: FF_X21_Y18_N1
\InIF_ID[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(1));

-- Location: LCCOMB_X21_Y17_N24
\Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (!InMEM_WB(10) & (InMEM_WB(8) & (InMEM_WB(9) & InMEM_WB(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(10),
	datab => InMEM_WB(8),
	datac => InMEM_WB(9),
	datad => InMEM_WB(11),
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X26_Y17_N22
\Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (!InMEM_WB(11) & (InMEM_WB(10) & (!InMEM_WB(8) & InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(11),
	datab => InMEM_WB(10),
	datac => InMEM_WB(8),
	datad => InMEM_WB(9),
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X21_Y17_N12
\Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (InMEM_WB(10) & (!InMEM_WB(8) & (!InMEM_WB(11) & !InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(10),
	datab => InMEM_WB(8),
	datac => InMEM_WB(11),
	datad => InMEM_WB(9),
	combout => \Decoder0~14_combout\);

-- Location: FF_X22_Y17_N27
\InIF_ID[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(2));

-- Location: LCCOMB_X21_Y18_N2
\mem_i~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~0_combout\ = (PC(0) & (!PC(3) & (PC(1) $ (!PC(2))))) # (!PC(0) & (PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(1),
	datac => PC(3),
	datad => PC(2),
	combout => \mem_i~0_combout\);

-- Location: LCCOMB_X21_Y18_N20
\mem_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~1_combout\ = (!PC(2) & ((PC(0) & (PC(1) & !PC(3))) # (!PC(0) & (!PC(1) & PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(1),
	datac => PC(3),
	datad => PC(2),
	combout => \mem_i~1_combout\);

-- Location: LCCOMB_X21_Y18_N30
\InIF_ID~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~1_combout\ = ((PC(4) & (!\mem_i~1_combout\)) # (!PC(4) & ((!\mem_i~0_combout\)))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \mem_i~1_combout\,
	datac => \mem_i~0_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~1_combout\);

-- Location: LCCOMB_X18_Y18_N12
\mem_i~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~3_combout\ = (!PC(0) & ((PC(4) & (!PC(2) & !PC(1))) # (!PC(4) & (PC(2) & PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~3_combout\);

-- Location: LCCOMB_X21_Y18_N12
\mem_i~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~7_combout\ = (!PC(4) & ((PC(1) & ((!PC(0)))) # (!PC(1) & (PC(2) & PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~7_combout\);

-- Location: LCCOMB_X28_Y15_N12
\RwID_EX~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~0_combout\ = (InID_EX(11) & ((\regs[10][1]~q\) # ((InID_EX(10))))) # (!InID_EX(11) & (((\regs[2][1]~q\ & !InID_EX(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][1]~q\,
	datab => InID_EX(11),
	datac => \regs[2][1]~q\,
	datad => InID_EX(10),
	combout => \RwID_EX~0_combout\);

-- Location: LCCOMB_X28_Y15_N18
\RwID_EX~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~1_combout\ = (InID_EX(10) & ((\RwID_EX~0_combout\ & ((\regs[14][1]~q\))) # (!\RwID_EX~0_combout\ & (\regs[6][1]~q\)))) # (!InID_EX(10) & (((\RwID_EX~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][1]~q\,
	datab => InID_EX(10),
	datac => \regs[14][1]~q\,
	datad => \RwID_EX~0_combout\,
	combout => \RwID_EX~1_combout\);

-- Location: LCCOMB_X25_Y16_N28
\RwID_EX~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~2_combout\ = (InID_EX(11) & (((InID_EX(10))))) # (!InID_EX(11) & ((InID_EX(10) & ((\regs[5][1]~q\))) # (!InID_EX(10) & (\regs[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(11),
	datab => \regs[1][1]~q\,
	datac => \regs[5][1]~q\,
	datad => InID_EX(10),
	combout => \RwID_EX~2_combout\);

-- Location: LCCOMB_X26_Y18_N12
\RwID_EX~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~3_combout\ = (\RwID_EX~2_combout\ & (((\regs[13][1]~q\) # (!InID_EX(11))))) # (!\RwID_EX~2_combout\ & (\regs[9][1]~q\ & ((InID_EX(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][1]~q\,
	datab => \RwID_EX~2_combout\,
	datac => \regs[13][1]~q\,
	datad => InID_EX(11),
	combout => \RwID_EX~3_combout\);

-- Location: LCCOMB_X26_Y17_N30
\RwID_EX~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~14_combout\ = (InID_EX(8) & (((InID_EX(9))))) # (!InID_EX(8) & ((InID_EX(9) & (\regs[6][0]~q\)) # (!InID_EX(9) & ((\regs[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][0]~q\,
	datab => \regs[4][0]~q\,
	datac => InID_EX(8),
	datad => InID_EX(9),
	combout => \RwID_EX~14_combout\);

-- Location: LCCOMB_X25_Y16_N24
\RwID_EX~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~15_combout\ = (\RwID_EX~14_combout\ & (((\regs[7][0]~q\) # (!InID_EX(8))))) # (!\RwID_EX~14_combout\ & (\regs[5][0]~q\ & ((InID_EX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][0]~q\,
	datab => \regs[7][0]~q\,
	datac => \RwID_EX~14_combout\,
	datad => InID_EX(8),
	combout => \RwID_EX~15_combout\);

-- Location: LCCOMB_X24_Y17_N8
\RwID_EX~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~16_combout\ = (InID_EX(9) & (((InID_EX(8))))) # (!InID_EX(9) & ((InID_EX(8) & ((\regs[1][0]~q\))) # (!InID_EX(8) & (\regs[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => \regs[0][0]~q\,
	datac => \regs[1][0]~q\,
	datad => InID_EX(8),
	combout => \RwID_EX~16_combout\);

-- Location: LCCOMB_X24_Y17_N14
\RwID_EX~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~17_combout\ = (InID_EX(9) & ((\RwID_EX~16_combout\ & ((\regs[3][0]~q\))) # (!\RwID_EX~16_combout\ & (\regs[2][0]~q\)))) # (!InID_EX(9) & (((\RwID_EX~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => \regs[2][0]~q\,
	datac => \RwID_EX~16_combout\,
	datad => \regs[3][0]~q\,
	combout => \RwID_EX~17_combout\);

-- Location: LCCOMB_X25_Y16_N18
\RwID_EX~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~18_combout\ = (InID_EX(10) & ((\RwID_EX~15_combout\) # ((InID_EX(11))))) # (!InID_EX(10) & (((!InID_EX(11) & \RwID_EX~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(10),
	datab => \RwID_EX~15_combout\,
	datac => InID_EX(11),
	datad => \RwID_EX~17_combout\,
	combout => \RwID_EX~18_combout\);

-- Location: LCCOMB_X25_Y17_N10
\RwID_EX~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~52_combout\ = (InID_EX(11) & (((InID_EX(10))))) # (!InID_EX(11) & ((InID_EX(10) & ((\regs[7][5]~q\))) # (!InID_EX(10) & (\regs[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][5]~q\,
	datab => InID_EX(11),
	datac => \regs[7][5]~q\,
	datad => InID_EX(10),
	combout => \RwID_EX~52_combout\);

-- Location: LCCOMB_X25_Y14_N28
\RwID_EX~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~53_combout\ = (\RwID_EX~52_combout\ & ((\regs[15][5]~q\) # ((!InID_EX(11))))) # (!\RwID_EX~52_combout\ & (((\regs[11][5]~q\ & InID_EX(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][5]~q\,
	datab => \regs[11][5]~q\,
	datac => \RwID_EX~52_combout\,
	datad => InID_EX(11),
	combout => \RwID_EX~53_combout\);

-- Location: LCCOMB_X25_Y19_N4
\RwID_EX~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~58_combout\ = (InID_EX(8) & (((InID_EX(9))))) # (!InID_EX(8) & ((InID_EX(9) & (\regs[6][4]~q\)) # (!InID_EX(9) & ((\regs[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][4]~q\,
	datab => InID_EX(8),
	datac => \regs[4][4]~q\,
	datad => InID_EX(9),
	combout => \RwID_EX~58_combout\);

-- Location: LCCOMB_X25_Y15_N12
\RwID_EX~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~67_combout\ = (InID_EX(11) & (((InID_EX(10)) # (\regs[9][7]~q\)))) # (!InID_EX(11) & (\regs[1][7]~q\ & (!InID_EX(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(11),
	datab => \regs[1][7]~q\,
	datac => InID_EX(10),
	datad => \regs[9][7]~q\,
	combout => \RwID_EX~67_combout\);

-- Location: LCCOMB_X24_Y16_N6
\RwID_EX~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~68_combout\ = (\RwID_EX~67_combout\ & (((\regs[13][7]~q\) # (!InID_EX(10))))) # (!\RwID_EX~67_combout\ & (\regs[5][7]~q\ & ((InID_EX(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][7]~q\,
	datab => \regs[13][7]~q\,
	datac => \RwID_EX~67_combout\,
	datad => InID_EX(10),
	combout => \RwID_EX~68_combout\);

-- Location: LCCOMB_X26_Y16_N22
\RwID_EX~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~85_combout\ = (InID_EX(8) & (((InID_EX(9)) # (\regs[13][6]~q\)))) # (!InID_EX(8) & (\regs[12][6]~q\ & (!InID_EX(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(8),
	datab => \regs[12][6]~q\,
	datac => InID_EX(9),
	datad => \regs[13][6]~q\,
	combout => \RwID_EX~85_combout\);

-- Location: LCCOMB_X24_Y14_N20
\RwID_EX~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~86_combout\ = (InID_EX(9) & ((\RwID_EX~85_combout\ & ((\regs[15][6]~q\))) # (!\RwID_EX~85_combout\ & (\regs[14][6]~q\)))) # (!InID_EX(9) & (((\RwID_EX~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][6]~q\,
	datab => InID_EX(9),
	datac => \regs[15][6]~q\,
	datad => \RwID_EX~85_combout\,
	combout => \RwID_EX~86_combout\);

-- Location: LCCOMB_X21_Y16_N14
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = InEX_MEM(13) $ (((InEX_MEM(15) & ((InEX_MEM(0)))) # (!InEX_MEM(15) & (R1ID_EX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(13),
	datab => R1ID_EX(0),
	datac => InEX_MEM(15),
	datad => InEX_MEM(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X21_Y16_N16
\ulaEX_MEM~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM~12_combout\ = (InEX_MEM(12) & ((\Mult1|auto_generated|mac_out2~dataout\))) # (!InEX_MEM(12) & (\Mult0|auto_generated|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~0_combout\,
	datac => InEX_MEM(12),
	datad => \Mult1|auto_generated|mac_out2~dataout\,
	combout => \ulaEX_MEM~12_combout\);

-- Location: LCCOMB_X23_Y15_N12
\mem_d~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~33_combout\ = (!InMEM_WB(3) & (!InMEM_WB(4) & (!InMEM_WB(6) & !InMEM_WB(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(3),
	datab => InMEM_WB(4),
	datac => InMEM_WB(6),
	datad => InMEM_WB(5),
	combout => \mem_d~33_combout\);

-- Location: LCCOMB_X21_Y18_N10
\mem_i~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~8_combout\ = (PC(4) & (PC(1) $ (((PC(2)) # (!PC(0)))))) # (!PC(4) & (PC(2) & ((!PC(0)) # (!PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~8_combout\);

-- Location: LCCOMB_X21_Y18_N28
\mem_i~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~9_combout\ = (PC(2) & (!PC(4) & ((PC(0))))) # (!PC(2) & (!PC(0) & (PC(4) $ (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~9_combout\);

-- Location: LCCOMB_X21_Y18_N14
\InIF_ID~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~5_combout\ = ((PC(3) & ((!\mem_i~9_combout\))) # (!PC(3) & (\mem_i~8_combout\))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~8_combout\,
	datab => PC(3),
	datac => \mem_i~9_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~5_combout\);

-- Location: LCCOMB_X18_Y18_N0
\mem_i~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~11_combout\ = (PC(4) & (!PC(2) & (!PC(1) & !PC(0)))) # (!PC(4) & (PC(2) & (PC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~11_combout\);

-- Location: LCCOMB_X18_Y18_N10
\mem_i~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~12_combout\ = (PC(2) & (!PC(1) & ((!PC(0)) # (!PC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~12_combout\);

-- Location: LCCOMB_X18_Y18_N14
\InIF_ID~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~7_combout\ = ((PC(3) & ((!\mem_i~13_combout\))) # (!PC(3) & (\mem_i~12_combout\))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~12_combout\,
	datab => PC(3),
	datac => \mem_i~13_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~7_combout\);

-- Location: LCCOMB_X21_Y16_N26
\ulaEX_MEM~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM~18_combout\ = (InEX_MEM(12) & ((\Mult1|auto_generated|mac_out2~DATAOUT1\))) # (!InEX_MEM(12) & (\Mult0|auto_generated|op_3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(12),
	datac => \Mult0|auto_generated|op_3~2_combout\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT1\,
	combout => \ulaEX_MEM~18_combout\);

-- Location: LCCOMB_X21_Y17_N6
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = InEX_MEM(13) $ (((InEX_MEM(15) & (InEX_MEM(2))) # (!InEX_MEM(15) & ((R1ID_EX(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(2),
	datab => InEX_MEM(15),
	datac => InEX_MEM(13),
	datad => R1ID_EX(2),
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = InEX_MEM(13) $ (((InEX_MEM(15) & (InEX_MEM(3))) # (!InEX_MEM(15) & ((R1ID_EX(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(13),
	datab => InEX_MEM(3),
	datac => InEX_MEM(15),
	datad => R1ID_EX(3),
	combout => \Add2~3_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = InEX_MEM(13) $ (((R1ID_EX(4) & !InEX_MEM(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => R1ID_EX(4),
	datac => InEX_MEM(15),
	datad => InEX_MEM(13),
	combout => \Add2~4_combout\);

-- Location: LCCOMB_X21_Y16_N28
\Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = InEX_MEM(13) $ (((!InEX_MEM(15) & R1ID_EX(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(13),
	datab => InEX_MEM(15),
	datac => R1ID_EX(5),
	combout => \Add2~5_combout\);

-- Location: LCCOMB_X22_Y16_N26
\ulaEX_MEM~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM~30_combout\ = (InEX_MEM(12) & (\Mult1|auto_generated|mac_out2~DATAOUT5\)) # (!InEX_MEM(12) & ((\Mult0|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|mac_out2~DATAOUT5\,
	datab => InEX_MEM(12),
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \ulaEX_MEM~30_combout\);

-- Location: LCCOMB_X22_Y16_N22
\ulaEX_MEM~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM~33_combout\ = (InEX_MEM(12) & (\Mult1|auto_generated|mac_out2~DATAOUT6\)) # (!InEX_MEM(12) & ((\Mult0|auto_generated|op_3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => InEX_MEM(12),
	datac => \Mult1|auto_generated|mac_out2~DATAOUT6\,
	datad => \Mult0|auto_generated|op_3~12_combout\,
	combout => \ulaEX_MEM~33_combout\);

-- Location: LCCOMB_X21_Y18_N22
\mem_i~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~14_combout\ = (!PC(2) & ((PC(3) & (PC(4) & !PC(0))) # (!PC(3) & ((PC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(3),
	datad => PC(0),
	combout => \mem_i~14_combout\);

-- Location: LCCOMB_X21_Y18_N24
\mem_i~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~15_combout\ = (PC(4) & (!PC(3) & ((PC(2)) # (PC(0))))) # (!PC(4) & ((PC(0) & (PC(2))) # (!PC(0) & ((PC(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(3),
	datad => PC(0),
	combout => \mem_i~15_combout\);

-- Location: LCCOMB_X21_Y18_N0
\InIF_ID~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~8_combout\ = ((PC(1) & ((!\mem_i~15_combout\))) # (!PC(1) & (!\mem_i~14_combout\))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~14_combout\,
	datab => PC(1),
	datac => \mem_i~15_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~8_combout\);

-- Location: LCCOMB_X18_Y18_N22
\mem_i~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~16_combout\ = (PC(4) & (((PC(1)) # (PC(0))) # (!PC(2)))) # (!PC(4) & ((PC(2) & (PC(1) & PC(0))) # (!PC(2) & ((PC(1)) # (PC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~16_combout\);

-- Location: LCCOMB_X23_Y17_N18
\mem_i~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~17_combout\ = (PC(1) & (PC(0) $ (((!PC(4) & PC(2)))))) # (!PC(1) & (PC(2) $ (((PC(4) & PC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(4),
	datac => PC(2),
	datad => PC(0),
	combout => \mem_i~17_combout\);

-- Location: LCCOMB_X18_Y17_N26
\mem_i~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~18_combout\ = (!PC(1) & ((PC(0) & (PC(2) & !PC(4))) # (!PC(0) & (!PC(2) & PC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(1),
	datad => PC(4),
	combout => \mem_i~18_combout\);

-- Location: LCCOMB_X22_Y17_N26
\InIF_ID~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~12_combout\ = ((PC(3) & (!\mem_i~18_combout\)) # (!PC(3) & ((\mem_i~17_combout\)))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => \mem_i~18_combout\,
	datac => \InIF_ID~0_combout\,
	datad => \mem_i~17_combout\,
	combout => \InIF_ID~12_combout\);

-- Location: FF_X18_Y18_N21
\InIF_ID[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(11));

-- Location: FF_X23_Y17_N13
\InIF_ID[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(8));

-- Location: LCCOMB_X19_Y16_N20
\Mult0|auto_generated|le3a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((InEX_MEM(0) & (\R0ID_EX[2]~_Duplicate_1_q\ $ (((InEX_MEM(1)))))) # (!InEX_MEM(0) & (((!\R0ID_EX[1]~_Duplicate_1_q\ & InEX_MEM(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[2]~_Duplicate_1_q\,
	datab => \R0ID_EX[1]~_Duplicate_1_q\,
	datac => InEX_MEM(0),
	datad => InEX_MEM(1),
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X19_Y16_N6
\Mult0|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(InEX_MEM(3) $ (((InEX_MEM(1) & ((InEX_MEM(2)) # (\R0ID_EX[0]~_Duplicate_1_q\))) # (!InEX_MEM(1) & (InEX_MEM(2) & \R0ID_EX[0]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(1),
	datab => InEX_MEM(2),
	datac => InEX_MEM(3),
	datad => \R0ID_EX[0]~_Duplicate_1_q\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X19_Y16_N2
\Mult0|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\R0ID_EX[1]~_Duplicate_1_q\ $ (\Mult0|auto_generated|cs1a[1]~0_combout\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\R0ID_EX[0]~_Duplicate_1_q\ & 
-- ((\Mult0|auto_generated|cs1a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \R0ID_EX[0]~_Duplicate_1_q\,
	datac => \R0ID_EX[1]~_Duplicate_1_q\,
	datad => \Mult0|auto_generated|cs1a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X19_Y16_N4
\Mult0|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\R0ID_EX[2]~_Duplicate_1_q\ $ (\Mult0|auto_generated|cs1a[1]~0_combout\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\R0ID_EX[1]~_Duplicate_1_q\ & 
-- ((\Mult0|auto_generated|cs1a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \R0ID_EX[1]~_Duplicate_1_q\,
	datac => \R0ID_EX[2]~_Duplicate_1_q\,
	datad => \Mult0|auto_generated|cs1a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X19_Y16_N30
\Mult0|auto_generated|le3a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL((InEX_MEM(0) & (\R0ID_EX[5]~_Duplicate_1_q\ $ ((InEX_MEM(1))))) # (!InEX_MEM(0) & (((InEX_MEM(1) & !\R0ID_EX[4]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[5]~_Duplicate_1_q\,
	datab => InEX_MEM(1),
	datac => InEX_MEM(0),
	datad => \R0ID_EX[4]~_Duplicate_1_q\,
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: LCCOMB_X23_Y16_N18
\Mult0|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\R0ID_EX[1]~_Duplicate_1_q\ & ((InEX_MEM(3)) # ((InEX_MEM(2) & InEX_MEM(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(2),
	datab => InEX_MEM(3),
	datac => \R0ID_EX[1]~_Duplicate_1_q\,
	datad => InEX_MEM(1),
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X17_Y16_N26
\Mult0|auto_generated|le3a[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(6) = LCELL((InEX_MEM(0) & (InEX_MEM(1) $ ((\R0ID_EX[6]~_Duplicate_1_q\)))) # (!InEX_MEM(0) & (InEX_MEM(1) & ((!\R0ID_EX[5]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(1),
	datab => \R0ID_EX[6]~_Duplicate_1_q\,
	datac => \R0ID_EX[5]~_Duplicate_1_q\,
	datad => InEX_MEM(0),
	combout => \Mult0|auto_generated|le3a\(6));

-- Location: LCCOMB_X18_Y16_N30
\Mult0|auto_generated|le3a[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(7) = LCELL((InEX_MEM(0) & (InEX_MEM(1) $ (((\R0ID_EX[7]~_Duplicate_1_q\))))) # (!InEX_MEM(0) & (InEX_MEM(1) & (!\R0ID_EX[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(1),
	datab => \R0ID_EX[6]~_Duplicate_1_q\,
	datac => \R0ID_EX[7]~_Duplicate_1_q\,
	datad => InEX_MEM(0),
	combout => \Mult0|auto_generated|le3a\(7));

-- Location: LCCOMB_X18_Y17_N30
\Mult0|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\R0ID_EX[3]~_Duplicate_1_q\ & ((InEX_MEM(3)) # ((InEX_MEM(1) & InEX_MEM(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(1),
	datab => \R0ID_EX[3]~_Duplicate_1_q\,
	datac => InEX_MEM(2),
	datad => InEX_MEM(3),
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X21_Y18_N6
\mem_i~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~19_combout\ = (PC(4) & (!PC(2) & (!PC(1) & !PC(0)))) # (!PC(4) & (PC(1) & (PC(2) $ (!PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~19_combout\);

-- Location: LCCOMB_X18_Y18_N6
\mem_i~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~20_combout\ = (PC(2) & (!PC(1) & ((!PC(0)) # (!PC(4))))) # (!PC(2) & (PC(1) & ((PC(4)) # (PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~20_combout\);

-- Location: LCCOMB_X18_Y18_N20
\InIF_ID~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~15_combout\ = ((PC(3) & ((!\mem_i~13_combout\))) # (!PC(3) & (\mem_i~20_combout\))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~20_combout\,
	datab => PC(3),
	datac => \mem_i~13_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~15_combout\);

-- Location: LCCOMB_X18_Y17_N6
\mem_i~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~22_combout\ = (PC(3) & (!PC(2) & (!PC(1) & !PC(0)))) # (!PC(3) & (PC(1) & (PC(2) $ (!PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~22_combout\);

-- Location: LCCOMB_X23_Y17_N26
\mem_i~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~23_combout\ = (PC(1) & (!PC(0) & (PC(4) $ (!PC(2))))) # (!PC(1) & (PC(2) $ (((PC(4) & PC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(4),
	datac => PC(2),
	datad => PC(0),
	combout => \mem_i~23_combout\);

-- Location: LCCOMB_X23_Y17_N12
\InIF_ID~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~17_combout\ = ((PC(3) & ((!\mem_i~5_combout\))) # (!PC(3) & (\mem_i~23_combout\))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~23_combout\,
	datab => PC(3),
	datac => \mem_i~5_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~17_combout\);

-- Location: LCCOMB_X24_Y15_N10
\InMEM_WB[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InMEM_WB[15]~feeder_combout\ = InEX_MEM(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InEX_MEM(15),
	combout => \InMEM_WB[15]~feeder_combout\);

-- Location: LCCOMB_X25_Y16_N30
\regs[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][0]~feeder_combout\ = \regs~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~3_combout\,
	combout => \regs[5][0]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N28
\regs[4][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][0]~feeder_combout\ = \regs~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~3_combout\,
	combout => \regs[4][0]~feeder_combout\);

-- Location: LCCOMB_X19_Y15_N8
\regs[6][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~16_combout\,
	combout => \regs[6][1]~feeder_combout\);

-- Location: LCCOMB_X29_Y15_N6
\regs[11][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~16_combout\,
	combout => \regs[11][1]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N26
\regs[10][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~16_combout\,
	combout => \regs[10][1]~feeder_combout\);

-- Location: LCCOMB_X25_Y18_N26
\regs[9][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][2]~feeder_combout\ = \regs~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~20_combout\,
	combout => \regs[9][2]~feeder_combout\);

-- Location: LCCOMB_X26_Y18_N30
\regs[8][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][2]~feeder_combout\ = \regs~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~20_combout\,
	combout => \regs[8][2]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N24
\regs[11][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~24_combout\,
	combout => \regs[11][3]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N6
\regs[12][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~24_combout\,
	combout => \regs[12][3]~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N12
\regs[7][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~24_combout\,
	combout => \regs[7][3]~feeder_combout\);

-- Location: LCCOMB_X26_Y19_N12
\regs[6][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~24_combout\,
	combout => \regs[6][3]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N12
\mem_d_rtl_0_bypass[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[9]~feeder_combout\ = InMEM_WB(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InMEM_WB(4),
	combout => \mem_d_rtl_0_bypass[9]~feeder_combout\);

-- Location: LCCOMB_X26_Y19_N20
\regs[6][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][4]~feeder_combout\ = \regs~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~28_combout\,
	combout => \regs[6][4]~feeder_combout\);

-- Location: LCCOMB_X22_Y15_N6
\mem_d_rtl_0_bypass[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[11]~feeder_combout\ = InMEM_WB(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InMEM_WB(5),
	combout => \mem_d_rtl_0_bypass[11]~feeder_combout\);

-- Location: LCCOMB_X25_Y14_N24
\regs[11][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~32_combout\,
	combout => \regs[11][5]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N26
\regs[15][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~32_combout\,
	combout => \regs[15][5]~feeder_combout\);

-- Location: LCCOMB_X25_Y18_N12
\regs[9][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][6]~feeder_combout\ = \regs~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~36_combout\,
	combout => \regs[9][6]~feeder_combout\);

-- Location: LCCOMB_X25_Y15_N26
\regs[3][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[3][6]~feeder_combout\ = \regs~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~36_combout\,
	combout => \regs[3][6]~feeder_combout\);

-- Location: LCCOMB_X19_Y15_N6
\regs[6][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][6]~feeder_combout\ = \regs~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~36_combout\,
	combout => \regs[6][6]~feeder_combout\);

-- Location: LCCOMB_X25_Y15_N20
\regs[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[1][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[1][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N8
\regs[9][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[9][7]~feeder_combout\);

-- Location: LCCOMB_X24_Y19_N20
\regs[7][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~40_combout\,
	combout => \regs[7][7]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N30
\regs[12][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~40_combout\,
	combout => \regs[12][7]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N6
\mem_d_rtl_0_bypass[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[4]~feeder_combout\ = InEX_MEM(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InEX_MEM(1),
	combout => \mem_d_rtl_0_bypass[4]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N30
\mem_d_rtl_0_bypass[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[6]~feeder_combout\ = InEX_MEM(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InEX_MEM(2),
	combout => \mem_d_rtl_0_bypass[6]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N22
\mem_d_rtl_0_bypass[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[8]~feeder_combout\ = InEX_MEM(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InEX_MEM(3),
	combout => \mem_d_rtl_0_bypass[8]~feeder_combout\);

-- Location: LCCOMB_X23_Y15_N8
\mem_d_rtl_0_bypass[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_d_rtl_0_bypass[28]~feeder_combout\);

-- Location: IOOBUF_X23_Y24_N16
\R0_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0ID_EX[0]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \R0_out[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\R0_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0ID_EX[1]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \R0_out[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\R0_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0ID_EX[2]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \R0_out[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\R0_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0ID_EX[3]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \R0_out[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\R0_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0ID_EX[4]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \R0_out[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\R0_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0ID_EX[5]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \R0_out[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\R0_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0ID_EX[6]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \R0_out[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\R0_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0ID_EX[7]~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \R0_out[7]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\R1_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R1ID_EX(0),
	devoe => ww_devoe,
	o => \R1_out[0]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\R1_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R1ID_EX(1),
	devoe => ww_devoe,
	o => \R1_out[1]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\R1_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R1ID_EX(2),
	devoe => ww_devoe,
	o => \R1_out[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\R1_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R1ID_EX(3),
	devoe => ww_devoe,
	o => \R1_out[3]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\R1_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R1ID_EX(4),
	devoe => ww_devoe,
	o => \R1_out[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\R1_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R1ID_EX(5),
	devoe => ww_devoe,
	o => \R1_out[5]~output_o\);

-- Location: IOOBUF_X34_Y16_N9
\R1_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R1ID_EX(6),
	devoe => ww_devoe,
	o => \R1_out[6]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\R1_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => R1ID_EX(7),
	devoe => ww_devoe,
	o => \R1_out[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y17_N2
\InID_EX~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~0_combout\ = (InIF_ID(13)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InIF_ID(13),
	datac => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X21_Y17_N3
\InID_EX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(13));

-- Location: LCCOMB_X18_Y17_N10
\PC[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[0]~8_combout\ = (PC(0) & (InEX_MEM(0) $ (VCC))) # (!PC(0) & (InEX_MEM(0) & VCC))
-- \PC[0]~9\ = CARRY((PC(0) & InEX_MEM(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => InEX_MEM(0),
	datad => VCC,
	combout => \PC[0]~8_combout\,
	cout => \PC[0]~9\);

-- Location: LCCOMB_X18_Y15_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = PC(0) $ (VCC)
-- \Add1~1\ = CARRY(PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X22_Y17_N24
\InEX_MEM~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~3_combout\ = (InID_EX(15)) # ((\Equal0~4_combout\ & ((\desvio~1_combout\))) # (!\Equal0~4_combout\ & (\desvio~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datab => InID_EX(15),
	datac => \desvio~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~3_combout\);

-- Location: FF_X22_Y17_N25
\InEX_MEM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(15));

-- Location: LCCOMB_X19_Y17_N20
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!InEX_MEM(13) & (!InEX_MEM(15) & InEX_MEM(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => InEX_MEM(13),
	datac => InEX_MEM(15),
	datad => InEX_MEM(14),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X18_Y15_N26
\Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (InEX_MEM(12) & (\Add1~0_combout\)) # (!InEX_MEM(12) & ((\Equal3~0_combout\ & ((InEX_MEM(0)))) # (!\Equal3~0_combout\ & (\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(12),
	datab => \Add1~0_combout\,
	datac => InEX_MEM(0),
	datad => \Equal3~0_combout\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X22_Y17_N22
\desvio~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desvio~2_combout\ = (\Equal0~4_combout\ & ((!\desvio~1_combout\))) # (!\Equal0~4_combout\ & (!\desvio~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datac => \desvio~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \desvio~2_combout\);

-- Location: FF_X18_Y17_N11
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[0]~8_combout\,
	asdata => \Add1~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X18_Y18_N26
\mem_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~2_combout\ = (PC(4) & ((PC(2) & ((PC(1)) # (!PC(0)))) # (!PC(2) & (PC(1) $ (PC(0)))))) # (!PC(4) & (PC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~2_combout\);

-- Location: LCCOMB_X18_Y17_N18
\PC[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[4]~16_combout\ = (PC(4) & (\PC[3]~15\ $ (GND))) # (!PC(4) & (!\PC[3]~15\ & VCC))
-- \PC[4]~17\ = CARRY((PC(4) & !\PC[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \PC[3]~15\,
	combout => \PC[4]~16_combout\,
	cout => \PC[4]~17\);

-- Location: LCCOMB_X18_Y17_N20
\PC[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[5]~18_combout\ = (PC(5) & (!\PC[4]~17\)) # (!PC(5) & ((\PC[4]~17\) # (GND)))
-- \PC[5]~19\ = CARRY((!\PC[4]~17\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datad => VCC,
	cin => \PC[4]~17\,
	combout => \PC[5]~18_combout\,
	cout => \PC[5]~19\);

-- Location: LCCOMB_X18_Y17_N22
\PC[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[6]~20_combout\ = (PC(6) & (\PC[5]~19\ $ (GND))) # (!PC(6) & (!\PC[5]~19\ & VCC))
-- \PC[6]~21\ = CARRY((PC(6) & !\PC[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datad => VCC,
	cin => \PC[5]~19\,
	combout => \PC[6]~20_combout\,
	cout => \PC[6]~21\);

-- Location: LCCOMB_X18_Y17_N24
\PC[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[7]~22_combout\ = \PC[6]~21\ $ (PC(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(7),
	cin => \PC[6]~21\,
	combout => \PC[7]~22_combout\);

-- Location: LCCOMB_X19_Y17_N24
\InEX_MEM~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~10_combout\ = (InID_EX(6)) # ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(6),
	datab => \desvio~1_combout\,
	datac => \desvio~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~10_combout\);

-- Location: FF_X19_Y17_N25
\InEX_MEM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(6));

-- Location: LCCOMB_X18_Y18_N2
\mem_i~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~10_combout\ = (PC(1) & (PC(4) & ((!PC(0))))) # (!PC(1) & (((PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~10_combout\);

-- Location: LCCOMB_X19_Y18_N30
\InIF_ID~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~6_combout\ = ((PC(3) & (!\mem_i~11_combout\)) # (!PC(3) & ((\mem_i~10_combout\)))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~11_combout\,
	datab => PC(3),
	datac => \InIF_ID~0_combout\,
	datad => \mem_i~10_combout\,
	combout => \InIF_ID~6_combout\);

-- Location: FF_X19_Y18_N31
\InIF_ID[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(5));

-- Location: LCCOMB_X23_Y17_N14
\InID_EX~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~5_combout\ = (InIF_ID(5)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => InIF_ID(5),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~5_combout\);

-- Location: FF_X23_Y17_N15
\InID_EX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(5));

-- Location: LCCOMB_X22_Y15_N26
\InEX_MEM~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~9_combout\ = (InID_EX(5)) # ((\Equal0~4_combout\ & ((\desvio~1_combout\))) # (!\Equal0~4_combout\ & (\desvio~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datab => \desvio~1_combout\,
	datac => \Equal0~4_combout\,
	datad => InID_EX(5),
	combout => \InEX_MEM~9_combout\);

-- Location: FF_X22_Y15_N27
\InEX_MEM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(5));

-- Location: LCCOMB_X18_Y15_N22
\Add1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (InEX_MEM(12) & (\Add1~15_combout\)) # (!InEX_MEM(12) & ((\Equal3~0_combout\ & ((InEX_MEM(5)))) # (!\Equal3~0_combout\ & (\Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datab => InEX_MEM(12),
	datac => InEX_MEM(5),
	datad => \Equal3~0_combout\,
	combout => \Add1~17_combout\);

-- Location: FF_X18_Y17_N21
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[5]~18_combout\,
	asdata => \Add1~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X18_Y15_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (PC(1) & (!\Add1~1\)) # (!PC(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X18_Y15_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (PC(2) & (\Add1~3\ $ (GND))) # (!PC(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((PC(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X18_Y15_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (PC(4) & (\Add1~7\ $ (GND))) # (!PC(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((PC(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X18_Y15_N12
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (PC(6) & (\Add1~16\ $ (GND))) # (!PC(6) & (!\Add1~16\ & VCC))
-- \Add1~19\ = CARRY((PC(6) & !\Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X18_Y15_N14
\Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = \Add1~19\ $ (PC(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(7),
	cin => \Add1~19\,
	combout => \Add1~21_combout\);

-- Location: LCCOMB_X18_Y15_N30
\Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\Equal3~0_combout\ & ((InEX_MEM(12) & ((\Add1~21_combout\))) # (!InEX_MEM(12) & (InEX_MEM(6))))) # (!\Equal3~0_combout\ & (((\Add1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => InEX_MEM(6),
	datac => \Add1~21_combout\,
	datad => InEX_MEM(12),
	combout => \Add1~23_combout\);

-- Location: FF_X18_Y17_N25
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[7]~22_combout\,
	asdata => \Add1~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X18_Y15_N24
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (InEX_MEM(12) & (((\Add1~18_combout\)))) # (!InEX_MEM(12) & ((\Equal3~0_combout\ & (InEX_MEM(6))) # (!\Equal3~0_combout\ & ((\Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(12),
	datab => InEX_MEM(6),
	datac => \Add1~18_combout\,
	datad => \Equal3~0_combout\,
	combout => \Add1~20_combout\);

-- Location: FF_X18_Y17_N23
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[6]~20_combout\,
	asdata => \Add1~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X18_Y17_N8
\InIF_ID~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~0_combout\ = (!PC(5) & (!PC(7) & (!PC(6) & \R0ID_EX[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datab => PC(7),
	datac => PC(6),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InIF_ID~0_combout\);

-- Location: LCCOMB_X18_Y18_N28
\InIF_ID~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~2_combout\ = ((PC(3) & (!\mem_i~3_combout\)) # (!PC(3) & ((\mem_i~2_combout\)))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~3_combout\,
	datab => PC(3),
	datac => \mem_i~2_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~2_combout\);

-- Location: FF_X18_Y18_N29
\InIF_ID[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(12));

-- Location: LCCOMB_X22_Y17_N18
\InID_EX~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~1_combout\ = (InIF_ID(12)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => InIF_ID(12),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~1_combout\);

-- Location: FF_X22_Y17_N19
\InID_EX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(12));

-- Location: LCCOMB_X22_Y17_N12
\InEX_MEM~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~2_combout\ = (InID_EX(12)) # ((\Equal0~4_combout\ & ((\desvio~1_combout\))) # (!\Equal0~4_combout\ & (\desvio~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datab => InID_EX(12),
	datac => \desvio~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~2_combout\);

-- Location: FF_X22_Y17_N13
\InEX_MEM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(12));

-- Location: FF_X24_Y15_N5
\InMEM_WB[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(12),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(12));

-- Location: FF_X24_Y15_N15
\InMEM_WB[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(14),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(14));

-- Location: LCCOMB_X24_Y15_N28
\InMEM_WB[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InMEM_WB[13]~feeder_combout\ = InEX_MEM(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InEX_MEM(13),
	combout => \InMEM_WB[13]~feeder_combout\);

-- Location: FF_X24_Y15_N29
\InMEM_WB[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InMEM_WB[13]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(13));

-- Location: LCCOMB_X24_Y15_N20
\Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!InMEM_WB(15) & (!InMEM_WB(12) & (!InMEM_WB(14) & !InMEM_WB(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(15),
	datab => InMEM_WB(12),
	datac => InMEM_WB(14),
	datad => InMEM_WB(13),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X24_Y15_N30
\mem_d_rtl_0_bypass[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_d_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X24_Y15_N31
\mem_d_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(20));

-- Location: LCCOMB_X18_Y17_N28
\mem_i~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~21_combout\ = (PC(2) & ((PC(1) & ((PC(0)))) # (!PC(1) & ((!PC(0)) # (!PC(3)))))) # (!PC(2) & (PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~21_combout\);

-- Location: LCCOMB_X18_Y17_N4
\InIF_ID~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~16_combout\ = ((PC(4) & (!\mem_i~22_combout\)) # (!PC(4) & ((\mem_i~21_combout\)))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~22_combout\,
	datab => PC(4),
	datac => \mem_i~21_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~16_combout\);

-- Location: FF_X18_Y17_N5
\InIF_ID[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(9));

-- Location: LCCOMB_X23_Y17_N10
\InID_EX~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~13_combout\ = (InIF_ID(9)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => InIF_ID(9),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~13_combout\);

-- Location: FF_X23_Y17_N11
\InID_EX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(9));

-- Location: LCCOMB_X22_Y15_N18
\InID_EX~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~12_combout\ = (InIF_ID(11)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InIF_ID(11),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~12_combout\);

-- Location: FF_X22_Y15_N19
\InID_EX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(11));

-- Location: LCCOMB_X29_Y16_N18
\regs[15][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~16_combout\,
	combout => \regs[15][1]~feeder_combout\);

-- Location: LCCOMB_X24_Y15_N2
\regs[7][0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][0]~4_combout\ = ((InMEM_WB(15) & ((!InMEM_WB(13)) # (!InMEM_WB(12))))) # (!InMEM_WB(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(15),
	datab => InMEM_WB(12),
	datac => InMEM_WB(14),
	datad => InMEM_WB(13),
	combout => \regs[7][0]~4_combout\);

-- Location: LCCOMB_X21_Y17_N4
\InEX_MEM~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~14_combout\ = (InID_EX(11)) # ((\Equal0~4_combout\ & ((\desvio~1_combout\))) # (!\Equal0~4_combout\ & (\desvio~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datab => InID_EX(11),
	datac => \Equal0~4_combout\,
	datad => \desvio~1_combout\,
	combout => \InEX_MEM~14_combout\);

-- Location: FF_X21_Y17_N5
\InEX_MEM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(11));

-- Location: FF_X21_Y17_N13
\InMEM_WB[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(11),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(11));

-- Location: LCCOMB_X19_Y17_N22
\InEX_MEM~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~12_combout\ = (InID_EX(9)) # ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => \desvio~1_combout\,
	datac => \desvio~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~12_combout\);

-- Location: FF_X19_Y17_N23
\InEX_MEM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(9));

-- Location: FF_X21_Y17_N25
\InMEM_WB[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(9),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(9));

-- Location: LCCOMB_X23_Y17_N24
\InID_EX~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~14_combout\ = (InIF_ID(8)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InIF_ID(8),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~14_combout\);

-- Location: FF_X23_Y17_N25
\InID_EX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(8));

-- Location: LCCOMB_X22_Y17_N8
\InEX_MEM~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~11_combout\ = (InID_EX(8)) # ((\Equal0~4_combout\ & ((\desvio~1_combout\))) # (!\Equal0~4_combout\ & (\desvio~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datab => \desvio~1_combout\,
	datac => InID_EX(8),
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~11_combout\);

-- Location: FF_X22_Y17_N9
\InEX_MEM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(8));

-- Location: FF_X22_Y17_N3
\InMEM_WB[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(8));

-- Location: LCCOMB_X22_Y17_N28
\Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (InMEM_WB(10) & (InMEM_WB(11) & (InMEM_WB(9) & InMEM_WB(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(10),
	datab => InMEM_WB(11),
	datac => InMEM_WB(9),
	datad => InMEM_WB(8),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X22_Y17_N6
\regs[15][0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][0]~8_combout\ = (\regs[7][0]~4_combout\ & \Decoder0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[7][0]~4_combout\,
	datad => \Decoder0~3_combout\,
	combout => \regs[15][0]~8_combout\);

-- Location: FF_X29_Y16_N19
\regs[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[15][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[15][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][1]~q\);

-- Location: LCCOMB_X21_Y18_N4
\InIF_ID~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~13_combout\ = (!PC(3) & (PC(2) & ((PC(4)) # (!PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(1),
	datac => PC(3),
	datad => PC(2),
	combout => \InIF_ID~13_combout\);

-- Location: LCCOMB_X21_Y18_N26
\InIF_ID~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~14_combout\ = (\InIF_ID~13_combout\) # (((!\mem_i~19_combout\ & PC(3))) # (!\InIF_ID~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~19_combout\,
	datab => PC(3),
	datac => \InIF_ID~13_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~14_combout\);

-- Location: FF_X21_Y18_N27
\InIF_ID[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(10));

-- Location: LCCOMB_X21_Y17_N20
\InID_EX~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~11_combout\ = (InIF_ID(10)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R0ID_EX[3]~0_combout\,
	datac => InIF_ID(10),
	combout => \InID_EX~11_combout\);

-- Location: FF_X21_Y17_N21
\InID_EX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(10));

-- Location: LCCOMB_X28_Y17_N18
\regs[7][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~16_combout\,
	combout => \regs[7][1]~feeder_combout\);

-- Location: LCCOMB_X22_Y17_N20
\Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (InMEM_WB(10) & (!InMEM_WB(11) & (InMEM_WB(9) & InMEM_WB(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(10),
	datab => InMEM_WB(11),
	datac => InMEM_WB(9),
	datad => InMEM_WB(8),
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X25_Y17_N2
\regs[7][0]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][0]~48_combout\ = (\regs[7][0]~4_combout\ & \Decoder0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[7][0]~4_combout\,
	datad => \Decoder0~15_combout\,
	combout => \regs[7][0]~48_combout\);

-- Location: FF_X28_Y17_N19
\regs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[7][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[7][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][1]~q\);

-- Location: LCCOMB_X28_Y15_N24
\RwID_EX~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~7_combout\ = (InID_EX(10) & (((\regs[7][1]~q\) # (InID_EX(11))))) # (!InID_EX(10) & (\regs[3][1]~q\ & ((!InID_EX(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][1]~q\,
	datab => InID_EX(10),
	datac => \regs[7][1]~q\,
	datad => InID_EX(11),
	combout => \RwID_EX~7_combout\);

-- Location: LCCOMB_X28_Y15_N30
\RwID_EX~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~8_combout\ = (InID_EX(11) & ((\RwID_EX~7_combout\ & ((\regs[15][1]~q\))) # (!\RwID_EX~7_combout\ & (\regs[11][1]~q\)))) # (!InID_EX(11) & (((\RwID_EX~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][1]~q\,
	datab => InID_EX(11),
	datac => \regs[15][1]~q\,
	datad => \RwID_EX~7_combout\,
	combout => \RwID_EX~8_combout\);

-- Location: LCCOMB_X29_Y18_N24
\regs[12][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~16_combout\,
	combout => \regs[12][1]~feeder_combout\);

-- Location: LCCOMB_X21_Y17_N14
\InEX_MEM~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~13_combout\ = (InID_EX(10)) # ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~1_combout\,
	datab => InID_EX(10),
	datac => \Equal0~4_combout\,
	datad => \desvio~0_combout\,
	combout => \InEX_MEM~13_combout\);

-- Location: FF_X21_Y17_N15
\InEX_MEM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(10));

-- Location: FF_X21_Y17_N27
\InMEM_WB[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(10),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(10));

-- Location: LCCOMB_X26_Y17_N16
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (InMEM_WB(11) & (InMEM_WB(10) & (!InMEM_WB(8) & !InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(11),
	datab => InMEM_WB(10),
	datac => InMEM_WB(8),
	datad => InMEM_WB(9),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X26_Y16_N28
\regs[12][0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][0]~7_combout\ = (\regs[7][0]~4_combout\ & \Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[7][0]~4_combout\,
	datad => \Decoder0~2_combout\,
	combout => \regs[12][0]~7_combout\);

-- Location: FF_X29_Y18_N25
\regs[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[12][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[12][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][1]~q\);

-- Location: LCCOMB_X24_Y15_N24
\regs[8][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~16_combout\,
	combout => \regs[8][1]~feeder_combout\);

-- Location: LCCOMB_X21_Y17_N22
\Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!InMEM_WB(10) & (!InMEM_WB(8) & (InMEM_WB(11) & !InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(10),
	datab => InMEM_WB(8),
	datac => InMEM_WB(11),
	datad => InMEM_WB(9),
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X24_Y16_N14
\regs[8][0]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][0]~43_combout\ = (\Decoder0~10_combout\ & \regs[7][0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~10_combout\,
	datad => \regs[7][0]~4_combout\,
	combout => \regs[8][0]~43_combout\);

-- Location: FF_X24_Y15_N25
\regs[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[8][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[8][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][1]~q\);

-- Location: LCCOMB_X21_Y17_N28
\Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!InMEM_WB(10) & (!InMEM_WB(8) & (!InMEM_WB(11) & !InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(10),
	datab => InMEM_WB(8),
	datac => InMEM_WB(11),
	datad => InMEM_WB(9),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X24_Y17_N16
\regs[0][0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][0]~11_combout\ = (\Decoder0~6_combout\ & \regs[7][0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~6_combout\,
	datad => \regs[7][0]~4_combout\,
	combout => \regs[0][0]~11_combout\);

-- Location: FF_X28_Y15_N11
\regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][1]~q\);

-- Location: LCCOMB_X28_Y15_N10
\RwID_EX~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~4_combout\ = (InID_EX(11) & ((\regs[8][1]~q\) # ((InID_EX(10))))) # (!InID_EX(11) & (((\regs[0][1]~q\ & !InID_EX(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(11),
	datab => \regs[8][1]~q\,
	datac => \regs[0][1]~q\,
	datad => InID_EX(10),
	combout => \RwID_EX~4_combout\);

-- Location: LCCOMB_X24_Y18_N10
\RwID_EX~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~5_combout\ = (InID_EX(10) & ((\RwID_EX~4_combout\ & ((\regs[12][1]~q\))) # (!\RwID_EX~4_combout\ & (\regs[4][1]~q\)))) # (!InID_EX(10) & (((\RwID_EX~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][1]~q\,
	datab => \regs[12][1]~q\,
	datac => InID_EX(10),
	datad => \RwID_EX~4_combout\,
	combout => \RwID_EX~5_combout\);

-- Location: LCCOMB_X26_Y18_N14
\RwID_EX~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~6_combout\ = (InID_EX(8) & ((\RwID_EX~3_combout\) # ((InID_EX(9))))) # (!InID_EX(8) & (((!InID_EX(9) & \RwID_EX~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RwID_EX~3_combout\,
	datab => InID_EX(8),
	datac => InID_EX(9),
	datad => \RwID_EX~5_combout\,
	combout => \RwID_EX~6_combout\);

-- Location: LCCOMB_X22_Y18_N18
\RwID_EX~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~9_combout\ = (InID_EX(9) & ((\RwID_EX~6_combout\ & ((\RwID_EX~8_combout\))) # (!\RwID_EX~6_combout\ & (\RwID_EX~1_combout\)))) # (!InID_EX(9) & (((\RwID_EX~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RwID_EX~1_combout\,
	datab => InID_EX(9),
	datac => \RwID_EX~8_combout\,
	datad => \RwID_EX~6_combout\,
	combout => \RwID_EX~9_combout\);

-- Location: LCCOMB_X22_Y18_N22
\RwID_EX~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~10_combout\ = (\R0ID_EX[3]~0_combout\ & \RwID_EX~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~0_combout\,
	datad => \RwID_EX~9_combout\,
	combout => \RwID_EX~10_combout\);

-- Location: LCCOMB_X21_Y17_N0
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!InID_EX(13) & !InID_EX(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => InID_EX(13),
	datad => InID_EX(12),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X22_Y18_N12
\RwID_EX[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX[0]~11_combout\ = (InID_EX(14)) # ((InID_EX(15)) # ((\Equal4~1_combout\) # (!\desvio~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(14),
	datab => InID_EX(15),
	datac => \Equal4~1_combout\,
	datad => \desvio~2_combout\,
	combout => \RwID_EX[0]~11_combout\);

-- Location: FF_X22_Y18_N23
\RwID_EX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwID_EX~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \RwID_EX[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwID_EX(1));

-- Location: FF_X23_Y16_N3
\RwEX_MEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwID_EX(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwEX_MEM(1));

-- Location: FF_X26_Y15_N27
\mem_d_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(19));

-- Location: LCCOMB_X22_Y17_N30
\InID_EX~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~10_combout\ = (InIF_ID(2)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InIF_ID(2),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~10_combout\);

-- Location: FF_X22_Y17_N31
\InID_EX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(2));

-- Location: LCCOMB_X21_Y16_N30
\InEX_MEM~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~6_combout\ = (InID_EX(2)) # ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~1_combout\,
	datab => InID_EX(2),
	datac => \desvio~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~6_combout\);

-- Location: FF_X19_Y16_N1
\InEX_MEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InEX_MEM~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(2));

-- Location: FF_X22_Y15_N17
\InMEM_WB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(2));

-- Location: FF_X19_Y16_N11
\InMEM_WB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(0));

-- Location: LCCOMB_X22_Y15_N24
\mem_d~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~34_combout\ = (!InMEM_WB(1) & (!InMEM_WB(2) & !InMEM_WB(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(1),
	datab => InMEM_WB(2),
	datad => InMEM_WB(0),
	combout => \mem_d~34_combout\);

-- Location: LCCOMB_X24_Y15_N4
\Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!InMEM_WB(15) & (InMEM_WB(14) & (InMEM_WB(12) & InMEM_WB(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(15),
	datab => InMEM_WB(14),
	datac => InMEM_WB(12),
	datad => InMEM_WB(13),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X23_Y15_N10
\mem_d~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~35_combout\ = (\mem_d~33_combout\ & (\mem_d~34_combout\ & (!\reset~input_o\ & \Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~33_combout\,
	datab => \mem_d~34_combout\,
	datac => \reset~input_o\,
	datad => \Equal8~0_combout\,
	combout => \mem_d~35_combout\);

-- Location: FF_X26_Y15_N1
\mem_d~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(1),
	sload => VCC,
	ena => \mem_d~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~19_q\);

-- Location: LCCOMB_X26_Y15_N8
\mem_d_rtl_0_bypass[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_d_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X26_Y15_N9
\mem_d_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(18));

-- Location: FF_X26_Y15_N5
\mem_d_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(17));

-- Location: FF_X26_Y15_N3
\mem_d~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(0),
	sload => VCC,
	ena => \mem_d~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~18_q\);

-- Location: LCCOMB_X19_Y17_N28
\InEX_MEM~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~5_combout\ = (InID_EX(1)) # ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \desvio~1_combout\,
	datac => \desvio~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~5_combout\);

-- Location: FF_X19_Y16_N19
\InEX_MEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InEX_MEM~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(1));

-- Location: LCCOMB_X23_Y15_N14
\InMEM_WB[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InMEM_WB[1]~feeder_combout\ = InEX_MEM(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InEX_MEM(1),
	combout => \InMEM_WB[1]~feeder_combout\);

-- Location: FF_X23_Y15_N15
\InMEM_WB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InMEM_WB[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(1));

-- Location: FF_X22_Y15_N9
\InMEM_WB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(3));

-- Location: LCCOMB_X22_Y15_N4
\InEX_MEM~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~8_combout\ = (InID_EX(4)) # ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => \desvio~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \desvio~0_combout\,
	combout => \InEX_MEM~8_combout\);

-- Location: FF_X22_Y15_N5
\InEX_MEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(4));

-- Location: FF_X22_Y15_N11
\InMEM_WB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(4));

-- Location: FF_X22_Y15_N3
\InMEM_WB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(5));

-- Location: LCCOMB_X24_Y15_N16
\InMEM_WB[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InMEM_WB[6]~feeder_combout\ = InEX_MEM(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InEX_MEM(6),
	combout => \InMEM_WB[6]~feeder_combout\);

-- Location: FF_X24_Y15_N17
\InMEM_WB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InMEM_WB[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InMEM_WB(6));

-- Location: FF_X24_Y17_N21
\regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][2]~q\);

-- Location: LCCOMB_X23_Y16_N8
\InID_EX~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~4_combout\ = (InIF_ID(4)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InIF_ID(4),
	datac => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~4_combout\);

-- Location: FF_X23_Y16_N9
\InID_EX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(4));

-- Location: LCCOMB_X24_Y18_N24
\R0ID_EX~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~13_combout\ = (InID_EX(5) & (((InID_EX(4))))) # (!InID_EX(5) & ((InID_EX(4) & (\regs[1][2]~q\)) # (!InID_EX(4) & ((\regs[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][2]~q\,
	datab => \regs[0][2]~q\,
	datac => InID_EX(5),
	datad => InID_EX(4),
	combout => \R0ID_EX~13_combout\);

-- Location: LCCOMB_X26_Y17_N14
\Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!InMEM_WB(11) & (!InMEM_WB(10) & (!InMEM_WB(8) & InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(11),
	datab => InMEM_WB(10),
	datac => InMEM_WB(8),
	datad => InMEM_WB(9),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X26_Y17_N6
\regs[2][0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][0]~9_combout\ = (\Decoder0~4_combout\ & \regs[7][0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~4_combout\,
	datad => \regs[7][0]~4_combout\,
	combout => \regs[2][0]~9_combout\);

-- Location: FF_X24_Y17_N3
\regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][2]~q\);

-- Location: LCCOMB_X26_Y17_N26
\Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!InMEM_WB(11) & (!InMEM_WB(10) & (InMEM_WB(8) & InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(11),
	datab => InMEM_WB(10),
	datac => InMEM_WB(8),
	datad => InMEM_WB(9),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X26_Y17_N20
\regs[3][0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[3][0]~12_combout\ = (\Decoder0~7_combout\ & \regs[7][0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~7_combout\,
	datad => \regs[7][0]~4_combout\,
	combout => \regs[3][0]~12_combout\);

-- Location: FF_X25_Y15_N29
\regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][2]~q\);

-- Location: LCCOMB_X24_Y18_N14
\R0ID_EX~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~14_combout\ = (InID_EX(5) & ((\R0ID_EX~13_combout\ & ((\regs[3][2]~q\))) # (!\R0ID_EX~13_combout\ & (\regs[2][2]~q\)))) # (!InID_EX(5) & (\R0ID_EX~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(5),
	datab => \R0ID_EX~13_combout\,
	datac => \regs[2][2]~q\,
	datad => \regs[3][2]~q\,
	combout => \R0ID_EX~14_combout\);

-- Location: LCCOMB_X25_Y17_N18
\regs[13][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][2]~feeder_combout\ = \regs~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~20_combout\,
	combout => \regs[13][2]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N2
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (InMEM_WB(11) & (InMEM_WB(10) & (InMEM_WB(8) & !InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(11),
	datab => InMEM_WB(10),
	datac => InMEM_WB(8),
	datad => InMEM_WB(9),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X26_Y17_N8
\regs[13][0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][0]~5_combout\ = (\regs[7][0]~4_combout\ & \Decoder0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[7][0]~4_combout\,
	datad => \Decoder0~0_combout\,
	combout => \regs[13][0]~5_combout\);

-- Location: FF_X25_Y17_N19
\regs[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[13][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[13][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][2]~q\);

-- Location: LCCOMB_X26_Y17_N18
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (InMEM_WB(11) & (InMEM_WB(10) & (!InMEM_WB(8) & InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(11),
	datab => InMEM_WB(10),
	datac => InMEM_WB(8),
	datad => InMEM_WB(9),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X26_Y17_N24
\regs[14][0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][0]~6_combout\ = (\regs[7][0]~4_combout\ & \Decoder0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[7][0]~4_combout\,
	datad => \Decoder0~1_combout\,
	combout => \regs[14][0]~6_combout\);

-- Location: FF_X26_Y16_N3
\regs[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][2]~q\);

-- Location: LCCOMB_X26_Y16_N2
\R0ID_EX~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~11_combout\ = (InID_EX(5) & (((\regs[14][2]~q\) # (InID_EX(4))))) # (!InID_EX(5) & (\regs[12][2]~q\ & ((!InID_EX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][2]~q\,
	datab => InID_EX(5),
	datac => \regs[14][2]~q\,
	datad => InID_EX(4),
	combout => \R0ID_EX~11_combout\);

-- Location: LCCOMB_X26_Y16_N6
\R0ID_EX~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~12_combout\ = (InID_EX(4) & ((\R0ID_EX~11_combout\ & ((\regs[15][2]~q\))) # (!\R0ID_EX~11_combout\ & (\regs[13][2]~q\)))) # (!InID_EX(4) & (((\R0ID_EX~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => \regs[13][2]~q\,
	datac => \regs[15][2]~q\,
	datad => \R0ID_EX~11_combout\,
	combout => \R0ID_EX~12_combout\);

-- Location: LCCOMB_X19_Y16_N26
\R0ID_EX~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~15_combout\ = (\R0ID_EX[3]~0_combout\ & ((InID_EX(6) & ((\R0ID_EX~12_combout\))) # (!InID_EX(6) & (\R0ID_EX~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(6),
	datab => \R0ID_EX~14_combout\,
	datac => \R0ID_EX~12_combout\,
	datad => \R0ID_EX[3]~0_combout\,
	combout => \R0ID_EX~15_combout\);

-- Location: FF_X19_Y16_N27
\R0ID_EX[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R0ID_EX~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0ID_EX[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y16_N0
\InID_EX~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~7_combout\ = (InIF_ID(1)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InIF_ID(1),
	datac => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~7_combout\);

-- Location: FF_X23_Y16_N1
\InID_EX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(1));

-- Location: LCCOMB_X24_Y18_N12
\regs[14][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~16_combout\,
	combout => \regs[14][1]~feeder_combout\);

-- Location: FF_X24_Y18_N13
\regs[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[14][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[14][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][1]~q\);

-- Location: FF_X28_Y15_N13
\regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][1]~q\);

-- Location: LCCOMB_X28_Y15_N28
\R1ID_EX~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~14_combout\ = (InID_EX(3) & ((\regs[10][1]~q\) # ((InID_EX(2))))) # (!InID_EX(3) & (((\regs[2][1]~q\ & !InID_EX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][1]~q\,
	datab => \regs[2][1]~q\,
	datac => InID_EX(3),
	datad => InID_EX(2),
	combout => \R1ID_EX~14_combout\);

-- Location: LCCOMB_X28_Y15_N22
\R1ID_EX~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~15_combout\ = (InID_EX(2) & ((\R1ID_EX~14_combout\ & ((\regs[14][1]~q\))) # (!\R1ID_EX~14_combout\ & (\regs[6][1]~q\)))) # (!InID_EX(2) & (((\R1ID_EX~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][1]~q\,
	datab => InID_EX(2),
	datac => \regs[14][1]~q\,
	datad => \R1ID_EX~14_combout\,
	combout => \R1ID_EX~15_combout\);

-- Location: LCCOMB_X28_Y17_N0
\regs[4][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~16_combout\,
	combout => \regs[4][1]~feeder_combout\);

-- Location: LCCOMB_X21_Y17_N10
\regs[4][0]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][0]~47_combout\ = (\Decoder0~14_combout\ & \regs[7][0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~14_combout\,
	datad => \regs[7][0]~4_combout\,
	combout => \regs[4][0]~47_combout\);

-- Location: FF_X28_Y17_N1
\regs[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[4][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[4][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][1]~q\);

-- Location: LCCOMB_X28_Y15_N4
\R1ID_EX~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~18_combout\ = (InID_EX(2) & (((InID_EX(3))))) # (!InID_EX(2) & ((InID_EX(3) & ((\regs[8][1]~q\))) # (!InID_EX(3) & (\regs[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][1]~q\,
	datab => InID_EX(2),
	datac => InID_EX(3),
	datad => \regs[8][1]~q\,
	combout => \R1ID_EX~18_combout\);

-- Location: LCCOMB_X28_Y15_N14
\R1ID_EX~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~19_combout\ = (\R1ID_EX~18_combout\ & ((\regs[12][1]~q\) # ((!InID_EX(2))))) # (!\R1ID_EX~18_combout\ & (((\regs[4][1]~q\ & InID_EX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][1]~q\,
	datab => \regs[4][1]~q\,
	datac => \R1ID_EX~18_combout\,
	datad => InID_EX(2),
	combout => \R1ID_EX~19_combout\);

-- Location: LCCOMB_X23_Y17_N0
\InIF_ID~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~9_combout\ = (PC(3) & (((PC(1) & !PC(4))) # (!PC(2)))) # (!PC(3) & (PC(4) & ((PC(1)) # (PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(3),
	datac => PC(2),
	datad => PC(4),
	combout => \InIF_ID~9_combout\);

-- Location: LCCOMB_X23_Y17_N16
\InIF_ID~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~10_combout\ = ((PC(0) & ((!PC(2)) # (!\InIF_ID~9_combout\))) # (!PC(0) & ((\InIF_ID~9_combout\) # (PC(2))))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => \InIF_ID~9_combout\,
	datac => PC(2),
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~10_combout\);

-- Location: FF_X23_Y17_N17
\InIF_ID[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(0));

-- Location: LCCOMB_X26_Y17_N4
\InID_EX~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~8_combout\ = (InIF_ID(0)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => InIF_ID(0),
	combout => \InID_EX~8_combout\);

-- Location: FF_X26_Y17_N5
\InID_EX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(0));

-- Location: LCCOMB_X28_Y14_N24
\regs[9][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~16_combout\,
	combout => \regs[9][1]~feeder_combout\);

-- Location: LCCOMB_X21_Y17_N18
\Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!InMEM_WB(10) & (InMEM_WB(8) & (InMEM_WB(11) & !InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(10),
	datab => InMEM_WB(8),
	datac => InMEM_WB(11),
	datad => InMEM_WB(9),
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X25_Y17_N22
\regs[9][0]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][0]~42_combout\ = (\regs[7][0]~4_combout\ & \Decoder0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[7][0]~4_combout\,
	datad => \Decoder0~9_combout\,
	combout => \regs[9][0]~42_combout\);

-- Location: FF_X28_Y14_N25
\regs[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[9][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][1]~q\);

-- Location: LCCOMB_X21_Y17_N26
\Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (!InMEM_WB(11) & (InMEM_WB(8) & (InMEM_WB(10) & !InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(11),
	datab => InMEM_WB(8),
	datac => InMEM_WB(10),
	datad => InMEM_WB(9),
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X22_Y17_N2
\regs[5][0]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][0]~45_combout\ = (\regs[7][0]~4_combout\ & \Decoder0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[7][0]~4_combout\,
	datad => \Decoder0~12_combout\,
	combout => \regs[5][0]~45_combout\);

-- Location: FF_X25_Y16_N29
\regs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][1]~q\);

-- Location: LCCOMB_X25_Y16_N16
\regs[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[1][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~16_combout\,
	combout => \regs[1][1]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N0
\Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!InMEM_WB(11) & (!InMEM_WB(10) & (InMEM_WB(8) & !InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(11),
	datab => InMEM_WB(10),
	datac => InMEM_WB(8),
	datad => InMEM_WB(9),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X25_Y17_N0
\regs[1][0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[1][0]~10_combout\ = (\Decoder0~5_combout\ & \regs[7][0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decoder0~5_combout\,
	datad => \regs[7][0]~4_combout\,
	combout => \regs[1][0]~10_combout\);

-- Location: FF_X25_Y16_N17
\regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][1]~q\);

-- Location: LCCOMB_X25_Y16_N14
\R1ID_EX~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~16_combout\ = (InID_EX(2) & ((\regs[5][1]~q\) # ((InID_EX(3))))) # (!InID_EX(2) & (((!InID_EX(3) & \regs[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(2),
	datab => \regs[5][1]~q\,
	datac => InID_EX(3),
	datad => \regs[1][1]~q\,
	combout => \R1ID_EX~16_combout\);

-- Location: LCCOMB_X28_Y16_N20
\R1ID_EX~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~17_combout\ = (InID_EX(3) & ((\R1ID_EX~16_combout\ & (\regs[13][1]~q\)) # (!\R1ID_EX~16_combout\ & ((\regs[9][1]~q\))))) # (!InID_EX(3) & (((\R1ID_EX~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(3),
	datab => \regs[13][1]~q\,
	datac => \regs[9][1]~q\,
	datad => \R1ID_EX~16_combout\,
	combout => \R1ID_EX~17_combout\);

-- Location: LCCOMB_X28_Y15_N0
\R1ID_EX~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~20_combout\ = (InID_EX(1) & (((InID_EX(0))))) # (!InID_EX(1) & ((InID_EX(0) & ((\R1ID_EX~17_combout\))) # (!InID_EX(0) & (\R1ID_EX~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \R1ID_EX~19_combout\,
	datac => InID_EX(0),
	datad => \R1ID_EX~17_combout\,
	combout => \R1ID_EX~20_combout\);

-- Location: LCCOMB_X28_Y16_N14
\R1ID_EX~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~23_combout\ = (InID_EX(1) & ((\R1ID_EX~20_combout\ & (\R1ID_EX~22_combout\)) # (!\R1ID_EX~20_combout\ & ((\R1ID_EX~15_combout\))))) # (!InID_EX(1) & (((\R1ID_EX~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~22_combout\,
	datab => InID_EX(1),
	datac => \R1ID_EX~15_combout\,
	datad => \R1ID_EX~20_combout\,
	combout => \R1ID_EX~23_combout\);

-- Location: LCCOMB_X21_Y16_N18
\R1ID_EX~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~24_combout\ = (\R0ID_EX[3]~0_combout\ & \R1ID_EX~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R1ID_EX~23_combout\,
	combout => \R1ID_EX~24_combout\);

-- Location: LCCOMB_X21_Y18_N18
\mem_i~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~6_combout\ = (PC(1) & ((PC(4) $ (PC(0))) # (!PC(2)))) # (!PC(1) & (PC(0) & (PC(4) $ (!PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~6_combout\);

-- Location: LCCOMB_X21_Y18_N8
\InIF_ID~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~4_combout\ = ((PC(3) & (!\mem_i~7_combout\)) # (!PC(3) & ((!\mem_i~6_combout\)))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~7_combout\,
	datab => PC(3),
	datac => \mem_i~6_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~4_combout\);

-- Location: FF_X21_Y18_N9
\InIF_ID[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(14));

-- Location: LCCOMB_X21_Y18_N16
\InID_EX~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~3_combout\ = (InIF_ID(14)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => InIF_ID(14),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~3_combout\);

-- Location: FF_X21_Y18_N17
\InID_EX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(14));

-- Location: LCCOMB_X22_Y17_N16
\R1ID_EX[4]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX[4]~91_combout\ = (InID_EX(15)) # (InID_EX(14) $ (((!InID_EX(13) & !InID_EX(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(13),
	datab => InID_EX(15),
	datac => InID_EX(14),
	datad => InID_EX(12),
	combout => \R1ID_EX[4]~91_combout\);

-- Location: LCCOMB_X17_Y16_N4
\R1ID_EX[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX[4]~13_combout\ = ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\)))) # (!\R1ID_EX[4]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~1_combout\,
	datab => \desvio~0_combout\,
	datac => \R1ID_EX[4]~91_combout\,
	datad => \Equal0~4_combout\,
	combout => \R1ID_EX[4]~13_combout\);

-- Location: FF_X21_Y16_N19
\R1ID_EX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R1ID_EX~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \R1ID_EX[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1ID_EX(1));

-- Location: LCCOMB_X21_Y17_N30
\Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = InEX_MEM(13) $ (((InEX_MEM(15) & (InEX_MEM(1))) # (!InEX_MEM(15) & ((R1ID_EX(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(13),
	datab => InEX_MEM(1),
	datac => R1ID_EX(1),
	datad => InEX_MEM(15),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X22_Y16_N0
\ulaEX_MEM[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[0]~9_cout\ = CARRY(InEX_MEM(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(13),
	datad => VCC,
	cout => \ulaEX_MEM[0]~9_cout\);

-- Location: LCCOMB_X22_Y16_N6
\ulaEX_MEM[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[2]~19_combout\ = (\Add2~2_combout\ & ((\R0ID_EX[2]~_Duplicate_1_q\ & (\ulaEX_MEM[1]~17\ & VCC)) # (!\R0ID_EX[2]~_Duplicate_1_q\ & (!\ulaEX_MEM[1]~17\)))) # (!\Add2~2_combout\ & ((\R0ID_EX[2]~_Duplicate_1_q\ & (!\ulaEX_MEM[1]~17\)) # 
-- (!\R0ID_EX[2]~_Duplicate_1_q\ & ((\ulaEX_MEM[1]~17\) # (GND)))))
-- \ulaEX_MEM[2]~20\ = CARRY((\Add2~2_combout\ & (!\R0ID_EX[2]~_Duplicate_1_q\ & !\ulaEX_MEM[1]~17\)) # (!\Add2~2_combout\ & ((!\ulaEX_MEM[1]~17\) # (!\R0ID_EX[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \R0ID_EX[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ulaEX_MEM[1]~17\,
	combout => \ulaEX_MEM[2]~19_combout\,
	cout => \ulaEX_MEM[2]~20\);

-- Location: LCCOMB_X19_Y16_N10
\Mult0|auto_generated|cs1a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs1a[1]~0_combout\ = InEX_MEM(3) $ (((InEX_MEM(2) & InEX_MEM(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(3),
	datab => InEX_MEM(2),
	datad => InEX_MEM(1),
	combout => \Mult0|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X18_Y16_N18
\Mult0|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|le3a\(2) & (\Mult0|auto_generated|cs1a[1]~0_combout\ $ (VCC))) # (!\Mult0|auto_generated|le3a\(2) & (\Mult0|auto_generated|cs1a[1]~0_combout\ & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|le3a\(2) & \Mult0|auto_generated|cs1a[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(2),
	datab => \Mult0|auto_generated|cs1a[1]~0_combout\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X19_Y16_N18
\Mult0|auto_generated|le3a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((InEX_MEM(0) & (\R0ID_EX[1]~_Duplicate_1_q\ $ ((InEX_MEM(1))))) # (!InEX_MEM(0) & (((InEX_MEM(1) & !\R0ID_EX[0]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(0),
	datab => \R0ID_EX[1]~_Duplicate_1_q\,
	datac => InEX_MEM(1),
	datad => \R0ID_EX[0]~_Duplicate_1_q\,
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X19_Y16_N0
\Mult0|auto_generated|le3a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(InEX_MEM(1) $ (((InEX_MEM(0) & \R0ID_EX[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(1),
	datab => InEX_MEM(0),
	datad => \R0ID_EX[0]~_Duplicate_1_q\,
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X18_Y16_N4
\Mult0|auto_generated|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~4_combout\ = ((\Mult0|auto_generated|le4a\(0) $ (\Mult0|auto_generated|op_1~0_combout\ $ (!\Mult0|auto_generated|op_3~3\)))) # (GND)
-- \Mult0|auto_generated|op_3~5\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|op_1~0_combout\) # (!\Mult0|auto_generated|op_3~3\))) # (!\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|op_1~0_combout\ & 
-- !\Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~3\,
	combout => \Mult0|auto_generated|op_3~4_combout\,
	cout => \Mult0|auto_generated|op_3~5\);

-- Location: FF_X19_Y16_N23
\R0ID_EX[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \R0ID_EX~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0ID_EX[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y16_N8
\ulaEX_MEM[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[3]~22_combout\ = ((\Add2~3_combout\ $ (\R0ID_EX[3]~_Duplicate_1_q\ $ (!\ulaEX_MEM[2]~20\)))) # (GND)
-- \ulaEX_MEM[3]~23\ = CARRY((\Add2~3_combout\ & ((\R0ID_EX[3]~_Duplicate_1_q\) # (!\ulaEX_MEM[2]~20\))) # (!\Add2~3_combout\ & (\R0ID_EX[3]~_Duplicate_1_q\ & !\ulaEX_MEM[2]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~3_combout\,
	datab => \R0ID_EX[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ulaEX_MEM[2]~20\,
	combout => \ulaEX_MEM[3]~22_combout\,
	cout => \ulaEX_MEM[3]~23\);

-- Location: LCCOMB_X19_Y16_N16
\Mult0|auto_generated|le3a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((InEX_MEM(0) & (\R0ID_EX[3]~_Duplicate_1_q\ $ (((InEX_MEM(1)))))) # (!InEX_MEM(0) & (((!\R0ID_EX[2]~_Duplicate_1_q\ & InEX_MEM(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~_Duplicate_1_q\,
	datab => InEX_MEM(0),
	datac => \R0ID_EX[2]~_Duplicate_1_q\,
	datad => InEX_MEM(1),
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X18_Y16_N20
\Mult0|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|le3a\(3) & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|le3a\(3) & ((\Mult0|auto_generated|op_1~1\) # (GND)))
-- \Mult0|auto_generated|op_1~3\ = CARRY((!\Mult0|auto_generated|op_1~1\) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y16_N6
\Mult0|auto_generated|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~6_combout\ = (\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (\Mult0|auto_generated|op_3~5\ & VCC)) # (!\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)))) # 
-- (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|op_3~5\) # (GND)))))
-- \Mult0|auto_generated|op_3~7\ = CARRY((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_1~2_combout\ & !\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|le4a\(1) & ((!\Mult0|auto_generated|op_3~5\) # 
-- (!\Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(1),
	datab => \Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~5\,
	combout => \Mult0|auto_generated|op_3~6_combout\,
	cout => \Mult0|auto_generated|op_3~7\);

-- Location: FF_X19_Y16_N29
\R0ID_EX[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R0ID_EX~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0ID_EX[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y16_N10
\ulaEX_MEM[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[4]~25_combout\ = (\Add2~4_combout\ & ((\R0ID_EX[4]~_Duplicate_1_q\ & (\ulaEX_MEM[3]~23\ & VCC)) # (!\R0ID_EX[4]~_Duplicate_1_q\ & (!\ulaEX_MEM[3]~23\)))) # (!\Add2~4_combout\ & ((\R0ID_EX[4]~_Duplicate_1_q\ & (!\ulaEX_MEM[3]~23\)) # 
-- (!\R0ID_EX[4]~_Duplicate_1_q\ & ((\ulaEX_MEM[3]~23\) # (GND)))))
-- \ulaEX_MEM[4]~26\ = CARRY((\Add2~4_combout\ & (!\R0ID_EX[4]~_Duplicate_1_q\ & !\ulaEX_MEM[3]~23\)) # (!\Add2~4_combout\ & ((!\ulaEX_MEM[3]~23\) # (!\R0ID_EX[4]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \R0ID_EX[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ulaEX_MEM[3]~23\,
	combout => \ulaEX_MEM[4]~25_combout\,
	cout => \ulaEX_MEM[4]~26\);

-- Location: LCCOMB_X19_Y15_N2
\Mult0|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL((\R0ID_EX[0]~_Duplicate_1_q\ & ((InEX_MEM(3)) # ((InEX_MEM(2) & InEX_MEM(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(2),
	datab => InEX_MEM(1),
	datac => InEX_MEM(3),
	datad => \R0ID_EX[0]~_Duplicate_1_q\,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X18_Y16_N8
\Mult0|auto_generated|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~8_combout\ = ((\Mult0|auto_generated|op_1~4_combout\ $ (\Mult0|auto_generated|le5a\(0) $ (!\Mult0|auto_generated|op_3~7\)))) # (GND)
-- \Mult0|auto_generated|op_3~9\ = CARRY((\Mult0|auto_generated|op_1~4_combout\ & ((\Mult0|auto_generated|le5a\(0)) # (!\Mult0|auto_generated|op_3~7\))) # (!\Mult0|auto_generated|op_1~4_combout\ & (\Mult0|auto_generated|le5a\(0) & 
-- !\Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~4_combout\,
	datab => \Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~7\,
	combout => \Mult0|auto_generated|op_3~8_combout\,
	cout => \Mult0|auto_generated|op_3~9\);

-- Location: FF_X23_Y15_N3
\mem_d_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(16));

-- Location: FF_X23_Y15_N5
\mem_d_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(14));

-- Location: FF_X23_Y15_N13
\mem_d_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InMEM_WB(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(15));

-- Location: LCCOMB_X23_Y15_N4
\mem_d~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~30_combout\ = (mem_d_rtl_0_bypass(13) & (mem_d_rtl_0_bypass(14) & (mem_d_rtl_0_bypass(16) $ (!mem_d_rtl_0_bypass(15))))) # (!mem_d_rtl_0_bypass(13) & (!mem_d_rtl_0_bypass(14) & (mem_d_rtl_0_bypass(16) $ (!mem_d_rtl_0_bypass(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_d_rtl_0_bypass(13),
	datab => mem_d_rtl_0_bypass(16),
	datac => mem_d_rtl_0_bypass(14),
	datad => mem_d_rtl_0_bypass(15),
	combout => \mem_d~30_combout\);

-- Location: LCCOMB_X23_Y15_N28
\mem_d~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~32_combout\ = (!\reset~input_o\ & \Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Equal8~0_combout\,
	combout => \mem_d~32_combout\);

-- Location: FF_X23_Y15_N7
\mem_d_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \mem_d~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(0));

-- Location: FF_X23_Y15_N17
\mem_d_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InMEM_WB(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(5));

-- Location: LCCOMB_X23_Y15_N16
\mem_d~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~27_combout\ = mem_d_rtl_0_bypass(6) $ (mem_d_rtl_0_bypass(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_d_rtl_0_bypass(6),
	datac => mem_d_rtl_0_bypass(5),
	combout => \mem_d~27_combout\);

-- Location: FF_X23_Y15_N21
\mem_d_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InMEM_WB(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(7));

-- Location: LCCOMB_X23_Y16_N14
\mem_d_rtl_0_bypass[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[1]~feeder_combout\ = InMEM_WB(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InMEM_WB(0),
	combout => \mem_d_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X23_Y16_N15
\mem_d_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(1));

-- Location: FF_X23_Y16_N21
\mem_d_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => InEX_MEM(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(2));

-- Location: LCCOMB_X23_Y16_N12
\mem_d_rtl_0_bypass[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[3]~feeder_combout\ = InMEM_WB(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => InMEM_WB(1),
	combout => \mem_d_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X23_Y16_N13
\mem_d_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(3));

-- Location: LCCOMB_X23_Y16_N20
\mem_d~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~26_combout\ = (mem_d_rtl_0_bypass(4) & (mem_d_rtl_0_bypass(3) & (mem_d_rtl_0_bypass(1) $ (!mem_d_rtl_0_bypass(2))))) # (!mem_d_rtl_0_bypass(4) & (!mem_d_rtl_0_bypass(3) & (mem_d_rtl_0_bypass(1) $ (!mem_d_rtl_0_bypass(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_d_rtl_0_bypass(4),
	datab => mem_d_rtl_0_bypass(1),
	datac => mem_d_rtl_0_bypass(2),
	datad => mem_d_rtl_0_bypass(3),
	combout => \mem_d~26_combout\);

-- Location: LCCOMB_X23_Y15_N20
\mem_d~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~28_combout\ = (!\mem_d~27_combout\ & (\mem_d~26_combout\ & (mem_d_rtl_0_bypass(8) $ (!mem_d_rtl_0_bypass(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_d_rtl_0_bypass(8),
	datab => \mem_d~27_combout\,
	datac => mem_d_rtl_0_bypass(7),
	datad => \mem_d~26_combout\,
	combout => \mem_d~28_combout\);

-- Location: LCCOMB_X23_Y15_N6
\mem_d~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~31_combout\ = (\mem_d~29_combout\ & (\mem_d~30_combout\ & (mem_d_rtl_0_bypass(0) & \mem_d~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~29_combout\,
	datab => \mem_d~30_combout\,
	datac => mem_d_rtl_0_bypass(0),
	datad => \mem_d~28_combout\,
	combout => \mem_d~31_combout\);

-- Location: LCCOMB_X26_Y19_N14
\regs[6][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~32_combout\,
	combout => \regs[6][5]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N12
\regs[6][0]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][0]~46_combout\ = (\Decoder0~13_combout\ & \regs[7][0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~13_combout\,
	datad => \regs[7][0]~4_combout\,
	combout => \regs[6][0]~46_combout\);

-- Location: FF_X26_Y19_N15
\regs[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[6][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[6][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][5]~q\);

-- Location: LCCOMB_X26_Y19_N22
\regs[2][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~32_combout\,
	combout => \regs[2][5]~feeder_combout\);

-- Location: FF_X26_Y19_N23
\regs[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[2][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[2][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][5]~q\);

-- Location: LCCOMB_X26_Y19_N28
\RwID_EX~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~45_combout\ = (InID_EX(10) & (((InID_EX(11))))) # (!InID_EX(10) & ((InID_EX(11) & (\regs[10][5]~q\)) # (!InID_EX(11) & ((\regs[2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][5]~q\,
	datab => InID_EX(10),
	datac => \regs[2][5]~q\,
	datad => InID_EX(11),
	combout => \RwID_EX~45_combout\);

-- Location: LCCOMB_X25_Y19_N30
\RwID_EX~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~46_combout\ = (InID_EX(10) & ((\RwID_EX~45_combout\ & (\regs[14][5]~q\)) # (!\RwID_EX~45_combout\ & ((\regs[6][5]~q\))))) # (!InID_EX(10) & (((\RwID_EX~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][5]~q\,
	datab => \regs[6][5]~q\,
	datac => InID_EX(10),
	datad => \RwID_EX~45_combout\,
	combout => \RwID_EX~46_combout\);

-- Location: FF_X25_Y16_N3
\regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][5]~q\);

-- Location: FF_X25_Y16_N13
\regs[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][5]~q\);

-- Location: LCCOMB_X25_Y16_N12
\RwID_EX~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~47_combout\ = (InID_EX(11) & (((InID_EX(10))))) # (!InID_EX(11) & ((InID_EX(10) & ((\regs[5][5]~q\))) # (!InID_EX(10) & (\regs[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(11),
	datab => \regs[1][5]~q\,
	datac => \regs[5][5]~q\,
	datad => InID_EX(10),
	combout => \RwID_EX~47_combout\);

-- Location: LCCOMB_X25_Y14_N26
\RwID_EX~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~48_combout\ = (InID_EX(11) & ((\RwID_EX~47_combout\ & ((\regs[13][5]~q\))) # (!\RwID_EX~47_combout\ & (\regs[9][5]~q\)))) # (!InID_EX(11) & (((\RwID_EX~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][5]~q\,
	datab => \regs[13][5]~q\,
	datac => InID_EX(11),
	datad => \RwID_EX~47_combout\,
	combout => \RwID_EX~48_combout\);

-- Location: LCCOMB_X24_Y18_N20
\regs[12][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~32_combout\,
	combout => \regs[12][5]~feeder_combout\);

-- Location: FF_X24_Y18_N21
\regs[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[12][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[12][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][5]~q\);

-- Location: LCCOMB_X21_Y15_N18
\regs[0][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~32_combout\,
	combout => \regs[0][5]~feeder_combout\);

-- Location: FF_X21_Y15_N19
\regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[0][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[0][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][5]~q\);

-- Location: LCCOMB_X21_Y15_N8
\regs[8][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~32_combout\,
	combout => \regs[8][5]~feeder_combout\);

-- Location: FF_X21_Y15_N9
\regs[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[8][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[8][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][5]~q\);

-- Location: LCCOMB_X21_Y15_N22
\RwID_EX~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~49_combout\ = (InID_EX(10) & (((InID_EX(11))))) # (!InID_EX(10) & ((InID_EX(11) & ((\regs[8][5]~q\))) # (!InID_EX(11) & (\regs[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(10),
	datab => \regs[0][5]~q\,
	datac => \regs[8][5]~q\,
	datad => InID_EX(11),
	combout => \RwID_EX~49_combout\);

-- Location: LCCOMB_X24_Y18_N18
\RwID_EX~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~50_combout\ = (InID_EX(10) & ((\RwID_EX~49_combout\ & ((\regs[12][5]~q\))) # (!\RwID_EX~49_combout\ & (\regs[4][5]~q\)))) # (!InID_EX(10) & (((\RwID_EX~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][5]~q\,
	datab => \regs[12][5]~q\,
	datac => InID_EX(10),
	datad => \RwID_EX~49_combout\,
	combout => \RwID_EX~50_combout\);

-- Location: LCCOMB_X25_Y18_N20
\RwID_EX~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~51_combout\ = (InID_EX(8) & ((\RwID_EX~48_combout\) # ((InID_EX(9))))) # (!InID_EX(8) & (((!InID_EX(9) & \RwID_EX~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(8),
	datab => \RwID_EX~48_combout\,
	datac => InID_EX(9),
	datad => \RwID_EX~50_combout\,
	combout => \RwID_EX~51_combout\);

-- Location: LCCOMB_X25_Y18_N22
\RwID_EX~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~54_combout\ = (InID_EX(9) & ((\RwID_EX~51_combout\ & (\RwID_EX~53_combout\)) # (!\RwID_EX~51_combout\ & ((\RwID_EX~46_combout\))))) # (!InID_EX(9) & (((\RwID_EX~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RwID_EX~53_combout\,
	datab => InID_EX(9),
	datac => \RwID_EX~46_combout\,
	datad => \RwID_EX~51_combout\,
	combout => \RwID_EX~54_combout\);

-- Location: LCCOMB_X22_Y18_N2
\RwID_EX~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~55_combout\ = (\RwID_EX~54_combout\ & \R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RwID_EX~54_combout\,
	datad => \R0ID_EX[3]~0_combout\,
	combout => \RwID_EX~55_combout\);

-- Location: FF_X22_Y18_N3
\RwID_EX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwID_EX~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \RwID_EX[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwID_EX(5));

-- Location: LCCOMB_X23_Y19_N20
\RwEX_MEM[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwEX_MEM[5]~feeder_combout\ = RwID_EX(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RwID_EX(5),
	combout => \RwEX_MEM[5]~feeder_combout\);

-- Location: FF_X23_Y19_N21
\RwEX_MEM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwEX_MEM[5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwEX_MEM(5));

-- Location: FF_X26_Y15_N23
\mem_d_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(27));

-- Location: LCCOMB_X22_Y14_N6
\regs[15][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~24_combout\,
	combout => \regs[15][3]~feeder_combout\);

-- Location: FF_X22_Y14_N7
\regs[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[15][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[15][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][3]~q\);

-- Location: FF_X25_Y15_N5
\regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][3]~q\);

-- Location: LCCOMB_X25_Y15_N4
\RwID_EX~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~30_combout\ = (InID_EX(10) & (((InID_EX(11))))) # (!InID_EX(10) & ((InID_EX(11) & (\regs[11][3]~q\)) # (!InID_EX(11) & ((\regs[3][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][3]~q\,
	datab => InID_EX(10),
	datac => \regs[3][3]~q\,
	datad => InID_EX(11),
	combout => \RwID_EX~30_combout\);

-- Location: LCCOMB_X25_Y17_N20
\RwID_EX~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~31_combout\ = (\RwID_EX~30_combout\ & (((\regs[15][3]~q\) # (!InID_EX(10))))) # (!\RwID_EX~30_combout\ & (\regs[7][3]~q\ & ((InID_EX(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[7][3]~q\,
	datab => \regs[15][3]~q\,
	datac => \RwID_EX~30_combout\,
	datad => InID_EX(10),
	combout => \RwID_EX~31_combout\);

-- Location: LCCOMB_X23_Y18_N24
\regs[8][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~24_combout\,
	combout => \regs[8][3]~feeder_combout\);

-- Location: FF_X23_Y18_N25
\regs[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[8][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[8][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][3]~q\);

-- Location: LCCOMB_X23_Y18_N18
\regs[4][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~24_combout\,
	combout => \regs[4][3]~feeder_combout\);

-- Location: FF_X23_Y18_N19
\regs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[4][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[4][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][3]~q\);

-- Location: LCCOMB_X21_Y15_N20
\RwID_EX~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~27_combout\ = (InID_EX(10) & ((InID_EX(11)) # ((\regs[4][3]~q\)))) # (!InID_EX(10) & (!InID_EX(11) & (\regs[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(10),
	datab => InID_EX(11),
	datac => \regs[0][3]~q\,
	datad => \regs[4][3]~q\,
	combout => \RwID_EX~27_combout\);

-- Location: LCCOMB_X24_Y18_N16
\RwID_EX~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~28_combout\ = (\RwID_EX~27_combout\ & ((\regs[12][3]~q\) # ((!InID_EX(11))))) # (!\RwID_EX~27_combout\ & (((\regs[8][3]~q\ & InID_EX(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][3]~q\,
	datab => \regs[8][3]~q\,
	datac => \RwID_EX~27_combout\,
	datad => InID_EX(11),
	combout => \RwID_EX~28_combout\);

-- Location: LCCOMB_X26_Y17_N10
\Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (InMEM_WB(11) & (!InMEM_WB(10) & (!InMEM_WB(8) & InMEM_WB(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(11),
	datab => InMEM_WB(10),
	datac => InMEM_WB(8),
	datad => InMEM_WB(9),
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X26_Y17_N28
\regs[10][0]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][0]~41_combout\ = (\regs[7][0]~4_combout\ & \Decoder0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[7][0]~4_combout\,
	datad => \Decoder0~8_combout\,
	combout => \regs[10][0]~41_combout\);

-- Location: FF_X22_Y17_N7
\regs[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][3]~q\);

-- Location: LCCOMB_X24_Y18_N0
\regs[14][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~24_combout\,
	combout => \regs[14][3]~feeder_combout\);

-- Location: FF_X24_Y18_N1
\regs[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[14][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[14][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][3]~q\);

-- Location: LCCOMB_X26_Y19_N0
\regs[2][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~24_combout\,
	combout => \regs[2][3]~feeder_combout\);

-- Location: FF_X26_Y19_N1
\regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[2][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[2][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][3]~q\);

-- Location: LCCOMB_X26_Y19_N30
\RwID_EX~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~25_combout\ = (InID_EX(10) & ((\regs[6][3]~q\) # ((InID_EX(11))))) # (!InID_EX(10) & (((\regs[2][3]~q\ & !InID_EX(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][3]~q\,
	datab => \regs[2][3]~q\,
	datac => InID_EX(10),
	datad => InID_EX(11),
	combout => \RwID_EX~25_combout\);

-- Location: LCCOMB_X25_Y18_N10
\RwID_EX~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~26_combout\ = (InID_EX(11) & ((\RwID_EX~25_combout\ & ((\regs[14][3]~q\))) # (!\RwID_EX~25_combout\ & (\regs[10][3]~q\)))) # (!InID_EX(11) & (((\RwID_EX~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(11),
	datab => \regs[10][3]~q\,
	datac => \regs[14][3]~q\,
	datad => \RwID_EX~25_combout\,
	combout => \RwID_EX~26_combout\);

-- Location: LCCOMB_X25_Y18_N8
\RwID_EX~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~29_combout\ = (InID_EX(8) & (InID_EX(9))) # (!InID_EX(8) & ((InID_EX(9) & ((\RwID_EX~26_combout\))) # (!InID_EX(9) & (\RwID_EX~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(8),
	datab => InID_EX(9),
	datac => \RwID_EX~28_combout\,
	datad => \RwID_EX~26_combout\,
	combout => \RwID_EX~29_combout\);

-- Location: LCCOMB_X22_Y14_N24
\regs[13][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~24_combout\,
	combout => \regs[13][3]~feeder_combout\);

-- Location: FF_X22_Y14_N25
\regs[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[13][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[13][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][3]~q\);

-- Location: FF_X22_Y15_N31
\regs[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[5][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][3]~q\);

-- Location: LCCOMB_X23_Y14_N0
\regs[9][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~24_combout\,
	combout => \regs[9][3]~feeder_combout\);

-- Location: FF_X23_Y14_N1
\regs[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[9][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][3]~q\);

-- Location: FF_X25_Y15_N15
\regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][3]~q\);

-- Location: LCCOMB_X23_Y14_N12
\RwID_EX~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~23_combout\ = (InID_EX(10) & (((InID_EX(11))))) # (!InID_EX(10) & ((InID_EX(11) & (\regs[9][3]~q\)) # (!InID_EX(11) & ((\regs[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(10),
	datab => \regs[9][3]~q\,
	datac => \regs[1][3]~q\,
	datad => InID_EX(11),
	combout => \RwID_EX~23_combout\);

-- Location: LCCOMB_X23_Y14_N26
\RwID_EX~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~24_combout\ = (InID_EX(10) & ((\RwID_EX~23_combout\ & (\regs[13][3]~q\)) # (!\RwID_EX~23_combout\ & ((\regs[5][3]~q\))))) # (!InID_EX(10) & (((\RwID_EX~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(10),
	datab => \regs[13][3]~q\,
	datac => \regs[5][3]~q\,
	datad => \RwID_EX~23_combout\,
	combout => \RwID_EX~24_combout\);

-- Location: LCCOMB_X25_Y18_N18
\RwID_EX~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~32_combout\ = (InID_EX(8) & ((\RwID_EX~29_combout\ & (\RwID_EX~31_combout\)) # (!\RwID_EX~29_combout\ & ((\RwID_EX~24_combout\))))) # (!InID_EX(8) & (((\RwID_EX~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(8),
	datab => \RwID_EX~31_combout\,
	datac => \RwID_EX~29_combout\,
	datad => \RwID_EX~24_combout\,
	combout => \RwID_EX~32_combout\);

-- Location: LCCOMB_X22_Y18_N6
\RwID_EX~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~33_combout\ = (\R0ID_EX[3]~0_combout\ & \RwID_EX~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~0_combout\,
	datad => \RwID_EX~32_combout\,
	combout => \RwID_EX~33_combout\);

-- Location: FF_X22_Y18_N7
\RwID_EX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwID_EX~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \RwID_EX[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwID_EX(3));

-- Location: LCCOMB_X22_Y18_N0
\RwEX_MEM[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwEX_MEM[3]~feeder_combout\ = RwID_EX(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RwID_EX(3),
	combout => \RwEX_MEM[3]~feeder_combout\);

-- Location: FF_X22_Y18_N1
\RwEX_MEM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwEX_MEM[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwEX_MEM(3));

-- Location: FF_X24_Y16_N15
\regs[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][4]~q\);

-- Location: FF_X26_Y16_N9
\regs[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][4]~q\);

-- Location: LCCOMB_X26_Y16_N12
\RwID_EX~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~63_combout\ = (InID_EX(9) & (((\regs[14][4]~q\) # (InID_EX(8))))) # (!InID_EX(9) & (\regs[12][4]~q\ & ((!InID_EX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][4]~q\,
	datab => InID_EX(9),
	datac => \regs[14][4]~q\,
	datad => InID_EX(8),
	combout => \RwID_EX~63_combout\);

-- Location: LCCOMB_X25_Y16_N6
\RwID_EX~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~64_combout\ = (\RwID_EX~63_combout\ & (((\regs[15][4]~q\) # (!InID_EX(8))))) # (!\RwID_EX~63_combout\ & (\regs[13][4]~q\ & ((InID_EX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][4]~q\,
	datab => \regs[15][4]~q\,
	datac => \RwID_EX~63_combout\,
	datad => InID_EX(8),
	combout => \RwID_EX~64_combout\);

-- Location: FF_X25_Y15_N7
\regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][4]~q\);

-- Location: LCCOMB_X25_Y15_N6
\RwID_EX~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~60_combout\ = (InID_EX(9) & (((InID_EX(8))))) # (!InID_EX(9) & ((InID_EX(8) & ((\regs[1][4]~q\))) # (!InID_EX(8) & (\regs[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][4]~q\,
	datab => InID_EX(9),
	datac => \regs[1][4]~q\,
	datad => InID_EX(8),
	combout => \RwID_EX~60_combout\);

-- Location: LCCOMB_X24_Y19_N4
\RwID_EX~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~61_combout\ = (InID_EX(9) & ((\RwID_EX~60_combout\ & (\regs[3][4]~q\)) # (!\RwID_EX~60_combout\ & ((\regs[2][4]~q\))))) # (!InID_EX(9) & (((\RwID_EX~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][4]~q\,
	datab => \regs[2][4]~q\,
	datac => InID_EX(9),
	datad => \RwID_EX~60_combout\,
	combout => \RwID_EX~61_combout\);

-- Location: LCCOMB_X24_Y19_N8
\regs[7][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][4]~feeder_combout\ = \regs~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~28_combout\,
	combout => \regs[7][4]~feeder_combout\);

-- Location: FF_X24_Y19_N9
\regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[7][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[7][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][4]~q\);

-- Location: FF_X25_Y19_N15
\regs[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][4]~q\);

-- Location: LCCOMB_X24_Y19_N10
\RwID_EX~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~59_combout\ = (\RwID_EX~58_combout\ & ((\regs[7][4]~q\) # ((!InID_EX(8))))) # (!\RwID_EX~58_combout\ & (((\regs[5][4]~q\ & InID_EX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RwID_EX~58_combout\,
	datab => \regs[7][4]~q\,
	datac => \regs[5][4]~q\,
	datad => InID_EX(8),
	combout => \RwID_EX~59_combout\);

-- Location: LCCOMB_X24_Y19_N6
\RwID_EX~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~62_combout\ = (InID_EX(11) & (InID_EX(10))) # (!InID_EX(11) & ((InID_EX(10) & ((\RwID_EX~59_combout\))) # (!InID_EX(10) & (\RwID_EX~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(11),
	datab => InID_EX(10),
	datac => \RwID_EX~61_combout\,
	datad => \RwID_EX~59_combout\,
	combout => \RwID_EX~62_combout\);

-- Location: LCCOMB_X25_Y17_N4
\regs[11][0]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][0]~44_combout\ = (\Decoder0~11_combout\ & \regs[7][0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datab => \regs[7][0]~4_combout\,
	combout => \regs[11][0]~44_combout\);

-- Location: FF_X25_Y18_N3
\regs[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][4]~q\);

-- Location: LCCOMB_X26_Y18_N0
\regs[10][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][4]~feeder_combout\ = \regs~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~28_combout\,
	combout => \regs[10][4]~feeder_combout\);

-- Location: FF_X26_Y18_N1
\regs[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[10][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][4]~q\);

-- Location: LCCOMB_X26_Y18_N18
\regs[8][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][4]~feeder_combout\ = \regs~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~28_combout\,
	combout => \regs[8][4]~feeder_combout\);

-- Location: FF_X26_Y18_N19
\regs[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[8][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[8][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][4]~q\);

-- Location: LCCOMB_X26_Y18_N2
\RwID_EX~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~56_combout\ = (InID_EX(8) & ((\regs[9][4]~q\) # ((InID_EX(9))))) # (!InID_EX(8) & (((\regs[8][4]~q\ & !InID_EX(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][4]~q\,
	datab => \regs[8][4]~q\,
	datac => InID_EX(8),
	datad => InID_EX(9),
	combout => \RwID_EX~56_combout\);

-- Location: LCCOMB_X25_Y18_N24
\RwID_EX~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~57_combout\ = (InID_EX(9) & ((\RwID_EX~56_combout\ & (\regs[11][4]~q\)) # (!\RwID_EX~56_combout\ & ((\regs[10][4]~q\))))) # (!InID_EX(9) & (((\RwID_EX~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => \regs[11][4]~q\,
	datac => \regs[10][4]~q\,
	datad => \RwID_EX~56_combout\,
	combout => \RwID_EX~57_combout\);

-- Location: LCCOMB_X25_Y18_N14
\RwID_EX~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~65_combout\ = (InID_EX(11) & ((\RwID_EX~62_combout\ & (\RwID_EX~64_combout\)) # (!\RwID_EX~62_combout\ & ((\RwID_EX~57_combout\))))) # (!InID_EX(11) & (((\RwID_EX~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(11),
	datab => \RwID_EX~64_combout\,
	datac => \RwID_EX~62_combout\,
	datad => \RwID_EX~57_combout\,
	combout => \RwID_EX~65_combout\);

-- Location: LCCOMB_X22_Y18_N20
\RwID_EX~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~66_combout\ = (\RwID_EX~65_combout\ & \R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RwID_EX~65_combout\,
	datad => \R0ID_EX[3]~0_combout\,
	combout => \RwID_EX~66_combout\);

-- Location: FF_X22_Y18_N21
\RwID_EX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwID_EX~66_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \RwID_EX[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwID_EX(4));

-- Location: LCCOMB_X22_Y18_N26
\RwEX_MEM[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwEX_MEM[4]~feeder_combout\ = RwID_EX(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RwID_EX(4),
	combout => \RwEX_MEM[4]~feeder_combout\);

-- Location: FF_X22_Y18_N27
\RwEX_MEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwEX_MEM[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwEX_MEM(4));

-- Location: LCCOMB_X29_Y15_N20
\mem_d_rtl_0_bypass[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_d_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X29_Y15_N21
\mem_d_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(30));

-- Location: FF_X26_Y15_N19
\mem_d_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(29));

-- Location: FF_X26_Y15_N25
\mem_d~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(6),
	sload => VCC,
	ena => \mem_d~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~24_q\);

-- Location: FF_X23_Y15_N25
\regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][7]~q\);

-- Location: LCCOMB_X24_Y15_N0
\R1ID_EX~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~87_combout\ = (InID_EX(2) & (((InID_EX(3))))) # (!InID_EX(2) & ((InID_EX(3) & (\regs[11][7]~q\)) # (!InID_EX(3) & ((\regs[3][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][7]~q\,
	datab => InID_EX(2),
	datac => InID_EX(3),
	datad => \regs[3][7]~q\,
	combout => \R1ID_EX~87_combout\);

-- Location: LCCOMB_X24_Y16_N4
\regs[15][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[15][7]~feeder_combout\);

-- Location: FF_X24_Y16_N5
\regs[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[15][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[15][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][7]~q\);

-- Location: LCCOMB_X24_Y16_N16
\R1ID_EX~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~88_combout\ = (\R1ID_EX~87_combout\ & (((\regs[15][7]~q\) # (!InID_EX(2))))) # (!\R1ID_EX~87_combout\ & (\regs[7][7]~q\ & ((InID_EX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[7][7]~q\,
	datab => \R1ID_EX~87_combout\,
	datac => \regs[15][7]~q\,
	datad => InID_EX(2),
	combout => \R1ID_EX~88_combout\);

-- Location: LCCOMB_X19_Y15_N24
\regs[10][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[10][7]~feeder_combout\);

-- Location: FF_X19_Y15_N25
\regs[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[10][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][7]~q\);

-- Location: LCCOMB_X19_Y15_N14
\regs[6][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[6][7]~feeder_combout\);

-- Location: FF_X19_Y15_N15
\regs[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[6][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[6][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][7]~q\);

-- Location: LCCOMB_X19_Y15_N28
\R1ID_EX~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~82_combout\ = (InID_EX(3) & (((InID_EX(2))))) # (!InID_EX(3) & ((InID_EX(2) & ((\regs[6][7]~q\))) # (!InID_EX(2) & (\regs[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][7]~q\,
	datab => \regs[6][7]~q\,
	datac => InID_EX(3),
	datad => InID_EX(2),
	combout => \R1ID_EX~82_combout\);

-- Location: LCCOMB_X19_Y15_N10
\R1ID_EX~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~83_combout\ = (InID_EX(3) & ((\R1ID_EX~82_combout\ & (\regs[14][7]~q\)) # (!\R1ID_EX~82_combout\ & ((\regs[10][7]~q\))))) # (!InID_EX(3) & (((\R1ID_EX~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][7]~q\,
	datab => \regs[10][7]~q\,
	datac => InID_EX(3),
	datad => \R1ID_EX~82_combout\,
	combout => \R1ID_EX~83_combout\);

-- Location: LCCOMB_X24_Y15_N6
\regs[8][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[8][7]~feeder_combout\);

-- Location: FF_X24_Y15_N7
\regs[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[8][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[8][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][7]~q\);

-- Location: FF_X24_Y17_N23
\regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][7]~q\);

-- Location: LCCOMB_X23_Y18_N26
\regs[4][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[4][7]~feeder_combout\);

-- Location: FF_X23_Y18_N27
\regs[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[4][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[4][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][7]~q\);

-- Location: LCCOMB_X23_Y18_N8
\R1ID_EX~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~84_combout\ = (InID_EX(2) & (((\regs[4][7]~q\) # (InID_EX(3))))) # (!InID_EX(2) & (\regs[0][7]~q\ & ((!InID_EX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(2),
	datab => \regs[0][7]~q\,
	datac => \regs[4][7]~q\,
	datad => InID_EX(3),
	combout => \R1ID_EX~84_combout\);

-- Location: LCCOMB_X23_Y18_N6
\R1ID_EX~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~85_combout\ = (\R1ID_EX~84_combout\ & ((\regs[12][7]~q\) # ((!InID_EX(3))))) # (!\R1ID_EX~84_combout\ & (((\regs[8][7]~q\ & InID_EX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][7]~q\,
	datab => \regs[8][7]~q\,
	datac => \R1ID_EX~84_combout\,
	datad => InID_EX(3),
	combout => \R1ID_EX~85_combout\);

-- Location: LCCOMB_X23_Y16_N22
\R1ID_EX~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~86_combout\ = (InID_EX(0) & (InID_EX(1))) # (!InID_EX(0) & ((InID_EX(1) & (\R1ID_EX~83_combout\)) # (!InID_EX(1) & ((\R1ID_EX~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => InID_EX(1),
	datac => \R1ID_EX~83_combout\,
	datad => \R1ID_EX~85_combout\,
	combout => \R1ID_EX~86_combout\);

-- Location: LCCOMB_X22_Y15_N14
\regs[5][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[5][7]~feeder_combout\);

-- Location: FF_X22_Y15_N15
\regs[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[5][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[5][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][7]~q\);

-- Location: LCCOMB_X24_Y14_N28
\regs[13][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~40_combout\,
	combout => \regs[13][7]~feeder_combout\);

-- Location: FF_X24_Y14_N29
\regs[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[13][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[13][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][7]~q\);

-- Location: LCCOMB_X24_Y14_N16
\R1ID_EX~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~81_combout\ = (\R1ID_EX~80_combout\ & (((\regs[13][7]~q\) # (!InID_EX(2))))) # (!\R1ID_EX~80_combout\ & (\regs[5][7]~q\ & (InID_EX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~80_combout\,
	datab => \regs[5][7]~q\,
	datac => InID_EX(2),
	datad => \regs[13][7]~q\,
	combout => \R1ID_EX~81_combout\);

-- Location: LCCOMB_X23_Y16_N28
\R1ID_EX~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~89_combout\ = (InID_EX(0) & ((\R1ID_EX~86_combout\ & (\R1ID_EX~88_combout\)) # (!\R1ID_EX~86_combout\ & ((\R1ID_EX~81_combout\))))) # (!InID_EX(0) & (((\R1ID_EX~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => \R1ID_EX~88_combout\,
	datac => \R1ID_EX~86_combout\,
	datad => \R1ID_EX~81_combout\,
	combout => \R1ID_EX~89_combout\);

-- Location: LCCOMB_X21_Y16_N10
\R1ID_EX~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~90_combout\ = (\R0ID_EX[3]~0_combout\ & \R1ID_EX~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R1ID_EX~89_combout\,
	combout => \R1ID_EX~90_combout\);

-- Location: FF_X21_Y16_N11
\R1ID_EX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R1ID_EX~90_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \R1ID_EX[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1ID_EX(7));

-- Location: LCCOMB_X22_Y16_N24
\Add2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = InEX_MEM(13) $ (((R1ID_EX(7) & !InEX_MEM(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => R1ID_EX(7),
	datac => InEX_MEM(15),
	datad => InEX_MEM(13),
	combout => \Add2~7_combout\);

-- Location: FF_X24_Y17_N17
\regs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][7]~q\);

-- Location: LCCOMB_X24_Y18_N28
\R0ID_EX~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~38_combout\ = (InID_EX(5) & (((InID_EX(4))))) # (!InID_EX(5) & ((InID_EX(4) & (\regs[1][7]~q\)) # (!InID_EX(4) & ((\regs[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][7]~q\,
	datab => InID_EX(5),
	datac => InID_EX(4),
	datad => \regs[0][7]~q\,
	combout => \R0ID_EX~38_combout\);

-- Location: LCCOMB_X23_Y17_N20
\R0ID_EX~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~39_combout\ = (InID_EX(5) & ((\R0ID_EX~38_combout\ & (\regs[3][7]~q\)) # (!\R0ID_EX~38_combout\ & ((\regs[2][7]~q\))))) # (!InID_EX(5) & (((\R0ID_EX~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][7]~q\,
	datab => InID_EX(5),
	datac => \regs[2][7]~q\,
	datad => \R0ID_EX~38_combout\,
	combout => \R0ID_EX~39_combout\);

-- Location: LCCOMB_X24_Y16_N26
\R0ID_EX~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~37_combout\ = (\R0ID_EX~36_combout\ & ((\regs[15][7]~q\) # ((!InID_EX(4))))) # (!\R0ID_EX~36_combout\ & (((\regs[13][7]~q\ & InID_EX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX~36_combout\,
	datab => \regs[15][7]~q\,
	datac => \regs[13][7]~q\,
	datad => InID_EX(4),
	combout => \R0ID_EX~37_combout\);

-- Location: LCCOMB_X23_Y17_N28
\R0ID_EX~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~40_combout\ = (\R0ID_EX[3]~0_combout\ & ((InID_EX(6) & ((\R0ID_EX~37_combout\))) # (!InID_EX(6) & (\R0ID_EX~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(6),
	datab => \R0ID_EX~39_combout\,
	datac => \R0ID_EX~37_combout\,
	datad => \R0ID_EX[3]~0_combout\,
	combout => \R0ID_EX~40_combout\);

-- Location: FF_X23_Y17_N29
\R0ID_EX[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R0ID_EX~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0ID_EX[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X25_Y19_N8
\regs[4][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][6]~feeder_combout\ = \regs~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~36_combout\,
	combout => \regs[4][6]~feeder_combout\);

-- Location: FF_X25_Y19_N9
\regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[4][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[4][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][6]~q\);

-- Location: LCCOMB_X25_Y19_N10
\R1ID_EX~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~69_combout\ = (InID_EX(1) & (((InID_EX(0))))) # (!InID_EX(1) & ((InID_EX(0) & (\regs[5][6]~q\)) # (!InID_EX(0) & ((\regs[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][6]~q\,
	datab => \regs[4][6]~q\,
	datac => InID_EX(1),
	datad => InID_EX(0),
	combout => \R1ID_EX~69_combout\);

-- Location: LCCOMB_X21_Y15_N4
\R1ID_EX~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~70_combout\ = (InID_EX(1) & ((\R1ID_EX~69_combout\ & ((\regs[7][6]~q\))) # (!\R1ID_EX~69_combout\ & (\regs[6][6]~q\)))) # (!InID_EX(1) & (((\R1ID_EX~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][6]~q\,
	datab => \regs[7][6]~q\,
	datac => InID_EX(1),
	datad => \R1ID_EX~69_combout\,
	combout => \R1ID_EX~70_combout\);

-- Location: FF_X24_Y16_N31
\regs[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][6]~q\);

-- Location: FF_X25_Y17_N5
\regs[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][6]~q\);

-- Location: FF_X26_Y16_N29
\regs[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][6]~q\);

-- Location: LCCOMB_X25_Y17_N8
\R1ID_EX~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~76_combout\ = (InID_EX(0) & ((\regs[13][6]~q\) # ((InID_EX(1))))) # (!InID_EX(0) & (((\regs[12][6]~q\ & !InID_EX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => \regs[13][6]~q\,
	datac => \regs[12][6]~q\,
	datad => InID_EX(1),
	combout => \R1ID_EX~76_combout\);

-- Location: LCCOMB_X24_Y14_N0
\R1ID_EX~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~77_combout\ = (InID_EX(1) & ((\R1ID_EX~76_combout\ & (\regs[15][6]~q\)) # (!\R1ID_EX~76_combout\ & ((\regs[14][6]~q\))))) # (!InID_EX(1) & (((\R1ID_EX~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][6]~q\,
	datab => InID_EX(1),
	datac => \regs[14][6]~q\,
	datad => \R1ID_EX~76_combout\,
	combout => \R1ID_EX~77_combout\);

-- Location: LCCOMB_X21_Y15_N6
\R1ID_EX~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~78_combout\ = (\R1ID_EX~75_combout\ & (((\R1ID_EX~77_combout\)) # (!InID_EX(2)))) # (!\R1ID_EX~75_combout\ & (InID_EX(2) & (\R1ID_EX~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~75_combout\,
	datab => InID_EX(2),
	datac => \R1ID_EX~70_combout\,
	datad => \R1ID_EX~77_combout\,
	combout => \R1ID_EX~78_combout\);

-- Location: LCCOMB_X21_Y16_N20
\R1ID_EX~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~79_combout\ = (\R0ID_EX[3]~0_combout\ & \R1ID_EX~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R1ID_EX~78_combout\,
	combout => \R1ID_EX~79_combout\);

-- Location: FF_X21_Y16_N21
\R1ID_EX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R1ID_EX~79_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \R1ID_EX[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1ID_EX(6));

-- Location: LCCOMB_X22_Y16_N20
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = InEX_MEM(13) $ (((!InEX_MEM(15) & R1ID_EX(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(13),
	datac => InEX_MEM(15),
	datad => R1ID_EX(6),
	combout => \Add2~6_combout\);

-- Location: FF_X23_Y16_N11
\R0ID_EX[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R0ID_EX~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0ID_EX[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X22_Y16_N16
\ulaEX_MEM[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[7]~34_combout\ = \Add2~7_combout\ $ (\ulaEX_MEM[6]~32\ $ (!\R0ID_EX[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~7_combout\,
	datad => \R0ID_EX[7]~_Duplicate_1_q\,
	cin => \ulaEX_MEM[6]~32\,
	combout => \ulaEX_MEM[7]~34_combout\);

-- Location: FF_X24_Y17_N5
\regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][6]~q\);

-- Location: FF_X24_Y17_N27
\regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][6]~q\);

-- Location: LCCOMB_X25_Y15_N8
\regs[1][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[1][6]~feeder_combout\ = \regs~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~36_combout\,
	combout => \regs[1][6]~feeder_combout\);

-- Location: FF_X25_Y15_N9
\regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[1][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][6]~q\);

-- Location: LCCOMB_X24_Y17_N26
\R0ID_EX~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~33_combout\ = (InID_EX(4) & ((InID_EX(5)) # ((\regs[1][6]~q\)))) # (!InID_EX(4) & (!InID_EX(5) & (\regs[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => InID_EX(5),
	datac => \regs[0][6]~q\,
	datad => \regs[1][6]~q\,
	combout => \R0ID_EX~33_combout\);

-- Location: LCCOMB_X24_Y17_N4
\R0ID_EX~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~34_combout\ = (InID_EX(5) & ((\R0ID_EX~33_combout\ & (\regs[3][6]~q\)) # (!\R0ID_EX~33_combout\ & ((\regs[2][6]~q\))))) # (!InID_EX(5) & (((\R0ID_EX~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][6]~q\,
	datab => InID_EX(5),
	datac => \regs[2][6]~q\,
	datad => \R0ID_EX~33_combout\,
	combout => \R0ID_EX~34_combout\);

-- Location: LCCOMB_X26_Y14_N4
\regs[15][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][6]~feeder_combout\ = \regs~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~36_combout\,
	combout => \regs[15][6]~feeder_combout\);

-- Location: FF_X26_Y14_N5
\regs[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[15][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[15][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][6]~q\);

-- Location: LCCOMB_X24_Y14_N14
\R0ID_EX~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~32_combout\ = (\R0ID_EX~31_combout\ & (((\regs[15][6]~q\) # (!InID_EX(4))))) # (!\R0ID_EX~31_combout\ & (\regs[13][6]~q\ & ((InID_EX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX~31_combout\,
	datab => \regs[13][6]~q\,
	datac => \regs[15][6]~q\,
	datad => InID_EX(4),
	combout => \R0ID_EX~32_combout\);

-- Location: LCCOMB_X23_Y16_N4
\R0ID_EX~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~35_combout\ = (\R0ID_EX[3]~0_combout\ & ((InID_EX(6) & ((\R0ID_EX~32_combout\))) # (!InID_EX(6) & (\R0ID_EX~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~0_combout\,
	datab => InID_EX(6),
	datac => \R0ID_EX~34_combout\,
	datad => \R0ID_EX~32_combout\,
	combout => \R0ID_EX~35_combout\);

-- Location: LCCOMB_X24_Y16_N12
\regs[15][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][0]~feeder_combout\ = \regs~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~3_combout\,
	combout => \regs[15][0]~feeder_combout\);

-- Location: FF_X24_Y16_N13
\regs[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[15][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[15][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][0]~q\);

-- Location: LCCOMB_X25_Y17_N24
\regs[13][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][0]~feeder_combout\ = \regs~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~3_combout\,
	combout => \regs[13][0]~feeder_combout\);

-- Location: FF_X25_Y17_N25
\regs[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[13][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[13][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][0]~q\);

-- Location: LCCOMB_X28_Y16_N30
\R1ID_EX~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~10_combout\ = (\R1ID_EX~9_combout\ & ((\regs[15][0]~q\) # ((!InID_EX(0))))) # (!\R1ID_EX~9_combout\ & (((\regs[13][0]~q\ & InID_EX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~9_combout\,
	datab => \regs[15][0]~q\,
	datac => \regs[13][0]~q\,
	datad => InID_EX(0),
	combout => \R1ID_EX~10_combout\);

-- Location: LCCOMB_X28_Y16_N0
\regs[3][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[3][0]~feeder_combout\ = \regs~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~3_combout\,
	combout => \regs[3][0]~feeder_combout\);

-- Location: FF_X28_Y16_N1
\regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[3][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][0]~q\);

-- Location: FF_X24_Y17_N29
\regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][0]~q\);

-- Location: FF_X24_Y17_N11
\regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][0]~q\);

-- Location: LCCOMB_X21_Y17_N16
\R1ID_EX~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~6_combout\ = (InID_EX(0) & ((\regs[1][0]~q\) # ((InID_EX(1))))) # (!InID_EX(0) & (((!InID_EX(1) & \regs[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][0]~q\,
	datab => InID_EX(0),
	datac => InID_EX(1),
	datad => \regs[0][0]~q\,
	combout => \R1ID_EX~6_combout\);

-- Location: LCCOMB_X24_Y17_N28
\R1ID_EX~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~7_combout\ = (InID_EX(1) & ((\R1ID_EX~6_combout\ & (\regs[3][0]~q\)) # (!\R1ID_EX~6_combout\ & ((\regs[2][0]~q\))))) # (!InID_EX(1) & (((\R1ID_EX~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \regs[3][0]~q\,
	datac => \regs[2][0]~q\,
	datad => \R1ID_EX~6_combout\,
	combout => \R1ID_EX~7_combout\);

-- Location: LCCOMB_X28_Y15_N20
\R1ID_EX~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~8_combout\ = (InID_EX(2) & ((\R1ID_EX~5_combout\) # ((InID_EX(3))))) # (!InID_EX(2) & (((!InID_EX(3) & \R1ID_EX~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~5_combout\,
	datab => InID_EX(2),
	datac => InID_EX(3),
	datad => \R1ID_EX~7_combout\,
	combout => \R1ID_EX~8_combout\);

-- Location: LCCOMB_X28_Y15_N26
\R1ID_EX~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~11_combout\ = (InID_EX(3) & ((\R1ID_EX~8_combout\ & ((\R1ID_EX~10_combout\))) # (!\R1ID_EX~8_combout\ & (\R1ID_EX~3_combout\)))) # (!InID_EX(3) & (((\R1ID_EX~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~3_combout\,
	datab => InID_EX(3),
	datac => \R1ID_EX~10_combout\,
	datad => \R1ID_EX~8_combout\,
	combout => \R1ID_EX~11_combout\);

-- Location: LCCOMB_X21_Y16_N24
\R1ID_EX~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~12_combout\ = (\R0ID_EX[3]~0_combout\ & \R1ID_EX~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R1ID_EX~11_combout\,
	combout => \R1ID_EX~12_combout\);

-- Location: FF_X21_Y16_N25
\R1ID_EX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R1ID_EX~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \R1ID_EX[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1ID_EX(0));

-- Location: FF_X26_Y16_N25
\regs[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][2]~q\);

-- Location: LCCOMB_X26_Y16_N24
\R1ID_EX~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~32_combout\ = (InID_EX(1) & (((InID_EX(0))))) # (!InID_EX(1) & ((InID_EX(0) & (\regs[13][2]~q\)) # (!InID_EX(0) & ((\regs[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \regs[13][2]~q\,
	datac => \regs[12][2]~q\,
	datad => InID_EX(0),
	combout => \R1ID_EX~32_combout\);

-- Location: LCCOMB_X26_Y16_N30
\R1ID_EX~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~33_combout\ = (InID_EX(1) & ((\R1ID_EX~32_combout\ & (\regs[15][2]~q\)) # (!\R1ID_EX~32_combout\ & ((\regs[14][2]~q\))))) # (!InID_EX(1) & (((\R1ID_EX~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \regs[15][2]~q\,
	datac => \regs[14][2]~q\,
	datad => \R1ID_EX~32_combout\,
	combout => \R1ID_EX~33_combout\);

-- Location: FF_X26_Y17_N25
\regs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][0]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][2]~q\);

-- Location: FF_X25_Y19_N29
\regs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][2]~q\);

-- Location: LCCOMB_X25_Y19_N18
\regs[4][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][2]~feeder_combout\ = \regs~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~20_combout\,
	combout => \regs[4][2]~feeder_combout\);

-- Location: FF_X25_Y19_N19
\regs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[4][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[4][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][2]~q\);

-- Location: LCCOMB_X25_Y19_N28
\R1ID_EX~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~25_combout\ = (InID_EX(0) & ((InID_EX(1)) # ((\regs[5][2]~q\)))) # (!InID_EX(0) & (!InID_EX(1) & ((\regs[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => InID_EX(1),
	datac => \regs[5][2]~q\,
	datad => \regs[4][2]~q\,
	combout => \R1ID_EX~25_combout\);

-- Location: FF_X25_Y17_N29
\regs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[7][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][2]~q\);

-- Location: LCCOMB_X25_Y17_N30
\R1ID_EX~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~26_combout\ = (InID_EX(1) & ((\R1ID_EX~25_combout\ & ((\regs[7][2]~q\))) # (!\R1ID_EX~25_combout\ & (\regs[6][2]~q\)))) # (!InID_EX(1) & (((\R1ID_EX~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \regs[6][2]~q\,
	datac => \R1ID_EX~25_combout\,
	datad => \regs[7][2]~q\,
	combout => \R1ID_EX~26_combout\);

-- Location: LCCOMB_X19_Y15_N16
\R1ID_EX~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~34_combout\ = (\R1ID_EX~31_combout\ & (((\R1ID_EX~33_combout\)) # (!InID_EX(2)))) # (!\R1ID_EX~31_combout\ & (InID_EX(2) & ((\R1ID_EX~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~31_combout\,
	datab => InID_EX(2),
	datac => \R1ID_EX~33_combout\,
	datad => \R1ID_EX~26_combout\,
	combout => \R1ID_EX~34_combout\);

-- Location: LCCOMB_X21_Y16_N0
\R1ID_EX~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~35_combout\ = (\R0ID_EX[3]~0_combout\ & \R1ID_EX~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R1ID_EX~34_combout\,
	combout => \R1ID_EX~35_combout\);

-- Location: FF_X21_Y16_N1
\R1ID_EX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R1ID_EX~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \R1ID_EX[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1ID_EX(2));

-- Location: LCCOMB_X25_Y15_N14
\R1ID_EX~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~36_combout\ = (InID_EX(3) & ((\regs[9][3]~q\) # ((InID_EX(2))))) # (!InID_EX(3) & (((\regs[1][3]~q\ & !InID_EX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(3),
	datab => \regs[9][3]~q\,
	datac => \regs[1][3]~q\,
	datad => InID_EX(2),
	combout => \R1ID_EX~36_combout\);

-- Location: LCCOMB_X23_Y14_N2
\R1ID_EX~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~37_combout\ = (\R1ID_EX~36_combout\ & (((\regs[13][3]~q\) # (!InID_EX(2))))) # (!\R1ID_EX~36_combout\ & (\regs[5][3]~q\ & ((InID_EX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][3]~q\,
	datab => \regs[13][3]~q\,
	datac => \R1ID_EX~36_combout\,
	datad => InID_EX(2),
	combout => \R1ID_EX~37_combout\);

-- Location: LCCOMB_X23_Y18_N4
\R1ID_EX~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~40_combout\ = (InID_EX(2) & ((\regs[4][3]~q\) # ((InID_EX(3))))) # (!InID_EX(2) & (((\regs[0][3]~q\ & !InID_EX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(2),
	datab => \regs[4][3]~q\,
	datac => \regs[0][3]~q\,
	datad => InID_EX(3),
	combout => \R1ID_EX~40_combout\);

-- Location: LCCOMB_X23_Y18_N22
\R1ID_EX~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~41_combout\ = (\R1ID_EX~40_combout\ & ((\regs[12][3]~q\) # ((!InID_EX(3))))) # (!\R1ID_EX~40_combout\ & (((\regs[8][3]~q\ & InID_EX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][3]~q\,
	datab => \regs[8][3]~q\,
	datac => \R1ID_EX~40_combout\,
	datad => InID_EX(3),
	combout => \R1ID_EX~41_combout\);

-- Location: LCCOMB_X26_Y19_N26
\R1ID_EX~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~38_combout\ = (InID_EX(3) & (((InID_EX(2))))) # (!InID_EX(3) & ((InID_EX(2) & (\regs[6][3]~q\)) # (!InID_EX(2) & ((\regs[2][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][3]~q\,
	datab => \regs[2][3]~q\,
	datac => InID_EX(3),
	datad => InID_EX(2),
	combout => \R1ID_EX~38_combout\);

-- Location: LCCOMB_X25_Y19_N20
\R1ID_EX~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~39_combout\ = (InID_EX(3) & ((\R1ID_EX~38_combout\ & ((\regs[14][3]~q\))) # (!\R1ID_EX~38_combout\ & (\regs[10][3]~q\)))) # (!InID_EX(3) & (((\R1ID_EX~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(3),
	datab => \regs[10][3]~q\,
	datac => \regs[14][3]~q\,
	datad => \R1ID_EX~38_combout\,
	combout => \R1ID_EX~39_combout\);

-- Location: LCCOMB_X24_Y19_N0
\R1ID_EX~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~42_combout\ = (InID_EX(1) & (((\R1ID_EX~39_combout\) # (InID_EX(0))))) # (!InID_EX(1) & (\R1ID_EX~41_combout\ & ((!InID_EX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \R1ID_EX~41_combout\,
	datac => \R1ID_EX~39_combout\,
	datad => InID_EX(0),
	combout => \R1ID_EX~42_combout\);

-- Location: LCCOMB_X24_Y19_N22
\R1ID_EX~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~45_combout\ = (InID_EX(0) & ((\R1ID_EX~42_combout\ & (\R1ID_EX~44_combout\)) # (!\R1ID_EX~42_combout\ & ((\R1ID_EX~37_combout\))))) # (!InID_EX(0) & (((\R1ID_EX~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~44_combout\,
	datab => InID_EX(0),
	datac => \R1ID_EX~37_combout\,
	datad => \R1ID_EX~42_combout\,
	combout => \R1ID_EX~45_combout\);

-- Location: LCCOMB_X21_Y16_N2
\R1ID_EX~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~46_combout\ = (\R0ID_EX[3]~0_combout\ & \R1ID_EX~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R1ID_EX~45_combout\,
	combout => \R1ID_EX~46_combout\);

-- Location: FF_X21_Y16_N3
\R1ID_EX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R1ID_EX~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \R1ID_EX[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1ID_EX(3));

-- Location: FF_X26_Y16_N11
\regs[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][4]~q\);

-- Location: LCCOMB_X26_Y16_N10
\R1ID_EX~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~54_combout\ = (InID_EX(1) & ((\regs[14][4]~q\) # ((InID_EX(0))))) # (!InID_EX(1) & (((\regs[12][4]~q\ & !InID_EX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \regs[14][4]~q\,
	datac => \regs[12][4]~q\,
	datad => InID_EX(0),
	combout => \R1ID_EX~54_combout\);

-- Location: LCCOMB_X25_Y16_N0
\R1ID_EX~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~55_combout\ = (InID_EX(0) & ((\R1ID_EX~54_combout\ & ((\regs[15][4]~q\))) # (!\R1ID_EX~54_combout\ & (\regs[13][4]~q\)))) # (!InID_EX(0) & (((\R1ID_EX~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][4]~q\,
	datab => InID_EX(0),
	datac => \R1ID_EX~54_combout\,
	datad => \regs[15][4]~q\,
	combout => \R1ID_EX~55_combout\);

-- Location: LCCOMB_X24_Y17_N6
\regs[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][4]~feeder_combout\ = \regs~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~28_combout\,
	combout => \regs[0][4]~feeder_combout\);

-- Location: FF_X24_Y17_N7
\regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[0][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[0][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][4]~q\);

-- Location: LCCOMB_X24_Y17_N24
\R1ID_EX~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~51_combout\ = (InID_EX(1) & (((InID_EX(0))))) # (!InID_EX(1) & ((InID_EX(0) & (\regs[1][4]~q\)) # (!InID_EX(0) & ((\regs[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \regs[1][4]~q\,
	datac => InID_EX(0),
	datad => \regs[0][4]~q\,
	combout => \R1ID_EX~51_combout\);

-- Location: FF_X25_Y15_N17
\regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][4]~q\);

-- Location: LCCOMB_X25_Y15_N2
\R1ID_EX~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~52_combout\ = (InID_EX(1) & ((\R1ID_EX~51_combout\ & ((\regs[3][4]~q\))) # (!\R1ID_EX~51_combout\ & (\regs[2][4]~q\)))) # (!InID_EX(1) & (((\R1ID_EX~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][4]~q\,
	datab => InID_EX(1),
	datac => \R1ID_EX~51_combout\,
	datad => \regs[3][4]~q\,
	combout => \R1ID_EX~52_combout\);

-- Location: FF_X25_Y19_N5
\regs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][4]~q\);

-- Location: LCCOMB_X25_Y19_N2
\R1ID_EX~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~49_combout\ = (InID_EX(1) & ((\regs[6][4]~q\) # ((InID_EX(0))))) # (!InID_EX(1) & (((\regs[4][4]~q\ & !InID_EX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][4]~q\,
	datab => \regs[4][4]~q\,
	datac => InID_EX(1),
	datad => InID_EX(0),
	combout => \R1ID_EX~49_combout\);

-- Location: LCCOMB_X25_Y19_N14
\R1ID_EX~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~50_combout\ = (\R1ID_EX~49_combout\ & ((\regs[7][4]~q\) # ((!InID_EX(0))))) # (!\R1ID_EX~49_combout\ & (((\regs[5][4]~q\ & InID_EX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[7][4]~q\,
	datab => \R1ID_EX~49_combout\,
	datac => \regs[5][4]~q\,
	datad => InID_EX(0),
	combout => \R1ID_EX~50_combout\);

-- Location: LCCOMB_X25_Y15_N24
\R1ID_EX~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~53_combout\ = (InID_EX(3) & (((InID_EX(2))))) # (!InID_EX(3) & ((InID_EX(2) & ((\R1ID_EX~50_combout\))) # (!InID_EX(2) & (\R1ID_EX~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(3),
	datab => \R1ID_EX~52_combout\,
	datac => \R1ID_EX~50_combout\,
	datad => InID_EX(2),
	combout => \R1ID_EX~53_combout\);

-- Location: LCCOMB_X25_Y18_N0
\regs[9][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][4]~feeder_combout\ = \regs~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~28_combout\,
	combout => \regs[9][4]~feeder_combout\);

-- Location: FF_X25_Y18_N1
\regs[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[9][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][4]~q\);

-- Location: LCCOMB_X26_Y18_N28
\R1ID_EX~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~47_combout\ = (InID_EX(1) & (((InID_EX(0))))) # (!InID_EX(1) & ((InID_EX(0) & ((\regs[9][4]~q\))) # (!InID_EX(0) & (\regs[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \regs[8][4]~q\,
	datac => \regs[9][4]~q\,
	datad => InID_EX(0),
	combout => \R1ID_EX~47_combout\);

-- Location: LCCOMB_X25_Y18_N2
\R1ID_EX~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~48_combout\ = (InID_EX(1) & ((\R1ID_EX~47_combout\ & ((\regs[11][4]~q\))) # (!\R1ID_EX~47_combout\ & (\regs[10][4]~q\)))) # (!InID_EX(1) & (((\R1ID_EX~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(1),
	datab => \regs[10][4]~q\,
	datac => \regs[11][4]~q\,
	datad => \R1ID_EX~47_combout\,
	combout => \R1ID_EX~48_combout\);

-- Location: LCCOMB_X25_Y16_N26
\R1ID_EX~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~56_combout\ = (InID_EX(3) & ((\R1ID_EX~53_combout\ & (\R1ID_EX~55_combout\)) # (!\R1ID_EX~53_combout\ & ((\R1ID_EX~48_combout\))))) # (!InID_EX(3) & (((\R1ID_EX~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(3),
	datab => \R1ID_EX~55_combout\,
	datac => \R1ID_EX~53_combout\,
	datad => \R1ID_EX~48_combout\,
	combout => \R1ID_EX~56_combout\);

-- Location: LCCOMB_X21_Y16_N12
\R1ID_EX~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~57_combout\ = (\R0ID_EX[3]~0_combout\ & \R1ID_EX~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R1ID_EX~56_combout\,
	combout => \R1ID_EX~57_combout\);

-- Location: FF_X21_Y16_N13
\R1ID_EX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R1ID_EX~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \R1ID_EX[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1ID_EX(4));

-- Location: FF_X24_Y18_N3
\regs[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][5]~q\);

-- Location: LCCOMB_X26_Y18_N6
\regs[10][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~32_combout\,
	combout => \regs[10][5]~feeder_combout\);

-- Location: FF_X26_Y18_N7
\regs[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[10][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][5]~q\);

-- Location: LCCOMB_X26_Y19_N16
\R1ID_EX~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~58_combout\ = (InID_EX(2) & (((InID_EX(3))))) # (!InID_EX(2) & ((InID_EX(3) & ((\regs[10][5]~q\))) # (!InID_EX(3) & (\regs[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][5]~q\,
	datab => InID_EX(2),
	datac => InID_EX(3),
	datad => \regs[10][5]~q\,
	combout => \R1ID_EX~58_combout\);

-- Location: LCCOMB_X25_Y19_N16
\R1ID_EX~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~59_combout\ = (InID_EX(2) & ((\R1ID_EX~58_combout\ & ((\regs[14][5]~q\))) # (!\R1ID_EX~58_combout\ & (\regs[6][5]~q\)))) # (!InID_EX(2) & (((\R1ID_EX~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(2),
	datab => \regs[6][5]~q\,
	datac => \regs[14][5]~q\,
	datad => \R1ID_EX~58_combout\,
	combout => \R1ID_EX~59_combout\);

-- Location: LCCOMB_X24_Y19_N30
\regs[4][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~32_combout\,
	combout => \regs[4][5]~feeder_combout\);

-- Location: FF_X24_Y19_N31
\regs[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[4][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[4][0]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][5]~q\);

-- Location: LCCOMB_X21_Y15_N10
\R1ID_EX~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~62_combout\ = (InID_EX(3) & (((\regs[8][5]~q\) # (InID_EX(2))))) # (!InID_EX(3) & (\regs[0][5]~q\ & ((!InID_EX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][5]~q\,
	datab => \regs[8][5]~q\,
	datac => InID_EX(3),
	datad => InID_EX(2),
	combout => \R1ID_EX~62_combout\);

-- Location: LCCOMB_X25_Y19_N26
\R1ID_EX~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~63_combout\ = (InID_EX(2) & ((\R1ID_EX~62_combout\ & ((\regs[12][5]~q\))) # (!\R1ID_EX~62_combout\ & (\regs[4][5]~q\)))) # (!InID_EX(2) & (((\R1ID_EX~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(2),
	datab => \regs[4][5]~q\,
	datac => \regs[12][5]~q\,
	datad => \R1ID_EX~62_combout\,
	combout => \R1ID_EX~63_combout\);

-- Location: LCCOMB_X25_Y16_N22
\R1ID_EX~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~60_combout\ = (InID_EX(3) & (((InID_EX(2))))) # (!InID_EX(3) & ((InID_EX(2) & (\regs[5][5]~q\)) # (!InID_EX(2) & ((\regs[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][5]~q\,
	datab => \regs[1][5]~q\,
	datac => InID_EX(3),
	datad => InID_EX(2),
	combout => \R1ID_EX~60_combout\);

-- Location: LCCOMB_X26_Y14_N2
\regs[9][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~32_combout\,
	combout => \regs[9][5]~feeder_combout\);

-- Location: FF_X26_Y14_N3
\regs[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[9][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][5]~q\);

-- Location: LCCOMB_X25_Y14_N6
\R1ID_EX~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~61_combout\ = (InID_EX(3) & ((\R1ID_EX~60_combout\ & (\regs[13][5]~q\)) # (!\R1ID_EX~60_combout\ & ((\regs[9][5]~q\))))) # (!InID_EX(3) & (((\R1ID_EX~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(3),
	datab => \regs[13][5]~q\,
	datac => \R1ID_EX~60_combout\,
	datad => \regs[9][5]~q\,
	combout => \R1ID_EX~61_combout\);

-- Location: LCCOMB_X25_Y19_N12
\R1ID_EX~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~64_combout\ = (InID_EX(0) & ((InID_EX(1)) # ((\R1ID_EX~61_combout\)))) # (!InID_EX(0) & (!InID_EX(1) & (\R1ID_EX~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => InID_EX(1),
	datac => \R1ID_EX~63_combout\,
	datad => \R1ID_EX~61_combout\,
	combout => \R1ID_EX~64_combout\);

-- Location: LCCOMB_X25_Y19_N0
\R1ID_EX~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~67_combout\ = (InID_EX(1) & ((\R1ID_EX~64_combout\ & (\R1ID_EX~66_combout\)) # (!\R1ID_EX~64_combout\ & ((\R1ID_EX~59_combout\))))) # (!InID_EX(1) & (((\R1ID_EX~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R1ID_EX~66_combout\,
	datab => \R1ID_EX~59_combout\,
	datac => InID_EX(1),
	datad => \R1ID_EX~64_combout\,
	combout => \R1ID_EX~67_combout\);

-- Location: LCCOMB_X21_Y16_N22
\R1ID_EX~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R1ID_EX~68_combout\ = (\R0ID_EX[3]~0_combout\ & \R1ID_EX~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R1ID_EX~67_combout\,
	combout => \R1ID_EX~68_combout\);

-- Location: FF_X21_Y16_N23
\R1ID_EX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R1ID_EX~68_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \R1ID_EX[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => R1ID_EX(5));

-- Location: DSPMULT_X20_Y16_N0
\Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clock~inputclkctrl_outclk\,
	aclr => \reset~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y17_N26
\Mult0|auto_generated|le4a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(5) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & (\R0ID_EX[5]~_Duplicate_1_q\ $ (((\Mult0|auto_generated|cs1a[1]~0_combout\))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (((!\R0ID_EX[4]~_Duplicate_1_q\ & 
-- \Mult0|auto_generated|cs1a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \R0ID_EX[5]~_Duplicate_1_q\,
	datac => \R0ID_EX[4]~_Duplicate_1_q\,
	datad => \Mult0|auto_generated|cs1a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X19_Y16_N12
\Mult0|auto_generated|cs2a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs2a[1]~0_combout\ = InEX_MEM(2) $ (InEX_MEM(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => InEX_MEM(2),
	datad => InEX_MEM(1),
	combout => \Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X18_Y16_N16
\Mult0|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\Mult0|auto_generated|cs1a[1]~0_combout\ $ (\R0ID_EX[4]~_Duplicate_1_q\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\R0ID_EX[3]~_Duplicate_1_q\ & 
-- (\Mult0|auto_generated|cs1a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~_Duplicate_1_q\,
	datab => \Mult0|auto_generated|cs1a[1]~0_combout\,
	datac => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \R0ID_EX[4]~_Duplicate_1_q\,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X19_Y16_N8
\Mult0|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Mult0|auto_generated|cs1a[1]~0_combout\ $ ((\R0ID_EX[3]~_Duplicate_1_q\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (\Mult0|auto_generated|cs1a[1]~0_combout\ & 
-- ((!\R0ID_EX[2]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a[1]~0_combout\,
	datab => \R0ID_EX[3]~_Duplicate_1_q\,
	datac => \R0ID_EX[2]~_Duplicate_1_q\,
	datad => \Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X19_Y16_N22
\Mult0|auto_generated|le3a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((InEX_MEM(0) & (InEX_MEM(1) $ (((\R0ID_EX[4]~_Duplicate_1_q\))))) # (!InEX_MEM(0) & (InEX_MEM(1) & (!\R0ID_EX[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(1),
	datab => InEX_MEM(0),
	datac => \R0ID_EX[3]~_Duplicate_1_q\,
	datad => \R0ID_EX[4]~_Duplicate_1_q\,
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X18_Y16_N24
\Mult0|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|le4a\(3) & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|le3a\(5) 
-- & ((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le3a\(5) & ((!\Mult0|auto_generated|op_1~5\) # (!\Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(5),
	datab => \Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X18_Y16_N28
\Mult0|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = \Mult0|auto_generated|le3a\(7) $ (\Mult0|auto_generated|op_1~9\ $ (\Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(7),
	datad => \Mult0|auto_generated|le4a\(5),
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X19_Y15_N0
\Mult0|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\R0ID_EX[2]~_Duplicate_1_q\ & ((InEX_MEM(3)) # ((InEX_MEM(1) & InEX_MEM(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(3),
	datab => InEX_MEM(1),
	datac => \R0ID_EX[2]~_Duplicate_1_q\,
	datad => InEX_MEM(2),
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X18_Y16_N14
\Mult0|auto_generated|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~14_combout\ = \Mult0|auto_generated|le5a\(3) $ (\Mult0|auto_generated|op_3~13\ $ (\Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(3),
	datad => \Mult0|auto_generated|op_1~10_combout\,
	cin => \Mult0|auto_generated|op_3~13\,
	combout => \Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X22_Y16_N30
\ulaEX_MEM~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM~36_combout\ = (InEX_MEM(12) & (\Mult1|auto_generated|mac_out2~DATAOUT7\)) # (!InEX_MEM(12) & ((\Mult0|auto_generated|op_3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => InEX_MEM(12),
	datac => \Mult1|auto_generated|mac_out2~DATAOUT7\,
	datad => \Mult0|auto_generated|op_3~14_combout\,
	combout => \ulaEX_MEM~36_combout\);

-- Location: LCCOMB_X22_Y16_N18
\ulaEX_MEM[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[7]~13_combout\ = (InEX_MEM(15) & (!InEX_MEM(12))) # (!InEX_MEM(15) & (InEX_MEM(12) & InEX_MEM(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => InEX_MEM(15),
	datac => InEX_MEM(12),
	datad => InEX_MEM(13),
	combout => \ulaEX_MEM[7]~13_combout\);

-- Location: LCCOMB_X19_Y17_N18
\ulaEX_MEM[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[7]~14_combout\ = (InEX_MEM(14)) # ((!InEX_MEM(12) & (InEX_MEM(15) $ (!InEX_MEM(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(15),
	datab => InEX_MEM(14),
	datac => InEX_MEM(13),
	datad => InEX_MEM(12),
	combout => \ulaEX_MEM[7]~14_combout\);

-- Location: LCCOMB_X22_Y17_N10
\ulaEX_MEM[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM[7]~15_combout\ = ((\Equal0~4_combout\ & ((\desvio~1_combout\))) # (!\Equal0~4_combout\ & (\desvio~0_combout\))) # (!\ulaEX_MEM[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datab => \desvio~1_combout\,
	datac => \ulaEX_MEM[7]~14_combout\,
	datad => \Equal0~4_combout\,
	combout => \ulaEX_MEM[7]~15_combout\);

-- Location: FF_X22_Y16_N17
\ulaEX_MEM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ulaEX_MEM[7]~34_combout\,
	asdata => \ulaEX_MEM~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_desvio~2_combout\,
	sload => \ulaEX_MEM[7]~13_combout\,
	ena => \ulaEX_MEM[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ulaEX_MEM(7));

-- Location: LCCOMB_X24_Y15_N22
\Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (InMEM_WB(15) & (!InMEM_WB(12) & (!InMEM_WB(14) & InMEM_WB(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InMEM_WB(15),
	datab => InMEM_WB(12),
	datac => InMEM_WB(14),
	datad => InMEM_WB(13),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X23_Y15_N26
\regs~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~37_combout\ = (!\Equal9~0_combout\ & ((\Equal10~0_combout\ & (InMEM_WB(6))) # (!\Equal10~0_combout\ & ((ulaEX_MEM(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => InMEM_WB(6),
	datac => ulaEX_MEM(7),
	datad => \Equal10~0_combout\,
	combout => \regs~37_combout\);

-- Location: LCCOMB_X22_Y15_N28
\mem_d_rtl_0_bypass[32]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_d_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X22_Y15_N29
\mem_d_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(32));

-- Location: FF_X23_Y15_N1
\mem_d_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(31));

-- Location: FF_X26_Y15_N31
\mem_d~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(7),
	sload => VCC,
	ena => \mem_d~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~25_q\);

-- Location: M9K_X27_Y15_N0
\mem_d_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000001000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/MIPS_Pipeline.ram1_MIPS_Pipeline_ef1397e3.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:mem_d_rtl_0|altsyncram_aom1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem_d~32_combout\,
	portbre => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_d_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem_d_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \mem_d_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X23_Y15_N18
\regs~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~38_combout\ = (\mem_d~17_q\ & ((\mem_d_rtl_0|auto_generated|ram_block1a7\))) # (!\mem_d~17_q\ & (\mem_d~25_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~17_q\,
	datac => \mem_d~25_q\,
	datad => \mem_d_rtl_0|auto_generated|ram_block1a7\,
	combout => \regs~38_combout\);

-- Location: LCCOMB_X23_Y15_N0
\regs~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~39_combout\ = (\mem_d~31_combout\ & (((mem_d_rtl_0_bypass(31))))) # (!\mem_d~31_combout\ & ((mem_d_rtl_0_bypass(32) & ((\regs~38_combout\))) # (!mem_d_rtl_0_bypass(32) & (mem_d_rtl_0_bypass(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~31_combout\,
	datab => mem_d_rtl_0_bypass(32),
	datac => mem_d_rtl_0_bypass(31),
	datad => \regs~38_combout\,
	combout => \regs~39_combout\);

-- Location: LCCOMB_X23_Y15_N24
\regs~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~40_combout\ = (\regs~37_combout\) # ((\Equal9~0_combout\ & \regs~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datac => \regs~37_combout\,
	datad => \regs~39_combout\,
	combout => \regs~40_combout\);

-- Location: LCCOMB_X23_Y14_N22
\regs[11][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[11][7]~feeder_combout\);

-- Location: FF_X23_Y14_N23
\regs[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[11][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[11][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][7]~q\);

-- Location: LCCOMB_X23_Y16_N24
\RwID_EX~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~74_combout\ = (InID_EX(11) & ((\regs[11][7]~q\) # ((InID_EX(10))))) # (!InID_EX(11) & (((!InID_EX(10) & \regs[3][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(11),
	datab => \regs[11][7]~q\,
	datac => InID_EX(10),
	datad => \regs[3][7]~q\,
	combout => \RwID_EX~74_combout\);

-- Location: LCCOMB_X24_Y16_N18
\RwID_EX~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~75_combout\ = (\RwID_EX~74_combout\ & (((\regs[15][7]~q\) # (!InID_EX(10))))) # (!\RwID_EX~74_combout\ & (\regs[7][7]~q\ & ((InID_EX(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[7][7]~q\,
	datab => \RwID_EX~74_combout\,
	datac => \regs[15][7]~q\,
	datad => InID_EX(10),
	combout => \RwID_EX~75_combout\);

-- Location: LCCOMB_X24_Y16_N24
\regs[14][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][7]~feeder_combout\ = \regs~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~40_combout\,
	combout => \regs[14][7]~feeder_combout\);

-- Location: FF_X24_Y16_N25
\regs[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[14][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[14][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][7]~q\);

-- Location: LCCOMB_X21_Y15_N28
\RwID_EX~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~69_combout\ = (InID_EX(10) & ((InID_EX(11)) # ((\regs[6][7]~q\)))) # (!InID_EX(10) & (!InID_EX(11) & ((\regs[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(10),
	datab => InID_EX(11),
	datac => \regs[6][7]~q\,
	datad => \regs[2][7]~q\,
	combout => \RwID_EX~69_combout\);

-- Location: LCCOMB_X21_Y15_N30
\RwID_EX~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~70_combout\ = (InID_EX(11) & ((\RwID_EX~69_combout\ & ((\regs[14][7]~q\))) # (!\RwID_EX~69_combout\ & (\regs[10][7]~q\)))) # (!InID_EX(11) & (((\RwID_EX~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][7]~q\,
	datab => InID_EX(11),
	datac => \regs[14][7]~q\,
	datad => \RwID_EX~69_combout\,
	combout => \RwID_EX~70_combout\);

-- Location: LCCOMB_X24_Y17_N22
\RwID_EX~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~71_combout\ = (InID_EX(10) & ((InID_EX(11)) # ((\regs[4][7]~q\)))) # (!InID_EX(10) & (!InID_EX(11) & (\regs[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(10),
	datab => InID_EX(11),
	datac => \regs[0][7]~q\,
	datad => \regs[4][7]~q\,
	combout => \RwID_EX~71_combout\);

-- Location: LCCOMB_X24_Y17_N0
\RwID_EX~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~72_combout\ = (InID_EX(11) & ((\RwID_EX~71_combout\ & (\regs[12][7]~q\)) # (!\RwID_EX~71_combout\ & ((\regs[8][7]~q\))))) # (!InID_EX(11) & (((\RwID_EX~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][7]~q\,
	datab => InID_EX(11),
	datac => \RwID_EX~71_combout\,
	datad => \regs[8][7]~q\,
	combout => \RwID_EX~72_combout\);

-- Location: LCCOMB_X24_Y16_N0
\RwID_EX~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~73_combout\ = (InID_EX(8) & (((InID_EX(9))))) # (!InID_EX(8) & ((InID_EX(9) & (\RwID_EX~70_combout\)) # (!InID_EX(9) & ((\RwID_EX~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(8),
	datab => \RwID_EX~70_combout\,
	datac => \RwID_EX~72_combout\,
	datad => InID_EX(9),
	combout => \RwID_EX~73_combout\);

-- Location: LCCOMB_X24_Y16_N28
\RwID_EX~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~76_combout\ = (InID_EX(8) & ((\RwID_EX~73_combout\ & ((\RwID_EX~75_combout\))) # (!\RwID_EX~73_combout\ & (\RwID_EX~68_combout\)))) # (!InID_EX(8) & (((\RwID_EX~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RwID_EX~68_combout\,
	datab => \RwID_EX~75_combout\,
	datac => InID_EX(8),
	datad => \RwID_EX~73_combout\,
	combout => \RwID_EX~76_combout\);

-- Location: LCCOMB_X22_Y18_N10
\RwID_EX~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~77_combout\ = (\R0ID_EX[3]~0_combout\ & \RwID_EX~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~0_combout\,
	datad => \RwID_EX~76_combout\,
	combout => \RwID_EX~77_combout\);

-- Location: FF_X22_Y18_N11
\RwID_EX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwID_EX~77_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \RwID_EX[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwID_EX(7));

-- Location: LCCOMB_X22_Y18_N28
\RwEX_MEM[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwEX_MEM[7]~feeder_combout\ = RwID_EX(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RwID_EX(7),
	combout => \RwEX_MEM[7]~feeder_combout\);

-- Location: FF_X22_Y18_N29
\RwEX_MEM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwEX_MEM[7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwEX_MEM(7));

-- Location: LCCOMB_X26_Y15_N24
\regs~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~34_combout\ = (\mem_d~17_q\ & ((\mem_d_rtl_0|auto_generated|ram_block1a6\))) # (!\mem_d~17_q\ & (\mem_d~24_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~17_q\,
	datac => \mem_d~24_q\,
	datad => \mem_d_rtl_0|auto_generated|ram_block1a6\,
	combout => \regs~34_combout\);

-- Location: LCCOMB_X26_Y15_N18
\regs~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~35_combout\ = (\mem_d~31_combout\ & (((mem_d_rtl_0_bypass(29))))) # (!\mem_d~31_combout\ & ((mem_d_rtl_0_bypass(30) & ((\regs~34_combout\))) # (!mem_d_rtl_0_bypass(30) & (mem_d_rtl_0_bypass(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~31_combout\,
	datab => mem_d_rtl_0_bypass(30),
	datac => mem_d_rtl_0_bypass(29),
	datad => \regs~34_combout\,
	combout => \regs~35_combout\);

-- Location: LCCOMB_X26_Y15_N30
\regs~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~36_combout\ = (\regs~33_combout\) # ((\Equal9~0_combout\ & \regs~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs~33_combout\,
	datab => \Equal9~0_combout\,
	datad => \regs~35_combout\,
	combout => \regs~36_combout\);

-- Location: FF_X25_Y17_N3
\regs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][6]~q\);

-- Location: FF_X25_Y19_N7
\regs[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][6]~q\);

-- Location: LCCOMB_X25_Y19_N6
\RwID_EX~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~78_combout\ = (InID_EX(8) & (((\regs[5][6]~q\) # (InID_EX(9))))) # (!InID_EX(8) & (\regs[4][6]~q\ & ((!InID_EX(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(8),
	datab => \regs[4][6]~q\,
	datac => \regs[5][6]~q\,
	datad => InID_EX(9),
	combout => \RwID_EX~78_combout\);

-- Location: LCCOMB_X21_Y15_N16
\RwID_EX~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~79_combout\ = (InID_EX(9) & ((\RwID_EX~78_combout\ & ((\regs[7][6]~q\))) # (!\RwID_EX~78_combout\ & (\regs[6][6]~q\)))) # (!InID_EX(9) & (((\RwID_EX~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][6]~q\,
	datab => InID_EX(9),
	datac => \regs[7][6]~q\,
	datad => \RwID_EX~78_combout\,
	combout => \RwID_EX~79_combout\);

-- Location: LCCOMB_X24_Y17_N18
\RwID_EX~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~82_combout\ = (InID_EX(9) & ((\regs[2][6]~q\) # ((InID_EX(8))))) # (!InID_EX(9) & (((\regs[0][6]~q\ & !InID_EX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => \regs[2][6]~q\,
	datac => \regs[0][6]~q\,
	datad => InID_EX(8),
	combout => \RwID_EX~82_combout\);

-- Location: LCCOMB_X25_Y15_N30
\RwID_EX~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~83_combout\ = (\RwID_EX~82_combout\ & ((\regs[3][6]~q\) # ((!InID_EX(8))))) # (!\RwID_EX~82_combout\ & (((\regs[1][6]~q\ & InID_EX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][6]~q\,
	datab => \regs[1][6]~q\,
	datac => \RwID_EX~82_combout\,
	datad => InID_EX(8),
	combout => \RwID_EX~83_combout\);

-- Location: FF_X23_Y17_N5
\regs[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][6]~q\);

-- Location: LCCOMB_X23_Y18_N20
\regs[8][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][6]~feeder_combout\ = \regs~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~36_combout\,
	combout => \regs[8][6]~feeder_combout\);

-- Location: FF_X23_Y18_N21
\regs[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[8][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[8][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][6]~q\);

-- Location: LCCOMB_X23_Y17_N6
\RwID_EX~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~80_combout\ = (InID_EX(9) & ((InID_EX(8)) # ((\regs[10][6]~q\)))) # (!InID_EX(9) & (!InID_EX(8) & ((\regs[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => InID_EX(8),
	datac => \regs[10][6]~q\,
	datad => \regs[8][6]~q\,
	combout => \RwID_EX~80_combout\);

-- Location: FF_X25_Y18_N7
\regs[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][6]~q\);

-- Location: LCCOMB_X25_Y18_N6
\RwID_EX~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~81_combout\ = (\RwID_EX~80_combout\ & (((\regs[11][6]~q\) # (!InID_EX(8))))) # (!\RwID_EX~80_combout\ & (\regs[9][6]~q\ & ((InID_EX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][6]~q\,
	datab => \RwID_EX~80_combout\,
	datac => \regs[11][6]~q\,
	datad => InID_EX(8),
	combout => \RwID_EX~81_combout\);

-- Location: LCCOMB_X24_Y14_N6
\RwID_EX~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~84_combout\ = (InID_EX(10) & (InID_EX(11))) # (!InID_EX(10) & ((InID_EX(11) & ((\RwID_EX~81_combout\))) # (!InID_EX(11) & (\RwID_EX~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(10),
	datab => InID_EX(11),
	datac => \RwID_EX~83_combout\,
	datad => \RwID_EX~81_combout\,
	combout => \RwID_EX~84_combout\);

-- Location: LCCOMB_X23_Y14_N4
\RwID_EX~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~87_combout\ = (InID_EX(10) & ((\RwID_EX~84_combout\ & (\RwID_EX~86_combout\)) # (!\RwID_EX~84_combout\ & ((\RwID_EX~79_combout\))))) # (!InID_EX(10) & (((\RwID_EX~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RwID_EX~86_combout\,
	datab => InID_EX(10),
	datac => \RwID_EX~79_combout\,
	datad => \RwID_EX~84_combout\,
	combout => \RwID_EX~87_combout\);

-- Location: LCCOMB_X22_Y18_N16
\RwID_EX~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~88_combout\ = (\R0ID_EX[3]~0_combout\ & \RwID_EX~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~0_combout\,
	datad => \RwID_EX~87_combout\,
	combout => \RwID_EX~88_combout\);

-- Location: FF_X22_Y18_N17
\RwID_EX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwID_EX~88_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \RwID_EX[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwID_EX(6));

-- Location: LCCOMB_X23_Y19_N28
\RwEX_MEM[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwEX_MEM[6]~feeder_combout\ = RwID_EX(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RwID_EX(6),
	combout => \RwEX_MEM[6]~feeder_combout\);

-- Location: FF_X23_Y19_N29
\RwEX_MEM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwEX_MEM[6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwEX_MEM(6));

-- Location: FF_X26_Y15_N29
\mem_d~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(5),
	sload => VCC,
	ena => \mem_d~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~23_q\);

-- Location: LCCOMB_X24_Y15_N8
\mem_d~17feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~17feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_d~17feeder_combout\);

-- Location: FF_X24_Y15_N9
\mem_d~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~17feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~17_q\);

-- Location: LCCOMB_X26_Y15_N28
\regs~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~30_combout\ = (\mem_d~17_q\ & (\mem_d_rtl_0|auto_generated|ram_block1a5\)) # (!\mem_d~17_q\ & ((\mem_d~23_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d_rtl_0|auto_generated|ram_block1a5\,
	datac => \mem_d~23_q\,
	datad => \mem_d~17_q\,
	combout => \regs~30_combout\);

-- Location: LCCOMB_X26_Y15_N22
\regs~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~31_combout\ = (mem_d_rtl_0_bypass(28) & ((\mem_d~31_combout\ & (mem_d_rtl_0_bypass(27))) # (!\mem_d~31_combout\ & ((\regs~30_combout\))))) # (!mem_d_rtl_0_bypass(28) & (((mem_d_rtl_0_bypass(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_d_rtl_0_bypass(28),
	datab => \mem_d~31_combout\,
	datac => mem_d_rtl_0_bypass(27),
	datad => \regs~30_combout\,
	combout => \regs~31_combout\);

-- Location: LCCOMB_X25_Y15_N22
\regs~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~32_combout\ = (\regs~29_combout\) # ((\Equal9~0_combout\ & \regs~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs~29_combout\,
	datab => \Equal9~0_combout\,
	datad => \regs~31_combout\,
	combout => \regs~32_combout\);

-- Location: LCCOMB_X24_Y14_N4
\regs[13][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][5]~feeder_combout\ = \regs~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~32_combout\,
	combout => \regs[13][5]~feeder_combout\);

-- Location: FF_X24_Y14_N5
\regs[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[13][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[13][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][5]~q\);

-- Location: LCCOMB_X24_Y18_N2
\R0ID_EX~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~26_combout\ = (InID_EX(4) & (InID_EX(5))) # (!InID_EX(4) & ((InID_EX(5) & (\regs[14][5]~q\)) # (!InID_EX(5) & ((\regs[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => InID_EX(5),
	datac => \regs[14][5]~q\,
	datad => \regs[12][5]~q\,
	combout => \R0ID_EX~26_combout\);

-- Location: LCCOMB_X24_Y14_N8
\R0ID_EX~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~27_combout\ = (\R0ID_EX~26_combout\ & ((\regs[15][5]~q\) # ((!InID_EX(4))))) # (!\R0ID_EX~26_combout\ & (((\regs[13][5]~q\ & InID_EX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][5]~q\,
	datab => \regs[13][5]~q\,
	datac => \R0ID_EX~26_combout\,
	datad => InID_EX(4),
	combout => \R0ID_EX~27_combout\);

-- Location: LCCOMB_X23_Y16_N10
\R0ID_EX~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~30_combout\ = (\R0ID_EX[3]~0_combout\ & ((InID_EX(6) & ((\R0ID_EX~27_combout\))) # (!InID_EX(6) & (\R0ID_EX~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX~29_combout\,
	datab => InID_EX(6),
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R0ID_EX~27_combout\,
	combout => \R0ID_EX~30_combout\);

-- Location: LCCOMB_X21_Y16_N6
\ulaEX_MEM~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM~27_combout\ = (InEX_MEM(12) & ((\Mult1|auto_generated|mac_out2~DATAOUT4\))) # (!InEX_MEM(12) & (\Mult0|auto_generated|op_3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(12),
	datac => \Mult0|auto_generated|op_3~8_combout\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT4\,
	combout => \ulaEX_MEM~27_combout\);

-- Location: FF_X22_Y16_N11
\ulaEX_MEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ulaEX_MEM[4]~25_combout\,
	asdata => \ulaEX_MEM~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_desvio~2_combout\,
	sload => \ulaEX_MEM[7]~13_combout\,
	ena => \ulaEX_MEM[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ulaEX_MEM(4));

-- Location: LCCOMB_X22_Y15_N10
\regs~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~25_combout\ = (!\Equal9~0_combout\ & ((\Equal10~0_combout\ & ((InMEM_WB(4)))) # (!\Equal10~0_combout\ & (ulaEX_MEM(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => ulaEX_MEM(4),
	datac => InMEM_WB(4),
	datad => \Equal9~0_combout\,
	combout => \regs~25_combout\);

-- Location: LCCOMB_X26_Y15_N12
\mem_d_rtl_0_bypass[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_d_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X26_Y15_N13
\mem_d_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(26));

-- Location: FF_X26_Y15_N17
\mem_d_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(25));

-- Location: FF_X26_Y15_N7
\mem_d~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(4),
	sload => VCC,
	ena => \mem_d~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~22_q\);

-- Location: LCCOMB_X26_Y15_N6
\regs~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~26_combout\ = (\mem_d~17_q\ & ((\mem_d_rtl_0|auto_generated|ram_block1a4\))) # (!\mem_d~17_q\ & (\mem_d~22_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~17_q\,
	datac => \mem_d~22_q\,
	datad => \mem_d_rtl_0|auto_generated|ram_block1a4\,
	combout => \regs~26_combout\);

-- Location: LCCOMB_X26_Y15_N16
\regs~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~27_combout\ = (\mem_d~31_combout\ & (((mem_d_rtl_0_bypass(25))))) # (!\mem_d~31_combout\ & ((mem_d_rtl_0_bypass(26) & ((\regs~26_combout\))) # (!mem_d_rtl_0_bypass(26) & (mem_d_rtl_0_bypass(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~31_combout\,
	datab => mem_d_rtl_0_bypass(26),
	datac => mem_d_rtl_0_bypass(25),
	datad => \regs~26_combout\,
	combout => \regs~27_combout\);

-- Location: LCCOMB_X25_Y15_N16
\regs~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~28_combout\ = (\regs~25_combout\) # ((\Equal9~0_combout\ & \regs~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal9~0_combout\,
	datac => \regs~25_combout\,
	datad => \regs~27_combout\,
	combout => \regs~28_combout\);

-- Location: LCCOMB_X25_Y14_N12
\regs[2][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][4]~feeder_combout\ = \regs~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~28_combout\,
	combout => \regs[2][4]~feeder_combout\);

-- Location: FF_X25_Y14_N13
\regs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[2][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[2][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][4]~q\);

-- Location: LCCOMB_X24_Y19_N24
\R0ID_EX~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~23_combout\ = (InID_EX(4) & ((InID_EX(5)) # ((\regs[1][4]~q\)))) # (!InID_EX(4) & (!InID_EX(5) & (\regs[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => InID_EX(5),
	datac => \regs[0][4]~q\,
	datad => \regs[1][4]~q\,
	combout => \R0ID_EX~23_combout\);

-- Location: LCCOMB_X24_Y19_N14
\R0ID_EX~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~24_combout\ = (InID_EX(5) & ((\R0ID_EX~23_combout\ & (\regs[3][4]~q\)) # (!\R0ID_EX~23_combout\ & ((\regs[2][4]~q\))))) # (!InID_EX(5) & (((\R0ID_EX~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][4]~q\,
	datab => InID_EX(5),
	datac => \regs[2][4]~q\,
	datad => \R0ID_EX~23_combout\,
	combout => \R0ID_EX~24_combout\);

-- Location: LCCOMB_X24_Y14_N2
\regs[13][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][4]~feeder_combout\ = \regs~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~28_combout\,
	combout => \regs[13][4]~feeder_combout\);

-- Location: FF_X24_Y14_N3
\regs[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[13][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[13][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][4]~q\);

-- Location: LCCOMB_X26_Y16_N8
\R0ID_EX~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~21_combout\ = (InID_EX(5) & (((\regs[14][4]~q\) # (InID_EX(4))))) # (!InID_EX(5) & (\regs[12][4]~q\ & ((!InID_EX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][4]~q\,
	datab => InID_EX(5),
	datac => \regs[14][4]~q\,
	datad => InID_EX(4),
	combout => \R0ID_EX~21_combout\);

-- Location: LCCOMB_X24_Y16_N20
\R0ID_EX~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~22_combout\ = (InID_EX(4) & ((\R0ID_EX~21_combout\ & (\regs[15][4]~q\)) # (!\R0ID_EX~21_combout\ & ((\regs[13][4]~q\))))) # (!InID_EX(4) & (((\R0ID_EX~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => \regs[15][4]~q\,
	datac => \regs[13][4]~q\,
	datad => \R0ID_EX~21_combout\,
	combout => \R0ID_EX~22_combout\);

-- Location: LCCOMB_X19_Y16_N28
\R0ID_EX~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~25_combout\ = (\R0ID_EX[3]~0_combout\ & ((InID_EX(6) & ((\R0ID_EX~22_combout\))) # (!InID_EX(6) & (\R0ID_EX~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(6),
	datab => \R0ID_EX~24_combout\,
	datac => \R0ID_EX~22_combout\,
	datad => \R0ID_EX[3]~0_combout\,
	combout => \R0ID_EX~25_combout\);

-- Location: LCCOMB_X19_Y16_N24
\ulaEX_MEM~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM~24_combout\ = (InEX_MEM(12) & ((\Mult1|auto_generated|mac_out2~DATAOUT3\))) # (!InEX_MEM(12) & (\Mult0|auto_generated|op_3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(12),
	datab => \Mult0|auto_generated|op_3~6_combout\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT3\,
	combout => \ulaEX_MEM~24_combout\);

-- Location: FF_X22_Y16_N9
\ulaEX_MEM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ulaEX_MEM[3]~22_combout\,
	asdata => \ulaEX_MEM~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_desvio~2_combout\,
	sload => \ulaEX_MEM[7]~13_combout\,
	ena => \ulaEX_MEM[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ulaEX_MEM(3));

-- Location: LCCOMB_X22_Y15_N8
\regs~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~21_combout\ = (!\Equal9~0_combout\ & ((\Equal10~0_combout\ & ((InMEM_WB(3)))) # (!\Equal10~0_combout\ & (ulaEX_MEM(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => ulaEX_MEM(3),
	datac => InMEM_WB(3),
	datad => \Equal9~0_combout\,
	combout => \regs~21_combout\);

-- Location: LCCOMB_X22_Y15_N0
\mem_d_rtl_0_bypass[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_d_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X22_Y15_N1
\mem_d_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(24));

-- Location: FF_X22_Y15_N21
\mem_d_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(23));

-- Location: FF_X26_Y15_N15
\mem_d~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(3),
	sload => VCC,
	ena => \mem_d~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~21_q\);

-- Location: LCCOMB_X26_Y15_N14
\regs~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~22_combout\ = (\mem_d~17_q\ & ((\mem_d_rtl_0|auto_generated|ram_block1a3\))) # (!\mem_d~17_q\ & (\mem_d~21_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~17_q\,
	datac => \mem_d~21_q\,
	datad => \mem_d_rtl_0|auto_generated|ram_block1a3\,
	combout => \regs~22_combout\);

-- Location: LCCOMB_X22_Y15_N20
\regs~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~23_combout\ = (\mem_d~31_combout\ & (((mem_d_rtl_0_bypass(23))))) # (!\mem_d~31_combout\ & ((mem_d_rtl_0_bypass(24) & ((\regs~22_combout\))) # (!mem_d_rtl_0_bypass(24) & (mem_d_rtl_0_bypass(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~31_combout\,
	datab => mem_d_rtl_0_bypass(24),
	datac => mem_d_rtl_0_bypass(23),
	datad => \regs~22_combout\,
	combout => \regs~23_combout\);

-- Location: LCCOMB_X22_Y15_N30
\regs~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~24_combout\ = (\regs~21_combout\) # ((\Equal9~0_combout\ & \regs~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal9~0_combout\,
	datac => \regs~21_combout\,
	datad => \regs~23_combout\,
	combout => \regs~24_combout\);

-- Location: LCCOMB_X21_Y15_N0
\regs[0][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][3]~feeder_combout\ = \regs~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~24_combout\,
	combout => \regs[0][3]~feeder_combout\);

-- Location: FF_X21_Y15_N1
\regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[0][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[0][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][3]~q\);

-- Location: LCCOMB_X24_Y18_N22
\R0ID_EX~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~18_combout\ = (InID_EX(5) & (((InID_EX(4))))) # (!InID_EX(5) & ((InID_EX(4) & (\regs[1][3]~q\)) # (!InID_EX(4) & ((\regs[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][3]~q\,
	datab => InID_EX(5),
	datac => InID_EX(4),
	datad => \regs[0][3]~q\,
	combout => \R0ID_EX~18_combout\);

-- Location: LCCOMB_X24_Y18_N4
\R0ID_EX~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~19_combout\ = (InID_EX(5) & ((\R0ID_EX~18_combout\ & ((\regs[3][3]~q\))) # (!\R0ID_EX~18_combout\ & (\regs[2][3]~q\)))) # (!InID_EX(5) & (((\R0ID_EX~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][3]~q\,
	datab => InID_EX(5),
	datac => \R0ID_EX~18_combout\,
	datad => \regs[3][3]~q\,
	combout => \R0ID_EX~19_combout\);

-- Location: LCCOMB_X21_Y16_N4
\R0ID_EX~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~20_combout\ = (\R0ID_EX[3]~0_combout\ & ((InID_EX(6) & (\R0ID_EX~17_combout\)) # (!InID_EX(6) & ((\R0ID_EX~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX~17_combout\,
	datab => InID_EX(6),
	datac => \R0ID_EX[3]~0_combout\,
	datad => \R0ID_EX~19_combout\,
	combout => \R0ID_EX~20_combout\);

-- Location: LCCOMB_X19_Y16_N14
\ulaEX_MEM~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ulaEX_MEM~21_combout\ = (InEX_MEM(12) & ((\Mult1|auto_generated|mac_out2~DATAOUT2\))) # (!InEX_MEM(12) & (\Mult0|auto_generated|op_3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(12),
	datab => \Mult0|auto_generated|op_3~4_combout\,
	datad => \Mult1|auto_generated|mac_out2~DATAOUT2\,
	combout => \ulaEX_MEM~21_combout\);

-- Location: FF_X22_Y16_N7
\ulaEX_MEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ulaEX_MEM[2]~19_combout\,
	asdata => \ulaEX_MEM~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_desvio~2_combout\,
	sload => \ulaEX_MEM[7]~13_combout\,
	ena => \ulaEX_MEM[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ulaEX_MEM(2));

-- Location: LCCOMB_X22_Y15_N16
\regs~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~17_combout\ = (!\Equal9~0_combout\ & ((\Equal10~0_combout\ & ((InMEM_WB(2)))) # (!\Equal10~0_combout\ & (ulaEX_MEM(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => ulaEX_MEM(2),
	datac => InMEM_WB(2),
	datad => \Equal9~0_combout\,
	combout => \regs~17_combout\);

-- Location: LCCOMB_X28_Y16_N16
\mem_d_rtl_0_bypass[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \mem_d_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X28_Y16_N17
\mem_d_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(22));

-- Location: FF_X26_Y15_N11
\mem_d_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mem_d_rtl_0_bypass(21));

-- Location: FF_X26_Y15_N21
\mem_d~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwEX_MEM(2),
	sload => VCC,
	ena => \mem_d~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~20_q\);

-- Location: LCCOMB_X26_Y15_N20
\regs~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~18_combout\ = (\mem_d~17_q\ & ((\mem_d_rtl_0|auto_generated|ram_block1a2\))) # (!\mem_d~17_q\ & (\mem_d~20_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~17_q\,
	datac => \mem_d~20_q\,
	datad => \mem_d_rtl_0|auto_generated|ram_block1a2\,
	combout => \regs~18_combout\);

-- Location: LCCOMB_X26_Y15_N10
\regs~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~19_combout\ = (\mem_d~31_combout\ & (((mem_d_rtl_0_bypass(21))))) # (!\mem_d~31_combout\ & ((mem_d_rtl_0_bypass(22) & ((\regs~18_combout\))) # (!mem_d_rtl_0_bypass(22) & (mem_d_rtl_0_bypass(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~31_combout\,
	datab => mem_d_rtl_0_bypass(22),
	datac => mem_d_rtl_0_bypass(21),
	datad => \regs~18_combout\,
	combout => \regs~19_combout\);

-- Location: LCCOMB_X25_Y17_N28
\regs~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~20_combout\ = (\regs~17_combout\) # ((\Equal9~0_combout\ & \regs~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal9~0_combout\,
	datac => \regs~17_combout\,
	datad => \regs~19_combout\,
	combout => \regs~20_combout\);

-- Location: LCCOMB_X24_Y16_N8
\regs[15][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][2]~feeder_combout\ = \regs~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~20_combout\,
	combout => \regs[15][2]~feeder_combout\);

-- Location: FF_X24_Y16_N9
\regs[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[15][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[15][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][2]~q\);

-- Location: LCCOMB_X26_Y16_N20
\RwID_EX~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~41_combout\ = (InID_EX(9) & (((InID_EX(8))))) # (!InID_EX(9) & ((InID_EX(8) & ((\regs[13][2]~q\))) # (!InID_EX(8) & (\regs[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][2]~q\,
	datab => InID_EX(9),
	datac => \regs[13][2]~q\,
	datad => InID_EX(8),
	combout => \RwID_EX~41_combout\);

-- Location: LCCOMB_X26_Y16_N18
\RwID_EX~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~42_combout\ = (InID_EX(9) & ((\RwID_EX~41_combout\ & ((\regs[15][2]~q\))) # (!\RwID_EX~41_combout\ & (\regs[14][2]~q\)))) # (!InID_EX(9) & (((\RwID_EX~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][2]~q\,
	datab => \regs[15][2]~q\,
	datac => InID_EX(9),
	datad => \RwID_EX~41_combout\,
	combout => \RwID_EX~42_combout\);

-- Location: LCCOMB_X25_Y19_N24
\RwID_EX~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~34_combout\ = (InID_EX(9) & (((InID_EX(8))))) # (!InID_EX(9) & ((InID_EX(8) & (\regs[5][2]~q\)) # (!InID_EX(8) & ((\regs[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => \regs[5][2]~q\,
	datac => InID_EX(8),
	datad => \regs[4][2]~q\,
	combout => \RwID_EX~34_combout\);

-- Location: LCCOMB_X25_Y17_N14
\RwID_EX~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~35_combout\ = (InID_EX(9) & ((\RwID_EX~34_combout\ & ((\regs[7][2]~q\))) # (!\RwID_EX~34_combout\ & (\regs[6][2]~q\)))) # (!InID_EX(9) & (((\RwID_EX~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => \regs[6][2]~q\,
	datac => \RwID_EX~34_combout\,
	datad => \regs[7][2]~q\,
	combout => \RwID_EX~35_combout\);

-- Location: LCCOMB_X29_Y17_N0
\regs[11][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][2]~feeder_combout\ = \regs~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~20_combout\,
	combout => \regs[11][2]~feeder_combout\);

-- Location: FF_X29_Y17_N1
\regs[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[11][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[11][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][2]~q\);

-- Location: LCCOMB_X26_Y18_N20
\regs[10][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][2]~feeder_combout\ = \regs~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~20_combout\,
	combout => \regs[10][2]~feeder_combout\);

-- Location: FF_X26_Y18_N21
\regs[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[10][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][2]~q\);

-- Location: LCCOMB_X26_Y18_N10
\RwID_EX~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~36_combout\ = (InID_EX(9) & (((InID_EX(8)) # (\regs[10][2]~q\)))) # (!InID_EX(9) & (\regs[8][2]~q\ & (!InID_EX(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[8][2]~q\,
	datab => InID_EX(9),
	datac => InID_EX(8),
	datad => \regs[10][2]~q\,
	combout => \RwID_EX~36_combout\);

-- Location: LCCOMB_X26_Y18_N24
\RwID_EX~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~37_combout\ = (InID_EX(8) & ((\RwID_EX~36_combout\ & ((\regs[11][2]~q\))) # (!\RwID_EX~36_combout\ & (\regs[9][2]~q\)))) # (!InID_EX(8) & (((\RwID_EX~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][2]~q\,
	datab => InID_EX(8),
	datac => \regs[11][2]~q\,
	datad => \RwID_EX~36_combout\,
	combout => \RwID_EX~37_combout\);

-- Location: LCCOMB_X25_Y15_N10
\regs[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[1][2]~feeder_combout\ = \regs~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~20_combout\,
	combout => \regs[1][2]~feeder_combout\);

-- Location: FF_X25_Y15_N11
\regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[1][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][2]~q\);

-- Location: LCCOMB_X24_Y17_N20
\RwID_EX~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~38_combout\ = (InID_EX(9) & ((InID_EX(8)) # ((\regs[2][2]~q\)))) # (!InID_EX(9) & (!InID_EX(8) & (\regs[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => InID_EX(8),
	datac => \regs[0][2]~q\,
	datad => \regs[2][2]~q\,
	combout => \RwID_EX~38_combout\);

-- Location: LCCOMB_X25_Y16_N8
\RwID_EX~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~39_combout\ = (InID_EX(8) & ((\RwID_EX~38_combout\ & ((\regs[3][2]~q\))) # (!\RwID_EX~38_combout\ & (\regs[1][2]~q\)))) # (!InID_EX(8) & (((\RwID_EX~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(8),
	datab => \regs[1][2]~q\,
	datac => \RwID_EX~38_combout\,
	datad => \regs[3][2]~q\,
	combout => \RwID_EX~39_combout\);

-- Location: LCCOMB_X25_Y16_N10
\RwID_EX~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~40_combout\ = (InID_EX(11) & ((\RwID_EX~37_combout\) # ((InID_EX(10))))) # (!InID_EX(11) & (((\RwID_EX~39_combout\ & !InID_EX(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(11),
	datab => \RwID_EX~37_combout\,
	datac => \RwID_EX~39_combout\,
	datad => InID_EX(10),
	combout => \RwID_EX~40_combout\);

-- Location: LCCOMB_X25_Y16_N4
\RwID_EX~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~43_combout\ = (InID_EX(10) & ((\RwID_EX~40_combout\ & (\RwID_EX~42_combout\)) # (!\RwID_EX~40_combout\ & ((\RwID_EX~35_combout\))))) # (!InID_EX(10) & (((\RwID_EX~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(10),
	datab => \RwID_EX~42_combout\,
	datac => \RwID_EX~35_combout\,
	datad => \RwID_EX~40_combout\,
	combout => \RwID_EX~43_combout\);

-- Location: LCCOMB_X22_Y18_N24
\RwID_EX~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~44_combout\ = (\RwID_EX~43_combout\ & \R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RwID_EX~43_combout\,
	datad => \R0ID_EX[3]~0_combout\,
	combout => \RwID_EX~44_combout\);

-- Location: FF_X22_Y18_N25
\RwID_EX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwID_EX~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \RwID_EX[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwID_EX(2));

-- Location: FF_X23_Y19_N1
\RwEX_MEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwID_EX(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwEX_MEM(2));

-- Location: LCCOMB_X26_Y15_N2
\regs~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~1_combout\ = (\mem_d~17_q\ & ((\mem_d_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\mem_d~17_q\ & (\mem_d~18_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~17_q\,
	datac => \mem_d~18_q\,
	datad => \mem_d_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \regs~1_combout\);

-- Location: LCCOMB_X26_Y15_N4
\regs~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~2_combout\ = (\mem_d~31_combout\ & (((mem_d_rtl_0_bypass(17))))) # (!\mem_d~31_combout\ & ((mem_d_rtl_0_bypass(18) & ((\regs~1_combout\))) # (!mem_d_rtl_0_bypass(18) & (mem_d_rtl_0_bypass(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~31_combout\,
	datab => mem_d_rtl_0_bypass(18),
	datac => mem_d_rtl_0_bypass(17),
	datad => \regs~1_combout\,
	combout => \regs~2_combout\);

-- Location: LCCOMB_X25_Y17_N6
\regs~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~3_combout\ = (\regs~0_combout\) # ((\Equal9~0_combout\ & \regs~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs~0_combout\,
	datab => \Equal9~0_combout\,
	datad => \regs~2_combout\,
	combout => \regs~3_combout\);

-- Location: FF_X26_Y16_N27
\regs[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][0]~q\);

-- Location: FF_X26_Y16_N17
\regs[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][0]~q\);

-- Location: LCCOMB_X26_Y16_N0
\RwID_EX~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~19_combout\ = (InID_EX(8) & (InID_EX(9))) # (!InID_EX(8) & ((InID_EX(9) & ((\regs[14][0]~q\))) # (!InID_EX(9) & (\regs[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(8),
	datab => InID_EX(9),
	datac => \regs[12][0]~q\,
	datad => \regs[14][0]~q\,
	combout => \RwID_EX~19_combout\);

-- Location: LCCOMB_X26_Y16_N14
\RwID_EX~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~20_combout\ = (\RwID_EX~19_combout\ & ((\regs[15][0]~q\) # ((!InID_EX(8))))) # (!\RwID_EX~19_combout\ & (((\regs[13][0]~q\ & InID_EX(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][0]~q\,
	datab => \RwID_EX~19_combout\,
	datac => \regs[13][0]~q\,
	datad => InID_EX(8),
	combout => \RwID_EX~20_combout\);

-- Location: LCCOMB_X23_Y17_N30
\regs[10][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][0]~feeder_combout\ = \regs~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~3_combout\,
	combout => \regs[10][0]~feeder_combout\);

-- Location: FF_X23_Y17_N31
\regs[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[10][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][0]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][0]~q\);

-- Location: FF_X25_Y18_N31
\regs[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][0]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][0]~q\);

-- Location: FF_X25_Y18_N5
\regs[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \regs~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][0]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][0]~q\);

-- Location: LCCOMB_X26_Y18_N16
\regs[8][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][0]~feeder_combout\ = \regs~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs~3_combout\,
	combout => \regs[8][0]~feeder_combout\);

-- Location: FF_X26_Y18_N17
\regs[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[8][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[8][0]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][0]~q\);

-- Location: LCCOMB_X25_Y18_N16
\RwID_EX~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~12_combout\ = (InID_EX(8) & ((\regs[9][0]~q\) # ((InID_EX(9))))) # (!InID_EX(8) & (((!InID_EX(9) & \regs[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(8),
	datab => \regs[9][0]~q\,
	datac => InID_EX(9),
	datad => \regs[8][0]~q\,
	combout => \RwID_EX~12_combout\);

-- Location: LCCOMB_X25_Y18_N30
\RwID_EX~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~13_combout\ = (InID_EX(9) & ((\RwID_EX~12_combout\ & ((\regs[11][0]~q\))) # (!\RwID_EX~12_combout\ & (\regs[10][0]~q\)))) # (!InID_EX(9) & (((\RwID_EX~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(9),
	datab => \regs[10][0]~q\,
	datac => \regs[11][0]~q\,
	datad => \RwID_EX~12_combout\,
	combout => \RwID_EX~13_combout\);

-- Location: LCCOMB_X26_Y18_N4
\RwID_EX~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~21_combout\ = (\RwID_EX~18_combout\ & (((\RwID_EX~20_combout\)) # (!InID_EX(11)))) # (!\RwID_EX~18_combout\ & (InID_EX(11) & ((\RwID_EX~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RwID_EX~18_combout\,
	datab => InID_EX(11),
	datac => \RwID_EX~20_combout\,
	datad => \RwID_EX~13_combout\,
	combout => \RwID_EX~21_combout\);

-- Location: LCCOMB_X22_Y18_N4
\RwID_EX~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RwID_EX~22_combout\ = (\R0ID_EX[3]~0_combout\ & \RwID_EX~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~0_combout\,
	datad => \RwID_EX~21_combout\,
	combout => \RwID_EX~22_combout\);

-- Location: FF_X22_Y18_N5
\RwID_EX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RwID_EX~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \RwID_EX[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwID_EX(0));

-- Location: FF_X19_Y16_N25
\RwEX_MEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RwID_EX(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RwEX_MEM(0));

-- Location: LCCOMB_X26_Y15_N0
\regs~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~14_combout\ = (\mem_d~17_q\ & ((\mem_d_rtl_0|auto_generated|ram_block1a1\))) # (!\mem_d~17_q\ & (\mem_d~19_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~17_q\,
	datac => \mem_d~19_q\,
	datad => \mem_d_rtl_0|auto_generated|ram_block1a1\,
	combout => \regs~14_combout\);

-- Location: LCCOMB_X26_Y15_N26
\regs~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~15_combout\ = (\mem_d~31_combout\ & (((mem_d_rtl_0_bypass(19))))) # (!\mem_d~31_combout\ & ((mem_d_rtl_0_bypass(20) & ((\regs~14_combout\))) # (!mem_d_rtl_0_bypass(20) & (mem_d_rtl_0_bypass(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~31_combout\,
	datab => mem_d_rtl_0_bypass(20),
	datac => mem_d_rtl_0_bypass(19),
	datad => \regs~14_combout\,
	combout => \regs~15_combout\);

-- Location: LCCOMB_X25_Y15_N0
\regs~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs~16_combout\ = (\regs~13_combout\) # ((\Equal9~0_combout\ & \regs~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs~13_combout\,
	datab => \Equal9~0_combout\,
	datad => \regs~15_combout\,
	combout => \regs~16_combout\);

-- Location: LCCOMB_X29_Y16_N24
\regs[13][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][1]~feeder_combout\ = \regs~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs~16_combout\,
	combout => \regs[13][1]~feeder_combout\);

-- Location: FF_X29_Y16_N25
\regs[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[13][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[13][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][1]~q\);

-- Location: LCCOMB_X24_Y18_N26
\R0ID_EX~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~6_combout\ = (InID_EX(4) & (((InID_EX(5))))) # (!InID_EX(4) & ((InID_EX(5) & (\regs[14][1]~q\)) # (!InID_EX(5) & ((\regs[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][1]~q\,
	datab => InID_EX(4),
	datac => InID_EX(5),
	datad => \regs[12][1]~q\,
	combout => \R0ID_EX~6_combout\);

-- Location: LCCOMB_X26_Y16_N4
\R0ID_EX~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~7_combout\ = (InID_EX(4) & ((\R0ID_EX~6_combout\ & ((\regs[15][1]~q\))) # (!\R0ID_EX~6_combout\ & (\regs[13][1]~q\)))) # (!InID_EX(4) & (((\R0ID_EX~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => \regs[13][1]~q\,
	datac => \R0ID_EX~6_combout\,
	datad => \regs[15][1]~q\,
	combout => \R0ID_EX~7_combout\);

-- Location: LCCOMB_X28_Y15_N16
\R0ID_EX~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~8_combout\ = (InID_EX(4) & (((\regs[1][1]~q\) # (InID_EX(5))))) # (!InID_EX(4) & (\regs[0][1]~q\ & ((!InID_EX(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][1]~q\,
	datab => \regs[1][1]~q\,
	datac => InID_EX(4),
	datad => InID_EX(5),
	combout => \R0ID_EX~8_combout\);

-- Location: LCCOMB_X28_Y15_N2
\R0ID_EX~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~9_combout\ = (InID_EX(5) & ((\R0ID_EX~8_combout\ & (\regs[3][1]~q\)) # (!\R0ID_EX~8_combout\ & ((\regs[2][1]~q\))))) # (!InID_EX(5) & (((\R0ID_EX~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][1]~q\,
	datab => InID_EX(5),
	datac => \regs[2][1]~q\,
	datad => \R0ID_EX~8_combout\,
	combout => \R0ID_EX~9_combout\);

-- Location: LCCOMB_X23_Y16_N26
\R0ID_EX~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~10_combout\ = (\R0ID_EX[3]~0_combout\ & ((InID_EX(6) & (\R0ID_EX~7_combout\)) # (!InID_EX(6) & ((\R0ID_EX~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~0_combout\,
	datab => InID_EX(6),
	datac => \R0ID_EX~7_combout\,
	datad => \R0ID_EX~9_combout\,
	combout => \R0ID_EX~10_combout\);

-- Location: FF_X19_Y16_N3
\R0ID_EX[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \R0ID_EX~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0ID_EX[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X23_Y16_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (RwEX_MEM(0) & (\R0ID_EX[0]~_Duplicate_1_q\ & (\R0ID_EX[1]~_Duplicate_1_q\ $ (!RwEX_MEM(1))))) # (!RwEX_MEM(0) & (!\R0ID_EX[0]~_Duplicate_1_q\ & (\R0ID_EX[1]~_Duplicate_1_q\ $ (!RwEX_MEM(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RwEX_MEM(0),
	datab => \R0ID_EX[1]~_Duplicate_1_q\,
	datac => RwEX_MEM(1),
	datad => \R0ID_EX[0]~_Duplicate_1_q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y19_N14
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\R0ID_EX[5]~_Duplicate_1_q\ & (RwEX_MEM(5) & (\R0ID_EX[4]~_Duplicate_1_q\ $ (!RwEX_MEM(4))))) # (!\R0ID_EX[5]~_Duplicate_1_q\ & (!RwEX_MEM(5) & (\R0ID_EX[4]~_Duplicate_1_q\ $ (!RwEX_MEM(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[5]~_Duplicate_1_q\,
	datab => RwEX_MEM(5),
	datac => \R0ID_EX[4]~_Duplicate_1_q\,
	datad => RwEX_MEM(4),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y19_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (RwEX_MEM(3) & (\R0ID_EX[3]~_Duplicate_1_q\ & (RwEX_MEM(2) $ (!\R0ID_EX[2]~_Duplicate_1_q\)))) # (!RwEX_MEM(3) & (!\R0ID_EX[3]~_Duplicate_1_q\ & (RwEX_MEM(2) $ (!\R0ID_EX[2]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RwEX_MEM(3),
	datab => RwEX_MEM(2),
	datac => \R0ID_EX[3]~_Duplicate_1_q\,
	datad => \R0ID_EX[2]~_Duplicate_1_q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X21_Y17_N8
\InEX_MEM~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~1_combout\ = (InID_EX(13)) # ((\Equal0~4_combout\ & ((\desvio~1_combout\))) # (!\Equal0~4_combout\ & (\desvio~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datab => InID_EX(13),
	datac => \Equal0~4_combout\,
	datad => \desvio~1_combout\,
	combout => \InEX_MEM~1_combout\);

-- Location: FF_X21_Y17_N9
\InEX_MEM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(13));

-- Location: LCCOMB_X19_Y17_N14
\desvio~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desvio~0_combout\ = (!InEX_MEM(15) & (InEX_MEM(14) & (InEX_MEM(13) & !InEX_MEM(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(15),
	datab => InEX_MEM(14),
	datac => InEX_MEM(13),
	datad => InEX_MEM(12),
	combout => \desvio~0_combout\);

-- Location: LCCOMB_X19_Y17_N8
\InEX_MEM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~0_combout\ = (InID_EX(14)) # ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(14),
	datab => \desvio~1_combout\,
	datac => \desvio~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~0_combout\);

-- Location: FF_X19_Y17_N9
\InEX_MEM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InEX_MEM~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(14));

-- Location: LCCOMB_X19_Y17_N0
\desvio~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desvio~1_combout\ = (!InEX_MEM(15) & (InEX_MEM(14) & (!InEX_MEM(13) & InEX_MEM(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(15),
	datab => InEX_MEM(14),
	datac => InEX_MEM(13),
	datad => InEX_MEM(12),
	combout => \desvio~1_combout\);

-- Location: LCCOMB_X19_Y17_N30
\InEX_MEM~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~4_combout\ = (InID_EX(0)) # ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(0),
	datab => \desvio~1_combout\,
	datac => \desvio~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~4_combout\);

-- Location: FF_X19_Y16_N15
\InEX_MEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InEX_MEM~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(0));

-- Location: LCCOMB_X18_Y17_N12
\PC[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[1]~10_combout\ = (InEX_MEM(1) & ((PC(1) & (\PC[0]~9\ & VCC)) # (!PC(1) & (!\PC[0]~9\)))) # (!InEX_MEM(1) & ((PC(1) & (!\PC[0]~9\)) # (!PC(1) & ((\PC[0]~9\) # (GND)))))
-- \PC[1]~11\ = CARRY((InEX_MEM(1) & (!PC(1) & !\PC[0]~9\)) # (!InEX_MEM(1) & ((!\PC[0]~9\) # (!PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(1),
	datab => PC(1),
	datad => VCC,
	cin => \PC[0]~9\,
	combout => \PC[1]~10_combout\,
	cout => \PC[1]~11\);

-- Location: LCCOMB_X18_Y15_N28
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Equal3~0_combout\ & ((InEX_MEM(12) & ((\Add1~2_combout\))) # (!InEX_MEM(12) & (InEX_MEM(1))))) # (!\Equal3~0_combout\ & (((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => InEX_MEM(12),
	datac => InEX_MEM(1),
	datad => \Add1~2_combout\,
	combout => \Add1~12_combout\);

-- Location: FF_X18_Y17_N13
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[1]~10_combout\,
	asdata => \Add1~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X18_Y17_N14
\PC[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[2]~12_combout\ = ((InEX_MEM(2) $ (PC(2) $ (!\PC[1]~11\)))) # (GND)
-- \PC[2]~13\ = CARRY((InEX_MEM(2) & ((PC(2)) # (!\PC[1]~11\))) # (!InEX_MEM(2) & (PC(2) & !\PC[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(2),
	datab => PC(2),
	datad => VCC,
	cin => \PC[1]~11\,
	combout => \PC[2]~12_combout\,
	cout => \PC[2]~13\);

-- Location: LCCOMB_X18_Y15_N18
\Add1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (InEX_MEM(12) & (\Add1~4_combout\)) # (!InEX_MEM(12) & ((\Equal3~0_combout\ & ((InEX_MEM(2)))) # (!\Equal3~0_combout\ & (\Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(12),
	datab => \Add1~4_combout\,
	datac => InEX_MEM(2),
	datad => \Equal3~0_combout\,
	combout => \Add1~13_combout\);

-- Location: FF_X18_Y17_N15
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[2]~12_combout\,
	asdata => \Add1~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X18_Y17_N16
\PC[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[3]~14_combout\ = (PC(3) & ((InEX_MEM(3) & (\PC[2]~13\ & VCC)) # (!InEX_MEM(3) & (!\PC[2]~13\)))) # (!PC(3) & ((InEX_MEM(3) & (!\PC[2]~13\)) # (!InEX_MEM(3) & ((\PC[2]~13\) # (GND)))))
-- \PC[3]~15\ = CARRY((PC(3) & (!InEX_MEM(3) & !\PC[2]~13\)) # (!PC(3) & ((!\PC[2]~13\) # (!InEX_MEM(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => InEX_MEM(3),
	datad => VCC,
	cin => \PC[2]~13\,
	combout => \PC[3]~14_combout\,
	cout => \PC[3]~15\);

-- Location: LCCOMB_X18_Y15_N16
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (InEX_MEM(12) & (\Add1~6_combout\)) # (!InEX_MEM(12) & ((\Equal3~0_combout\ & ((InEX_MEM(3)))) # (!\Equal3~0_combout\ & (\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => InEX_MEM(3),
	datac => InEX_MEM(12),
	datad => \Equal3~0_combout\,
	combout => \Add1~14_combout\);

-- Location: FF_X18_Y17_N17
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[3]~14_combout\,
	asdata => \Add1~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X18_Y18_N8
\mem_i~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~13_combout\ = (PC(4) & (!PC(2) & (!PC(1) & !PC(0)))) # (!PC(4) & ((PC(0) & (PC(2))) # (!PC(0) & ((PC(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \mem_i~13_combout\);

-- Location: LCCOMB_X18_Y18_N16
\InIF_ID~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~11_combout\ = ((PC(3) & ((!\mem_i~13_combout\))) # (!PC(3) & (!\mem_i~16_combout\))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_i~16_combout\,
	datab => PC(3),
	datac => \mem_i~13_combout\,
	datad => \InIF_ID~0_combout\,
	combout => \InIF_ID~11_combout\);

-- Location: FF_X18_Y18_N17
\InIF_ID[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(3));

-- Location: LCCOMB_X29_Y15_N0
\InID_EX~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~9_combout\ = (InIF_ID(3)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R0ID_EX[3]~0_combout\,
	datad => InIF_ID(3),
	combout => \InID_EX~9_combout\);

-- Location: FF_X29_Y15_N1
\InID_EX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(3));

-- Location: LCCOMB_X19_Y15_N4
\InEX_MEM~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InEX_MEM~7_combout\ = (InID_EX(3)) # ((\Equal0~4_combout\ & (\desvio~1_combout\)) # (!\Equal0~4_combout\ & ((\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~1_combout\,
	datab => InID_EX(3),
	datac => \desvio~0_combout\,
	datad => \Equal0~4_combout\,
	combout => \InEX_MEM~7_combout\);

-- Location: FF_X19_Y16_N7
\InEX_MEM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \InEX_MEM~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InEX_MEM(3));

-- Location: LCCOMB_X18_Y15_N20
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (InEX_MEM(12) & (\Add1~8_combout\)) # (!InEX_MEM(12) & ((\Equal3~0_combout\ & ((InEX_MEM(4)))) # (!\Equal3~0_combout\ & (\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InEX_MEM(12),
	datab => \Add1~8_combout\,
	datac => InEX_MEM(4),
	datad => \Equal3~0_combout\,
	combout => \Add1~10_combout\);

-- Location: FF_X18_Y17_N19
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[4]~16_combout\,
	asdata => \Add1~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \desvio~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X23_Y17_N2
\mem_i~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~4_combout\ = (PC(2) & ((PC(4) & ((!PC(0)))) # (!PC(4) & (!PC(1))))) # (!PC(2) & (PC(1) & ((PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(4),
	datac => PC(2),
	datad => PC(0),
	combout => \mem_i~4_combout\);

-- Location: LCCOMB_X23_Y17_N8
\mem_i~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_i~5_combout\ = (PC(4) & (!PC(1) & (!PC(2) & !PC(0)))) # (!PC(4) & (((PC(2) & PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(4),
	datac => PC(2),
	datad => PC(0),
	combout => \mem_i~5_combout\);

-- Location: LCCOMB_X23_Y17_N22
\InIF_ID~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InIF_ID~3_combout\ = ((PC(3) & ((!\mem_i~5_combout\))) # (!PC(3) & (\mem_i~4_combout\))) # (!\InIF_ID~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InIF_ID~0_combout\,
	datab => \mem_i~4_combout\,
	datac => \mem_i~5_combout\,
	datad => PC(3),
	combout => \InIF_ID~3_combout\);

-- Location: FF_X23_Y17_N23
\InIF_ID[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InIF_ID~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InIF_ID(15));

-- Location: LCCOMB_X22_Y17_N0
\InID_EX~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~2_combout\ = (InIF_ID(15)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => InIF_ID(15),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~2_combout\);

-- Location: FF_X22_Y17_N1
\InID_EX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(15));

-- Location: LCCOMB_X22_Y17_N4
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (InID_EX(13)) # ((InID_EX(15)) # ((InID_EX(12)) # (!InID_EX(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(13),
	datab => InID_EX(15),
	datac => InID_EX(14),
	datad => InID_EX(12),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X22_Y17_N14
\R0ID_EX[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX[3]~0_combout\ = (\Equal4~0_combout\ & ((\Equal0~4_combout\ & ((!\desvio~1_combout\))) # (!\Equal0~4_combout\ & (!\desvio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \desvio~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \R0ID_EX[3]~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\InID_EX~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InID_EX~6_combout\ = (InIF_ID(6)) # (!\R0ID_EX[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InIF_ID(6),
	datad => \R0ID_EX[3]~0_combout\,
	combout => \InID_EX~6_combout\);

-- Location: FF_X19_Y18_N13
\InID_EX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \InID_EX~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => InID_EX(6));

-- Location: LCCOMB_X26_Y16_N26
\R0ID_EX~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~1_combout\ = (InID_EX(4) & (InID_EX(5))) # (!InID_EX(4) & ((InID_EX(5) & ((\regs[14][0]~q\))) # (!InID_EX(5) & (\regs[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => InID_EX(5),
	datac => \regs[12][0]~q\,
	datad => \regs[14][0]~q\,
	combout => \R0ID_EX~1_combout\);

-- Location: LCCOMB_X24_Y16_N10
\R0ID_EX~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~2_combout\ = (InID_EX(4) & ((\R0ID_EX~1_combout\ & (\regs[15][0]~q\)) # (!\R0ID_EX~1_combout\ & ((\regs[13][0]~q\))))) # (!InID_EX(4) & (((\R0ID_EX~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => InID_EX(4),
	datab => \regs[15][0]~q\,
	datac => \R0ID_EX~1_combout\,
	datad => \regs[13][0]~q\,
	combout => \R0ID_EX~2_combout\);

-- Location: LCCOMB_X24_Y17_N12
\R0ID_EX~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~4_combout\ = (\R0ID_EX~3_combout\ & (((\regs[3][0]~q\) # (!InID_EX(5))))) # (!\R0ID_EX~3_combout\ & (\regs[2][0]~q\ & (InID_EX(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX~3_combout\,
	datab => \regs[2][0]~q\,
	datac => InID_EX(5),
	datad => \regs[3][0]~q\,
	combout => \R0ID_EX~4_combout\);

-- Location: LCCOMB_X23_Y16_N16
\R0ID_EX~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \R0ID_EX~5_combout\ = (\R0ID_EX[3]~0_combout\ & ((InID_EX(6) & (\R0ID_EX~2_combout\)) # (!InID_EX(6) & ((\R0ID_EX~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R0ID_EX[3]~0_combout\,
	datab => InID_EX(6),
	datac => \R0ID_EX~2_combout\,
	datad => \R0ID_EX~4_combout\,
	combout => \R0ID_EX~5_combout\);

-- Location: FF_X23_Y16_N17
\R0ID_EX[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R0ID_EX~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0ID_EX[0]~_Duplicate_1_q\);

-- Location: FF_X23_Y16_N5
\R0ID_EX[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \R0ID_EX~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0ID_EX[6]~_Duplicate_1_q\);

ww_R0_out(0) <= \R0_out[0]~output_o\;

ww_R0_out(1) <= \R0_out[1]~output_o\;

ww_R0_out(2) <= \R0_out[2]~output_o\;

ww_R0_out(3) <= \R0_out[3]~output_o\;

ww_R0_out(4) <= \R0_out[4]~output_o\;

ww_R0_out(5) <= \R0_out[5]~output_o\;

ww_R0_out(6) <= \R0_out[6]~output_o\;

ww_R0_out(7) <= \R0_out[7]~output_o\;

ww_R1_out(0) <= \R1_out[0]~output_o\;

ww_R1_out(1) <= \R1_out[1]~output_o\;

ww_R1_out(2) <= \R1_out[2]~output_o\;

ww_R1_out(3) <= \R1_out[3]~output_o\;

ww_R1_out(4) <= \R1_out[4]~output_o\;

ww_R1_out(5) <= \R1_out[5]~output_o\;

ww_R1_out(6) <= \R1_out[6]~output_o\;

ww_R1_out(7) <= \R1_out[7]~output_o\;
END structure;


