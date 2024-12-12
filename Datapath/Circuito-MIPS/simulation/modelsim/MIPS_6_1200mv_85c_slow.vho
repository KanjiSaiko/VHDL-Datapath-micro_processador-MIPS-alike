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

-- DATE "12/11/2024 22:47:03"

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

ENTITY 	MIPS IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	R0_out : OUT std_logic_vector(7 DOWNTO 0);
	R1_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END MIPS;

-- Design Ports Information
-- R0_out[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[7]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \regs[0][4]~q\ : std_logic;
SIGNAL \regs[2][5]~q\ : std_logic;
SIGNAL \regs[15][7]~q\ : std_logic;
SIGNAL \mem_d~1697_q\ : std_logic;
SIGNAL \mem_d~1657_q\ : std_logic;
SIGNAL \mem_d~1665_q\ : std_logic;
SIGNAL \mem_d~1649_q\ : std_logic;
SIGNAL \mem_d~2093_combout\ : std_logic;
SIGNAL \mem_d~1673_q\ : std_logic;
SIGNAL \mem_d~2094_combout\ : std_logic;
SIGNAL \mem_d~1569_q\ : std_logic;
SIGNAL \mem_d~161_q\ : std_logic;
SIGNAL \mem_d~153_q\ : std_logic;
SIGNAL \mem_d~145_q\ : std_logic;
SIGNAL \mem_d~2099_combout\ : std_logic;
SIGNAL \mem_d~169_q\ : std_logic;
SIGNAL \mem_d~2100_combout\ : std_logic;
SIGNAL \mem_d~249_q\ : std_logic;
SIGNAL \mem_d~257_q\ : std_logic;
SIGNAL \mem_d~241_q\ : std_logic;
SIGNAL \mem_d~2101_combout\ : std_logic;
SIGNAL \mem_d~265_q\ : std_logic;
SIGNAL \mem_d~2102_combout\ : std_logic;
SIGNAL \mem_d~121_q\ : std_logic;
SIGNAL \mem_d~129_q\ : std_logic;
SIGNAL \mem_d~113_q\ : std_logic;
SIGNAL \mem_d~2103_combout\ : std_logic;
SIGNAL \mem_d~137_q\ : std_logic;
SIGNAL \mem_d~2104_combout\ : std_logic;
SIGNAL \mem_d~33_q\ : std_logic;
SIGNAL \mem_d~25_q\ : std_logic;
SIGNAL \mem_d~17_q\ : std_logic;
SIGNAL \mem_d~2105_combout\ : std_logic;
SIGNAL \mem_d~41_q\ : std_logic;
SIGNAL \mem_d~2106_combout\ : std_logic;
SIGNAL \mem_d~2107_combout\ : std_logic;
SIGNAL \mem_d~2108_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add4~3_combout\ : std_logic;
SIGNAL \mem_d~1698_q\ : std_logic;
SIGNAL \mem_d~1690_q\ : std_logic;
SIGNAL \mem_d~1682_q\ : std_logic;
SIGNAL \mem_d~2110_combout\ : std_logic;
SIGNAL \mem_d~1706_q\ : std_logic;
SIGNAL \mem_d~2111_combout\ : std_logic;
SIGNAL \mem_d~1786_q\ : std_logic;
SIGNAL \mem_d~1794_q\ : std_logic;
SIGNAL \mem_d~1778_q\ : std_logic;
SIGNAL \mem_d~2112_combout\ : std_logic;
SIGNAL \mem_d~1802_q\ : std_logic;
SIGNAL \mem_d~2113_combout\ : std_logic;
SIGNAL \mem_d~1658_q\ : std_logic;
SIGNAL \mem_d~1666_q\ : std_logic;
SIGNAL \mem_d~1650_q\ : std_logic;
SIGNAL \mem_d~2114_combout\ : std_logic;
SIGNAL \mem_d~1674_q\ : std_logic;
SIGNAL \mem_d~2115_combout\ : std_logic;
SIGNAL \mem_d~1570_q\ : std_logic;
SIGNAL \mem_d~1562_q\ : std_logic;
SIGNAL \mem_d~1554_q\ : std_logic;
SIGNAL \mem_d~2116_combout\ : std_logic;
SIGNAL \mem_d~1578_q\ : std_logic;
SIGNAL \mem_d~2117_combout\ : std_logic;
SIGNAL \mem_d~2118_combout\ : std_logic;
SIGNAL \mem_d~2119_combout\ : std_logic;
SIGNAL \mem_d~162_q\ : std_logic;
SIGNAL \mem_d~154_q\ : std_logic;
SIGNAL \mem_d~146_q\ : std_logic;
SIGNAL \mem_d~2120_combout\ : std_logic;
SIGNAL \mem_d~170_q\ : std_logic;
SIGNAL \mem_d~2121_combout\ : std_logic;
SIGNAL \mem_d~250_q\ : std_logic;
SIGNAL \mem_d~258_q\ : std_logic;
SIGNAL \mem_d~242_q\ : std_logic;
SIGNAL \mem_d~2122_combout\ : std_logic;
SIGNAL \mem_d~266_q\ : std_logic;
SIGNAL \mem_d~2123_combout\ : std_logic;
SIGNAL \mem_d~122_q\ : std_logic;
SIGNAL \mem_d~130_q\ : std_logic;
SIGNAL \mem_d~114_q\ : std_logic;
SIGNAL \mem_d~2124_combout\ : std_logic;
SIGNAL \mem_d~138_q\ : std_logic;
SIGNAL \mem_d~2125_combout\ : std_logic;
SIGNAL \mem_d~34_q\ : std_logic;
SIGNAL \mem_d~26_q\ : std_logic;
SIGNAL \mem_d~18_q\ : std_logic;
SIGNAL \mem_d~2126_combout\ : std_logic;
SIGNAL \mem_d~42_q\ : std_logic;
SIGNAL \mem_d~2127_combout\ : std_logic;
SIGNAL \mem_d~2128_combout\ : std_logic;
SIGNAL \mem_d~2129_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \mem_d~1691_q\ : std_logic;
SIGNAL \mem_d~1683_q\ : std_logic;
SIGNAL \mem_d~2130_combout\ : std_logic;
SIGNAL \mem_d~1787_q\ : std_logic;
SIGNAL \mem_d~1795_q\ : std_logic;
SIGNAL \mem_d~1779_q\ : std_logic;
SIGNAL \mem_d~2132_combout\ : std_logic;
SIGNAL \mem_d~1803_q\ : std_logic;
SIGNAL \mem_d~2133_combout\ : std_logic;
SIGNAL \mem_d~1659_q\ : std_logic;
SIGNAL \mem_d~1667_q\ : std_logic;
SIGNAL \mem_d~1571_q\ : std_logic;
SIGNAL \mem_d~163_q\ : std_logic;
SIGNAL \mem_d~155_q\ : std_logic;
SIGNAL \mem_d~147_q\ : std_logic;
SIGNAL \mem_d~2140_combout\ : std_logic;
SIGNAL \mem_d~171_q\ : std_logic;
SIGNAL \mem_d~2141_combout\ : std_logic;
SIGNAL \mem_d~267_q\ : std_logic;
SIGNAL \mem_d~123_q\ : std_logic;
SIGNAL \mem_d~131_q\ : std_logic;
SIGNAL \mem_d~27_q\ : std_logic;
SIGNAL \mem_d~19_q\ : std_logic;
SIGNAL \mem_d~2146_combout\ : std_logic;
SIGNAL \mem_d~1692_q\ : std_logic;
SIGNAL \mem_d~1684_q\ : std_logic;
SIGNAL \mem_d~2150_combout\ : std_logic;
SIGNAL \mem_d~1788_q\ : std_logic;
SIGNAL \mem_d~1796_q\ : std_logic;
SIGNAL \mem_d~1780_q\ : std_logic;
SIGNAL \mem_d~2152_combout\ : std_logic;
SIGNAL \mem_d~1804_q\ : std_logic;
SIGNAL \mem_d~2153_combout\ : std_logic;
SIGNAL \mem_d~1660_q\ : std_logic;
SIGNAL \mem_d~156_q\ : std_logic;
SIGNAL \mem_d~148_q\ : std_logic;
SIGNAL \mem_d~2160_combout\ : std_logic;
SIGNAL \mem_d~252_q\ : std_logic;
SIGNAL \mem_d~260_q\ : std_logic;
SIGNAL \mem_d~244_q\ : std_logic;
SIGNAL \mem_d~2162_combout\ : std_logic;
SIGNAL \mem_d~268_q\ : std_logic;
SIGNAL \mem_d~2163_combout\ : std_logic;
SIGNAL \mem_d~124_q\ : std_logic;
SIGNAL \mem_d~36_q\ : std_logic;
SIGNAL \mem_d~28_q\ : std_logic;
SIGNAL \mem_d~1661_q\ : std_logic;
SIGNAL \mem_d~1669_q\ : std_logic;
SIGNAL \mem_d~1653_q\ : std_logic;
SIGNAL \mem_d~2170_combout\ : std_logic;
SIGNAL \mem_d~1677_q\ : std_logic;
SIGNAL \mem_d~2171_combout\ : std_logic;
SIGNAL \mem_d~1557_q\ : std_logic;
SIGNAL \mem_d~1581_q\ : std_logic;
SIGNAL \mem_d~1789_q\ : std_logic;
SIGNAL \mem_d~1797_q\ : std_logic;
SIGNAL \mem_d~1781_q\ : std_logic;
SIGNAL \mem_d~2175_combout\ : std_logic;
SIGNAL \mem_d~1805_q\ : std_logic;
SIGNAL \mem_d~2176_combout\ : std_logic;
SIGNAL \mem_d~1709_q\ : std_logic;
SIGNAL \mem_d~157_q\ : std_logic;
SIGNAL \mem_d~149_q\ : std_logic;
SIGNAL \mem_d~2181_combout\ : std_logic;
SIGNAL \mem_d~269_q\ : std_logic;
SIGNAL \mem_d~125_q\ : std_logic;
SIGNAL \mem_d~133_q\ : std_logic;
SIGNAL \mem_d~37_q\ : std_logic;
SIGNAL \mem_d~29_q\ : std_logic;
SIGNAL \mem_d~1670_q\ : std_logic;
SIGNAL \mem_d~1678_q\ : std_logic;
SIGNAL \mem_d~1582_q\ : std_logic;
SIGNAL \mem_d~1806_q\ : std_logic;
SIGNAL \mem_d~1710_q\ : std_logic;
SIGNAL \mem_d~158_q\ : std_logic;
SIGNAL \mem_d~150_q\ : std_logic;
SIGNAL \mem_d~2202_combout\ : std_logic;
SIGNAL \mem_d~270_q\ : std_logic;
SIGNAL \mem_d~126_q\ : std_logic;
SIGNAL \mem_d~134_q\ : std_logic;
SIGNAL \mem_d~30_q\ : std_logic;
SIGNAL \mem_d~1671_q\ : std_logic;
SIGNAL \mem_d~1679_q\ : std_logic;
SIGNAL \mem_d~1583_q\ : std_logic;
SIGNAL \mem_d~1791_q\ : std_logic;
SIGNAL \mem_d~1799_q\ : std_logic;
SIGNAL \mem_d~1783_q\ : std_logic;
SIGNAL \mem_d~2217_combout\ : std_logic;
SIGNAL \mem_d~1807_q\ : std_logic;
SIGNAL \mem_d~2218_combout\ : std_logic;
SIGNAL \mem_d~1711_q\ : std_logic;
SIGNAL \mem_d~167_q\ : std_logic;
SIGNAL \mem_d~271_q\ : std_logic;
SIGNAL \mem_d~127_q\ : std_logic;
SIGNAL \mem_d~135_q\ : std_logic;
SIGNAL \mem_d~31_q\ : std_logic;
SIGNAL \mem_d~1576_q\ : std_logic;
SIGNAL \mem_d~1568_q\ : std_logic;
SIGNAL \mem_d~1560_q\ : std_logic;
SIGNAL \mem_d~2233_combout\ : std_logic;
SIGNAL \mem_d~1584_q\ : std_logic;
SIGNAL \mem_d~2234_combout\ : std_logic;
SIGNAL \mem_d~1704_q\ : std_logic;
SIGNAL \mem_d~1696_q\ : std_logic;
SIGNAL \mem_d~1688_q\ : std_logic;
SIGNAL \mem_d~2235_combout\ : std_logic;
SIGNAL \mem_d~1712_q\ : std_logic;
SIGNAL \mem_d~2236_combout\ : std_logic;
SIGNAL \mem_d~1664_q\ : std_logic;
SIGNAL \mem_d~1672_q\ : std_logic;
SIGNAL \mem_d~1656_q\ : std_logic;
SIGNAL \mem_d~2237_combout\ : std_logic;
SIGNAL \mem_d~1680_q\ : std_logic;
SIGNAL \mem_d~2238_combout\ : std_logic;
SIGNAL \mem_d~1792_q\ : std_logic;
SIGNAL \mem_d~1800_q\ : std_logic;
SIGNAL \mem_d~1784_q\ : std_logic;
SIGNAL \mem_d~2239_combout\ : std_logic;
SIGNAL \mem_d~1808_q\ : std_logic;
SIGNAL \mem_d~2240_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \mem_d~128_q\ : std_logic;
SIGNAL \mem_d~136_q\ : std_logic;
SIGNAL \mem_d~120_q\ : std_logic;
SIGNAL \mem_d~2241_combout\ : std_logic;
SIGNAL \mem_d~144_q\ : std_logic;
SIGNAL \mem_d~2242_combout\ : std_logic;
SIGNAL \mem_d~40_q\ : std_logic;
SIGNAL \mem_d~32_q\ : std_logic;
SIGNAL \mem_d~24_q\ : std_logic;
SIGNAL \mem_d~2243_combout\ : std_logic;
SIGNAL \mem_d~48_q\ : std_logic;
SIGNAL \mem_d~2244_combout\ : std_logic;
SIGNAL \mem_d~2245_combout\ : std_logic;
SIGNAL \mem_d~2246_combout\ : std_logic;
SIGNAL \mem_d~256_q\ : std_logic;
SIGNAL \mem_d~264_q\ : std_logic;
SIGNAL \mem_d~248_q\ : std_logic;
SIGNAL \mem_d~2247_combout\ : std_logic;
SIGNAL \mem_d~272_q\ : std_logic;
SIGNAL \mem_d~2248_combout\ : std_logic;
SIGNAL \mem_d~168_q\ : std_logic;
SIGNAL \mem_d~160_q\ : std_logic;
SIGNAL \mem_d~152_q\ : std_logic;
SIGNAL \mem_d~2249_combout\ : std_logic;
SIGNAL \mem_d~176_q\ : std_logic;
SIGNAL \mem_d~2250_combout\ : std_logic;
SIGNAL \Mux39~6_combout\ : std_logic;
SIGNAL \Mux39~7_combout\ : std_logic;
SIGNAL \regs[5][0]~q\ : std_logic;
SIGNAL \regs[4][0]~q\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \Mux37~5_combout\ : std_logic;
SIGNAL \mem_d~2277_combout\ : std_logic;
SIGNAL \mem_d~2278_combout\ : std_logic;
SIGNAL \mem_d~2283_combout\ : std_logic;
SIGNAL \regs[9][1]~q\ : std_logic;
SIGNAL \regs[10][1]~q\ : std_logic;
SIGNAL \regs[8][1]~q\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \regs[11][1]~q\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \regs[6][1]~q\ : std_logic;
SIGNAL \regs[5][1]~q\ : std_logic;
SIGNAL \regs[4][1]~q\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \regs[7][1]~q\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux36~5_combout\ : std_logic;
SIGNAL \Mux36~6_combout\ : std_logic;
SIGNAL \Mux36~7_combout\ : std_logic;
SIGNAL \Mux36~8_combout\ : std_logic;
SIGNAL \Mux36~9_combout\ : std_logic;
SIGNAL \regs[11][2]~q\ : std_logic;
SIGNAL \regs[6][2]~q\ : std_logic;
SIGNAL \regs[5][2]~q\ : std_logic;
SIGNAL \regs[4][2]~q\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \regs[7][2]~q\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux35~7_combout\ : std_logic;
SIGNAL \regs[9][3]~q\ : std_logic;
SIGNAL \regs[10][3]~q\ : std_logic;
SIGNAL \regs[8][3]~q\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \regs[11][3]~q\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \regs[5][3]~q\ : std_logic;
SIGNAL \regs[4][3]~q\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \regs[10][4]~q\ : std_logic;
SIGNAL \regs[8][4]~q\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \regs[5][4]~q\ : std_logic;
SIGNAL \regs[4][4]~q\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \regs[6][5]~q\ : std_logic;
SIGNAL \regs[5][5]~q\ : std_logic;
SIGNAL \regs[4][5]~q\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \regs[7][5]~q\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \Mux32~6_combout\ : std_logic;
SIGNAL \regs[10][6]~q\ : std_logic;
SIGNAL \regs[8][6]~q\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \regs[6][6]~q\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \regs[9][7]~q\ : std_logic;
SIGNAL \regs[10][7]~q\ : std_logic;
SIGNAL \regs[8][7]~q\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \regs[11][7]~q\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \regs[6][7]~q\ : std_logic;
SIGNAL \regs[5][7]~q\ : std_logic;
SIGNAL \regs[4][7]~q\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \regs[7][7]~q\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \mem_d~2287_combout\ : std_logic;
SIGNAL \Mux39~11_combout\ : std_logic;
SIGNAL \mem_d~2312_combout\ : std_logic;
SIGNAL \mem_d~2313_combout\ : std_logic;
SIGNAL \mem_d~2314_combout\ : std_logic;
SIGNAL \mem_d~2315_combout\ : std_logic;
SIGNAL \mem_d~2316_combout\ : std_logic;
SIGNAL \mem_d~2317_combout\ : std_logic;
SIGNAL \mem_d~2320_combout\ : std_logic;
SIGNAL \mem_d~2321_combout\ : std_logic;
SIGNAL \mem_d~2322_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \regs[5][0]~feeder_combout\ : std_logic;
SIGNAL \regs[9][1]~feeder_combout\ : std_logic;
SIGNAL \regs[5][1]~feeder_combout\ : std_logic;
SIGNAL \regs[10][1]~feeder_combout\ : std_logic;
SIGNAL \regs[5][2]~feeder_combout\ : std_logic;
SIGNAL \regs[11][2]~feeder_combout\ : std_logic;
SIGNAL \regs[5][3]~feeder_combout\ : std_logic;
SIGNAL \regs[10][3]~feeder_combout\ : std_logic;
SIGNAL \regs[10][4]~feeder_combout\ : std_logic;
SIGNAL \regs[5][4]~feeder_combout\ : std_logic;
SIGNAL \regs[2][5]~feeder_combout\ : std_logic;
SIGNAL \regs[5][5]~feeder_combout\ : std_logic;
SIGNAL \regs[6][5]~feeder_combout\ : std_logic;
SIGNAL \regs[6][6]~feeder_combout\ : std_logic;
SIGNAL \regs[10][6]~feeder_combout\ : std_logic;
SIGNAL \regs[10][7]~feeder_combout\ : std_logic;
SIGNAL \regs[11][7]~feeder_combout\ : std_logic;
SIGNAL \regs[6][7]~feeder_combout\ : std_logic;
SIGNAL \mem_d~121feeder_combout\ : std_logic;
SIGNAL \mem_d~161feeder_combout\ : std_logic;
SIGNAL \mem_d~153feeder_combout\ : std_logic;
SIGNAL \mem_d~129feeder_combout\ : std_logic;
SIGNAL \mem_d~257feeder_combout\ : std_logic;
SIGNAL \mem_d~265feeder_combout\ : std_logic;
SIGNAL \mem_d~1657feeder_combout\ : std_logic;
SIGNAL \mem_d~1665feeder_combout\ : std_logic;
SIGNAL \mem_d~1570feeder_combout\ : std_logic;
SIGNAL \mem_d~1562feeder_combout\ : std_logic;
SIGNAL \mem_d~1666feeder_combout\ : std_logic;
SIGNAL \mem_d~1658feeder_combout\ : std_logic;
SIGNAL \mem_d~266feeder_combout\ : std_logic;
SIGNAL \mem_d~130feeder_combout\ : std_logic;
SIGNAL \mem_d~1794feeder_combout\ : std_logic;
SIGNAL \mem_d~258feeder_combout\ : std_logic;
SIGNAL \mem_d~1802feeder_combout\ : std_logic;
SIGNAL \mem_d~154feeder_combout\ : std_logic;
SIGNAL \mem_d~122feeder_combout\ : std_logic;
SIGNAL \mem_d~26feeder_combout\ : std_logic;
SIGNAL \mem_d~162feeder_combout\ : std_logic;
SIGNAL \mem_d~1690feeder_combout\ : std_logic;
SIGNAL \mem_d~1691feeder_combout\ : std_logic;
SIGNAL \mem_d~163feeder_combout\ : std_logic;
SIGNAL \mem_d~155feeder_combout\ : std_logic;
SIGNAL \mem_d~1659feeder_combout\ : std_logic;
SIGNAL \mem_d~1795feeder_combout\ : std_logic;
SIGNAL \mem_d~131feeder_combout\ : std_logic;
SIGNAL \mem_d~267feeder_combout\ : std_logic;
SIGNAL \mem_d~1667feeder_combout\ : std_logic;
SIGNAL \mem_d~1803feeder_combout\ : std_logic;
SIGNAL \mem_d~123feeder_combout\ : std_logic;
SIGNAL \mem_d~27feeder_combout\ : std_logic;
SIGNAL \mem_d~1804feeder_combout\ : std_logic;
SIGNAL \mem_d~156feeder_combout\ : std_logic;
SIGNAL \mem_d~1692feeder_combout\ : std_logic;
SIGNAL \mem_d~1796feeder_combout\ : std_logic;
SIGNAL \mem_d~268feeder_combout\ : std_logic;
SIGNAL \mem_d~260feeder_combout\ : std_logic;
SIGNAL \mem_d~1660feeder_combout\ : std_logic;
SIGNAL \mem_d~36feeder_combout\ : std_logic;
SIGNAL \mem_d~124feeder_combout\ : std_logic;
SIGNAL \mem_d~28feeder_combout\ : std_logic;
SIGNAL \mem_d~1709feeder_combout\ : std_logic;
SIGNAL \mem_d~269feeder_combout\ : std_logic;
SIGNAL \mem_d~37feeder_combout\ : std_logic;
SIGNAL \mem_d~133feeder_combout\ : std_logic;
SIGNAL \mem_d~125feeder_combout\ : std_logic;
SIGNAL \mem_d~29feeder_combout\ : std_logic;
SIGNAL \mem_d~1557feeder_combout\ : std_logic;
SIGNAL \mem_d~1797feeder_combout\ : std_logic;
SIGNAL \mem_d~1805feeder_combout\ : std_logic;
SIGNAL \mem_d~1669feeder_combout\ : std_logic;
SIGNAL \mem_d~157feeder_combout\ : std_logic;
SIGNAL \mem_d~1582feeder_combout\ : std_logic;
SIGNAL \mem_d~126feeder_combout\ : std_logic;
SIGNAL \mem_d~30feeder_combout\ : std_logic;
SIGNAL \mem_d~1678feeder_combout\ : std_logic;
SIGNAL \mem_d~1670feeder_combout\ : std_logic;
SIGNAL \mem_d~158feeder_combout\ : std_logic;
SIGNAL \mem_d~134feeder_combout\ : std_logic;
SIGNAL \mem_d~270feeder_combout\ : std_logic;
SIGNAL \mem_d~1806feeder_combout\ : std_logic;
SIGNAL \mem_d~1710feeder_combout\ : std_logic;
SIGNAL \mem_d~1583feeder_combout\ : std_logic;
SIGNAL \mem_d~167feeder_combout\ : std_logic;
SIGNAL \mem_d~127feeder_combout\ : std_logic;
SIGNAL \mem_d~31feeder_combout\ : std_logic;
SIGNAL \mem_d~1671feeder_combout\ : std_logic;
SIGNAL \mem_d~1799feeder_combout\ : std_logic;
SIGNAL \mem_d~135feeder_combout\ : std_logic;
SIGNAL \mem_d~1679feeder_combout\ : std_logic;
SIGNAL \mem_d~271feeder_combout\ : std_logic;
SIGNAL \mem_d~1807feeder_combout\ : std_logic;
SIGNAL \mem_d~1712feeder_combout\ : std_logic;
SIGNAL \mem_d~256feeder_combout\ : std_logic;
SIGNAL \mem_d~264feeder_combout\ : std_logic;
SIGNAL \mem_d~248feeder_combout\ : std_logic;
SIGNAL \mem_d~136feeder_combout\ : std_logic;
SIGNAL \mem_d~1680feeder_combout\ : std_logic;
SIGNAL \mem_d~1696feeder_combout\ : std_logic;
SIGNAL \mem_d~160feeder_combout\ : std_logic;
SIGNAL \mem_d~1792feeder_combout\ : std_logic;
SIGNAL \mem_d~1800feeder_combout\ : std_logic;
SIGNAL \mem_d~40feeder_combout\ : std_logic;
SIGNAL \mem_d~1568feeder_combout\ : std_logic;
SIGNAL \mem_d~128feeder_combout\ : std_logic;
SIGNAL \mem_d~32feeder_combout\ : std_logic;
SIGNAL \mem_d~1584feeder_combout\ : std_logic;
SIGNAL \mem_d~1672feeder_combout\ : std_logic;
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
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \PC~15_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \PC~14_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux167~1_combout\ : std_logic;
SIGNAL \Mux169~0_combout\ : std_logic;
SIGNAL \PC~12_combout\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux169~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux168~0_combout\ : std_logic;
SIGNAL \Mux168~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \regs[7][2]~15_combout\ : std_logic;
SIGNAL \regs[7][0]~q\ : std_logic;
SIGNAL \regs[6][0]~feeder_combout\ : std_logic;
SIGNAL \regs[6][6]~12_combout\ : std_logic;
SIGNAL \regs[6][0]~q\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux37~6_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \regs[12][3]~2_combout\ : std_logic;
SIGNAL \regs[12][0]~q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \regs[14][6]~0_combout\ : std_logic;
SIGNAL \regs[14][0]~q\ : std_logic;
SIGNAL \Mux37~7_combout\ : std_logic;
SIGNAL \Mux37~8_combout\ : std_logic;
SIGNAL \regs[9][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \regs[9][2]~8_combout\ : std_logic;
SIGNAL \regs[9][0]~q\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \regs[11][1]~11_combout\ : std_logic;
SIGNAL \regs[11][0]~q\ : std_logic;
SIGNAL \regs[10][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \regs[10][5]~9_combout\ : std_logic;
SIGNAL \regs[10][0]~q\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \regs[8][2]~10_combout\ : std_logic;
SIGNAL \regs[8][0]~q\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~9_combout\ : std_logic;
SIGNAL \mem_d~2251_combout\ : std_logic;
SIGNAL \mem_d~2252_combout\ : std_logic;
SIGNAL \mem_d~2295_combout\ : std_logic;
SIGNAL \mem_d~2268_combout\ : std_logic;
SIGNAL \mem_d~1577_q\ : std_logic;
SIGNAL \mem_d~1561feeder_combout\ : std_logic;
SIGNAL \mem_d~2266_combout\ : std_logic;
SIGNAL \mem_d~1561_q\ : std_logic;
SIGNAL \mem_d~2267_combout\ : std_logic;
SIGNAL \mem_d~1553_q\ : std_logic;
SIGNAL \mem_d~2095_combout\ : std_logic;
SIGNAL \mem_d~2096_combout\ : std_logic;
SIGNAL \mem_d~2097_combout\ : std_logic;
SIGNAL \mem_d~2098_combout\ : std_logic;
SIGNAL \mem_d~2294_combout\ : std_logic;
SIGNAL \mem_d~2256_combout\ : std_logic;
SIGNAL \mem_d~1705_q\ : std_logic;
SIGNAL \mem_d~1689feeder_combout\ : std_logic;
SIGNAL \mem_d~2254_combout\ : std_logic;
SIGNAL \mem_d~1689_q\ : std_logic;
SIGNAL \mem_d~2255_combout\ : std_logic;
SIGNAL \mem_d~1681_q\ : std_logic;
SIGNAL \mem_d~2089_combout\ : std_logic;
SIGNAL \mem_d~2090_combout\ : std_logic;
SIGNAL \mem_d~1801feeder_combout\ : std_logic;
SIGNAL \mem_d~2260_combout\ : std_logic;
SIGNAL \mem_d~1801_q\ : std_logic;
SIGNAL \mem_d~2288_combout\ : std_logic;
SIGNAL \mem_d~2257_combout\ : std_logic;
SIGNAL \mem_d~1785_q\ : std_logic;
SIGNAL \mem_d~1793feeder_combout\ : std_logic;
SIGNAL \mem_d~2258_combout\ : std_logic;
SIGNAL \mem_d~1793_q\ : std_logic;
SIGNAL \mem_d~2259_combout\ : std_logic;
SIGNAL \mem_d~1777_q\ : std_logic;
SIGNAL \mem_d~2091_combout\ : std_logic;
SIGNAL \mem_d~2092_combout\ : std_logic;
SIGNAL \mem_d~2318_combout\ : std_logic;
SIGNAL \mem_d~2319_combout\ : std_logic;
SIGNAL \mem_d~2286_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \regs[15][6]~3_combout\ : std_logic;
SIGNAL \regs[15][1]~q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \regs[2][3]~5_combout\ : std_logic;
SIGNAL \regs[2][1]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \regs[1][1]~4_combout\ : std_logic;
SIGNAL \regs[1][1]~q\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \regs[13][2]~1_combout\ : std_logic;
SIGNAL \regs[13][2]~q\ : std_logic;
SIGNAL \regs[14][2]~q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \regs[2][2]~q\ : std_logic;
SIGNAL \regs[1][2]~q\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \regs[3][4]~7_combout\ : std_logic;
SIGNAL \regs[3][2]~q\ : std_logic;
SIGNAL \Mux35~5_combout\ : std_logic;
SIGNAL \Mux35~6_combout\ : std_logic;
SIGNAL \Mux35~8_combout\ : std_logic;
SIGNAL \regs[10][2]~feeder_combout\ : std_logic;
SIGNAL \regs[10][2]~q\ : std_logic;
SIGNAL \regs[8][2]~q\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \regs[9][2]~q\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~9_combout\ : std_logic;
SIGNAL \mem_d~2274_combout\ : std_logic;
SIGNAL \mem_d~251_q\ : std_logic;
SIGNAL \mem_d~259feeder_combout\ : std_logic;
SIGNAL \mem_d~2269_combout\ : std_logic;
SIGNAL \mem_d~2296_combout\ : std_logic;
SIGNAL \mem_d~2275_combout\ : std_logic;
SIGNAL \mem_d~259_q\ : std_logic;
SIGNAL \mem_d~2276_combout\ : std_logic;
SIGNAL \mem_d~243_q\ : std_logic;
SIGNAL \mem_d~2142_combout\ : std_logic;
SIGNAL \mem_d~2143_combout\ : std_logic;
SIGNAL \mem_d~2308_combout\ : std_logic;
SIGNAL \mem_d~2297_combout\ : std_logic;
SIGNAL \mem_d~2281_combout\ : std_logic;
SIGNAL \mem_d~139_q\ : std_logic;
SIGNAL \mem_d~2280_combout\ : std_logic;
SIGNAL \mem_d~115_q\ : std_logic;
SIGNAL \mem_d~2144_combout\ : std_logic;
SIGNAL \mem_d~2145_combout\ : std_logic;
SIGNAL \mem_d~2285_combout\ : std_logic;
SIGNAL \mem_d~43_q\ : std_logic;
SIGNAL \mem_d~35feeder_combout\ : std_logic;
SIGNAL \mem_d~2282_combout\ : std_logic;
SIGNAL \mem_d~35_q\ : std_logic;
SIGNAL \mem_d~2147_combout\ : std_logic;
SIGNAL \mem_d~2148_combout\ : std_logic;
SIGNAL \mem_d~2149_combout\ : std_logic;
SIGNAL \mem_d~2309_combout\ : std_logic;
SIGNAL \mem_d~2253_combout\ : std_logic;
SIGNAL \mem_d~1699_q\ : std_logic;
SIGNAL \mem_d~1707_q\ : std_logic;
SIGNAL \mem_d~2131_combout\ : std_logic;
SIGNAL \mem_d~2310_combout\ : std_logic;
SIGNAL \mem_d~2264_combout\ : std_logic;
SIGNAL \mem_d~1675_q\ : std_logic;
SIGNAL \mem_d~2263_combout\ : std_logic;
SIGNAL \mem_d~1651_q\ : std_logic;
SIGNAL \mem_d~2134_combout\ : std_logic;
SIGNAL \mem_d~2135_combout\ : std_logic;
SIGNAL \mem_d~1579_q\ : std_logic;
SIGNAL \mem_d~1563feeder_combout\ : std_logic;
SIGNAL \mem_d~1563_q\ : std_logic;
SIGNAL \mem_d~1555_q\ : std_logic;
SIGNAL \mem_d~2136_combout\ : std_logic;
SIGNAL \mem_d~2137_combout\ : std_logic;
SIGNAL \mem_d~2138_combout\ : std_logic;
SIGNAL \mem_d~2139_combout\ : std_logic;
SIGNAL \mem_d~2311_combout\ : std_logic;
SIGNAL \mem_d~2289_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \regs[15][3]~feeder_combout\ : std_logic;
SIGNAL \regs[15][3]~q\ : std_logic;
SIGNAL \regs[14][3]~q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \regs[2][3]~feeder_combout\ : std_logic;
SIGNAL \regs[2][3]~q\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \regs[6][3]~feeder_combout\ : std_logic;
SIGNAL \regs[6][3]~q\ : std_logic;
SIGNAL \regs[7][3]~q\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \regs[3][3]~q\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Mux34~6_combout\ : std_logic;
SIGNAL \regs[12][3]~q\ : std_logic;
SIGNAL \Mux34~7_combout\ : std_logic;
SIGNAL \regs[13][3]~q\ : std_logic;
SIGNAL \Mux34~8_combout\ : std_logic;
SIGNAL \Mux34~9_combout\ : std_logic;
SIGNAL \mem_d~164feeder_combout\ : std_logic;
SIGNAL \mem_d~2270_combout\ : std_logic;
SIGNAL \mem_d~164_q\ : std_logic;
SIGNAL \mem_d~2273_combout\ : std_logic;
SIGNAL \mem_d~172_q\ : std_logic;
SIGNAL \mem_d~2161_combout\ : std_logic;
SIGNAL \mem_d~2304_combout\ : std_logic;
SIGNAL \mem_d~132feeder_combout\ : std_logic;
SIGNAL \mem_d~2279_combout\ : std_logic;
SIGNAL \mem_d~132_q\ : std_logic;
SIGNAL \mem_d~116_q\ : std_logic;
SIGNAL \mem_d~2164_combout\ : std_logic;
SIGNAL \mem_d~140_q\ : std_logic;
SIGNAL \mem_d~2165_combout\ : std_logic;
SIGNAL \mem_d~2284_combout\ : std_logic;
SIGNAL \mem_d~20_q\ : std_logic;
SIGNAL \mem_d~2166_combout\ : std_logic;
SIGNAL \mem_d~44_q\ : std_logic;
SIGNAL \mem_d~2167_combout\ : std_logic;
SIGNAL \mem_d~2168_combout\ : std_logic;
SIGNAL \mem_d~2169_combout\ : std_logic;
SIGNAL \mem_d~2305_combout\ : std_logic;
SIGNAL \mem_d~1708_q\ : std_logic;
SIGNAL \mem_d~1700feeder_combout\ : std_logic;
SIGNAL \mem_d~1700_q\ : std_logic;
SIGNAL \mem_d~2151_combout\ : std_logic;
SIGNAL \mem_d~2306_combout\ : std_logic;
SIGNAL \mem_d~1572feeder_combout\ : std_logic;
SIGNAL \mem_d~2265_combout\ : std_logic;
SIGNAL \mem_d~1572_q\ : std_logic;
SIGNAL \mem_d~1580_q\ : std_logic;
SIGNAL \mem_d~1564feeder_combout\ : std_logic;
SIGNAL \mem_d~1564_q\ : std_logic;
SIGNAL \mem_d~1556_q\ : std_logic;
SIGNAL \mem_d~2156_combout\ : std_logic;
SIGNAL \mem_d~2157_combout\ : std_logic;
SIGNAL \mem_d~1676_q\ : std_logic;
SIGNAL \mem_d~1652_q\ : std_logic;
SIGNAL \mem_d~1668feeder_combout\ : std_logic;
SIGNAL \mem_d~2262_combout\ : std_logic;
SIGNAL \mem_d~1668_q\ : std_logic;
SIGNAL \mem_d~2154_combout\ : std_logic;
SIGNAL \mem_d~2155_combout\ : std_logic;
SIGNAL \mem_d~2158_combout\ : std_logic;
SIGNAL \mem_d~2159_combout\ : std_logic;
SIGNAL \mem_d~2307_combout\ : std_logic;
SIGNAL \mem_d~2290_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \regs[1][0]~q\ : std_logic;
SIGNAL \regs[3][0]~q\ : std_logic;
SIGNAL \regs[2][0]~q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \regs[0][5]~6_combout\ : std_logic;
SIGNAL \regs[0][0]~q\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mux41~6_combout\ : std_logic;
SIGNAL \regs[15][5]~q\ : std_logic;
SIGNAL \regs[13][5]~q\ : std_logic;
SIGNAL \regs[14][5]~q\ : std_logic;
SIGNAL \Mux32~7_combout\ : std_logic;
SIGNAL \Mux32~8_combout\ : std_logic;
SIGNAL \regs[8][5]~q\ : std_logic;
SIGNAL \regs[10][5]~q\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \regs[9][5]~q\ : std_logic;
SIGNAL \regs[11][5]~feeder_combout\ : std_logic;
SIGNAL \regs[11][5]~q\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~9_combout\ : std_logic;
SIGNAL \mem_d~118_q\ : std_logic;
SIGNAL \mem_d~2206_combout\ : std_logic;
SIGNAL \mem_d~142_q\ : std_logic;
SIGNAL \mem_d~2207_combout\ : std_logic;
SIGNAL \mem_d~46_q\ : std_logic;
SIGNAL \mem_d~38_q\ : std_logic;
SIGNAL \mem_d~22_q\ : std_logic;
SIGNAL \mem_d~2208_combout\ : std_logic;
SIGNAL \mem_d~2209_combout\ : std_logic;
SIGNAL \mem_d~2210_combout\ : std_logic;
SIGNAL \mem_d~2211_combout\ : std_logic;
SIGNAL \mem_d~254_q\ : std_logic;
SIGNAL \mem_d~262feeder_combout\ : std_logic;
SIGNAL \mem_d~262_q\ : std_logic;
SIGNAL \mem_d~246_q\ : std_logic;
SIGNAL \mem_d~2204_combout\ : std_logic;
SIGNAL \mem_d~2205_combout\ : std_logic;
SIGNAL \mem_d~174_q\ : std_logic;
SIGNAL \mem_d~166feeder_combout\ : std_logic;
SIGNAL \mem_d~166_q\ : std_logic;
SIGNAL \mem_d~2203_combout\ : std_logic;
SIGNAL \mem_d~2300_combout\ : std_logic;
SIGNAL \mem_d~2301_combout\ : std_logic;
SIGNAL \mem_d~1654_q\ : std_logic;
SIGNAL \mem_d~2191_combout\ : std_logic;
SIGNAL \mem_d~2261_combout\ : std_logic;
SIGNAL \mem_d~1662_q\ : std_logic;
SIGNAL \mem_d~2192_combout\ : std_logic;
SIGNAL \mem_d~1574_q\ : std_logic;
SIGNAL \mem_d~1566feeder_combout\ : std_logic;
SIGNAL \mem_d~1566_q\ : std_logic;
SIGNAL \mem_d~1558_q\ : std_logic;
SIGNAL \mem_d~2193_combout\ : std_logic;
SIGNAL \mem_d~2194_combout\ : std_logic;
SIGNAL \mem_d~2195_combout\ : std_logic;
SIGNAL \mem_d~1790_q\ : std_logic;
SIGNAL \mem_d~1798feeder_combout\ : std_logic;
SIGNAL \mem_d~1798_q\ : std_logic;
SIGNAL \mem_d~1782_q\ : std_logic;
SIGNAL \mem_d~2196_combout\ : std_logic;
SIGNAL \mem_d~2197_combout\ : std_logic;
SIGNAL \mem_d~1702_q\ : std_logic;
SIGNAL \mem_d~1694feeder_combout\ : std_logic;
SIGNAL \mem_d~1694_q\ : std_logic;
SIGNAL \mem_d~1686_q\ : std_logic;
SIGNAL \mem_d~2198_combout\ : std_logic;
SIGNAL \mem_d~2199_combout\ : std_logic;
SIGNAL \mem_d~2200_combout\ : std_logic;
SIGNAL \mem_d~2201_combout\ : std_logic;
SIGNAL \mem_d~2292_combout\ : std_logic;
SIGNAL \regs[15][4]~q\ : std_logic;
SIGNAL \regs[12][4]~q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \regs[2][4]~q\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \regs[0][2]~q\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \regs[9][6]~q\ : std_logic;
SIGNAL \regs[11][6]~q\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \regs[7][6]~q\ : std_logic;
SIGNAL \regs[5][6]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \regs[5][4]~13_combout\ : std_logic;
SIGNAL \regs[5][6]~q\ : std_logic;
SIGNAL \regs[4][2]~14_combout\ : std_logic;
SIGNAL \regs[4][6]~q\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \regs[3][6]~q\ : std_logic;
SIGNAL \regs[2][6]~q\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \mem_d~1695feeder_combout\ : std_logic;
SIGNAL \mem_d~1695_q\ : std_logic;
SIGNAL \mem_d~1687_q\ : std_logic;
SIGNAL \mem_d~2219_combout\ : std_logic;
SIGNAL \mem_d~1703_q\ : std_logic;
SIGNAL \mem_d~2220_combout\ : std_logic;
SIGNAL \mem_d~2221_combout\ : std_logic;
SIGNAL \mem_d~1575_q\ : std_logic;
SIGNAL \mem_d~1567feeder_combout\ : std_logic;
SIGNAL \mem_d~1567_q\ : std_logic;
SIGNAL \mem_d~1559_q\ : std_logic;
SIGNAL \mem_d~2214_combout\ : std_logic;
SIGNAL \mem_d~2215_combout\ : std_logic;
SIGNAL \mem_d~1655_q\ : std_logic;
SIGNAL \mem_d~2212_combout\ : std_logic;
SIGNAL \mem_d~1663_q\ : std_logic;
SIGNAL \mem_d~2213_combout\ : std_logic;
SIGNAL \mem_d~2216_combout\ : std_logic;
SIGNAL \mem_d~2222_combout\ : std_logic;
SIGNAL \mem_d~47_q\ : std_logic;
SIGNAL \mem_d~39_q\ : std_logic;
SIGNAL \mem_d~23_q\ : std_logic;
SIGNAL \mem_d~2229_combout\ : std_logic;
SIGNAL \mem_d~2230_combout\ : std_logic;
SIGNAL \mem_d~143_q\ : std_logic;
SIGNAL \mem_d~119_q\ : std_logic;
SIGNAL \mem_d~2227_combout\ : std_logic;
SIGNAL \mem_d~2228_combout\ : std_logic;
SIGNAL \mem_d~2231_combout\ : std_logic;
SIGNAL \mem_d~2232_combout\ : std_logic;
SIGNAL \mem_d~175_q\ : std_logic;
SIGNAL \mem_d~2272_combout\ : std_logic;
SIGNAL \mem_d~151_q\ : std_logic;
SIGNAL \mem_d~159feeder_combout\ : std_logic;
SIGNAL \mem_d~2271_combout\ : std_logic;
SIGNAL \mem_d~159_q\ : std_logic;
SIGNAL \mem_d~2223_combout\ : std_logic;
SIGNAL \mem_d~2224_combout\ : std_logic;
SIGNAL \mem_d~255_q\ : std_logic;
SIGNAL \mem_d~263feeder_combout\ : std_logic;
SIGNAL \mem_d~263_q\ : std_logic;
SIGNAL \mem_d~247_q\ : std_logic;
SIGNAL \mem_d~2225_combout\ : std_logic;
SIGNAL \mem_d~2226_combout\ : std_logic;
SIGNAL \mem_d~2298_combout\ : std_logic;
SIGNAL \mem_d~2299_combout\ : std_logic;
SIGNAL \mem_d~2293_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \regs[13][7]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \regs[2][7]~q\ : std_logic;
SIGNAL \regs[0][7]~q\ : std_logic;
SIGNAL \regs[1][7]~q\ : std_logic;
SIGNAL \regs[3][7]~q\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \regs[12][5]~feeder_combout\ : std_logic;
SIGNAL \regs[12][5]~q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \regs[3][5]~q\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \regs[14][6]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \regs[1][6]~q\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mux39~8_combout\ : std_logic;
SIGNAL \Mux39~9_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~10_combout\ : std_logic;
SIGNAL \regs[14][7]~q\ : std_logic;
SIGNAL \regs[12][7]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \regs[15][6]~q\ : std_logic;
SIGNAL \regs[12][6]~q\ : std_logic;
SIGNAL \regs[13][6]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \regs[0][6]~q\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \Mux41~5_combout\ : std_logic;
SIGNAL \regs[1][5]~feeder_combout\ : std_logic;
SIGNAL \regs[1][5]~q\ : std_logic;
SIGNAL \regs[0][5]~q\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \regs[13][4]~q\ : std_logic;
SIGNAL \regs[14][4]~q\ : std_logic;
SIGNAL \Mux33~7_combout\ : std_logic;
SIGNAL \Mux33~8_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \regs[6][4]~feeder_combout\ : std_logic;
SIGNAL \regs[6][4]~q\ : std_logic;
SIGNAL \regs[7][4]~q\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~6_combout\ : std_logic;
SIGNAL \regs[11][4]~q\ : std_logic;
SIGNAL \regs[9][4]~q\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~9_combout\ : std_logic;
SIGNAL \mem_d~1573_q\ : std_logic;
SIGNAL \mem_d~1565_q\ : std_logic;
SIGNAL \mem_d~2172_combout\ : std_logic;
SIGNAL \mem_d~2173_combout\ : std_logic;
SIGNAL \mem_d~2174_combout\ : std_logic;
SIGNAL \mem_d~1701_q\ : std_logic;
SIGNAL \mem_d~1693feeder_combout\ : std_logic;
SIGNAL \mem_d~1693_q\ : std_logic;
SIGNAL \mem_d~1685_q\ : std_logic;
SIGNAL \mem_d~2177_combout\ : std_logic;
SIGNAL \mem_d~2178_combout\ : std_logic;
SIGNAL \mem_d~2179_combout\ : std_logic;
SIGNAL \mem_d~2180_combout\ : std_logic;
SIGNAL \mem_d~117_q\ : std_logic;
SIGNAL \mem_d~2185_combout\ : std_logic;
SIGNAL \mem_d~141_q\ : std_logic;
SIGNAL \mem_d~2186_combout\ : std_logic;
SIGNAL \mem_d~45_q\ : std_logic;
SIGNAL \mem_d~21_q\ : std_logic;
SIGNAL \mem_d~2187_combout\ : std_logic;
SIGNAL \mem_d~2188_combout\ : std_logic;
SIGNAL \mem_d~2189_combout\ : std_logic;
SIGNAL \mem_d~2190_combout\ : std_logic;
SIGNAL \mem_d~253_q\ : std_logic;
SIGNAL \mem_d~261feeder_combout\ : std_logic;
SIGNAL \mem_d~261_q\ : std_logic;
SIGNAL \mem_d~245_q\ : std_logic;
SIGNAL \mem_d~2183_combout\ : std_logic;
SIGNAL \mem_d~2184_combout\ : std_logic;
SIGNAL \mem_d~165feeder_combout\ : std_logic;
SIGNAL \mem_d~165_q\ : std_logic;
SIGNAL \mem_d~173_q\ : std_logic;
SIGNAL \mem_d~2182_combout\ : std_logic;
SIGNAL \mem_d~2302_combout\ : std_logic;
SIGNAL \mem_d~2303_combout\ : std_logic;
SIGNAL \mem_d~2291_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \regs[1][4]~q\ : std_logic;
SIGNAL \regs[3][4]~q\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \regs[1][3]~q\ : std_logic;
SIGNAL \regs[0][3]~feeder_combout\ : std_logic;
SIGNAL \regs[0][3]~q\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \regs[15][2]~q\ : std_logic;
SIGNAL \regs[12][2]~q\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \regs[14][1]~q\ : std_logic;
SIGNAL \regs[13][1]~q\ : std_logic;
SIGNAL \regs[12][1]~q\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \regs[3][1]~q\ : std_logic;
SIGNAL \regs[0][1]~q\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \regs[15][0]~q\ : std_logic;
SIGNAL \regs[13][0]~q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \PC~13_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \PC~9_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \PC~10_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \desvio~0_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \PC~11_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \PC~17_combout\ : std_logic;
SIGNAL \Mux167~0_combout\ : std_logic;
SIGNAL \mem_d~2109_combout\ : std_logic;
SIGNAL \PC[7]~8_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \PC~16_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|le5a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|le4a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult1|auto_generated|le3a\ : std_logic_vector(9 DOWNTO 0);
SIGNAL PC : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
R0_out <= ww_R0_out;
R1_out <= ww_R1_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\Mux3~6_combout\ & \Mux4~6_combout\ & \Mux5~6_combout\ & \Mux6~6_combout\ & \Mux7~6_combout\ & \Mux8~6_combout\ & \Mux9~6_combout\ & \Mux10~6_combout\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\Mux14~4_combout\ & \Mux15~4_combout\ & \Mux16~4_combout\ & \Mux17~4_combout\ & \Mux18~4_combout\ & \Mux19~4_combout\ & \Mux20~4_combout\ & \Mux21~4_combout\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: LCCOMB_X22_Y15_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Mux21~4_combout\ & (\Mux10~6_combout\ $ (VCC))) # (!\Mux21~4_combout\ & ((\Mux10~6_combout\) # (GND)))
-- \Add1~1\ = CARRY((\Mux10~6_combout\) # (!\Mux21~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~4_combout\,
	datab => \Mux10~6_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X21_Y16_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mux9~6_combout\ & ((\Mux20~4_combout\ & (\Add0~1\ & VCC)) # (!\Mux20~4_combout\ & (!\Add0~1\)))) # (!\Mux9~6_combout\ & ((\Mux20~4_combout\ & (!\Add0~1\)) # (!\Mux20~4_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Mux9~6_combout\ & (!\Mux20~4_combout\ & !\Add0~1\)) # (!\Mux9~6_combout\ & ((!\Add0~1\) # (!\Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \Mux20~4_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y15_N22
\Mult1|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~4_combout\ = ((\Mult1|auto_generated|le3a\(4) $ (\Mult1|auto_generated|le4a\(2) $ (!\Mult1|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|auto_generated|op_1~5\ = CARRY((\Mult1|auto_generated|le3a\(4) & ((\Mult1|auto_generated|le4a\(2)) # (!\Mult1|auto_generated|op_1~3\))) # (!\Mult1|auto_generated|le3a\(4) & (\Mult1|auto_generated|le4a\(2) & !\Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(4),
	datab => \Mult1|auto_generated|le4a\(2),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~3\,
	combout => \Mult1|auto_generated|op_1~4_combout\,
	cout => \Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y15_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Mux16~4_combout\ & ((\Mux5~6_combout\ & (!\Add1~9\)) # (!\Mux5~6_combout\ & ((\Add1~9\) # (GND))))) # (!\Mux16~4_combout\ & ((\Mux5~6_combout\ & (\Add1~9\ & VCC)) # (!\Mux5~6_combout\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\Mux16~4_combout\ & ((!\Add1~9\) # (!\Mux5~6_combout\))) # (!\Mux16~4_combout\ & (!\Mux5~6_combout\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux5~6_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X25_Y15_N26
\Mult1|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~8_combout\ = ((\Mult1|auto_generated|le4a\(4) $ (\Mult1|auto_generated|le3a\(6) $ (!\Mult1|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|auto_generated|op_1~9\ = CARRY((\Mult1|auto_generated|le4a\(4) & ((\Mult1|auto_generated|le3a\(6)) # (!\Mult1|auto_generated|op_1~7\))) # (!\Mult1|auto_generated|le4a\(4) & (\Mult1|auto_generated|le3a\(6) & !\Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(4),
	datab => \Mult1|auto_generated|le3a\(6),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~7\,
	combout => \Mult1|auto_generated|op_1~8_combout\,
	cout => \Mult1|auto_generated|op_1~9\);

-- Location: FF_X24_Y15_N5
\regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][4]~q\);

-- Location: FF_X19_Y13_N27
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
	ena => \regs[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][5]~q\);

-- Location: FF_X23_Y15_N15
\regs[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][7]~q\);

-- Location: FF_X17_Y17_N13
\mem_d~1697\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux37~9_combout\,
	ena => \mem_d~2253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1697_q\);

-- Location: FF_X24_Y16_N13
\mem_d~1657\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1657feeder_combout\,
	ena => \mem_d~2261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1657_q\);

-- Location: FF_X25_Y14_N5
\mem_d~1665\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1665feeder_combout\,
	ena => \mem_d~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1665_q\);

-- Location: FF_X24_Y14_N1
\mem_d~1649\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1649_q\);

-- Location: LCCOMB_X24_Y14_N0
\mem_d~2093\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2093_combout\ = (\Mux12~1_combout\ & ((\mem_d~1665_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1649_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1665_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1649_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2093_combout\);

-- Location: FF_X24_Y14_N3
\mem_d~1673\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1673_q\);

-- Location: LCCOMB_X24_Y14_N2
\mem_d~2094\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2094_combout\ = (\Mux13~1_combout\ & ((\mem_d~2093_combout\ & ((\mem_d~1673_q\))) # (!\mem_d~2093_combout\ & (\mem_d~1657_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2093_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1657_q\,
	datac => \mem_d~1673_q\,
	datad => \mem_d~2093_combout\,
	combout => \mem_d~2094_combout\);

-- Location: FF_X24_Y17_N21
\mem_d~1569\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1569_q\);

-- Location: FF_X17_Y18_N17
\mem_d~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~161feeder_combout\,
	ena => \mem_d~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~161_q\);

-- Location: FF_X16_Y18_N1
\mem_d~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~153feeder_combout\,
	ena => \mem_d~2271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~153_q\);

-- Location: FF_X16_Y18_N23
\mem_d~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~145_q\);

-- Location: LCCOMB_X16_Y18_N22
\mem_d~2099\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2099_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~153_q\)) # (!\Mux13~1_combout\ & ((\mem_d~145_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~153_q\,
	datac => \mem_d~145_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2099_combout\);

-- Location: FF_X17_Y18_N7
\mem_d~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~169_q\);

-- Location: LCCOMB_X17_Y18_N6
\mem_d~2100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2100_combout\ = (\Mux12~1_combout\ & ((\mem_d~2099_combout\ & ((\mem_d~169_q\))) # (!\mem_d~2099_combout\ & (\mem_d~161_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2099_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~161_q\,
	datac => \mem_d~169_q\,
	datad => \mem_d~2099_combout\,
	combout => \mem_d~2100_combout\);

-- Location: FF_X17_Y15_N29
\mem_d~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~249_q\);

-- Location: FF_X16_Y15_N5
\mem_d~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~257feeder_combout\,
	ena => \mem_d~2275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~257_q\);

-- Location: FF_X16_Y15_N3
\mem_d~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~241_q\);

-- Location: LCCOMB_X16_Y15_N2
\mem_d~2101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2101_combout\ = (\Mux12~1_combout\ & ((\mem_d~257_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~241_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~257_q\,
	datac => \mem_d~241_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2101_combout\);

-- Location: FF_X17_Y15_N23
\mem_d~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~265feeder_combout\,
	ena => \mem_d~2277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~265_q\);

-- Location: LCCOMB_X17_Y15_N28
\mem_d~2102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2102_combout\ = (\Mux13~1_combout\ & ((\mem_d~2101_combout\ & (\mem_d~265_q\)) # (!\mem_d~2101_combout\ & ((\mem_d~249_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~265_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~249_q\,
	datad => \mem_d~2101_combout\,
	combout => \mem_d~2102_combout\);

-- Location: FF_X25_Y18_N29
\mem_d~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~121feeder_combout\,
	ena => \mem_d~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~121_q\);

-- Location: FF_X16_Y16_N1
\mem_d~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~129feeder_combout\,
	ena => \mem_d~2279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~129_q\);

-- Location: FF_X24_Y18_N1
\mem_d~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~113_q\);

-- Location: LCCOMB_X24_Y18_N0
\mem_d~2103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2103_combout\ = (\Mux12~1_combout\ & ((\mem_d~129_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~113_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~129_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~113_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2103_combout\);

-- Location: FF_X24_Y18_N19
\mem_d~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~137_q\);

-- Location: LCCOMB_X24_Y18_N18
\mem_d~2104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2104_combout\ = (\Mux13~1_combout\ & ((\mem_d~2103_combout\ & ((\mem_d~137_q\))) # (!\mem_d~2103_combout\ & (\mem_d~121_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~121_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~137_q\,
	datad => \mem_d~2103_combout\,
	combout => \mem_d~2104_combout\);

-- Location: FF_X24_Y16_N3
\mem_d~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~2320_combout\,
	ena => \mem_d~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~33_q\);

-- Location: FF_X25_Y18_N11
\mem_d~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~2321_combout\,
	ena => \mem_d~2283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~25_q\);

-- Location: FF_X23_Y18_N25
\mem_d~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~17_q\);

