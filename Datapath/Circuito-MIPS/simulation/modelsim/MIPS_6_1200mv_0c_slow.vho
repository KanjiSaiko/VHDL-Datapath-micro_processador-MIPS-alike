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

-- DATE "11/25/2024 17:27:54"

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
	Reg_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END MIPS;

-- Design Ports Information
-- Reg_out[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg_out[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg_out[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg_out[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg_out[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg_out[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg_out[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg_out[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_Reg_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \regs[2][4]~q\ : std_logic;
SIGNAL \regs[1][5]~q\ : std_logic;
SIGNAL \regs[2][5]~q\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \regs[2][4]~feeder_combout\ : std_logic;
SIGNAL \Reg_out[0]~output_o\ : std_logic;
SIGNAL \Reg_out[1]~output_o\ : std_logic;
SIGNAL \Reg_out[2]~output_o\ : std_logic;
SIGNAL \Reg_out[3]~output_o\ : std_logic;
SIGNAL \Reg_out[4]~output_o\ : std_logic;
SIGNAL \Reg_out[5]~output_o\ : std_logic;
SIGNAL \Reg_out[6]~output_o\ : std_logic;
SIGNAL \Reg_out[7]~output_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ : std_logic;
SIGNAL \Mux160~0_combout\ : std_logic;
SIGNAL \Mux160~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \PC~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux159~0_combout\ : std_logic;
SIGNAL \regs[0][5]~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \regs[3][2]~4_combout\ : std_logic;
SIGNAL \regs[3][4]~q\ : std_logic;
SIGNAL \Mux162~0_combout\ : std_logic;
SIGNAL \Mux162~1_combout\ : std_logic;
SIGNAL \regs[1][5]~2_combout\ : std_logic;
SIGNAL \regs[1][4]~q\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \regs[3][1]~q\ : std_logic;
SIGNAL \regs[0][5]~3_combout\ : std_logic;
SIGNAL \regs[0][1]~q\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \regs[1][1]~q\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \regs[3][0]~feeder_combout\ : std_logic;
SIGNAL \regs[3][0]~q\ : std_logic;
SIGNAL \regs[2][5]~1_combout\ : std_logic;
SIGNAL \regs[2][0]~q\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \regs[0][0]~q\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \regs[1][0]~q\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \regs[2][1]~q\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \regs[0][2]~q\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \regs[3][2]~q\ : std_logic;
SIGNAL \regs[1][2]~q\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \PC~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \regs[2][3]~q\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \regs[0][3]~q\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \regs[1][3]~q\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \regs[0][4]~q\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \regs[3][5]~q\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \regs[3][3]~q\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \regs[0][5]~q\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \desvio~1_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \PC~5_combout\ : std_logic;
SIGNAL \Mux158~0_combout\ : std_logic;
SIGNAL \Mux158~1_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \PC~4_combout\ : std_logic;
SIGNAL \Mux157~0_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \PC~6_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \PC~7_combout\ : std_logic;
SIGNAL \Mux161~0_combout\ : std_logic;
SIGNAL \Mux161~1_combout\ : std_logic;
SIGNAL \desvio~0_combout\ : std_logic;
SIGNAL \PC~0_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \PC~1_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \PC~3_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \regs[2][2]~q\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \regs[3][6]~q\ : std_logic;
SIGNAL \regs[1][6]~q\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \regs[0][6]~q\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \regs[2][6]~q\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \regs[0][7]~q\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \regs[2][7]~q\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \regs[3][7]~q\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \regs[1][7]~q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL PC : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
Reg_out <= ww_Reg_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: LCCOMB_X20_Y21_N10
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mux17~4_combout\ & (\Mux9~1_combout\ $ (VCC))) # (!\Mux17~4_combout\ & (\Mux9~1_combout\ & VCC))
-- \Add0~1\ = CARRY((\Mux17~4_combout\ & \Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux9~1_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y22_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~3\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~5\);

-- Location: LCCOMB_X18_Y22_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (GND)))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\ = CARRY((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~1\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~3\);

-- Location: LCCOMB_X19_Y22_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2),
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\);

-- Location: LCCOMB_X17_Y22_N26
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Mux3~1_combout\ $ (\Mux11~4_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Mux3~1_combout\ & ((!\Add1~11\) # (!\Mux11~4_combout\))) # (!\Mux3~1_combout\ & (!\Mux11~4_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux11~4_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X17_Y22_N28
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Mux10~4_combout\ $ (\Mux2~1_combout\ $ (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \Mux2~1_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: FF_X20_Y24_N21
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
	ena => \regs[2][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][4]~q\);

-- Location: FF_X19_Y24_N21
\regs[1][5]\ : dffeas
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
	ena => \regs[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][5]~q\);

-- Location: FF_X18_Y23_N23
\regs[2][5]\ : dffeas
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
	ena => \regs[2][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][5]~q\);

-- Location: LCCOMB_X18_Y23_N22
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux12~2_combout\ & (\regs[2][5]~q\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~2_combout\,
	datac => \regs[2][5]~q\,
	datad => \Mux18~2_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X20_Y21_N4
\Mux36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\Mux161~1_combout\ & (\Mux160~1_combout\ & ((\Add0~0_combout\)))) # (!\Mux161~1_combout\ & (((\Mux162~1_combout\)) # (!\Mux160~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux161~1_combout\,
	datab => \Mux160~1_combout\,
	datac => \Mux162~1_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X20_Y22_N22
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux1~1_combout\ & (((\Mux0~1_combout\)))) # (!\Mux1~1_combout\ & ((\Mux0~1_combout\ & ((\Mux22~0_combout\))) # (!\Mux0~1_combout\ & (\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux22~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X20_Y22_N6
\Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux158~1_combout\ & (((!\Mux162~1_combout\)))) # (!\Mux158~1_combout\ & ((\Mux162~1_combout\ & (\Mux21~0_combout\)) # (!\Mux162~1_combout\ & ((\Mux21~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux21~2_combout\,
	datac => \Mux158~1_combout\,
	datad => \Mux162~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X20_Y22_N18
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = \Mux2~1_combout\ $ (((!\Mux10~3_combout\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \Mux10~3_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X19_Y23_N22
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Mux3~1_combout\ $ (((!\Mux11~3_combout\) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \Mux11~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X19_Y21_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mux16~3_combout\ $ (((\Mux9~1_combout\ & \Mux17~3_combout\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mux17~3_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0));

-- Location: LCCOMB_X19_Y21_N0
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0) = LCELL(\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (((\Mux9~1_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(0));

-- Location: LCCOMB_X18_Y22_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3) = LCELL((\Mux17~4_combout\ & (\Mux6~1_combout\ $ (((\Mux16~4_combout\))))) # (!\Mux17~4_combout\ & (((!\Mux7~1_combout\ & \Mux16~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(3));

-- Location: LCCOMB_X19_Y23_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\Mux8~1_combout\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (((!\Mux9~1_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(1));

-- Location: LCCOMB_X19_Y23_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & ((\Mux7~1_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (!\Mux8~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux7~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(2));

-- Location: LCCOMB_X18_Y22_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5) = LCELL((\Mux17~4_combout\ & ((\Mux4~1_combout\ $ (\Mux16~4_combout\)))) # (!\Mux17~4_combout\ & (!\Mux5~1_combout\ & ((\Mux16~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(5));

-- Location: LCCOMB_X19_Y23_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & ((\Mux6~1_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (!\Mux7~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(3));

-- Location: LCCOMB_X17_Y23_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ $ (((\Mux5~1_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (!\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux5~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(4));

-- Location: LCCOMB_X17_Y23_N8
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\ & (\Mux7~1_combout\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\ & (((!\Mux8~1_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux8~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(2));

-- Location: LCCOMB_X20_Y23_N30
\Add2~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (\desvio~1_combout\ & (((PC(4)) # (!\Mux12~2_combout\)) # (!\Mux158~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux158~0_combout\,
	datab => \Mux12~2_combout\,
	datac => PC(4),
	datad => \desvio~1_combout\,
	combout => \Add2~23_combout\);

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

-- Location: LCCOMB_X20_Y24_N20
\regs[2][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[2][4]~feeder_combout\ = \Mux32~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~1_combout\,
	combout => \regs[2][4]~feeder_combout\);

-- Location: IOOBUF_X20_Y31_N9
\Reg_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~5_combout\,
	devoe => ww_devoe,
	o => \Reg_out[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\Reg_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~5_combout\,
	devoe => ww_devoe,
	o => \Reg_out[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\Reg_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~5_combout\,
	devoe => ww_devoe,
	o => \Reg_out[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\Reg_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~5_combout\,
	devoe => ww_devoe,
	o => \Reg_out[3]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\Reg_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~5_combout\,
	devoe => ww_devoe,
	o => \Reg_out[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Reg_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~5_combout\,
	devoe => ww_devoe,
	o => \Reg_out[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\Reg_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~5_combout\,
	devoe => ww_devoe,
	o => \Reg_out[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\Reg_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~5_combout\,
	devoe => ww_devoe,
	o => \Reg_out[7]~output_o\);

-- Location: LCCOMB_X20_Y23_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ = (!PC(4) & (\Mux157~0_combout\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datac => \Mux157~0_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\);

-- Location: LCCOMB_X21_Y21_N0
\Mux160~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux160~0_combout\ = (!PC(3) & (!PC(2) & ((PC(0)) # (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(3),
	datac => PC(1),
	datad => PC(2),
	combout => \Mux160~0_combout\);

-- Location: LCCOMB_X21_Y21_N14
\Mux160~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux160~1_combout\ = (\Mux12~2_combout\ & (!PC(4) & \Mux160~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~2_combout\,
	datac => PC(4),
	datad => \Mux160~0_combout\,
	combout => \Mux160~1_combout\);

-- Location: LCCOMB_X20_Y22_N14
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (PC(3) & (((!PC(2) & !PC(1))))) # (!PC(3) & ((PC(0)) # (PC(2) $ (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(3),
	datad => PC(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X20_Y22_N0
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (PC(4)) # ((!\Mux12~2_combout\) # (!\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datac => \Mux1~0_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X20_Y23_N8
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (PC(0) & (\Add2~24_combout\ $ (VCC))) # (!PC(0) & (\Add2~24_combout\ & VCC))
-- \Add2~7\ = CARRY((PC(0) & \Add2~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => \Add2~24_combout\,
	datad => VCC,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X21_Y22_N10
\PC~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~8_combout\ = (\PC~0_combout\ & ((\Add2~6_combout\))) # (!\PC~0_combout\ & (\Mux162~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux162~1_combout\,
	datab => \PC~0_combout\,
	datac => \Add2~6_combout\,
	combout => \PC~8_combout\);

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

-- Location: FF_X21_Y22_N11
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X20_Y22_N26
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (PC(0) & ((PC(1) & (PC(3))) # (!PC(1) & ((PC(2)))))) # (!PC(0) & (PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(2),
	datac => PC(0),
	datad => PC(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X20_Y22_N8
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (PC(4)) # ((\Mux0~0_combout\) # (!\Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datac => \Mux0~0_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X21_Y22_N16
\Mux18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (PC(4)) # ((PC(3) & ((PC(2)) # (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(3),
	datac => PC(1),
	datad => PC(4),
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X19_Y24_N24
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\regs[2][4]~q\ & (\Mux12~2_combout\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][4]~q\,
	datac => \Mux12~2_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X20_Y23_N28
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (PC(2)) # ((PC(3)) # ((PC(0) & PC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(1),
	datad => PC(3),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X21_Y23_N8
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ((\Mux19~0_combout\) # (PC(4))) # (!\Mux12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux19~0_combout\,
	datad => PC(4),
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X21_Y21_N12
\Mux159~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux159~0_combout\ = (PC(0) & (!PC(3) & ((!PC(2)) # (!PC(1))))) # (!PC(0) & (!PC(2) & (PC(3) $ (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(3),
	datac => PC(1),
	datad => PC(2),
	combout => \Mux159~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\regs[0][5]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][5]~0_combout\ = (!PC(4) & (!\Mux18~2_combout\ & (\Mux12~2_combout\ & \Mux159~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \Mux18~2_combout\,
	datac => \Mux12~2_combout\,
	datad => \Mux159~0_combout\,
	combout => \regs[0][5]~0_combout\);

-- Location: LCCOMB_X22_Y22_N18
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (PC(2) & (((PC(0)) # (PC(3))))) # (!PC(2) & (PC(1) & ((PC(3)) # (!PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(1),
	datac => PC(0),
	datad => PC(3),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X22_Y22_N8
\Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (PC(4)) # ((\Mux20~0_combout\) # (!\Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \Mux20~0_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X17_Y23_N16
\regs[3][2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[3][2]~4_combout\ = (\Mux19~1_combout\ & (\regs[0][5]~0_combout\ & \Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux19~1_combout\,
	datac => \regs[0][5]~0_combout\,
	datad => \Mux20~1_combout\,
	combout => \regs[3][2]~4_combout\);

-- Location: FF_X19_Y24_N7
\regs[3][4]\ : dffeas
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
	ena => \regs[3][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][4]~q\);

-- Location: LCCOMB_X21_Y22_N26
\Mux162~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux162~0_combout\ = (PC(1) & (((PC(2) & !PC(3))))) # (!PC(1) & (!PC(0) & (!PC(2) & PC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(1),
	datac => PC(2),
	datad => PC(3),
	combout => \Mux162~0_combout\);

-- Location: LCCOMB_X21_Y22_N18
\Mux162~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux162~1_combout\ = (PC(4)) # ((!\Mux12~2_combout\) # (!\Mux162~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datac => \Mux162~0_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux162~1_combout\);

-- Location: LCCOMB_X17_Y23_N20
\regs[1][5]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[1][5]~2_combout\ = (!\Mux19~1_combout\ & (\regs[0][5]~0_combout\ & \Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux19~1_combout\,
	datac => \regs[0][5]~0_combout\,
	datad => \Mux20~1_combout\,
	combout => \regs[1][5]~2_combout\);

-- Location: FF_X19_Y24_N27
\regs[1][4]\ : dffeas
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
	ena => \regs[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][4]~q\);

-- Location: LCCOMB_X19_Y24_N26
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux12~2_combout\ & (\regs[1][4]~q\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datac => \regs[1][4]~q\,
	datad => \Mux18~2_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X19_Y24_N2
\Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux158~1_combout\ & (!\Mux162~1_combout\)) # (!\Mux158~1_combout\ & ((\Mux162~1_combout\ & (\Mux24~1_combout\)) # (!\Mux162~1_combout\ & ((\Mux24~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux158~1_combout\,
	datab => \Mux162~1_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X19_Y24_N6
\Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux12~4_combout\ & (((\Mux13~2_combout\)))) # (!\Mux12~4_combout\ & ((\Mux13~2_combout\ & (\Mux24~0_combout\)) # (!\Mux13~2_combout\ & ((\regs[3][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Mux24~0_combout\,
	datac => \regs[3][4]~q\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X19_Y24_N30
\Mux13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux157~0_combout\ & (!PC(4) & (\Mux12~2_combout\ & \Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux157~0_combout\,
	datab => PC(4),
	datac => \Mux12~2_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X21_Y22_N12
\Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux18~2_combout\ & ((PC(4)) # (!\Mux162~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datac => \Mux162~0_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X21_Y22_N14
\Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ((\Mux12~3_combout\) # ((\Mux158~0_combout\ & !PC(4)))) # (!\Mux12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux158~0_combout\,
	datac => PC(4),
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X17_Y22_N14
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Mux9~1_combout\ & ((GND) # (!\Mux17~4_combout\))) # (!\Mux9~1_combout\ & (\Mux17~4_combout\ $ (GND)))
-- \Add1~1\ = CARRY((\Mux9~1_combout\) # (!\Mux17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux17~4_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X18_Y23_N9
\regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][1]~q\);

-- Location: LCCOMB_X17_Y23_N2
\regs[0][5]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[0][5]~3_combout\ = (!\Mux19~1_combout\ & (\regs[0][5]~0_combout\ & !\Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux19~1_combout\,
	datac => \regs[0][5]~0_combout\,
	datad => \Mux20~1_combout\,
	combout => \regs[0][5]~3_combout\);

-- Location: FF_X17_Y22_N3
\regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][1]~q\);

-- Location: LCCOMB_X17_Y22_N0
\Mux27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\regs[0][1]~q\ & (\Mux12~2_combout\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[0][1]~q\,
	datac => \Mux12~2_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux27~2_combout\);

-- Location: FF_X17_Y22_N9
\regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][1]~q\);

-- Location: LCCOMB_X17_Y22_N8
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\Mux18~2_combout\ & (\regs[1][1]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datac => \regs[1][1]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X18_Y23_N18
\Mux16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux162~1_combout\ & (!\Mux158~1_combout\ & ((\Mux27~0_combout\)))) # (!\Mux162~1_combout\ & ((\Mux158~1_combout\) # ((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux162~1_combout\,
	datab => \Mux158~1_combout\,
	datac => \Mux27~2_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X18_Y23_N8
\Mux16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux12~4_combout\ & (((\Mux16~2_combout\)))) # (!\Mux12~4_combout\ & ((\Mux16~2_combout\ & (\Mux27~1_combout\)) # (!\Mux16~2_combout\ & ((\regs[3][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Mux27~1_combout\,
	datac => \regs[3][1]~q\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X18_Y22_N20
\Mux16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux12~2_combout\ & (!PC(4) & (\Mux157~0_combout\ & \Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => PC(4),
	datac => \Mux157~0_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X19_Y22_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & (\Mux16~4_combout\ $ (VCC))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & (\Mux16~4_combout\ & 
-- VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0) & \Mux16~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(0),
	datab => \Mux16~4_combout\,
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~1\);

-- Location: LCCOMB_X19_Y21_N30
\Mux36~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux36~0_combout\ & ((\Mux160~1_combout\) # ((\Add1~0_combout\)))) # (!\Mux36~0_combout\ & (!\Mux160~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => \Mux160~1_combout\,
	datac => \Add1~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~0_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X19_Y21_N22
\regs[3][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[3][0]~feeder_combout\ = \Mux36~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~1_combout\,
	combout => \regs[3][0]~feeder_combout\);

-- Location: FF_X19_Y21_N23
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
	ena => \regs[3][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][0]~q\);

-- Location: LCCOMB_X17_Y23_N6
\regs[2][5]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \regs[2][5]~1_combout\ = (\Mux19~1_combout\ & (\regs[0][5]~0_combout\ & !\Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux19~1_combout\,
	datac => \regs[0][5]~0_combout\,
	datad => \Mux20~1_combout\,
	combout => \regs[2][5]~1_combout\);

-- Location: FF_X19_Y21_N13
\regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][0]~q\);

-- Location: LCCOMB_X19_Y21_N12
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (!\Mux18~2_combout\ & (\regs[2][0]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datac => \regs[2][0]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux28~0_combout\);

-- Location: FF_X18_Y22_N29
\regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][0]~q\);

-- Location: LCCOMB_X18_Y22_N28
\Mux28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (!\Mux18~2_combout\ & (\regs[0][0]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datac => \regs[0][0]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux28~2_combout\);

-- Location: FF_X22_Y22_N13
\regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][0]~q\);

-- Location: LCCOMB_X22_Y22_N12
\Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (!\Mux18~2_combout\ & (\regs[1][0]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datac => \regs[1][0]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X18_Y22_N24
\Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux162~1_combout\ & (((\Mux28~1_combout\ & !\Mux158~1_combout\)))) # (!\Mux162~1_combout\ & ((\Mux28~2_combout\) # ((\Mux158~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux162~1_combout\,
	datab => \Mux28~2_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux158~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X18_Y22_N10
\Mux17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux12~4_combout\ & (((\Mux17~2_combout\)))) # (!\Mux12~4_combout\ & ((\Mux17~2_combout\ & ((\Mux28~0_combout\))) # (!\Mux17~2_combout\ & (\regs[3][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \regs[3][0]~q\,
	datac => \Mux28~0_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X18_Y22_N26
\Mux17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux12~2_combout\ & (!PC(4) & (\Mux157~0_combout\ & \Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => PC(4),
	datac => \Mux157~0_combout\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X17_Y22_N16
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mux16~4_combout\ & ((\Mux8~1_combout\ & (!\Add1~1\)) # (!\Mux8~1_combout\ & ((\Add1~1\) # (GND))))) # (!\Mux16~4_combout\ & ((\Mux8~1_combout\ & (\Add1~1\ & VCC)) # (!\Mux8~1_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\Mux16~4_combout\ & ((!\Add1~1\) # (!\Mux8~1_combout\))) # (!\Mux16~4_combout\ & (!\Mux8~1_combout\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux8~1_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X19_Y21_N6
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux0~1_combout\ & ((\Mux28~0_combout\) # ((\Mux1~1_combout\)))) # (!\Mux0~1_combout\ & (((\Mux28~2_combout\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux28~2_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X19_Y21_N4
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux1~1_combout\ & ((\Mux9~0_combout\ & ((\Mux28~4_combout\))) # (!\Mux9~0_combout\ & (\Mux28~1_combout\)))) # (!\Mux1~1_combout\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux28~4_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X20_Y21_N12
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mux8~1_combout\ & ((\Mux16~4_combout\ & (\Add0~1\ & VCC)) # (!\Mux16~4_combout\ & (!\Add0~1\)))) # (!\Mux8~1_combout\ & ((\Mux16~4_combout\ & (!\Add0~1\)) # (!\Mux16~4_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Mux8~1_combout\ & (!\Mux16~4_combout\ & !\Add0~1\)) # (!\Mux8~1_combout\ & ((!\Add0~1\) # (!\Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux16~4_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X20_Y21_N30
\Mux35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux161~1_combout\ & (\Mux160~1_combout\ & ((\Add0~2_combout\)))) # (!\Mux161~1_combout\ & (((\Mux158~1_combout\)) # (!\Mux160~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux161~1_combout\,
	datab => \Mux160~1_combout\,
	datac => \Mux158~1_combout\,
	datad => \Add0~2_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X19_Y21_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1) = LCELL((\Mux17~4_combout\ & ((\Mux8~1_combout\ $ (\Mux16~4_combout\)))) # (!\Mux17~4_combout\ & (!\Mux9~1_combout\ & ((\Mux16~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mux8~1_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(1));

-- Location: LCCOMB_X19_Y22_N16
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

-- Location: LCCOMB_X17_Y22_N4
\Mux35~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux160~1_combout\ & (((\Mux35~0_combout\)))) # (!\Mux160~1_combout\ & ((\Mux35~0_combout\ & (\Add1~2_combout\)) # (!\Mux35~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux160~1_combout\,
	datab => \Add1~2_combout\,
	datac => \Mux35~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~2_combout\,
	combout => \Mux35~1_combout\);

-- Location: FF_X18_Y22_N15
\regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][1]~q\);

-- Location: LCCOMB_X18_Y22_N14
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (!\Mux18~2_combout\ & (\regs[2][1]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datac => \regs[2][1]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X17_Y22_N2
\Mux27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux12~2_combout\ & (\regs[3][1]~q\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \regs[3][1]~q\,
	datad => \Mux18~2_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X17_Y22_N30
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux1~1_combout\ & ((\Mux27~0_combout\) # ((\Mux0~1_combout\)))) # (!\Mux1~1_combout\ & (((\Mux27~2_combout\ & !\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \Mux27~2_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X18_Y22_N16
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux0~1_combout\ & ((\Mux8~0_combout\ & ((\Mux27~4_combout\))) # (!\Mux8~0_combout\ & (\Mux27~1_combout\)))) # (!\Mux0~1_combout\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux27~1_combout\,
	datac => \Mux27~4_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X17_Y22_N18
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Mux7~1_combout\ $ (\Mux15~4_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Mux7~1_combout\ & ((!\Add1~3\) # (!\Mux15~4_combout\))) # (!\Mux7~1_combout\ & (!\Mux15~4_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux15~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X21_Y23_N0
\Mux26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (!\Mux18~2_combout\ & (\regs[3][2]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~2_combout\,
	datac => \regs[3][2]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux26~4_combout\);

-- Location: FF_X21_Y23_N17
\regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][2]~q\);

-- Location: LCCOMB_X21_Y23_N16
\Mux26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (!\Mux18~2_combout\ & (\regs[0][2]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~2_combout\,
	datac => \regs[0][2]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X21_Y23_N28
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux1~1_combout\ & (((\Mux0~1_combout\)))) # (!\Mux1~1_combout\ & ((\Mux0~1_combout\ & (\Mux26~0_combout\)) # (!\Mux0~1_combout\ & ((\Mux26~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux26~2_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y23_N14
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux1~1_combout\ & ((\Mux7~0_combout\ & ((\Mux26~4_combout\))) # (!\Mux7~0_combout\ & (\Mux26~1_combout\)))) # (!\Mux1~1_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux26~4_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X18_Y22_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) = LCELL((\Mux17~4_combout\ & ((\Mux7~1_combout\ $ (\Mux16~4_combout\)))) # (!\Mux17~4_combout\ & (!\Mux8~1_combout\ & ((\Mux16~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux8~1_combout\,
	datac => \Mux7~1_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2));

-- Location: LCCOMB_X19_Y22_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) $ (VCC))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2) & VCC))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~0_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~1\);

-- Location: LCCOMB_X19_Y22_N18
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

-- Location: LCCOMB_X20_Y21_N14
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mux7~1_combout\ $ (\Mux15~4_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mux7~1_combout\ & ((\Mux15~4_combout\) # (!\Add0~3\))) # (!\Mux7~1_combout\ & (\Mux15~4_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux15~4_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X20_Y21_N28
\Mux34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mux161~1_combout\ & ((\Mux160~1_combout\ & ((\Add0~4_combout\))) # (!\Mux160~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\)))) # (!\Mux161~1_combout\ & (!\Mux160~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux161~1_combout\,
	datab => \Mux160~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~4_combout\,
	datad => \Add0~4_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X20_Y21_N0
\Mux34~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux161~1_combout\ & (((\Mux34~0_combout\)))) # (!\Mux161~1_combout\ & ((\Mux34~0_combout\ & ((\Add1~4_combout\))) # (!\Mux34~0_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux161~1_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datac => \Add1~4_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: FF_X18_Y23_N11
\regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][2]~q\);

-- Location: FF_X20_Y21_N1
\regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux34~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][2]~q\);

-- Location: LCCOMB_X20_Y21_N2
\Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\regs[1][2]~q\ & (\Mux12~2_combout\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[1][2]~q\,
	datac => \Mux12~2_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X18_Y23_N6
\Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux162~1_combout\ & (!\Mux158~1_combout\ & ((\Mux26~1_combout\)))) # (!\Mux162~1_combout\ & ((\Mux158~1_combout\) # ((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux162~1_combout\,
	datab => \Mux158~1_combout\,
	datac => \Mux26~2_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X18_Y23_N10
\Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux12~4_combout\ & (((\Mux15~2_combout\)))) # (!\Mux12~4_combout\ & ((\Mux15~2_combout\ & (\Mux26~0_combout\)) # (!\Mux15~2_combout\ & ((\regs[3][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux12~4_combout\,
	datac => \regs[3][2]~q\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X19_Y23_N6
\Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux157~0_combout\ & (\Mux12~2_combout\ & (!PC(4) & \Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux157~0_combout\,
	datab => \Mux12~2_combout\,
	datac => PC(4),
	datad => \Mux15~3_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X17_Y22_N20
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Mux14~4_combout\ & ((\Mux6~1_combout\ & (!\Add1~5\)) # (!\Mux6~1_combout\ & ((\Add1~5\) # (GND))))) # (!\Mux14~4_combout\ & ((\Mux6~1_combout\ & (\Add1~5\ & VCC)) # (!\Mux6~1_combout\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\Mux14~4_combout\ & ((!\Add1~5\) # (!\Mux6~1_combout\))) # (!\Mux14~4_combout\ & (!\Mux6~1_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Mux6~1_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X20_Y23_N16
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (PC(4) & (\Add2~13\ $ (GND))) # (!PC(4) & (!\Add2~13\ & VCC))
-- \Add2~15\ = CARRY((PC(4) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X20_Y23_N18
\Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (PC(5) & (!\Add2~15\)) # (!PC(5) & ((\Add2~15\) # (GND)))
-- \Add2~17\ = CARRY((!\Add2~15\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X20_Y23_N20
\Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (PC(6) & (\Add2~17\ $ (GND))) # (!PC(6) & (!\Add2~17\ & VCC))
-- \Add2~19\ = CARRY((PC(6) & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X21_Y22_N30
\PC~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~2_combout\ = (\PC~0_combout\ & \Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC~0_combout\,
	datac => \Add2~18_combout\,
	combout => \PC~2_combout\);

-- Location: FF_X21_Y22_N31
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X20_Y23_N26
\Mux18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (PC(5)) # ((PC(6)) # ((PC(7)) # (\Mux18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datab => PC(6),
	datac => PC(7),
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X20_Y21_N16
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mux14~4_combout\ & ((\Mux6~1_combout\ & (\Add0~5\ & VCC)) # (!\Mux6~1_combout\ & (!\Add0~5\)))) # (!\Mux14~4_combout\ & ((\Mux6~1_combout\ & (!\Add0~5\)) # (!\Mux6~1_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Mux14~4_combout\ & (!\Mux6~1_combout\ & !\Add0~5\)) # (!\Mux14~4_combout\ & ((!\Add0~5\) # (!\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Mux6~1_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X20_Y21_N26
\Mux33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux161~1_combout\ & (\Mux160~1_combout\ & ((\Add0~6_combout\)))) # (!\Mux161~1_combout\ & (((\Mux18~3_combout\)) # (!\Mux160~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux161~1_combout\,
	datab => \Mux160~1_combout\,
	datac => \Mux18~3_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X19_Y22_N4
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

-- Location: LCCOMB_X19_Y22_N20
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

-- Location: LCCOMB_X21_Y23_N22
\Mux33~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux160~1_combout\ & (((\Mux33~0_combout\)))) # (!\Mux160~1_combout\ & ((\Mux33~0_combout\ & (\Add1~6_combout\)) # (!\Mux33~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux160~1_combout\,
	datab => \Add1~6_combout\,
	datac => \Mux33~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~6_combout\,
	combout => \Mux33~1_combout\);

-- Location: FF_X21_Y23_N13
\regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][3]~q\);

-- Location: LCCOMB_X21_Y23_N12
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (!\Mux18~2_combout\ & (\regs[2][3]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~2_combout\,
	datac => \regs[2][3]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux25~1_combout\);

-- Location: FF_X21_Y23_N9
\regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][3]~q\);

-- Location: LCCOMB_X21_Y23_N2
\Mux25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\regs[0][3]~q\ & (!\Mux18~2_combout\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[0][3]~q\,
	datac => \Mux18~2_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux25~2_combout\);

-- Location: FF_X22_Y22_N11
\regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][3]~q\);

-- Location: LCCOMB_X22_Y22_N10
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!\Mux18~2_combout\ & (\regs[1][3]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datac => \regs[1][3]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X21_Y23_N4
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux0~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux0~1_combout\ & ((\Mux1~1_combout\ & ((\Mux25~0_combout\))) # (!\Mux1~1_combout\ & (\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux25~2_combout\,
	datac => \Mux25~0_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y23_N6
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\Mux25~4_combout\) # ((!\Mux0~1_combout\)))) # (!\Mux6~0_combout\ & (((\Mux25~1_combout\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~4_combout\,
	datab => \Mux25~1_combout\,
	datac => \Mux6~0_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X17_Y22_N22
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Mux5~1_combout\ $ (\Mux13~4_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Mux5~1_combout\ & ((!\Add1~7\) # (!\Mux13~4_combout\))) # (!\Mux5~1_combout\ & (!\Mux13~4_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux13~4_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X20_Y21_N18
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Mux5~1_combout\ $ (\Mux13~4_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Mux5~1_combout\ & ((\Mux13~4_combout\) # (!\Add0~7\))) # (!\Mux5~1_combout\ & (\Mux13~4_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux13~4_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X18_Y22_N18
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4) = LCELL((\Mux17~4_combout\ & ((\Mux5~1_combout\ $ (\Mux16~4_combout\)))) # (!\Mux17~4_combout\ & (!\Mux6~1_combout\ & ((\Mux16~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux5~1_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(4));

-- Location: LCCOMB_X18_Y22_N0
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

-- Location: LCCOMB_X19_Y22_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~4_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~7\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\);

-- Location: LCCOMB_X20_Y24_N28
\Mux32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux160~1_combout\ & (\Mux161~1_combout\ & (\Add0~8_combout\))) # (!\Mux160~1_combout\ & (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\)) # (!\Mux161~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux160~1_combout\,
	datab => \Mux161~1_combout\,
	datac => \Add0~8_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~8_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X20_Y24_N30
\Mux32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux161~1_combout\ & (((\Mux32~0_combout\)))) # (!\Mux161~1_combout\ & ((\Mux32~0_combout\ & ((\Add1~8_combout\))) # (!\Mux32~0_combout\ & (\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux161~1_combout\,
	datac => \Add1~8_combout\,
	datad => \Mux32~0_combout\,
	combout => \Mux32~1_combout\);

-- Location: FF_X20_Y24_N23
\regs[0][4]\ : dffeas
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
	ena => \regs[0][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][4]~q\);

-- Location: LCCOMB_X20_Y24_N22
\Mux24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (!\Mux18~2_combout\ & (\regs[0][4]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~2_combout\,
	datac => \regs[0][4]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X19_Y24_N14
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux0~1_combout\ & ((\Mux24~0_combout\) # ((\Mux1~1_combout\)))) # (!\Mux0~1_combout\ & (((!\Mux1~1_combout\ & \Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X19_Y24_N0
\Mux24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\regs[3][4]~q\ & (\Mux12~2_combout\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[3][4]~q\,
	datac => \Mux12~2_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X19_Y24_N8
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux1~1_combout\ & ((\Mux5~0_combout\ & ((\Mux24~4_combout\))) # (!\Mux5~0_combout\ & (\Mux24~1_combout\)))) # (!\Mux1~1_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux5~0_combout\,
	datad => \Mux24~4_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X19_Y24_N20
\Mux23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\regs[3][5]~q\ & (\Mux12~2_combout\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][5]~q\,
	datab => \Mux12~2_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X17_Y22_N24
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Mux12~7_combout\ & ((\Mux4~1_combout\ & (!\Add1~9\)) # (!\Mux4~1_combout\ & ((\Add1~9\) # (GND))))) # (!\Mux12~7_combout\ & ((\Mux4~1_combout\ & (\Add1~9\ & VCC)) # (!\Mux4~1_combout\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\Mux12~7_combout\ & ((!\Add1~9\) # (!\Mux4~1_combout\))) # (!\Mux12~7_combout\ & (!\Mux4~1_combout\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~7_combout\,
	datab => \Mux4~1_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X18_Y23_N21
\regs[3][5]\ : dffeas
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
	ena => \regs[3][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][5]~q\);

-- Location: LCCOMB_X19_Y24_N22
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\regs[1][5]~q\ & (\Mux12~2_combout\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][5]~q\,
	datac => \Mux12~2_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X18_Y23_N12
\Mux12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux162~1_combout\ & (!\Mux158~1_combout\ & ((\Mux23~0_combout\)))) # (!\Mux162~1_combout\ & ((\Mux158~1_combout\) # ((\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux162~1_combout\,
	datab => \Mux158~1_combout\,
	datac => \Mux23~2_combout\,
	datad => \Mux23~0_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X18_Y23_N20
\Mux12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~4_combout\ & (((\Mux12~5_combout\)))) # (!\Mux12~4_combout\ & ((\Mux12~5_combout\ & (\Mux23~1_combout\)) # (!\Mux12~5_combout\ & ((\regs[3][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux12~4_combout\,
	datac => \regs[3][5]~q\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X18_Y23_N28
\Mux12~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (!PC(4) & (\Mux12~2_combout\ & (\Mux157~0_combout\ & \Mux12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \Mux12~2_combout\,
	datac => \Mux157~0_combout\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X20_Y21_N20
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Mux4~1_combout\ & ((\Mux12~7_combout\ & (\Add0~9\ & VCC)) # (!\Mux12~7_combout\ & (!\Add0~9\)))) # (!\Mux4~1_combout\ & ((\Mux12~7_combout\ & (!\Add0~9\)) # (!\Mux12~7_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\Mux4~1_combout\ & (!\Mux12~7_combout\ & !\Add0~9\)) # (!\Mux4~1_combout\ & ((!\Add0~9\) # (!\Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux12~7_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X20_Y21_N8
\Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux161~1_combout\ & (\Mux160~1_combout\ & ((\Add0~10_combout\)))) # (!\Mux161~1_combout\ & (((\Mux0~1_combout\)) # (!\Mux160~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux161~1_combout\,
	datab => \Mux160~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Add0~10_combout\,
	combout => \Mux31~0_combout\);

-- Location: FF_X18_Y23_N5
\regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][3]~q\);

-- Location: LCCOMB_X18_Y23_N0
\Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux162~1_combout\ & (!\Mux158~1_combout\ & ((\Mux25~0_combout\)))) # (!\Mux162~1_combout\ & ((\Mux158~1_combout\) # ((\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux162~1_combout\,
	datab => \Mux158~1_combout\,
	datac => \Mux25~2_combout\,
	datad => \Mux25~0_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X18_Y23_N4
\Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux12~4_combout\ & (((\Mux14~2_combout\)))) # (!\Mux12~4_combout\ & ((\Mux14~2_combout\ & (\Mux25~1_combout\)) # (!\Mux14~2_combout\ & ((\regs[3][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Mux25~1_combout\,
	datac => \regs[3][3]~q\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X18_Y23_N16
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & ((\Mux14~3_combout\) # ((\Mux16~3_combout\ & \Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \Mux14~3_combout\,
	datac => \Mux16~3_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\);

-- Location: LCCOMB_X18_Y23_N30
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ = (\Mux12~7_combout\ & (((\Mux13~4_combout\ & !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\)) # (!\Mux13~3_combout\))) # (!\Mux12~7_combout\ & 
-- (((\Mux13~4_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \Mux12~7_combout\,
	datac => \Mux13~4_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\);

-- Location: LCCOMB_X18_Y23_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\ = \Mux13~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux13~4_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\);

-- Location: LCCOMB_X18_Y23_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\ & ((\Mux8~1_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\ & (!\Mux9~1_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux8~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(1));

-- Location: LCCOMB_X18_Y23_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0) = LCELL(\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\ $ (((\Mux9~1_combout\ & (\Mux13~4_combout\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(0));

-- Location: LCCOMB_X19_Y22_N8
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

-- Location: LCCOMB_X19_Y22_N24
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\ & VCC)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # (GND)))))
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\)) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\ & ((!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~2_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\);

-- Location: LCCOMB_X19_Y24_N4
\Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux160~1_combout\ & (((\Mux31~0_combout\)))) # (!\Mux160~1_combout\ & ((\Mux31~0_combout\ & (\Add1~10_combout\)) # (!\Mux31~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux160~1_combout\,
	datab => \Add1~10_combout\,
	datac => \Mux31~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~10_combout\,
	combout => \Mux31~1_combout\);

-- Location: FF_X20_Y23_N3
\regs[0][5]\ : dffeas
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
	ena => \regs[0][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][5]~q\);

-- Location: LCCOMB_X20_Y23_N2
\Mux23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (!\Mux18~2_combout\ & (\regs[0][5]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~2_combout\,
	datac => \regs[0][5]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X19_Y24_N18
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux0~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux0~1_combout\ & ((\Mux1~1_combout\ & (\Mux23~0_combout\)) # (!\Mux1~1_combout\ & ((\Mux23~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux23~2_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X19_Y24_N28
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux0~1_combout\ & ((\Mux4~0_combout\ & ((\Mux23~4_combout\))) # (!\Mux4~0_combout\ & (\Mux23~1_combout\)))) # (!\Mux0~1_combout\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux23~4_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X19_Y23_N0
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Mux13~4_combout\ & (\Mux5~1_combout\ & (\Mux4~1_combout\ $ (!\Mux12~7_combout\)))) # (!\Mux13~4_combout\ & (!\Mux5~1_combout\ & (\Mux4~1_combout\ $ (!\Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux12~7_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X19_Y23_N4
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Mux8~1_combout\ & (\Mux16~4_combout\ & (\Mux9~1_combout\ $ (!\Mux17~4_combout\)))) # (!\Mux8~1_combout\ & (!\Mux16~4_combout\ & (\Mux9~1_combout\ $ (!\Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mux17~4_combout\,
	datad => \Mux16~4_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X19_Y21_N20
\Mux14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux12~2_combout\ & (\Mux157~0_combout\ & (!PC(4) & \Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux157~0_combout\,
	datac => PC(4),
	datad => \Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X19_Y23_N18
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Mux7~1_combout\ & (\Mux15~4_combout\ & (\Mux6~1_combout\ $ (!\Mux14~4_combout\)))) # (!\Mux7~1_combout\ & (!\Mux15~4_combout\ & (\Mux6~1_combout\ $ (!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux6~1_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux15~4_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y23_N24
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~4_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X19_Y23_N2
\desvio~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \desvio~1_combout\ = (\desvio~0_combout\ & ((\Mux161~1_combout\ & (\Mux160~1_combout\ & \Equal0~5_combout\)) # (!\Mux161~1_combout\ & ((!\Equal0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \desvio~0_combout\,
	datab => \Mux161~1_combout\,
	datac => \Mux160~1_combout\,
	datad => \Equal0~5_combout\,
	combout => \desvio~1_combout\);

-- Location: LCCOMB_X20_Y23_N24
\Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (((PC(4)) # (!\desvio~1_combout\)) # (!\Mux12~2_combout\)) # (!\Mux162~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux162~0_combout\,
	datab => \Mux12~2_combout\,
	datac => PC(4),
	datad => \desvio~1_combout\,
	combout => \Add2~24_combout\);

-- Location: LCCOMB_X20_Y23_N10
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add2~23_combout\ & ((PC(1) & (\Add2~7\ & VCC)) # (!PC(1) & (!\Add2~7\)))) # (!\Add2~23_combout\ & ((PC(1) & (!\Add2~7\)) # (!PC(1) & ((\Add2~7\) # (GND)))))
-- \Add2~9\ = CARRY((\Add2~23_combout\ & (!PC(1) & !\Add2~7\)) # (!\Add2~23_combout\ & ((!\Add2~7\) # (!PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~23_combout\,
	datab => PC(1),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X20_Y23_N12
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = ((PC(2) $ (\Add2~22_combout\ $ (!\Add2~9\)))) # (GND)
-- \Add2~11\ = CARRY((PC(2) & ((\Add2~22_combout\) # (!\Add2~9\))) # (!PC(2) & (\Add2~22_combout\ & !\Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => \Add2~22_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X21_Y22_N22
\PC~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~5_combout\ = (\PC~0_combout\ & ((\Add2~10_combout\))) # (!\PC~0_combout\ & (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datac => \PC~0_combout\,
	datad => \Add2~10_combout\,
	combout => \PC~5_combout\);

-- Location: FF_X21_Y22_N23
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X21_Y22_N8
\Mux158~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux158~0_combout\ = (PC(0) & (!PC(3) & ((!PC(2)) # (!PC(1))))) # (!PC(0) & (!PC(1) & (PC(2) $ (PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(1),
	datac => PC(2),
	datad => PC(3),
	combout => \Mux158~0_combout\);

-- Location: LCCOMB_X21_Y22_N0
\Mux158~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux158~1_combout\ = (PC(4)) # ((!\Mux12~2_combout\) # (!\Mux158~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(4),
	datac => \Mux158~0_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux158~1_combout\);

-- Location: LCCOMB_X21_Y22_N4
\PC~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~4_combout\ = (\PC~0_combout\ & ((\Add2~8_combout\))) # (!\PC~0_combout\ & (\Mux158~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux158~1_combout\,
	datac => \PC~0_combout\,
	datad => \Add2~8_combout\,
	combout => \PC~4_combout\);

-- Location: FF_X21_Y22_N5
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X20_Y23_N4
\Mux157~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux157~0_combout\ = (PC(2) & (!PC(3))) # (!PC(2) & ((PC(3) & (!PC(1))) # (!PC(3) & ((PC(1)) # (PC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(3),
	datac => PC(1),
	datad => PC(0),
	combout => \Mux157~0_combout\);

-- Location: LCCOMB_X20_Y23_N0
\Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (\desvio~1_combout\ & ((PC(4)) # ((!\Mux157~0_combout\) # (!\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \Mux12~2_combout\,
	datac => \Mux157~0_combout\,
	datad => \desvio~1_combout\,
	combout => \Add2~22_combout\);

-- Location: LCCOMB_X20_Y23_N14
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (PC(3) & (!\Add2~11\)) # (!PC(3) & ((\Add2~11\) # (GND)))
-- \Add2~13\ = CARRY((!\Add2~11\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X21_Y22_N20
\PC~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~6_combout\ = (\PC~0_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC~0_combout\,
	datac => \Add2~12_combout\,
	combout => \PC~6_combout\);

-- Location: FF_X21_Y22_N21
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X21_Y22_N2
\PC~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~7_combout\ = (\PC~0_combout\ & ((\Add2~14_combout\))) # (!\PC~0_combout\ & (\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \PC~0_combout\,
	datac => \Add2~14_combout\,
	combout => \PC~7_combout\);

-- Location: FF_X21_Y22_N3
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X21_Y21_N16
\Mux161~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux161~0_combout\ = (PC(1) & ((PC(0)) # ((PC(3))))) # (!PC(1) & ((PC(2)) # ((PC(0) & PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(3),
	datac => PC(1),
	datad => PC(2),
	combout => \Mux161~0_combout\);

-- Location: LCCOMB_X21_Y21_N6
\Mux161~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux161~1_combout\ = ((PC(4)) # (\Mux161~0_combout\)) # (!\Mux12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~2_combout\,
	datac => PC(4),
	datad => \Mux161~0_combout\,
	combout => \Mux161~1_combout\);

-- Location: LCCOMB_X21_Y21_N28
\desvio~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \desvio~0_combout\ = (!\Mux18~2_combout\ & (\Mux12~2_combout\ & ((PC(4)) # (!\Mux159~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \Mux18~2_combout\,
	datac => \Mux12~2_combout\,
	datad => \Mux159~0_combout\,
	combout => \desvio~0_combout\);

-- Location: LCCOMB_X21_Y23_N24
\PC~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~0_combout\ = ((\Mux161~1_combout\) # ((\Equal0~5_combout\) # (!\desvio~0_combout\))) # (!\Mux160~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux160~1_combout\,
	datab => \Mux161~1_combout\,
	datac => \Equal0~5_combout\,
	datad => \desvio~0_combout\,
	combout => \PC~0_combout\);

-- Location: LCCOMB_X20_Y23_N22
\Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = PC(7) $ (\Add2~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	cin => \Add2~19\,
	combout => \Add2~20_combout\);

-- Location: LCCOMB_X21_Y22_N24
\PC~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~1_combout\ = (\PC~0_combout\ & \Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC~0_combout\,
	datad => \Add2~20_combout\,
	combout => \PC~1_combout\);

-- Location: FF_X21_Y22_N25
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X21_Y22_N28
\PC~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC~3_combout\ = (\PC~0_combout\ & ((\Add2~16_combout\))) # (!\PC~0_combout\ & (\Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datac => \PC~0_combout\,
	datad => \Add2~16_combout\,
	combout => \PC~3_combout\);

-- Location: FF_X21_Y22_N29
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X21_Y22_N6
\Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (!PC(6) & (!PC(7) & !PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datab => PC(7),
	datad => PC(5),
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X19_Y21_N8
\Mux28~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\Mux12~2_combout\ & (\regs[3][0]~q\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~2_combout\,
	datac => \regs[3][0]~q\,
	datad => \Mux18~2_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X17_Y23_N12
\Mux28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux19~1_combout\ & (((\Mux20~1_combout\)))) # (!\Mux19~1_combout\ & ((\Mux20~1_combout\ & (\Mux28~1_combout\)) # (!\Mux20~1_combout\ & ((\Mux28~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux28~2_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X17_Y23_N26
\Mux28~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux19~1_combout\ & ((\Mux28~3_combout\ & (\Mux28~4_combout\)) # (!\Mux28~3_combout\ & ((\Mux28~0_combout\))))) # (!\Mux19~1_combout\ & (((\Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux28~3_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X17_Y22_N10
\Mux27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux19~1_combout\ & ((\Mux20~1_combout\) # ((\Mux27~1_combout\)))) # (!\Mux19~1_combout\ & (!\Mux20~1_combout\ & ((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux20~1_combout\,
	datac => \Mux27~1_combout\,
	datad => \Mux27~2_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X17_Y22_N12
\Mux27~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux20~1_combout\ & ((\Mux27~3_combout\ & (\Mux27~4_combout\)) # (!\Mux27~3_combout\ & ((\Mux27~0_combout\))))) # (!\Mux20~1_combout\ & (((\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux27~4_combout\,
	datac => \Mux27~0_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux27~5_combout\);

-- Location: FF_X21_Y23_N11
\regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][2]~q\);

-- Location: LCCOMB_X21_Y23_N10
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\Mux18~2_combout\ & (\regs[2][2]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~2_combout\,
	datac => \regs[2][2]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X21_Y23_N30
\Mux26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux20~1_combout\ & ((\Mux26~1_combout\) # ((\Mux19~1_combout\)))) # (!\Mux20~1_combout\ & (((\Mux26~2_combout\ & !\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux26~2_combout\,
	datac => \Mux20~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X21_Y23_N18
\Mux26~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux26~3_combout\ & (((\Mux26~4_combout\) # (!\Mux19~1_combout\)))) # (!\Mux26~3_combout\ & (\Mux26~0_combout\ & ((\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Mux26~4_combout\,
	datac => \Mux26~3_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X21_Y23_N20
\Mux25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux20~1_combout\ & (((\Mux19~1_combout\)))) # (!\Mux20~1_combout\ & ((\Mux19~1_combout\ & (\Mux25~1_combout\)) # (!\Mux19~1_combout\ & ((\Mux25~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \Mux25~2_combout\,
	datac => \Mux20~1_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X21_Y23_N26
\Mux25~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\regs[3][3]~q\ & (!\Mux18~2_combout\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][3]~q\,
	datac => \Mux18~2_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X22_Y22_N4
\Mux25~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux25~3_combout\ & ((\Mux25~4_combout\) # ((!\Mux20~1_combout\)))) # (!\Mux25~3_combout\ & (((\Mux25~0_combout\ & \Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \Mux25~4_combout\,
	datac => \Mux25~0_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X19_Y24_N16
\Mux24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux19~1_combout\ & (\Mux20~1_combout\)) # (!\Mux19~1_combout\ & ((\Mux20~1_combout\ & (\Mux24~1_combout\)) # (!\Mux20~1_combout\ & ((\Mux24~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux20~1_combout\,
	datac => \Mux24~1_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X19_Y24_N10
\Mux24~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux19~1_combout\ & ((\Mux24~3_combout\ & (\Mux24~4_combout\)) # (!\Mux24~3_combout\ & ((\Mux24~0_combout\))))) # (!\Mux19~1_combout\ & (((\Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux24~4_combout\,
	datac => \Mux24~3_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X19_Y24_N12
\Mux23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux19~1_combout\ & ((\Mux23~1_combout\) # ((\Mux20~1_combout\)))) # (!\Mux19~1_combout\ & (((\Mux23~2_combout\ & !\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux23~2_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X17_Y23_N28
\Mux23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux23~3_combout\ & (((\Mux23~4_combout\) # (!\Mux20~1_combout\)))) # (!\Mux23~3_combout\ & (\Mux23~0_combout\ & ((\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Mux23~4_combout\,
	datac => \Mux23~3_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux23~5_combout\);

-- Location: FF_X22_Y22_N3
\regs[3][6]\ : dffeas
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
	ena => \regs[3][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][6]~q\);

-- Location: FF_X22_Y22_N27
\regs[1][6]\ : dffeas
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
	ena => \regs[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][6]~q\);

-- Location: LCCOMB_X22_Y22_N26
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (!\Mux18~2_combout\ & (\regs[1][6]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datac => \regs[1][6]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux22~1_combout\);

-- Location: FF_X20_Y22_N11
\regs[0][6]\ : dffeas
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
	ena => \regs[0][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][6]~q\);

-- Location: LCCOMB_X20_Y22_N10
\Mux22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux12~2_combout\ & (\regs[0][6]~q\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datac => \regs[0][6]~q\,
	datad => \Mux18~2_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X22_Y22_N6
\Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux158~1_combout\ & (!\Mux162~1_combout\)) # (!\Mux158~1_combout\ & ((\Mux162~1_combout\ & (\Mux22~1_combout\)) # (!\Mux162~1_combout\ & ((\Mux22~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux158~1_combout\,
	datab => \Mux162~1_combout\,
	datac => \Mux22~1_combout\,
	datad => \Mux22~2_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X22_Y22_N28
\Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux12~4_combout\ & (((\Mux11~2_combout\)))) # (!\Mux12~4_combout\ & ((\Mux11~2_combout\ & ((\Mux22~0_combout\))) # (!\Mux11~2_combout\ & (\regs[3][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \regs[3][6]~q\,
	datac => \Mux22~0_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X22_Y22_N30
\Mux11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (!PC(4) & (\Mux157~0_combout\ & (\Mux12~2_combout\ & \Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \Mux157~0_combout\,
	datac => \Mux12~2_combout\,
	datad => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X22_Y22_N2
\Mux22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (!\Mux18~2_combout\ & (\regs[3][6]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datac => \regs[3][6]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X20_Y22_N12
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\Mux22~4_combout\) # (!\Mux1~1_combout\)))) # (!\Mux3~0_combout\ & (\Mux22~1_combout\ & ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux22~4_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X18_Y22_N22
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6) = LCELL((\Mux17~4_combout\ & (\Mux16~4_combout\ $ ((\Mux3~1_combout\)))) # (!\Mux17~4_combout\ & (\Mux16~4_combout\ & ((!\Mux4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux16~4_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(6));

-- Location: LCCOMB_X18_Y22_N4
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

-- Location: LCCOMB_X19_Y22_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\ = ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ $ 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))) # (GND)
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\ = CARRY((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\))) # (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\ & 
-- !\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~8_combout\,
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~11\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	cout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~13\);

-- Location: LCCOMB_X20_Y21_N22
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Mux11~4_combout\ $ (\Mux3~1_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Mux11~4_combout\ & ((\Mux3~1_combout\) # (!\Add0~11\))) # (!\Mux11~4_combout\ & (\Mux3~1_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~4_combout\,
	datab => \Mux3~1_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X19_Y22_N30
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux161~1_combout\ & ((\Mux160~1_combout\ & ((\Add0~12_combout\))) # (!\Mux160~1_combout\ & (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\)))) # (!\Mux161~1_combout\ & (!\Mux160~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux161~1_combout\,
	datab => \Mux160~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~12_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X19_Y22_N0
\Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux161~1_combout\ & (((\Mux30~0_combout\)))) # (!\Mux161~1_combout\ & ((\Mux30~0_combout\ & (\Add1~12_combout\)) # (!\Mux30~0_combout\ & ((\Mux18~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux161~1_combout\,
	datab => \Add1~12_combout\,
	datac => \Mux30~0_combout\,
	datad => \Mux18~3_combout\,
	combout => \Mux30~1_combout\);

-- Location: FF_X19_Y22_N1
\regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux30~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[2][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][6]~q\);

-- Location: LCCOMB_X20_Y22_N20
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\Mux18~2_combout\ & (\regs[2][6]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datac => \regs[2][6]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X22_Y22_N24
\Mux22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux20~1_combout\ & ((\Mux19~1_combout\) # ((\Mux22~1_combout\)))) # (!\Mux20~1_combout\ & (!\Mux19~1_combout\ & ((\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux22~1_combout\,
	datad => \Mux22~2_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X22_Y22_N0
\Mux22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~3_combout\ & (((\Mux22~4_combout\) # (!\Mux19~1_combout\)))) # (!\Mux22~3_combout\ & (\Mux22~0_combout\ & (\Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Mux22~3_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux22~4_combout\,
	combout => \Mux22~5_combout\);

-- Location: FF_X20_Y22_N5
\regs[0][7]\ : dffeas
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
	ena => \regs[0][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][7]~q\);

-- Location: LCCOMB_X20_Y22_N4
\Mux21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux12~2_combout\ & (\regs[0][7]~q\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datac => \regs[0][7]~q\,
	datad => \Mux18~2_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X20_Y22_N2
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux0~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux0~1_combout\ & ((\Mux1~1_combout\ & (\Mux21~0_combout\)) # (!\Mux1~1_combout\ & ((\Mux21~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux21~2_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X21_Y22_N7
\regs[2][7]\ : dffeas
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
	ena => \regs[2][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][7]~q\);

-- Location: LCCOMB_X22_Y22_N22
\Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux12~2_combout\ & (\regs[2][7]~q\ & !\Mux18~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \regs[2][7]~q\,
	datac => \Mux18~2_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X20_Y22_N28
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\Mux21~4_combout\) # ((!\Mux0~1_combout\)))) # (!\Mux2~0_combout\ & (((\Mux0~1_combout\ & \Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~4_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux2~1_combout\);

-- Location: FF_X22_Y22_N9
\regs[3][7]\ : dffeas
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
	ena => \regs[3][2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][7]~q\);

-- Location: LCCOMB_X20_Y22_N24
\Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & ((\Mux21~1_combout\) # ((\Mux12~4_combout\)))) # (!\Mux10~2_combout\ & (((\regs[3][7]~q\ & !\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux21~1_combout\,
	datac => \regs[3][7]~q\,
	datad => \Mux12~4_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X19_Y21_N18
\Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (!PC(4) & (\Mux12~2_combout\ & (\Mux10~3_combout\ & \Mux157~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \Mux12~2_combout\,
	datac => \Mux10~3_combout\,
	datad => \Mux157~0_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X20_Y21_N24
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Mux2~1_combout\ $ (\Add0~13\ $ (\Mux10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datad => \Mux10~4_combout\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X20_Y21_N6
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux161~1_combout\ & (\Mux160~1_combout\ & ((\Add0~14_combout\)))) # (!\Mux161~1_combout\ & (((\Mux18~3_combout\)) # (!\Mux160~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux161~1_combout\,
	datab => \Mux160~1_combout\,
	datac => \Mux18~3_combout\,
	datad => \Add0~14_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X19_Y23_N10
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ = (\Mux12~7_combout\) # ((\Mux13~4_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~1_combout\,
	datad => \Mux12~7_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\);

-- Location: LCCOMB_X17_Y22_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) = LCELL((\Mux11~4_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ & (\Mux9~1_combout\)) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\ & ((\Mux8~1_combout\))))) # (!\Mux11~4_combout\ & (((\Mux8~1_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \Mux11~4_combout\,
	datac => \Mux8~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1));

-- Location: LCCOMB_X17_Y23_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\ & (\Mux6~1_combout\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\ & (((!\Mux7~1_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux7~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~2_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[2]~2_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3));

-- Location: LCCOMB_X18_Y22_N6
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(1),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le6a\(3),
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~5\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_2~6_combout\);

-- Location: LCCOMB_X19_Y21_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) = LCELL((\Mux10~3_combout\ & (\Mux9~1_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datac => \Mux9~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0));

-- Location: LCCOMB_X19_Y23_N26
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7) = LCELL((\Mux17~4_combout\ & ((\Mux2~1_combout\ $ (\Mux16~4_combout\)))) # (!\Mux17~4_combout\ & (!\Mux3~1_combout\ & ((\Mux16~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux17~4_combout\,
	datad => \Mux16~4_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le4a\(7));

-- Location: LCCOMB_X19_Y23_N14
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mux16~3_combout\ $ (\Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\);

-- Location: LCCOMB_X18_Y23_N2
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\ = (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\ & (\Mux14~3_combout\ $ (((\Mux16~3_combout\ & \Mux15~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~0_combout\,
	datab => \Mux16~3_combout\,
	datac => \Mux14~3_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\);

-- Location: LCCOMB_X19_Y23_N28
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5) = LCELL((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (\Mux4~1_combout\ $ (((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\))))) # 
-- (!\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\ & (((!\Mux5~1_combout\ & \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux5~1_combout\,
	datac => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs3a[1]~1_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[1]~0_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le5a\(5));

-- Location: LCCOMB_X19_Y23_N12
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

-- Location: LCCOMB_X19_Y23_N20
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0) = LCELL((\Mux9~1_combout\ & (\Mux11~4_combout\ $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|cs2a[2]~3_combout\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le7a\(0));

-- Location: LCCOMB_X19_Y22_N12
\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\ = \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0) $ (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\ $ 
-- (\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|le8a\(0),
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_3~0_combout\,
	cin => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~9\,
	combout => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_1~10_combout\);

-- Location: LCCOMB_X19_Y22_N28
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

-- Location: LCCOMB_X20_Y22_N16
\Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux160~1_combout\ & (((\Mux29~0_combout\)))) # (!\Mux160~1_combout\ & ((\Mux29~0_combout\ & (\Add1~14_combout\)) # (!\Mux29~0_combout\ & ((\Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Mux160~1_combout\,
	datac => \Mux29~0_combout\,
	datad => \Mult0|auto_generated|mac_mult1|auto_generated|mult1|op_5~14_combout\,
	combout => \Mux29~1_combout\);

-- Location: FF_X20_Y22_N17
\regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux29~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][7]~q\);

-- Location: LCCOMB_X20_Y22_N30
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\regs[1][7]~q\ & (!\Mux18~2_combout\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regs[1][7]~q\,
	datac => \Mux18~2_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X22_Y22_N16
\Mux21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux19~1_combout\ & (((\Mux21~1_combout\) # (\Mux20~1_combout\)))) # (!\Mux19~1_combout\ & (\Mux21~2_combout\ & ((!\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux21~1_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X22_Y22_N14
\Mux21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (!\Mux18~2_combout\ & (\regs[3][7]~q\ & \Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datab => \regs[3][7]~q\,
	datad => \Mux12~2_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X22_Y22_N20
\Mux21~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~3_combout\ & (((\Mux21~4_combout\) # (!\Mux20~1_combout\)))) # (!\Mux21~3_combout\ & (\Mux21~0_combout\ & ((\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux21~3_combout\,
	datac => \Mux21~4_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux21~5_combout\);

ww_Reg_out(0) <= \Reg_out[0]~output_o\;

ww_Reg_out(1) <= \Reg_out[1]~output_o\;

ww_Reg_out(2) <= \Reg_out[2]~output_o\;

ww_Reg_out(3) <= \Reg_out[3]~output_o\;

ww_Reg_out(4) <= \Reg_out[4]~output_o\;

ww_Reg_out(5) <= \Reg_out[5]~output_o\;

ww_Reg_out(6) <= \Reg_out[6]~output_o\;

ww_Reg_out(7) <= \Reg_out[7]~output_o\;
END structure;


