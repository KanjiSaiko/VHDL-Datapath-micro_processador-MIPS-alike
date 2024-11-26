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

-- DATE "11/25/2024 23:50:10"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	R0_out : OUT std_logic_vector(7 DOWNTO 0);
	R1_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END MIPS;

-- Design Ports Information
-- R0_out[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[1]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[4]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[6]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS IS
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
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ : std_logic;
SIGNAL \regs[12][1]~q\ : std_logic;
SIGNAL \regs[2][1]~q\ : std_logic;
SIGNAL \regs[13][2]~q\ : std_logic;
SIGNAL \regs[15][3]~q\ : std_logic;
SIGNAL \regs[1][3]~q\ : std_logic;
SIGNAL \regs[12][4]~q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \regs[2][5]~q\ : std_logic;
SIGNAL \regs[13][7]~q\ : std_logic;
SIGNAL \regs[1][7]~q\ : std_logic;
SIGNAL \regs[3][7]~q\ : std_logic;
SIGNAL \regs[4][0]~q\ : std_logic;
SIGNAL \regs[9][0]~q\ : std_logic;
SIGNAL \regs[10][0]~q\ : std_logic;
SIGNAL \regs[10][1]~q\ : std_logic;
SIGNAL \regs[5][1]~q\ : std_logic;
SIGNAL \regs[4][1]~q\ : std_logic;
SIGNAL \regs[9][2]~q\ : std_logic;
SIGNAL \regs[9][3]~q\ : std_logic;
SIGNAL \regs[5][3]~q\ : std_logic;
SIGNAL \regs[10][4]~q\ : std_logic;
SIGNAL \regs[5][4]~q\ : std_logic;
SIGNAL \regs[11][4]~q\ : std_logic;
SIGNAL \regs[9][5]~q\ : std_logic;
SIGNAL \regs[8][5]~q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \regs[11][5]~q\ : std_logic;
SIGNAL \regs[10][6]~q\ : std_logic;
SIGNAL \regs[8][6]~q\ : std_logic;
SIGNAL \regs[6][6]~q\ : std_logic;
SIGNAL \regs[5][6]~q\ : std_logic;
SIGNAL \regs[4][6]~q\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \regs[7][6]~q\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \regs[10][7]~q\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \regs[11][7]~q\ : std_logic;
SIGNAL \regs[9][7]~q\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \desvio~1_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \regs[4][0]~feeder_combout\ : std_logic;
SIGNAL \regs[12][1]~feeder_combout\ : std_logic;
SIGNAL \regs[4][1]~feeder_combout\ : std_logic;
SIGNAL \regs[5][1]~feeder_combout\ : std_logic;
SIGNAL \regs[13][2]~feeder_combout\ : std_logic;
SIGNAL \regs[15][3]~feeder_combout\ : std_logic;
SIGNAL \regs[5][3]~feeder_combout\ : std_logic;
SIGNAL \regs[5][4]~feeder_combout\ : std_logic;
SIGNAL \regs[5][6]~feeder_combout\ : std_logic;
SIGNAL \regs[7][6]~feeder_combout\ : std_logic;
SIGNAL \regs[13][7]~feeder_combout\ : std_logic;
SIGNAL \regs[9][0]~feeder_combout\ : std_logic;
SIGNAL \regs[10][0]~feeder_combout\ : std_logic;
SIGNAL \regs[10][1]~feeder_combout\ : std_logic;
SIGNAL \regs[9][2]~feeder_combout\ : std_logic;
SIGNAL \regs[1][3]~feeder_combout\ : std_logic;
SIGNAL \regs[9][3]~feeder_combout\ : std_logic;
SIGNAL \regs[10][4]~feeder_combout\ : std_logic;
SIGNAL \regs[11][4]~feeder_combout\ : std_logic;
SIGNAL \regs[2][5]~feeder_combout\ : std_logic;
SIGNAL \regs[8][6]~feeder_combout\ : std_logic;
SIGNAL \regs[10][6]~feeder_combout\ : std_logic;
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
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \PC~21_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mux153~1_combout\ : std_logic;
SIGNAL \desvio~0_combout\ : std_logic;
SIGNAL \Add3~29_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \regs[7][0]~feeder_combout\ : std_logic;
SIGNAL \Mux153~2_combout\ : std_logic;
SIGNAL \regs[7][3]~23_combout\ : std_logic;
SIGNAL \regs[7][0]~q\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \PC~18_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \regs[5][5]~20_combout\ : std_logic;
SIGNAL \regs[5][0]~q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \regs[6][2]~21_combout\ : std_logic;
SIGNAL \regs[6][0]~q\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \regs[14][7]~17_combout\ : std_logic;
SIGNAL \regs[14][0]~q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \regs[15][6]~19_combout\ : std_logic;
SIGNAL \regs[15][0]~q\ : std_logic;
SIGNAL \regs[13][0]~feeder_combout\ : std_logic;
SIGNAL \regs[13][7]~16_combout\ : std_logic;
SIGNAL \regs[13][0]~q\ : std_logic;
SIGNAL \regs[12][0]~18_combout\ : std_logic;
SIGNAL \regs[12][0]~q\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \PC~19_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \regs[14][1]~q\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \regs[3][4]~27_combout\ : std_logic;
SIGNAL \regs[3][1]~q\ : std_logic;
SIGNAL \regs[1][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \regs[1][1]~25_combout\ : std_logic;
SIGNAL \regs[1][1]~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \regs[13][1]~feeder_combout\ : std_logic;
SIGNAL \regs[13][1]~q\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \regs[8][0]~30_combout\ : std_logic;
SIGNAL \regs[8][1]~q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \regs[7][1]~q\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \regs[6][1]~q\ : std_logic;
SIGNAL \regs[0][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \regs[0][1]~26_combout\ : std_logic;
SIGNAL \regs[0][1]~q\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \regs[15][1]~q\ : std_logic;
SIGNAL \regs[9][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \regs[9][2]~28_combout\ : std_logic;
SIGNAL \regs[9][1]~q\ : std_logic;
SIGNAL \regs[11][6]~31_combout\ : std_logic;
SIGNAL \regs[11][1]~q\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \regs[1][0]~feeder_combout\ : std_logic;
SIGNAL \regs[1][0]~q\ : std_logic;
SIGNAL \regs[3][0]~q\ : std_logic;
SIGNAL \regs[0][0]~feeder_combout\ : std_logic;
SIGNAL \regs[0][0]~q\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \regs[11][0]~q\ : std_logic;
SIGNAL \regs[8][0]~q\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \regs[14][5]~feeder_combout\ : std_logic;
SIGNAL \regs[14][5]~q\ : std_logic;
SIGNAL \regs[3][5]~feeder_combout\ : std_logic;
SIGNAL \regs[3][5]~q\ : std_logic;
SIGNAL \regs[0][5]~feeder_combout\ : std_logic;
SIGNAL \regs[0][5]~q\ : std_logic;
SIGNAL \regs[1][5]~feeder_combout\ : std_logic;
SIGNAL \regs[1][5]~q\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \regs[13][5]~feeder_combout\ : std_logic;
SIGNAL \regs[13][5]~q\ : std_logic;
SIGNAL \regs[15][5]~q\ : std_logic;
SIGNAL \regs[12][5]~feeder_combout\ : std_logic;
SIGNAL \regs[12][5]~q\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \regs[14][4]~q\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \regs[13][3]~feeder_combout\ : std_logic;
SIGNAL \regs[13][3]~q\ : std_logic;
SIGNAL \regs[12][3]~feeder_combout\ : std_logic;
SIGNAL \regs[12][3]~q\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \regs[15][2]~q\ : std_logic;
SIGNAL \regs[14][2]~q\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \regs[12][2]~feeder_combout\ : std_logic;
SIGNAL \regs[12][2]~q\ : std_logic;
SIGNAL \regs[8][2]~q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \regs[11][2]~q\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \regs[10][5]~29_combout\ : std_logic;
SIGNAL \regs[10][2]~q\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \regs[7][2]~q\ : std_logic;
SIGNAL \regs[6][2]~q\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \regs[5][2]~feeder_combout\ : std_logic;
SIGNAL \regs[5][2]~q\ : std_logic;
SIGNAL \regs[0][2]~feeder_combout\ : std_logic;
SIGNAL \regs[0][2]~q\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \regs[4][4]~22_combout\ : std_logic;
SIGNAL \regs[4][2]~q\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \regs[2][2]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \regs[2][3]~24_combout\ : std_logic;
SIGNAL \regs[2][2]~q\ : std_logic;
SIGNAL \regs[3][2]~feeder_combout\ : std_logic;
SIGNAL \regs[3][2]~q\ : std_logic;
SIGNAL \regs[1][2]~q\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \regs[10][3]~q\ : std_logic;
SIGNAL \regs[11][3]~q\ : std_logic;
SIGNAL \regs[8][3]~q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \regs[6][3]~q\ : std_logic;
SIGNAL \regs[7][3]~q\ : std_logic;
SIGNAL \regs[4][3]~q\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \regs[2][3]~q\ : std_logic;
SIGNAL \regs[3][3]~q\ : std_logic;
SIGNAL \regs[0][3]~feeder_combout\ : std_logic;
SIGNAL \regs[0][3]~q\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~9_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ : std_logic;
SIGNAL \regs[15][4]~q\ : std_logic;
SIGNAL \regs[13][4]~feeder_combout\ : std_logic;
SIGNAL \regs[13][4]~q\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \regs[3][4]~q\ : std_logic;
SIGNAL \regs[1][4]~feeder_combout\ : std_logic;
SIGNAL \regs[1][4]~q\ : std_logic;
SIGNAL \regs[0][4]~feeder_combout\ : std_logic;
SIGNAL \regs[0][4]~q\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \regs[8][4]~q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \regs[7][4]~q\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \regs[4][4]~feeder_combout\ : std_logic;
SIGNAL \regs[4][4]~q\ : std_logic;
SIGNAL \regs[6][4]~q\ : std_logic;
SIGNAL \regs[2][4]~q\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \regs[9][4]~q\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \regs[14][3]~feeder_combout\ : std_logic;
SIGNAL \regs[14][3]~q\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \regs[10][5]~q\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \regs[7][5]~q\ : std_logic;
SIGNAL \regs[6][5]~q\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \regs[5][5]~q\ : std_logic;
SIGNAL \regs[4][5]~q\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \regs[2][6]~feeder_combout\ : std_logic;
SIGNAL \regs[2][6]~q\ : std_logic;
SIGNAL \regs[0][6]~feeder_combout\ : std_logic;
SIGNAL \regs[0][6]~q\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \regs[13][6]~feeder_combout\ : std_logic;
SIGNAL \regs[13][6]~q\ : std_logic;
SIGNAL \regs[15][6]~q\ : std_logic;
SIGNAL \regs[14][6]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \regs[14][7]~q\ : std_logic;
SIGNAL \regs[8][7]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \regs[4][7]~feeder_combout\ : std_logic;
SIGNAL \regs[4][7]~q\ : std_logic;
SIGNAL \regs[6][7]~q\ : std_logic;
SIGNAL \regs[0][7]~q\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \regs[7][7]~q\ : std_logic;
SIGNAL \regs[5][7]~feeder_combout\ : std_logic;
SIGNAL \regs[5][7]~q\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \regs[2][7]~feeder_combout\ : std_logic;
SIGNAL \regs[2][7]~q\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \regs[15][7]~q\ : std_logic;
SIGNAL \regs[12][7]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \regs[11][6]~q\ : std_logic;
SIGNAL \regs[9][6]~feeder_combout\ : std_logic;
SIGNAL \regs[9][6]~q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \regs[3][6]~feeder_combout\ : std_logic;
SIGNAL \regs[3][6]~q\ : std_logic;
SIGNAL \regs[1][6]~feeder_combout\ : std_logic;
SIGNAL \regs[1][6]~q\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \regs[12][6]~q\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add3~11_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \PC~20_combout\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \Mux154~1_combout\ : std_logic;
SIGNAL \PC~14_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \PC~15_combout\ : std_logic;
SIGNAL \Mux155~0_combout\ : std_logic;
SIGNAL \Mux155~1_combout\ : std_logic;
SIGNAL \PC[5]~12_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \PC~13_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \PC~17_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \PC~16_combout\ : std_logic;
SIGNAL \Mux153~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \regs[2][0]~feeder_combout\ : std_logic;
SIGNAL \regs[2][0]~q\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL PC : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
R0_out <= ww_R0_out;
R1_out <= ww_R1_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: LCCOMB_X24_Y16_N2
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mux21~9_combout\ & ((\Mux9~6_combout\ & (!\Add1~1\)) # (!\Mux9~6_combout\ & ((\Add1~1\) # (GND))))) # (!\Mux21~9_combout\ & ((\Mux9~6_combout\ & (\Add1~1\ & VCC)) # (!\Mux9~6_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\Mux21~9_combout\ & ((!\Add1~1\) # (!\Mux9~6_combout\))) # (!\Mux21~9_combout\ & (!\Mux9~6_combout\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~9_combout\,
	datab => \Mux9~6_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X24_Y16_N4
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Mux20~9_combout\ $ (\Mux8~6_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Mux20~9_combout\ & (\Mux8~6_combout\ & !\Add1~3\)) # (!\Mux20~9_combout\ & ((\Mux8~6_combout\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~9_combout\,
	datab => \Mux8~6_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X27_Y14_N14
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mux7~6_combout\ & ((\Mux19~9_combout\ & (\Add0~5\ & VCC)) # (!\Mux19~9_combout\ & (!\Add0~5\)))) # (!\Mux7~6_combout\ & ((\Mux19~9_combout\ & (!\Add0~5\)) # (!\Mux19~9_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Mux7~6_combout\ & (!\Mux19~9_combout\ & !\Add0~5\)) # (!\Mux7~6_combout\ & ((!\Add0~5\) # (!\Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux19~9_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X26_Y15_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\);

-- Location: LCCOMB_X25_Y15_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\);

-- Location: LCCOMB_X26_Y15_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\);

-- Location: FF_X22_Y17_N7
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
	ena => \regs[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][1]~q\);

-- Location: FF_X24_Y15_N31
\regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][1]~q\);

-- Location: FF_X26_Y17_N17
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
	ena => \regs[13][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][2]~q\);