-- Location: LCCOMB_X23_Y18_N24
\mem_d~2105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2105_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (!\mem_d~25_q\)) # (!\Mux13~1_combout\ & ((\mem_d~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~25_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~17_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2105_combout\);

-- Location: FF_X23_Y18_N15
\mem_d~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~41_q\);

-- Location: LCCOMB_X23_Y18_N14
\mem_d~2106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2106_combout\ = (\Mux12~1_combout\ & ((\mem_d~2105_combout\ & ((\mem_d~41_q\))) # (!\mem_d~2105_combout\ & (!\mem_d~33_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~33_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~41_q\,
	datad => \mem_d~2105_combout\,
	combout => \mem_d~2106_combout\);

-- Location: LCCOMB_X23_Y18_N20
\mem_d~2107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2107_combout\ = (\Mux11~1_combout\ & ((\mem_d~2104_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \mem_d~2106_combout\,
	datad => \mem_d~2104_combout\,
	combout => \mem_d~2107_combout\);

-- Location: LCCOMB_X19_Y17_N18
\mem_d~2108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2108_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2107_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2107_combout\,
	combout => \mem_d~2108_combout\);

-- Location: LCCOMB_X22_Y13_N16
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Mux18~4_combout\ & (\Mux7~6_combout\ & (\Mux8~6_combout\ $ (!\Mux19~4_combout\)))) # (!\Mux18~4_combout\ & (!\Mux7~6_combout\ & (\Mux8~6_combout\ $ (!\Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~4_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux19~4_combout\,
	datad => \Mux7~6_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y13_N10
\Add4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~3_combout\ = (\Mux13~1_combout\) # (!\desvio~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux13~1_combout\,
	datad => \desvio~0_combout\,
	combout => \Add4~3_combout\);

-- Location: FF_X17_Y17_N9
\mem_d~1698\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux36~9_combout\,
	ena => \mem_d~2253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1698_q\);

-- Location: FF_X16_Y17_N9
\mem_d~1690\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1690feeder_combout\,
	ena => \mem_d~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1690_q\);

-- Location: FF_X16_Y17_N23
\mem_d~1682\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1682_q\);

-- Location: LCCOMB_X16_Y17_N22
\mem_d~2110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2110_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1690_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1682_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1690_q\,
	datac => \mem_d~1682_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2110_combout\);

-- Location: FF_X17_Y17_N23
\mem_d~1706\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1706_q\);

-- Location: LCCOMB_X17_Y17_N22
\mem_d~2111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2111_combout\ = (\Mux12~1_combout\ & ((\mem_d~2110_combout\ & ((\mem_d~1706_q\))) # (!\mem_d~2110_combout\ & (\mem_d~1698_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1698_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1706_q\,
	datad => \mem_d~2110_combout\,
	combout => \mem_d~2111_combout\);

-- Location: FF_X18_Y14_N17
\mem_d~1786\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1786_q\);

-- Location: FF_X17_Y14_N5
\mem_d~1794\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1794feeder_combout\,
	ena => \mem_d~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1794_q\);

-- Location: FF_X17_Y14_N19
\mem_d~1778\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1778_q\);

-- Location: LCCOMB_X17_Y14_N18
\mem_d~2112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2112_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1794_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1778_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1794_q\,
	datac => \mem_d~1778_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2112_combout\);

-- Location: FF_X18_Y14_N15
\mem_d~1802\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1802feeder_combout\,
	ena => \mem_d~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1802_q\);

-- Location: LCCOMB_X18_Y14_N16
\mem_d~2113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2113_combout\ = (\Mux13~1_combout\ & ((\mem_d~2112_combout\ & (\mem_d~1802_q\)) # (!\mem_d~2112_combout\ & ((\mem_d~1786_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1802_q\,
	datac => \mem_d~1786_q\,
	datad => \mem_d~2112_combout\,
	combout => \mem_d~2113_combout\);

-- Location: FF_X24_Y16_N9
\mem_d~1658\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1658feeder_combout\,
	ena => \mem_d~2261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1658_q\);

-- Location: FF_X25_Y14_N7
\mem_d~1666\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1666feeder_combout\,
	ena => \mem_d~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1666_q\);

-- Location: FF_X24_Y14_N13
\mem_d~1650\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1650_q\);

-- Location: LCCOMB_X24_Y14_N12
\mem_d~2114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2114_combout\ = (\Mux12~1_combout\ & ((\mem_d~1666_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1650_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1666_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1650_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2114_combout\);

-- Location: FF_X24_Y14_N7
\mem_d~1674\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1674_q\);

-- Location: LCCOMB_X24_Y14_N6
\mem_d~2115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2115_combout\ = (\Mux13~1_combout\ & ((\mem_d~2114_combout\ & ((\mem_d~1674_q\))) # (!\mem_d~2114_combout\ & (\mem_d~1658_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1658_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1674_q\,
	datad => \mem_d~2114_combout\,
	combout => \mem_d~2115_combout\);

-- Location: FF_X24_Y17_N1
\mem_d~1570\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1570feeder_combout\,
	ena => \mem_d~2265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1570_q\);

-- Location: FF_X25_Y17_N9
\mem_d~1562\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1562feeder_combout\,
	ena => \mem_d~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1562_q\);

-- Location: FF_X25_Y17_N23
\mem_d~1554\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1554_q\);

-- Location: LCCOMB_X25_Y17_N22
\mem_d~2116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2116_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1562_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1554_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1562_q\,
	datac => \mem_d~1554_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2116_combout\);

-- Location: FF_X21_Y18_N21
\mem_d~1578\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1578_q\);

-- Location: LCCOMB_X21_Y18_N20
\mem_d~2117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2117_combout\ = (\Mux12~1_combout\ & ((\mem_d~2116_combout\ & ((\mem_d~1578_q\))) # (!\mem_d~2116_combout\ & (\mem_d~1570_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1570_q\,
	datac => \mem_d~1578_q\,
	datad => \mem_d~2116_combout\,
	combout => \mem_d~2117_combout\);

-- Location: LCCOMB_X21_Y18_N6
\mem_d~2118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2118_combout\ = (\Mux11~1_combout\ & (\mem_d~2115_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \mem_d~2115_combout\,
	datad => \mem_d~2117_combout\,
	combout => \mem_d~2118_combout\);

-- Location: LCCOMB_X21_Y18_N0
\mem_d~2119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2119_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2118_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2118_combout\,
	combout => \mem_d~2119_combout\);

-- Location: FF_X17_Y18_N13
\mem_d~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~162feeder_combout\,
	ena => \mem_d~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~162_q\);

-- Location: FF_X16_Y18_N9
\mem_d~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~154feeder_combout\,
	ena => \mem_d~2271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~154_q\);

-- Location: FF_X16_Y18_N19
\mem_d~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~146_q\);

-- Location: LCCOMB_X16_Y18_N18
\mem_d~2120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2120_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~154_q\)) # (!\Mux13~1_combout\ & ((\mem_d~146_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~154_q\,
	datac => \mem_d~146_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2120_combout\);

-- Location: FF_X17_Y18_N3
\mem_d~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~170_q\);

-- Location: LCCOMB_X17_Y18_N2
\mem_d~2121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2121_combout\ = (\Mux12~1_combout\ & ((\mem_d~2120_combout\ & ((\mem_d~170_q\))) # (!\mem_d~2120_combout\ & (\mem_d~162_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~162_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~170_q\,
	datad => \mem_d~2120_combout\,
	combout => \mem_d~2121_combout\);

-- Location: FF_X17_Y15_N1
\mem_d~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~250_q\);

-- Location: FF_X16_Y15_N17
\mem_d~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~258feeder_combout\,
	ena => \mem_d~2275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~258_q\);

-- Location: FF_X16_Y15_N7
\mem_d~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~242_q\);

-- Location: LCCOMB_X16_Y15_N6
\mem_d~2122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2122_combout\ = (\Mux12~1_combout\ & ((\mem_d~258_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~242_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~258_q\,
	datac => \mem_d~242_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2122_combout\);

-- Location: FF_X17_Y15_N15
\mem_d~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~266feeder_combout\,
	ena => \mem_d~2277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~266_q\);

-- Location: LCCOMB_X17_Y15_N0
\mem_d~2123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2123_combout\ = (\Mux13~1_combout\ & ((\mem_d~2122_combout\ & (\mem_d~266_q\)) # (!\mem_d~2122_combout\ & ((\mem_d~250_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~266_q\,
	datac => \mem_d~250_q\,
	datad => \mem_d~2122_combout\,
	combout => \mem_d~2123_combout\);

-- Location: FF_X25_Y18_N5
\mem_d~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~122feeder_combout\,
	ena => \mem_d~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~122_q\);

-- Location: FF_X16_Y16_N19
\mem_d~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~130feeder_combout\,
	ena => \mem_d~2279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~130_q\);

-- Location: FF_X24_Y18_N9
\mem_d~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~114_q\);

-- Location: LCCOMB_X24_Y18_N8
\mem_d~2124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2124_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~130_q\)) # (!\Mux12~1_combout\ & ((\mem_d~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~130_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~114_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2124_combout\);

-- Location: FF_X24_Y18_N7
\mem_d~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~138_q\);

-- Location: LCCOMB_X24_Y18_N6
\mem_d~2125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2125_combout\ = (\mem_d~2124_combout\ & (((\mem_d~138_q\) # (!\Mux13~1_combout\)))) # (!\mem_d~2124_combout\ & (\mem_d~122_q\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~122_q\,
	datab => \mem_d~2124_combout\,
	datac => \mem_d~138_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2125_combout\);

-- Location: FF_X24_Y16_N15
\mem_d~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~2322_combout\,
	ena => \mem_d~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~34_q\);

-- Location: FF_X25_Y18_N15
\mem_d~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~26feeder_combout\,
	ena => \mem_d~2283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~26_q\);

-- Location: FF_X25_Y16_N29
\mem_d~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~18_q\);

-- Location: LCCOMB_X25_Y16_N28
\mem_d~2126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2126_combout\ = (\Mux13~1_combout\ & ((\mem_d~26_q\) # ((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~18_q\ & !\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~26_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~18_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2126_combout\);

-- Location: FF_X25_Y16_N19
\mem_d~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~42_q\);

-- Location: LCCOMB_X25_Y16_N18
\mem_d~2127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2127_combout\ = (\Mux12~1_combout\ & ((\mem_d~2126_combout\ & ((\mem_d~42_q\))) # (!\mem_d~2126_combout\ & (!\mem_d~34_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~34_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~42_q\,
	datad => \mem_d~2126_combout\,
	combout => \mem_d~2127_combout\);

-- Location: LCCOMB_X25_Y16_N16
\mem_d~2128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2128_combout\ = (\Mux11~1_combout\ & ((\mem_d~2125_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d~2127_combout\,
	datac => \Mux11~1_combout\,
	datad => \mem_d~2125_combout\,
	combout => \mem_d~2128_combout\);

-- Location: LCCOMB_X25_Y16_N14
\mem_d~2129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2129_combout\ = ((\Mux2~0_combout\ & (!\Mux1~0_combout\ & \mem_d~2128_combout\)) # (!\Mux2~0_combout\ & (\Mux1~0_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \mem_d~2128_combout\,
	combout => \mem_d~2129_combout\);

-- Location: LCCOMB_X19_Y16_N6
\Mux45~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (\Mux169~1_combout\ & (\Add0~2_combout\ & (\Mux168~1_combout\))) # (!\Mux169~1_combout\ & (((\mem_d~2287_combout\) # (!\Mux168~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Add0~2_combout\,
	datac => \Mux168~1_combout\,
	datad => \mem_d~2287_combout\,
	combout => \Mux45~2_combout\);

-- Location: FF_X16_Y17_N17
\mem_d~1691\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1691feeder_combout\,
	ena => \mem_d~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1691_q\);

-- Location: FF_X16_Y17_N11
\mem_d~1683\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1683_q\);

-- Location: LCCOMB_X16_Y17_N10
\mem_d~2130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2130_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1691_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1683_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1691_q\,
	datac => \mem_d~1683_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2130_combout\);

-- Location: FF_X18_Y14_N9
\mem_d~1787\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1787_q\);

-- Location: FF_X17_Y14_N17
\mem_d~1795\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1795feeder_combout\,
	ena => \mem_d~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1795_q\);

-- Location: FF_X17_Y14_N3
\mem_d~1779\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1779_q\);

-- Location: LCCOMB_X17_Y14_N2
\mem_d~2132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2132_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1795_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1779_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1795_q\,
	datac => \mem_d~1779_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2132_combout\);

-- Location: FF_X18_Y14_N11
\mem_d~1803\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1803feeder_combout\,
	ena => \mem_d~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1803_q\);

-- Location: LCCOMB_X18_Y14_N8
\mem_d~2133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2133_combout\ = (\Mux13~1_combout\ & ((\mem_d~2132_combout\ & (\mem_d~1803_q\)) # (!\mem_d~2132_combout\ & ((\mem_d~1787_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1803_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1787_q\,
	datad => \mem_d~2132_combout\,
	combout => \mem_d~2133_combout\);

-- Location: FF_X24_Y16_N5
\mem_d~1659\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1659feeder_combout\,
	ena => \mem_d~2261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1659_q\);

-- Location: FF_X25_Y14_N17
\mem_d~1667\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1667feeder_combout\,
	ena => \mem_d~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1667_q\);

-- Location: FF_X24_Y17_N11
\mem_d~1571\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1571_q\);

-- Location: FF_X17_Y18_N21
\mem_d~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~163feeder_combout\,
	ena => \mem_d~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~163_q\);

-- Location: FF_X16_Y18_N13
\mem_d~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~155feeder_combout\,
	ena => \mem_d~2271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~155_q\);

-- Location: FF_X16_Y18_N31
\mem_d~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~147_q\);

-- Location: LCCOMB_X16_Y18_N30
\mem_d~2140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2140_combout\ = (\Mux13~1_combout\ & ((\Mux12~1_combout\) # ((\mem_d~155_q\)))) # (!\Mux13~1_combout\ & (!\Mux12~1_combout\ & (\mem_d~147_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~147_q\,
	datad => \mem_d~155_q\,
	combout => \mem_d~2140_combout\);

-- Location: FF_X17_Y18_N27
\mem_d~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~171_q\);

-- Location: LCCOMB_X17_Y18_N26
\mem_d~2141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2141_combout\ = (\Mux12~1_combout\ & ((\mem_d~2140_combout\ & ((\mem_d~171_q\))) # (!\mem_d~2140_combout\ & (\mem_d~163_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~163_q\,
	datac => \mem_d~171_q\,
	datad => \mem_d~2140_combout\,
	combout => \mem_d~2141_combout\);

-- Location: FF_X17_Y15_N27
\mem_d~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~267feeder_combout\,
	ena => \mem_d~2277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~267_q\);

-- Location: FF_X25_Y18_N13
\mem_d~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~123feeder_combout\,
	ena => \mem_d~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~123_q\);

-- Location: FF_X16_Y16_N17
\mem_d~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~131feeder_combout\,
	ena => \mem_d~2279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~131_q\);

-- Location: FF_X25_Y18_N3
\mem_d~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~27feeder_combout\,
	ena => \mem_d~2283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~27_q\);

-- Location: FF_X23_Y18_N7
\mem_d~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~19_q\);

-- Location: LCCOMB_X23_Y18_N6
\mem_d~2146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2146_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~27_q\)) # (!\Mux13~1_combout\ & ((\mem_d~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~27_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~19_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2146_combout\);

-- Location: FF_X16_Y17_N29
\mem_d~1692\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1692feeder_combout\,
	ena => \mem_d~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1692_q\);

-- Location: FF_X16_Y17_N27
\mem_d~1684\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1684_q\);

-- Location: LCCOMB_X16_Y17_N26
\mem_d~2150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2150_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1692_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1684_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1692_q\,
	datac => \mem_d~1684_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2150_combout\);

-- Location: FF_X18_Y14_N29
\mem_d~1788\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1788_q\);

-- Location: FF_X17_Y14_N9
\mem_d~1796\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1796feeder_combout\,
	ena => \mem_d~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1796_q\);

-- Location: FF_X17_Y14_N23
\mem_d~1780\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1780_q\);

-- Location: LCCOMB_X17_Y14_N22
\mem_d~2152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2152_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1796_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1780_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1796_q\,
	datac => \mem_d~1780_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2152_combout\);

-- Location: FF_X18_Y14_N31
\mem_d~1804\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1804feeder_combout\,
	ena => \mem_d~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1804_q\);

-- Location: LCCOMB_X18_Y14_N28
\mem_d~2153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2153_combout\ = (\Mux13~1_combout\ & ((\mem_d~2152_combout\ & (\mem_d~1804_q\)) # (!\mem_d~2152_combout\ & ((\mem_d~1788_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1804_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1788_q\,
	datad => \mem_d~2152_combout\,
	combout => \mem_d~2153_combout\);

-- Location: FF_X24_Y16_N17
\mem_d~1660\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1660feeder_combout\,
	ena => \mem_d~2261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1660_q\);

-- Location: FF_X16_Y18_N17
\mem_d~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~156feeder_combout\,
	ena => \mem_d~2271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~156_q\);

-- Location: FF_X16_Y18_N3
\mem_d~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~148_q\);

-- Location: LCCOMB_X16_Y18_N2
\mem_d~2160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2160_combout\ = (\Mux13~1_combout\ & ((\Mux12~1_combout\) # ((\mem_d~156_q\)))) # (!\Mux13~1_combout\ & (!\Mux12~1_combout\ & (\mem_d~148_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~148_q\,
	datad => \mem_d~156_q\,
	combout => \mem_d~2160_combout\);

-- Location: FF_X17_Y15_N17
\mem_d~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~252_q\);

-- Location: FF_X16_Y15_N1
\mem_d~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~260feeder_combout\,
	ena => \mem_d~2275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~260_q\);

-- Location: FF_X16_Y15_N15
\mem_d~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~244_q\);

-- Location: LCCOMB_X16_Y15_N14
\mem_d~2162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2162_combout\ = (\Mux12~1_combout\ & ((\mem_d~260_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~244_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~260_q\,
	datac => \mem_d~244_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2162_combout\);

-- Location: FF_X17_Y15_N3
\mem_d~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~268feeder_combout\,
	ena => \mem_d~2277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~268_q\);

-- Location: LCCOMB_X17_Y15_N16
\mem_d~2163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2163_combout\ = (\Mux13~1_combout\ & ((\mem_d~2162_combout\ & (\mem_d~268_q\)) # (!\mem_d~2162_combout\ & ((\mem_d~252_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~268_q\,
	datac => \mem_d~252_q\,
	datad => \mem_d~2162_combout\,
	combout => \mem_d~2163_combout\);

-- Location: FF_X25_Y18_N1
\mem_d~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~124feeder_combout\,
	ena => \mem_d~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~124_q\);

-- Location: FF_X24_Y16_N19
\mem_d~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~36feeder_combout\,
	ena => \mem_d~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~36_q\);

-- Location: FF_X25_Y18_N31
\mem_d~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~28feeder_combout\,
	ena => \mem_d~2283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~28_q\);

-- Location: FF_X24_Y16_N25
\mem_d~1661\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1661_q\);

-- Location: FF_X25_Y14_N23
\mem_d~1669\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1669feeder_combout\,
	ena => \mem_d~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1669_q\);

-- Location: FF_X25_Y14_N13
\mem_d~1653\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1653_q\);

-- Location: LCCOMB_X25_Y14_N12
\mem_d~2170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2170_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1669_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1653_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1669_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1653_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2170_combout\);

-- Location: FF_X24_Y14_N5
\mem_d~1677\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1677_q\);

-- Location: LCCOMB_X24_Y16_N24
\mem_d~2171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2171_combout\ = (\Mux13~1_combout\ & ((\mem_d~2170_combout\ & (\mem_d~1677_q\)) # (!\mem_d~2170_combout\ & ((\mem_d~1661_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1677_q\,
	datac => \mem_d~1661_q\,
	datad => \mem_d~2170_combout\,
	combout => \mem_d~2171_combout\);

-- Location: FF_X25_Y17_N11
\mem_d~1557\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1557feeder_combout\,
	ena => \mem_d~2267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1557_q\);

-- Location: FF_X24_Y17_N31
\mem_d~1581\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux33~9_combout\,
	ena => \mem_d~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1581_q\);

-- Location: FF_X18_Y14_N1
\mem_d~1789\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1789_q\);

-- Location: FF_X17_Y14_N29
\mem_d~1797\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1797feeder_combout\,
	ena => \mem_d~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1797_q\);

-- Location: FF_X17_Y14_N27
\mem_d~1781\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1781_q\);

-- Location: LCCOMB_X17_Y14_N26
\mem_d~2175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2175_combout\ = (\Mux13~1_combout\ & (\Mux12~1_combout\)) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~1797_q\))) # (!\Mux12~1_combout\ & (\mem_d~1781_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1781_q\,
	datad => \mem_d~1797_q\,
	combout => \mem_d~2175_combout\);

-- Location: FF_X18_Y14_N7
\mem_d~1805\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1805feeder_combout\,
	ena => \mem_d~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1805_q\);

-- Location: LCCOMB_X18_Y14_N0
\mem_d~2176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2176_combout\ = (\mem_d~2175_combout\ & (((\mem_d~1805_q\)) # (!\Mux13~1_combout\))) # (!\mem_d~2175_combout\ & (\Mux13~1_combout\ & (\mem_d~1789_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2175_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1789_q\,
	datad => \mem_d~1805_q\,
	combout => \mem_d~2176_combout\);

-- Location: FF_X17_Y17_N31
\mem_d~1709\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1709feeder_combout\,
	ena => \mem_d~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1709_q\);

-- Location: FF_X16_Y18_N29
\mem_d~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~157feeder_combout\,
	ena => \mem_d~2271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~157_q\);

-- Location: FF_X16_Y18_N15
\mem_d~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~149_q\);

-- Location: LCCOMB_X16_Y18_N14
\mem_d~2181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2181_combout\ = (\Mux13~1_combout\ & ((\Mux12~1_combout\) # ((\mem_d~157_q\)))) # (!\Mux13~1_combout\ & (!\Mux12~1_combout\ & (\mem_d~149_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~149_q\,
	datad => \mem_d~157_q\,
	combout => \mem_d~2181_combout\);

-- Location: FF_X17_Y15_N11
\mem_d~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~269feeder_combout\,
	ena => \mem_d~2277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~269_q\);

-- Location: FF_X25_Y18_N21
\mem_d~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~125feeder_combout\,
	ena => \mem_d~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~125_q\);

-- Location: FF_X16_Y16_N13
\mem_d~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~133feeder_combout\,
	ena => \mem_d~2279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~133_q\);

-- Location: FF_X24_Y16_N23
\mem_d~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~37feeder_combout\,
	ena => \mem_d~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~37_q\);

-- Location: FF_X25_Y18_N27
\mem_d~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~29feeder_combout\,
	ena => \mem_d~2283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~29_q\);

-- Location: FF_X25_Y14_N27
\mem_d~1670\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1670feeder_combout\,
	ena => \mem_d~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1670_q\);

-- Location: FF_X24_Y14_N23
\mem_d~1678\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1678feeder_combout\,
	ena => \mem_d~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1678_q\);

-- Location: FF_X24_Y17_N23
\mem_d~1582\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1582feeder_combout\,
	ena => \mem_d~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1582_q\);

-- Location: FF_X18_Y14_N23
\mem_d~1806\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1806feeder_combout\,
	ena => \mem_d~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1806_q\);

-- Location: FF_X17_Y17_N7
\mem_d~1710\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1710feeder_combout\,
	ena => \mem_d~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1710_q\);

-- Location: FF_X16_Y18_N25
\mem_d~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~158feeder_combout\,
	ena => \mem_d~2271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~158_q\);

-- Location: FF_X16_Y18_N27
\mem_d~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~150_q\);

-- Location: LCCOMB_X16_Y18_N26
\mem_d~2202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2202_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~158_q\)) # (!\Mux13~1_combout\ & ((\mem_d~150_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~158_q\,
	datac => \mem_d~150_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2202_combout\);

-- Location: FF_X17_Y15_N7
\mem_d~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~270feeder_combout\,
	ena => \mem_d~2277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~270_q\);

-- Location: FF_X25_Y18_N9
\mem_d~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~126feeder_combout\,
	ena => \mem_d~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~126_q\);

-- Location: FF_X16_Y16_N23
\mem_d~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~134feeder_combout\,
	ena => \mem_d~2279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~134_q\);

-- Location: FF_X25_Y18_N19
\mem_d~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~30feeder_combout\,
	ena => \mem_d~2283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~30_q\);

-- Location: FF_X25_Y14_N11
\mem_d~1671\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1671feeder_combout\,
	ena => \mem_d~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1671_q\);

-- Location: FF_X16_Y16_N25
\mem_d~1679\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1679feeder_combout\,
	ena => \mem_d~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1679_q\);

-- Location: FF_X24_Y17_N13
\mem_d~1583\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1583feeder_combout\,
	ena => \mem_d~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1583_q\);

-- Location: FF_X18_Y14_N5
\mem_d~1791\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1791_q\);

-- Location: FF_X17_Y14_N1
\mem_d~1799\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1799feeder_combout\,
	ena => \mem_d~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1799_q\);

-- Location: FF_X17_Y14_N15
\mem_d~1783\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1783_q\);

-- Location: LCCOMB_X17_Y14_N14
\mem_d~2217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2217_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1799_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1783_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1799_q\,
	datac => \mem_d~1783_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2217_combout\);

-- Location: FF_X18_Y14_N27
\mem_d~1807\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1807feeder_combout\,
	ena => \mem_d~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1807_q\);

-- Location: LCCOMB_X18_Y14_N4
\mem_d~2218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2218_combout\ = (\Mux13~1_combout\ & ((\mem_d~2217_combout\ & (\mem_d~1807_q\)) # (!\mem_d~2217_combout\ & ((\mem_d~1791_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1807_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1791_q\,
	datad => \mem_d~2217_combout\,
	combout => \mem_d~2218_combout\);

-- Location: FF_X17_Y17_N11
\mem_d~1711\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1711_q\);

-- Location: FF_X18_Y16_N13
\mem_d~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~167feeder_combout\,
	ena => \mem_d~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~167_q\);

-- Location: FF_X17_Y15_N31
\mem_d~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~271feeder_combout\,
	ena => \mem_d~2277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~271_q\);

-- Location: FF_X25_Y18_N17
\mem_d~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~127feeder_combout\,
	ena => \mem_d~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~127_q\);

-- Location: FF_X16_Y16_N3
\mem_d~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~135feeder_combout\,
	ena => \mem_d~2279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~135_q\);

-- Location: FF_X25_Y18_N23
\mem_d~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~31feeder_combout\,
	ena => \mem_d~2283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~31_q\);

-- Location: FF_X24_Y17_N19
\mem_d~1576\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1576_q\);

-- Location: FF_X25_Y17_N13
\mem_d~1568\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1568feeder_combout\,
	ena => \mem_d~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1568_q\);

-- Location: FF_X25_Y17_N15
\mem_d~1560\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1560_q\);

-- Location: LCCOMB_X25_Y17_N14
\mem_d~2233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2233_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1568_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1560_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1568_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1560_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2233_combout\);

-- Location: FF_X24_Y17_N25
\mem_d~1584\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1584feeder_combout\,
	ena => \mem_d~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1584_q\);

-- Location: LCCOMB_X24_Y17_N18
\mem_d~2234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2234_combout\ = (\Mux12~1_combout\ & ((\mem_d~2233_combout\ & ((\mem_d~1584_q\))) # (!\mem_d~2233_combout\ & (\mem_d~1576_q\)))) # (!\Mux12~1_combout\ & (\mem_d~2233_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~2233_combout\,
	datac => \mem_d~1576_q\,
	datad => \mem_d~1584_q\,
	combout => \mem_d~2234_combout\);

-- Location: FF_X17_Y17_N5
\mem_d~1704\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1704_q\);

-- Location: FF_X16_Y17_N13
\mem_d~1696\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1696feeder_combout\,
	ena => \mem_d~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1696_q\);

-- Location: FF_X16_Y17_N31
\mem_d~1688\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1688_q\);

-- Location: LCCOMB_X16_Y17_N30
\mem_d~2235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2235_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1696_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1688_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1696_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1688_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2235_combout\);

-- Location: FF_X17_Y17_N27
\mem_d~1712\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1712feeder_combout\,
	ena => \mem_d~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1712_q\);

-- Location: LCCOMB_X17_Y17_N4
\mem_d~2236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2236_combout\ = (\Mux12~1_combout\ & ((\mem_d~2235_combout\ & (\mem_d~1712_q\)) # (!\mem_d~2235_combout\ & ((\mem_d~1704_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1712_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1704_q\,
	datad => \mem_d~2235_combout\,
	combout => \mem_d~2236_combout\);

-- Location: FF_X24_Y16_N29
\mem_d~1664\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1664_q\);

-- Location: FF_X25_Y14_N31
\mem_d~1672\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1672feeder_combout\,
	ena => \mem_d~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1672_q\);

-- Location: FF_X25_Y14_N25
\mem_d~1656\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1656_q\);

-- Location: LCCOMB_X25_Y14_N24
\mem_d~2237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2237_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1672_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1656_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1672_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1656_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2237_combout\);

-- Location: FF_X16_Y16_N21
\mem_d~1680\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1680feeder_combout\,
	ena => \mem_d~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1680_q\);

-- Location: LCCOMB_X24_Y16_N28
\mem_d~2238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2238_combout\ = (\mem_d~2237_combout\ & ((\mem_d~1680_q\) # ((!\Mux13~1_combout\)))) # (!\mem_d~2237_combout\ & (((\mem_d~1664_q\ & \Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1680_q\,
	datab => \mem_d~2237_combout\,
	datac => \mem_d~1664_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2238_combout\);

-- Location: FF_X18_Y14_N13
\mem_d~1792\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1792feeder_combout\,
	ena => \mem_d~2257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1792_q\);

-- Location: FF_X17_Y14_N13
\mem_d~1800\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1800feeder_combout\,
	ena => \mem_d~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1800_q\);

-- Location: FF_X17_Y14_N11
\mem_d~1784\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1784_q\);

-- Location: LCCOMB_X17_Y14_N10
\mem_d~2239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2239_combout\ = (\Mux13~1_combout\ & (\Mux12~1_combout\)) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~1800_q\))) # (!\Mux12~1_combout\ & (\mem_d~1784_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1784_q\,
	datad => \mem_d~1800_q\,
	combout => \mem_d~2239_combout\);

-- Location: FF_X18_Y14_N19
\mem_d~1808\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1808_q\);

-- Location: LCCOMB_X18_Y14_N18
\mem_d~2240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2240_combout\ = (\Mux13~1_combout\ & ((\mem_d~2239_combout\ & ((\mem_d~1808_q\))) # (!\mem_d~2239_combout\ & (\mem_d~1792_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1792_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1808_q\,
	datad => \mem_d~2239_combout\,
	combout => \mem_d~2240_combout\);

-- Location: LCCOMB_X23_Y15_N22
\Mux39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (\Mux2~1_combout\ & (((\mem_d~2240_combout\)) # (!\Mux11~1_combout\))) # (!\Mux2~1_combout\ & (\Mux11~1_combout\ & ((\mem_d~2238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2240_combout\,
	datad => \mem_d~2238_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X21_Y15_N6
\Mux39~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = (\Mux11~1_combout\ & (((\Mux39~4_combout\)))) # (!\Mux11~1_combout\ & ((\Mux39~4_combout\ & (\mem_d~2236_combout\)) # (!\Mux39~4_combout\ & ((\mem_d~2234_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2236_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2234_combout\,
	datad => \Mux39~4_combout\,
	combout => \Mux39~5_combout\);

-- Location: FF_X25_Y18_N25
\mem_d~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~128feeder_combout\,
	ena => \mem_d~2278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~128_q\);

-- Location: FF_X16_Y16_N7
\mem_d~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~136feeder_combout\,
	ena => \mem_d~2279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~136_q\);

-- Location: FF_X24_Y18_N17
\mem_d~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~120_q\);

-- Location: LCCOMB_X24_Y18_N16
\mem_d~2241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2241_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~136_q\)) # (!\Mux12~1_combout\ & ((\mem_d~120_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~136_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~120_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2241_combout\);

-- Location: FF_X24_Y18_N23
\mem_d~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~144_q\);

-- Location: LCCOMB_X24_Y18_N22
\mem_d~2242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2242_combout\ = (\Mux13~1_combout\ & ((\mem_d~2241_combout\ & ((\mem_d~144_q\))) # (!\mem_d~2241_combout\ & (\mem_d~128_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2241_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~128_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~144_q\,
	datad => \mem_d~2241_combout\,
	combout => \mem_d~2242_combout\);

-- Location: FF_X24_Y16_N11
\mem_d~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~40feeder_combout\,
	ena => \mem_d~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~40_q\);

-- Location: FF_X25_Y18_N7
\mem_d~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~32feeder_combout\,
	ena => \mem_d~2283_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~32_q\);

-- Location: FF_X23_Y18_N3
\mem_d~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~24_q\);

-- Location: LCCOMB_X23_Y18_N2
\mem_d~2243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2243_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~32_q\)) # (!\Mux13~1_combout\ & ((\mem_d~24_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~32_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~24_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2243_combout\);

-- Location: FF_X23_Y18_N17
\mem_d~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~48_q\);

-- Location: LCCOMB_X23_Y18_N16
\mem_d~2244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2244_combout\ = (\Mux12~1_combout\ & ((\mem_d~2243_combout\ & ((\mem_d~48_q\))) # (!\mem_d~2243_combout\ & (\mem_d~40_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~40_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~48_q\,
	datad => \mem_d~2243_combout\,
	combout => \mem_d~2244_combout\);

-- Location: LCCOMB_X23_Y18_N4
\mem_d~2245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2245_combout\ = (\Mux11~1_combout\ & ((\mem_d~2242_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2244_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2244_combout\,
	datad => \mem_d~2242_combout\,
	combout => \mem_d~2245_combout\);

-- Location: LCCOMB_X19_Y17_N28
\mem_d~2246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2246_combout\ = ((\Mux2~0_combout\ & (!\Mux1~0_combout\ & \mem_d~2245_combout\)) # (!\Mux2~0_combout\ & (\Mux1~0_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \mem_d~2245_combout\,
	combout => \mem_d~2246_combout\);

-- Location: FF_X17_Y15_N21
\mem_d~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~256feeder_combout\,
	ena => \mem_d~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~256_q\);

-- Location: FF_X16_Y15_N13
\mem_d~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~264feeder_combout\,
	ena => \mem_d~2275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~264_q\);

-- Location: FF_X16_Y15_N27
\mem_d~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~248feeder_combout\,
	ena => \mem_d~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~248_q\);

-- Location: LCCOMB_X17_Y16_N12
\mem_d~2247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2247_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~264_q\))) # (!\Mux12~1_combout\ & (\mem_d~248_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~248_q\,
	datab => \Mux13~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~264_q\,
	combout => \mem_d~2247_combout\);

-- Location: FF_X17_Y16_N27
\mem_d~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2277_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~272_q\);

-- Location: LCCOMB_X17_Y16_N26
\mem_d~2248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2248_combout\ = (\Mux13~1_combout\ & ((\mem_d~2247_combout\ & ((\mem_d~272_q\))) # (!\mem_d~2247_combout\ & (\mem_d~256_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~256_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~272_q\,
	datad => \mem_d~2247_combout\,
	combout => \mem_d~2248_combout\);

-- Location: FF_X18_Y16_N19
\mem_d~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~168_q\);

-- Location: FF_X17_Y16_N21
\mem_d~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~160feeder_combout\,
	ena => \mem_d~2271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~160_q\);

-- Location: FF_X18_Y16_N29
\mem_d~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~152_q\);

-- Location: LCCOMB_X18_Y16_N28
\mem_d~2249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2249_combout\ = (\Mux13~1_combout\ & ((\Mux12~1_combout\) # ((\mem_d~160_q\)))) # (!\Mux13~1_combout\ & (!\Mux12~1_combout\ & (\mem_d~152_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~152_q\,
	datad => \mem_d~160_q\,
	combout => \mem_d~2249_combout\);

-- Location: FF_X17_Y18_N11
\mem_d~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux30~9_combout\,
	ena => \mem_d~2273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~176_q\);

-- Location: LCCOMB_X18_Y16_N18
\mem_d~2250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2250_combout\ = (\Mux12~1_combout\ & ((\mem_d~2249_combout\ & (\mem_d~176_q\)) # (!\mem_d~2249_combout\ & ((\mem_d~168_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~176_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~168_q\,
	datad => \mem_d~2249_combout\,
	combout => \mem_d~2250_combout\);

-- Location: LCCOMB_X18_Y16_N14
\Mux39~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~6_combout\ = (\Mux2~1_combout\ & ((\Mux11~1_combout\ & (\mem_d~2248_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2250_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2248_combout\,
	datad => \mem_d~2250_combout\,
	combout => \Mux39~6_combout\);

-- Location: LCCOMB_X22_Y15_N22
\Mux39~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~7_combout\ = (\Mux0~1_combout\ & (!\Mux1~2_combout\ & (\Mux39~5_combout\))) # (!\Mux0~1_combout\ & (((\Mux39~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux1~2_combout\,
	datac => \Mux39~5_combout\,
	datad => \Mux39~11_combout\,
	combout => \Mux39~7_combout\);

-- Location: FF_X18_Y18_N9
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
	ena => \regs[5][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][0]~q\);

-- Location: FF_X18_Y18_N23
\regs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][0]~q\);

-- Location: LCCOMB_X18_Y18_N22
\Mux37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[5][0]~q\)) # (!\Mux29~1_combout\ & ((\regs[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[5][0]~q\,
	datac => \regs[4][0]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X19_Y16_N28
\Mux37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[1][0]~q\)) # (!\Mux29~1_combout\ & ((\regs[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][0]~q\,
	datab => \regs[0][0]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X19_Y16_N30
\Mux37~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~5_combout\ = (\Mux28~1_combout\ & ((\Mux37~4_combout\ & (\regs[3][0]~q\)) # (!\Mux37~4_combout\ & ((\regs[2][0]~q\))))) # (!\Mux28~1_combout\ & (((\Mux37~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][0]~q\,
	datab => \Mux28~1_combout\,
	datac => \regs[2][0]~q\,
	datad => \Mux37~4_combout\,
	combout => \Mux37~5_combout\);

-- Location: LCCOMB_X17_Y16_N8
\mem_d~2277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2277_combout\ = (\Mux12~1_combout\ & (\Mux13~1_combout\ & (\Mux11~1_combout\ & \mem_d~2296_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \mem_d~2296_combout\,
	combout => \mem_d~2277_combout\);

-- Location: LCCOMB_X24_Y14_N26
\mem_d~2278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2278_combout\ = (\mem_d~2269_combout\ & (\Mux13~1_combout\ & (\mem_d~2288_combout\ & !\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2269_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2288_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2278_combout\);

-- Location: LCCOMB_X25_Y16_N2
\mem_d~2283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2283_combout\ = (!\Mux11~1_combout\ & (!\Mux12~1_combout\ & (\Mux13~1_combout\ & \mem_d~2297_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux13~1_combout\,
	datad => \mem_d~2297_combout\,
	combout => \mem_d~2283_combout\);

-- Location: FF_X22_Y18_N21
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
	ena => \regs[9][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][1]~q\);

-- Location: FF_X18_Y15_N17
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
	ena => \regs[10][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][1]~q\);

-- Location: FF_X18_Y15_N31
\regs[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][1]~q\);

-- Location: LCCOMB_X18_Y15_N30
\Mux36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][1]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[10][1]~q\,
	datac => \regs[8][1]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux36~0_combout\);

-- Location: FF_X22_Y18_N19
\regs[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][1]~q\);

-- Location: LCCOMB_X22_Y18_N18
\Mux36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux29~1_combout\ & ((\Mux36~0_combout\ & ((\regs[11][1]~q\))) # (!\Mux36~0_combout\ & (\regs[9][1]~q\)))) # (!\Mux29~1_combout\ & (((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[9][1]~q\,
	datac => \regs[11][1]~q\,
	datad => \Mux36~0_combout\,
	combout => \Mux36~1_combout\);

-- Location: FF_X19_Y16_N19
\regs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][1]~q\);

-- Location: FF_X18_Y18_N29
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
	ena => \regs[5][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][1]~q\);

-- Location: FF_X18_Y18_N7
\regs[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][1]~q\);

-- Location: LCCOMB_X18_Y18_N6
\Mux36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux29~1_combout\ & ((\regs[5][1]~q\) # ((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (((\regs[4][1]~q\ & !\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][1]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[4][1]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux36~2_combout\);

-- Location: FF_X19_Y16_N11
\regs[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[7][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][1]~q\);

-- Location: LCCOMB_X19_Y16_N18
\Mux36~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux36~2_combout\ & (((\regs[7][1]~q\)) # (!\Mux28~1_combout\))) # (!\Mux36~2_combout\ & (\Mux28~1_combout\ & (\regs[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~2_combout\,
	datab => \Mux28~1_combout\,
	datac => \regs[6][1]~q\,
	datad => \regs[7][1]~q\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Mux36~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (\Mux29~1_combout\ & ((\regs[1][1]~q\) # ((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (((\regs[0][1]~q\ & !\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][1]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[0][1]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X23_Y17_N2
\Mux36~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~5_combout\ = (\Mux36~4_combout\ & (((\regs[3][1]~q\) # (!\Mux28~1_combout\)))) # (!\Mux36~4_combout\ & (\regs[2][1]~q\ & ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~4_combout\,
	datab => \regs[2][1]~q\,
	datac => \regs[3][1]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux36~5_combout\);

-- Location: LCCOMB_X19_Y17_N14
\Mux36~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~6_combout\ = (\Mux11~1_combout\ & (((\Mux0~1_combout\) # (\Mux36~3_combout\)))) # (!\Mux11~1_combout\ & (\Mux36~5_combout\ & (!\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~5_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux36~3_combout\,
	combout => \Mux36~6_combout\);

-- Location: LCCOMB_X23_Y16_N0
\Mux36~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~7_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & ((\regs[14][1]~q\))) # (!\Mux28~1_combout\ & (\regs[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][1]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[14][1]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux36~7_combout\);

-- Location: LCCOMB_X23_Y16_N2
\Mux36~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~8_combout\ = (\Mux36~7_combout\ & (((\regs[15][1]~q\)) # (!\Mux29~1_combout\))) # (!\Mux36~7_combout\ & (\Mux29~1_combout\ & (\regs[13][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~7_combout\,
	datab => \Mux29~1_combout\,
	datac => \regs[13][1]~q\,
	datad => \regs[15][1]~q\,
	combout => \Mux36~8_combout\);

-- Location: LCCOMB_X17_Y17_N8
\Mux36~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~9_combout\ = (\Mux0~1_combout\ & ((\Mux36~6_combout\ & (\Mux36~8_combout\)) # (!\Mux36~6_combout\ & ((\Mux36~1_combout\))))) # (!\Mux0~1_combout\ & (\Mux36~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux36~6_combout\,
	datac => \Mux36~8_combout\,
	datad => \Mux36~1_combout\,
	combout => \Mux36~9_combout\);

-- Location: FF_X22_Y18_N31
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
	ena => \regs[11][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][2]~q\);

-- Location: FF_X21_Y17_N21
\regs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][2]~q\);

-- Location: FF_X18_Y18_N17
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
	ena => \regs[5][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][2]~q\);

-- Location: FF_X18_Y18_N19
\regs[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][2]~q\);

-- Location: LCCOMB_X18_Y18_N18
\Mux35~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux29~1_combout\ & ((\regs[5][2]~q\) # ((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (((\regs[4][2]~q\ & !\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][2]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[4][2]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux35~2_combout\);

-- Location: FF_X21_Y17_N11
\regs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[7][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][2]~q\);

-- Location: LCCOMB_X21_Y17_N20
\Mux35~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux28~1_combout\ & ((\Mux35~2_combout\ & (\regs[7][2]~q\)) # (!\Mux35~2_combout\ & ((\regs[6][2]~q\))))) # (!\Mux28~1_combout\ & (((\Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[7][2]~q\,
	datab => \Mux28~1_combout\,
	datac => \regs[6][2]~q\,
	datad => \Mux35~2_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X21_Y14_N26
\Mux35~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~7_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & ((\regs[14][2]~q\))) # (!\Mux28~1_combout\ & (\regs[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][2]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[14][2]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux35~7_combout\);

-- Location: LCCOMB_X21_Y13_N2
\Mult1|auto_generated|le3a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(3) = LCELL((\Mux13~1_combout\ & (\Mux12~1_combout\ $ ((\Mux7~6_combout\)))) # (!\Mux13~1_combout\ & (\Mux12~1_combout\ & ((!\Mux8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux7~6_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mult1|auto_generated|le3a\(3));

-- Location: FF_X22_Y18_N15
\regs[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][3]~q\);

-- Location: FF_X18_Y15_N9
\regs[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[10][3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][3]~q\);

-- Location: FF_X18_Y15_N7
\regs[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][3]~q\);

-- Location: LCCOMB_X18_Y15_N6
\Mux34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][3]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[10][3]~q\,
	datac => \regs[8][3]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux34~0_combout\);

-- Location: FF_X22_Y18_N9
\regs[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][3]~q\);

-- Location: LCCOMB_X22_Y18_N8
\Mux34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux29~1_combout\ & ((\Mux34~0_combout\ & ((\regs[11][3]~q\))) # (!\Mux34~0_combout\ & (\regs[9][3]~q\)))) # (!\Mux29~1_combout\ & (((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[9][3]~q\,
	datac => \regs[11][3]~q\,
	datad => \Mux34~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: FF_X18_Y18_N21
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
	ena => \regs[5][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][3]~q\);

-- Location: FF_X18_Y18_N27
\regs[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][3]~q\);

-- Location: LCCOMB_X18_Y18_N26
\Mux34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[5][3]~q\)) # (!\Mux29~1_combout\ & ((\regs[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[5][3]~q\,
	datac => \regs[4][3]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X24_Y15_N16
\Mult1|auto_generated|le3a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(4) = LCELL((\Mux13~1_combout\ & (\Mux6~6_combout\ $ ((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & (((\Mux12~1_combout\ & !\Mux7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mult1|auto_generated|le3a\(4));

-- Location: FF_X18_Y15_N29
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
	ena => \regs[10][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][4]~q\);

-- Location: FF_X18_Y15_N15
\regs[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][4]~q\);

-- Location: LCCOMB_X18_Y15_N14
\Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][4]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[10][4]~q\,
	datac => \regs[8][4]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux33~0_combout\);

-- Location: FF_X18_Y18_N1
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
	ena => \regs[5][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][4]~q\);

-- Location: FF_X18_Y18_N15
\regs[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][4]~q\);

-- Location: LCCOMB_X18_Y18_N14
\Mux33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[5][4]~q\)) # (!\Mux29~1_combout\ & ((\regs[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[5][4]~q\,
	datac => \regs[4][4]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: FF_X19_Y18_N17
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
	ena => \regs[6][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][5]~q\);

-- Location: FF_X18_Y18_N25
\regs[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[5][5]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[5][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][5]~q\);

-- Location: FF_X18_Y18_N11
\regs[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][5]~q\);

-- Location: LCCOMB_X18_Y18_N10
\Mux32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[5][5]~q\)) # (!\Mux29~1_combout\ & ((\regs[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[5][5]~q\,
	datac => \regs[4][5]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux32~2_combout\);

-- Location: FF_X19_Y18_N15
\regs[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][5]~q\);