-- Location: FF_X27_Y17_N13
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
	ena => \regs[15][6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][3]~q\);

-- Location: FF_X23_Y14_N13
\regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[1][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][3]~q\);

-- Location: FF_X27_Y17_N23
\regs[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][4]~q\);

-- Location: LCCOMB_X27_Y17_N22
\Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux2~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\ & (\regs[14][4]~q\)) # (!\Mux1~1_combout\ & ((\regs[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[14][4]~q\,
	datac => \regs[12][4]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: FF_X25_Y13_N7
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
	ena => \regs[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][5]~q\);

-- Location: FF_X26_Y17_N1
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
	ena => \regs[13][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][7]~q\);

-- Location: FF_X25_Y15_N3
\regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux25~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][7]~q\);

-- Location: FF_X27_Y15_N27
\regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux25~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][7]~q\);

-- Location: FF_X25_Y16_N13
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
	ena => \regs[4][4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][0]~q\);

-- Location: FF_X25_Y14_N23
\regs[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[9][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][0]~q\);

-- Location: FF_X24_Y14_N17
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
	ena => \regs[10][5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][0]~q\);

-- Location: FF_X24_Y17_N13
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
	ena => \regs[10][5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][1]~q\);

-- Location: FF_X26_Y16_N15
\regs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[5][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[5][5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][1]~q\);

-- Location: FF_X25_Y16_N17
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
	ena => \regs[4][4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][1]~q\);

-- Location: FF_X23_Y14_N1
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
	ena => \regs[9][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][2]~q\);

-- Location: FF_X23_Y14_N27
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
	ena => \regs[9][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][3]~q\);

-- Location: FF_X26_Y16_N23
\regs[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[5][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[5][5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][3]~q\);

-- Location: FF_X23_Y13_N15
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
	ena => \regs[10][5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][4]~q\);

-- Location: FF_X26_Y17_N29
\regs[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[5][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[5][5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][4]~q\);

-- Location: FF_X25_Y14_N11
\regs[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[11][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[11][6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][4]~q\);

-- Location: FF_X25_Y14_N27
\regs[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux27~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][5]~q\);

-- Location: FF_X24_Y13_N25
\regs[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux27~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][5]~q\);

-- Location: LCCOMB_X24_Y13_N24
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux12~2_combout\ & ((\regs[12][5]~q\) # ((\Mux14~1_combout\)))) # (!\Mux12~2_combout\ & (((\regs[8][5]~q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][5]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[8][5]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X25_Y14_N26
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux14~1_combout\ & ((\Mux17~0_combout\ & (\regs[13][5]~q\)) # (!\Mux17~0_combout\ & ((\regs[9][5]~q\))))) # (!\Mux14~1_combout\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][5]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[9][5]~q\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: FF_X24_Y14_N11
\regs[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux27~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][5]~q\);

-- Location: FF_X23_Y13_N21
\regs[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[10][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][6]~q\);

-- Location: FF_X24_Y13_N15
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
	ena => \regs[8][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][6]~q\);

-- Location: FF_X26_Y14_N13
\regs[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][6]~q\);

-- Location: FF_X26_Y17_N13
\regs[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[5][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[5][5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][6]~q\);

-- Location: FF_X27_Y14_N29
\regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][6]~q\);

-- Location: LCCOMB_X27_Y14_N28
\Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\regs[5][6]~q\)) # (!\Mux14~1_combout\ & ((\regs[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[5][6]~q\,
	datac => \regs[4][6]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: FF_X27_Y14_N31
\regs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[7][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[7][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][6]~q\);

-- Location: LCCOMB_X26_Y14_N12
\Mux16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux13~1_combout\ & ((\Mux16~2_combout\ & (\regs[7][6]~q\)) # (!\Mux16~2_combout\ & ((\regs[6][6]~q\))))) # (!\Mux13~1_combout\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[7][6]~q\,
	datac => \regs[6][6]~q\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: FF_X25_Y15_N13
\regs[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux25~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][7]~q\);

-- Location: LCCOMB_X27_Y15_N26
\Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux12~2_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux13~1_combout\ & ((\regs[3][7]~q\))) # (!\Mux13~1_combout\ & (\regs[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][7]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[3][7]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: FF_X25_Y14_N31
\regs[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux25~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][7]~q\);

-- Location: FF_X25_Y14_N29
\regs[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux25~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][7]~q\);