-- Location: LCCOMB_X19_Y18_N14
\Mux32~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\Mux32~2_combout\ & (((\regs[7][5]~q\) # (!\Mux28~1_combout\)))) # (!\Mux32~2_combout\ & (\regs[6][5]~q\ & ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~2_combout\,
	datab => \regs[6][5]~q\,
	datac => \regs[7][5]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Mux32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (\Mux28~1_combout\ & (\Mux29~1_combout\)) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & ((\regs[1][5]~q\))) # (!\Mux29~1_combout\ & (\regs[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \regs[0][5]~q\,
	datad => \regs[1][5]~q\,
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X23_Y15_N12
\Mux32~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (\Mux32~4_combout\ & ((\regs[3][5]~q\) # ((!\Mux28~1_combout\)))) # (!\Mux32~4_combout\ & (((\regs[2][5]~q\ & \Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \regs[3][5]~q\,
	datac => \regs[2][5]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X23_Y18_N22
\Mux32~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~6_combout\ = (\Mux0~1_combout\ & (((\Mux11~1_combout\)))) # (!\Mux0~1_combout\ & ((\Mux11~1_combout\ & (\Mux32~3_combout\)) # (!\Mux11~1_combout\ & ((\Mux32~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~3_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux32~5_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux32~6_combout\);

-- Location: LCCOMB_X24_Y15_N14
\Mult1|auto_generated|le3a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(5) = LCELL((\Mux13~1_combout\ & ((\Mux12~1_combout\ $ (\Mux5~6_combout\)))) # (!\Mux13~1_combout\ & (!\Mux6~6_combout\ & (\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mult1|auto_generated|le3a\(5));

-- Location: LCCOMB_X23_Y17_N24
\Mult1|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(1) = LCELL((\Mux11~1_combout\ & ((\Mux0~1_combout\ & ((\Mux9~3_combout\))) # (!\Mux0~1_combout\ & (\Mux9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux9~5_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mult1|auto_generated|le5a\(1));

-- Location: FF_X18_Y15_N23
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
	ena => \regs[10][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][6]~q\);

-- Location: FF_X18_Y15_N1
\regs[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][6]~q\);

-- Location: LCCOMB_X18_Y15_N0
\Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][6]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[10][6]~q\,
	datac => \regs[8][6]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux31~0_combout\);

-- Location: FF_X21_Y17_N31
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
	ena => \regs[6][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][6]~q\);

-- Location: LCCOMB_X19_Y18_N12
\Mux31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\Mux29~1_combout\ & ((\regs[1][6]~q\) # ((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (((\regs[0][6]~q\ & !\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][6]~q\,
	datab => \regs[0][6]~q\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X24_Y13_N16
\Mux31~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[14][6]~q\)) # (!\Mux28~1_combout\ & ((\regs[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[14][6]~q\,
	datac => \Mux28~1_combout\,
	datad => \regs[12][6]~q\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X23_Y16_N30
\Mux31~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\Mux29~1_combout\ & ((\Mux31~7_combout\ & (\regs[15][6]~q\)) # (!\Mux31~7_combout\ & ((\regs[13][6]~q\))))) # (!\Mux29~1_combout\ & (((\Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[15][6]~q\,
	datac => \regs[13][6]~q\,
	datad => \Mux31~7_combout\,
	combout => \Mux31~8_combout\);

-- Location: FF_X21_Y15_N19
\regs[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][7]~q\);

-- Location: FF_X18_Y15_N19
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
	ena => \regs[10][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][7]~q\);

-- Location: FF_X18_Y15_N21
\regs[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][7]~q\);

-- Location: LCCOMB_X18_Y15_N20
\Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][7]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[10][7]~q\,
	datac => \regs[8][7]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux30~0_combout\);

-- Location: FF_X21_Y15_N9
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
	ena => \regs[11][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][7]~q\);

-- Location: LCCOMB_X21_Y15_N18
\Mux30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & ((\regs[11][7]~q\) # ((!\Mux29~1_combout\)))) # (!\Mux30~0_combout\ & (((\regs[9][7]~q\ & \Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \regs[11][7]~q\,
	datac => \regs[9][7]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux30~1_combout\);

-- Location: FF_X19_Y16_N9
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
	ena => \regs[6][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][7]~q\);

-- Location: FF_X22_Y15_N19
\regs[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][7]~q\);

-- Location: FF_X22_Y15_N25
\regs[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[4][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][7]~q\);

-- Location: LCCOMB_X22_Y15_N18
\Mux30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux28~1_combout\ & (\Mux29~1_combout\)) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[5][7]~q\)) # (!\Mux29~1_combout\ & ((\regs[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \regs[5][7]~q\,
	datad => \regs[4][7]~q\,
	combout => \Mux30~2_combout\);

-- Location: FF_X19_Y16_N3
\regs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][7]~q\);

-- Location: LCCOMB_X19_Y16_N2
\Mux30~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux28~1_combout\ & ((\Mux30~2_combout\ & ((\regs[7][7]~q\))) # (!\Mux30~2_combout\ & (\regs[6][7]~q\)))) # (!\Mux28~1_combout\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][7]~q\,
	datab => \Mux28~1_combout\,
	datac => \regs[7][7]~q\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X19_Y14_N22
\Mux30~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux29~1_combout\ & ((\Mux28~1_combout\) # ((\regs[1][7]~q\)))) # (!\Mux29~1_combout\ & (!\Mux28~1_combout\ & (\regs[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux28~1_combout\,
	datac => \regs[0][7]~q\,
	datad => \regs[1][7]~q\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X19_Y14_N8
\Mux30~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux30~4_combout\ & (((\regs[3][7]~q\) # (!\Mux28~1_combout\)))) # (!\Mux30~4_combout\ & (\regs[2][7]~q\ & ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~4_combout\,
	datab => \regs[2][7]~q\,
	datac => \regs[3][7]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X18_Y16_N24
\Mux30~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Mux11~1_combout\ & ((\Mux30~3_combout\) # ((\Mux0~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux30~5_combout\ & !\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~3_combout\,
	datab => \Mux30~5_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X23_Y15_N30
\Mux30~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[14][7]~q\)) # (!\Mux28~1_combout\ & ((\regs[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[14][7]~q\,
	datac => \regs[12][7]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X23_Y15_N14
\Mux30~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\Mux30~7_combout\ & (((\regs[15][7]~q\) # (!\Mux29~1_combout\)))) # (!\Mux30~7_combout\ & (\regs[13][7]~q\ & ((\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][7]~q\,
	datab => \Mux30~7_combout\,
	datac => \regs[15][7]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X17_Y18_N10
\Mux30~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (\Mux0~1_combout\ & ((\Mux30~6_combout\ & (\Mux30~8_combout\)) # (!\Mux30~6_combout\ & ((\Mux30~1_combout\))))) # (!\Mux0~1_combout\ & (((\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux30~8_combout\,
	datac => \Mux30~6_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X18_Y17_N12
\Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (!\Mux29~1_combout\ & (\Mux11~1_combout\ & (!\Mux0~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X19_Y15_N26
\Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (!\Mux29~1_combout\ & (!\Mux28~1_combout\ & (\Mux11~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux28~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X19_Y18_N6
\Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (\Mux11~1_combout\ & (!\Mux0~1_combout\ & (\Mux29~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X23_Y13_N12
\Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\desvio~0_combout\ & ((!\Mux12~0_combout\) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \desvio~0_combout\,
	combout => \Add4~20_combout\);

-- Location: LCCOMB_X19_Y16_N12
\mem_d~2287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2287_combout\ = (\Mux0~0_combout\ & (((\mem_d~2315_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & (\mem_d~2313_combout\)) # (!\Mux167~0_combout\ & ((\mem_d~2315_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2313_combout\,
	datad => \mem_d~2315_combout\,
	combout => \mem_d~2287_combout\);

-- Location: LCCOMB_X18_Y16_N22
\Mux39~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~11_combout\ = (\mem_d~2246_combout\ & (\Mux167~0_combout\ & (\Mux2~0_combout\))) # (!\mem_d~2246_combout\ & (((\Mux39~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux39~6_combout\,
	datad => \mem_d~2246_combout\,
	combout => \Mux39~11_combout\);

-- Location: LCCOMB_X26_Y15_N6
\Mult1|auto_generated|le3a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(0) = LCELL((\Mux12~0_combout\ & (\Mux167~0_combout\ $ (((!\Mux13~1_combout\) # (!\Mux10~6_combout\))))) # (!\Mux12~0_combout\ & (((!\Mux13~1_combout\) # (!\Mux10~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mult1|auto_generated|le3a\(0));

-- Location: LCCOMB_X24_Y15_N8
\Mult1|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(0) = LCELL((\Mux11~1_combout\ & (\Mux12~0_combout\ & (\Mux167~0_combout\ & !\Mux10~6_combout\))) # (!\Mux11~1_combout\ & (\Mux10~6_combout\ & ((!\Mux167~0_combout\) # (!\Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X26_Y15_N20
\Mult1|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(1) = LCELL((\Mux11~1_combout\ & (\Mux12~0_combout\ & (\Mux167~0_combout\ & !\Mux9~6_combout\))) # (!\Mux11~1_combout\ & (\Mux9~6_combout\ & ((!\Mux167~0_combout\) # (!\Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mult1|auto_generated|le4a\(1));

-- Location: LCCOMB_X26_Y15_N30
\Mult1|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(4) = LCELL((\Mux6~6_combout\ & (!\Mux11~1_combout\ & ((!\Mux167~0_combout\) # (!\Mux12~0_combout\)))) # (!\Mux6~6_combout\ & (\Mux12~0_combout\ & (\Mux167~0_combout\ & \Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux6~6_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mult1|auto_generated|le4a\(4));

-- Location: LCCOMB_X26_Y15_N4
\Mult1|auto_generated|le4a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(5) = LCELL((\Mux11~1_combout\ & (\Mux167~0_combout\ & (\Mux12~0_combout\ & !\Mux5~6_combout\))) # (!\Mux11~1_combout\ & (\Mux5~6_combout\ & ((!\Mux12~0_combout\) # (!\Mux167~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mult1|auto_generated|le4a\(5));

-- Location: LCCOMB_X18_Y16_N30
\mem_d~2312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2312_combout\ = ((\Mux11~1_combout\ & (\mem_d~2123_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2121_combout\)))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2123_combout\,
	datad => \mem_d~2121_combout\,
	combout => \mem_d~2312_combout\);

-- Location: LCCOMB_X19_Y16_N22
\mem_d~2313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2313_combout\ = (\mem_d~2312_combout\ & (\Mux2~1_combout\ $ (\mem_d~2129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datac => \mem_d~2129_combout\,
	datad => \mem_d~2312_combout\,
	combout => \mem_d~2313_combout\);

-- Location: LCCOMB_X19_Y17_N16
\mem_d~2314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2314_combout\ = ((\Mux11~1_combout\ & ((\mem_d~2113_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2111_combout\))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2111_combout\,
	datad => \mem_d~2113_combout\,
	combout => \mem_d~2314_combout\);

-- Location: LCCOMB_X19_Y16_N24
\mem_d~2315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2315_combout\ = (\mem_d~2314_combout\ & (\Mux2~1_combout\ $ (\mem_d~2119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datac => \mem_d~2314_combout\,
	datad => \mem_d~2119_combout\,
	combout => \mem_d~2315_combout\);

-- Location: LCCOMB_X17_Y18_N30
\mem_d~2316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2316_combout\ = ((\Mux11~1_combout\ & (\mem_d~2102_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2100_combout\)))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2102_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2100_combout\,
	combout => \mem_d~2316_combout\);

-- Location: LCCOMB_X19_Y17_N10
\mem_d~2317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2317_combout\ = (\mem_d~2316_combout\ & (\Mux2~1_combout\ $ (\mem_d~2108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datac => \mem_d~2316_combout\,
	datad => \mem_d~2108_combout\,
	combout => \mem_d~2317_combout\);

-- Location: LCCOMB_X24_Y16_N2
\mem_d~2320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2320_combout\ = !\Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~2320_combout\);

-- Location: LCCOMB_X25_Y18_N10
\mem_d~2321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2321_combout\ = !\Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~2321_combout\);

-- Location: LCCOMB_X24_Y16_N14
\mem_d~2322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2322_combout\ = !\Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~2322_combout\);

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

-- Location: LCCOMB_X18_Y18_N8
\regs[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][0]~feeder_combout\ = \Mux46~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux46~4_combout\,
	combout => \regs[5][0]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N20
\regs[9][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][1]~feeder_combout\ = \Mux45~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux45~4_combout\,
	combout => \regs[9][1]~feeder_combout\);

-- Location: LCCOMB_X18_Y18_N28
\regs[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][1]~feeder_combout\ = \Mux45~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux45~4_combout\,
	combout => \regs[5][1]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N16
\regs[10][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][1]~feeder_combout\ = \Mux45~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux45~4_combout\,
	combout => \regs[10][1]~feeder_combout\);

-- Location: LCCOMB_X18_Y18_N16
\regs[5][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][2]~feeder_combout\ = \Mux44~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux44~4_combout\,
	combout => \regs[5][2]~feeder_combout\);

-- Location: LCCOMB_X22_Y18_N30
\regs[11][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][2]~feeder_combout\ = \Mux44~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux44~4_combout\,
	combout => \regs[11][2]~feeder_combout\);

-- Location: LCCOMB_X18_Y18_N20
\regs[5][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][3]~feeder_combout\ = \Mux43~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~4_combout\,
	combout => \regs[5][3]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N8
\regs[10][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][3]~feeder_combout\ = \Mux43~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~4_combout\,
	combout => \regs[10][3]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N28
\regs[10][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][4]~feeder_combout\ = \Mux42~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux42~4_combout\,
	combout => \regs[10][4]~feeder_combout\);

-- Location: LCCOMB_X18_Y18_N0
\regs[5][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][4]~feeder_combout\ = \Mux42~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux42~4_combout\,
	combout => \regs[5][4]~feeder_combout\);

-- Location: LCCOMB_X19_Y13_N26
\regs[2][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[2][5]~feeder_combout\);

-- Location: LCCOMB_X18_Y18_N24
\regs[5][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux41~5_combout\,
	combout => \regs[5][5]~feeder_combout\);

-- Location: LCCOMB_X19_Y18_N16
\regs[6][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux41~5_combout\,
	combout => \regs[6][5]~feeder_combout\);

-- Location: LCCOMB_X21_Y17_N30
\regs[6][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][6]~feeder_combout\ = \Mux40~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux40~4_combout\,
	combout => \regs[6][6]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N22
\regs[10][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][6]~feeder_combout\ = \Mux40~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux40~4_combout\,
	combout => \regs[10][6]~feeder_combout\);

-- Location: LCCOMB_X18_Y15_N18
\regs[10][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][7]~feeder_combout\ = \Mux39~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux39~10_combout\,
	combout => \regs[10][7]~feeder_combout\);

-- Location: LCCOMB_X21_Y15_N8
\regs[11][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][7]~feeder_combout\ = \Mux39~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux39~10_combout\,
	combout => \regs[11][7]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N8
\regs[6][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][7]~feeder_combout\ = \Mux39~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux39~10_combout\,
	combout => \regs[6][7]~feeder_combout\);

-- Location: LCCOMB_X25_Y18_N28
\mem_d~121feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~121feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~121feeder_combout\);

-- Location: LCCOMB_X17_Y18_N16
\mem_d~161feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~161feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~161feeder_combout\);

-- Location: LCCOMB_X16_Y18_N0
\mem_d~153feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~153feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~153feeder_combout\);

-- Location: LCCOMB_X16_Y16_N0
\mem_d~129feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~129feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~129feeder_combout\);

-- Location: LCCOMB_X16_Y15_N4
\mem_d~257feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~257feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~257feeder_combout\);

-- Location: LCCOMB_X17_Y15_N22
\mem_d~265feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~265feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~265feeder_combout\);

-- Location: LCCOMB_X24_Y16_N12
\mem_d~1657feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1657feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1657feeder_combout\);

-- Location: LCCOMB_X25_Y14_N4
\mem_d~1665feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1665feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1665feeder_combout\);

-- Location: LCCOMB_X24_Y17_N0
\mem_d~1570feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1570feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1570feeder_combout\);

-- Location: LCCOMB_X25_Y17_N8
\mem_d~1562feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1562feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1562feeder_combout\);

-- Location: LCCOMB_X25_Y14_N6
\mem_d~1666feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1666feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1666feeder_combout\);

-- Location: LCCOMB_X24_Y16_N8
\mem_d~1658feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1658feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1658feeder_combout\);

-- Location: LCCOMB_X17_Y15_N14
\mem_d~266feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~266feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~266feeder_combout\);

-- Location: LCCOMB_X16_Y16_N18
\mem_d~130feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~130feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~130feeder_combout\);

-- Location: LCCOMB_X17_Y14_N4
\mem_d~1794feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1794feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1794feeder_combout\);

-- Location: LCCOMB_X16_Y15_N16
\mem_d~258feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~258feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~258feeder_combout\);

-- Location: LCCOMB_X18_Y14_N14
\mem_d~1802feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1802feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1802feeder_combout\);

-- Location: LCCOMB_X16_Y18_N8
\mem_d~154feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~154feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~154feeder_combout\);

-- Location: LCCOMB_X25_Y18_N4
\mem_d~122feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~122feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~122feeder_combout\);

-- Location: LCCOMB_X25_Y18_N14
\mem_d~26feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~26feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~26feeder_combout\);

-- Location: LCCOMB_X17_Y18_N12
\mem_d~162feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~162feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~162feeder_combout\);

-- Location: LCCOMB_X16_Y17_N8
\mem_d~1690feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1690feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1690feeder_combout\);

-- Location: LCCOMB_X16_Y17_N16
\mem_d~1691feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1691feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1691feeder_combout\);

-- Location: LCCOMB_X17_Y18_N20
\mem_d~163feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~163feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~163feeder_combout\);

-- Location: LCCOMB_X16_Y18_N12
\mem_d~155feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~155feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~155feeder_combout\);

-- Location: LCCOMB_X24_Y16_N4
\mem_d~1659feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1659feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1659feeder_combout\);

-- Location: LCCOMB_X17_Y14_N16
\mem_d~1795feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1795feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1795feeder_combout\);

-- Location: LCCOMB_X16_Y16_N16
\mem_d~131feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~131feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~131feeder_combout\);

-- Location: LCCOMB_X17_Y15_N26
\mem_d~267feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~267feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~267feeder_combout\);

-- Location: LCCOMB_X25_Y14_N16
\mem_d~1667feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1667feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1667feeder_combout\);

-- Location: LCCOMB_X18_Y14_N10
\mem_d~1803feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1803feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1803feeder_combout\);

-- Location: LCCOMB_X25_Y18_N12
\mem_d~123feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~123feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~123feeder_combout\);

-- Location: LCCOMB_X25_Y18_N2
\mem_d~27feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~27feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~27feeder_combout\);

-- Location: LCCOMB_X18_Y14_N30
\mem_d~1804feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1804feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1804feeder_combout\);

-- Location: LCCOMB_X16_Y18_N16
\mem_d~156feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~156feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~156feeder_combout\);

-- Location: LCCOMB_X16_Y17_N28
\mem_d~1692feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1692feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1692feeder_combout\);

-- Location: LCCOMB_X17_Y14_N8
\mem_d~1796feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1796feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1796feeder_combout\);

-- Location: LCCOMB_X17_Y15_N2
\mem_d~268feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~268feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~268feeder_combout\);

-- Location: LCCOMB_X16_Y15_N0
\mem_d~260feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~260feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~260feeder_combout\);

-- Location: LCCOMB_X24_Y16_N16
\mem_d~1660feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1660feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1660feeder_combout\);

-- Location: LCCOMB_X24_Y16_N18
\mem_d~36feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~36feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~36feeder_combout\);

-- Location: LCCOMB_X25_Y18_N0
\mem_d~124feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~124feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~124feeder_combout\);

-- Location: LCCOMB_X25_Y18_N30
\mem_d~28feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~28feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~28feeder_combout\);

-- Location: LCCOMB_X17_Y17_N30
\mem_d~1709feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1709feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1709feeder_combout\);

-- Location: LCCOMB_X17_Y15_N10
\mem_d~269feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~269feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~269feeder_combout\);

-- Location: LCCOMB_X24_Y16_N22
\mem_d~37feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~37feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~37feeder_combout\);

-- Location: LCCOMB_X16_Y16_N12
\mem_d~133feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~133feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~133feeder_combout\);

-- Location: LCCOMB_X25_Y18_N20
\mem_d~125feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~125feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~125feeder_combout\);

-- Location: LCCOMB_X25_Y18_N26
\mem_d~29feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~29feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~29feeder_combout\);

-- Location: LCCOMB_X25_Y17_N10
\mem_d~1557feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1557feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~1557feeder_combout\);

-- Location: LCCOMB_X17_Y14_N28
\mem_d~1797feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1797feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1797feeder_combout\);

-- Location: LCCOMB_X18_Y14_N6
\mem_d~1805feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1805feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1805feeder_combout\);

-- Location: LCCOMB_X25_Y14_N22
\mem_d~1669feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1669feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1669feeder_combout\);

-- Location: LCCOMB_X16_Y18_N28
\mem_d~157feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~157feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~157feeder_combout\);

-- Location: LCCOMB_X24_Y17_N22
\mem_d~1582feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1582feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1582feeder_combout\);

-- Location: LCCOMB_X25_Y18_N8
\mem_d~126feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~126feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~126feeder_combout\);

-- Location: LCCOMB_X25_Y18_N18
\mem_d~30feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~30feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~30feeder_combout\);

-- Location: LCCOMB_X24_Y14_N22
\mem_d~1678feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1678feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~1678feeder_combout\);

-- Location: LCCOMB_X25_Y14_N26
\mem_d~1670feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1670feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1670feeder_combout\);

-- Location: LCCOMB_X16_Y18_N24
\mem_d~158feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~158feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~158feeder_combout\);

-- Location: LCCOMB_X16_Y16_N22
\mem_d~134feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~134feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~134feeder_combout\);

-- Location: LCCOMB_X17_Y15_N6
\mem_d~270feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~270feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~270feeder_combout\);

-- Location: LCCOMB_X18_Y14_N22
\mem_d~1806feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1806feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1806feeder_combout\);

-- Location: LCCOMB_X17_Y17_N6
\mem_d~1710feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1710feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~1710feeder_combout\);

-- Location: LCCOMB_X24_Y17_N12
\mem_d~1583feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1583feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1583feeder_combout\);

-- Location: LCCOMB_X18_Y16_N12
\mem_d~167feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~167feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~167feeder_combout\);

-- Location: LCCOMB_X25_Y18_N16
\mem_d~127feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~127feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~127feeder_combout\);

-- Location: LCCOMB_X25_Y18_N22
\mem_d~31feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~31feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~31feeder_combout\);

-- Location: LCCOMB_X25_Y14_N10
\mem_d~1671feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1671feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1671feeder_combout\);

-- Location: LCCOMB_X17_Y14_N0
\mem_d~1799feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1799feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~1799feeder_combout\);

-- Location: LCCOMB_X16_Y16_N2
\mem_d~135feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~135feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~135feeder_combout\);

-- Location: LCCOMB_X16_Y16_N24
\mem_d~1679feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1679feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~1679feeder_combout\);

-- Location: LCCOMB_X17_Y15_N30
\mem_d~271feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~271feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~271feeder_combout\);

-- Location: LCCOMB_X18_Y14_N26
\mem_d~1807feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1807feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1807feeder_combout\);

-- Location: LCCOMB_X17_Y17_N26
\mem_d~1712feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1712feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1712feeder_combout\);

-- Location: LCCOMB_X17_Y15_N20
\mem_d~256feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~256feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~256feeder_combout\);

-- Location: LCCOMB_X16_Y15_N12
\mem_d~264feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~264feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~264feeder_combout\);

-- Location: LCCOMB_X16_Y15_N26
\mem_d~248feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~248feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~248feeder_combout\);

-- Location: LCCOMB_X16_Y16_N6
\mem_d~136feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~136feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~136feeder_combout\);

-- Location: LCCOMB_X16_Y16_N20
\mem_d~1680feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1680feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1680feeder_combout\);

-- Location: LCCOMB_X16_Y17_N12
\mem_d~1696feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1696feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1696feeder_combout\);

-- Location: LCCOMB_X17_Y16_N20
\mem_d~160feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~160feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~160feeder_combout\);

-- Location: LCCOMB_X18_Y14_N12
\mem_d~1792feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1792feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1792feeder_combout\);

-- Location: LCCOMB_X17_Y14_N12
\mem_d~1800feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1800feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1800feeder_combout\);

-- Location: LCCOMB_X24_Y16_N10
\mem_d~40feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~40feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~40feeder_combout\);

-- Location: LCCOMB_X25_Y17_N12
\mem_d~1568feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1568feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1568feeder_combout\);

-- Location: LCCOMB_X25_Y18_N24
\mem_d~128feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~128feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~128feeder_combout\);

-- Location: LCCOMB_X25_Y18_N6
\mem_d~32feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~32feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~32feeder_combout\);

-- Location: LCCOMB_X24_Y17_N24
\mem_d~1584feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1584feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1584feeder_combout\);

-- Location: LCCOMB_X25_Y14_N30
\mem_d~1672feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1672feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1672feeder_combout\);

-- Location: IOOBUF_X25_Y24_N9
\R0_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\R0_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[1]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\R0_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[2]~output_o\);

-- Location: IOOBUF_X34_Y16_N2
\R0_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[3]~output_o\);

-- Location: IOOBUF_X34_Y16_N9
\R0_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\R0_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[5]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\R0_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[6]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\R0_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~6_combout\,
	devoe => ww_devoe,
	o => \R0_out[7]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\R1_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~4_combout\,
	devoe => ww_devoe,
	o => \R1_out[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\R1_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => \R1_out[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\R1_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~4_combout\,
	devoe => ww_devoe,
	o => \R1_out[2]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\R1_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~4_combout\,
	devoe => ww_devoe,
	o => \R1_out[3]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\R1_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~4_combout\,
	devoe => ww_devoe,
	o => \R1_out[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\R1_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	devoe => ww_devoe,
	o => \R1_out[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\R1_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	devoe => ww_devoe,
	o => \R1_out[6]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\R1_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => \R1_out[7]~output_o\);

-- Location: LCCOMB_X23_Y13_N26
\Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (PC(6) & (\Add4~15\ $ (GND))) # (!PC(6) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((PC(6) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X23_Y13_N28
\Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = PC(7) $ (\Add4~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(7),
	cin => \Add4~17\,
	combout => \Add4~18_combout\);

-- Location: LCCOMB_X22_Y14_N26
\PC~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~15_combout\ = (\PC[7]~8_combout\ & (((\Add4~18_combout\)))) # (!\PC[7]~8_combout\ & (((\Mux0~0_combout\)) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \PC[7]~8_combout\,
	datac => \Add4~18_combout\,
	datad => \Mux0~0_combout\,
	combout => \PC~15_combout\);

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

-- Location: FF_X22_Y14_N27
\PC[7]\ : dffeas
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
	q => PC(7));

-- Location: LCCOMB_X23_Y13_N22
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (PC(4) & (\Add4~11\ $ (GND))) # (!PC(4) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((PC(4) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X22_Y14_N8
\PC~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~14_combout\ = (\PC[7]~8_combout\ & (((\Add4~12_combout\)))) # (!\PC[7]~8_combout\ & (((!\Mux167~0_combout\)) # (!\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \PC[7]~8_combout\,
	datac => \Mux167~0_combout\,
	datad => \Add4~12_combout\,
	combout => \PC~14_combout\);