-- Location: LCCOMB_X25_Y14_N28
\Mux15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux12~2_combout\ & ((\regs[13][7]~q\) # ((\Mux13~1_combout\)))) # (!\Mux12~2_combout\ & (((\regs[9][7]~q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][7]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[9][7]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X25_Y14_N30
\Mux15~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\Mux13~1_combout\ & ((\Mux15~7_combout\ & (\regs[15][7]~q\)) # (!\Mux15~7_combout\ & ((\regs[11][7]~q\))))) # (!\Mux13~1_combout\ & (((\Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][7]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[11][7]~q\,
	datad => \Mux15~7_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X27_Y16_N30
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (PC(2) & (((PC(0)) # (PC(3))))) # (!PC(2) & (PC(1) & (PC(0) $ (!PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(1),
	datac => PC(0),
	datad => PC(3),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X25_Y14_N12
\Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\Mux24~1_combout\ & (!\Mux23~1_combout\ & (\Mux11~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \Mux23~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Mux8~6_combout\ & (\Mux20~9_combout\ & (\Mux19~9_combout\ $ (!\Mux7~6_combout\)))) # (!\Mux8~6_combout\ & (!\Mux20~9_combout\ & (\Mux19~9_combout\ $ (!\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux19~9_combout\,
	datac => \Mux20~9_combout\,
	datad => \Mux7~6_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y17_N28
\desvio~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \desvio~1_combout\ = (\desvio~0_combout\ & ((\Mux155~1_combout\ & (\Mux154~1_combout\ & \Equal0~4_combout\)) # (!\Mux155~1_combout\ & ((!\Equal0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux155~1_combout\,
	datab => \Mux154~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \desvio~0_combout\,
	combout => \desvio~1_combout\);

-- Location: LCCOMB_X25_Y17_N26
\Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Mux12~2_combout\ & \desvio~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datad => \desvio~1_combout\,
	combout => \Add3~10_combout\);

-- Location: LCCOMB_X26_Y13_N22
\Decoder0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\Mux23~1_combout\ & (\Mux11~1_combout\ & (\Mux0~1_combout\ & !\Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux24~1_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X26_Y13_N12
\Decoder0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\Mux23~1_combout\ & (\Mux11~1_combout\ & (!\Mux0~1_combout\ & \Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux24~1_combout\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X23_Y16_N30
\Decoder0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (!\Mux11~1_combout\ & (\Mux24~1_combout\ & (\Mux23~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X26_Y16_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) = LCELL((\Mux22~9_combout\ & (\Mux8~6_combout\ $ (((\Mux21~9_combout\))))) # (!\Mux22~9_combout\ & (((!\Mux9~6_combout\ & \Mux21~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux22~9_combout\,
	datac => \Mux9~6_combout\,
	datad => \Mux21~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2));

-- Location: LCCOMB_X24_Y15_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = LCELL(\Mux19~9_combout\ $ (((\Mux10~6_combout\ & ((\Mux20~9_combout\) # (\Mux21~9_combout\))) # (!\Mux10~6_combout\ & (\Mux20~9_combout\ & \Mux21~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux20~9_combout\,
	datac => \Mux19~9_combout\,
	datad => \Mux21~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X24_Y15_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) = LCELL((\Mux22~9_combout\ & (\Mux7~6_combout\ $ (((\Mux21~9_combout\))))) # (!\Mux22~9_combout\ & (((!\Mux8~6_combout\ & \Mux21~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux21~9_combout\,
	datad => \Mux22~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3));

-- Location: LCCOMB_X24_Y15_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ ((\Mux9~6_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & ((!\Mux10~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \Mux9~6_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X26_Y15_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) = LCELL(\Mux17~9_combout\ $ (((\Mux10~6_combout\ & ((\Mux18~9_combout\) # (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\))) # (!\Mux10~6_combout\ & (\Mux18~9_combout\ 
-- & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux17~9_combout\,
	datac => \Mux18~9_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0));

-- Location: LCCOMB_X24_Y15_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mux7~6_combout\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (((!\Mux8~6_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: LCCOMB_X24_Y15_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\Mux6~6_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (!\Mux7~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux6~6_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X26_Y15_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ = (\Mux17~9_combout\) # ((\Mux18~9_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~9_combout\,
	datab => \Mux17~9_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\);

-- Location: LCCOMB_X26_Y15_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) = LCELL((\Mux10~6_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ $ (\Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\,
	datad => \Mux16~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0));

-- Location: LCCOMB_X26_Y15_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ & ((\Mux16~9_combout\ & (\Mux10~6_combout\)) # (!\Mux16~9_combout\ & ((\Mux9~6_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ & (((\Mux9~6_combout\ & \Mux16~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\,
	datac => \Mux9~6_combout\,
	datad => \Mux16~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X25_Y14_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) = LCELL((\Mux10~6_combout\ & \Mux15~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux10~6_combout\,
	datad => \Mux15~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0));

-- Location: LCCOMB_X22_Y17_N26
\Add3~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\desvio~1_combout\ & ((!\Mux153~0_combout\) # (!\Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datac => \Mux153~0_combout\,
	datad => \desvio~1_combout\,
	combout => \Add3~28_combout\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X25_Y16_N12
\regs[4][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[4][0]~feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~0_combout\,
	combout => \regs[4][0]~feeder_combout\);

-- Location: LCCOMB_X22_Y17_N6
\regs[12][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[12][1]~feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	combout => \regs[12][1]~feeder_combout\);

-- Location: LCCOMB_X25_Y16_N16
\regs[4][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[4][1]~feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~2_combout\,
	combout => \regs[4][1]~feeder_combout\);

-- Location: LCCOMB_X26_Y16_N14
\regs[5][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[5][1]~feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~2_combout\,
	combout => \regs[5][1]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N16
\regs[13][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[13][2]~feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~4_combout\,
	combout => \regs[13][2]~feeder_combout\);

-- Location: LCCOMB_X27_Y17_N12
\regs[15][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[15][3]~feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	combout => \regs[15][3]~feeder_combout\);

-- Location: LCCOMB_X26_Y16_N22
\regs[5][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[5][3]~feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	combout => \regs[5][3]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N28
\regs[5][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[5][4]~feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \regs[5][4]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N12
\regs[5][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[5][6]~feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	combout => \regs[5][6]~feeder_combout\);

-- Location: LCCOMB_X27_Y14_N30
\regs[7][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[7][6]~feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~12_combout\,
	combout => \regs[7][6]~feeder_combout\);

-- Location: LCCOMB_X26_Y17_N0
\regs[13][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[13][7]~feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	combout => \regs[13][7]~feeder_combout\);

-- Location: LCCOMB_X25_Y14_N22
\regs[9][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[9][0]~feeder_combout\ = \Mux32~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~1_combout\,
	combout => \regs[9][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N16
\regs[10][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[10][0]~feeder_combout\ = \Mux32~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~1_combout\,
	combout => \regs[10][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y17_N12
\regs[10][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[10][1]~feeder_combout\ = \Mux31~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~1_combout\,
	combout => \regs[10][1]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N0
\regs[9][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[9][2]~feeder_combout\ = \Mux30~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~1_combout\,
	combout => \regs[9][2]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N12
\regs[1][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[1][3]~feeder_combout\ = \Mux29~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux29~1_combout\,
	combout => \regs[1][3]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N26
\regs[9][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[9][3]~feeder_combout\ = \Mux29~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux29~1_combout\,
	combout => \regs[9][3]~feeder_combout\);

-- Location: LCCOMB_X23_Y13_N14
\regs[10][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[10][4]~feeder_combout\ = \Mux28~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux28~1_combout\,
	combout => \regs[10][4]~feeder_combout\);

-- Location: LCCOMB_X25_Y14_N10
\regs[11][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[11][4]~feeder_combout\ = \Mux28~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux28~1_combout\,
	combout => \regs[11][4]~feeder_combout\);

-- Location: LCCOMB_X25_Y13_N6
\regs[2][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[2][5]~feeder_combout\ = \Mux27~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux27~1_combout\,
	combout => \regs[2][5]~feeder_combout\);

-- Location: LCCOMB_X24_Y13_N14
\regs[8][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[8][6]~feeder_combout\ = \Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux26~1_combout\,
	combout => \regs[8][6]~feeder_combout\);

-- Location: LCCOMB_X23_Y13_N20
\regs[10][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[10][6]~feeder_combout\ = \Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux26~1_combout\,
	combout => \regs[10][6]~feeder_combout\);

-- Location: IOOBUF_X33_Y14_N2
\R0_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\R0_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\R0_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\R0_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\R0_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\R0_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[5]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\R0_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[6]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\R0_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\R1_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[0]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\R1_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\R1_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[2]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\R1_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\R1_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\R1_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\R1_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[6]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\R1_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[7]~output_o\);

-- Location: LCCOMB_X23_Y17_N10
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (PC(1) & (PC(2) & (!PC(3)))) # (!PC(1) & (!PC(2) & (PC(3) & !PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(2),
	datac => PC(3),
	datad => PC(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X23_Y17_N16
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (PC(3) & (!PC(2) & (!PC(1) & !PC(0)))) # (!PC(3) & ((PC(2) & (!PC(1))) # (!PC(2) & ((PC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (PC(0) & (\Add3~11_combout\ $ (VCC))) # (!PC(0) & (\Add3~11_combout\ & VCC))
-- \Add3~13\ = CARRY((PC(0) & \Add3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => \Add3~11_combout\,
	datad => VCC,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X22_Y17_N12
\Add3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add3~28_combout\ & ((PC(1) & (\Add3~13\ & VCC)) # (!PC(1) & (!\Add3~13\)))) # (!\Add3~28_combout\ & ((PC(1) & (!\Add3~13\)) # (!PC(1) & ((\Add3~13\) # (GND)))))
-- \Add3~15\ = CARRY((\Add3~28_combout\ & (!PC(1) & !\Add3~13\)) # (!\Add3~28_combout\ & ((!\Add3~13\) # (!PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datab => PC(1),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X23_Y17_N26
\PC~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~21_combout\ = (\PC[5]~12_combout\ & (((\Add3~14_combout\)))) # (!\PC[5]~12_combout\ & (((!\Mux13~0_combout\)) # (!\Mux153~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \PC[5]~12_combout\,
	datad => \Add3~14_combout\,
	combout => \PC~21_combout\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: FF_X23_Y17_N27
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X23_Y16_N28
\Mux153~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux153~1_combout\ = (PC(3) & (!PC(0) & ((!PC(2))))) # (!PC(3) & ((PC(1) & ((!PC(2)))) # (!PC(1) & (PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(1),
	datac => PC(3),
	datad => PC(2),
	combout => \Mux153~1_combout\);

-- Location: LCCOMB_X23_Y16_N10
\desvio~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \desvio~0_combout\ = (!\Mux11~1_combout\ & ((!\Mux153~0_combout\) # (!\Mux153~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux153~1_combout\,
	datad => \Mux153~0_combout\,
	combout => \desvio~0_combout\);

-- Location: LCCOMB_X25_Y17_N18
\Add3~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~29_combout\ = (((!\Mux154~0_combout\ & \Mux155~0_combout\)) # (!\desvio~0_combout\)) # (!\Mux153~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~0_combout\,
	datab => \Mux155~0_combout\,
	datac => \Mux153~0_combout\,
	datad => \desvio~0_combout\,
	combout => \Add3~29_combout\);

-- Location: LCCOMB_X24_Y17_N28
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\Mux153~0_combout\) # (!\Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datad => \Mux153~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X23_Y15_N12
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Mux10~6_combout\ & (\Mux14~1_combout\ $ (VCC))) # (!\Mux10~6_combout\ & (\Mux14~1_combout\ & VCC))
-- \Add2~1\ = CARRY((\Mux10~6_combout\ & \Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux14~1_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X26_Y16_N4
\regs[7][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[7][0]~feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \regs[7][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N10
\Mux153~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux153~2_combout\ = (!\Mux153~1_combout\) # (!\Mux153~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux153~0_combout\,
	datad => \Mux153~1_combout\,
	combout => \Mux153~2_combout\);

-- Location: LCCOMB_X26_Y13_N6
\regs[7][3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[7][3]~23_combout\ = (\Decoder0~11_combout\ & (\Mux154~1_combout\ & (!\Mux153~2_combout\ & \Mux155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~11_combout\,
	datab => \Mux154~1_combout\,
	datac => \Mux153~2_combout\,
	datad => \Mux155~1_combout\,
	combout => \regs[7][3]~23_combout\);

-- Location: FF_X26_Y16_N5
\regs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[7][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[7][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][0]~q\);

-- Location: LCCOMB_X27_Y16_N0
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\) # (!\Mux153~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datad => \Mux153~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Add3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((\Add3~10_combout\ $ (PC(2) $ (!\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((\Add3~10_combout\ & ((PC(2)) # (!\Add3~15\))) # (!\Add3~10_combout\ & (PC(2) & !\Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => PC(2),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X22_Y17_N16
\Add3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (PC(3) & (!\Add3~17\)) # (!PC(3) & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X22_Y17_N18
\Add3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (PC(4) & (\Add3~19\ $ (GND))) # (!PC(4) & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((PC(4) & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X22_Y17_N20
\Add3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (PC(5) & (!\Add3~21\)) # (!PC(5) & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X22_Y17_N22
\Add3~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (PC(6) & (\Add3~23\ $ (GND))) # (!PC(6) & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((PC(6) & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X23_Y17_N0
\PC~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~18_combout\ = (\PC[5]~12_combout\ & (((\Add3~24_combout\)))) # (!\PC[5]~12_combout\ & (((\Mux0~0_combout\)) # (!\Mux153~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \PC[5]~12_combout\,
	datad => \Add3~24_combout\,
	combout => \PC~18_combout\);

-- Location: FF_X23_Y17_N1
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X22_Y17_N2
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (PC(4)) # ((PC(3) & ((PC(1)) # (PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(3),
	datac => PC(1),
	datad => PC(2),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X22_Y17_N4
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (PC(5)) # ((PC(7)) # ((PC(6)) # (\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datab => PC(7),
	datac => PC(6),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X25_Y16_N22
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # (!\Mux153~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux153~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X24_Y14_N24
\Decoder0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\Mux23~1_combout\ & (\Mux24~1_combout\ & (\Mux11~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X24_Y14_N2
\regs[5][5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[5][5]~20_combout\ = (!\Mux153~2_combout\ & (\Decoder0~8_combout\ & (\Mux154~1_combout\ & \Mux155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~2_combout\,
	datab => \Decoder0~8_combout\,
	datac => \Mux154~1_combout\,
	datad => \Mux155~1_combout\,
	combout => \regs[5][5]~20_combout\);

-- Location: FF_X26_Y16_N25
\regs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][0]~q\);

-- Location: LCCOMB_X26_Y13_N24
\Decoder0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\Mux23~1_combout\ & (\Mux11~1_combout\ & (!\Mux0~1_combout\ & !\Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux24~1_combout\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X26_Y13_N2
\regs[6][2]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[6][2]~21_combout\ = (\Mux154~1_combout\ & (\Decoder0~9_combout\ & (!\Mux153~2_combout\ & \Mux155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Decoder0~9_combout\,
	datac => \Mux153~2_combout\,
	datad => \Mux155~1_combout\,
	combout => \regs[6][2]~21_combout\);

-- Location: FF_X26_Y15_N25
\regs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][0]~q\);

-- Location: LCCOMB_X25_Y17_N24
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\Mux13~0_combout\) # (!\Mux153~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux153~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X26_Y16_N2
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux13~1_combout\ & (((\regs[6][0]~q\) # (\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & (\regs[4][0]~q\ & ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][0]~q\,
	datab => \regs[6][0]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X26_Y16_N24
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux14~1_combout\ & ((\Mux22~0_combout\ & (\regs[7][0]~q\)) # (!\Mux22~0_combout\ & ((\regs[5][0]~q\))))) # (!\Mux14~1_combout\ & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[7][0]~q\,
	datac => \regs[5][0]~q\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X24_Y14_N8
\Decoder0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\Mux23~1_combout\ & (!\Mux24~1_combout\ & (\Mux11~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X24_Y14_N22
\regs[14][7]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[14][7]~17_combout\ = (!\Mux153~2_combout\ & (\Decoder0~1_combout\ & (\Mux154~1_combout\ & \Mux155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~2_combout\,
	datab => \Decoder0~1_combout\,
	datac => \Mux154~1_combout\,
	datad => \Mux155~1_combout\,
	combout => \regs[14][7]~17_combout\);

-- Location: FF_X27_Y16_N1
\regs[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][0]~q\);

-- Location: LCCOMB_X26_Y13_N14
\Decoder0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\Mux23~1_combout\ & (\Mux11~1_combout\ & (\Mux0~1_combout\ & \Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux24~1_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X26_Y13_N20
\regs[15][6]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[15][6]~19_combout\ = (!\Mux153~2_combout\ & (\Mux154~1_combout\ & (\Decoder0~3_combout\ & \Mux155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~2_combout\,
	datab => \Mux154~1_combout\,
	datac => \Decoder0~3_combout\,
	datad => \Mux155~1_combout\,
	combout => \regs[15][6]~19_combout\);

-- Location: FF_X27_Y17_N31
\regs[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][0]~q\);

-- Location: LCCOMB_X26_Y17_N24
\regs[13][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[13][0]~feeder_combout\ = \Add2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	combout => \regs[13][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N14
\regs[13][7]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[13][7]~16_combout\ = (\Decoder0~0_combout\ & (\Mux155~1_combout\ & (\Mux154~1_combout\ & !\Mux153~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mux154~1_combout\,
	datad => \Mux153~2_combout\,
	combout => \regs[13][7]~16_combout\);

-- Location: FF_X26_Y17_N25
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
	ena => \regs[13][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][0]~q\);

-- Location: LCCOMB_X26_Y13_N28
\regs[12][0]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[12][0]~18_combout\ = (\Decoder0~2_combout\ & (\Mux155~1_combout\ & (!\Mux153~2_combout\ & \Mux154~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mux153~2_combout\,
	datad => \Mux154~1_combout\,
	combout => \regs[12][0]~18_combout\);

-- Location: FF_X27_Y17_N29
\regs[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][0]~q\);

-- Location: LCCOMB_X27_Y17_N28
\Mux22~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux14~1_combout\ & ((\regs[13][0]~q\) # ((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (((\regs[12][0]~q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[13][0]~q\,
	datac => \regs[12][0]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X27_Y17_N30
\Mux22~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\Mux13~1_combout\ & ((\Mux22~7_combout\ & ((\regs[15][0]~q\))) # (!\Mux22~7_combout\ & (\regs[14][0]~q\)))) # (!\Mux13~1_combout\ & (((\Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[14][0]~q\,
	datac => \regs[15][0]~q\,
	datad => \Mux22~7_combout\,
	combout => \Mux22~8_combout\);

-- Location: LCCOMB_X24_Y16_N0
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Mux10~6_combout\ & ((GND) # (!\Mux22~9_combout\))) # (!\Mux10~6_combout\ & (\Mux22~9_combout\ $ (GND)))
-- \Add1~1\ = CARRY((\Mux10~6_combout\) # (!\Mux22~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux22~9_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X27_Y14_N8
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mux10~6_combout\ & (\Mux22~9_combout\ $ (VCC))) # (!\Mux10~6_combout\ & (\Mux22~9_combout\ & VCC))
-- \Add0~1\ = CARRY((\Mux10~6_combout\ & \Mux22~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux22~9_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X27_Y14_N24
\Mux32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux154~1_combout\ & ((\Mux155~1_combout\ & (\Add0~0_combout\)) # (!\Mux155~1_combout\ & ((\Mux14~1_combout\))))) # (!\Mux154~1_combout\ & (!\Mux155~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Mux155~1_combout\,
	datac => \Add0~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (PC(1) & (PC(3))) # (!PC(1) & ((PC(0) & ((PC(2)))) # (!PC(0) & (PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y17_N18
\PC~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~19_combout\ = (\PC[5]~12_combout\ & (((\Add3~22_combout\)))) # (!\PC[5]~12_combout\ & (((\Mux1~0_combout\)) # (!\Mux153~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \PC[5]~12_combout\,
	datad => \Add3~22_combout\,
	combout => \PC~19_combout\);

-- Location: FF_X23_Y17_N19
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X23_Y17_N8
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (PC(7)) # (PC(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PC(7),
	datad => PC(5),
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X23_Y17_N6
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (PC(3) & ((PC(2)) # ((PC(1))))) # (!PC(3) & (!PC(2) & (!PC(1) & !PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (PC(4)) # ((PC(6)) # ((\Mux12~1_combout\) # (\Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(6),
	datac => \Mux12~1_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X23_Y15_N14
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Mux9~6_combout\ & ((\Mux13~1_combout\ & (\Add2~1\ & VCC)) # (!\Mux13~1_combout\ & (!\Add2~1\)))) # (!\Mux9~6_combout\ & ((\Mux13~1_combout\ & (!\Add2~1\)) # (!\Mux13~1_combout\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Mux9~6_combout\ & (!\Mux13~1_combout\ & !\Add2~1\)) # (!\Mux9~6_combout\ & ((!\Add2~1\) # (!\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \Mux13~1_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X23_Y15_N5
\regs[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][1]~q\);

-- Location: LCCOMB_X26_Y16_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) = LCELL((\Mux22~9_combout\ & (\Mux9~6_combout\ $ (((\Mux21~9_combout\))))) # (!\Mux22~9_combout\ & (((!\Mux10~6_combout\ & \Mux21~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \Mux22~9_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux21~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1));

-- Location: LCCOMB_X25_Y15_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ = (\Mux21~9_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) $ (VCC))) # (!\Mux21~9_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & 
-- VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ = CARRY((\Mux21~9_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~9_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\);

-- Location: LCCOMB_X25_Y15_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\);

-- Location: LCCOMB_X23_Y17_N2
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # (!\Mux153~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux153~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X27_Y16_N16
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (PC(2)) # ((PC(1) & (PC(0))) # (!PC(1) & ((PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(0),
	datac => PC(1),
	datad => PC(3),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X27_Y16_N26
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\) # (!\Mux153~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X23_Y16_N18
\Decoder0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\Mux11~1_combout\ & (\Mux24~1_combout\ & (\Mux23~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X23_Y16_N26
\regs[3][4]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[3][4]~27_combout\ = (\Mux153~0_combout\ & (\Decoder0~7_combout\ & \Mux153~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Decoder0~7_combout\,
	datad => \Mux153~1_combout\,
	combout => \regs[3][4]~27_combout\);

-- Location: FF_X24_Y15_N5
\regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][1]~q\);

-- Location: LCCOMB_X26_Y13_N0
\regs[1][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[1][1]~feeder_combout\ = \Mux31~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~1_combout\,
	combout => \regs[1][1]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N18
\Decoder0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\Mux23~1_combout\ & (\Mux24~1_combout\ & (!\Mux11~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X24_Y14_N20
\regs[1][1]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[1][1]~25_combout\ = (\Mux153~0_combout\ & (\Mux153~1_combout\ & \Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux153~1_combout\,
	datad => \Decoder0~5_combout\,
	combout => \regs[1][1]~25_combout\);

-- Location: FF_X26_Y13_N1
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
	ena => \regs[1][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][1]~q\);

-- Location: LCCOMB_X24_Y17_N4
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (PC(0) & (((!PC(1) & !PC(2))) # (!PC(3)))) # (!PC(0) & (PC(2) $ (((PC(1)) # (PC(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(2),
	datac => PC(0),
	datad => PC(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y17_N22
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\Mux153~0_combout\) # (!\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux2~0_combout\,
	datad => \Mux153~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X25_Y14_N0
\Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux1~1_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\regs[1][1]~q\))) # (!\Mux2~1_combout\ & (\regs[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][1]~q\,
	datab => \regs[1][1]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X24_Y15_N4
\Mux9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux1~1_combout\ & ((\Mux9~4_combout\ & ((\regs[3][1]~q\))) # (!\Mux9~4_combout\ & (\regs[2][1]~q\)))) # (!\Mux1~1_combout\ & (((\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][1]~q\,
	datab => \Mux1~1_combout\,
	datac => \regs[3][1]~q\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X26_Y17_N2
\regs[13][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[13][1]~feeder_combout\ = \Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~2_combout\,
	combout => \regs[13][1]~feeder_combout\);

-- Location: FF_X26_Y17_N3
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
	ena => \regs[13][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][1]~q\);

-- Location: LCCOMB_X22_Y17_N0
\Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux2~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\ & ((\regs[14][1]~q\))) # (!\Mux1~1_combout\ & (\regs[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][1]~q\,
	datab => \regs[14][1]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X24_Y15_N24
\Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux2~1_combout\ & ((\Mux9~2_combout\ & (\regs[15][1]~q\)) # (!\Mux9~2_combout\ & ((\regs[13][1]~q\))))) # (!\Mux2~1_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][1]~q\,
	datab => \Mux2~1_combout\,
	datac => \regs[13][1]~q\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X24_Y15_N20
\Mux9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux153~0_combout\ & ((\Mux0~0_combout\ & ((\Mux9~3_combout\))) # (!\Mux0~0_combout\ & (\Mux9~5_combout\)))) # (!\Mux153~0_combout\ & (((\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux9~5_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X27_Y14_N10
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mux21~9_combout\ & ((\Mux9~6_combout\ & (\Add0~1\ & VCC)) # (!\Mux9~6_combout\ & (!\Add0~1\)))) # (!\Mux21~9_combout\ & ((\Mux9~6_combout\ & (!\Add0~1\)) # (!\Mux9~6_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Mux21~9_combout\ & (!\Mux9~6_combout\ & !\Add0~1\)) # (!\Mux21~9_combout\ & ((!\Add0~1\) # (!\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~9_combout\,
	datab => \Mux9~6_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y14_N18
\Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux154~1_combout\ & (\Mux155~1_combout\ & ((\Add0~2_combout\)))) # (!\Mux154~1_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\)) # (!\Mux155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\,
	datad => \Add0~2_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X25_Y14_N8
\Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux155~1_combout\ & (((\Mux31~0_combout\)))) # (!\Mux155~1_combout\ & ((\Mux31~0_combout\ & (\Add1~2_combout\)) # (!\Mux31~0_combout\ & ((\Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mux13~1_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X23_Y16_N24
\Decoder0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (!\Mux11~1_combout\ & (!\Mux24~1_combout\ & (!\Mux23~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X23_Y16_N14
\regs[8][0]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[8][0]~30_combout\ = (\Mux153~0_combout\ & (\Mux153~1_combout\ & \Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux153~1_combout\,
	datad => \Decoder0~14_combout\,
	combout => \regs[8][0]~30_combout\);

-- Location: FF_X24_Y17_N15
\regs[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][1]~q\);

-- Location: LCCOMB_X24_Y17_N14
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux12~2_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux13~1_combout\ & (\regs[10][1]~q\)) # (!\Mux13~1_combout\ & ((\regs[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][1]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[8][1]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux12~2_combout\ & ((\Mux21~0_combout\ & ((\regs[14][1]~q\))) # (!\Mux21~0_combout\ & (\regs[12][1]~q\)))) # (!\Mux12~2_combout\ & (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][1]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[14][1]~q\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: FF_X26_Y13_N9
\regs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][1]~q\);

-- Location: LCCOMB_X26_Y13_N18
\Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux13~1_combout\ & ((\regs[3][1]~q\) # ((\Mux12~2_combout\)))) # (!\Mux13~1_combout\ & (((\regs[1][1]~q\ & !\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][1]~q\,
	datab => \regs[1][1]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X26_Y13_N8
\Mux21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux12~2_combout\ & ((\Mux21~2_combout\ & ((\regs[7][1]~q\))) # (!\Mux21~2_combout\ & (\regs[5][1]~q\)))) # (!\Mux12~2_combout\ & (((\Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][1]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[7][1]~q\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: FF_X26_Y14_N3
\regs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][1]~q\);

-- Location: LCCOMB_X26_Y14_N20
\regs[0][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][1]~feeder_combout\ = \Mux31~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~1_combout\,
	combout => \regs[0][1]~feeder_combout\);

-- Location: LCCOMB_X23_Y16_N20
\Decoder0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\Mux11~1_combout\ & (!\Mux24~1_combout\ & (!\Mux23~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X23_Y16_N12
\regs[0][1]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][1]~26_combout\ = (\Mux153~1_combout\ & (\Mux153~0_combout\ & \Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux153~1_combout\,
	datac => \Mux153~0_combout\,
	datad => \Decoder0~6_combout\,
	combout => \regs[0][1]~26_combout\);

-- Location: FF_X26_Y14_N21
\regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[0][1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[0][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][1]~q\);

-- Location: LCCOMB_X26_Y14_N16
\Mux21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux13~1_combout\ & ((\regs[2][1]~q\) # ((\Mux12~2_combout\)))) # (!\Mux13~1_combout\ & (((\regs[0][1]~q\ & !\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][1]~q\,
	datab => \regs[0][1]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X26_Y14_N2
\Mux21~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux12~2_combout\ & ((\Mux21~4_combout\ & ((\regs[6][1]~q\))) # (!\Mux21~4_combout\ & (\regs[4][1]~q\)))) # (!\Mux12~2_combout\ & (((\Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][1]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[6][1]~q\,
	datad => \Mux21~4_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X27_Y15_N4
\Mux21~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux11~1_combout\ & (\Mux14~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux14~1_combout\ & (\Mux21~3_combout\)) # (!\Mux14~1_combout\ & ((\Mux21~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux21~3_combout\,
	datad => \Mux21~5_combout\,
	combout => \Mux21~6_combout\);

-- Location: FF_X23_Y15_N15
\regs[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[15][6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][1]~q\);

-- Location: LCCOMB_X25_Y14_N4
\regs[9][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[9][1]~feeder_combout\ = \Mux31~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~1_combout\,
	combout => \regs[9][1]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N12
\Decoder0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (!\Mux23~1_combout\ & (\Mux24~1_combout\ & (!\Mux11~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X24_Y14_N26
\regs[9][2]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[9][2]~28_combout\ = (\Mux153~1_combout\ & (\Mux153~0_combout\ & \Decoder0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~1_combout\,
	datab => \Mux153~0_combout\,
	datad => \Decoder0~12_combout\,
	combout => \regs[9][2]~28_combout\);

-- Location: FF_X25_Y14_N5
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
	ena => \regs[9][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][1]~q\);

-- Location: LCCOMB_X23_Y16_N16
\regs[11][6]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[11][6]~31_combout\ = (\Decoder0~15_combout\ & (\Mux153~0_combout\ & \Mux153~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~15_combout\,
	datac => \Mux153~0_combout\,
	datad => \Mux153~1_combout\,
	combout => \regs[11][6]~31_combout\);

-- Location: FF_X25_Y14_N15
\regs[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][1]~q\);

-- Location: LCCOMB_X25_Y14_N14
\Mux21~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux12~2_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux13~1_combout\ & ((\regs[11][1]~q\))) # (!\Mux13~1_combout\ & (\regs[9][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \regs[9][1]~q\,
	datac => \regs[11][1]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X26_Y17_N6
\Mux21~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\Mux12~2_combout\ & ((\Mux21~7_combout\ & ((\regs[15][1]~q\))) # (!\Mux21~7_combout\ & (\regs[13][1]~q\)))) # (!\Mux12~2_combout\ & (((\Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \regs[13][1]~q\,
	datac => \regs[15][1]~q\,
	datad => \Mux21~7_combout\,
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X27_Y15_N30
\Mux21~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = (\Mux11~1_combout\ & ((\Mux21~6_combout\ & ((\Mux21~8_combout\))) # (!\Mux21~6_combout\ & (\Mux21~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux21~6_combout\,
	datad => \Mux21~8_combout\,
	combout => \Mux21~9_combout\);

-- Location: LCCOMB_X26_Y16_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) = LCELL(\Mux21~9_combout\ $ (((\Mux22~9_combout\ & \Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux22~9_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux21~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0));

-- Location: LCCOMB_X24_Y16_N16
\Mux32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux154~1_combout\ & (((\Mux32~0_combout\)))) # (!\Mux154~1_combout\ & ((\Mux32~0_combout\ & (\Add1~0_combout\)) # (!\Mux32~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Add1~0_combout\,
	datac => \Mux32~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X25_Y16_N4
\regs[1][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[1][0]~feeder_combout\ = \Mux32~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~1_combout\,
	combout => \regs[1][0]~feeder_combout\);

-- Location: FF_X25_Y16_N5
\regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][0]~q\);

-- Location: FF_X24_Y16_N17
\regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux32~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][0]~q\);

-- Location: LCCOMB_X24_Y16_N24
\regs[0][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][0]~feeder_combout\ = \Mux32~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~1_combout\,
	combout => \regs[0][0]~feeder_combout\);

-- Location: FF_X24_Y16_N25
\regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[0][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[0][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][0]~q\);

-- Location: LCCOMB_X24_Y16_N28
\Mux22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux14~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux13~1_combout\ & (\regs[2][0]~q\)) # (!\Mux13~1_combout\ & ((\regs[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][0]~q\,
	datab => \regs[0][0]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X25_Y16_N6
\Mux22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux14~1_combout\ & ((\Mux22~4_combout\ & ((\regs[3][0]~q\))) # (!\Mux22~4_combout\ & (\regs[1][0]~q\)))) # (!\Mux14~1_combout\ & (((\Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[1][0]~q\,
	datac => \regs[3][0]~q\,
	datad => \Mux22~4_combout\,
	combout => \Mux22~5_combout\);

-- Location: FF_X25_Y14_N17
\regs[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][0]~q\);

-- Location: FF_X24_Y17_N27
\regs[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][0]~q\);

-- Location: LCCOMB_X24_Y17_N26
\Mux22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux14~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux13~1_combout\ & (\regs[10][0]~q\)) # (!\Mux13~1_combout\ & ((\regs[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][0]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[8][0]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X25_Y14_N16
\Mux22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux14~1_combout\ & ((\Mux22~2_combout\ & ((\regs[11][0]~q\))) # (!\Mux22~2_combout\ & (\regs[9][0]~q\)))) # (!\Mux14~1_combout\ & (((\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][0]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[11][0]~q\,
	datad => \Mux22~2_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X26_Y16_N10
\Mux22~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux12~2_combout\ & (\Mux11~1_combout\)) # (!\Mux12~2_combout\ & ((\Mux11~1_combout\ & ((\Mux22~3_combout\))) # (!\Mux11~1_combout\ & (\Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux22~5_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X26_Y16_N16
\Mux22~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~9_combout\ = (\Mux12~2_combout\ & ((\Mux22~6_combout\ & ((\Mux22~8_combout\))) # (!\Mux22~6_combout\ & (\Mux22~1_combout\)))) # (!\Mux12~2_combout\ & (((\Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux22~8_combout\,
	datad => \Mux22~6_combout\,
	combout => \Mux22~9_combout\);

-- Location: LCCOMB_X26_Y16_N6
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Mux9~6_combout\ & (\Mux21~9_combout\ & (\Mux22~9_combout\ $ (!\Mux10~6_combout\)))) # (!\Mux9~6_combout\ & (!\Mux21~9_combout\ & (\Mux22~9_combout\ $ (!\Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \Mux22~9_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux21~9_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y15_N16
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Mux8~6_combout\ $ (\Mux12~2_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Mux8~6_combout\ & ((\Mux12~2_combout\) # (!\Add2~3\))) # (!\Mux8~6_combout\ & (\Mux12~2_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux12~2_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X23_Y15_N18
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Mux7~6_combout\ & ((\Mux11~1_combout\ & (\Add2~5\ & VCC)) # (!\Mux11~1_combout\ & (!\Add2~5\)))) # (!\Mux7~6_combout\ & ((\Mux11~1_combout\ & (!\Add2~5\)) # (!\Mux11~1_combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Mux7~6_combout\ & (!\Mux11~1_combout\ & !\Add2~5\)) # (!\Mux7~6_combout\ & ((!\Add2~5\) # (!\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux11~1_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X23_Y15_N20
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Mux6~6_combout\ & (\Add2~7\ $ (GND))) # (!\Mux6~6_combout\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\Mux6~6_combout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X23_Y15_N22
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Mux5~6_combout\ & (!\Add2~9\)) # (!\Mux5~6_combout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X23_Y13_N16
\regs[14][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[14][5]~feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~10_combout\,
	combout => \regs[14][5]~feeder_combout\);

-- Location: FF_X23_Y13_N17
\regs[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[14][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[14][7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][5]~q\);

-- Location: LCCOMB_X25_Y13_N24
\regs[3][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[3][5]~feeder_combout\ = \Mux27~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux27~1_combout\,
	combout => \regs[3][5]~feeder_combout\);

-- Location: FF_X25_Y13_N25
\regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[3][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][5]~q\);

-- Location: LCCOMB_X24_Y13_N16
\regs[0][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][5]~feeder_combout\ = \Mux27~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux27~1_combout\,
	combout => \regs[0][5]~feeder_combout\);

-- Location: FF_X24_Y13_N17
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
	ena => \regs[0][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][5]~q\);

-- Location: LCCOMB_X25_Y16_N24
\regs[1][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[1][5]~feeder_combout\ = \Mux27~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux27~1_combout\,
	combout => \regs[1][5]~feeder_combout\);

-- Location: FF_X25_Y16_N25
\regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[1][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][5]~q\);

-- Location: LCCOMB_X25_Y16_N26
\Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux1~1_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\regs[1][5]~q\))) # (!\Mux2~1_combout\ & (\regs[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \regs[0][5]~q\,
	datac => \Mux2~1_combout\,
	datad => \regs[1][5]~q\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X25_Y13_N30
\Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & (((\regs[3][5]~q\) # (!\Mux1~1_combout\)))) # (!\Mux5~4_combout\ & (\regs[2][5]~q\ & ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][5]~q\,
	datab => \regs[3][5]~q\,
	datac => \Mux5~4_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X26_Y17_N8
\regs[13][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[13][5]~feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~10_combout\,
	combout => \regs[13][5]~feeder_combout\);

-- Location: FF_X26_Y17_N9
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
	ena => \regs[13][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][5]~q\);

-- Location: FF_X23_Y15_N23
\regs[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[15][6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][5]~q\);

-- Location: LCCOMB_X27_Y17_N8
\regs[12][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[12][5]~feeder_combout\ = \Add2~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~10_combout\,
	combout => \regs[12][5]~feeder_combout\);

-- Location: FF_X27_Y17_N9
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
	ena => \regs[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][5]~q\);

-- Location: LCCOMB_X27_Y17_N26
\Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux2~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\ & (\regs[14][5]~q\)) # (!\Mux1~1_combout\ & ((\regs[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][5]~q\,
	datab => \regs[12][5]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X26_Y17_N26
\Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux2~1_combout\ & ((\Mux5~2_combout\ & ((\regs[15][5]~q\))) # (!\Mux5~2_combout\ & (\regs[13][5]~q\)))) # (!\Mux2~1_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[13][5]~q\,
	datac => \regs[15][5]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X25_Y13_N10
\Mux5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux153~0_combout\ & ((\Mux0~0_combout\ & ((\Mux5~3_combout\))) # (!\Mux0~0_combout\ & (\Mux5~5_combout\)))) # (!\Mux153~0_combout\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux5~5_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~6_combout\);

-- Location: FF_X23_Y15_N21
\regs[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[14][7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][4]~q\);

-- Location: LCCOMB_X26_Y17_N18
\regs[13][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[13][3]~feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	combout => \regs[13][3]~feeder_combout\);

-- Location: FF_X26_Y17_N19
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
	ena => \regs[13][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][3]~q\);

-- Location: LCCOMB_X27_Y17_N14
\regs[12][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[12][3]~feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	combout => \regs[12][3]~feeder_combout\);

-- Location: FF_X27_Y17_N15
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
	ena => \regs[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][3]~q\);

-- Location: LCCOMB_X27_Y17_N24
\Mux19~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\Mux14~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux13~1_combout\ & (\regs[14][3]~q\)) # (!\Mux13~1_combout\ & ((\regs[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][3]~q\,
	datab => \regs[12][3]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X27_Y17_N18
\Mux19~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\Mux14~1_combout\ & ((\Mux19~7_combout\ & (\regs[15][3]~q\)) # (!\Mux19~7_combout\ & ((\regs[13][3]~q\))))) # (!\Mux14~1_combout\ & (((\Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][3]~q\,
	datab => \regs[13][3]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux19~7_combout\,
	combout => \Mux19~8_combout\);

-- Location: FF_X23_Y15_N29
\regs[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][2]~q\);

-- Location: FF_X23_Y15_N3
\regs[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][2]~q\);

-- Location: LCCOMB_X23_Y15_N2
\Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux1~1_combout\ & (((\regs[14][2]~q\) # (\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & (\regs[12][2]~q\ & ((!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][2]~q\,
	datab => \Mux1~1_combout\,
	datac => \regs[14][2]~q\,
	datad => \Mux2~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X23_Y15_N28
\Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux2~1_combout\ & ((\Mux8~2_combout\ & ((\regs[15][2]~q\))) # (!\Mux8~2_combout\ & (\regs[13][2]~q\)))) # (!\Mux2~1_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][2]~q\,
	datab => \Mux2~1_combout\,
	datac => \regs[15][2]~q\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X27_Y14_N12
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mux20~9_combout\ $ (\Mux8~6_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mux20~9_combout\ & ((\Mux8~6_combout\) # (!\Add0~3\))) # (!\Mux20~9_combout\ & (\Mux8~6_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~9_combout\,
	datab => \Mux8~6_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X27_Y14_N2
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux154~1_combout\ & ((\Mux155~1_combout\ & ((\Add0~4_combout\))) # (!\Mux155~1_combout\ & (\Mux12~2_combout\)))) # (!\Mux154~1_combout\ & (!\Mux155~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mux12~2_combout\,
	datad => \Add0~4_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X27_Y17_N16
\regs[12][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[12][2]~feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~4_combout\,
	combout => \regs[12][2]~feeder_combout\);

-- Location: FF_X27_Y17_N17
\regs[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[12][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][2]~q\);

-- Location: FF_X24_Y17_N9
\regs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][2]~q\);

-- Location: LCCOMB_X24_Y17_N8
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux12~2_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux14~1_combout\ & (\regs[9][2]~q\)) # (!\Mux14~1_combout\ & ((\regs[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][2]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[8][2]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X27_Y17_N10
\Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\ & ((\regs[13][2]~q\) # ((!\Mux12~2_combout\)))) # (!\Mux20~0_combout\ & (((\regs[12][2]~q\ & \Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][2]~q\,
	datab => \regs[12][2]~q\,
	datac => \Mux20~0_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux20~1_combout\);

-- Location: FF_X23_Y16_N7
\regs[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][2]~q\);

-- Location: LCCOMB_X23_Y16_N2
\Decoder0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (!\Mux11~1_combout\ & (!\Mux24~1_combout\ & (\Mux23~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X23_Y16_N4
\regs[10][5]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[10][5]~29_combout\ = (\Mux153~0_combout\ & (\Mux153~1_combout\ & \Decoder0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux153~1_combout\,
	datad => \Decoder0~13_combout\,
	combout => \regs[10][5]~29_combout\);

-- Location: FF_X24_Y17_N7
\regs[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][2]~q\);

-- Location: LCCOMB_X24_Y17_N6
\Mux20~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\Mux14~1_combout\ & (((\Mux12~2_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~2_combout\ & (\regs[14][2]~q\)) # (!\Mux12~2_combout\ & ((\regs[10][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][2]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[10][2]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X23_Y16_N6
\Mux20~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = (\Mux14~1_combout\ & ((\Mux20~7_combout\ & (\regs[15][2]~q\)) # (!\Mux20~7_combout\ & ((\regs[11][2]~q\))))) # (!\Mux14~1_combout\ & (((\Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][2]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[11][2]~q\,
	datad => \Mux20~7_combout\,
	combout => \Mux20~8_combout\);

-- Location: FF_X27_Y15_N29
\regs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][2]~q\);

-- Location: FF_X26_Y15_N15
\regs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][2]~q\);

-- Location: LCCOMB_X26_Y15_N14
\Mux20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux12~2_combout\ & (((\regs[6][2]~q\) # (\Mux14~1_combout\)))) # (!\Mux12~2_combout\ & (\regs[2][2]~q\ & ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][2]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[6][2]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X27_Y15_N28
\Mux20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux14~1_combout\ & ((\Mux20~2_combout\ & ((\regs[7][2]~q\))) # (!\Mux20~2_combout\ & (\regs[3][2]~q\)))) # (!\Mux14~1_combout\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][2]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[7][2]~q\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X26_Y16_N0
\regs[5][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[5][2]~feeder_combout\ = \Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~4_combout\,
	combout => \regs[5][2]~feeder_combout\);

-- Location: FF_X26_Y16_N1
\regs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[5][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[5][5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][2]~q\);

-- Location: LCCOMB_X23_Y16_N8
\regs[0][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][2]~feeder_combout\ = \Mux30~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~1_combout\,
	combout => \regs[0][2]~feeder_combout\);

-- Location: FF_X23_Y16_N9
\regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[0][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[0][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][2]~q\);

-- Location: LCCOMB_X25_Y16_N14
\Decoder0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\Mux11~1_combout\ & (!\Mux23~1_combout\ & (!\Mux24~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux23~1_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X25_Y16_N0
\regs[4][4]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[4][4]~22_combout\ = (!\Mux153~2_combout\ & (\Mux154~1_combout\ & (\Decoder0~10_combout\ & \Mux155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~2_combout\,
	datab => \Mux154~1_combout\,
	datac => \Decoder0~10_combout\,
	datad => \Mux155~1_combout\,
	combout => \regs[4][4]~22_combout\);

-- Location: FF_X25_Y16_N11
\regs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][2]~q\);

-- Location: LCCOMB_X25_Y16_N10
\Mux20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux12~2_combout\ & (((\regs[4][2]~q\) # (\Mux14~1_combout\)))) # (!\Mux12~2_combout\ & (\regs[0][2]~q\ & ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \regs[0][2]~q\,
	datac => \regs[4][2]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X25_Y16_N8
\Mux20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux14~1_combout\ & ((\Mux20~4_combout\ & ((\regs[5][2]~q\))) # (!\Mux20~4_combout\ & (\regs[1][2]~q\)))) # (!\Mux14~1_combout\ & (((\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][2]~q\,
	datab => \regs[5][2]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X27_Y15_N10
\Mux20~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux13~1_combout\ & ((\Mux20~3_combout\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((!\Mux11~1_combout\ & \Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux20~3_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux20~5_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X27_Y15_N16
\Mux20~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = (\Mux11~1_combout\ & ((\Mux20~6_combout\ & ((\Mux20~8_combout\))) # (!\Mux20~6_combout\ & (\Mux20~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux20~1_combout\,
	datac => \Mux20~8_combout\,
	datad => \Mux20~6_combout\,
	combout => \Mux20~9_combout\);

-- Location: LCCOMB_X24_Y15_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ = \Mux19~9_combout\ $ (((\Mux21~9_combout\ & \Mux20~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~9_combout\,
	datab => \Mux20~9_combout\,
	datad => \Mux19~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\);

-- Location: LCCOMB_X25_Y15_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\);

-- Location: LCCOMB_X25_Y15_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\);

-- Location: LCCOMB_X23_Y16_N0
\Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux154~1_combout\ & (((\Mux30~0_combout\)))) # (!\Mux154~1_combout\ & ((\Mux30~0_combout\ & (\Add1~4_combout\)) # (!\Mux30~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Mux154~1_combout\,
	datac => \Mux30~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X25_Y13_N16
\regs[2][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[2][2]~feeder_combout\ = \Mux30~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~1_combout\,
	combout => \regs[2][2]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N4
\Decoder0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\Mux23~1_combout\ & (!\Mux24~1_combout\ & (!\Mux11~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux24~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X24_Y14_N6
\regs[2][3]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[2][3]~24_combout\ = (\Mux153~0_combout\ & (\Decoder0~4_combout\ & \Mux153~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux153~0_combout\,
	datac => \Decoder0~4_combout\,
	datad => \Mux153~1_combout\,
	combout => \regs[2][3]~24_combout\);

-- Location: FF_X25_Y13_N17
\regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[2][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][2]~q\);

-- Location: LCCOMB_X25_Y13_N26
\regs[3][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[3][2]~feeder_combout\ = \Mux30~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~1_combout\,
	combout => \regs[3][2]~feeder_combout\);

-- Location: FF_X25_Y13_N27
\regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[3][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][2]~q\);

-- Location: FF_X25_Y16_N23
\regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][2]~q\);

-- Location: LCCOMB_X24_Y16_N22
\Mux8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux2~1_combout\ & (((\regs[1][2]~q\) # (\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (\regs[0][2]~q\ & ((!\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][2]~q\,
	datab => \regs[1][2]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X25_Y13_N28
\Mux8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux1~1_combout\ & ((\Mux8~4_combout\ & ((\regs[3][2]~q\))) # (!\Mux8~4_combout\ & (\regs[2][2]~q\)))) # (!\Mux1~1_combout\ & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \regs[2][2]~q\,
	datac => \regs[3][2]~q\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X25_Y13_N20
\Mux8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux153~0_combout\ & ((\Mux0~0_combout\ & (\Mux8~3_combout\)) # (!\Mux0~0_combout\ & ((\Mux8~5_combout\))))) # (!\Mux153~0_combout\ & (((\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux8~5_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X24_Y16_N6
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Mux7~6_combout\ & ((\Mux19~9_combout\ & (!\Add1~5\)) # (!\Mux19~9_combout\ & (\Add1~5\ & VCC)))) # (!\Mux7~6_combout\ & ((\Mux19~9_combout\ & ((\Add1~5\) # (GND))) # (!\Mux19~9_combout\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\Mux7~6_combout\ & (\Mux19~9_combout\ & !\Add1~5\)) # (!\Mux7~6_combout\ & ((\Mux19~9_combout\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux19~9_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y15_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\);

-- Location: LCCOMB_X25_Y15_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\);

-- Location: LCCOMB_X24_Y14_N28
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux155~1_combout\ & ((\Mux154~1_combout\ & (\Add0~6_combout\)) # (!\Mux154~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\))))) # (!\Mux155~1_combout\ & (((!\Mux154~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mux154~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux155~1_combout\ & (((\Mux29~0_combout\)))) # (!\Mux155~1_combout\ & ((\Mux29~0_combout\ & ((\Add1~6_combout\))) # (!\Mux29~0_combout\ & (\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux155~1_combout\,
	datac => \Add1~6_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: FF_X24_Y14_N27
\regs[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux29~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][3]~q\);

-- Location: FF_X24_Y14_N1
\regs[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux29~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][3]~q\);

-- Location: FF_X24_Y17_N25
\regs[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux29~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][3]~q\);

-- Location: LCCOMB_X24_Y17_N24
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux14~1_combout\ & ((\regs[9][3]~q\) # ((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (((\regs[8][3]~q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][3]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[8][3]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X24_Y14_N0
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux13~1_combout\ & ((\Mux19~0_combout\ & ((\regs[11][3]~q\))) # (!\Mux19~0_combout\ & (\regs[10][3]~q\)))) # (!\Mux13~1_combout\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[10][3]~q\,
	datac => \regs[11][3]~q\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: FF_X26_Y15_N5
\regs[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][3]~q\);

-- Location: FF_X26_Y16_N13
\regs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][3]~q\);

-- Location: FF_X25_Y16_N31
\regs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][3]~q\);

-- Location: LCCOMB_X25_Y16_N30
\Mux19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux14~1_combout\ & ((\regs[5][3]~q\) # ((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (((\regs[4][3]~q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][3]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[4][3]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X26_Y16_N12
\Mux19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux13~1_combout\ & ((\Mux19~2_combout\ & ((\regs[7][3]~q\))) # (!\Mux19~2_combout\ & (\regs[6][3]~q\)))) # (!\Mux13~1_combout\ & (((\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[6][3]~q\,
	datac => \regs[7][3]~q\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: FF_X24_Y15_N11
\regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux29~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][3]~q\);

-- Location: FF_X24_Y16_N31
\regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux29~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][3]~q\);

-- Location: LCCOMB_X24_Y16_N20
\regs[0][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][3]~feeder_combout\ = \Mux29~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux29~1_combout\,
	combout => \regs[0][3]~feeder_combout\);

-- Location: FF_X24_Y16_N21
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
	ena => \regs[0][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][3]~q\);

-- Location: LCCOMB_X24_Y16_N18
\Mux19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux14~1_combout\ & ((\regs[1][3]~q\) # ((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (((\regs[0][3]~q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][3]~q\,
	datab => \regs[0][3]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X24_Y16_N30
\Mux19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux13~1_combout\ & ((\Mux19~4_combout\ & ((\regs[3][3]~q\))) # (!\Mux19~4_combout\ & (\regs[2][3]~q\)))) # (!\Mux13~1_combout\ & (((\Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[2][3]~q\,
	datac => \regs[3][3]~q\,
	datad => \Mux19~4_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X27_Y15_N2
\Mux19~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux11~1_combout\ & (\Mux12~2_combout\)) # (!\Mux11~1_combout\ & ((\Mux12~2_combout\ & (\Mux19~3_combout\)) # (!\Mux12~2_combout\ & ((\Mux19~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~2_combout\,
	datac => \Mux19~3_combout\,
	datad => \Mux19~5_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X27_Y15_N12
\Mux19~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~9_combout\ = (\Mux11~1_combout\ & ((\Mux19~6_combout\ & (\Mux19~8_combout\)) # (!\Mux19~6_combout\ & ((\Mux19~1_combout\))))) # (!\Mux11~1_combout\ & (((\Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux19~8_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux19~6_combout\,
	combout => \Mux19~9_combout\);

-- Location: LCCOMB_X24_Y16_N8
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Mux6~6_combout\ $ (\Mux18~9_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Mux6~6_combout\ & ((!\Add1~7\) # (!\Mux18~9_combout\))) # (!\Mux6~6_combout\ & (!\Mux18~9_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \Mux18~9_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y15_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ = \Mux20~9_combout\ $ (\Mux21~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux20~9_combout\,
	datad => \Mux21~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\);

-- Location: LCCOMB_X24_Y15_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\Mux8~6_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (!\Mux9~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X25_Y15_N4
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\);

-- Location: LCCOMB_X25_Y15_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\);

-- Location: FF_X27_Y17_N21
\regs[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][4]~q\);

-- Location: LCCOMB_X26_Y17_N10
\regs[13][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[13][4]~feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \regs[13][4]~feeder_combout\);

-- Location: FF_X26_Y17_N11
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
	ena => \regs[13][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][4]~q\);

-- Location: LCCOMB_X27_Y17_N2
\Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & ((\regs[15][4]~q\) # ((!\Mux2~1_combout\)))) # (!\Mux6~2_combout\ & (((\Mux2~1_combout\ & \regs[13][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \regs[15][4]~q\,
	datac => \Mux2~1_combout\,
	datad => \regs[13][4]~q\,
	combout => \Mux6~3_combout\);

-- Location: FF_X27_Y15_N25
\regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux28~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][4]~q\);

-- Location: LCCOMB_X26_Y13_N10
\regs[1][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[1][4]~feeder_combout\ = \Mux28~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux28~1_combout\,
	combout => \regs[1][4]~feeder_combout\);

-- Location: FF_X26_Y13_N11
\regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[1][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][4]~q\);

-- Location: LCCOMB_X26_Y14_N10
\regs[0][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][4]~feeder_combout\ = \Mux28~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux28~1_combout\,
	combout => \regs[0][4]~feeder_combout\);

-- Location: FF_X26_Y14_N11
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
	ena => \regs[0][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][4]~q\);

-- Location: LCCOMB_X24_Y17_N30
\Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux2~1_combout\ & ((\regs[1][4]~q\) # ((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (((\regs[0][4]~q\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[1][4]~q\,
	datac => \regs[0][4]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X27_Y16_N24
\Mux6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux1~1_combout\ & ((\Mux6~4_combout\ & ((\regs[3][4]~q\))) # (!\Mux6~4_combout\ & (\regs[2][4]~q\)))) # (!\Mux1~1_combout\ & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][4]~q\,
	datab => \regs[3][4]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X26_Y16_N28
\Mux6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux0~0_combout\ & (((\Mux6~3_combout\)))) # (!\Mux0~0_combout\ & ((\Mux153~0_combout\ & ((\Mux6~5_combout\))) # (!\Mux153~0_combout\ & (\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux153~0_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X27_Y14_N16
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Mux18~9_combout\ $ (\Mux6~6_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Mux18~9_combout\ & ((\Mux6~6_combout\) # (!\Add0~7\))) # (!\Mux18~9_combout\ & (\Mux6~6_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~9_combout\,
	datab => \Mux6~6_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X27_Y14_N4
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux154~1_combout\ & ((\Mux155~1_combout\ & ((\Add0~8_combout\))) # (!\Mux155~1_combout\ & (\Mux2~1_combout\)))) # (!\Mux154~1_combout\ & (!\Mux155~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X26_Y13_N26
\Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux154~1_combout\ & (((\Mux28~0_combout\)))) # (!\Mux154~1_combout\ & ((\Mux28~0_combout\ & (\Add1~8_combout\)) # (!\Mux28~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Add1~8_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: FF_X24_Y13_N29
\regs[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux28~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][4]~q\);

-- Location: LCCOMB_X24_Y13_N28
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux12~2_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux13~1_combout\ & (\regs[10][4]~q\)) # (!\Mux13~1_combout\ & ((\regs[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][4]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[8][4]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X24_Y13_N10
\Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux12~2_combout\ & ((\Mux18~0_combout\ & ((\regs[14][4]~q\))) # (!\Mux18~0_combout\ & (\regs[12][4]~q\)))) # (!\Mux12~2_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][4]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[14][4]~q\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: FF_X27_Y15_N15
\regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][4]~q\);

-- Location: LCCOMB_X27_Y15_N24
\Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux12~2_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux13~1_combout\ & ((\regs[3][4]~q\))) # (!\Mux13~1_combout\ & (\regs[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][4]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[3][4]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X27_Y15_N14
\Mux18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux12~2_combout\ & ((\Mux18~2_combout\ & ((\regs[7][4]~q\))) # (!\Mux18~2_combout\ & (\regs[5][4]~q\)))) # (!\Mux12~2_combout\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][4]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[7][4]~q\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X25_Y16_N20
\regs[4][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[4][4]~feeder_combout\ = \Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~8_combout\,
	combout => \regs[4][4]~feeder_combout\);

-- Location: FF_X25_Y16_N21
\regs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[4][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[4][4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][4]~q\);

-- Location: FF_X26_Y14_N19
\regs[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][4]~q\);

-- Location: FF_X27_Y16_N27
\regs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux28~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][4]~q\);

-- Location: LCCOMB_X26_Y14_N24
\Mux18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux13~1_combout\ & (((\regs[2][4]~q\) # (\Mux12~2_combout\)))) # (!\Mux13~1_combout\ & (\regs[0][4]~q\ & ((!\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][4]~q\,
	datab => \regs[2][4]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X26_Y14_N18
\Mux18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux12~2_combout\ & ((\Mux18~4_combout\ & ((\regs[6][4]~q\))) # (!\Mux18~4_combout\ & (\regs[4][4]~q\)))) # (!\Mux12~2_combout\ & (((\Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \regs[4][4]~q\,
	datac => \regs[6][4]~q\,
	datad => \Mux18~4_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X27_Y15_N8
\Mux18~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux11~1_combout\ & (\Mux14~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux14~1_combout\ & (\Mux18~3_combout\)) # (!\Mux14~1_combout\ & ((\Mux18~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux18~3_combout\,
	datad => \Mux18~5_combout\,
	combout => \Mux18~6_combout\);

-- Location: FF_X25_Y14_N25
\regs[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux28~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][4]~q\);

-- Location: LCCOMB_X25_Y14_N24
\Mux18~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\Mux12~2_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux13~1_combout\ & (\regs[11][4]~q\)) # (!\Mux13~1_combout\ & ((\regs[9][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][4]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[9][4]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X27_Y17_N20
\Mux18~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = (\Mux12~2_combout\ & ((\Mux18~7_combout\ & ((\regs[15][4]~q\))) # (!\Mux18~7_combout\ & (\regs[13][4]~q\)))) # (!\Mux12~2_combout\ & (((\Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][4]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[15][4]~q\,
	datad => \Mux18~7_combout\,
	combout => \Mux18~8_combout\);

-- Location: LCCOMB_X27_Y15_N6
\Mux18~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (\Mux11~1_combout\ & ((\Mux18~6_combout\ & ((\Mux18~8_combout\))) # (!\Mux18~6_combout\ & (\Mux18~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mux18~6_combout\,
	datad => \Mux18~8_combout\,
	combout => \Mux18~9_combout\);

-- Location: LCCOMB_X24_Y16_N10
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Mux17~9_combout\ & ((\Mux5~6_combout\ & (!\Add1~9\)) # (!\Mux5~6_combout\ & ((\Add1~9\) # (GND))))) # (!\Mux17~9_combout\ & ((\Mux5~6_combout\ & (\Add1~9\ & VCC)) # (!\Mux5~6_combout\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\Mux17~9_combout\ & ((!\Add1~9\) # (!\Mux5~6_combout\))) # (!\Mux17~9_combout\ & (!\Mux5~6_combout\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~9_combout\,
	datab => \Mux5~6_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X26_Y15_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) = LCELL((\Mux22~9_combout\ & ((\Mux5~6_combout\ $ (\Mux21~9_combout\)))) # (!\Mux22~9_combout\ & (!\Mux6~6_combout\ & ((\Mux21~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~9_combout\,
	datab => \Mux6~6_combout\,
	datac => \Mux5~6_combout\,
	datad => \Mux21~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5));

-- Location: LCCOMB_X23_Y15_N10
\regs[14][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[14][3]~feeder_combout\ = \Add2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~6_combout\,
	combout => \regs[14][3]~feeder_combout\);

-- Location: FF_X23_Y15_N11
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
	ena => \regs[14][7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][3]~q\);

-- Location: LCCOMB_X24_Y17_N0
\Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux2~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\ & ((\regs[14][3]~q\))) # (!\Mux1~1_combout\ & (\regs[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][3]~q\,
	datab => \regs[14][3]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X26_Y17_N20
\Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux2~1_combout\ & ((\Mux7~2_combout\ & (\regs[15][3]~q\)) # (!\Mux7~2_combout\ & ((\regs[13][3]~q\))))) # (!\Mux2~1_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][3]~q\,
	datab => \regs[13][3]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X23_Y14_N18
\Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux1~1_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\regs[1][3]~q\)) # (!\Mux2~1_combout\ & ((\regs[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][3]~q\,
	datab => \regs[0][3]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux1~1_combout\ & ((\Mux7~4_combout\ & (\regs[3][3]~q\)) # (!\Mux7~4_combout\ & ((\regs[2][3]~q\))))) # (!\Mux1~1_combout\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][3]~q\,
	datab => \Mux1~1_combout\,
	datac => \regs[2][3]~q\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X24_Y15_N6
\Mux7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux153~0_combout\ & ((\Mux0~0_combout\ & (\Mux7~3_combout\)) # (!\Mux0~0_combout\ & ((\Mux7~5_combout\))))) # (!\Mux153~0_combout\ & (((\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X26_Y16_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) = LCELL((\Mux22~9_combout\ & (\Mux6~6_combout\ $ (((\Mux21~9_combout\))))) # (!\Mux22~9_combout\ & (((!\Mux7~6_combout\ & \Mux21~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \Mux22~9_combout\,
	datac => \Mux7~6_combout\,
	datad => \Mux21~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4));

-- Location: LCCOMB_X26_Y15_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\);

-- Location: LCCOMB_X25_Y15_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\);

-- Location: LCCOMB_X27_Y14_N18
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Mux5~6_combout\ & ((\Mux17~9_combout\ & (\Add0~9\ & VCC)) # (!\Mux17~9_combout\ & (!\Add0~9\)))) # (!\Mux5~6_combout\ & ((\Mux17~9_combout\ & (!\Add0~9\)) # (!\Mux17~9_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\Mux5~6_combout\ & (!\Mux17~9_combout\ & !\Add0~9\)) # (!\Mux5~6_combout\ & ((!\Add0~9\) # (!\Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \Mux17~9_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X24_Y13_N2
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux154~1_combout\ & (\Mux155~1_combout\ & ((\Add0~10_combout\)))) # (!\Mux154~1_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\)) # (!\Mux155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	datad => \Add0~10_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux155~1_combout\ & (((\Mux27~0_combout\)))) # (!\Mux155~1_combout\ & ((\Mux27~0_combout\ & ((\Add1~10_combout\))) # (!\Mux27~0_combout\ & (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux155~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \Add1~10_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: FF_X23_Y13_N13
\regs[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux27~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][5]~q\);

-- Location: LCCOMB_X23_Y13_N12
\Mux17~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\Mux12~2_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux14~1_combout\ & (\regs[11][5]~q\)) # (!\Mux14~1_combout\ & ((\regs[10][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][5]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[10][5]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X23_Y13_N10
\Mux17~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\Mux12~2_combout\ & ((\Mux17~7_combout\ & (\regs[15][5]~q\)) # (!\Mux17~7_combout\ & ((\regs[14][5]~q\))))) # (!\Mux12~2_combout\ & (((\Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][5]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[14][5]~q\,
	datad => \Mux17~7_combout\,
	combout => \Mux17~8_combout\);

-- Location: FF_X26_Y15_N1
\regs[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][5]~q\);

-- Location: FF_X26_Y15_N23
\regs[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][5]~q\);

-- Location: LCCOMB_X26_Y15_N22
\Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux12~2_combout\ & (((\regs[6][5]~q\) # (\Mux14~1_combout\)))) # (!\Mux12~2_combout\ & (\regs[2][5]~q\ & ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][5]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[6][5]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X26_Y15_N0
\Mux17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux14~1_combout\ & ((\Mux17~2_combout\ & ((\regs[7][5]~q\))) # (!\Mux17~2_combout\ & (\regs[3][5]~q\)))) # (!\Mux14~1_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[3][5]~q\,
	datac => \regs[7][5]~q\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: FF_X26_Y17_N31
\regs[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][5]~q\);

-- Location: FF_X25_Y16_N19
\regs[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][5]~q\);

-- Location: LCCOMB_X25_Y16_N18
\Mux17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux12~2_combout\ & (((\regs[4][5]~q\) # (\Mux14~1_combout\)))) # (!\Mux12~2_combout\ & (\regs[0][5]~q\ & ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \regs[0][5]~q\,
	datac => \regs[4][5]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X26_Y17_N30
\Mux17~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux14~1_combout\ & ((\Mux17~4_combout\ & ((\regs[5][5]~q\))) # (!\Mux17~4_combout\ & (\regs[1][5]~q\)))) # (!\Mux14~1_combout\ & (((\Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][5]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[5][5]~q\,
	datad => \Mux17~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X26_Y15_N2
\Mux17~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux13~1_combout\ & ((\Mux17~3_combout\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((!\Mux11~1_combout\ & \Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux17~3_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux17~5_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X26_Y15_N16
\Mux17~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\Mux11~1_combout\ & ((\Mux17~6_combout\ & ((\Mux17~8_combout\))) # (!\Mux17~6_combout\ & (\Mux17~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux17~8_combout\,
	datad => \Mux17~6_combout\,
	combout => \Mux17~9_combout\);

-- Location: LCCOMB_X27_Y14_N20
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Mux16~9_combout\ $ (\Mux4~6_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Mux16~9_combout\ & ((\Mux4~6_combout\) # (!\Add0~11\))) # (!\Mux16~9_combout\ & (\Mux4~6_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~9_combout\,
	datab => \Mux4~6_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X26_Y14_N26
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux154~1_combout\ & ((\Mux155~1_combout\ & (\Add0~12_combout\)) # (!\Mux155~1_combout\ & ((\Mux0~1_combout\))))) # (!\Mux154~1_combout\ & (!\Mux155~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Mux155~1_combout\,
	datac => \Add0~12_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X24_Y16_N12
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Mux16~9_combout\ $ (\Mux4~6_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Mux16~9_combout\ & (\Mux4~6_combout\ & !\Add1~11\)) # (!\Mux16~9_combout\ & ((\Mux4~6_combout\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~9_combout\,
	datab => \Mux4~6_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X27_Y15_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ = (\Mux19~9_combout\) # ((\Mux21~9_combout\ & \Mux20~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~9_combout\,
	datac => \Mux21~9_combout\,
	datad => \Mux20~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\);

-- Location: LCCOMB_X27_Y15_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ = \Mux17~9_combout\ $ (((\Mux18~9_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~9_combout\,
	datac => \Mux17~9_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\);

-- Location: LCCOMB_X27_Y15_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ = \Mux18~9_combout\ $ (((\Mux19~9_combout\) # ((\Mux20~9_combout\ & \Mux21~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~9_combout\,
	datab => \Mux20~9_combout\,
	datac => \Mux21~9_combout\,
	datad => \Mux18~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mux8~6_combout\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (((!\Mux9~6_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux9~6_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2));

-- Location: LCCOMB_X26_Y15_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & ((\Mux9~6_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (!\Mux10~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux9~6_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1));

-- Location: LCCOMB_X25_Y15_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\);

-- Location: LCCOMB_X25_Y15_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\);

-- Location: LCCOMB_X25_Y13_N14
\Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux154~1_combout\ & (\Mux26~0_combout\)) # (!\Mux154~1_combout\ & ((\Mux26~0_combout\ & (\Add1~12_combout\)) # (!\Mux26~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Mux26~0_combout\,
	datac => \Add1~12_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X25_Y13_N8
\regs[2][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[2][6]~feeder_combout\ = \Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux26~1_combout\,
	combout => \regs[2][6]~feeder_combout\);

-- Location: FF_X25_Y13_N9
\regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[2][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][6]~q\);

-- Location: LCCOMB_X24_Y13_N26
\regs[0][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][6]~feeder_combout\ = \Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux26~1_combout\,
	combout => \regs[0][6]~feeder_combout\);

-- Location: FF_X24_Y13_N27
\regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[0][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[0][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][6]~q\);

-- Location: LCCOMB_X26_Y13_N30
\Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux1~1_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\regs[1][6]~q\)) # (!\Mux2~1_combout\ & ((\regs[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][6]~q\,
	datab => \Mux1~1_combout\,
	datac => \regs[0][6]~q\,
	datad => \Mux2~1_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X26_Y13_N16
\Mux4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux1~1_combout\ & ((\Mux4~4_combout\ & (\regs[3][6]~q\)) # (!\Mux4~4_combout\ & ((\regs[2][6]~q\))))) # (!\Mux1~1_combout\ & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][6]~q\,
	datab => \regs[2][6]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X23_Y15_N24
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Mux4~6_combout\ & (\Add2~11\ $ (GND))) # (!\Mux4~6_combout\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\Mux4~6_combout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~6_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X26_Y17_N4
\regs[13][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[13][6]~feeder_combout\ = \Add2~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	combout => \regs[13][6]~feeder_combout\);

-- Location: FF_X26_Y17_N5
\regs[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[13][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[13][7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][6]~q\);

-- Location: FF_X23_Y15_N7
\regs[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][6]~q\);

-- Location: FF_X23_Y15_N1
\regs[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][6]~q\);

-- Location: LCCOMB_X23_Y15_N0
\Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux1~1_combout\ & (((\regs[14][6]~q\) # (\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & (\regs[12][6]~q\ & ((!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][6]~q\,
	datab => \Mux1~1_combout\,
	datac => \regs[14][6]~q\,
	datad => \Mux2~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X26_Y17_N22
\Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux2~1_combout\ & ((\Mux4~2_combout\ & ((\regs[15][6]~q\))) # (!\Mux4~2_combout\ & (\regs[13][6]~q\)))) # (!\Mux2~1_combout\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[13][6]~q\,
	datac => \regs[15][6]~q\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X25_Y17_N6
\Mux4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux153~0_combout\ & ((\Mux0~0_combout\ & ((\Mux4~3_combout\))) # (!\Mux0~0_combout\ & (\Mux4~5_combout\)))) # (!\Mux153~0_combout\ & (((\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X23_Y15_N26
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (\Mux3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~6_combout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: FF_X23_Y15_N9
\regs[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][7]~q\);

-- Location: FF_X24_Y17_N11
\regs[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux25~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][7]~q\);

-- Location: LCCOMB_X24_Y17_N10
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux13~1_combout\ & ((\regs[10][7]~q\) # ((\Mux12~2_combout\)))) # (!\Mux13~1_combout\ & (((\regs[8][7]~q\ & !\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][7]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[8][7]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X23_Y15_N8
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux12~2_combout\ & ((\Mux15~0_combout\ & ((\regs[14][7]~q\))) # (!\Mux15~0_combout\ & (\regs[12][7]~q\)))) # (!\Mux12~2_combout\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][7]~q\,
	datab => \Mux12~2_combout\,
	datac => \regs[14][7]~q\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X25_Y16_N28
\regs[4][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[4][7]~feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~14_combout\,
	combout => \regs[4][7]~feeder_combout\);

-- Location: FF_X25_Y16_N29
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
	ena => \regs[4][4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][7]~q\);

-- Location: FF_X26_Y14_N15
\regs[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][7]~q\);

-- Location: FF_X25_Y17_N31
\regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux25~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][7]~q\);

-- Location: LCCOMB_X25_Y17_N14
\Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux12~2_combout\ & (\Mux13~1_combout\)) # (!\Mux12~2_combout\ & ((\Mux13~1_combout\ & ((\regs[2][7]~q\))) # (!\Mux13~1_combout\ & (\regs[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux13~1_combout\,
	datac => \regs[0][7]~q\,
	datad => \regs[2][7]~q\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X26_Y14_N14
\Mux15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux12~2_combout\ & ((\Mux15~4_combout\ & ((\regs[6][7]~q\))) # (!\Mux15~4_combout\ & (\regs[4][7]~q\)))) # (!\Mux12~2_combout\ & (((\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \regs[4][7]~q\,
	datac => \regs[6][7]~q\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: FF_X27_Y15_N1
\regs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][7]~q\);

-- Location: LCCOMB_X26_Y17_N14
\regs[5][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[5][7]~feeder_combout\ = \Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add2~14_combout\,
	combout => \regs[5][7]~feeder_combout\);

-- Location: FF_X26_Y17_N15
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
	ena => \regs[5][5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][7]~q\);

-- Location: LCCOMB_X27_Y15_N0
\Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux15~2_combout\ & (((\regs[7][7]~q\)) # (!\Mux12~2_combout\))) # (!\Mux15~2_combout\ & (\Mux12~2_combout\ & ((\regs[5][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Mux12~2_combout\,
	datac => \regs[7][7]~q\,
	datad => \regs[5][7]~q\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X26_Y14_N28
\Mux15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux14~1_combout\ & (((\Mux11~1_combout\) # (\Mux15~3_combout\)))) # (!\Mux14~1_combout\ & (\Mux15~5_combout\ & (!\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux15~5_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X25_Y14_N6
\Mux15~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\Mux11~1_combout\ & ((\Mux15~6_combout\ & (\Mux15~8_combout\)) # (!\Mux15~6_combout\ & ((\Mux15~1_combout\))))) # (!\Mux11~1_combout\ & (((\Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~8_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux15~6_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X24_Y16_N14
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Mux3~6_combout\ $ (\Add1~13\ $ (!\Mux15~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~6_combout\,
	datad => \Mux15~9_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X29_Y15_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (\Mux7~6_combout\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\ & (((!\Mux8~6_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3));

-- Location: LCCOMB_X26_Y15_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) = LCELL((\Mux22~9_combout\ & (\Mux21~9_combout\ $ (((\Mux4~6_combout\))))) # (!\Mux22~9_combout\ & (\Mux21~9_combout\ & (!\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~9_combout\,
	datab => \Mux21~9_combout\,
	datac => \Mux5~6_combout\,
	datad => \Mux4~6_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6));

-- Location: LCCOMB_X26_Y15_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3),
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\);

-- Location: LCCOMB_X24_Y15_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) = LCELL((\Mux22~9_combout\ & ((\Mux21~9_combout\ $ (\Mux3~6_combout\)))) # (!\Mux22~9_combout\ & (!\Mux4~6_combout\ & (\Mux21~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux21~9_combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux22~9_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7));

-- Location: LCCOMB_X23_Y15_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mux5~6_combout\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (((!\Mux6~6_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \Mux6~6_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X24_Y15_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5),
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\);

-- Location: LCCOMB_X25_Y15_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\);

-- Location: LCCOMB_X25_Y15_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\);

-- Location: LCCOMB_X27_Y14_N22
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Mux3~6_combout\ $ (\Add0~13\ $ (\Mux15~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~6_combout\,
	datad => \Mux15~9_combout\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X25_Y15_N14
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux154~1_combout\ & (\Mux155~1_combout\ & ((\Add0~14_combout\)))) # (!\Mux154~1_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\)) # (!\Mux155~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~1_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\,
	datad => \Add0~14_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X25_Y15_N12
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux155~1_combout\ & (((\Mux25~0_combout\)))) # (!\Mux155~1_combout\ & ((\Mux25~0_combout\ & (\Add1~14_combout\)) # (!\Mux25~0_combout\ & ((\Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux155~1_combout\,
	datab => \Add1~14_combout\,
	datac => \Mux25~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X25_Y17_N20
\regs[2][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[2][7]~feeder_combout\ = \Mux25~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux25~1_combout\,
	combout => \regs[2][7]~feeder_combout\);

-- Location: FF_X25_Y17_N21
\regs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[2][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][7]~q\);

-- Location: LCCOMB_X25_Y17_N16
\Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux1~1_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\regs[1][7]~q\)) # (!\Mux2~1_combout\ & ((\regs[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][7]~q\,
	datab => \Mux1~1_combout\,
	datac => \regs[0][7]~q\,
	datad => \Mux2~1_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X25_Y17_N2
\Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux1~1_combout\ & ((\Mux3~4_combout\ & (\regs[3][7]~q\)) # (!\Mux3~4_combout\ & ((\regs[2][7]~q\))))) # (!\Mux1~1_combout\ & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][7]~q\,
	datab => \regs[2][7]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: FF_X27_Y17_N1
\regs[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][7]~q\);

-- Location: FF_X27_Y17_N7
\regs[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][7]~q\);

-- Location: LCCOMB_X27_Y17_N6
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux2~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\ & (\regs[14][7]~q\)) # (!\Mux1~1_combout\ & ((\regs[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[14][7]~q\,
	datac => \regs[12][7]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X27_Y17_N0
\Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux2~1_combout\ & ((\Mux3~2_combout\ & ((\regs[15][7]~q\))) # (!\Mux3~2_combout\ & (\regs[13][7]~q\)))) # (!\Mux2~1_combout\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][7]~q\,
	datab => \Mux2~1_combout\,
	datac => \regs[15][7]~q\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X25_Y17_N4
\Mux3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux153~0_combout\ & ((\Mux0~0_combout\ & ((\Mux3~3_combout\))) # (!\Mux0~0_combout\ & (\Mux3~5_combout\)))) # (!\Mux153~0_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux3~5_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~6_combout\);

-- Location: FF_X24_Y14_N21
\regs[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux26~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][6]~q\);

-- Location: LCCOMB_X25_Y14_N20
\regs[9][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[9][6]~feeder_combout\ = \Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux26~1_combout\,
	combout => \regs[9][6]~feeder_combout\);

-- Location: FF_X25_Y14_N21
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
	ena => \regs[9][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][6]~q\);

-- Location: LCCOMB_X25_Y13_N12
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & ((\regs[9][6]~q\))) # (!\Mux14~1_combout\ & (\regs[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[8][6]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[9][6]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X25_Y13_N22
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux13~1_combout\ & ((\Mux16~0_combout\ & ((\regs[11][6]~q\))) # (!\Mux16~0_combout\ & (\regs[10][6]~q\)))) # (!\Mux13~1_combout\ & (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][6]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[11][6]~q\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X25_Y13_N18
\regs[3][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[3][6]~feeder_combout\ = \Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux26~1_combout\,
	combout => \regs[3][6]~feeder_combout\);

-- Location: FF_X25_Y13_N19
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
	ena => \regs[3][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][6]~q\);

-- Location: LCCOMB_X26_Y13_N4
\regs[1][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[1][6]~feeder_combout\ = \Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux26~1_combout\,
	combout => \regs[1][6]~feeder_combout\);

-- Location: FF_X26_Y13_N5
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
	ena => \regs[1][1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][6]~q\);

-- Location: LCCOMB_X24_Y13_N20
\Mux16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux14~1_combout\ & (((\regs[1][6]~q\) # (\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (\regs[0][6]~q\ & ((!\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][6]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[1][6]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X25_Y13_N4
\Mux16~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux13~1_combout\ & ((\Mux16~4_combout\ & ((\regs[3][6]~q\))) # (!\Mux16~4_combout\ & (\regs[2][6]~q\)))) # (!\Mux13~1_combout\ & (((\Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][6]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[3][6]~q\,
	datad => \Mux16~4_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X26_Y14_N30
\Mux16~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux11~1_combout\ & (((\Mux12~2_combout\)))) # (!\Mux11~1_combout\ & ((\Mux12~2_combout\ & (\Mux16~3_combout\)) # (!\Mux12~2_combout\ & ((\Mux16~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~2_combout\,
	datad => \Mux16~5_combout\,
	combout => \Mux16~6_combout\);

-- Location: FF_X27_Y17_N5
\regs[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Add2~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][6]~q\);

-- Location: LCCOMB_X27_Y17_N4
\Mux16~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux14~1_combout\ & ((\regs[13][6]~q\) # ((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (((\regs[12][6]~q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[13][6]~q\,
	datac => \regs[12][6]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X23_Y15_N6
\Mux16~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\Mux13~1_combout\ & ((\Mux16~7_combout\ & ((\regs[15][6]~q\))) # (!\Mux16~7_combout\ & (\regs[14][6]~q\)))) # (!\Mux13~1_combout\ & (((\Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[14][6]~q\,
	datac => \regs[15][6]~q\,
	datad => \Mux16~7_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X26_Y14_N0
\Mux16~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\Mux11~1_combout\ & ((\Mux16~6_combout\ & ((\Mux16~8_combout\))) # (!\Mux16~6_combout\ & (\Mux16~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux16~1_combout\,
	datac => \Mux16~6_combout\,
	datad => \Mux16~8_combout\,
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X25_Y17_N8
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Mux4~6_combout\ & (\Mux16~9_combout\ & (\Mux3~6_combout\ $ (!\Mux15~9_combout\)))) # (!\Mux4~6_combout\ & (!\Mux16~9_combout\ & (\Mux3~6_combout\ $ (!\Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux3~6_combout\,
	datac => \Mux16~9_combout\,
	datad => \Mux15~9_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X25_Y17_N10
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Mux6~6_combout\ & (\Mux18~9_combout\ & (\Mux5~6_combout\ $ (!\Mux17~9_combout\)))) # (!\Mux6~6_combout\ & (!\Mux18~9_combout\ & (\Mux5~6_combout\ $ (!\Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \Mux5~6_combout\,
	datac => \Mux18~9_combout\,
	datad => \Mux17~9_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X25_Y17_N22
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X25_Y17_N0
\Add3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~11_combout\ = (\Add3~29_combout\) # ((\Mux14~1_combout\) # (\Mux155~1_combout\ $ (\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux155~1_combout\,
	datab => \Add3~29_combout\,
	datac => \Equal0~4_combout\,
	datad => \Mux14~1_combout\,
	combout => \Add3~11_combout\);

-- Location: LCCOMB_X22_Y17_N28
\PC~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~20_combout\ = (\PC[5]~12_combout\ & (((\Add3~12_combout\)))) # (!\PC[5]~12_combout\ & (((!\Mux14~0_combout\)) # (!\Mux153~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux14~0_combout\,
	datac => \PC[5]~12_combout\,
	datad => \Add3~12_combout\,
	combout => \PC~20_combout\);

-- Location: FF_X22_Y17_N29
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X27_Y16_N18
\Mux154~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = (!PC(2) & ((PC(0) & ((!PC(3)))) # (!PC(0) & (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(0),
	datac => PC(1),
	datad => PC(3),
	combout => \Mux154~0_combout\);

-- Location: LCCOMB_X27_Y16_N20
\Mux154~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux154~1_combout\ = (\Mux153~0_combout\ & \Mux154~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux153~0_combout\,
	datad => \Mux154~0_combout\,
	combout => \Mux154~1_combout\);

-- Location: LCCOMB_X24_Y17_N16
\PC~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~14_combout\ = (\Mux11~1_combout\) # ((\Mux155~1_combout\) # ((!\Mux153~2_combout\) # (!\Mux154~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mux154~1_combout\,
	datad => \Mux153~2_combout\,
	combout => \PC~14_combout\);

-- Location: LCCOMB_X23_Y17_N22
\PC~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~15_combout\ = (\Add3~18_combout\ & ((\PC~14_combout\) # (\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC~14_combout\,
	datac => \Add3~18_combout\,
	datad => \Equal0~4_combout\,
	combout => \PC~15_combout\);

-- Location: FF_X23_Y17_N23
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X24_Y17_N20
\Mux155~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux155~0_combout\ = (PC(1) & ((PC(3)) # ((PC(0))))) # (!PC(1) & ((PC(2)) # ((PC(3) & PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(3),
	datac => PC(0),
	datad => PC(2),
	combout => \Mux155~0_combout\);

-- Location: LCCOMB_X25_Y17_N30
\Mux155~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux155~1_combout\ = (\Mux155~0_combout\) # (!\Mux153~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datad => \Mux155~0_combout\,
	combout => \Mux155~1_combout\);

-- Location: LCCOMB_X24_Y17_N18
\PC[5]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[5]~12_combout\ = (\Equal0~4_combout\) # ((\Mux155~1_combout\) # ((!\desvio~0_combout\) # (!\Mux154~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Mux155~1_combout\,
	datac => \Mux154~1_combout\,
	datad => \desvio~0_combout\,
	combout => \PC[5]~12_combout\);

-- Location: LCCOMB_X23_Y17_N28
\PC~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~13_combout\ = (\PC[5]~12_combout\ & ((\Add3~16_combout\))) # (!\PC[5]~12_combout\ & (\Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datac => \PC[5]~12_combout\,
	datad => \Add3~16_combout\,
	combout => \PC~13_combout\);

-- Location: FF_X23_Y17_N29
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X23_Y17_N12
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (PC(3) & ((PC(2)) # ((PC(1) & PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Add3~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = \Add3~25\ $ (PC(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PC(7),
	cin => \Add3~25\,
	combout => \Add3~26_combout\);

-- Location: LCCOMB_X23_Y17_N14
\PC~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~17_combout\ = (\PC[5]~12_combout\ & (((\Add3~26_combout\)))) # (!\PC[5]~12_combout\ & (((\Mux0~0_combout\)) # (!\Mux153~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \PC[5]~12_combout\,
	datad => \Add3~26_combout\,
	combout => \PC~17_combout\);

-- Location: FF_X23_Y17_N15
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X23_Y17_N4
\PC~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~16_combout\ = (\PC[5]~12_combout\ & (((\Add3~20_combout\)))) # (!\PC[5]~12_combout\ & (((!\Mux2~0_combout\)) # (!\Mux153~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \PC[5]~12_combout\,
	datad => \Add3~20_combout\,
	combout => \PC~16_combout\);

-- Location: FF_X23_Y17_N5
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X23_Y17_N20
\Mux153~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux153~0_combout\ = (!PC(6) & (!PC(7) & (!PC(4) & !PC(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datab => PC(7),
	datac => PC(4),
	datad => PC(5),
	combout => \Mux153~0_combout\);

-- Location: LCCOMB_X27_Y16_N22
\Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux2~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\ & ((\regs[14][0]~q\))) # (!\Mux1~1_combout\ & (\regs[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][0]~q\,
	datab => \regs[14][0]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X27_Y16_N8
\Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & ((\regs[15][0]~q\) # ((!\Mux2~1_combout\)))) # (!\Mux10~2_combout\ & (((\regs[13][0]~q\ & \Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][0]~q\,
	datab => \regs[13][0]~q\,
	datac => \Mux10~2_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X27_Y16_N14
\regs[2][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[2][0]~feeder_combout\ = \Mux32~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~1_combout\,
	combout => \regs[2][0]~feeder_combout\);

-- Location: FF_X27_Y16_N15
\regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[2][3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][0]~q\);

-- Location: LCCOMB_X24_Y16_N26
\Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux2~1_combout\ & ((\regs[1][0]~q\) # ((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (((\regs[0][0]~q\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][0]~q\,
	datab => \regs[0][0]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X27_Y16_N28
\Mux10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux1~1_combout\ & ((\Mux10~4_combout\ & (\regs[3][0]~q\)) # (!\Mux10~4_combout\ & ((\regs[2][0]~q\))))) # (!\Mux1~1_combout\ & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][0]~q\,
	datab => \regs[2][0]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X27_Y16_N2
\Mux10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux153~0_combout\ & ((\Mux0~0_combout\ & (\Mux10~3_combout\)) # (!\Mux0~0_combout\ & ((\Mux10~5_combout\))))) # (!\Mux153~0_combout\ & (((\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux10~3_combout\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~6_combout\);

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