-- Location: FF_X22_Y14_N9
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X23_Y14_N8
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (PC(3)) # ((PC(2) & ((!PC(1)))) # (!PC(2) & (PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(3),
	datac => PC(0),
	datad => PC(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (PC(0) & ((PC(1) & (PC(3))) # (!PC(1) & ((PC(2)))))) # (!PC(0) & (PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(0),
	datac => PC(1),
	datad => PC(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y14_N4
\Mux167~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux167~1_combout\ = (PC(3) & (!PC(0) & (!PC(2)))) # (!PC(3) & ((PC(1) & ((!PC(2)))) # (!PC(1) & (PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(0),
	datac => PC(2),
	datad => PC(1),
	combout => \Mux167~1_combout\);

-- Location: LCCOMB_X23_Y14_N0
\Mux169~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux169~0_combout\ = (PC(3)) # ((PC(1) & ((PC(0)))) # (!PC(1) & (PC(2) & !PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(1),
	datac => PC(0),
	datad => PC(3),
	combout => \Mux169~0_combout\);

-- Location: LCCOMB_X23_Y14_N16
\PC~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~12_combout\ = ((\Mux1~0_combout\) # ((\Mux167~1_combout\) # (\Mux169~0_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux167~1_combout\,
	datad => \Mux169~0_combout\,
	combout => \PC~12_combout\);

-- Location: LCCOMB_X23_Y13_N24
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (PC(5) & (!\Add4~13\)) # (!PC(5) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X22_Y14_N20
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (PC(7)) # ((\Mux1~1_combout\) # ((PC(4)) # (\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => \Mux1~1_combout\,
	datac => PC(4),
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X21_Y15_N12
\Mux169~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux169~1_combout\ = (\Mux169~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux167~0_combout\,
	datad => \Mux169~0_combout\,
	combout => \Mux169~1_combout\);

-- Location: LCCOMB_X22_Y13_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Mux13~1_combout\ & (\Mux10~6_combout\ $ (VCC))) # (!\Mux13~1_combout\ & (\Mux10~6_combout\ & VCC))
-- \Add3~1\ = CARRY((\Mux13~1_combout\ & \Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux10~6_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X21_Y13_N10
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Mux10~6_combout\ & ((GND) # (!\Mux13~1_combout\))) # (!\Mux10~6_combout\ & (\Mux13~1_combout\ $ (GND)))
-- \Add2~1\ = CARRY((\Mux10~6_combout\) # (!\Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux13~1_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X21_Y13_N26
\Mux46~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Mux168~1_combout\ & (\Mux169~1_combout\ & (\Add3~0_combout\))) # (!\Mux168~1_combout\ & (((\Add2~0_combout\)) # (!\Mux169~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Add3~0_combout\,
	datad => \Add2~0_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X22_Y14_N24
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (PC(0) & (((!PC(2) & !PC(3))))) # (!PC(0) & (!PC(1) & (PC(2) $ (PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(2),
	datac => PC(0),
	datad => PC(3),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X22_Y14_N22
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!\Mux12~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X25_Y15_N0
\Mult1|auto_generated|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~0_combout\ = (\Mult1|auto_generated|le3a\(0) & (\Mux12~1_combout\ $ (VCC))) # (!\Mult1|auto_generated|le3a\(0) & (\Mux12~1_combout\ & VCC))
-- \Mult1|auto_generated|op_3~1\ = CARRY((\Mult1|auto_generated|le3a\(0) & \Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(0),
	datab => \Mux12~1_combout\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_3~0_combout\,
	cout => \Mult1|auto_generated|op_3~1\);

-- Location: LCCOMB_X19_Y17_N30
\Mux46~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\Mux169~1_combout\ & (((\Mux46~0_combout\)))) # (!\Mux169~1_combout\ & ((\Mux46~0_combout\ & (\Mux13~1_combout\)) # (!\Mux46~0_combout\ & ((\Mult1|auto_generated|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Mux46~0_combout\,
	datad => \Mult1|auto_generated|op_3~0_combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Mux168~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux168~0_combout\ = (PC(0) & (!PC(3) & ((!PC(1)) # (!PC(2))))) # (!PC(0) & (((!PC(2) & PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(0),
	datac => PC(2),
	datad => PC(1),
	combout => \Mux168~0_combout\);

-- Location: LCCOMB_X22_Y15_N28
\Mux168~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux168~1_combout\ = (\Mux167~0_combout\ & \Mux168~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux167~0_combout\,
	datac => \Mux168~0_combout\,
	combout => \Mux168~1_combout\);

-- Location: LCCOMB_X21_Y16_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mux21~4_combout\ & (\Mux10~6_combout\ $ (VCC))) # (!\Mux21~4_combout\ & (\Mux10~6_combout\ & VCC))
-- \Add0~1\ = CARRY((\Mux21~4_combout\ & \Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~4_combout\,
	datab => \Mux10~6_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X22_Y14_N12
\Mux2~0\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y14_N2
\Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (PC(2)) # ((PC(1) & (PC(0))) # (!PC(1) & ((PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(1),
	datac => PC(0),
	datad => PC(3),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\Mux28~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux167~0_combout\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X19_Y18_N28
\regs[7][2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][2]~15_combout\ = (\Decoder0~15_combout\ & (\Mux167~0_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~15_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[7][2]~15_combout\);

-- Location: FF_X19_Y16_N15
\regs[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][0]~q\);

-- Location: LCCOMB_X19_Y16_N16
\regs[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][0]~feeder_combout\ = \Mux46~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux46~4_combout\,
	combout => \regs[6][0]~feeder_combout\);

-- Location: LCCOMB_X19_Y17_N20
\regs[6][6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][6]~12_combout\ = (\Decoder0~12_combout\ & (\Mux167~0_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \Mux167~0_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[6][6]~12_combout\);

-- Location: FF_X19_Y16_N17
\regs[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[6][0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[6][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][0]~q\);

-- Location: LCCOMB_X19_Y16_N14
\Mux37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (\Mux37~2_combout\ & (((\regs[7][0]~q\)) # (!\Mux28~1_combout\))) # (!\Mux37~2_combout\ & (\Mux28~1_combout\ & ((\regs[6][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \Mux28~1_combout\,
	datac => \regs[7][0]~q\,
	datad => \regs[6][0]~q\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X23_Y14_N26
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux167~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X19_Y16_N0
\Mux37~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~6_combout\ = (\Mux11~1_combout\ & (((\Mux37~3_combout\) # (\Mux0~1_combout\)))) # (!\Mux11~1_combout\ & (\Mux37~5_combout\ & ((!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~5_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux37~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux37~6_combout\);

-- Location: LCCOMB_X23_Y14_N30
\Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (PC(2) & (((PC(0)) # (PC(3))))) # (!PC(2) & (PC(1) & (PC(0) $ (!PC(3)))))

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
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X23_Y14_N20
\Mux29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux167~0_combout\,
	datac => \Mux29~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X23_Y17_N22
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (\Mux11~1_combout\ & (\Mux0~1_combout\ & (!\Mux28~1_combout\ & !\Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X22_Y17_N14
\regs[12][3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][3]~2_combout\ = (\Mux167~1_combout\ & (\Mux167~0_combout\ & \Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Mux167~0_combout\,
	datad => \Decoder0~2_combout\,
	combout => \regs[12][3]~2_combout\);

-- Location: FF_X22_Y17_N17
\regs[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][0]~q\);

-- Location: LCCOMB_X19_Y14_N6
\Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\Mux28~1_combout\ & (!\Mux29~1_combout\ & (\Mux11~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X19_Y14_N26
\regs[14][6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][6]~0_combout\ = (\Mux167~0_combout\ & (\Decoder0~0_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Decoder0~0_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[14][6]~0_combout\);

-- Location: FF_X21_Y14_N17
\regs[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][0]~q\);

-- Location: LCCOMB_X21_Y14_N16
\Mux37~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~7_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & ((\regs[14][0]~q\))) # (!\Mux28~1_combout\ & (\regs[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[12][0]~q\,
	datac => \regs[14][0]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux37~7_combout\);

-- Location: LCCOMB_X21_Y14_N28
\Mux37~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~8_combout\ = (\Mux37~7_combout\ & (((\regs[15][0]~q\) # (!\Mux29~1_combout\)))) # (!\Mux37~7_combout\ & (\regs[13][0]~q\ & ((\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][0]~q\,
	datab => \Mux37~7_combout\,
	datac => \regs[15][0]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux37~8_combout\);

-- Location: LCCOMB_X22_Y18_N28
\regs[9][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][0]~feeder_combout\ = \Mux46~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux46~4_combout\,
	combout => \regs[9][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y17_N20
\Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\Mux29~1_combout\ & (!\Mux11~1_combout\ & (\Mux0~1_combout\ & !\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X18_Y17_N6
\regs[9][2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][2]~8_combout\ = (\Mux167~1_combout\ & (\Decoder0~8_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Decoder0~8_combout\,
	datac => \Mux167~0_combout\,
	combout => \regs[9][2]~8_combout\);

-- Location: FF_X22_Y18_N29
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
	ena => \regs[9][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][0]~q\);

-- Location: LCCOMB_X18_Y17_N16
\Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\Mux29~1_combout\ & (!\Mux11~1_combout\ & (\Mux0~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X18_Y17_N26
\regs[11][1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][1]~11_combout\ = (\Mux167~1_combout\ & (\Mux167~0_combout\ & \Decoder0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datac => \Mux167~0_combout\,
	datad => \Decoder0~11_combout\,
	combout => \regs[11][1]~11_combout\);

-- Location: FF_X22_Y18_N23
\regs[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][0]~q\);

-- Location: LCCOMB_X18_Y17_N0
\regs[10][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][0]~feeder_combout\ = \Mux46~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux46~4_combout\,
	combout => \regs[10][0]~feeder_combout\);

-- Location: LCCOMB_X18_Y17_N8
\Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!\Mux29~1_combout\ & (!\Mux11~1_combout\ & (\Mux0~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X18_Y17_N22
\regs[10][5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][5]~9_combout\ = (\Mux167~0_combout\ & (\Decoder0~9_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux167~0_combout\,
	datac => \Decoder0~9_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[10][5]~9_combout\);

-- Location: FF_X18_Y17_N1
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
	ena => \regs[10][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][0]~q\);

-- Location: LCCOMB_X18_Y17_N28
\Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!\Mux29~1_combout\ & (!\Mux11~1_combout\ & (\Mux0~1_combout\ & !\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X18_Y17_N2
\regs[8][2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][2]~10_combout\ = (\Mux167~1_combout\ & (\Decoder0~10_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Decoder0~10_combout\,
	datac => \Mux167~0_combout\,
	combout => \regs[8][2]~10_combout\);

-- Location: FF_X18_Y17_N11
\regs[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][0]~q\);

-- Location: LCCOMB_X18_Y17_N10
\Mux37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][0]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[10][0]~q\,
	datac => \regs[8][0]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X22_Y18_N22
\Mux37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Mux29~1_combout\ & ((\Mux37~0_combout\ & ((\regs[11][0]~q\))) # (!\Mux37~0_combout\ & (\regs[9][0]~q\)))) # (!\Mux29~1_combout\ & (((\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[9][0]~q\,
	datac => \regs[11][0]~q\,
	datad => \Mux37~0_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X17_Y17_N12
\Mux37~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~9_combout\ = (\Mux0~1_combout\ & ((\Mux37~6_combout\ & (\Mux37~8_combout\)) # (!\Mux37~6_combout\ & ((\Mux37~1_combout\))))) # (!\Mux0~1_combout\ & (\Mux37~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux37~6_combout\,
	datac => \Mux37~8_combout\,
	datad => \Mux37~1_combout\,
	combout => \Mux37~9_combout\);

-- Location: LCCOMB_X23_Y14_N10
\mem_d~2251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2251_combout\ = (\Mux167~0_combout\ & (!\Mux1~0_combout\ & (!\Mux167~1_combout\ & \Mux169~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux167~1_combout\,
	datad => \Mux169~0_combout\,
	combout => \mem_d~2251_combout\);

-- Location: LCCOMB_X19_Y15_N6
\mem_d~2252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2252_combout\ = (!\Mux168~1_combout\ & (!\reset~input_o\ & (\mem_d~2251_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \reset~input_o\,
	datac => \mem_d~2251_combout\,
	datad => \Mux0~1_combout\,
	combout => \mem_d~2252_combout\);

-- Location: LCCOMB_X24_Y14_N4
\mem_d~2295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2295_combout\ = (\Mux2~0_combout\ & (\Mux167~0_combout\ & \mem_d~2252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datad => \mem_d~2252_combout\,
	combout => \mem_d~2295_combout\);

-- Location: LCCOMB_X21_Y14_N14
\mem_d~2268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2268_combout\ = (!\Mux11~1_combout\ & (\Mux12~1_combout\ & (\mem_d~2295_combout\ & \Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2295_combout\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2268_combout\);

-- Location: FF_X24_Y17_N7
\mem_d~1577\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1577_q\);

-- Location: LCCOMB_X25_Y17_N0
\mem_d~1561feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1561feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~1561feeder_combout\);

-- Location: LCCOMB_X24_Y14_N16
\mem_d~2266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2266_combout\ = (!\Mux11~1_combout\ & (!\Mux12~1_combout\ & (\mem_d~2295_combout\ & \Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2295_combout\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2266_combout\);

-- Location: FF_X25_Y17_N1
\mem_d~1561\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1561feeder_combout\,
	ena => \mem_d~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1561_q\);

-- Location: LCCOMB_X24_Y13_N2
\mem_d~2267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2267_combout\ = (!\Mux11~1_combout\ & (!\Mux12~1_combout\ & (\mem_d~2295_combout\ & !\Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2295_combout\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2267_combout\);

-- Location: FF_X25_Y17_N27
\mem_d~1553\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1553_q\);

-- Location: LCCOMB_X25_Y17_N26
\mem_d~2095\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2095_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1561_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1553_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1561_q\,
	datac => \mem_d~1553_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2095_combout\);

-- Location: LCCOMB_X24_Y17_N6
\mem_d~2096\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2096_combout\ = (\Mux12~1_combout\ & ((\mem_d~2095_combout\ & ((\mem_d~1577_q\))) # (!\mem_d~2095_combout\ & (\mem_d~1569_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2095_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1569_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1577_q\,
	datad => \mem_d~2095_combout\,
	combout => \mem_d~2096_combout\);

-- Location: LCCOMB_X24_Y17_N20
\mem_d~2097\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2097_combout\ = (\Mux11~1_combout\ & (\mem_d~2094_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2096_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2094_combout\,
	datab => \Mux11~1_combout\,
	datad => \mem_d~2096_combout\,
	combout => \mem_d~2097_combout\);

-- Location: LCCOMB_X19_Y17_N24
\mem_d~2098\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2098_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2097_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2097_combout\,
	combout => \mem_d~2098_combout\);

-- Location: LCCOMB_X19_Y13_N2
\mem_d~2294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2294_combout\ = (\mem_d~2252_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2252_combout\,
	combout => \mem_d~2294_combout\);

-- Location: LCCOMB_X18_Y13_N22
\mem_d~2256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2256_combout\ = (\Mux13~1_combout\ & (!\Mux11~1_combout\ & (\Mux12~1_combout\ & \mem_d~2294_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2294_combout\,
	combout => \mem_d~2256_combout\);

-- Location: FF_X17_Y17_N3
\mem_d~1705\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1705_q\);

-- Location: LCCOMB_X16_Y17_N0
\mem_d~1689feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1689feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~1689feeder_combout\);

-- Location: LCCOMB_X19_Y13_N22
\mem_d~2254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2254_combout\ = (\Mux13~1_combout\ & (!\Mux11~1_combout\ & (!\Mux12~1_combout\ & \mem_d~2294_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2294_combout\,
	combout => \mem_d~2254_combout\);

-- Location: FF_X16_Y17_N1
\mem_d~1689\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1689feeder_combout\,
	ena => \mem_d~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1689_q\);

-- Location: LCCOMB_X19_Y13_N20
\mem_d~2255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2255_combout\ = (!\Mux13~1_combout\ & (!\Mux11~1_combout\ & (!\Mux12~1_combout\ & \mem_d~2294_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2294_combout\,
	combout => \mem_d~2255_combout\);

-- Location: FF_X16_Y17_N3
\mem_d~1681\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1681_q\);

-- Location: LCCOMB_X16_Y17_N2
\mem_d~2089\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2089_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1689_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1681_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1689_q\,
	datac => \mem_d~1681_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2089_combout\);

-- Location: LCCOMB_X17_Y17_N2
\mem_d~2090\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2090_combout\ = (\Mux12~1_combout\ & ((\mem_d~2089_combout\ & ((\mem_d~1705_q\))) # (!\mem_d~2089_combout\ & (\mem_d~1697_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2089_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1697_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1705_q\,
	datad => \mem_d~2089_combout\,
	combout => \mem_d~2090_combout\);

-- Location: LCCOMB_X18_Y14_N2
\mem_d~1801feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1801feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1801feeder_combout\);

-- Location: LCCOMB_X18_Y13_N10
\mem_d~2260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2260_combout\ = (\Mux13~1_combout\ & (\Mux11~1_combout\ & (\Mux12~1_combout\ & \mem_d~2294_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2294_combout\,
	combout => \mem_d~2260_combout\);

-- Location: FF_X18_Y14_N3
\mem_d~1801\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1801feeder_combout\,
	ena => \mem_d~2260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1801_q\);

-- Location: LCCOMB_X24_Y14_N30
\mem_d~2288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2288_combout\ = (\Mux12~0_combout\ & (\Mux167~0_combout\ & \Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2288_combout\);

-- Location: LCCOMB_X19_Y15_N4
\mem_d~2257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2257_combout\ = (\Mux2~1_combout\ & (\Mux13~1_combout\ & (\mem_d~2288_combout\ & \mem_d~2252_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2288_combout\,
	datad => \mem_d~2252_combout\,
	combout => \mem_d~2257_combout\);

-- Location: FF_X18_Y14_N21
\mem_d~1785\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1785_q\);

-- Location: LCCOMB_X17_Y14_N24
\mem_d~1793feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1793feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~1793feeder_combout\);

-- Location: LCCOMB_X18_Y13_N0
\mem_d~2258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2258_combout\ = (!\Mux13~1_combout\ & (\Mux11~1_combout\ & (\Mux12~1_combout\ & \mem_d~2294_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2294_combout\,
	combout => \mem_d~2258_combout\);

-- Location: FF_X17_Y14_N25
\mem_d~1793\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1793feeder_combout\,
	ena => \mem_d~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1793_q\);

-- Location: LCCOMB_X24_Y14_N8
\mem_d~2259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2259_combout\ = (\Mux2~1_combout\ & (!\Mux13~1_combout\ & (\mem_d~2288_combout\ & \mem_d~2252_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2288_combout\,
	datad => \mem_d~2252_combout\,
	combout => \mem_d~2259_combout\);

-- Location: FF_X17_Y14_N7
\mem_d~1777\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1777_q\);

-- Location: LCCOMB_X17_Y14_N6
\mem_d~2091\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2091_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1793_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1777_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1793_q\,
	datac => \mem_d~1777_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2091_combout\);

-- Location: LCCOMB_X18_Y14_N20
\mem_d~2092\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2092_combout\ = (\Mux13~1_combout\ & ((\mem_d~2091_combout\ & (\mem_d~1801_q\)) # (!\mem_d~2091_combout\ & ((\mem_d~1785_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2091_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1801_q\,
	datac => \mem_d~1785_q\,
	datad => \mem_d~2091_combout\,
	combout => \mem_d~2092_combout\);

-- Location: LCCOMB_X19_Y17_N12
\mem_d~2318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2318_combout\ = ((\Mux11~1_combout\ & ((\mem_d~2092_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2090_combout\))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2090_combout\,
	datad => \mem_d~2092_combout\,
	combout => \mem_d~2318_combout\);

-- Location: LCCOMB_X19_Y17_N26
\mem_d~2319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2319_combout\ = (\mem_d~2318_combout\ & (\Mux2~1_combout\ $ (\mem_d~2098_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~2098_combout\,
	datad => \mem_d~2318_combout\,
	combout => \mem_d~2319_combout\);

-- Location: LCCOMB_X19_Y17_N6
\mem_d~2286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2286_combout\ = (\Mux0~0_combout\ & (((\mem_d~2319_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & (\mem_d~2317_combout\)) # (!\Mux167~0_combout\ & ((\mem_d~2319_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2317_combout\,
	datab => \Mux0~0_combout\,
	datac => \mem_d~2319_combout\,
	datad => \Mux167~0_combout\,
	combout => \mem_d~2286_combout\);

-- Location: LCCOMB_X19_Y17_N8
\Mux46~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & (\Add0~0_combout\)) # (!\Mux169~1_combout\ & ((\mem_d~2286_combout\))))) # (!\Mux168~1_combout\ & (!\Mux169~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Add0~0_combout\,
	datad => \mem_d~2286_combout\,
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X26_Y15_N28
\Mult1|auto_generated|le3a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(1) = LCELL((\Mux13~1_combout\ & (\Mux12~1_combout\ $ (((\Mux9~6_combout\))))) # (!\Mux13~1_combout\ & (\Mux12~1_combout\ & (!\Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mult1|auto_generated|le3a\(1));

-- Location: LCCOMB_X25_Y15_N2
\Mult1|auto_generated|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~2_combout\ = (\Mult1|auto_generated|le3a\(1) & (!\Mult1|auto_generated|op_3~1\)) # (!\Mult1|auto_generated|le3a\(1) & ((\Mult1|auto_generated|op_3~1\) # (GND)))
-- \Mult1|auto_generated|op_3~3\ = CARRY((!\Mult1|auto_generated|op_3~1\) # (!\Mult1|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~1\,
	combout => \Mult1|auto_generated|op_3~2_combout\,
	cout => \Mult1|auto_generated|op_3~3\);

-- Location: LCCOMB_X22_Y13_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Mux12~1_combout\ & ((\Mux9~6_combout\ & (\Add3~1\ & VCC)) # (!\Mux9~6_combout\ & (!\Add3~1\)))) # (!\Mux12~1_combout\ & ((\Mux9~6_combout\ & (!\Add3~1\)) # (!\Mux9~6_combout\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\Mux12~1_combout\ & (!\Mux9~6_combout\ & !\Add3~1\)) # (!\Mux12~1_combout\ & ((!\Add3~1\) # (!\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux9~6_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X21_Y13_N12
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Mux12~1_combout\ & ((\Mux9~6_combout\ & (!\Add2~1\)) # (!\Mux9~6_combout\ & ((\Add2~1\) # (GND))))) # (!\Mux12~1_combout\ & ((\Mux9~6_combout\ & (\Add2~1\ & VCC)) # (!\Mux9~6_combout\ & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\Mux12~1_combout\ & ((!\Add2~1\) # (!\Mux9~6_combout\))) # (!\Mux12~1_combout\ & (!\Mux9~6_combout\ & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux9~6_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X22_Y13_N26
\Mux45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\Mux169~1_combout\ & ((\Mux168~1_combout\ & (\Add3~2_combout\)) # (!\Mux168~1_combout\ & ((\Add2~2_combout\))))) # (!\Mux169~1_combout\ & (((!\Mux168~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Add3~2_combout\,
	datac => \Mux168~1_combout\,
	datad => \Add2~2_combout\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X19_Y16_N4
\Mux45~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\Mux169~1_combout\ & (((\Mux45~0_combout\)))) # (!\Mux169~1_combout\ & ((\Mux45~0_combout\ & (\Mux12~1_combout\)) # (!\Mux45~0_combout\ & ((\Mult1|auto_generated|op_3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mult1|auto_generated|op_3~2_combout\,
	datad => \Mux45~0_combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X19_Y14_N14
\Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\Mux11~1_combout\ & (\Mux0~1_combout\ & (\Mux29~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X19_Y14_N20
\regs[15][6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][6]~3_combout\ = (\Mux167~0_combout\ & (\Decoder0~3_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datac => \Decoder0~3_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[15][6]~3_combout\);

-- Location: FF_X22_Y17_N9
\regs[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][1]~q\);

-- Location: LCCOMB_X23_Y16_N20
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\regs[14][1]~q\))) # (!\Mux12~1_combout\ & (\regs[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][1]~q\,
	datab => \regs[14][1]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X23_Y16_N26
\Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux13~1_combout\ & ((\Mux20~0_combout\ & ((\regs[15][1]~q\))) # (!\Mux20~0_combout\ & (\regs[13][1]~q\)))) # (!\Mux13~1_combout\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][1]~q\,
	datab => \regs[15][1]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X19_Y14_N18
\Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\Mux11~1_combout\ & (!\Mux0~1_combout\ & (!\Mux29~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X19_Y14_N28
\regs[2][3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][3]~5_combout\ = (\Mux167~1_combout\ & (\Decoder0~5_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Decoder0~5_combout\,
	datad => \Mux167~0_combout\,
	combout => \regs[2][3]~5_combout\);

-- Location: FF_X22_Y16_N23
\regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][1]~q\);

-- Location: LCCOMB_X19_Y14_N30
\Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\Mux28~1_combout\ & (\Mux29~1_combout\ & (!\Mux11~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X19_Y14_N4
\regs[1][1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[1][1]~4_combout\ = (\Mux167~0_combout\ & (\Decoder0~4_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datac => \Decoder0~4_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[1][1]~4_combout\);

-- Location: FF_X22_Y16_N17
\regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][1]~q\);

-- Location: LCCOMB_X22_Y16_N16
\Mux20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\regs[1][1]~q\))) # (!\Mux13~1_combout\ & (\regs[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][1]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[1][1]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X22_Y16_N22
\Mux20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux12~1_combout\ & ((\Mux20~2_combout\ & (\regs[3][1]~q\)) # (!\Mux20~2_combout\ & ((\regs[2][1]~q\))))) # (!\Mux12~1_combout\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][1]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[2][1]~q\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X23_Y16_N8
\Mux20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux11~1_combout\ & (\Mux20~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \Mux20~1_combout\,
	datad => \Mux20~3_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X22_Y15_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Mux9~6_combout\ & ((\Mux20~4_combout\ & (!\Add1~1\)) # (!\Mux20~4_combout\ & (\Add1~1\ & VCC)))) # (!\Mux9~6_combout\ & ((\Mux20~4_combout\ & ((\Add1~1\) # (GND))) # (!\Mux20~4_combout\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\Mux9~6_combout\ & (\Mux20~4_combout\ & !\Add1~1\)) # (!\Mux9~6_combout\ & ((\Mux20~4_combout\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \Mux20~4_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X22_Y17_N20
\Mult1|auto_generated|le3a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(2) = LCELL((\Mux13~1_combout\ & (\Mux12~1_combout\ $ (((\Mux8~6_combout\))))) # (!\Mux13~1_combout\ & (\Mux12~1_combout\ & (!\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux9~6_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mult1|auto_generated|le3a\(2));

-- Location: LCCOMB_X25_Y15_N18
\Mult1|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~0_combout\ = (\mem_d~2288_combout\ & (\Mult1|auto_generated|le3a\(2) $ (VCC))) # (!\mem_d~2288_combout\ & (\Mult1|auto_generated|le3a\(2) & VCC))
-- \Mult1|auto_generated|op_1~1\ = CARRY((\mem_d~2288_combout\ & \Mult1|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2288_combout\,
	datab => \Mult1|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult1|auto_generated|op_1~0_combout\,
	cout => \Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X25_Y15_N4
\Mult1|auto_generated|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~4_combout\ = ((\Mult1|auto_generated|le4a\(0) $ (\Mult1|auto_generated|op_1~0_combout\ $ (!\Mult1|auto_generated|op_3~3\)))) # (GND)
-- \Mult1|auto_generated|op_3~5\ = CARRY((\Mult1|auto_generated|le4a\(0) & ((\Mult1|auto_generated|op_1~0_combout\) # (!\Mult1|auto_generated|op_3~3\))) # (!\Mult1|auto_generated|le4a\(0) & (\Mult1|auto_generated|op_1~0_combout\ & 
-- !\Mult1|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(0),
	datab => \Mult1|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~3\,
	combout => \Mult1|auto_generated|op_3~4_combout\,
	cout => \Mult1|auto_generated|op_3~5\);

-- Location: LCCOMB_X22_Y13_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Mux11~1_combout\ $ (\Mux8~6_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Mux11~1_combout\ & ((\Mux8~6_combout\) # (!\Add3~3\))) # (!\Mux11~1_combout\ & (\Mux8~6_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux8~6_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X21_Y13_N14
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Mux11~1_combout\ $ (\Mux8~6_combout\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Mux11~1_combout\ & (\Mux8~6_combout\ & !\Add2~3\)) # (!\Mux11~1_combout\ & ((\Mux8~6_combout\) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux8~6_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X22_Y13_N28
\Mux44~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\Mux169~1_combout\ & ((\Mux168~1_combout\ & (\Add3~4_combout\)) # (!\Mux168~1_combout\ & ((\Add2~4_combout\))))) # (!\Mux169~1_combout\ & (!\Mux168~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add3~4_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X21_Y17_N4
\Mux44~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\Mux169~1_combout\ & (((\Mux44~0_combout\)))) # (!\Mux169~1_combout\ & ((\Mux44~0_combout\ & (\Mux11~1_combout\)) # (!\Mux44~0_combout\ & ((\Mult1|auto_generated|op_3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Mult1|auto_generated|op_3~4_combout\,
	datad => \Mux44~0_combout\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X22_Y15_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Mux19~4_combout\ $ (\Mux8~6_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Mux19~4_combout\ & (\Mux8~6_combout\ & !\Add1~3\)) # (!\Mux19~4_combout\ & ((\Mux8~6_combout\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~4_combout\,
	datab => \Mux8~6_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X19_Y14_N24
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\Mux11~1_combout\ & (\Mux0~1_combout\ & (\Mux29~1_combout\ & !\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X19_Y14_N16
\regs[13][2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][2]~1_combout\ = (\Mux167~1_combout\ & (\Mux167~0_combout\ & \Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Mux167~0_combout\,
	datad => \Decoder0~1_combout\,
	combout => \regs[13][2]~1_combout\);

-- Location: FF_X21_Y14_N5
\regs[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][2]~q\);

-- Location: FF_X21_Y14_N27
\regs[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][2]~q\);

-- Location: LCCOMB_X21_Y14_N12
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\regs[14][2]~q\))) # (!\Mux12~1_combout\ & (\regs[12][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][2]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[14][2]~q\,
	datad => \Mux12~1_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X21_Y14_N4
\Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux13~1_combout\ & ((\Mux19~0_combout\ & (\regs[15][2]~q\)) # (!\Mux19~0_combout\ & ((\regs[13][2]~q\))))) # (!\Mux13~1_combout\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][2]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[13][2]~q\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: FF_X22_Y16_N15
\regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][2]~q\);

-- Location: FF_X22_Y16_N29
\regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][2]~q\);

-- Location: LCCOMB_X22_Y16_N6
\Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\regs[1][2]~q\))) # (!\Mux13~1_combout\ & (\regs[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][2]~q\,
	datab => \regs[1][2]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X22_Y16_N12
\Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux12~1_combout\ & ((\Mux19~2_combout\ & (\regs[3][2]~q\)) # (!\Mux19~2_combout\ & ((\regs[2][2]~q\))))) # (!\Mux12~1_combout\ & (((\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][2]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[2][2]~q\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X21_Y14_N22
\Mux19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux11~1_combout\ & (\Mux19~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X21_Y16_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mux8~6_combout\ $ (\Mux19~4_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mux8~6_combout\ & ((\Mux19~4_combout\) # (!\Add0~3\))) # (!\Mux8~6_combout\ & (\Mux19~4_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux19~4_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X22_Y14_N14
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\Mux167~0_combout\) # (!\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Mux35~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (\Mux29~1_combout\ & (((\regs[1][2]~q\) # (\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (\regs[0][2]~q\ & ((!\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][2]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[1][2]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X18_Y17_N4
\Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\Mux29~1_combout\ & (!\Mux11~1_combout\ & (!\Mux0~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X18_Y17_N14
\regs[3][4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[3][4]~7_combout\ = (\Mux167~1_combout\ & (\Decoder0~7_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Decoder0~7_combout\,
	datac => \Mux167~0_combout\,
	combout => \regs[3][4]~7_combout\);

-- Location: FF_X23_Y17_N29
\regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][2]~q\);

-- Location: LCCOMB_X22_Y16_N14
\Mux35~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~5_combout\ = (\Mux28~1_combout\ & ((\Mux35~4_combout\ & ((\regs[3][2]~q\))) # (!\Mux35~4_combout\ & (\regs[2][2]~q\)))) # (!\Mux28~1_combout\ & (\Mux35~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux35~4_combout\,
	datac => \regs[2][2]~q\,
	datad => \regs[3][2]~q\,
	combout => \Mux35~5_combout\);

-- Location: LCCOMB_X19_Y17_N4
\Mux35~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~6_combout\ = (\Mux11~1_combout\ & ((\Mux35~3_combout\) # ((\Mux0~1_combout\)))) # (!\Mux11~1_combout\ & (((!\Mux0~1_combout\ & \Mux35~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~3_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux35~5_combout\,
	combout => \Mux35~6_combout\);

-- Location: LCCOMB_X21_Y16_N26
\Mux35~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~8_combout\ = (\Mux35~7_combout\ & (((\regs[15][2]~q\) # (!\Mux29~1_combout\)))) # (!\Mux35~7_combout\ & (\regs[13][2]~q\ & (\Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~7_combout\,
	datab => \regs[13][2]~q\,
	datac => \Mux29~1_combout\,
	datad => \regs[15][2]~q\,
	combout => \Mux35~8_combout\);

-- Location: LCCOMB_X18_Y17_N24
\regs[10][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][2]~feeder_combout\ = \Mux44~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux44~4_combout\,
	combout => \regs[10][2]~feeder_combout\);

-- Location: FF_X18_Y17_N25
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
	ena => \regs[10][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][2]~q\);

-- Location: FF_X18_Y17_N31
\regs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][2]~q\);

-- Location: LCCOMB_X18_Y17_N30
\Mux35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][2]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[10][2]~q\,
	datac => \regs[8][2]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux35~0_combout\);

-- Location: FF_X22_Y18_N25
\regs[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][2]~q\);

-- Location: LCCOMB_X22_Y18_N24
\Mux35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux35~0_combout\ & ((\regs[11][2]~q\) # ((!\Mux29~1_combout\)))) # (!\Mux35~0_combout\ & (((\regs[9][2]~q\ & \Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][2]~q\,
	datab => \Mux35~0_combout\,
	datac => \regs[9][2]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X17_Y17_N28
\Mux35~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~9_combout\ = (\Mux0~1_combout\ & ((\Mux35~6_combout\ & (\Mux35~8_combout\)) # (!\Mux35~6_combout\ & ((\Mux35~1_combout\))))) # (!\Mux0~1_combout\ & (\Mux35~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux35~6_combout\,
	datac => \Mux35~8_combout\,
	datad => \Mux35~1_combout\,
	combout => \Mux35~9_combout\);

-- Location: LCCOMB_X19_Y15_N16
\mem_d~2274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2274_combout\ = (\mem_d~2269_combout\ & (\Mux13~1_combout\ & (\mem_d~2288_combout\ & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2269_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2288_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2274_combout\);

-- Location: FF_X17_Y15_N9
\mem_d~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~251_q\);

-- Location: LCCOMB_X16_Y15_N24
\mem_d~259feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~259feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~259feeder_combout\);

-- Location: LCCOMB_X19_Y15_N30
\mem_d~2269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2269_combout\ = (!\Mux168~1_combout\ & (!\reset~input_o\ & (\mem_d~2251_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \reset~input_o\,
	datac => \mem_d~2251_combout\,
	datad => \Mux0~1_combout\,
	combout => \mem_d~2269_combout\);

-- Location: LCCOMB_X18_Y16_N16
\mem_d~2296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2296_combout\ = (\mem_d~2269_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2269_combout\,
	combout => \mem_d~2296_combout\);

-- Location: LCCOMB_X17_Y16_N6
\mem_d~2275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2275_combout\ = (\Mux12~1_combout\ & (!\Mux13~1_combout\ & (\Mux11~1_combout\ & \mem_d~2296_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \mem_d~2296_combout\,
	combout => \mem_d~2275_combout\);

-- Location: FF_X16_Y15_N25
\mem_d~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~259feeder_combout\,
	ena => \mem_d~2275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~259_q\);

-- Location: LCCOMB_X19_Y15_N10
\mem_d~2276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2276_combout\ = (\mem_d~2269_combout\ & (!\Mux13~1_combout\ & (\mem_d~2288_combout\ & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2269_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2288_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2276_combout\);

-- Location: FF_X16_Y15_N23
\mem_d~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~243_q\);

-- Location: LCCOMB_X16_Y15_N22
\mem_d~2142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2142_combout\ = (\Mux12~1_combout\ & ((\mem_d~259_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~243_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~259_q\,
	datac => \mem_d~243_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2142_combout\);

-- Location: LCCOMB_X17_Y15_N8
\mem_d~2143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2143_combout\ = (\Mux13~1_combout\ & ((\mem_d~2142_combout\ & (\mem_d~267_q\)) # (!\mem_d~2142_combout\ & ((\mem_d~251_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~267_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~251_q\,
	datad => \mem_d~2142_combout\,
	combout => \mem_d~2143_combout\);

-- Location: LCCOMB_X17_Y18_N4
\mem_d~2308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2308_combout\ = ((\Mux11~1_combout\ & ((\mem_d~2143_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2141_combout\))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2141_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \mem_d~2143_combout\,
	combout => \mem_d~2308_combout\);

-- Location: LCCOMB_X25_Y16_N0
\mem_d~2297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2297_combout\ = (\Mux2~0_combout\ & (\mem_d~2269_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mem_d~2269_combout\,
	datac => \Mux167~0_combout\,
	combout => \mem_d~2297_combout\);

-- Location: LCCOMB_X25_Y16_N10
\mem_d~2281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2281_combout\ = (\Mux11~1_combout\ & (\Mux12~1_combout\ & (\Mux13~1_combout\ & \mem_d~2297_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux13~1_combout\,
	datad => \mem_d~2297_combout\,
	combout => \mem_d~2281_combout\);

-- Location: FF_X24_Y18_N27
\mem_d~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~139_q\);

-- Location: LCCOMB_X24_Y14_N24
\mem_d~2280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2280_combout\ = (\mem_d~2269_combout\ & (!\Mux13~1_combout\ & (\mem_d~2288_combout\ & !\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2269_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2288_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2280_combout\);

-- Location: FF_X24_Y18_N29
\mem_d~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~115_q\);

-- Location: LCCOMB_X24_Y18_N28
\mem_d~2144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2144_combout\ = (\Mux12~1_combout\ & ((\mem_d~131_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~115_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~131_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~115_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2144_combout\);

-- Location: LCCOMB_X24_Y18_N26
\mem_d~2145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2145_combout\ = (\Mux13~1_combout\ & ((\mem_d~2144_combout\ & ((\mem_d~139_q\))) # (!\mem_d~2144_combout\ & (\mem_d~123_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~123_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~139_q\,
	datad => \mem_d~2144_combout\,
	combout => \mem_d~2145_combout\);

-- Location: LCCOMB_X25_Y16_N22
\mem_d~2285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2285_combout\ = (!\Mux11~1_combout\ & (\Mux12~1_combout\ & (\Mux13~1_combout\ & \mem_d~2297_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux13~1_combout\,
	datad => \mem_d~2297_combout\,
	combout => \mem_d~2285_combout\);

-- Location: FF_X23_Y18_N13
\mem_d~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~43_q\);

-- Location: LCCOMB_X24_Y16_N26
\mem_d~35feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~35feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~35feeder_combout\);

-- Location: LCCOMB_X25_Y16_N12
\mem_d~2282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2282_combout\ = (!\Mux11~1_combout\ & (\mem_d~2297_combout\ & (!\Mux13~1_combout\ & \Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2297_combout\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2282_combout\);

-- Location: FF_X24_Y16_N27
\mem_d~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~35feeder_combout\,
	ena => \mem_d~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~35_q\);

-- Location: LCCOMB_X23_Y18_N12
\mem_d~2147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2147_combout\ = (\mem_d~2146_combout\ & (((\mem_d~43_q\)) # (!\Mux12~1_combout\))) # (!\mem_d~2146_combout\ & (\Mux12~1_combout\ & ((\mem_d~35_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2146_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~43_q\,
	datad => \mem_d~35_q\,
	combout => \mem_d~2147_combout\);

-- Location: LCCOMB_X23_Y18_N30
\mem_d~2148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2148_combout\ = (\Mux11~1_combout\ & (\mem_d~2145_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \mem_d~2145_combout\,
	datad => \mem_d~2147_combout\,
	combout => \mem_d~2148_combout\);

-- Location: LCCOMB_X21_Y17_N0
\mem_d~2149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2149_combout\ = ((\Mux2~0_combout\ & (\mem_d~2148_combout\ & !\Mux1~0_combout\)) # (!\Mux2~0_combout\ & ((\Mux1~0_combout\)))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2148_combout\,
	datad => \Mux1~0_combout\,
	combout => \mem_d~2149_combout\);

-- Location: LCCOMB_X21_Y17_N26
\mem_d~2309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2309_combout\ = (\mem_d~2308_combout\ & (\Mux2~1_combout\ $ (\mem_d~2149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datac => \mem_d~2308_combout\,
	datad => \mem_d~2149_combout\,
	combout => \mem_d~2309_combout\);

-- Location: LCCOMB_X18_Y13_N12
\mem_d~2253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2253_combout\ = (!\Mux13~1_combout\ & (!\Mux11~1_combout\ & (\Mux12~1_combout\ & \mem_d~2294_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2294_combout\,
	combout => \mem_d~2253_combout\);

-- Location: FF_X17_Y17_N29
\mem_d~1699\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux35~9_combout\,
	ena => \mem_d~2253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1699_q\);

-- Location: FF_X17_Y17_N19
\mem_d~1707\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1707_q\);

-- Location: LCCOMB_X17_Y17_N18
\mem_d~2131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2131_combout\ = (\mem_d~2130_combout\ & (((\mem_d~1707_q\) # (!\Mux12~1_combout\)))) # (!\mem_d~2130_combout\ & (\mem_d~1699_q\ & ((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2130_combout\,
	datab => \mem_d~1699_q\,
	datac => \mem_d~1707_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2131_combout\);

-- Location: LCCOMB_X21_Y17_N8
\mem_d~2310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2310_combout\ = ((\Mux11~1_combout\ & (\mem_d~2133_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2131_combout\)))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2133_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2131_combout\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2310_combout\);

-- Location: LCCOMB_X24_Y14_N14
\mem_d~2264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2264_combout\ = (\Mux11~1_combout\ & (\Mux12~1_combout\ & (\mem_d~2295_combout\ & \Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2295_combout\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2264_combout\);

-- Location: FF_X24_Y14_N19
\mem_d~1675\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1675_q\);

-- Location: LCCOMB_X24_Y14_N28
\mem_d~2263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2263_combout\ = (!\Mux2~1_combout\ & (!\Mux13~1_combout\ & (\mem_d~2288_combout\ & \mem_d~2252_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2288_combout\,
	datad => \mem_d~2252_combout\,
	combout => \mem_d~2263_combout\);

-- Location: FF_X24_Y14_N21
\mem_d~1651\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1651_q\);

-- Location: LCCOMB_X24_Y14_N20
\mem_d~2134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2134_combout\ = (\Mux12~1_combout\ & ((\mem_d~1667_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1651_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1667_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1651_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2134_combout\);

-- Location: LCCOMB_X24_Y14_N18
\mem_d~2135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2135_combout\ = (\Mux13~1_combout\ & ((\mem_d~2134_combout\ & ((\mem_d~1675_q\))) # (!\mem_d~2134_combout\ & (\mem_d~1659_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1659_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1675_q\,
	datad => \mem_d~2134_combout\,
	combout => \mem_d~2135_combout\);

-- Location: FF_X24_Y17_N29
\mem_d~1579\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1579_q\);

-- Location: LCCOMB_X25_Y17_N4
\mem_d~1563feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1563feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1563feeder_combout\);

-- Location: FF_X25_Y17_N5
\mem_d~1563\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1563feeder_combout\,
	ena => \mem_d~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1563_q\);

-- Location: FF_X25_Y17_N3
\mem_d~1555\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1555_q\);

-- Location: LCCOMB_X25_Y17_N2
\mem_d~2136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2136_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1563_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1555_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1563_q\,
	datac => \mem_d~1555_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2136_combout\);

-- Location: LCCOMB_X24_Y17_N28
\mem_d~2137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2137_combout\ = (\Mux12~1_combout\ & ((\mem_d~2136_combout\ & ((\mem_d~1579_q\))) # (!\mem_d~2136_combout\ & (\mem_d~1571_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1571_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1579_q\,
	datad => \mem_d~2136_combout\,
	combout => \mem_d~2137_combout\);

-- Location: LCCOMB_X24_Y17_N10
\mem_d~2138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2138_combout\ = (\Mux11~1_combout\ & (\mem_d~2135_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2135_combout\,
	datad => \mem_d~2137_combout\,
	combout => \mem_d~2138_combout\);

-- Location: LCCOMB_X21_Y17_N18
\mem_d~2139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2139_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2138_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2138_combout\,
	combout => \mem_d~2139_combout\);

-- Location: LCCOMB_X21_Y17_N6
\mem_d~2311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2311_combout\ = (\mem_d~2310_combout\ & (\Mux2~1_combout\ $ (\mem_d~2139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datac => \mem_d~2310_combout\,
	datad => \mem_d~2139_combout\,
	combout => \mem_d~2311_combout\);

-- Location: LCCOMB_X21_Y17_N28
\mem_d~2289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2289_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\mem_d~2311_combout\))) # (!\Mux0~0_combout\ & (\mem_d~2309_combout\)))) # (!\Mux167~0_combout\ & (((\mem_d~2311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \mem_d~2309_combout\,
	datad => \mem_d~2311_combout\,
	combout => \mem_d~2289_combout\);

-- Location: LCCOMB_X21_Y17_N14
\Mux44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & (\Add0~4_combout\)) # (!\Mux169~1_combout\ & ((\mem_d~2289_combout\))))) # (!\Mux168~1_combout\ & (!\Mux169~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Add0~4_combout\,
	datad => \mem_d~2289_combout\,
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X25_Y15_N20
\Mult1|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~2_combout\ = (\Mult1|auto_generated|le3a\(3) & (!\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|le3a\(3) & ((\Mult1|auto_generated|op_1~1\) # (GND)))
-- \Mult1|auto_generated|op_1~3\ = CARRY((!\Mult1|auto_generated|op_1~1\) # (!\Mult1|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~1\,
	combout => \Mult1|auto_generated|op_1~2_combout\,
	cout => \Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X25_Y15_N6
\Mult1|auto_generated|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~6_combout\ = (\Mult1|auto_generated|le4a\(1) & ((\Mult1|auto_generated|op_1~2_combout\ & (\Mult1|auto_generated|op_3~5\ & VCC)) # (!\Mult1|auto_generated|op_1~2_combout\ & (!\Mult1|auto_generated|op_3~5\)))) # 
-- (!\Mult1|auto_generated|le4a\(1) & ((\Mult1|auto_generated|op_1~2_combout\ & (!\Mult1|auto_generated|op_3~5\)) # (!\Mult1|auto_generated|op_1~2_combout\ & ((\Mult1|auto_generated|op_3~5\) # (GND)))))
-- \Mult1|auto_generated|op_3~7\ = CARRY((\Mult1|auto_generated|le4a\(1) & (!\Mult1|auto_generated|op_1~2_combout\ & !\Mult1|auto_generated|op_3~5\)) # (!\Mult1|auto_generated|le4a\(1) & ((!\Mult1|auto_generated|op_3~5\) # 
-- (!\Mult1|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(1),
	datab => \Mult1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~5\,
	combout => \Mult1|auto_generated|op_3~6_combout\,
	cout => \Mult1|auto_generated|op_3~7\);

-- Location: LCCOMB_X21_Y13_N16
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Mux11~1_combout\ & ((\Mux7~6_combout\ & (!\Add2~5\)) # (!\Mux7~6_combout\ & ((\Add2~5\) # (GND))))) # (!\Mux11~1_combout\ & ((\Mux7~6_combout\ & (\Add2~5\ & VCC)) # (!\Mux7~6_combout\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\Mux11~1_combout\ & ((!\Add2~5\) # (!\Mux7~6_combout\))) # (!\Mux11~1_combout\ & (!\Mux7~6_combout\ & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux7~6_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X22_Y13_N6
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Mux11~1_combout\ & ((\Mux7~6_combout\ & (\Add3~5\ & VCC)) # (!\Mux7~6_combout\ & (!\Add3~5\)))) # (!\Mux11~1_combout\ & ((\Mux7~6_combout\ & (!\Add3~5\)) # (!\Mux7~6_combout\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\Mux11~1_combout\ & (!\Mux7~6_combout\ & !\Add3~5\)) # (!\Mux11~1_combout\ & ((!\Add3~5\) # (!\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux7~6_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X21_Y13_N28
\Mux43~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\Mux168~1_combout\ & (((\Mux169~1_combout\ & \Add3~6_combout\)))) # (!\Mux168~1_combout\ & ((\Add2~6_combout\) # ((!\Mux169~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add2~6_combout\,
	datac => \Mux169~1_combout\,
	datad => \Add3~6_combout\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X22_Y18_N16
\Mux43~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Mux169~1_combout\ & (((\Mux43~0_combout\)))) # (!\Mux169~1_combout\ & ((\Mux43~0_combout\ & (\Mux11~1_combout\)) # (!\Mux43~0_combout\ & ((\Mult1|auto_generated|op_3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Mult1|auto_generated|op_3~6_combout\,
	datad => \Mux43~0_combout\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X21_Y13_N8
\regs[15][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][3]~feeder_combout\ = \Mux43~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~4_combout\,
	combout => \regs[15][3]~feeder_combout\);

-- Location: FF_X21_Y13_N9
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
	ena => \regs[15][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][3]~q\);

-- Location: FF_X23_Y16_N25
\regs[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][3]~q\);

-- Location: LCCOMB_X23_Y16_N18
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\regs[14][3]~q\))) # (!\Mux12~1_combout\ & (\regs[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][3]~q\,
	datab => \regs[14][3]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X23_Y16_N4
\Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux13~1_combout\ & ((\Mux18~0_combout\ & ((\regs[15][3]~q\))) # (!\Mux18~0_combout\ & (\regs[13][3]~q\)))) # (!\Mux13~1_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][3]~q\,
	datab => \regs[15][3]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X21_Y16_N16
\regs[2][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][3]~feeder_combout\ = \Mux43~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~4_combout\,
	combout => \regs[2][3]~feeder_combout\);

-- Location: FF_X21_Y16_N17
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
	ena => \regs[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][3]~q\);

-- Location: LCCOMB_X22_Y16_N8
\Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\regs[1][3]~q\))) # (!\Mux13~1_combout\ & (\regs[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][3]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[1][3]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X21_Y16_N30
\Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux12~1_combout\ & ((\Mux18~2_combout\ & (\regs[3][3]~q\)) # (!\Mux18~2_combout\ & ((\regs[2][3]~q\))))) # (!\Mux12~1_combout\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][3]~q\,
	datab => \regs[2][3]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X21_Y16_N20
\Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux11~1_combout\ & (\Mux18~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \Mux18~1_combout\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X21_Y16_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mux7~6_combout\ & ((\Mux18~4_combout\ & (\Add0~5\ & VCC)) # (!\Mux18~4_combout\ & (!\Add0~5\)))) # (!\Mux7~6_combout\ & ((\Mux18~4_combout\ & (!\Add0~5\)) # (!\Mux18~4_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Mux7~6_combout\ & (!\Mux18~4_combout\ & !\Add0~5\)) # (!\Mux7~6_combout\ & ((!\Add0~5\) # (!\Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux18~4_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y18_N0
\regs[6][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][3]~feeder_combout\ = \Mux43~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~4_combout\,
	combout => \regs[6][3]~feeder_combout\);

-- Location: FF_X19_Y18_N1
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
	ena => \regs[6][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][3]~q\);

-- Location: FF_X19_Y18_N27
\regs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][3]~q\);

-- Location: LCCOMB_X19_Y18_N26
\Mux34~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\Mux34~2_combout\ & (((\regs[7][3]~q\) # (!\Mux28~1_combout\)))) # (!\Mux34~2_combout\ & (\regs[6][3]~q\ & ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~2_combout\,
	datab => \regs[6][3]~q\,
	datac => \regs[7][3]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux34~3_combout\);

-- Location: FF_X21_Y13_N5
\regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][3]~q\);

-- Location: LCCOMB_X21_Y16_N24
\Mux34~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\Mux29~1_combout\ & (((\regs[1][3]~q\) # (\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (\regs[0][3]~q\ & ((!\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][3]~q\,
	datab => \regs[1][3]~q\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X21_Y16_N22
\Mux34~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (\Mux28~1_combout\ & ((\Mux34~4_combout\ & ((\regs[3][3]~q\))) # (!\Mux34~4_combout\ & (\regs[2][3]~q\)))) # (!\Mux28~1_combout\ & (((\Mux34~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[2][3]~q\,
	datac => \regs[3][3]~q\,
	datad => \Mux34~4_combout\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X19_Y18_N8
\Mux34~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~6_combout\ = (\Mux11~1_combout\ & ((\Mux0~1_combout\) # ((\Mux34~3_combout\)))) # (!\Mux11~1_combout\ & (!\Mux0~1_combout\ & ((\Mux34~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux34~3_combout\,
	datad => \Mux34~5_combout\,
	combout => \Mux34~6_combout\);

-- Location: FF_X22_Y17_N15
\regs[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][3]~q\);

-- Location: LCCOMB_X23_Y16_N24
\Mux34~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~7_combout\ = (\Mux28~1_combout\ & ((\Mux29~1_combout\) # ((\regs[14][3]~q\)))) # (!\Mux28~1_combout\ & (!\Mux29~1_combout\ & ((\regs[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \regs[14][3]~q\,
	datad => \regs[12][3]~q\,
	combout => \Mux34~7_combout\);

-- Location: FF_X23_Y16_N23
\regs[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][3]~q\);

-- Location: LCCOMB_X23_Y16_N22
\Mux34~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~8_combout\ = (\Mux29~1_combout\ & ((\Mux34~7_combout\ & ((\regs[15][3]~q\))) # (!\Mux34~7_combout\ & (\regs[13][3]~q\)))) # (!\Mux29~1_combout\ & (\Mux34~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux34~7_combout\,
	datac => \regs[13][3]~q\,
	datad => \regs[15][3]~q\,
	combout => \Mux34~8_combout\);

-- Location: LCCOMB_X19_Y18_N18
\Mux34~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~9_combout\ = (\Mux0~1_combout\ & ((\Mux34~6_combout\ & ((\Mux34~8_combout\))) # (!\Mux34~6_combout\ & (\Mux34~1_combout\)))) # (!\Mux0~1_combout\ & (((\Mux34~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux34~6_combout\,
	datad => \Mux34~8_combout\,
	combout => \Mux34~9_combout\);

-- Location: LCCOMB_X17_Y18_N8
\mem_d~164feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~164feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~164feeder_combout\);

-- Location: LCCOMB_X18_Y16_N20
\mem_d~2270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2270_combout\ = (!\Mux13~1_combout\ & (!\Mux11~1_combout\ & (\Mux12~1_combout\ & \mem_d~2296_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2296_combout\,
	combout => \mem_d~2270_combout\);

-- Location: FF_X17_Y18_N9
\mem_d~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~164feeder_combout\,
	ena => \mem_d~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~164_q\);

-- Location: LCCOMB_X17_Y16_N24
\mem_d~2273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2273_combout\ = (\Mux12~1_combout\ & (\Mux13~1_combout\ & (!\Mux11~1_combout\ & \mem_d~2296_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \mem_d~2296_combout\,
	combout => \mem_d~2273_combout\);

-- Location: FF_X17_Y18_N19
\mem_d~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~172_q\);

-- Location: LCCOMB_X17_Y18_N18
\mem_d~2161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2161_combout\ = (\mem_d~2160_combout\ & (((\mem_d~172_q\) # (!\Mux12~1_combout\)))) # (!\mem_d~2160_combout\ & (\mem_d~164_q\ & ((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2160_combout\,
	datab => \mem_d~164_q\,
	datac => \mem_d~172_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2161_combout\);

-- Location: LCCOMB_X21_Y18_N26
\mem_d~2304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2304_combout\ = ((\Mux11~1_combout\ & (\mem_d~2163_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2161_combout\)))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2163_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2161_combout\,
	combout => \mem_d~2304_combout\);

-- Location: LCCOMB_X16_Y16_N26
\mem_d~132feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~132feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~132feeder_combout\);

-- Location: LCCOMB_X25_Y16_N4
\mem_d~2279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2279_combout\ = (\Mux11~1_combout\ & (\Mux12~1_combout\ & (!\Mux13~1_combout\ & \mem_d~2297_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux13~1_combout\,
	datad => \mem_d~2297_combout\,
	combout => \mem_d~2279_combout\);

-- Location: FF_X16_Y16_N27
\mem_d~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~132feeder_combout\,
	ena => \mem_d~2279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~132_q\);

-- Location: FF_X24_Y18_N25
\mem_d~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~116_q\);

-- Location: LCCOMB_X24_Y18_N24
\mem_d~2164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2164_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~132_q\)) # (!\Mux12~1_combout\ & ((\mem_d~116_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~132_q\,
	datac => \mem_d~116_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2164_combout\);

-- Location: FF_X24_Y18_N11
\mem_d~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~140_q\);

-- Location: LCCOMB_X24_Y18_N10
\mem_d~2165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2165_combout\ = (\mem_d~2164_combout\ & (((\mem_d~140_q\) # (!\Mux13~1_combout\)))) # (!\mem_d~2164_combout\ & (\mem_d~124_q\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~124_q\,
	datab => \mem_d~2164_combout\,
	datac => \mem_d~140_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2165_combout\);

-- Location: LCCOMB_X25_Y16_N8
\mem_d~2284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2284_combout\ = (!\Mux11~1_combout\ & (!\Mux12~1_combout\ & (!\Mux13~1_combout\ & \mem_d~2297_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux13~1_combout\,
	datad => \mem_d~2297_combout\,
	combout => \mem_d~2284_combout\);

-- Location: FF_X23_Y18_N1
\mem_d~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~20_q\);

-- Location: LCCOMB_X23_Y18_N0
\mem_d~2166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2166_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~28_q\)) # (!\Mux13~1_combout\ & ((\mem_d~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~28_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~20_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2166_combout\);

-- Location: FF_X23_Y18_N27
\mem_d~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~44_q\);

-- Location: LCCOMB_X23_Y18_N26
\mem_d~2167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2167_combout\ = (\mem_d~2166_combout\ & (((\mem_d~44_q\) # (!\Mux12~1_combout\)))) # (!\mem_d~2166_combout\ & (\mem_d~36_q\ & ((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~36_q\,
	datab => \mem_d~2166_combout\,
	datac => \mem_d~44_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2167_combout\);

-- Location: LCCOMB_X23_Y18_N8
\mem_d~2168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2168_combout\ = (\Mux11~1_combout\ & (\mem_d~2165_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d~2165_combout\,
	datac => \mem_d~2167_combout\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2168_combout\);

-- Location: LCCOMB_X21_Y18_N10
\mem_d~2169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2169_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2168_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2168_combout\,
	combout => \mem_d~2169_combout\);

-- Location: LCCOMB_X21_Y18_N4
\mem_d~2305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2305_combout\ = (\mem_d~2304_combout\ & (\Mux2~1_combout\ $ (\mem_d~2169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datac => \mem_d~2304_combout\,
	datad => \mem_d~2169_combout\,
	combout => \mem_d~2305_combout\);

-- Location: FF_X17_Y17_N15
\mem_d~1708\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1708_q\);

-- Location: LCCOMB_X17_Y17_N0
\mem_d~1700feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1700feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1700feeder_combout\);

-- Location: FF_X17_Y17_N1
\mem_d~1700\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1700feeder_combout\,
	ena => \mem_d~2253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1700_q\);

-- Location: LCCOMB_X17_Y17_N14
\mem_d~2151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2151_combout\ = (\mem_d~2150_combout\ & (((\mem_d~1708_q\)) # (!\Mux12~1_combout\))) # (!\mem_d~2150_combout\ & (\Mux12~1_combout\ & ((\mem_d~1700_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2150_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1708_q\,
	datad => \mem_d~1700_q\,
	combout => \mem_d~2151_combout\);

-- Location: LCCOMB_X21_Y18_N30
\mem_d~2306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2306_combout\ = ((\Mux11~1_combout\ & (\mem_d~2153_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2151_combout\)))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2153_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2151_combout\,
	combout => \mem_d~2306_combout\);

-- Location: LCCOMB_X24_Y17_N26
\mem_d~1572feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1572feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1572feeder_combout\);

-- Location: LCCOMB_X24_Y13_N0
\mem_d~2265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2265_combout\ = (!\Mux11~1_combout\ & (\Mux12~1_combout\ & (\mem_d~2295_combout\ & !\Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2295_combout\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2265_combout\);

-- Location: FF_X24_Y17_N27
\mem_d~1572\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1572feeder_combout\,
	ena => \mem_d~2265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1572_q\);

-- Location: FF_X21_Y18_N9
\mem_d~1580\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1580_q\);

-- Location: LCCOMB_X25_Y17_N24
\mem_d~1564feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1564feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1564feeder_combout\);

-- Location: FF_X25_Y17_N25
\mem_d~1564\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1564feeder_combout\,
	ena => \mem_d~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1564_q\);

-- Location: FF_X25_Y17_N31
\mem_d~1556\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1556_q\);

-- Location: LCCOMB_X25_Y17_N30
\mem_d~2156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2156_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1564_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1556_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1564_q\,
	datac => \mem_d~1556_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2156_combout\);

-- Location: LCCOMB_X21_Y18_N8
\mem_d~2157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2157_combout\ = (\Mux12~1_combout\ & ((\mem_d~2156_combout\ & ((\mem_d~1580_q\))) # (!\mem_d~2156_combout\ & (\mem_d~1572_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1572_q\,
	datac => \mem_d~1580_q\,
	datad => \mem_d~2156_combout\,
	combout => \mem_d~2157_combout\);

-- Location: FF_X21_Y18_N3
\mem_d~1676\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1676_q\);

-- Location: FF_X25_Y14_N21
\mem_d~1652\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1652_q\);

-- Location: LCCOMB_X25_Y14_N2
\mem_d~1668feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1668feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1668feeder_combout\);

-- Location: LCCOMB_X25_Y14_N18
\mem_d~2262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2262_combout\ = (!\Mux13~1_combout\ & (\Mux12~1_combout\ & (\mem_d~2295_combout\ & \Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2295_combout\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2262_combout\);

-- Location: FF_X25_Y14_N3
\mem_d~1668\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1668feeder_combout\,
	ena => \mem_d~2262_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1668_q\);

-- Location: LCCOMB_X25_Y14_N20
\mem_d~2154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2154_combout\ = (\Mux13~1_combout\ & (\Mux12~1_combout\)) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~1668_q\))) # (!\Mux12~1_combout\ & (\mem_d~1652_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1652_q\,
	datad => \mem_d~1668_q\,
	combout => \mem_d~2154_combout\);

-- Location: LCCOMB_X21_Y18_N2
\mem_d~2155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2155_combout\ = (\Mux13~1_combout\ & ((\mem_d~2154_combout\ & ((\mem_d~1676_q\))) # (!\mem_d~2154_combout\ & (\mem_d~1660_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1660_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1676_q\,
	datad => \mem_d~2154_combout\,
	combout => \mem_d~2155_combout\);

-- Location: LCCOMB_X21_Y18_N18
\mem_d~2158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2158_combout\ = (\Mux11~1_combout\ & ((\mem_d~2155_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \mem_d~2157_combout\,
	datad => \mem_d~2155_combout\,
	combout => \mem_d~2158_combout\);

-- Location: LCCOMB_X21_Y18_N12
\mem_d~2159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2159_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2158_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2158_combout\,
	combout => \mem_d~2159_combout\);

-- Location: LCCOMB_X21_Y18_N28
\mem_d~2307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2307_combout\ = (\mem_d~2306_combout\ & (\Mux2~1_combout\ $ (\mem_d~2159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datac => \mem_d~2306_combout\,
	datad => \mem_d~2159_combout\,
	combout => \mem_d~2307_combout\);

-- Location: LCCOMB_X21_Y18_N16
\mem_d~2290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2290_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\mem_d~2307_combout\))) # (!\Mux0~0_combout\ & (\mem_d~2305_combout\)))) # (!\Mux167~0_combout\ & (((\mem_d~2307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \mem_d~2305_combout\,
	datad => \mem_d~2307_combout\,
	combout => \mem_d~2290_combout\);

-- Location: LCCOMB_X21_Y18_N24
\Mux43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & (\Add0~6_combout\)) # (!\Mux169~1_combout\ & ((\mem_d~2290_combout\))))) # (!\Mux168~1_combout\ & (!\Mux169~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Add0~6_combout\,
	datad => \mem_d~2290_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X22_Y15_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Mux7~6_combout\ & ((\Mux18~4_combout\ & (!\Add1~5\)) # (!\Mux18~4_combout\ & (\Add1~5\ & VCC)))) # (!\Mux7~6_combout\ & ((\Mux18~4_combout\ & ((\Add1~5\) # (GND))) # (!\Mux18~4_combout\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\Mux7~6_combout\ & (\Mux18~4_combout\ & !\Add1~5\)) # (!\Mux7~6_combout\ & ((\Mux18~4_combout\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux18~4_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X22_Y13_N8
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Mux6~6_combout\ & (\Add3~7\ $ (GND))) # (!\Mux6~6_combout\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\Mux6~6_combout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~6_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X21_Y13_N18
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Mux6~6_combout\ & ((GND) # (!\Add2~7\))) # (!\Mux6~6_combout\ & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((\Mux6~6_combout\) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~6_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X19_Y15_N20
\Mux42~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\Mux168~1_combout\ & (\Add3~8_combout\ & (\Mux169~1_combout\))) # (!\Mux168~1_combout\ & (((\Add2~8_combout\) # (!\Mux169~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add3~8_combout\,
	datac => \Mux169~1_combout\,
	datad => \Add2~8_combout\,
	combout => \Mux42~0_combout\);

-- Location: FF_X22_Y16_N1
\regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][0]~q\);

-- Location: FF_X23_Y17_N9
\regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][0]~q\);

-- Location: FF_X22_Y16_N19
\regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][0]~q\);

-- Location: LCCOMB_X19_Y18_N24
\Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\Mux11~1_combout\ & (!\Mux0~1_combout\ & (!\Mux29~1_combout\ & !\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X19_Y18_N2
\regs[0][5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][5]~6_combout\ = (\Mux167~1_combout\ & (\Decoder0~6_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Decoder0~6_combout\,
	datac => \Mux167~0_combout\,
	combout => \regs[0][5]~6_combout\);

-- Location: FF_X23_Y17_N13
\regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][0]~q\);

-- Location: LCCOMB_X23_Y17_N18
\Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux2~1_combout\ & (((\Mux1~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~2_combout\ & (\regs[2][0]~q\)) # (!\Mux1~2_combout\ & ((\regs[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[2][0]~q\,
	datac => \regs[0][0]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X23_Y17_N8
\Mux10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux2~1_combout\ & ((\Mux10~4_combout\ & ((\regs[3][0]~q\))) # (!\Mux10~4_combout\ & (\regs[1][0]~q\)))) # (!\Mux2~1_combout\ & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[1][0]~q\,
	datac => \regs[3][0]~q\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X22_Y17_N2
\Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux1~2_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & (\regs[13][0]~q\)) # (!\Mux2~1_combout\ & ((\regs[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][0]~q\,
	datab => \regs[12][0]~q\,
	datac => \Mux1~2_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X22_Y17_N12
\Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux1~2_combout\ & ((\Mux10~2_combout\ & ((\regs[15][0]~q\))) # (!\Mux10~2_combout\ & (\regs[14][0]~q\)))) # (!\Mux1~2_combout\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][0]~q\,
	datab => \Mux1~2_combout\,
	datac => \regs[15][0]~q\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X23_Y17_N26
\Mult1|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(0) = LCELL((\Mux11~1_combout\ & ((\Mux0~1_combout\ & ((\Mux10~3_combout\))) # (!\Mux0~1_combout\ & (\Mux10~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux10~5_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mult1|auto_generated|le5a\(0));

-- Location: LCCOMB_X25_Y15_N8
\Mult1|auto_generated|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~8_combout\ = ((\Mult1|auto_generated|op_1~4_combout\ $ (\Mult1|auto_generated|le5a\(0) $ (!\Mult1|auto_generated|op_3~7\)))) # (GND)
-- \Mult1|auto_generated|op_3~9\ = CARRY((\Mult1|auto_generated|op_1~4_combout\ & ((\Mult1|auto_generated|le5a\(0)) # (!\Mult1|auto_generated|op_3~7\))) # (!\Mult1|auto_generated|op_1~4_combout\ & (\Mult1|auto_generated|le5a\(0) & 
-- !\Mult1|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~4_combout\,
	datab => \Mult1|auto_generated|le5a\(0),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~7\,
	combout => \Mult1|auto_generated|op_3~8_combout\,
	cout => \Mult1|auto_generated|op_3~9\);

-- Location: LCCOMB_X19_Y15_N14
\Mux42~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Mux42~0_combout\ & ((\Mux2~1_combout\) # ((\Mux169~1_combout\)))) # (!\Mux42~0_combout\ & (((!\Mux169~1_combout\ & \Mult1|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux42~0_combout\,
	datac => \Mux169~1_combout\,
	datad => \Mult1|auto_generated|op_3~8_combout\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X22_Y15_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Mux17~4_combout\ $ (\Mux6~6_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Mux17~4_combout\ & (\Mux6~6_combout\ & !\Add1~7\)) # (!\Mux17~4_combout\ & ((\Mux6~6_combout\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux6~6_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X21_Y13_N20
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Mux5~6_combout\ & (\Add2~9\ & VCC)) # (!\Mux5~6_combout\ & (!\Add2~9\))
-- \Add2~11\ = CARRY((!\Mux5~6_combout\ & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~6_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X18_Y15_N2
\Mux41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~6_combout\ = (\Mux167~0_combout\ & (!\Mux168~0_combout\ & ((\Add2~10_combout\) # (!\Mux169~0_combout\)))) # (!\Mux167~0_combout\ & (((\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~0_combout\,
	datab => \Mux169~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \Add2~10_combout\,
	combout => \Mux41~6_combout\);

-- Location: FF_X23_Y15_N21
\regs[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][5]~q\);

-- Location: FF_X21_Y14_N21
\regs[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][5]~q\);

-- Location: FF_X21_Y14_N7
\regs[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][5]~q\);

-- Location: LCCOMB_X21_Y14_N6
\Mux32~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~7_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & ((\regs[14][5]~q\))) # (!\Mux28~1_combout\ & (\regs[12][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][5]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[14][5]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux32~7_combout\);

-- Location: LCCOMB_X21_Y14_N20
\Mux32~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~8_combout\ = (\Mux29~1_combout\ & ((\Mux32~7_combout\ & (\regs[15][5]~q\)) # (!\Mux32~7_combout\ & ((\regs[13][5]~q\))))) # (!\Mux29~1_combout\ & (((\Mux32~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[15][5]~q\,
	datac => \regs[13][5]~q\,
	datad => \Mux32~7_combout\,
	combout => \Mux32~8_combout\);

-- Location: FF_X18_Y15_N25
\regs[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][5]~q\);

-- Location: FF_X18_Y15_N11
\regs[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[10][5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][5]~q\);

-- Location: LCCOMB_X18_Y15_N24
\Mux32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux28~1_combout\ & ((\Mux29~1_combout\) # ((\regs[10][5]~q\)))) # (!\Mux28~1_combout\ & (!\Mux29~1_combout\ & (\regs[8][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \regs[8][5]~q\,
	datad => \regs[10][5]~q\,
	combout => \Mux32~0_combout\);

-- Location: FF_X22_Y18_N27
\regs[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][5]~q\);

-- Location: LCCOMB_X22_Y18_N12
\regs[11][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[11][5]~feeder_combout\);

-- Location: FF_X22_Y18_N13
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
	ena => \regs[11][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][5]~q\);

-- Location: LCCOMB_X22_Y18_N26
\Mux32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux29~1_combout\ & ((\Mux32~0_combout\ & ((\regs[11][5]~q\))) # (!\Mux32~0_combout\ & (\regs[9][5]~q\)))) # (!\Mux29~1_combout\ & (\Mux32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux32~0_combout\,
	datac => \regs[9][5]~q\,
	datad => \regs[11][5]~q\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Mux32~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~9_combout\ = (\Mux32~6_combout\ & ((\Mux32~8_combout\) # ((!\Mux0~1_combout\)))) # (!\Mux32~6_combout\ & (((\Mux32~1_combout\ & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~6_combout\,
	datab => \Mux32~8_combout\,
	datac => \Mux32~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux32~9_combout\);

-- Location: FF_X24_Y18_N21
\mem_d~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~118_q\);

-- Location: LCCOMB_X24_Y18_N20
\mem_d~2206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2206_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~134_q\)) # (!\Mux12~1_combout\ & ((\mem_d~118_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~134_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~118_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2206_combout\);

-- Location: FF_X24_Y18_N31
\mem_d~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~142_q\);

-- Location: LCCOMB_X24_Y18_N30
\mem_d~2207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2207_combout\ = (\mem_d~2206_combout\ & (((\mem_d~142_q\) # (!\Mux13~1_combout\)))) # (!\mem_d~2206_combout\ & (\mem_d~126_q\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~126_q\,
	datab => \mem_d~2206_combout\,
	datac => \mem_d~142_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2207_combout\);

-- Location: FF_X23_Y18_N29
\mem_d~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux32~9_combout\,
	ena => \mem_d~2285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~46_q\);

-- Location: FF_X24_Y16_N7
\mem_d~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~38_q\);

-- Location: FF_X23_Y18_N11
\mem_d~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~22_q\);

-- Location: LCCOMB_X23_Y18_N10
\mem_d~2208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2208_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~30_q\)) # (!\Mux13~1_combout\ & ((\mem_d~22_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~30_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~22_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2208_combout\);

-- Location: LCCOMB_X24_Y16_N6
\mem_d~2209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2209_combout\ = (\Mux12~1_combout\ & ((\mem_d~2208_combout\ & (\mem_d~46_q\)) # (!\mem_d~2208_combout\ & ((\mem_d~38_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~46_q\,
	datac => \mem_d~38_q\,
	datad => \mem_d~2208_combout\,
	combout => \mem_d~2209_combout\);

-- Location: LCCOMB_X23_Y17_N12
\mem_d~2210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2210_combout\ = (\Mux11~1_combout\ & (\mem_d~2207_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2207_combout\,
	datad => \mem_d~2209_combout\,
	combout => \mem_d~2210_combout\);

-- Location: LCCOMB_X23_Y17_N20
\mem_d~2211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2211_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2210_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2210_combout\,
	combout => \mem_d~2211_combout\);

-- Location: FF_X17_Y15_N13
\mem_d~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~254_q\);

-- Location: LCCOMB_X16_Y15_N20
\mem_d~262feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~262feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~262feeder_combout\);

-- Location: FF_X16_Y15_N21
\mem_d~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~262feeder_combout\,
	ena => \mem_d~2275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~262_q\);

-- Location: FF_X16_Y15_N11
\mem_d~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~246_q\);

-- Location: LCCOMB_X16_Y15_N10
\mem_d~2204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2204_combout\ = (\Mux12~1_combout\ & ((\mem_d~262_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~246_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~262_q\,
	datac => \mem_d~246_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2204_combout\);

-- Location: LCCOMB_X17_Y15_N12
\mem_d~2205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2205_combout\ = (\Mux13~1_combout\ & ((\mem_d~2204_combout\ & (\mem_d~270_q\)) # (!\mem_d~2204_combout\ & ((\mem_d~254_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~270_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~254_q\,
	datad => \mem_d~2204_combout\,
	combout => \mem_d~2205_combout\);

-- Location: FF_X17_Y18_N23
\mem_d~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~174_q\);

-- Location: LCCOMB_X17_Y18_N24
\mem_d~166feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~166feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~166feeder_combout\);

-- Location: FF_X17_Y18_N25
\mem_d~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~166feeder_combout\,
	ena => \mem_d~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~166_q\);

-- Location: LCCOMB_X17_Y18_N22
\mem_d~2203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2203_combout\ = (\mem_d~2202_combout\ & (((\mem_d~174_q\)) # (!\Mux12~1_combout\))) # (!\mem_d~2202_combout\ & (\Mux12~1_combout\ & ((\mem_d~166_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2202_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~174_q\,
	datad => \mem_d~166_q\,
	combout => \mem_d~2203_combout\);

-- Location: LCCOMB_X18_Y17_N18
\mem_d~2300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2300_combout\ = ((\Mux11~1_combout\ & (\mem_d~2205_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2203_combout\)))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2205_combout\,
	datad => \mem_d~2203_combout\,
	combout => \mem_d~2300_combout\);

-- Location: LCCOMB_X22_Y17_N26
\mem_d~2301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2301_combout\ = (\mem_d~2300_combout\ & (\Mux2~1_combout\ $ (\mem_d~2211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datac => \mem_d~2211_combout\,
	datad => \mem_d~2300_combout\,
	combout => \mem_d~2301_combout\);

-- Location: FF_X25_Y14_N1
\mem_d~1654\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1654_q\);

-- Location: LCCOMB_X25_Y14_N0
\mem_d~2191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2191_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1670_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1654_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1670_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1654_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2191_combout\);

-- Location: LCCOMB_X24_Y14_N10
\mem_d~2261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2261_combout\ = (!\Mux2~1_combout\ & (\Mux13~1_combout\ & (\mem_d~2288_combout\ & \mem_d~2252_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2288_combout\,
	datad => \mem_d~2252_combout\,
	combout => \mem_d~2261_combout\);

-- Location: FF_X24_Y16_N1
\mem_d~1662\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1662_q\);

-- Location: LCCOMB_X24_Y16_N0
\mem_d~2192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2192_combout\ = (\mem_d~2191_combout\ & ((\mem_d~1678_q\) # ((!\Mux13~1_combout\)))) # (!\mem_d~2191_combout\ & (((\mem_d~1662_q\ & \Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1678_q\,
	datab => \mem_d~2191_combout\,
	datac => \mem_d~1662_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2192_combout\);

-- Location: FF_X24_Y17_N17
\mem_d~1574\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1574_q\);

-- Location: LCCOMB_X25_Y17_N28
\mem_d~1566feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1566feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1566feeder_combout\);

-- Location: FF_X25_Y17_N29
\mem_d~1566\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1566feeder_combout\,
	ena => \mem_d~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1566_q\);

-- Location: FF_X25_Y17_N7
\mem_d~1558\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1558_q\);

-- Location: LCCOMB_X25_Y17_N6
\mem_d~2193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2193_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1566_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1558_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1566_q\,
	datac => \mem_d~1558_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2193_combout\);

-- Location: LCCOMB_X24_Y17_N16
\mem_d~2194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2194_combout\ = (\Mux12~1_combout\ & ((\mem_d~2193_combout\ & (\mem_d~1582_q\)) # (!\mem_d~2193_combout\ & ((\mem_d~1574_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1582_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1574_q\,
	datad => \mem_d~2193_combout\,
	combout => \mem_d~2194_combout\);

-- Location: LCCOMB_X24_Y17_N4
\mem_d~2195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2195_combout\ = (\Mux11~1_combout\ & (\mem_d~2192_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2194_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_d~2192_combout\,
	datac => \Mux11~1_combout\,
	datad => \mem_d~2194_combout\,
	combout => \mem_d~2195_combout\);

-- Location: FF_X18_Y14_N25
\mem_d~1790\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2257_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1790_q\);

-- Location: LCCOMB_X17_Y14_N20
\mem_d~1798feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1798feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1798feeder_combout\);

-- Location: FF_X17_Y14_N21
\mem_d~1798\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1798feeder_combout\,
	ena => \mem_d~2258_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1798_q\);

-- Location: FF_X17_Y14_N31
\mem_d~1782\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1782_q\);

-- Location: LCCOMB_X17_Y14_N30
\mem_d~2196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2196_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1798_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1782_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1798_q\,
	datac => \mem_d~1782_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2196_combout\);

-- Location: LCCOMB_X18_Y14_N24
\mem_d~2197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2197_combout\ = (\Mux13~1_combout\ & ((\mem_d~2196_combout\ & (\mem_d~1806_q\)) # (!\mem_d~2196_combout\ & ((\mem_d~1790_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1806_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1790_q\,
	datad => \mem_d~2196_combout\,
	combout => \mem_d~2197_combout\);

-- Location: FF_X17_Y17_N21
\mem_d~1702\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1702_q\);

-- Location: LCCOMB_X16_Y17_N24
\mem_d~1694feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1694feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1694feeder_combout\);

-- Location: FF_X16_Y17_N25
\mem_d~1694\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1694feeder_combout\,
	ena => \mem_d~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1694_q\);

-- Location: FF_X16_Y17_N19
\mem_d~1686\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1686_q\);

-- Location: LCCOMB_X16_Y17_N18
\mem_d~2198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2198_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1694_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1686_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1694_q\,
	datac => \mem_d~1686_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2198_combout\);

-- Location: LCCOMB_X17_Y17_N20
\mem_d~2199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2199_combout\ = (\Mux12~1_combout\ & ((\mem_d~2198_combout\ & (\mem_d~1710_q\)) # (!\mem_d~2198_combout\ & ((\mem_d~1702_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1710_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1702_q\,
	datad => \mem_d~2198_combout\,
	combout => \mem_d~2199_combout\);

-- Location: LCCOMB_X22_Y17_N16
\mem_d~2200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2200_combout\ = (\Mux11~1_combout\ & (\mem_d~2197_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2197_combout\,
	datad => \mem_d~2199_combout\,
	combout => \mem_d~2200_combout\);

-- Location: LCCOMB_X22_Y17_N6
\mem_d~2201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2201_combout\ = (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2200_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~2_combout\,
	datac => \mem_d~2195_combout\,
	datad => \mem_d~2200_combout\,
	combout => \mem_d~2201_combout\);

-- Location: LCCOMB_X22_Y17_N22
\mem_d~2292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2292_combout\ = (\Mux0~0_combout\ & (((\mem_d~2201_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & (\mem_d~2301_combout\)) # (!\Mux167~0_combout\ & ((\mem_d~2201_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2301_combout\,
	datad => \mem_d~2201_combout\,
	combout => \mem_d~2292_combout\);

-- Location: FF_X23_Y15_N19
\regs[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][4]~q\);

-- Location: FF_X23_Y15_N1
\regs[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][4]~q\);

-- Location: LCCOMB_X23_Y16_N6
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\regs[14][4]~q\)) # (!\Mux12~1_combout\ & ((\regs[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][4]~q\,
	datab => \regs[12][4]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux13~1_combout\ & ((\Mux17~0_combout\ & ((\regs[15][4]~q\))) # (!\Mux17~0_combout\ & (\regs[13][4]~q\)))) # (!\Mux13~1_combout\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][4]~q\,
	datab => \regs[15][4]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: FF_X22_Y16_N25
\regs[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][4]~q\);

-- Location: LCCOMB_X22_Y16_N10
\Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\regs[1][4]~q\))) # (!\Mux13~1_combout\ & (\regs[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][4]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[1][4]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X22_Y16_N24
\Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux12~1_combout\ & ((\Mux17~2_combout\ & (\regs[3][4]~q\)) # (!\Mux17~2_combout\ & ((\regs[2][4]~q\))))) # (!\Mux12~1_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][4]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[2][4]~q\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X22_Y16_N4
\Mux17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux11~1_combout\ & (\Mux17~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Mux6~6_combout\ $ (\Mux17~4_combout\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\Mux6~6_combout\ & ((\Mux17~4_combout\) # (!\Add0~7\))) # (!\Mux6~6_combout\ & (\Mux17~4_combout\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~6_combout\,
	datab => \Mux17~4_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X21_Y16_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\Mux16~4_combout\ & ((\Mux5~6_combout\ & (\Add0~9\ & VCC)) # (!\Mux5~6_combout\ & (!\Add0~9\)))) # (!\Mux16~4_combout\ & ((\Mux5~6_combout\ & (!\Add0~9\)) # (!\Mux5~6_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\Mux16~4_combout\ & (!\Mux5~6_combout\ & !\Add0~9\)) # (!\Mux16~4_combout\ & ((!\Add0~9\) # (!\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux5~6_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X18_Y15_N4
\Mux41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Mux169~1_combout\ & (\Mux168~1_combout\ & ((\Add0~10_combout\)))) # (!\Mux169~1_combout\ & (((\mem_d~2292_combout\)) # (!\Mux168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \mem_d~2292_combout\,
	datad => \Add0~10_combout\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X21_Y13_N22
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Mux4~6_combout\ & ((GND) # (!\Add2~11\))) # (!\Mux4~6_combout\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\Mux4~6_combout\) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~6_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X22_Y13_N10
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Mux5~6_combout\ & (!\Add3~9\)) # (!\Mux5~6_combout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~6_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X22_Y13_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Mux4~6_combout\ & (\Add3~11\ $ (GND))) # (!\Mux4~6_combout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\Mux4~6_combout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~6_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: FF_X23_Y17_N11
\regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][2]~q\);

-- Location: LCCOMB_X23_Y17_N10
\Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux2~1_combout\ & (((\Mux1~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~2_combout\ & (\regs[2][2]~q\)) # (!\Mux1~2_combout\ & ((\regs[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[2][2]~q\,
	datac => \regs[0][2]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X23_Y17_N28
\Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux2~1_combout\ & ((\Mux8~4_combout\ & ((\regs[3][2]~q\))) # (!\Mux8~4_combout\ & (\regs[1][2]~q\)))) # (!\Mux2~1_combout\ & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[1][2]~q\,
	datac => \regs[3][2]~q\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X24_Y17_N14
\Mult1|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(2) = LCELL((\Mux11~1_combout\ & ((\Mux0~1_combout\ & (\Mux8~3_combout\)) # (!\Mux0~1_combout\ & ((\Mux8~5_combout\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux8~5_combout\,
	combout => \Mult1|auto_generated|le5a\(2));

-- Location: LCCOMB_X24_Y15_N6
\Mult1|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(3) = LCELL((\Mux11~1_combout\ & (\Mux12~0_combout\ & (\Mux167~0_combout\ & !\Mux7~6_combout\))) # (!\Mux11~1_combout\ & (\Mux7~6_combout\ & ((!\Mux167~0_combout\) # (!\Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mult1|auto_generated|le4a\(3));

-- Location: LCCOMB_X22_Y17_N0
\Mult1|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(2) = LCELL((\Mux11~1_combout\ & (\Mux12~0_combout\ & (\Mux167~0_combout\ & !\Mux8~6_combout\))) # (!\Mux11~1_combout\ & (\Mux8~6_combout\ & ((!\Mux167~0_combout\) # (!\Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mult1|auto_generated|le4a\(2));

-- Location: LCCOMB_X25_Y15_N24
\Mult1|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~6_combout\ = (\Mult1|auto_generated|le3a\(5) & ((\Mult1|auto_generated|le4a\(3) & (\Mult1|auto_generated|op_1~5\ & VCC)) # (!\Mult1|auto_generated|le4a\(3) & (!\Mult1|auto_generated|op_1~5\)))) # (!\Mult1|auto_generated|le3a\(5) 
-- & ((\Mult1|auto_generated|le4a\(3) & (!\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|le4a\(3) & ((\Mult1|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|auto_generated|op_1~7\ = CARRY((\Mult1|auto_generated|le3a\(5) & (!\Mult1|auto_generated|le4a\(3) & !\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|le3a\(5) & ((!\Mult1|auto_generated|op_1~5\) # (!\Mult1|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(5),
	datab => \Mult1|auto_generated|le4a\(3),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~5\,
	combout => \Mult1|auto_generated|op_1~6_combout\,
	cout => \Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X25_Y15_N10
\Mult1|auto_generated|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~10_combout\ = (\Mult1|auto_generated|le5a\(1) & ((\Mult1|auto_generated|op_1~6_combout\ & (\Mult1|auto_generated|op_3~9\ & VCC)) # (!\Mult1|auto_generated|op_1~6_combout\ & (!\Mult1|auto_generated|op_3~9\)))) # 
-- (!\Mult1|auto_generated|le5a\(1) & ((\Mult1|auto_generated|op_1~6_combout\ & (!\Mult1|auto_generated|op_3~9\)) # (!\Mult1|auto_generated|op_1~6_combout\ & ((\Mult1|auto_generated|op_3~9\) # (GND)))))
-- \Mult1|auto_generated|op_3~11\ = CARRY((\Mult1|auto_generated|le5a\(1) & (!\Mult1|auto_generated|op_1~6_combout\ & !\Mult1|auto_generated|op_3~9\)) # (!\Mult1|auto_generated|le5a\(1) & ((!\Mult1|auto_generated|op_3~9\) # 
-- (!\Mult1|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le5a\(1),
	datab => \Mult1|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~9\,
	combout => \Mult1|auto_generated|op_3~10_combout\,
	cout => \Mult1|auto_generated|op_3~11\);

-- Location: LCCOMB_X25_Y15_N12
\Mult1|auto_generated|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~12_combout\ = ((\Mult1|auto_generated|op_1~8_combout\ $ (\Mult1|auto_generated|le5a\(2) $ (!\Mult1|auto_generated|op_3~11\)))) # (GND)
-- \Mult1|auto_generated|op_3~13\ = CARRY((\Mult1|auto_generated|op_1~8_combout\ & ((\Mult1|auto_generated|le5a\(2)) # (!\Mult1|auto_generated|op_3~11\))) # (!\Mult1|auto_generated|op_1~8_combout\ & (\Mult1|auto_generated|le5a\(2) & 
-- !\Mult1|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~8_combout\,
	datab => \Mult1|auto_generated|le5a\(2),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~11\,
	combout => \Mult1|auto_generated|op_3~12_combout\,
	cout => \Mult1|auto_generated|op_3~13\);

-- Location: LCCOMB_X25_Y15_N16
\Mux40~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\Mux169~1_combout\ & (\Mux168~1_combout\ & (\Add3~12_combout\))) # (!\Mux169~1_combout\ & (((\Mult1|auto_generated|op_3~12_combout\)) # (!\Mux168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add3~12_combout\,
	datad => \Mult1|auto_generated|op_3~12_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X21_Y15_N22
\Mux40~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\Mux168~1_combout\ & (((\Mux40~0_combout\)))) # (!\Mux168~1_combout\ & ((\Mux40~0_combout\ & (\Mux0~1_combout\)) # (!\Mux40~0_combout\ & ((\Add2~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add2~12_combout\,
	datad => \Mux40~0_combout\,
	combout => \Mux40~1_combout\);

-- Location: FF_X21_Y15_N1
\regs[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[9][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][6]~q\);

-- Location: FF_X21_Y15_N25
\regs[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][6]~q\);

-- Location: LCCOMB_X21_Y15_N24
\Mux31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\ & (((\regs[11][6]~q\) # (!\Mux29~1_combout\)))) # (!\Mux31~0_combout\ & (\regs[9][6]~q\ & ((\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \regs[9][6]~q\,
	datac => \regs[11][6]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux31~1_combout\);

-- Location: FF_X21_Y17_N25
\regs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][6]~q\);

-- Location: LCCOMB_X18_Y18_N4
\regs[5][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][6]~feeder_combout\ = \Mux40~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux40~4_combout\,
	combout => \regs[5][6]~feeder_combout\);

-- Location: LCCOMB_X19_Y13_N10
\Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\Mux29~1_combout\ & (!\Mux0~1_combout\ & (\Mux11~1_combout\ & !\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X19_Y13_N0
\regs[5][4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][4]~13_combout\ = (\Mux167~0_combout\ & (\Mux167~1_combout\ & \Decoder0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux167~1_combout\,
	datad => \Decoder0~13_combout\,
	combout => \regs[5][4]~13_combout\);

-- Location: FF_X18_Y18_N5
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
	ena => \regs[5][4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][6]~q\);

-- Location: LCCOMB_X19_Y15_N8
\regs[4][2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][2]~14_combout\ = (\Decoder0~14_combout\ & (\Mux167~1_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~14_combout\,
	datab => \Mux167~1_combout\,
	datac => \Mux167~0_combout\,
	combout => \regs[4][2]~14_combout\);

-- Location: FF_X18_Y18_N31
\regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][6]~q\);

-- Location: LCCOMB_X18_Y18_N30
\Mux31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[5][6]~q\)) # (!\Mux29~1_combout\ & ((\regs[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[5][6]~q\,
	datac => \regs[4][6]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X21_Y17_N24
\Mux31~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux28~1_combout\ & ((\Mux31~2_combout\ & ((\regs[7][6]~q\))) # (!\Mux31~2_combout\ & (\regs[6][6]~q\)))) # (!\Mux28~1_combout\ & (((\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][6]~q\,
	datab => \Mux28~1_combout\,
	datac => \regs[7][6]~q\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~3_combout\);

-- Location: FF_X24_Y15_N27
\regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][6]~q\);

-- Location: FF_X22_Y16_N21
\regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][6]~q\);

-- Location: LCCOMB_X21_Y17_N2
\Mux31~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\Mux31~4_combout\ & ((\regs[3][6]~q\) # ((!\Mux28~1_combout\)))) # (!\Mux31~4_combout\ & (((\Mux28~1_combout\ & \regs[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~4_combout\,
	datab => \regs[3][6]~q\,
	datac => \Mux28~1_combout\,
	datad => \regs[2][6]~q\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X21_Y17_N16
\Mux31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux11~1_combout\ & ((\Mux31~3_combout\) # ((\Mux0~1_combout\)))) # (!\Mux11~1_combout\ & (((!\Mux0~1_combout\ & \Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux31~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux31~5_combout\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X21_Y17_N22
\Mux31~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\Mux0~1_combout\ & ((\Mux31~6_combout\ & (\Mux31~8_combout\)) # (!\Mux31~6_combout\ & ((\Mux31~1_combout\))))) # (!\Mux0~1_combout\ & (((\Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~8_combout\,
	datab => \Mux31~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux31~6_combout\,
	combout => \Mux31~9_combout\);

-- Location: LCCOMB_X16_Y17_N20
\mem_d~1695feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1695feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1695feeder_combout\);

-- Location: FF_X16_Y17_N21
\mem_d~1695\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1695feeder_combout\,
	ena => \mem_d~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1695_q\);

-- Location: FF_X16_Y17_N7
\mem_d~1687\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1687_q\);

-- Location: LCCOMB_X16_Y17_N6
\mem_d~2219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2219_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1695_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1687_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1695_q\,
	datac => \mem_d~1687_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2219_combout\);

-- Location: FF_X17_Y17_N25
\mem_d~1703\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1703_q\);

-- Location: LCCOMB_X17_Y17_N24
\mem_d~2220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2220_combout\ = (\mem_d~2219_combout\ & ((\mem_d~1711_q\) # ((!\Mux12~1_combout\)))) # (!\mem_d~2219_combout\ & (((\mem_d~1703_q\ & \Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1711_q\,
	datab => \mem_d~2219_combout\,
	datac => \mem_d~1703_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2220_combout\);

-- Location: LCCOMB_X17_Y17_N10
\mem_d~2221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2221_combout\ = (\Mux11~1_combout\ & (\mem_d~2218_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2218_combout\,
	datab => \Mux11~1_combout\,
	datad => \mem_d~2220_combout\,
	combout => \mem_d~2221_combout\);

-- Location: FF_X24_Y17_N3
\mem_d~1575\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1575_q\);

-- Location: LCCOMB_X25_Y17_N20
\mem_d~1567feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1567feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1567feeder_combout\);

-- Location: FF_X25_Y17_N21
\mem_d~1567\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1567feeder_combout\,
	ena => \mem_d~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1567_q\);

-- Location: FF_X25_Y17_N19
\mem_d~1559\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1559_q\);

-- Location: LCCOMB_X25_Y17_N18
\mem_d~2214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2214_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1567_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1559_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1567_q\,
	datac => \mem_d~1559_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2214_combout\);

-- Location: LCCOMB_X24_Y17_N2
\mem_d~2215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2215_combout\ = (\Mux12~1_combout\ & ((\mem_d~2214_combout\ & (\mem_d~1583_q\)) # (!\mem_d~2214_combout\ & ((\mem_d~1575_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1583_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1575_q\,
	datad => \mem_d~2214_combout\,
	combout => \mem_d~2215_combout\);

-- Location: FF_X25_Y14_N9
\mem_d~1655\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1655_q\);

-- Location: LCCOMB_X25_Y14_N8
\mem_d~2212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2212_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1671_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1655_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1671_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1655_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2212_combout\);

-- Location: FF_X24_Y16_N21
\mem_d~1663\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1663_q\);

-- Location: LCCOMB_X24_Y16_N20
\mem_d~2213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2213_combout\ = (\mem_d~2212_combout\ & ((\mem_d~1679_q\) # ((!\Mux13~1_combout\)))) # (!\mem_d~2212_combout\ & (((\mem_d~1663_q\ & \Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1679_q\,
	datab => \mem_d~2212_combout\,
	datac => \mem_d~1663_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2213_combout\);

-- Location: LCCOMB_X21_Y15_N20
\mem_d~2216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2216_combout\ = (\Mux11~1_combout\ & ((\mem_d~2213_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \mem_d~2215_combout\,
	datad => \mem_d~2213_combout\,
	combout => \mem_d~2216_combout\);

-- Location: LCCOMB_X21_Y15_N30
\mem_d~2222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2222_combout\ = (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & (\mem_d~2221_combout\)) # (!\Mux2~1_combout\ & ((\mem_d~2216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2221_combout\,
	datad => \mem_d~2216_combout\,
	combout => \mem_d~2222_combout\);

-- Location: FF_X23_Y18_N5
\mem_d~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~47_q\);

-- Location: FF_X24_Y16_N31
\mem_d~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~39_q\);

-- Location: FF_X23_Y18_N19
\mem_d~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~23_q\);

-- Location: LCCOMB_X23_Y18_N18
\mem_d~2229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2229_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~31_q\)) # (!\Mux13~1_combout\ & ((\mem_d~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~31_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~23_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2229_combout\);

-- Location: LCCOMB_X24_Y16_N30
\mem_d~2230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2230_combout\ = (\Mux12~1_combout\ & ((\mem_d~2229_combout\ & (\mem_d~47_q\)) # (!\mem_d~2229_combout\ & ((\mem_d~39_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~47_q\,
	datac => \mem_d~39_q\,
	datad => \mem_d~2229_combout\,
	combout => \mem_d~2230_combout\);

-- Location: FF_X24_Y18_N3
\mem_d~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~143_q\);

-- Location: FF_X24_Y18_N13
\mem_d~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~119_q\);

-- Location: LCCOMB_X24_Y18_N12
\mem_d~2227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2227_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~135_q\)) # (!\Mux12~1_combout\ & ((\mem_d~119_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~135_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~119_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2227_combout\);

-- Location: LCCOMB_X24_Y18_N2
\mem_d~2228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2228_combout\ = (\Mux13~1_combout\ & ((\mem_d~2227_combout\ & ((\mem_d~143_q\))) # (!\mem_d~2227_combout\ & (\mem_d~127_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~127_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~143_q\,
	datad => \mem_d~2227_combout\,
	combout => \mem_d~2228_combout\);

-- Location: LCCOMB_X21_Y15_N4
\mem_d~2231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2231_combout\ = (\Mux11~1_combout\ & ((\mem_d~2228_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2230_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \mem_d~2230_combout\,
	datad => \mem_d~2228_combout\,
	combout => \mem_d~2231_combout\);

-- Location: LCCOMB_X21_Y15_N26
\mem_d~2232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2232_combout\ = ((\Mux2~0_combout\ & (!\Mux1~0_combout\ & \mem_d~2231_combout\)) # (!\Mux2~0_combout\ & (\Mux1~0_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \mem_d~2231_combout\,
	datad => \Mux167~0_combout\,
	combout => \mem_d~2232_combout\);

-- Location: FF_X17_Y18_N1
\mem_d~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~175_q\);

-- Location: LCCOMB_X18_Y16_N26
\mem_d~2272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2272_combout\ = (!\Mux13~1_combout\ & (!\Mux12~1_combout\ & (!\Mux11~1_combout\ & \mem_d~2296_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \mem_d~2296_combout\,
	combout => \mem_d~2272_combout\);

-- Location: FF_X16_Y18_N11
\mem_d~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~151_q\);

-- Location: LCCOMB_X16_Y18_N20
\mem_d~159feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~159feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~159feeder_combout\);

-- Location: LCCOMB_X17_Y16_N18
\mem_d~2271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2271_combout\ = (!\Mux12~1_combout\ & (\Mux13~1_combout\ & (!\Mux11~1_combout\ & \mem_d~2296_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \mem_d~2296_combout\,
	combout => \mem_d~2271_combout\);

-- Location: FF_X16_Y18_N21
\mem_d~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~159feeder_combout\,
	ena => \mem_d~2271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~159_q\);

-- Location: LCCOMB_X16_Y18_N10
\mem_d~2223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2223_combout\ = (\Mux13~1_combout\ & ((\Mux12~1_combout\) # ((\mem_d~159_q\)))) # (!\Mux13~1_combout\ & (!\Mux12~1_combout\ & (\mem_d~151_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~151_q\,
	datad => \mem_d~159_q\,
	combout => \mem_d~2223_combout\);

-- Location: LCCOMB_X17_Y18_N0
\mem_d~2224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2224_combout\ = (\Mux12~1_combout\ & ((\mem_d~2223_combout\ & ((\mem_d~175_q\))) # (!\mem_d~2223_combout\ & (\mem_d~167_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~167_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~175_q\,
	datad => \mem_d~2223_combout\,
	combout => \mem_d~2224_combout\);

-- Location: FF_X17_Y15_N25
\mem_d~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~255_q\);

-- Location: LCCOMB_X16_Y15_N28
\mem_d~263feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~263feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~263feeder_combout\);

-- Location: FF_X16_Y15_N29
\mem_d~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~263feeder_combout\,
	ena => \mem_d~2275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~263_q\);

-- Location: FF_X16_Y15_N31
\mem_d~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~247_q\);

-- Location: LCCOMB_X16_Y15_N30
\mem_d~2225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2225_combout\ = (\Mux12~1_combout\ & ((\mem_d~263_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~247_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~263_q\,
	datac => \mem_d~247_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2225_combout\);

-- Location: LCCOMB_X17_Y15_N24
\mem_d~2226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2226_combout\ = (\Mux13~1_combout\ & ((\mem_d~2225_combout\ & (\mem_d~271_q\)) # (!\mem_d~2225_combout\ & ((\mem_d~255_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~271_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~255_q\,
	datad => \mem_d~2225_combout\,
	combout => \mem_d~2226_combout\);

-- Location: LCCOMB_X17_Y15_N18
\mem_d~2298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2298_combout\ = ((\Mux11~1_combout\ & ((\mem_d~2226_combout\))) # (!\Mux11~1_combout\ & (\mem_d~2224_combout\))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2224_combout\,
	datad => \mem_d~2226_combout\,
	combout => \mem_d~2298_combout\);

-- Location: LCCOMB_X21_Y15_N28
\mem_d~2299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2299_combout\ = (\mem_d~2298_combout\ & (\Mux2~1_combout\ $ (\mem_d~2232_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datac => \mem_d~2232_combout\,
	datad => \mem_d~2298_combout\,
	combout => \mem_d~2299_combout\);

-- Location: LCCOMB_X21_Y15_N14
\mem_d~2293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2293_combout\ = (\Mux0~0_combout\ & (((\mem_d~2222_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & ((\mem_d~2299_combout\))) # (!\Mux167~0_combout\ & (\mem_d~2222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2222_combout\,
	datad => \mem_d~2299_combout\,
	combout => \mem_d~2293_combout\);

-- Location: LCCOMB_X22_Y15_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Mux15~4_combout\ $ (\Mux4~6_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Mux15~4_combout\ & (\Mux4~6_combout\ & !\Add1~11\)) # (!\Mux15~4_combout\ & ((\Mux4~6_combout\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \Mux4~6_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X21_Y16_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Mux15~4_combout\ $ (\Mux4~6_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Mux15~4_combout\ & ((\Mux4~6_combout\) # (!\Add0~11\))) # (!\Mux15~4_combout\ & (\Mux4~6_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \Mux4~6_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X21_Y14_N1
\regs[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][7]~q\);

-- Location: LCCOMB_X21_Y14_N10
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux12~1_combout\ & (((\regs[14][7]~q\) # (\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (\regs[12][7]~q\ & ((!\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][7]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[14][7]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X21_Y14_N0
\Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux13~1_combout\ & ((\Mux14~0_combout\ & (\regs[15][7]~q\)) # (!\Mux14~0_combout\ & ((\regs[13][7]~q\))))) # (!\Mux13~1_combout\ & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][7]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[13][7]~q\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: FF_X19_Y14_N27
\regs[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][7]~q\);

-- Location: FF_X23_Y17_N7
\regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][7]~q\);

-- Location: FF_X19_Y14_N17
\regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][7]~q\);

-- Location: FF_X23_Y17_N17
\regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][7]~q\);

-- Location: LCCOMB_X19_Y14_N0
\Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux12~1_combout\ & (((\regs[3][7]~q\) # (!\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (\regs[1][7]~q\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \regs[1][7]~q\,
	datac => \regs[3][7]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X19_Y14_N10
\Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux13~1_combout\ & (((\Mux14~2_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~2_combout\ & (\regs[2][7]~q\)) # (!\Mux14~2_combout\ & ((\regs[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[2][7]~q\,
	datac => \regs[0][7]~q\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X19_Y14_N12
\Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux11~1_combout\ & (\Mux14~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X21_Y16_N14
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Mux3~6_combout\ $ (\Add0~13\ $ (\Mux14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~6_combout\,
	datad => \Mux14~4_combout\,
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X22_Y15_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Mux3~6_combout\ $ (\Mux14~4_combout\ $ (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~6_combout\,
	datab => \Mux14~4_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X23_Y15_N28
\regs[12][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux41~5_combout\,
	combout => \regs[12][5]~feeder_combout\);

-- Location: FF_X23_Y15_N29
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
	ena => \regs[12][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][5]~q\);

-- Location: LCCOMB_X21_Y14_N24
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux12~1_combout\ & ((\regs[14][5]~q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\regs[12][5]~q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][5]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[12][5]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X21_Y14_N30
\Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux13~1_combout\ & ((\Mux16~0_combout\ & ((\regs[15][5]~q\))) # (!\Mux16~0_combout\ & (\regs[13][5]~q\)))) # (!\Mux13~1_combout\ & (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[13][5]~q\,
	datac => \regs[15][5]~q\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: FF_X24_Y15_N23
\regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][5]~q\);

-- Location: LCCOMB_X19_Y13_N12
\Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\regs[1][5]~q\))) # (!\Mux13~1_combout\ & (\regs[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][5]~q\,
	datab => \regs[1][5]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X19_Y13_N18
\Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux12~1_combout\ & ((\Mux16~2_combout\ & ((\regs[3][5]~q\))) # (!\Mux16~2_combout\ & (\regs[2][5]~q\)))) # (!\Mux12~1_combout\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][5]~q\,
	datab => \regs[3][5]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X19_Y13_N24
\Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux11~1_combout\ & (\Mux16~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \Mux16~1_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: FF_X23_Y16_N29
\regs[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][6]~q\);

-- Location: LCCOMB_X23_Y16_N28
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\regs[14][6]~q\))) # (!\Mux12~1_combout\ & (\regs[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][6]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[14][6]~q\,
	datad => \Mux12~1_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X23_Y16_N14
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux13~1_combout\ & ((\Mux15~0_combout\ & ((\regs[15][6]~q\))) # (!\Mux15~0_combout\ & (\regs[13][6]~q\)))) # (!\Mux13~1_combout\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][6]~q\,
	datab => \regs[15][6]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: FF_X22_Y16_N3
\regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][6]~q\);

-- Location: LCCOMB_X22_Y16_N2
\Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux12~1_combout\ & ((\regs[3][6]~q\) # ((!\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\regs[1][6]~q\ & \Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][6]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[1][6]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X22_Y16_N20
\Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux13~1_combout\ & (((\Mux15~2_combout\)))) # (!\Mux13~1_combout\ & ((\Mux15~2_combout\ & ((\regs[2][6]~q\))) # (!\Mux15~2_combout\ & (\regs[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][6]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[2][6]~q\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X22_Y16_N30
\Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux11~1_combout\ & (\Mux15~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~4_combout\);

-- Location: DSPMULT_X20_Y15_N0
\Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y15_N2
\Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X22_Y15_N20
\Mux39~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~8_combout\ = (\Mux169~1_combout\ & ((\Mux168~1_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT7\)))) # (!\Mux169~1_combout\ & (!\Mux168~1_combout\ & (\Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add1~14_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \Mux39~8_combout\);

-- Location: LCCOMB_X22_Y15_N26
\Mux39~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~9_combout\ = (\Mux168~1_combout\ & ((\Mux39~8_combout\ & ((\Add0~14_combout\))) # (!\Mux39~8_combout\ & (\Mux39~7_combout\)))) # (!\Mux168~1_combout\ & (((\Mux39~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~7_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add0~14_combout\,
	datad => \Mux39~8_combout\,
	combout => \Mux39~9_combout\);

-- Location: LCCOMB_X21_Y13_N24
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\ $ (!\Mux3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~6_combout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X22_Y17_N28
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux1~2_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & ((\regs[13][3]~q\))) # (!\Mux2~1_combout\ & (\regs[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][3]~q\,
	datab => \regs[13][3]~q\,
	datac => \Mux1~2_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X21_Y13_N6
\Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux1~2_combout\ & ((\Mux7~2_combout\ & ((\regs[15][3]~q\))) # (!\Mux7~2_combout\ & (\regs[14][3]~q\)))) # (!\Mux1~2_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][3]~q\,
	datab => \regs[15][3]~q\,
	datac => \Mux1~2_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X21_Y13_N0
\Mult1|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(3) = LCELL((\Mux11~1_combout\ & ((\Mux0~1_combout\ & ((\Mux7~3_combout\))) # (!\Mux0~1_combout\ & (\Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux7~5_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mult1|auto_generated|le5a\(3));

-- Location: LCCOMB_X24_Y13_N26
\Mult1|auto_generated|le3a[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(7) = LCELL((\Mux13~1_combout\ & (\Mux12~1_combout\ $ (((\Mux3~6_combout\))))) # (!\Mux13~1_combout\ & (\Mux12~1_combout\ & (!\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux4~6_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mult1|auto_generated|le3a\(7));

-- Location: LCCOMB_X24_Y15_N24
\Mult1|auto_generated|le3a[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(6) = LCELL((\Mux13~1_combout\ & (\Mux4~6_combout\ $ ((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & (((\Mux12~1_combout\ & !\Mux5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mult1|auto_generated|le3a\(6));

-- Location: LCCOMB_X25_Y15_N28
\Mult1|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~10_combout\ = \Mult1|auto_generated|le4a\(5) $ (\Mult1|auto_generated|op_1~9\ $ (\Mult1|auto_generated|le3a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(5),
	datad => \Mult1|auto_generated|le3a\(7),
	cin => \Mult1|auto_generated|op_1~9\,
	combout => \Mult1|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X25_Y15_N14
\Mult1|auto_generated|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~14_combout\ = \Mult1|auto_generated|le5a\(3) $ (\Mult1|auto_generated|op_3~13\ $ (\Mult1|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|le5a\(3),
	datad => \Mult1|auto_generated|op_1~10_combout\,
	cin => \Mult1|auto_generated|op_3~13\,
	combout => \Mult1|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X22_Y13_N14
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \Add3~13\ $ (\Mux3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux3~6_combout\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X25_Y15_N30
\Mux39~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux169~1_combout\ & (\Mux168~1_combout\ & ((\Add3~14_combout\)))) # (!\Mux169~1_combout\ & (((\Mult1|auto_generated|op_3~14_combout\)) # (!\Mux168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Mult1|auto_generated|op_3~14_combout\,
	datad => \Add3~14_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X22_Y15_N16
\Mux39~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Mux168~1_combout\ & (((\Mux39~2_combout\)))) # (!\Mux168~1_combout\ & ((\Mux39~2_combout\ & (\Mux0~1_combout\)) # (!\Mux39~2_combout\ & ((\Add2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add2~14_combout\,
	datad => \Mux39~2_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X22_Y15_N24
\Mux39~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~10_combout\ = (\Mux1~2_combout\ & ((\Mux39~3_combout\))) # (!\Mux1~2_combout\ & (\Mux39~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~2_combout\,
	datac => \Mux39~9_combout\,
	datad => \Mux39~3_combout\,
	combout => \Mux39~10_combout\);

-- Location: FF_X21_Y14_N11
\regs[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][7]~q\);

-- Location: FF_X23_Y15_N31
\regs[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][7]~q\);

-- Location: LCCOMB_X23_Y15_N24
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux1~2_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & (\regs[13][7]~q\)) # (!\Mux2~1_combout\ & ((\regs[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][7]~q\,
	datab => \Mux1~2_combout\,
	datac => \regs[12][7]~q\,
	datad => \Mux2~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X23_Y15_N4
\Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux1~2_combout\ & ((\Mux3~2_combout\ & (\regs[15][7]~q\)) # (!\Mux3~2_combout\ & ((\regs[14][7]~q\))))) # (!\Mux1~2_combout\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][7]~q\,
	datab => \Mux1~2_combout\,
	datac => \regs[14][7]~q\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X23_Y17_N6
\Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux2~1_combout\ & (((\Mux1~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~2_combout\ & (\regs[2][7]~q\)) # (!\Mux1~2_combout\ & ((\regs[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[2][7]~q\,
	datac => \regs[0][7]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X23_Y17_N16
\Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux2~1_combout\ & ((\Mux3~4_combout\ & ((\regs[3][7]~q\))) # (!\Mux3~4_combout\ & (\regs[1][7]~q\)))) # (!\Mux2~1_combout\ & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[1][7]~q\,
	datac => \regs[3][7]~q\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X23_Y15_N6
\Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & (\Mux3~3_combout\)) # (!\Mux0~0_combout\ & ((\Mux3~5_combout\))))) # (!\Mux167~0_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X21_Y15_N16
\Mux40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux169~1_combout\ & ((\Mux168~1_combout\ & (\Add0~12_combout\)) # (!\Mux168~1_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT6\))))) # (!\Mux169~1_combout\ & (!\Mux168~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add0~12_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X21_Y15_N2
\Mux40~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (\Mux169~1_combout\ & (((\Mux40~2_combout\)))) # (!\Mux169~1_combout\ & ((\Mux40~2_combout\ & ((\Add1~12_combout\))) # (!\Mux40~2_combout\ & (\mem_d~2293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \mem_d~2293_combout\,
	datac => \Add1~12_combout\,
	datad => \Mux40~2_combout\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X21_Y15_N0
\Mux40~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = (\Mux1~2_combout\ & (\Mux40~1_combout\)) # (!\Mux1~2_combout\ & ((\Mux40~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datac => \Mux40~1_combout\,
	datad => \Mux40~3_combout\,
	combout => \Mux40~4_combout\);

-- Location: FF_X23_Y15_N9
\regs[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][6]~q\);

-- Location: FF_X23_Y15_N11
\regs[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][6]~q\);

-- Location: FF_X23_Y16_N31
\regs[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][6]~q\);

-- Location: LCCOMB_X23_Y15_N10
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux2~1_combout\ & ((\Mux1~2_combout\) # ((\regs[13][6]~q\)))) # (!\Mux2~1_combout\ & (!\Mux1~2_combout\ & (\regs[12][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~2_combout\,
	datac => \regs[12][6]~q\,
	datad => \regs[13][6]~q\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X23_Y15_N8
\Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux1~2_combout\ & ((\Mux4~2_combout\ & ((\regs[15][6]~q\))) # (!\Mux4~2_combout\ & (\regs[14][6]~q\)))) # (!\Mux1~2_combout\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][6]~q\,
	datab => \Mux1~2_combout\,
	datac => \regs[15][6]~q\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: FF_X24_Y15_N1
\regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][6]~q\);

-- Location: LCCOMB_X24_Y15_N0
\Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux2~1_combout\ & (((\Mux1~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~2_combout\ & (\regs[2][6]~q\)) # (!\Mux1~2_combout\ & ((\regs[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[2][6]~q\,
	datac => \regs[0][6]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux2~1_combout\ & ((\Mux4~4_combout\ & (\regs[3][6]~q\)) # (!\Mux4~4_combout\ & ((\regs[1][6]~q\))))) # (!\Mux2~1_combout\ & (((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[3][6]~q\,
	datac => \regs[1][6]~q\,
	datad => \Mux4~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X23_Y15_N16
\Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & (\Mux4~3_combout\)) # (!\Mux0~0_combout\ & ((\Mux4~5_combout\))))) # (!\Mux167~0_combout\ & (((\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux4~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X18_Y15_N26
\Mux41~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\Mux168~1_combout\ & (((\Mux41~2_combout\)))) # (!\Mux168~1_combout\ & ((\Mux41~2_combout\ & (\Add1~10_combout\)) # (!\Mux41~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Mux168~1_combout\,
	datac => \Mux41~2_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X18_Y15_N12
\Mux41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & (\Add3~10_combout\)) # (!\Mux169~1_combout\ & ((\Mult1|auto_generated|op_3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add3~10_combout\,
	datad => \Mult1|auto_generated|op_3~10_combout\,
	combout => \Mux41~4_combout\);

-- Location: LCCOMB_X18_Y15_N10
\Mux41~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~5_combout\ = (\Mux1~2_combout\ & ((\Mux41~6_combout\) # ((\Mux41~4_combout\)))) # (!\Mux1~2_combout\ & (((\Mux41~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux41~6_combout\,
	datac => \Mux41~3_combout\,
	datad => \Mux41~4_combout\,
	combout => \Mux41~5_combout\);

-- Location: LCCOMB_X19_Y13_N16
\regs[1][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[1][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[1][5]~feeder_combout\);

-- Location: FF_X19_Y13_N17
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
	ena => \regs[1][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][5]~q\);

-- Location: FF_X24_Y15_N11
\regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux41~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][5]~q\);

-- Location: LCCOMB_X24_Y15_N20
\Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux2~1_combout\ & (((\Mux1~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~2_combout\ & (\regs[2][5]~q\)) # (!\Mux1~2_combout\ & ((\regs[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][5]~q\,
	datab => \regs[0][5]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X24_Y15_N22
\Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux2~1_combout\ & ((\Mux5~4_combout\ & ((\regs[3][5]~q\))) # (!\Mux5~4_combout\ & (\regs[1][5]~q\)))) # (!\Mux2~1_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[1][5]~q\,
	datac => \regs[3][5]~q\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X23_Y15_N2
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux1~2_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & (\regs[13][5]~q\)) # (!\Mux2~1_combout\ & ((\regs[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][5]~q\,
	datab => \regs[12][5]~q\,
	datac => \Mux1~2_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X23_Y15_N20
\Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux1~2_combout\ & ((\Mux5~2_combout\ & ((\regs[15][5]~q\))) # (!\Mux5~2_combout\ & (\regs[14][5]~q\)))) # (!\Mux1~2_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][5]~q\,
	datab => \Mux1~2_combout\,
	datac => \regs[15][5]~q\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X24_Y15_N18
\Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux0~0_combout\ & (((\Mux5~3_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & (\Mux5~5_combout\)) # (!\Mux167~0_combout\ & ((\Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux5~5_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~6_combout\);

-- Location: FF_X23_Y16_N11
\regs[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][4]~q\);

-- Location: FF_X23_Y16_N17
\regs[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][4]~q\);

-- Location: LCCOMB_X23_Y16_N16
\Mux33~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~7_combout\ = (\Mux28~1_combout\ & ((\Mux29~1_combout\) # ((\regs[14][4]~q\)))) # (!\Mux28~1_combout\ & (!\Mux29~1_combout\ & ((\regs[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \regs[14][4]~q\,
	datad => \regs[12][4]~q\,
	combout => \Mux33~7_combout\);

-- Location: LCCOMB_X23_Y16_N10
\Mux33~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~8_combout\ = (\Mux29~1_combout\ & ((\Mux33~7_combout\ & (\regs[15][4]~q\)) # (!\Mux33~7_combout\ & ((\regs[13][4]~q\))))) # (!\Mux29~1_combout\ & (((\Mux33~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][4]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[13][4]~q\,
	datad => \Mux33~7_combout\,
	combout => \Mux33~8_combout\);

-- Location: LCCOMB_X22_Y16_N26
\Mux33~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (\Mux29~1_combout\ & (((\regs[1][4]~q\) # (\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (\regs[0][4]~q\ & ((!\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][4]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[1][4]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X19_Y18_N4
\Mux33~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (\Mux33~4_combout\ & ((\regs[3][4]~q\) # ((!\Mux28~1_combout\)))) # (!\Mux33~4_combout\ & (((\regs[2][4]~q\ & \Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][4]~q\,
	datab => \regs[2][4]~q\,
	datac => \Mux33~4_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux33~5_combout\);

-- Location: LCCOMB_X19_Y18_N20
\regs[6][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][4]~feeder_combout\ = \Mux42~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux42~4_combout\,
	combout => \regs[6][4]~feeder_combout\);

-- Location: FF_X19_Y18_N21
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
	ena => \regs[6][6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][4]~q\);

-- Location: FF_X19_Y18_N23
\regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][4]~q\);

-- Location: LCCOMB_X19_Y18_N22
\Mux33~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux33~2_combout\ & (((\regs[7][4]~q\) # (!\Mux28~1_combout\)))) # (!\Mux33~2_combout\ & (\regs[6][4]~q\ & ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~2_combout\,
	datab => \regs[6][4]~q\,
	datac => \regs[7][4]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X19_Y18_N30
\Mux33~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~6_combout\ = (\Mux11~1_combout\ & (((\Mux33~3_combout\) # (\Mux0~1_combout\)))) # (!\Mux11~1_combout\ & (\Mux33~5_combout\ & ((!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux33~5_combout\,
	datac => \Mux33~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux33~6_combout\);

-- Location: FF_X19_Y15_N1
\regs[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[11][1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][4]~q\);

-- Location: FF_X19_Y15_N25
\regs[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][4]~q\);

-- Location: LCCOMB_X19_Y15_N24
\Mux33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux33~0_combout\ & ((\regs[11][4]~q\) # ((!\Mux29~1_combout\)))) # (!\Mux33~0_combout\ & (((\regs[9][4]~q\ & \Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datab => \regs[11][4]~q\,
	datac => \regs[9][4]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X24_Y17_N30
\Mux33~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~9_combout\ = (\Mux0~1_combout\ & ((\Mux33~6_combout\ & (\Mux33~8_combout\)) # (!\Mux33~6_combout\ & ((\Mux33~1_combout\))))) # (!\Mux0~1_combout\ & (((\Mux33~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux33~8_combout\,
	datac => \Mux33~6_combout\,
	datad => \Mux33~1_combout\,
	combout => \Mux33~9_combout\);

-- Location: FF_X24_Y17_N9
\mem_d~1573\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1573_q\);

-- Location: FF_X25_Y17_N17
\mem_d~1565\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1565_q\);

-- Location: LCCOMB_X25_Y17_N16
\mem_d~2172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2172_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~1565_q\))) # (!\Mux13~1_combout\ & (\mem_d~1557_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1557_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1565_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2172_combout\);

-- Location: LCCOMB_X24_Y17_N8
\mem_d~2173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2173_combout\ = (\Mux12~1_combout\ & ((\mem_d~2172_combout\ & (\mem_d~1581_q\)) # (!\mem_d~2172_combout\ & ((\mem_d~1573_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1581_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1573_q\,
	datad => \mem_d~2172_combout\,
	combout => \mem_d~2173_combout\);

-- Location: LCCOMB_X24_Y15_N4
\mem_d~2174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2174_combout\ = (\Mux11~1_combout\ & (\mem_d~2171_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2171_combout\,
	datab => \Mux11~1_combout\,
	datad => \mem_d~2173_combout\,
	combout => \mem_d~2174_combout\);

-- Location: FF_X17_Y17_N17
\mem_d~1701\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1701_q\);

-- Location: LCCOMB_X16_Y17_N4
\mem_d~1693feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1693feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1693feeder_combout\);

-- Location: FF_X16_Y17_N5
\mem_d~1693\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1693feeder_combout\,
	ena => \mem_d~2254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1693_q\);

-- Location: FF_X16_Y17_N15
\mem_d~1685\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2255_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1685_q\);

-- Location: LCCOMB_X16_Y17_N14
\mem_d~2177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2177_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1693_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1685_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1693_q\,
	datac => \mem_d~1685_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2177_combout\);

-- Location: LCCOMB_X17_Y17_N16
\mem_d~2178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2178_combout\ = (\Mux12~1_combout\ & ((\mem_d~2177_combout\ & (\mem_d~1709_q\)) # (!\mem_d~2177_combout\ & ((\mem_d~1701_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1709_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1701_q\,
	datad => \mem_d~2177_combout\,
	combout => \mem_d~2178_combout\);

-- Location: LCCOMB_X24_Y15_N26
\mem_d~2179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2179_combout\ = (\Mux11~1_combout\ & (\mem_d~2176_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2178_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2176_combout\,
	datab => \Mux11~1_combout\,
	datad => \mem_d~2178_combout\,
	combout => \mem_d~2179_combout\);

-- Location: LCCOMB_X24_Y15_N30
\mem_d~2180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2180_combout\ = (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2179_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \mem_d~2174_combout\,
	datac => \mem_d~2179_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2180_combout\);

-- Location: FF_X24_Y18_N5
\mem_d~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~117_q\);

-- Location: LCCOMB_X24_Y18_N4
\mem_d~2185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2185_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~133_q\)) # (!\Mux12~1_combout\ & ((\mem_d~117_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~133_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~117_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2185_combout\);

-- Location: FF_X24_Y18_N15
\mem_d~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2281_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~141_q\);

-- Location: LCCOMB_X24_Y18_N14
\mem_d~2186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2186_combout\ = (\mem_d~2185_combout\ & (((\mem_d~141_q\) # (!\Mux13~1_combout\)))) # (!\mem_d~2185_combout\ & (\mem_d~125_q\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~125_q\,
	datab => \mem_d~2185_combout\,
	datac => \mem_d~141_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2186_combout\);

-- Location: FF_X25_Y16_N7
\mem_d~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~45_q\);

-- Location: FF_X25_Y16_N25
\mem_d~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2284_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~21_q\);

-- Location: LCCOMB_X25_Y16_N24
\mem_d~2187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2187_combout\ = (\Mux13~1_combout\ & ((\mem_d~29_q\) # ((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~21_q\ & !\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~29_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~21_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2187_combout\);

-- Location: LCCOMB_X25_Y16_N6
\mem_d~2188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2188_combout\ = (\Mux12~1_combout\ & ((\mem_d~2187_combout\ & ((\mem_d~45_q\))) # (!\mem_d~2187_combout\ & (\mem_d~37_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~37_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~45_q\,
	datad => \mem_d~2187_combout\,
	combout => \mem_d~2188_combout\);

-- Location: LCCOMB_X25_Y16_N20
\mem_d~2189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2189_combout\ = (\Mux11~1_combout\ & (\mem_d~2186_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datac => \mem_d~2186_combout\,
	datad => \mem_d~2188_combout\,
	combout => \mem_d~2189_combout\);

-- Location: LCCOMB_X25_Y16_N30
\mem_d~2190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2190_combout\ = ((\Mux2~0_combout\ & (!\Mux1~0_combout\ & \mem_d~2189_combout\)) # (!\Mux2~0_combout\ & (\Mux1~0_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \mem_d~2189_combout\,
	combout => \mem_d~2190_combout\);

-- Location: FF_X17_Y15_N5
\mem_d~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~253_q\);

-- Location: LCCOMB_X16_Y15_N8
\mem_d~261feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~261feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~261feeder_combout\);

-- Location: FF_X16_Y15_N9
\mem_d~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~261feeder_combout\,
	ena => \mem_d~2275_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~261_q\);

-- Location: FF_X16_Y15_N19
\mem_d~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~245_q\);

-- Location: LCCOMB_X16_Y15_N18
\mem_d~2183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2183_combout\ = (\Mux12~1_combout\ & ((\mem_d~261_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~245_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~261_q\,
	datac => \mem_d~245_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2183_combout\);

-- Location: LCCOMB_X17_Y15_N4
\mem_d~2184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2184_combout\ = (\Mux13~1_combout\ & ((\mem_d~2183_combout\ & (\mem_d~269_q\)) # (!\mem_d~2183_combout\ & ((\mem_d~253_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~269_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~253_q\,
	datad => \mem_d~2183_combout\,
	combout => \mem_d~2184_combout\);

-- Location: LCCOMB_X17_Y18_N28
\mem_d~165feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~165feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~165feeder_combout\);

-- Location: FF_X17_Y18_N29
\mem_d~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~165feeder_combout\,
	ena => \mem_d~2270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~165_q\);

-- Location: FF_X17_Y18_N15
\mem_d~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~173_q\);

-- Location: LCCOMB_X17_Y18_N14
\mem_d~2182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2182_combout\ = (\mem_d~2181_combout\ & (((\mem_d~173_q\) # (!\Mux12~1_combout\)))) # (!\mem_d~2181_combout\ & (\mem_d~165_q\ & ((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2181_combout\,
	datab => \mem_d~165_q\,
	datac => \mem_d~173_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2182_combout\);

-- Location: LCCOMB_X19_Y15_N12
\mem_d~2302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2302_combout\ = ((\Mux11~1_combout\ & (\mem_d~2184_combout\)) # (!\Mux11~1_combout\ & ((\mem_d~2182_combout\)))) # (!\Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2184_combout\,
	datad => \mem_d~2182_combout\,
	combout => \mem_d~2302_combout\);

-- Location: LCCOMB_X19_Y15_N2
\mem_d~2303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2303_combout\ = (\mem_d~2302_combout\ & (\Mux2~1_combout\ $ (\mem_d~2190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~1_combout\,
	datac => \mem_d~2190_combout\,
	datad => \mem_d~2302_combout\,
	combout => \mem_d~2303_combout\);

-- Location: LCCOMB_X19_Y15_N22
\mem_d~2291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2291_combout\ = (\Mux0~0_combout\ & (((\mem_d~2180_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & ((\mem_d~2303_combout\))) # (!\Mux167~0_combout\ & (\mem_d~2180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2180_combout\,
	datad => \mem_d~2303_combout\,
	combout => \mem_d~2291_combout\);

-- Location: LCCOMB_X19_Y15_N28
\Mux42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & ((\Add0~8_combout\))) # (!\Mux169~1_combout\ & (\mem_d~2291_combout\)))) # (!\Mux168~1_combout\ & (!\Mux169~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \mem_d~2291_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X19_Y15_N18
\Mux42~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\Mux168~1_combout\ & (((\Mux42~2_combout\)))) # (!\Mux168~1_combout\ & ((\Mux42~2_combout\ & (\Add1~8_combout\)) # (!\Mux42~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add1~8_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \Mux42~2_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X19_Y15_N0
\Mux42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (\Mux1~2_combout\ & (\Mux42~1_combout\)) # (!\Mux1~2_combout\ & ((\Mux42~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~2_combout\,
	datac => \Mux42~1_combout\,
	datad => \Mux42~3_combout\,
	combout => \Mux42~4_combout\);

-- Location: FF_X22_Y16_N27
\regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][4]~q\);

-- Location: FF_X24_Y15_N13
\regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][4]~q\);

-- Location: LCCOMB_X24_Y15_N2
\Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux2~1_combout\ & (((\Mux1~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~2_combout\ & ((\regs[2][4]~q\))) # (!\Mux1~2_combout\ & (\regs[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][4]~q\,
	datab => \regs[2][4]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X24_Y15_N12
\Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux2~1_combout\ & ((\Mux6~4_combout\ & ((\regs[3][4]~q\))) # (!\Mux6~4_combout\ & (\regs[1][4]~q\)))) # (!\Mux2~1_combout\ & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[1][4]~q\,
	datac => \regs[3][4]~q\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X23_Y15_N0
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux1~2_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & (\regs[13][4]~q\)) # (!\Mux2~1_combout\ & ((\regs[12][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][4]~q\,
	datab => \Mux1~2_combout\,
	datac => \regs[12][4]~q\,
	datad => \Mux2~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X23_Y15_N18
\Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux1~2_combout\ & ((\Mux6~2_combout\ & ((\regs[15][4]~q\))) # (!\Mux6~2_combout\ & (\regs[14][4]~q\)))) # (!\Mux1~2_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][4]~q\,
	datab => \Mux1~2_combout\,
	datac => \regs[15][4]~q\,
	datad => \Mux6~2_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X23_Y15_N26
\Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\Mux6~3_combout\))) # (!\Mux0~0_combout\ & (\Mux6~5_combout\)))) # (!\Mux167~0_combout\ & (((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux6~5_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X21_Y18_N14
\Mux43~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\Mux168~1_combout\ & (\Mux43~2_combout\)) # (!\Mux168~1_combout\ & ((\Mux43~2_combout\ & (\Add1~6_combout\)) # (!\Mux43~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux43~2_combout\,
	datac => \Add1~6_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X22_Y18_N14
\Mux43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\Mux1~2_combout\ & (\Mux43~1_combout\)) # (!\Mux1~2_combout\ & ((\Mux43~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux43~1_combout\,
	datad => \Mux43~3_combout\,
	combout => \Mux43~4_combout\);

-- Location: FF_X22_Y16_N9
\regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][3]~q\);

-- Location: LCCOMB_X21_Y16_N18
\regs[0][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][3]~feeder_combout\ = \Mux43~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~4_combout\,
	combout => \regs[0][3]~feeder_combout\);

-- Location: FF_X21_Y16_N19
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
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][3]~q\);

-- Location: LCCOMB_X21_Y16_N28
\Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux1~2_combout\ & ((\regs[2][3]~q\) # ((\Mux2~1_combout\)))) # (!\Mux1~2_combout\ & (((\regs[0][3]~q\ & !\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][3]~q\,
	datab => \regs[0][3]~q\,
	datac => \Mux1~2_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X21_Y13_N4
\Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux2~1_combout\ & ((\Mux7~4_combout\ & ((\regs[3][3]~q\))) # (!\Mux7~4_combout\ & (\regs[1][3]~q\)))) # (!\Mux2~1_combout\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[1][3]~q\,
	datac => \regs[3][3]~q\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X21_Y13_N30
\Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\Mux7~3_combout\))) # (!\Mux0~0_combout\ & (\Mux7~5_combout\)))) # (!\Mux167~0_combout\ & (((\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux7~5_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X21_Y17_N12
\Mux44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (\Mux168~1_combout\ & (((\Mux44~2_combout\)))) # (!\Mux168~1_combout\ & ((\Mux44~2_combout\ & (\Add1~4_combout\)) # (!\Mux44~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add1~4_combout\,
	datac => \Mux44~2_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X21_Y17_N10
\Mux44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = (\Mux1~2_combout\ & (\Mux44~1_combout\)) # (!\Mux1~2_combout\ & ((\Mux44~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~2_combout\,
	datac => \Mux44~1_combout\,
	datad => \Mux44~3_combout\,
	combout => \Mux44~4_combout\);

-- Location: FF_X22_Y17_N5
\regs[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][2]~q\);

-- Location: FF_X22_Y17_N19
\regs[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][2]~q\);

-- Location: LCCOMB_X22_Y17_N18
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux1~2_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & (\regs[13][2]~q\)) # (!\Mux2~1_combout\ & ((\regs[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][2]~q\,
	datab => \Mux1~2_combout\,
	datac => \regs[12][2]~q\,
	datad => \Mux2~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X22_Y17_N4
\Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux1~2_combout\ & ((\Mux8~2_combout\ & ((\regs[15][2]~q\))) # (!\Mux8~2_combout\ & (\regs[14][2]~q\)))) # (!\Mux1~2_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][2]~q\,
	datab => \Mux1~2_combout\,
	datac => \regs[15][2]~q\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux0~0_combout\ & (((\Mux8~3_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & ((\Mux8~5_combout\))) # (!\Mux167~0_combout\ & (\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux8~5_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X19_Y16_N20
\Mux45~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (\Mux45~2_combout\ & ((\Add1~2_combout\) # ((\Mux168~1_combout\)))) # (!\Mux45~2_combout\ & (((!\Mux168~1_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~2_combout\,
	datab => \Add1~2_combout\,
	datac => \Mux168~1_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X19_Y16_N10
\Mux45~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = (\Mux1~2_combout\ & (\Mux45~1_combout\)) # (!\Mux1~2_combout\ & ((\Mux45~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~2_combout\,
	datac => \Mux45~1_combout\,
	datad => \Mux45~3_combout\,
	combout => \Mux45~4_combout\);

-- Location: FF_X23_Y16_N1
\regs[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][1]~q\);

-- Location: FF_X23_Y16_N3
\regs[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][1]~q\);

-- Location: FF_X22_Y17_N11
\regs[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][1]~q\);

-- Location: LCCOMB_X22_Y17_N10
\Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux1~2_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~2_combout\ & ((\Mux2~1_combout\ & (\regs[13][1]~q\)) # (!\Mux2~1_combout\ & ((\regs[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \regs[13][1]~q\,
	datac => \regs[12][1]~q\,
	datad => \Mux2~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X22_Y17_N8
\Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux1~2_combout\ & ((\Mux9~2_combout\ & ((\regs[15][1]~q\))) # (!\Mux9~2_combout\ & (\regs[14][1]~q\)))) # (!\Mux1~2_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \regs[14][1]~q\,
	datac => \regs[15][1]~q\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: FF_X23_Y17_N3
\regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][1]~q\);

-- Location: FF_X23_Y17_N31
\regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][1]~q\);

-- Location: LCCOMB_X23_Y17_N0
\Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux2~1_combout\ & (((\Mux1~2_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~2_combout\ & ((\regs[2][1]~q\))) # (!\Mux1~2_combout\ & (\regs[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[0][1]~q\,
	datac => \regs[2][1]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X23_Y17_N4
\Mux9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux2~1_combout\ & ((\Mux9~4_combout\ & (\regs[3][1]~q\)) # (!\Mux9~4_combout\ & ((\regs[1][1]~q\))))) # (!\Mux2~1_combout\ & (((\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[3][1]~q\,
	datac => \regs[1][1]~q\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Mux9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux0~0_combout\ & (((\Mux9~3_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & ((\Mux9~5_combout\))) # (!\Mux167~0_combout\ & (\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux9~3_combout\,
	datad => \Mux9~5_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X19_Y17_N2
\Mux46~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\Mux168~1_combout\ & (((\Mux46~2_combout\)))) # (!\Mux168~1_combout\ & ((\Mux46~2_combout\ & (\Add1~0_combout\)) # (!\Mux46~2_combout\ & ((\Mult0|auto_generated|mac_out2~dataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Mux168~1_combout\,
	datac => \Mux46~2_combout\,
	datad => \Mult0|auto_generated|mac_out2~dataout\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X19_Y17_N0
\Mux46~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (\Mux1~2_combout\ & (\Mux46~1_combout\)) # (!\Mux1~2_combout\ & ((\Mux46~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~2_combout\,
	datac => \Mux46~1_combout\,
	datad => \Mux46~3_combout\,
	combout => \Mux46~4_combout\);

-- Location: FF_X22_Y17_N13
\regs[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][0]~q\);

-- Location: FF_X19_Y17_N21
\regs[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][0]~q\);

-- Location: LCCOMB_X21_Y14_N18
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & (\regs[14][0]~q\)) # (!\Mux12~1_combout\ & ((\regs[12][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][0]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[12][0]~q\,
	datad => \Mux12~1_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X21_Y14_N8
\Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux13~1_combout\ & ((\Mux21~0_combout\ & (\regs[15][0]~q\)) # (!\Mux21~0_combout\ & ((\regs[13][0]~q\))))) # (!\Mux13~1_combout\ & (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[15][0]~q\,
	datac => \regs[13][0]~q\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X22_Y16_N0
\Mux21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\regs[1][0]~q\))) # (!\Mux13~1_combout\ & (\regs[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][0]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[1][0]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X22_Y16_N18
\Mux21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux12~1_combout\ & ((\Mux21~2_combout\ & (\regs[3][0]~q\)) # (!\Mux21~2_combout\ & ((\regs[2][0]~q\))))) # (!\Mux12~1_combout\ & (((\Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][0]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[2][0]~q\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X21_Y14_N2
\Mux21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux11~1_combout\ & (\Mux21~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datac => \Mux21~1_combout\,
	datad => \Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X23_Y13_N8
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Mux10~6_combout\ & (\Mux21~4_combout\ & (\Mux20~4_combout\ $ (!\Mux9~6_combout\)))) # (!\Mux10~6_combout\ & (!\Mux21~4_combout\ & (\Mux20~4_combout\ $ (!\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux21~4_combout\,
	datac => \Mux20~4_combout\,
	datad => \Mux9~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y15_N30
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Mux17~4_combout\ & (\Mux6~6_combout\ & (\Mux5~6_combout\ $ (!\Mux16~4_combout\)))) # (!\Mux17~4_combout\ & (!\Mux6~6_combout\ & (\Mux5~6_combout\ $ (!\Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux5~6_combout\,
	datac => \Mux16~4_combout\,
	datad => \Mux6~6_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y13_N2
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Mux3~6_combout\ & (\Mux14~4_combout\ & (\Mux4~6_combout\ $ (!\Mux15~4_combout\)))) # (!\Mux3~6_combout\ & (!\Mux14~4_combout\ & (\Mux4~6_combout\ $ (!\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~6_combout\,
	datab => \Mux4~6_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux15~4_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X23_Y13_N0
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X22_Y14_N0
\PC~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~13_combout\ = (\Add4~14_combout\ & (((\PC~12_combout\) # (\Equal0~4_combout\)) # (!\Mux168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \PC~12_combout\,
	datac => \Add4~14_combout\,
	datad => \Equal0~4_combout\,
	combout => \PC~13_combout\);

-- Location: FF_X22_Y14_N1
\PC[5]\ : dffeas
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
	q => PC(5));

-- Location: LCCOMB_X22_Y14_N2
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (PC(6)) # (PC(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => PC(5),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X23_Y14_N6
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (PC(7)) # ((PC(4)) # ((\Mux13~0_combout\) # (\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => PC(4),
	datac => \Mux13~0_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X23_Y13_N14
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\Add4~3_combout\ & (PC(0) $ (VCC))) # (!\Add4~3_combout\ & (PC(0) & VCC))
-- \Add4~5\ = CARRY((\Add4~3_combout\ & PC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~3_combout\,
	datab => PC(0),
	datad => VCC,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X22_Y14_N4
\PC~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~9_combout\ = (\PC[7]~8_combout\ & ((\Add4~4_combout\))) # (!\PC[7]~8_combout\ & (\Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC[7]~8_combout\,
	datac => \Mux13~1_combout\,
	datad => \Add4~4_combout\,
	combout => \PC~9_combout\);

-- Location: FF_X22_Y14_N5
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X23_Y13_N16
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add4~20_combout\ & ((PC(1) & (\Add4~5\ & VCC)) # (!PC(1) & (!\Add4~5\)))) # (!\Add4~20_combout\ & ((PC(1) & (!\Add4~5\)) # (!PC(1) & ((\Add4~5\) # (GND)))))
-- \Add4~7\ = CARRY((\Add4~20_combout\ & (!PC(1) & !\Add4~5\)) # (!\Add4~20_combout\ & ((!\Add4~5\) # (!PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~20_combout\,
	datab => PC(1),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X23_Y13_N18
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = ((PC(2) $ (\Add4~2_combout\ $ (!\Add4~7\)))) # (GND)
-- \Add4~9\ = CARRY((PC(2) & ((\Add4~2_combout\) # (!\Add4~7\))) # (!PC(2) & (\Add4~2_combout\ & !\Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => \Add4~2_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X22_Y14_N16
\PC~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~10_combout\ = (\PC[7]~8_combout\ & ((\Add4~8_combout\))) # (!\PC[7]~8_combout\ & (\Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \PC[7]~8_combout\,
	datad => \Add4~8_combout\,
	combout => \PC~10_combout\);

-- Location: FF_X22_Y14_N17
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X23_Y14_N28
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (PC(4)) # ((PC(3) & ((PC(1)) # (PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => PC(1),
	datac => PC(2),
	datad => PC(3),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (PC(5)) # ((PC(6)) # ((PC(7)) # (\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datab => PC(6),
	datac => PC(7),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X23_Y13_N6
\desvio~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desvio~0_combout\ = (\mem_d~2109_combout\ & ((\Mux169~1_combout\ & (\Mux168~1_combout\ & \Equal0~4_combout\)) # (!\Mux169~1_combout\ & ((!\Equal0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \mem_d~2109_combout\,
	datac => \Mux168~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \desvio~0_combout\);

-- Location: LCCOMB_X23_Y13_N4
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Mux11~1_combout\ & \desvio~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux11~1_combout\,
	datad => \desvio~0_combout\,
	combout => \Add4~2_combout\);

-- Location: LCCOMB_X23_Y13_N20
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (PC(3) & (!\Add4~9\)) # (!PC(3) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X22_Y14_N10
\PC~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~11_combout\ = (\PC[7]~8_combout\ & ((\Add4~10_combout\))) # (!\PC[7]~8_combout\ & (\Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \PC[7]~8_combout\,
	datad => \Add4~10_combout\,
	combout => \PC~11_combout\);

-- Location: FF_X22_Y14_N11
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X22_Y14_N18
\PC~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~17_combout\ = (\PC[7]~8_combout\ & (((\Add4~16_combout\)))) # (!\PC[7]~8_combout\ & (((\Mux0~0_combout\)) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \PC[7]~8_combout\,
	datac => \Add4~16_combout\,
	datad => \Mux0~0_combout\,
	combout => \PC~17_combout\);

-- Location: FF_X22_Y14_N19
\PC[6]\ : dffeas
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
	q => PC(6));

-- Location: LCCOMB_X22_Y14_N6
\Mux167~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux167~0_combout\ = (!PC(7) & (!PC(6) & (!PC(4) & !PC(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => PC(6),
	datac => PC(4),
	datad => PC(5),
	combout => \Mux167~0_combout\);

-- Location: LCCOMB_X19_Y17_N22
\mem_d~2109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2109_combout\ = (\Mux167~0_combout\ & (!\Mux1~0_combout\ & !\Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux167~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux167~1_combout\,
	combout => \mem_d~2109_combout\);

-- Location: LCCOMB_X23_Y14_N18
\PC[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[7]~8_combout\ = (\Equal0~4_combout\) # (((\Mux169~1_combout\) # (!\Mux168~1_combout\)) # (!\mem_d~2109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \mem_d~2109_combout\,
	datac => \Mux168~1_combout\,
	datad => \Mux169~1_combout\,
	combout => \PC[7]~8_combout\);

-- Location: LCCOMB_X22_Y14_N30
\PC~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~16_combout\ = (\PC[7]~8_combout\ & (((\Add4~6_combout\)))) # (!\PC[7]~8_combout\ & (((!\Mux167~0_combout\)) # (!\Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \PC[7]~8_combout\,
	datac => \Mux167~0_combout\,
	datad => \Add4~6_combout\,
	combout => \PC~16_combout\);

-- Location: FF_X22_Y14_N31
\PC[1]\ : dffeas
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
	q => PC(1));

-- Location: LCCOMB_X23_Y14_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (PC(3) & ((PC(2)) # ((PC(1) & PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(1),
	datac => PC(0),
	datad => PC(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y17_N14
\Mux10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux0~0_combout\ & (((\Mux10~3_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & (\Mux10~5_combout\)) # (!\Mux167~0_combout\ & ((\Mux10~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux10~5_combout\,
	datad => \Mux10~3_combout\,
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


