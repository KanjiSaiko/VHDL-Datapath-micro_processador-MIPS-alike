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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/27/2024 21:45:07"

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
-- R0_out[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[5]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_out[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_out[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
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
SIGNAL \Add4~24\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~27_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \regs[12][2]~q\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \regs[14][5]~q\ : std_logic;
SIGNAL \regs[1][7]~q\ : std_logic;
SIGNAL \regs[11][0]~q\ : std_logic;
SIGNAL \regs[4][0]~q\ : std_logic;
SIGNAL \regs[6][0]~q\ : std_logic;
SIGNAL \regs[10][1]~q\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \regs[9][1]~q\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \regs[4][2]~q\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \regs[9][3]~q\ : std_logic;
SIGNAL \regs[6][3]~q\ : std_logic;
SIGNAL \regs[5][3]~q\ : std_logic;
SIGNAL \regs[5][4]~q\ : std_logic;
SIGNAL \regs[7][4]~q\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \regs[4][4]~q\ : std_logic;
SIGNAL \regs[6][4]~q\ : std_logic;
SIGNAL \regs[5][5]~q\ : std_logic;
SIGNAL \regs[11][5]~q\ : std_logic;
SIGNAL \regs[10][5]~q\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \regs[4][6]~q\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \regs[8][7]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \regs[9][7]~q\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \mem_d~1625_q\ : std_logic;
SIGNAL \mem_d~1617_q\ : std_logic;
SIGNAL \mem_d~1745_q\ : std_logic;
SIGNAL \mem_d~2209_combout\ : std_logic;
SIGNAL \mem_d~1657_q\ : std_logic;
SIGNAL \mem_d~1601_q\ : std_logic;
SIGNAL \mem_d~1729_q\ : std_logic;
SIGNAL \mem_d~1561_q\ : std_logic;
SIGNAL \mem_d~1553_q\ : std_logic;
SIGNAL \mem_d~1641_q\ : std_logic;
SIGNAL \mem_d~1665_q\ : std_logic;
SIGNAL \mem_d~1633_q\ : std_logic;
SIGNAL \mem_d~2225_combout\ : std_logic;
SIGNAL \mem_d~1673_q\ : std_logic;
SIGNAL \mem_d~2226_combout\ : std_logic;
SIGNAL \mem_d~1793_q\ : std_logic;
SIGNAL \mem_d~1769_q\ : std_logic;
SIGNAL \mem_d~1761_q\ : std_logic;
SIGNAL \mem_d~2227_combout\ : std_logic;
SIGNAL \mem_d~1801_q\ : std_logic;
SIGNAL \mem_d~2228_combout\ : std_logic;
SIGNAL \mem_d~2229_combout\ : std_logic;
SIGNAL \mem_d~89_q\ : std_logic;
SIGNAL \mem_d~121_q\ : std_logic;
SIGNAL \mem_d~41_q\ : std_logic;
SIGNAL \mem_d~33_q\ : std_logic;
SIGNAL \mem_d~73_q\ : std_logic;
SIGNAL \mem_d~25_q\ : std_logic;
SIGNAL \mem_d~129_q\ : std_logic;
SIGNAL \mem_d~97_q\ : std_logic;
SIGNAL \mem_d~2249_combout\ : std_logic;
SIGNAL \mem_d~137_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \mem_d~1634_q\ : std_logic;
SIGNAL \mem_d~1650_q\ : std_logic;
SIGNAL \mem_d~1794_q\ : std_logic;
SIGNAL \mem_d~2262_combout\ : std_logic;
SIGNAL \mem_d~1594_q\ : std_logic;
SIGNAL \mem_d~1578_q\ : std_logic;
SIGNAL \mem_d~1562_q\ : std_logic;
SIGNAL \mem_d~2263_combout\ : std_logic;
SIGNAL \mem_d~1610_q\ : std_logic;
SIGNAL \mem_d~2264_combout\ : std_logic;
SIGNAL \mem_d~1586_q\ : std_logic;
SIGNAL \mem_d~1698_q\ : std_logic;
SIGNAL \mem_d~1682_q\ : std_logic;
SIGNAL \mem_d~2269_combout\ : std_logic;
SIGNAL \mem_d~1754_q\ : std_logic;
SIGNAL \mem_d~1786_q\ : std_logic;
SIGNAL \mem_d~1658_q\ : std_logic;
SIGNAL \mem_d~98_q\ : std_logic;
SIGNAL \mem_d~90_q\ : std_logic;
SIGNAL \mem_d~82_q\ : std_logic;
SIGNAL \mem_d~2280_combout\ : std_logic;
SIGNAL \mem_d~106_q\ : std_logic;
SIGNAL \mem_d~2281_combout\ : std_logic;
SIGNAL \mem_d~226_q\ : std_logic;
SIGNAL \mem_d~218_q\ : std_logic;
SIGNAL \mem_d~210_q\ : std_logic;
SIGNAL \mem_d~2282_combout\ : std_logic;
SIGNAL \mem_d~234_q\ : std_logic;
SIGNAL \mem_d~2283_combout\ : std_logic;
SIGNAL \mem_d~2284_combout\ : std_logic;
SIGNAL \mem_d~66_q\ : std_logic;
SIGNAL \mem_d~178_q\ : std_logic;
SIGNAL \mem_d~50_q\ : std_logic;
SIGNAL \mem_d~2285_combout\ : std_logic;
SIGNAL \mem_d~194_q\ : std_logic;
SIGNAL \mem_d~2286_combout\ : std_logic;
SIGNAL \mem_d~74_q\ : std_logic;
SIGNAL \mem_d~186_q\ : std_logic;
SIGNAL \mem_d~58_q\ : std_logic;
SIGNAL \mem_d~2287_combout\ : std_logic;
SIGNAL \mem_d~202_q\ : std_logic;
SIGNAL \mem_d~2288_combout\ : std_logic;
SIGNAL \mem_d~2289_combout\ : std_logic;
SIGNAL \mem_d~146_q\ : std_logic;
SIGNAL \mem_d~162_q\ : std_logic;
SIGNAL \mem_d~2290_combout\ : std_logic;
SIGNAL \mem_d~26_q\ : std_logic;
SIGNAL \mem_d~42_q\ : std_logic;
SIGNAL \mem_d~2291_combout\ : std_logic;
SIGNAL \mem_d~18_q\ : std_logic;
SIGNAL \mem_d~34_q\ : std_logic;
SIGNAL \mem_d~2292_combout\ : std_logic;
SIGNAL \mem_d~2293_combout\ : std_logic;
SIGNAL \mem_d~154_q\ : std_logic;
SIGNAL \mem_d~170_q\ : std_logic;
SIGNAL \mem_d~2294_combout\ : std_logic;
SIGNAL \mem_d~2295_combout\ : std_logic;
SIGNAL \mem_d~2296_combout\ : std_logic;
SIGNAL \mem_d~242_q\ : std_logic;
SIGNAL \mem_d~258_q\ : std_logic;
SIGNAL \mem_d~2297_combout\ : std_logic;
SIGNAL \mem_d~122_q\ : std_logic;
SIGNAL \mem_d~138_q\ : std_logic;
SIGNAL \mem_d~2298_combout\ : std_logic;
SIGNAL \mem_d~114_q\ : std_logic;
SIGNAL \mem_d~130_q\ : std_logic;
SIGNAL \mem_d~2299_combout\ : std_logic;
SIGNAL \mem_d~2300_combout\ : std_logic;
SIGNAL \mem_d~250_q\ : std_logic;
SIGNAL \mem_d~266_q\ : std_logic;
SIGNAL \mem_d~2301_combout\ : std_logic;
SIGNAL \mem_d~2302_combout\ : std_logic;
SIGNAL \mem_d~2303_combout\ : std_logic;
SIGNAL \mem_d~1627_q\ : std_logic;
SIGNAL \mem_d~1699_q\ : std_logic;
SIGNAL \mem_d~1563_q\ : std_logic;
SIGNAL \mem_d~1579_q\ : std_logic;
SIGNAL \mem_d~2315_combout\ : std_logic;
SIGNAL \mem_d~1555_q\ : std_logic;
SIGNAL \mem_d~1571_q\ : std_logic;
SIGNAL \mem_d~2316_combout\ : std_logic;
SIGNAL \mem_d~2317_combout\ : std_logic;
SIGNAL \mem_d~1667_q\ : std_logic;
SIGNAL \mem_d~1795_q\ : std_logic;
SIGNAL \mem_d~2322_combout\ : std_logic;
SIGNAL \mem_d~1651_q\ : std_logic;
SIGNAL \mem_d~1779_q\ : std_logic;
SIGNAL \mem_d~2323_combout\ : std_logic;
SIGNAL \mem_d~2324_combout\ : std_logic;
SIGNAL \mem_d~123_q\ : std_logic;
SIGNAL \mem_d~67_q\ : std_logic;
SIGNAL \mem_d~35_q\ : std_logic;
SIGNAL \mem_d~43_q\ : std_logic;
SIGNAL \mem_d~2335_combout\ : std_logic;
SIGNAL \mem_d~51_q\ : std_logic;
SIGNAL \mem_d~179_q\ : std_logic;
SIGNAL \mem_d~107_q\ : std_logic;
SIGNAL \mem_d~131_q\ : std_logic;
SIGNAL \mem_d~259_q\ : std_logic;
SIGNAL \mem_d~227_q\ : std_logic;
SIGNAL \mem_d~2347_combout\ : std_logic;
SIGNAL \mem_d~1628_q\ : std_logic;
SIGNAL \mem_d~1652_q\ : std_logic;
SIGNAL \mem_d~1620_q\ : std_logic;
SIGNAL \mem_d~2351_combout\ : std_logic;
SIGNAL \mem_d~1660_q\ : std_logic;
SIGNAL \mem_d~2352_combout\ : std_logic;
SIGNAL \mem_d~1756_q\ : std_logic;
SIGNAL \mem_d~1780_q\ : std_logic;
SIGNAL \mem_d~1748_q\ : std_logic;
SIGNAL \mem_d~2353_combout\ : std_logic;
SIGNAL \mem_d~1788_q\ : std_logic;
SIGNAL \mem_d~2354_combout\ : std_logic;
SIGNAL \mem_d~2355_combout\ : std_logic;
SIGNAL \mem_d~1580_q\ : std_logic;
SIGNAL \mem_d~1700_q\ : std_logic;
SIGNAL \mem_d~1572_q\ : std_logic;
SIGNAL \mem_d~2356_combout\ : std_logic;
SIGNAL \mem_d~1708_q\ : std_logic;
SIGNAL \mem_d~2357_combout\ : std_logic;
SIGNAL \mem_d~1612_q\ : std_logic;
SIGNAL \mem_d~1732_q\ : std_logic;
SIGNAL \mem_d~1604_q\ : std_logic;
SIGNAL \mem_d~2358_combout\ : std_logic;
SIGNAL \mem_d~1740_q\ : std_logic;
SIGNAL \mem_d~2359_combout\ : std_logic;
SIGNAL \mem_d~2360_combout\ : std_logic;
SIGNAL \mem_d~1684_q\ : std_logic;
SIGNAL \mem_d~1692_q\ : std_logic;
SIGNAL \mem_d~2361_combout\ : std_logic;
SIGNAL \mem_d~1588_q\ : std_logic;
SIGNAL \mem_d~1596_q\ : std_logic;
SIGNAL \mem_d~2362_combout\ : std_logic;
SIGNAL \mem_d~1556_q\ : std_logic;
SIGNAL \mem_d~1564_q\ : std_logic;
SIGNAL \mem_d~2363_combout\ : std_logic;
SIGNAL \mem_d~2364_combout\ : std_logic;
SIGNAL \mem_d~1716_q\ : std_logic;
SIGNAL \mem_d~1724_q\ : std_logic;
SIGNAL \mem_d~2365_combout\ : std_logic;
SIGNAL \mem_d~2366_combout\ : std_logic;
SIGNAL \mem_d~2367_combout\ : std_logic;
SIGNAL \mem_d~1764_q\ : std_logic;
SIGNAL \mem_d~1772_q\ : std_logic;
SIGNAL \mem_d~2368_combout\ : std_logic;
SIGNAL \mem_d~1668_q\ : std_logic;
SIGNAL \mem_d~1676_q\ : std_logic;
SIGNAL \mem_d~2369_combout\ : std_logic;
SIGNAL \mem_d~1636_q\ : std_logic;
SIGNAL \mem_d~1644_q\ : std_logic;
SIGNAL \mem_d~2370_combout\ : std_logic;
SIGNAL \mem_d~2371_combout\ : std_logic;
SIGNAL \mem_d~1796_q\ : std_logic;
SIGNAL \mem_d~1804_q\ : std_logic;
SIGNAL \mem_d~2372_combout\ : std_logic;
SIGNAL \mem_d~2373_combout\ : std_logic;
SIGNAL \mem_d~2374_combout\ : std_logic;
SIGNAL \mem_d~100_q\ : std_logic;
SIGNAL \mem_d~116_q\ : std_logic;
SIGNAL \mem_d~84_q\ : std_logic;
SIGNAL \mem_d~2375_combout\ : std_logic;
SIGNAL \mem_d~132_q\ : std_logic;
SIGNAL \mem_d~2376_combout\ : std_logic;
SIGNAL \mem_d~2377_combout\ : std_logic;
SIGNAL \mem_d~244_q\ : std_logic;
SIGNAL \mem_d~228_q\ : std_logic;
SIGNAL \mem_d~212_q\ : std_logic;
SIGNAL \mem_d~2378_combout\ : std_logic;
SIGNAL \mem_d~260_q\ : std_logic;
SIGNAL \mem_d~2379_combout\ : std_logic;
SIGNAL \mem_d~2380_combout\ : std_logic;
SIGNAL \mem_d~156_q\ : std_logic;
SIGNAL \mem_d~188_q\ : std_logic;
SIGNAL \mem_d~2381_combout\ : std_logic;
SIGNAL \mem_d~44_q\ : std_logic;
SIGNAL \mem_d~76_q\ : std_logic;
SIGNAL \mem_d~2382_combout\ : std_logic;
SIGNAL \mem_d~28_q\ : std_logic;
SIGNAL \mem_d~60_q\ : std_logic;
SIGNAL \mem_d~2383_combout\ : std_logic;
SIGNAL \mem_d~2384_combout\ : std_logic;
SIGNAL \mem_d~172_q\ : std_logic;
SIGNAL \mem_d~204_q\ : std_logic;
SIGNAL \mem_d~2385_combout\ : std_logic;
SIGNAL \mem_d~2386_combout\ : std_logic;
SIGNAL \mem_d~52_q\ : std_logic;
SIGNAL \mem_d~36_q\ : std_logic;
SIGNAL \mem_d~20_q\ : std_logic;
SIGNAL \mem_d~2387_combout\ : std_logic;
SIGNAL \mem_d~68_q\ : std_logic;
SIGNAL \mem_d~2388_combout\ : std_logic;
SIGNAL \mem_d~2389_combout\ : std_logic;
SIGNAL \mem_d~180_q\ : std_logic;
SIGNAL \mem_d~164_q\ : std_logic;
SIGNAL \mem_d~148_q\ : std_logic;
SIGNAL \mem_d~2390_combout\ : std_logic;
SIGNAL \mem_d~196_q\ : std_logic;
SIGNAL \mem_d~2391_combout\ : std_logic;
SIGNAL \mem_d~2392_combout\ : std_logic;
SIGNAL \mem_d~2393_combout\ : std_logic;
SIGNAL \mem_d~220_q\ : std_logic;
SIGNAL \mem_d~124_q\ : std_logic;
SIGNAL \mem_d~92_q\ : std_logic;
SIGNAL \mem_d~2394_combout\ : std_logic;
SIGNAL \mem_d~252_q\ : std_logic;
SIGNAL \mem_d~2395_combout\ : std_logic;
SIGNAL \mem_d~236_q\ : std_logic;
SIGNAL \mem_d~140_q\ : std_logic;
SIGNAL \mem_d~108_q\ : std_logic;
SIGNAL \mem_d~2396_combout\ : std_logic;
SIGNAL \mem_d~268_q\ : std_logic;
SIGNAL \mem_d~2397_combout\ : std_logic;
SIGNAL \mem_d~2398_combout\ : std_logic;
SIGNAL \mem_d~2399_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \mem_d~1629_q\ : std_logic;
SIGNAL \mem_d~1757_q\ : std_logic;
SIGNAL \mem_d~2400_combout\ : std_logic;
SIGNAL \mem_d~1621_q\ : std_logic;
SIGNAL \mem_d~1749_q\ : std_logic;
SIGNAL \mem_d~2402_combout\ : std_logic;
SIGNAL \mem_d~1661_q\ : std_logic;
SIGNAL \mem_d~1565_q\ : std_logic;
SIGNAL \mem_d~1693_q\ : std_logic;
SIGNAL \mem_d~1669_q\ : std_logic;
SIGNAL \mem_d~1797_q\ : std_logic;
SIGNAL \mem_d~69_q\ : std_logic;
SIGNAL \mem_d~53_q\ : std_logic;
SIGNAL \mem_d~2424_combout\ : std_logic;
SIGNAL \mem_d~197_q\ : std_logic;
SIGNAL \mem_d~181_q\ : std_logic;
SIGNAL \mem_d~2426_combout\ : std_logic;
SIGNAL \mem_d~85_q\ : std_logic;
SIGNAL \mem_d~165_q\ : std_logic;
SIGNAL \mem_d~229_q\ : std_logic;
SIGNAL \mem_d~93_q\ : std_logic;
SIGNAL \mem_d~45_q\ : std_logic;
SIGNAL \mem_d~173_q\ : std_logic;
SIGNAL \mem_d~157_q\ : std_logic;
SIGNAL \mem_d~2437_combout\ : std_logic;
SIGNAL \mem_d~141_q\ : std_logic;
SIGNAL \mem_d~1750_q\ : std_logic;
SIGNAL \mem_d~1654_q\ : std_logic;
SIGNAL \mem_d~1622_q\ : std_logic;
SIGNAL \mem_d~2446_combout\ : std_logic;
SIGNAL \mem_d~1782_q\ : std_logic;
SIGNAL \mem_d~2447_combout\ : std_logic;
SIGNAL \mem_d~1758_q\ : std_logic;
SIGNAL \mem_d~1662_q\ : std_logic;
SIGNAL \mem_d~1630_q\ : std_logic;
SIGNAL \mem_d~2448_combout\ : std_logic;
SIGNAL \mem_d~1790_q\ : std_logic;
SIGNAL \mem_d~2449_combout\ : std_logic;
SIGNAL \mem_d~2450_combout\ : std_logic;
SIGNAL \mem_d~1734_q\ : std_logic;
SIGNAL \mem_d~1590_q\ : std_logic;
SIGNAL \mem_d~1566_q\ : std_logic;
SIGNAL \mem_d~1558_q\ : std_logic;
SIGNAL \mem_d~2455_combout\ : std_logic;
SIGNAL \mem_d~1598_q\ : std_logic;
SIGNAL \mem_d~2456_combout\ : std_logic;
SIGNAL \mem_d~1694_q\ : std_logic;
SIGNAL \mem_d~1718_q\ : std_logic;
SIGNAL \mem_d~1686_q\ : std_logic;
SIGNAL \mem_d~2457_combout\ : std_logic;
SIGNAL \mem_d~1726_q\ : std_logic;
SIGNAL \mem_d~2458_combout\ : std_logic;
SIGNAL \mem_d~2459_combout\ : std_logic;
SIGNAL \mem_d~1670_q\ : std_logic;
SIGNAL \mem_d~1638_q\ : std_logic;
SIGNAL \mem_d~1646_q\ : std_logic;
SIGNAL \mem_d~2464_combout\ : std_logic;
SIGNAL \mem_d~1798_q\ : std_logic;
SIGNAL \mem_d~222_q\ : std_logic;
SIGNAL \mem_d~174_q\ : std_logic;
SIGNAL \mem_d~158_q\ : std_logic;
SIGNAL \mem_d~2471_combout\ : std_logic;
SIGNAL \mem_d~238_q\ : std_logic;
SIGNAL \mem_d~2472_combout\ : std_logic;
SIGNAL \mem_d~118_q\ : std_logic;
SIGNAL \mem_d~70_q\ : std_logic;
SIGNAL \mem_d~54_q\ : std_logic;
SIGNAL \mem_d~2474_combout\ : std_logic;
SIGNAL \mem_d~134_q\ : std_logic;
SIGNAL \mem_d~2475_combout\ : std_logic;
SIGNAL \mem_d~2476_combout\ : std_logic;
SIGNAL \mem_d~198_q\ : std_logic;
SIGNAL \mem_d~214_q\ : std_logic;
SIGNAL \mem_d~206_q\ : std_logic;
SIGNAL \mem_d~270_q\ : std_logic;
SIGNAL \mem_d~2490_combout\ : std_logic;
SIGNAL \mem_d~1663_q\ : std_logic;
SIGNAL \mem_d~1791_q\ : std_logic;
SIGNAL \mem_d~2497_combout\ : std_logic;
SIGNAL \mem_d~1607_q\ : std_logic;
SIGNAL \mem_d~1735_q\ : std_logic;
SIGNAL \mem_d~1567_q\ : std_logic;
SIGNAL \mem_d~1719_q\ : std_logic;
SIGNAL \mem_d~1647_q\ : std_logic;
SIGNAL \mem_d~1671_q\ : std_logic;
SIGNAL \mem_d~1639_q\ : std_logic;
SIGNAL \mem_d~2510_combout\ : std_logic;
SIGNAL \mem_d~1679_q\ : std_logic;
SIGNAL \mem_d~2511_combout\ : std_logic;
SIGNAL \mem_d~1799_q\ : std_logic;
SIGNAL \mem_d~1775_q\ : std_logic;
SIGNAL \mem_d~1767_q\ : std_logic;
SIGNAL \mem_d~2512_combout\ : std_logic;
SIGNAL \mem_d~1807_q\ : std_logic;
SIGNAL \mem_d~2513_combout\ : std_logic;
SIGNAL \mem_d~2514_combout\ : std_logic;
SIGNAL \mem_d~47_q\ : std_logic;
SIGNAL \mem_d~175_q\ : std_logic;
SIGNAL \mem_d~239_q\ : std_logic;
SIGNAL \mem_d~127_q\ : std_logic;
SIGNAL \mem_d~191_q\ : std_logic;
SIGNAL \mem_d~63_q\ : std_logic;
SIGNAL \mem_d~2521_combout\ : std_logic;
SIGNAL \mem_d~255_q\ : std_logic;
SIGNAL \mem_d~2522_combout\ : std_logic;
SIGNAL \mem_d~143_q\ : std_logic;
SIGNAL \mem_d~119_q\ : std_logic;
SIGNAL \mem_d~71_q\ : std_logic;
SIGNAL \mem_d~55_q\ : std_logic;
SIGNAL \mem_d~2527_combout\ : std_logic;
SIGNAL \mem_d~135_q\ : std_logic;
SIGNAL \mem_d~2528_combout\ : std_logic;
SIGNAL \mem_d~87_q\ : std_logic;
SIGNAL \mem_d~231_q\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \mem_d~1672_q\ : std_logic;
SIGNAL \mem_d~1664_q\ : std_logic;
SIGNAL \mem_d~1640_q\ : std_logic;
SIGNAL \mem_d~1632_q\ : std_logic;
SIGNAL \mem_d~1624_q\ : std_logic;
SIGNAL \mem_d~2539_combout\ : std_logic;
SIGNAL \mem_d~1648_q\ : std_logic;
SIGNAL \mem_d~2540_combout\ : std_logic;
SIGNAL \mem_d~1800_q\ : std_logic;
SIGNAL \mem_d~1792_q\ : std_logic;
SIGNAL \mem_d~1784_q\ : std_logic;
SIGNAL \mem_d~2542_combout\ : std_logic;
SIGNAL \mem_d~1808_q\ : std_logic;
SIGNAL \mem_d~2543_combout\ : std_logic;
SIGNAL \mem_d~1696_q\ : std_logic;
SIGNAL \mem_d~1568_q\ : std_logic;
SIGNAL \mem_d~1592_q\ : std_logic;
SIGNAL \mem_d~1736_q\ : std_logic;
SIGNAL \mem_d~120_q\ : std_logic;
SIGNAL \mem_d~248_q\ : std_logic;
SIGNAL \mem_d~88_q\ : std_logic;
SIGNAL \mem_d~216_q\ : std_logic;
SIGNAL \mem_d~80_q\ : std_logic;
SIGNAL \mem_d~144_q\ : std_logic;
SIGNAL \mem_d~2567_combout\ : std_logic;
SIGNAL \mem_d~192_q\ : std_logic;
SIGNAL \mem_d~256_q\ : std_logic;
SIGNAL \mem_d~2568_combout\ : std_logic;
SIGNAL \mem_d~64_q\ : std_logic;
SIGNAL \mem_d~128_q\ : std_logic;
SIGNAL \mem_d~2569_combout\ : std_logic;
SIGNAL \mem_d~2570_combout\ : std_logic;
SIGNAL \mem_d~208_q\ : std_logic;
SIGNAL \mem_d~272_q\ : std_logic;
SIGNAL \mem_d~2571_combout\ : std_logic;
SIGNAL \mem_d~2572_combout\ : std_logic;
SIGNAL \mem_d~96_q\ : std_logic;
SIGNAL \mem_d~224_q\ : std_logic;
SIGNAL \mem_d~176_q\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux36~5_combout\ : std_logic;
SIGNAL \Mux35~7_combout\ : std_logic;
SIGNAL \Mux35~8_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Mux34~6_combout\ : std_logic;
SIGNAL \Mux34~7_combout\ : std_logic;
SIGNAL \Mux34~8_combout\ : std_logic;
SIGNAL \Mux34~9_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~7_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~7_combout\ : std_logic;
SIGNAL \Mux32~8_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Add4~29_combout\ : std_logic;
SIGNAL \PC~20_combout\ : std_logic;
SIGNAL \mem_d~2601_combout\ : std_logic;
SIGNAL \mem_d~2621_combout\ : std_logic;
SIGNAL \mem_d~2633_combout\ : std_logic;
SIGNAL \mem_d~2669_combout\ : std_logic;
SIGNAL \mem_d~2670_combout\ : std_logic;
SIGNAL \mem_d~2671_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \regs[14][5]~feeder_combout\ : std_logic;
SIGNAL \regs[11][5]~feeder_combout\ : std_logic;
SIGNAL \regs[5][5]~feeder_combout\ : std_logic;
SIGNAL \mem_d~1617feeder_combout\ : std_logic;
SIGNAL \mem_d~1641feeder_combout\ : std_logic;
SIGNAL \mem_d~1769feeder_combout\ : std_logic;
SIGNAL \mem_d~89feeder_combout\ : std_logic;
SIGNAL \mem_d~121feeder_combout\ : std_logic;
SIGNAL \mem_d~73feeder_combout\ : std_logic;
SIGNAL \mem_d~1665feeder_combout\ : std_logic;
SIGNAL \mem_d~1793feeder_combout\ : std_logic;
SIGNAL \mem_d~1657feeder_combout\ : std_logic;
SIGNAL \mem_d~97feeder_combout\ : std_logic;
SIGNAL \mem_d~137feeder_combout\ : std_logic;
SIGNAL \mem_d~41feeder_combout\ : std_logic;
SIGNAL \mem_d~1625feeder_combout\ : std_logic;
SIGNAL \mem_d~1601feeder_combout\ : std_logic;
SIGNAL \mem_d~1553feeder_combout\ : std_logic;
SIGNAL \mem_d~1561feeder_combout\ : std_logic;
SIGNAL \mem_d~1729feeder_combout\ : std_logic;
SIGNAL \mem_d~1754feeder_combout\ : std_logic;
SIGNAL \mem_d~66feeder_combout\ : std_logic;
SIGNAL \mem_d~1578feeder_combout\ : std_logic;
SIGNAL \mem_d~1658feeder_combout\ : std_logic;
SIGNAL \mem_d~1634feeder_combout\ : std_logic;
SIGNAL \mem_d~242feeder_combout\ : std_logic;
SIGNAL \mem_d~146feeder_combout\ : std_logic;
SIGNAL \mem_d~1786feeder_combout\ : std_logic;
SIGNAL \mem_d~1794feeder_combout\ : std_logic;
SIGNAL \mem_d~1650feeder_combout\ : std_logic;
SIGNAL \mem_d~74feeder_combout\ : std_logic;
SIGNAL \mem_d~122feeder_combout\ : std_logic;
SIGNAL \mem_d~250feeder_combout\ : std_logic;
SIGNAL \mem_d~186feeder_combout\ : std_logic;
SIGNAL \mem_d~178feeder_combout\ : std_logic;
SIGNAL \mem_d~26feeder_combout\ : std_logic;
SIGNAL \mem_d~106feeder_combout\ : std_logic;
SIGNAL \mem_d~154feeder_combout\ : std_logic;
SIGNAL \mem_d~234feeder_combout\ : std_logic;
SIGNAL \mem_d~218feeder_combout\ : std_logic;
SIGNAL \mem_d~82feeder_combout\ : std_logic;
SIGNAL \mem_d~114feeder_combout\ : std_logic;
SIGNAL \mem_d~90feeder_combout\ : std_logic;
SIGNAL \mem_d~1594feeder_combout\ : std_logic;
SIGNAL \mem_d~1698feeder_combout\ : std_logic;
SIGNAL \mem_d~1610feeder_combout\ : std_logic;
SIGNAL \mem_d~67feeder_combout\ : std_logic;
SIGNAL \mem_d~1699feeder_combout\ : std_logic;
SIGNAL \mem_d~1555feeder_combout\ : std_logic;
SIGNAL \mem_d~1627feeder_combout\ : std_logic;
SIGNAL \mem_d~123feeder_combout\ : std_logic;
SIGNAL \mem_d~1667feeder_combout\ : std_logic;
SIGNAL \mem_d~131feeder_combout\ : std_logic;
SIGNAL \mem_d~51feeder_combout\ : std_logic;
SIGNAL \mem_d~179feeder_combout\ : std_logic;
SIGNAL \mem_d~107feeder_combout\ : std_logic;
SIGNAL \mem_d~1563feeder_combout\ : std_logic;
SIGNAL \mem_d~35feeder_combout\ : std_logic;
SIGNAL \mem_d~1651feeder_combout\ : std_logic;
SIGNAL \mem_d~259feeder_combout\ : std_logic;
SIGNAL \mem_d~1588feeder_combout\ : std_logic;
SIGNAL \mem_d~124feeder_combout\ : std_logic;
SIGNAL \mem_d~1780feeder_combout\ : std_logic;
SIGNAL \mem_d~1660feeder_combout\ : std_logic;
SIGNAL \mem_d~1764feeder_combout\ : std_logic;
SIGNAL \mem_d~180feeder_combout\ : std_logic;
SIGNAL \mem_d~260feeder_combout\ : std_logic;
SIGNAL \mem_d~1636feeder_combout\ : std_logic;
SIGNAL \mem_d~1788feeder_combout\ : std_logic;
SIGNAL \mem_d~1668feeder_combout\ : std_logic;
SIGNAL \mem_d~1652feeder_combout\ : std_logic;
SIGNAL \mem_d~1796feeder_combout\ : std_logic;
SIGNAL \mem_d~172feeder_combout\ : std_logic;
SIGNAL \mem_d~228feeder_combout\ : std_logic;
SIGNAL \mem_d~1716feeder_combout\ : std_logic;
SIGNAL \mem_d~1684feeder_combout\ : std_logic;
SIGNAL \mem_d~1700feeder_combout\ : std_logic;
SIGNAL \mem_d~164feeder_combout\ : std_logic;
SIGNAL \mem_d~100feeder_combout\ : std_logic;
SIGNAL \mem_d~28feeder_combout\ : std_logic;
SIGNAL \mem_d~1612feeder_combout\ : std_logic;
SIGNAL \mem_d~36feeder_combout\ : std_logic;
SIGNAL \mem_d~116feeder_combout\ : std_logic;
SIGNAL \mem_d~52feeder_combout\ : std_logic;
SIGNAL \mem_d~44feeder_combout\ : std_logic;
SIGNAL \mem_d~156feeder_combout\ : std_logic;
SIGNAL \mem_d~236feeder_combout\ : std_logic;
SIGNAL \mem_d~1556feeder_combout\ : std_logic;
SIGNAL \mem_d~220feeder_combout\ : std_logic;
SIGNAL \mem_d~140feeder_combout\ : std_logic;
SIGNAL \mem_d~1580feeder_combout\ : std_logic;
SIGNAL \mem_d~1732feeder_combout\ : std_logic;
SIGNAL \mem_d~1629feeder_combout\ : std_logic;
SIGNAL \mem_d~93feeder_combout\ : std_logic;
SIGNAL \mem_d~85feeder_combout\ : std_logic;
SIGNAL \mem_d~197feeder_combout\ : std_logic;
SIGNAL \mem_d~1669feeder_combout\ : std_logic;
SIGNAL \mem_d~1797feeder_combout\ : std_logic;
SIGNAL \mem_d~1621feeder_combout\ : std_logic;
SIGNAL \mem_d~69feeder_combout\ : std_logic;
SIGNAL \mem_d~1661feeder_combout\ : std_logic;
SIGNAL \mem_d~229feeder_combout\ : std_logic;
SIGNAL \mem_d~1565feeder_combout\ : std_logic;
SIGNAL \mem_d~141feeder_combout\ : std_logic;
SIGNAL \mem_d~1693feeder_combout\ : std_logic;
SIGNAL \mem_d~45feeder_combout\ : std_logic;
SIGNAL \mem_d~165feeder_combout\ : std_logic;
SIGNAL \mem_d~173feeder_combout\ : std_logic;
SIGNAL \mem_d~1670feeder_combout\ : std_logic;
SIGNAL \mem_d~1654feeder_combout\ : std_logic;
SIGNAL \mem_d~1638feeder_combout\ : std_logic;
SIGNAL \mem_d~1662feeder_combout\ : std_logic;
SIGNAL \mem_d~70feeder_combout\ : std_logic;
SIGNAL \mem_d~1590feeder_combout\ : std_logic;
SIGNAL \mem_d~1646feeder_combout\ : std_logic;
SIGNAL \mem_d~1750feeder_combout\ : std_logic;
SIGNAL \mem_d~1718feeder_combout\ : std_logic;
SIGNAL \mem_d~198feeder_combout\ : std_logic;
SIGNAL \mem_d~1790feeder_combout\ : std_logic;
SIGNAL \mem_d~174feeder_combout\ : std_logic;
SIGNAL \mem_d~206feeder_combout\ : std_logic;
SIGNAL \mem_d~118feeder_combout\ : std_logic;
SIGNAL \mem_d~214feeder_combout\ : std_logic;
SIGNAL \mem_d~1798feeder_combout\ : std_logic;
SIGNAL \mem_d~1726feeder_combout\ : std_logic;
SIGNAL \mem_d~222feeder_combout\ : std_logic;
SIGNAL \mem_d~1566feeder_combout\ : std_logic;
SIGNAL \mem_d~1734feeder_combout\ : std_logic;
SIGNAL \mem_d~1671feeder_combout\ : std_logic;
SIGNAL \mem_d~1663feeder_combout\ : std_logic;
SIGNAL \mem_d~87feeder_combout\ : std_logic;
SIGNAL \mem_d~119feeder_combout\ : std_logic;
SIGNAL \mem_d~231feeder_combout\ : std_logic;
SIGNAL \mem_d~1799feeder_combout\ : std_logic;
SIGNAL \mem_d~1647feeder_combout\ : std_logic;
SIGNAL \mem_d~71feeder_combout\ : std_logic;
SIGNAL \mem_d~127feeder_combout\ : std_logic;
SIGNAL \mem_d~191feeder_combout\ : std_logic;
SIGNAL \mem_d~47feeder_combout\ : std_logic;
SIGNAL \mem_d~143feeder_combout\ : std_logic;
SIGNAL \mem_d~1567feeder_combout\ : std_logic;
SIGNAL \mem_d~239feeder_combout\ : std_logic;
SIGNAL \mem_d~1735feeder_combout\ : std_logic;
SIGNAL \mem_d~175feeder_combout\ : std_logic;
SIGNAL \mem_d~1719feeder_combout\ : std_logic;
SIGNAL \mem_d~1607feeder_combout\ : std_logic;
SIGNAL \mem_d~1775feeder_combout\ : std_logic;
SIGNAL \mem_d~1672feeder_combout\ : std_logic;
SIGNAL \mem_d~1800feeder_combout\ : std_logic;
SIGNAL \mem_d~1640feeder_combout\ : std_logic;
SIGNAL \mem_d~1792feeder_combout\ : std_logic;
SIGNAL \mem_d~80feeder_combout\ : std_logic;
SIGNAL \mem_d~208feeder_combout\ : std_logic;
SIGNAL \mem_d~1664feeder_combout\ : std_logic;
SIGNAL \mem_d~1632feeder_combout\ : std_logic;
SIGNAL \mem_d~192feeder_combout\ : std_logic;
SIGNAL \mem_d~224feeder_combout\ : std_logic;
SIGNAL \mem_d~176feeder_combout\ : std_logic;
SIGNAL \mem_d~1736feeder_combout\ : std_logic;
SIGNAL \mem_d~216feeder_combout\ : std_logic;
SIGNAL \mem_d~1568feeder_combout\ : std_logic;
SIGNAL \mem_d~248feeder_combout\ : std_logic;
SIGNAL \mem_d~64feeder_combout\ : std_logic;
SIGNAL \mem_d~96feeder_combout\ : std_logic;
SIGNAL \mem_d~88feeder_combout\ : std_logic;
SIGNAL \mem_d~120feeder_combout\ : std_logic;
SIGNAL \mem_d~1696feeder_combout\ : std_logic;
SIGNAL \regs[6][0]~feeder_combout\ : std_logic;
SIGNAL \regs[4][0]~feeder_combout\ : std_logic;
SIGNAL \regs[4][2]~feeder_combout\ : std_logic;
SIGNAL \regs[12][2]~feeder_combout\ : std_logic;
SIGNAL \regs[6][3]~feeder_combout\ : std_logic;
SIGNAL \regs[9][3]~feeder_combout\ : std_logic;
SIGNAL \regs[5][3]~feeder_combout\ : std_logic;
SIGNAL \regs[5][4]~feeder_combout\ : std_logic;
SIGNAL \regs[4][4]~feeder_combout\ : std_logic;
SIGNAL \regs[6][4]~feeder_combout\ : std_logic;
SIGNAL \regs[8][7]~feeder_combout\ : std_logic;
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
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux169~0_combout\ : std_logic;
SIGNAL \Mux169~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \mem_d~2255_combout\ : std_logic;
SIGNAL \Add4~31_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \PC~14_combout\ : std_logic;
SIGNAL \Add4~20\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~23_combout\ : std_logic;
SIGNAL \PC~15_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC~21_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|cs1a[1]~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux167~1_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \regs[3][4]~7_combout\ : std_logic;
SIGNAL \regs[3][6]~q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \regs[1][4]~5_combout\ : std_logic;
SIGNAL \regs[1][6]~q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \regs[2][5]~4_combout\ : std_logic;
SIGNAL \regs[2][6]~q\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \regs[14][6]~feeder_combout\ : std_logic;
SIGNAL \regs[14][5]~0_combout\ : std_logic;
SIGNAL \regs[14][6]~q\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \regs[6][1]~15_combout\ : std_logic;
SIGNAL \regs[6][7]~q\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \regs[7][3]~14_combout\ : std_logic;
SIGNAL \regs[7][7]~q\ : std_logic;
SIGNAL \regs[4][7]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \regs[4][3]~13_combout\ : std_logic;
SIGNAL \regs[4][7]~q\ : std_logic;
SIGNAL \regs[5][7]~feeder_combout\ : std_logic;
SIGNAL \regs[5][5]~12_combout\ : std_logic;
SIGNAL \regs[5][7]~q\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \regs[0][7]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \regs[0][5]~6_combout\ : std_logic;
SIGNAL \regs[0][7]~q\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \regs[2][7]~feeder_combout\ : std_logic;
SIGNAL \regs[2][7]~q\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \regs[10][1]~8_combout\ : std_logic;
SIGNAL \regs[10][7]~q\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \regs[11][2]~11_combout\ : std_logic;
SIGNAL \regs[11][7]~q\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \mem_d~1584feeder_combout\ : std_logic;
SIGNAL \mem_d~2580_combout\ : std_logic;
SIGNAL \mem_d~2581_combout\ : std_logic;
SIGNAL \mem_d~2586_combout\ : std_logic;
SIGNAL \mem_d~2614_combout\ : std_logic;
SIGNAL \mem_d~1584_q\ : std_logic;
SIGNAL \mem_d~2588_combout\ : std_logic;
SIGNAL \mem_d~2616_combout\ : std_logic;
SIGNAL \mem_d~1616_q\ : std_logic;
SIGNAL \mem_d~1608feeder_combout\ : std_logic;
SIGNAL \mem_d~2585_combout\ : std_logic;
SIGNAL \mem_d~2613_combout\ : std_logic;
SIGNAL \mem_d~1608_q\ : std_logic;
SIGNAL \mem_d~1576feeder_combout\ : std_logic;
SIGNAL \mem_d~2587_combout\ : std_logic;
SIGNAL \mem_d~2615_combout\ : std_logic;
SIGNAL \mem_d~1576_q\ : std_logic;
SIGNAL \mem_d~2545_combout\ : std_logic;
SIGNAL \mem_d~2546_combout\ : std_logic;
SIGNAL \mem_d~2620_combout\ : std_logic;
SIGNAL \mem_d~1744_q\ : std_logic;
SIGNAL \mem_d~2619_combout\ : std_logic;
SIGNAL \mem_d~1704_q\ : std_logic;
SIGNAL \mem_d~1712feeder_combout\ : std_logic;
SIGNAL \mem_d~2617_combout\ : std_logic;
SIGNAL \mem_d~1712_q\ : std_logic;
SIGNAL \mem_d~2552_combout\ : std_logic;
SIGNAL \mem_d~2553_combout\ : std_logic;
SIGNAL \mem_d~2592_combout\ : std_logic;
SIGNAL \mem_d~2627_combout\ : std_logic;
SIGNAL \mem_d~1600_q\ : std_logic;
SIGNAL \mem_d~2591_combout\ : std_logic;
SIGNAL \mem_d~2625_combout\ : std_logic;
SIGNAL \mem_d~1560_q\ : std_logic;
SIGNAL \mem_d~2549_combout\ : std_logic;
SIGNAL \mem_d~2550_combout\ : std_logic;
SIGNAL \mem_d~1720feeder_combout\ : std_logic;
SIGNAL \mem_d~2590_combout\ : std_logic;
SIGNAL \mem_d~2624_combout\ : std_logic;
SIGNAL \mem_d~1720_q\ : std_logic;
SIGNAL \mem_d~2628_combout\ : std_logic;
SIGNAL \mem_d~1728_q\ : std_logic;
SIGNAL \mem_d~2626_combout\ : std_logic;
SIGNAL \mem_d~1688_q\ : std_logic;
SIGNAL \mem_d~2547_combout\ : std_logic;
SIGNAL \mem_d~2548_combout\ : std_logic;
SIGNAL \mem_d~2551_combout\ : std_logic;
SIGNAL \mem_d~2554_combout\ : std_logic;
SIGNAL \mem_d~2596_combout\ : std_logic;
SIGNAL \mem_d~2632_combout\ : std_logic;
SIGNAL \mem_d~1680_q\ : std_logic;
SIGNAL \mem_d~2579_combout\ : std_logic;
SIGNAL \mem_d~2605_combout\ : std_logic;
SIGNAL \mem_d~1656_q\ : std_logic;
SIGNAL \mem_d~2537_combout\ : std_logic;
SIGNAL \mem_d~2538_combout\ : std_logic;
SIGNAL \mem_d~2541_combout\ : std_logic;
SIGNAL \mem_d~1768feeder_combout\ : std_logic;
SIGNAL \mem_d~2595_combout\ : std_logic;
SIGNAL \mem_d~2635_combout\ : std_logic;
SIGNAL \mem_d~1768_q\ : std_logic;
SIGNAL \mem_d~2593_combout\ : std_logic;
SIGNAL \mem_d~2634_combout\ : std_logic;
SIGNAL \mem_d~1776_q\ : std_logic;
SIGNAL \mem_d~1760feeder_combout\ : std_logic;
SIGNAL \mem_d~2582_combout\ : std_logic;
SIGNAL \mem_d~2608_combout\ : std_logic;
SIGNAL \mem_d~1760_q\ : std_logic;
SIGNAL \mem_d~2583_combout\ : std_logic;
SIGNAL \mem_d~2610_combout\ : std_logic;
SIGNAL \mem_d~1752_q\ : std_logic;
SIGNAL \mem_d~2535_combout\ : std_logic;
SIGNAL \mem_d~2536_combout\ : std_logic;
SIGNAL \mem_d~2544_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \mem_d~2597_combout\ : std_logic;
SIGNAL \mem_d~2667_combout\ : std_logic;
SIGNAL \mem_d~112_q\ : std_logic;
SIGNAL \mem_d~48feeder_combout\ : std_logic;
SIGNAL \mem_d~2647_combout\ : std_logic;
SIGNAL \mem_d~48_q\ : std_logic;
SIGNAL \mem_d~2589_combout\ : std_logic;
SIGNAL \mem_d~2655_combout\ : std_logic;
SIGNAL \mem_d~32_q\ : std_logic;
SIGNAL \mem_d~2573_combout\ : std_logic;
SIGNAL \mem_d~2574_combout\ : std_logic;
SIGNAL \mem_d~2575_combout\ : std_logic;
SIGNAL \mem_d~2665_combout\ : std_logic;
SIGNAL \mem_d~240_q\ : std_logic;
SIGNAL \mem_d~2656_combout\ : std_logic;
SIGNAL \mem_d~160_q\ : std_logic;
SIGNAL \mem_d~2576_combout\ : std_logic;
SIGNAL \mem_d~2577_combout\ : std_logic;
SIGNAL \mem_d~2578_combout\ : std_logic;
SIGNAL \mem_d~2663_combout\ : std_logic;
SIGNAL \mem_d~104_q\ : std_logic;
SIGNAL \mem_d~40feeder_combout\ : std_logic;
SIGNAL \mem_d~2649_combout\ : std_logic;
SIGNAL \mem_d~40_q\ : std_logic;
SIGNAL \mem_d~2657_combout\ : std_logic;
SIGNAL \mem_d~24_q\ : std_logic;
SIGNAL \mem_d~2560_combout\ : std_logic;
SIGNAL \mem_d~2561_combout\ : std_logic;
SIGNAL \mem_d~2562_combout\ : std_logic;
SIGNAL \mem_d~2661_combout\ : std_logic;
SIGNAL \mem_d~232_q\ : std_logic;
SIGNAL \mem_d~168feeder_combout\ : std_logic;
SIGNAL \mem_d~2650_combout\ : std_logic;
SIGNAL \mem_d~168_q\ : std_logic;
SIGNAL \mem_d~2658_combout\ : std_logic;
SIGNAL \mem_d~152_q\ : std_logic;
SIGNAL \mem_d~2563_combout\ : std_logic;
SIGNAL \mem_d~2564_combout\ : std_logic;
SIGNAL \mem_d~2565_combout\ : std_logic;
SIGNAL \mem_d~2594_combout\ : std_logic;
SIGNAL \mem_d~2662_combout\ : std_logic;
SIGNAL \mem_d~136_q\ : std_logic;
SIGNAL \mem_d~72feeder_combout\ : std_logic;
SIGNAL \mem_d~2645_combout\ : std_logic;
SIGNAL \mem_d~72_q\ : std_logic;
SIGNAL \mem_d~2653_combout\ : std_logic;
SIGNAL \mem_d~56_q\ : std_logic;
SIGNAL \mem_d~2555_combout\ : std_logic;
SIGNAL \mem_d~2556_combout\ : std_logic;
SIGNAL \mem_d~2664_combout\ : std_logic;
SIGNAL \mem_d~264_q\ : std_logic;
SIGNAL \mem_d~200feeder_combout\ : std_logic;
SIGNAL \mem_d~2646_combout\ : std_logic;
SIGNAL \mem_d~200_q\ : std_logic;
SIGNAL \mem_d~2654_combout\ : std_logic;
SIGNAL \mem_d~184_q\ : std_logic;
SIGNAL \mem_d~2557_combout\ : std_logic;
SIGNAL \mem_d~2558_combout\ : std_logic;
SIGNAL \mem_d~2559_combout\ : std_logic;
SIGNAL \mem_d~2566_combout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \Mux39~6_combout\ : std_logic;
SIGNAL \Mux39~7_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \regs[15][5]~3_combout\ : std_logic;
SIGNAL \regs[15][7]~q\ : std_logic;
SIGNAL \regs[13][7]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \regs[13][5]~1_combout\ : std_logic;
SIGNAL \regs[13][7]~q\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \regs[13][5]~feeder_combout\ : std_logic;
SIGNAL \regs[13][5]~q\ : std_logic;
SIGNAL \regs[12][5]~2_combout\ : std_logic;
SIGNAL \regs[12][5]~q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \regs[0][5]~q\ : std_logic;
SIGNAL \regs[4][5]~feeder_combout\ : std_logic;
SIGNAL \regs[4][5]~q\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \regs[7][5]~q\ : std_logic;
SIGNAL \regs[2][5]~q\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \regs[9][2]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \regs[9][4]~9_combout\ : std_logic;
SIGNAL \regs[9][2]~q\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \regs[8][0]~10_combout\ : std_logic;
SIGNAL \regs[8][2]~q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \regs[14][2]~feeder_combout\ : std_logic;
SIGNAL \regs[14][2]~q\ : std_logic;
SIGNAL \regs[15][2]~q\ : std_logic;
SIGNAL \regs[10][2]~q\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \regs[3][2]~q\ : std_logic;
SIGNAL \regs[7][2]~q\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \regs[1][2]~feeder_combout\ : std_logic;
SIGNAL \regs[1][2]~q\ : std_logic;
SIGNAL \regs[5][2]~q\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \regs[14][1]~q\ : std_logic;
SIGNAL \regs[8][1]~q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \regs[5][1]~q\ : std_logic;
SIGNAL \regs[1][1]~q\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \regs[4][1]~feeder_combout\ : std_logic;
SIGNAL \regs[4][1]~q\ : std_logic;
SIGNAL \regs[6][1]~q\ : std_logic;
SIGNAL \regs[0][1]~feeder_combout\ : std_logic;
SIGNAL \regs[0][1]~q\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \regs[3][0]~q\ : std_logic;
SIGNAL \regs[1][0]~q\ : std_logic;
SIGNAL \regs[0][0]~feeder_combout\ : std_logic;
SIGNAL \regs[0][0]~q\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \Mux37~5_combout\ : std_logic;
SIGNAL \Mux37~6_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \regs[9][0]~q\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \regs[13][0]~q\ : std_logic;
SIGNAL \regs[12][0]~q\ : std_logic;
SIGNAL \regs[14][0]~q\ : std_logic;
SIGNAL \Mux37~7_combout\ : std_logic;
SIGNAL \Mux37~8_combout\ : std_logic;
SIGNAL \Mux37~9_combout\ : std_logic;
SIGNAL \mem_d~217feeder_combout\ : std_logic;
SIGNAL \mem_d~2640_combout\ : std_logic;
SIGNAL \mem_d~217_q\ : std_logic;
SIGNAL \mem_d~2637_combout\ : std_logic;
SIGNAL \mem_d~209_q\ : std_logic;
SIGNAL \mem_d~2639_combout\ : std_logic;
SIGNAL \mem_d~81_q\ : std_logic;
SIGNAL \mem_d~2231_combout\ : std_logic;
SIGNAL \mem_d~2232_combout\ : std_logic;
SIGNAL \mem_d~249feeder_combout\ : std_logic;
SIGNAL \mem_d~2584_combout\ : std_logic;
SIGNAL \mem_d~2644_combout\ : std_logic;
SIGNAL \mem_d~249_q\ : std_logic;
SIGNAL \mem_d~2641_combout\ : std_logic;
SIGNAL \mem_d~241_q\ : std_logic;
SIGNAL \mem_d~2643_combout\ : std_logic;
SIGNAL \mem_d~113_q\ : std_logic;
SIGNAL \mem_d~2233_combout\ : std_logic;
SIGNAL \mem_d~2234_combout\ : std_logic;
SIGNAL \mem_d~2235_combout\ : std_logic;
SIGNAL \mem_d~257_q\ : std_logic;
SIGNAL \mem_d~225feeder_combout\ : std_logic;
SIGNAL \mem_d~225_q\ : std_logic;
SIGNAL \mem_d~2250_combout\ : std_logic;
SIGNAL \mem_d~105_q\ : std_logic;
SIGNAL \mem_d~2251_combout\ : std_logic;
SIGNAL \mem_d~2668_combout\ : std_logic;
SIGNAL \mem_d~265_q\ : std_logic;
SIGNAL \mem_d~233feeder_combout\ : std_logic;
SIGNAL \mem_d~233_q\ : std_logic;
SIGNAL \mem_d~2252_combout\ : std_logic;
SIGNAL \mem_d~2253_combout\ : std_logic;
SIGNAL \mem_d~177_q\ : std_logic;
SIGNAL \mem_d~49feeder_combout\ : std_logic;
SIGNAL \mem_d~49_q\ : std_logic;
SIGNAL \mem_d~2242_combout\ : std_logic;
SIGNAL \mem_d~57feeder_combout\ : std_logic;
SIGNAL \mem_d~2659_combout\ : std_logic;
SIGNAL \mem_d~57_q\ : std_logic;
SIGNAL \mem_d~2660_combout\ : std_logic;
SIGNAL \mem_d~185_q\ : std_logic;
SIGNAL \mem_d~2246_combout\ : std_logic;
SIGNAL \mem_d~17feeder_combout\ : std_logic;
SIGNAL \mem_d~17_q\ : std_logic;
SIGNAL \mem_d~145_q\ : std_logic;
SIGNAL \mem_d~2244_combout\ : std_logic;
SIGNAL \mem_d~153_q\ : std_logic;
SIGNAL \mem_d~2243_combout\ : std_logic;
SIGNAL \mem_d~2245_combout\ : std_logic;
SIGNAL \mem_d~2247_combout\ : std_logic;
SIGNAL \mem_d~2652_combout\ : std_logic;
SIGNAL \mem_d~201_q\ : std_logic;
SIGNAL \mem_d~2240_combout\ : std_logic;
SIGNAL \mem_d~193_q\ : std_logic;
SIGNAL \mem_d~65feeder_combout\ : std_logic;
SIGNAL \mem_d~65_q\ : std_logic;
SIGNAL \mem_d~2236_combout\ : std_logic;
SIGNAL \mem_d~161_q\ : std_logic;
SIGNAL \mem_d~2238_combout\ : std_logic;
SIGNAL \mem_d~2648_combout\ : std_logic;
SIGNAL \mem_d~169_q\ : std_logic;
SIGNAL \mem_d~2237_combout\ : std_logic;
SIGNAL \mem_d~2239_combout\ : std_logic;
SIGNAL \mem_d~2241_combout\ : std_logic;
SIGNAL \mem_d~2248_combout\ : std_logic;
SIGNAL \mem_d~2254_combout\ : std_logic;
SIGNAL \mem_d~1713_q\ : std_logic;
SIGNAL \mem_d~1585feeder_combout\ : std_logic;
SIGNAL \mem_d~2623_combout\ : std_logic;
SIGNAL \mem_d~1585_q\ : std_logic;
SIGNAL \mem_d~2219_combout\ : std_logic;
SIGNAL \mem_d~1681_q\ : std_logic;
SIGNAL \mem_d~2220_combout\ : std_logic;
SIGNAL \mem_d~2221_combout\ : std_logic;
SIGNAL \mem_d~1721_q\ : std_logic;
SIGNAL \mem_d~1593feeder_combout\ : std_logic;
SIGNAL \mem_d~1593_q\ : std_logic;
SIGNAL \mem_d~2222_combout\ : std_logic;
SIGNAL \mem_d~2622_combout\ : std_logic;
SIGNAL \mem_d~1689_q\ : std_logic;
SIGNAL \mem_d~2218_combout\ : std_logic;
SIGNAL \mem_d~2223_combout\ : std_logic;
SIGNAL \mem_d~1577feeder_combout\ : std_logic;
SIGNAL \mem_d~1577_q\ : std_logic;
SIGNAL \mem_d~1569_q\ : std_logic;
SIGNAL \mem_d~2213_combout\ : std_logic;
SIGNAL \mem_d~1609_q\ : std_logic;
SIGNAL \mem_d~2214_combout\ : std_logic;
SIGNAL \mem_d~1697_q\ : std_logic;
SIGNAL \mem_d~2215_combout\ : std_logic;
SIGNAL \mem_d~1737_q\ : std_logic;
SIGNAL \mem_d~1705feeder_combout\ : std_logic;
SIGNAL \mem_d~1705_q\ : std_logic;
SIGNAL \mem_d~2216_combout\ : std_logic;
SIGNAL \mem_d~2217_combout\ : std_logic;
SIGNAL \mem_d~2224_combout\ : std_logic;
SIGNAL \mem_d~2612_combout\ : std_logic;
SIGNAL \mem_d~1785_q\ : std_logic;
SIGNAL \mem_d~2211_combout\ : std_logic;
SIGNAL \mem_d~1753feeder_combout\ : std_logic;
SIGNAL \mem_d~1753_q\ : std_logic;
SIGNAL \mem_d~2208_combout\ : std_logic;
SIGNAL \mem_d~2210_combout\ : std_logic;
SIGNAL \mem_d~2606_combout\ : std_logic;
SIGNAL \mem_d~1777_q\ : std_logic;
SIGNAL \mem_d~1649feeder_combout\ : std_logic;
SIGNAL \mem_d~1649_q\ : std_logic;
SIGNAL \mem_d~2207_combout\ : std_logic;
SIGNAL \mem_d~2212_combout\ : std_logic;
SIGNAL \mem_d~2230_combout\ : std_logic;
SIGNAL \mem_d~2598_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \regs[11][3]~feeder_combout\ : std_logic;
SIGNAL \regs[11][3]~q\ : std_logic;
SIGNAL \regs[10][3]~q\ : std_logic;
SIGNAL \regs[8][3]~q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \regs[13][3]~feeder_combout\ : std_logic;
SIGNAL \regs[13][3]~q\ : std_logic;
SIGNAL \regs[15][3]~q\ : std_logic;
SIGNAL \regs[12][3]~q\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \regs[2][3]~q\ : std_logic;
SIGNAL \regs[0][3]~q\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \regs[7][3]~q\ : std_logic;
SIGNAL \regs[4][3]~feeder_combout\ : std_logic;
SIGNAL \regs[4][3]~q\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~9_combout\ : std_logic;
SIGNAL \regs[15][4]~q\ : std_logic;
SIGNAL \regs[9][4]~feeder_combout\ : std_logic;
SIGNAL \regs[9][4]~q\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux18~8_combout\ : std_logic;
SIGNAL \regs[12][4]~q\ : std_logic;
SIGNAL \regs[8][4]~feeder_combout\ : std_logic;
SIGNAL \regs[8][4]~q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \regs[0][4]~q\ : std_logic;
SIGNAL \regs[2][4]~feeder_combout\ : std_logic;
SIGNAL \regs[2][4]~q\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux18~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mux46~5_combout\ : std_logic;
SIGNAL \Mux46~6_combout\ : std_logic;
SIGNAL \regs[10][0]~q\ : std_logic;
SIGNAL \regs[8][0]~feeder_combout\ : std_logic;
SIGNAL \regs[8][0]~q\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \regs[2][0]~feeder_combout\ : std_logic;
SIGNAL \regs[2][0]~q\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \regs[5][0]~q\ : std_logic;
SIGNAL \regs[7][0]~feeder_combout\ : std_logic;
SIGNAL \regs[7][0]~q\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mux39~8_combout\ : std_logic;
SIGNAL \Mux39~9_combout\ : std_logic;
SIGNAL \regs[3][7]~q\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \regs[14][7]~feeder_combout\ : std_logic;
SIGNAL \regs[14][7]~q\ : std_logic;
SIGNAL \regs[12][7]~q\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux43~5_combout\ : std_logic;
SIGNAL \Mux43~6_combout\ : std_logic;
SIGNAL \regs[14][3]~feeder_combout\ : std_logic;
SIGNAL \regs[14][3]~q\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \regs[3][3]~q\ : std_logic;
SIGNAL \regs[1][3]~q\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \regs[11][2]~q\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \regs[0][2]~q\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \Mux35~5_combout\ : std_logic;
SIGNAL \regs[6][2]~q\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux35~6_combout\ : std_logic;
SIGNAL \Mux35~9_combout\ : std_logic;
SIGNAL \mem_d~1659feeder_combout\ : std_logic;
SIGNAL \mem_d~2611_combout\ : std_logic;
SIGNAL \mem_d~1659_q\ : std_logic;
SIGNAL \mem_d~1787_q\ : std_logic;
SIGNAL \mem_d~2321_combout\ : std_logic;
SIGNAL \mem_d~2636_combout\ : std_logic;
SIGNAL \mem_d~1803_q\ : std_logic;
SIGNAL \mem_d~1675feeder_combout\ : std_logic;
SIGNAL \mem_d~1675_q\ : std_logic;
SIGNAL \mem_d~2325_combout\ : std_logic;
SIGNAL \mem_d~2326_combout\ : std_logic;
SIGNAL \mem_d~1723feeder_combout\ : std_logic;
SIGNAL \mem_d~1723_q\ : std_logic;
SIGNAL \mem_d~1739_q\ : std_logic;
SIGNAL \mem_d~1595_q\ : std_logic;
SIGNAL \mem_d~1611feeder_combout\ : std_logic;
SIGNAL \mem_d~1611_q\ : std_logic;
SIGNAL \mem_d~2311_combout\ : std_logic;
SIGNAL \mem_d~2312_combout\ : std_logic;
SIGNAL \mem_d~1715feeder_combout\ : std_logic;
SIGNAL \mem_d~1715_q\ : std_logic;
SIGNAL \mem_d~2618_combout\ : std_logic;
SIGNAL \mem_d~1731_q\ : std_logic;
SIGNAL \mem_d~1603_q\ : std_logic;
SIGNAL \mem_d~1587_q\ : std_logic;
SIGNAL \mem_d~2309_combout\ : std_logic;
SIGNAL \mem_d~2310_combout\ : std_logic;
SIGNAL \mem_d~2313_combout\ : std_logic;
SIGNAL \mem_d~1683feeder_combout\ : std_logic;
SIGNAL \mem_d~1683_q\ : std_logic;
SIGNAL \mem_d~2314_combout\ : std_logic;
SIGNAL \mem_d~1691feeder_combout\ : std_logic;
SIGNAL \mem_d~1691_q\ : std_logic;
SIGNAL \mem_d~1707_q\ : std_logic;
SIGNAL \mem_d~2318_combout\ : std_logic;
SIGNAL \mem_d~2319_combout\ : std_logic;
SIGNAL \mem_d~2320_combout\ : std_logic;
SIGNAL \mem_d~1771feeder_combout\ : std_logic;
SIGNAL \mem_d~1771_q\ : std_logic;
SIGNAL \mem_d~1763_q\ : std_logic;
SIGNAL \mem_d~1755feeder_combout\ : std_logic;
SIGNAL \mem_d~1755_q\ : std_logic;
SIGNAL \mem_d~1747_q\ : std_logic;
SIGNAL \mem_d~2306_combout\ : std_logic;
SIGNAL \mem_d~2307_combout\ : std_logic;
SIGNAL \mem_d~2629_combout\ : std_logic;
SIGNAL \mem_d~1643_q\ : std_logic;
SIGNAL \mem_d~1635feeder_combout\ : std_logic;
SIGNAL \mem_d~2631_combout\ : std_logic;
SIGNAL \mem_d~1635_q\ : std_logic;
SIGNAL \mem_d~2609_combout\ : std_logic;
SIGNAL \mem_d~1619_q\ : std_logic;
SIGNAL \mem_d~2304_combout\ : std_logic;
SIGNAL \mem_d~2305_combout\ : std_logic;
SIGNAL \mem_d~2308_combout\ : std_logic;
SIGNAL \mem_d~2327_combout\ : std_logic;
SIGNAL \mem_d~219feeder_combout\ : std_logic;
SIGNAL \mem_d~219_q\ : std_logic;
SIGNAL \mem_d~2638_combout\ : std_logic;
SIGNAL \mem_d~91_q\ : std_logic;
SIGNAL \mem_d~211feeder_combout\ : std_logic;
SIGNAL \mem_d~211_q\ : std_logic;
SIGNAL \mem_d~83feeder_combout\ : std_logic;
SIGNAL \mem_d~83_q\ : std_logic;
SIGNAL \mem_d~2328_combout\ : std_logic;
SIGNAL \mem_d~2329_combout\ : std_logic;
SIGNAL \mem_d~251feeder_combout\ : std_logic;
SIGNAL \mem_d~251_q\ : std_logic;
SIGNAL \mem_d~243_q\ : std_logic;
SIGNAL \mem_d~115_q\ : std_logic;
SIGNAL \mem_d~2330_combout\ : std_logic;
SIGNAL \mem_d~2331_combout\ : std_logic;
SIGNAL \mem_d~2332_combout\ : std_logic;
SIGNAL \mem_d~99_q\ : std_logic;
SIGNAL \mem_d~2345_combout\ : std_logic;
SIGNAL \mem_d~2666_combout\ : std_logic;
SIGNAL \mem_d~139_q\ : std_logic;
SIGNAL \mem_d~2346_combout\ : std_logic;
SIGNAL \mem_d~235feeder_combout\ : std_logic;
SIGNAL \mem_d~235_q\ : std_logic;
SIGNAL \mem_d~267_q\ : std_logic;
SIGNAL \mem_d~2348_combout\ : std_logic;
SIGNAL \mem_d~2349_combout\ : std_logic;
SIGNAL \mem_d~2651_combout\ : std_logic;
SIGNAL \mem_d~75_q\ : std_logic;
SIGNAL \mem_d~2334_combout\ : std_logic;
SIGNAL \mem_d~2336_combout\ : std_logic;
SIGNAL \mem_d~203_q\ : std_logic;
SIGNAL \mem_d~195feeder_combout\ : std_logic;
SIGNAL \mem_d~195_q\ : std_logic;
SIGNAL \mem_d~2337_combout\ : std_logic;
SIGNAL \mem_d~163feeder_combout\ : std_logic;
SIGNAL \mem_d~163_q\ : std_logic;
SIGNAL \mem_d~171_q\ : std_logic;
SIGNAL \mem_d~2333_combout\ : std_logic;
SIGNAL \mem_d~2338_combout\ : std_logic;
SIGNAL \mem_d~27feeder_combout\ : std_logic;
SIGNAL \mem_d~27_q\ : std_logic;
SIGNAL \mem_d~59_q\ : std_logic;
SIGNAL \mem_d~19_q\ : std_logic;
SIGNAL \mem_d~2339_combout\ : std_logic;
SIGNAL \mem_d~2340_combout\ : std_logic;
SIGNAL \mem_d~155feeder_combout\ : std_logic;
SIGNAL \mem_d~155_q\ : std_logic;
SIGNAL \mem_d~187_q\ : std_logic;
SIGNAL \mem_d~147_q\ : std_logic;
SIGNAL \mem_d~2341_combout\ : std_logic;
SIGNAL \mem_d~2342_combout\ : std_logic;
SIGNAL \mem_d~2343_combout\ : std_logic;
SIGNAL \mem_d~2344_combout\ : std_logic;
SIGNAL \mem_d~2350_combout\ : std_logic;
SIGNAL \mem_d~2600_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \Mux44~5_combout\ : std_logic;
SIGNAL \Mux44~6_combout\ : std_logic;
SIGNAL \regs[2][2]~q\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \regs[13][2]~feeder_combout\ : std_logic;
SIGNAL \regs[13][2]~q\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \regs[7][1]~feeder_combout\ : std_logic;
SIGNAL \regs[7][1]~q\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~6_combout\ : std_logic;
SIGNAL \regs[12][1]~q\ : std_logic;
SIGNAL \Mux36~7_combout\ : std_logic;
SIGNAL \regs[13][1]~feeder_combout\ : std_logic;
SIGNAL \regs[13][1]~q\ : std_logic;
SIGNAL \regs[15][1]~q\ : std_logic;
SIGNAL \Mux36~8_combout\ : std_logic;
SIGNAL \regs[11][1]~q\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~9_combout\ : std_logic;
SIGNAL \mem_d~1802_q\ : std_logic;
SIGNAL \mem_d~1674feeder_combout\ : std_logic;
SIGNAL \mem_d~1674_q\ : std_logic;
SIGNAL \mem_d~2276_combout\ : std_logic;
SIGNAL \mem_d~2277_combout\ : std_logic;
SIGNAL \mem_d~1770_q\ : std_logic;
SIGNAL \mem_d~1642feeder_combout\ : std_logic;
SIGNAL \mem_d~1642_q\ : std_logic;
SIGNAL \mem_d~2607_combout\ : std_logic;
SIGNAL \mem_d~1626_q\ : std_logic;
SIGNAL \mem_d~2274_combout\ : std_logic;
SIGNAL \mem_d~2275_combout\ : std_logic;
SIGNAL \mem_d~2278_combout\ : std_logic;
SIGNAL \mem_d~1722feeder_combout\ : std_logic;
SIGNAL \mem_d~1722_q\ : std_logic;
SIGNAL \mem_d~1738_q\ : std_logic;
SIGNAL \mem_d~1706feeder_combout\ : std_logic;
SIGNAL \mem_d~1706_q\ : std_logic;
SIGNAL \mem_d~1690_q\ : std_logic;
SIGNAL \mem_d~2265_combout\ : std_logic;
SIGNAL \mem_d~2266_combout\ : std_logic;
SIGNAL \mem_d~1714_q\ : std_logic;
SIGNAL \mem_d~1730feeder_combout\ : std_logic;
SIGNAL \mem_d~1730_q\ : std_logic;
SIGNAL \mem_d~2270_combout\ : std_logic;
SIGNAL \mem_d~1602_q\ : std_logic;
SIGNAL \mem_d~1570feeder_combout\ : std_logic;
SIGNAL \mem_d~1570_q\ : std_logic;
SIGNAL \mem_d~1554_q\ : std_logic;
SIGNAL \mem_d~2267_combout\ : std_logic;
SIGNAL \mem_d~2268_combout\ : std_logic;
SIGNAL \mem_d~2271_combout\ : std_logic;
SIGNAL \mem_d~2272_combout\ : std_logic;
SIGNAL \mem_d~2273_combout\ : std_logic;
SIGNAL \mem_d~1778_q\ : std_logic;
SIGNAL \mem_d~1762feeder_combout\ : std_logic;
SIGNAL \mem_d~1762_q\ : std_logic;
SIGNAL \mem_d~1746_q\ : std_logic;
SIGNAL \mem_d~2259_combout\ : std_logic;
SIGNAL \mem_d~2260_combout\ : std_logic;
SIGNAL \mem_d~2630_combout\ : std_logic;
SIGNAL \mem_d~1666_q\ : std_logic;
SIGNAL \mem_d~1618_q\ : std_logic;
SIGNAL \mem_d~2256_combout\ : std_logic;
SIGNAL \mem_d~2257_combout\ : std_logic;
SIGNAL \mem_d~2258_combout\ : std_logic;
SIGNAL \mem_d~2261_combout\ : std_logic;
SIGNAL \mem_d~2279_combout\ : std_logic;
SIGNAL \mem_d~2599_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \Mux45~5_combout\ : std_logic;
SIGNAL \Mux45~6_combout\ : std_logic;
SIGNAL \regs[2][1]~q\ : std_logic;
SIGNAL \regs[3][1]~q\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \regs[11][4]~q\ : std_logic;
SIGNAL \regs[10][4]~q\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \regs[13][4]~feeder_combout\ : std_logic;
SIGNAL \regs[13][4]~q\ : std_logic;
SIGNAL \Mux33~8_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \Mux33~6_combout\ : std_logic;
SIGNAL \Mux33~9_combout\ : std_logic;
SIGNAL \mem_d~125feeder_combout\ : std_logic;
SIGNAL \mem_d~2642_combout\ : std_logic;
SIGNAL \mem_d~125_q\ : std_logic;
SIGNAL \mem_d~253_q\ : std_logic;
SIGNAL \mem_d~189feeder_combout\ : std_logic;
SIGNAL \mem_d~189_q\ : std_logic;
SIGNAL \mem_d~61_q\ : std_logic;
SIGNAL \mem_d~2440_combout\ : std_logic;
SIGNAL \mem_d~2441_combout\ : std_logic;
SIGNAL \mem_d~77_q\ : std_logic;
SIGNAL \mem_d~205feeder_combout\ : std_logic;
SIGNAL \mem_d~205_q\ : std_logic;
SIGNAL \mem_d~2442_combout\ : std_logic;
SIGNAL \mem_d~269_q\ : std_logic;
SIGNAL \mem_d~2443_combout\ : std_logic;
SIGNAL \mem_d~2444_combout\ : std_logic;
SIGNAL \mem_d~221feeder_combout\ : std_logic;
SIGNAL \mem_d~221_q\ : std_logic;
SIGNAL \mem_d~237_q\ : std_logic;
SIGNAL \mem_d~2438_combout\ : std_logic;
SIGNAL \mem_d~109_q\ : std_logic;
SIGNAL \mem_d~29_q\ : std_logic;
SIGNAL \mem_d~2435_combout\ : std_logic;
SIGNAL \mem_d~2436_combout\ : std_logic;
SIGNAL \mem_d~2439_combout\ : std_logic;
SIGNAL \mem_d~245feeder_combout\ : std_logic;
SIGNAL \mem_d~245_q\ : std_logic;
SIGNAL \mem_d~261_q\ : std_logic;
SIGNAL \mem_d~2427_combout\ : std_logic;
SIGNAL \mem_d~117feeder_combout\ : std_logic;
SIGNAL \mem_d~117_q\ : std_logic;
SIGNAL \mem_d~133_q\ : std_logic;
SIGNAL \mem_d~2425_combout\ : std_logic;
SIGNAL \mem_d~213_q\ : std_logic;
SIGNAL \mem_d~149_q\ : std_logic;
SIGNAL \mem_d~2430_combout\ : std_logic;
SIGNAL \mem_d~2431_combout\ : std_logic;
SIGNAL \mem_d~101_q\ : std_logic;
SIGNAL \mem_d~37feeder_combout\ : std_logic;
SIGNAL \mem_d~37_q\ : std_logic;
SIGNAL \mem_d~21_q\ : std_logic;
SIGNAL \mem_d~2428_combout\ : std_logic;
SIGNAL \mem_d~2429_combout\ : std_logic;
SIGNAL \mem_d~2432_combout\ : std_logic;
SIGNAL \mem_d~2433_combout\ : std_logic;
SIGNAL \mem_d~2434_combout\ : std_logic;
SIGNAL \mem_d~2445_combout\ : std_logic;
SIGNAL \mem_d~2602_combout\ : std_logic;
SIGNAL \mem_d~1789_q\ : std_logic;
SIGNAL \mem_d~2404_combout\ : std_logic;
SIGNAL \mem_d~1781_q\ : std_logic;
SIGNAL \mem_d~1653feeder_combout\ : std_logic;
SIGNAL \mem_d~1653_q\ : std_logic;
SIGNAL \mem_d~2401_combout\ : std_logic;
SIGNAL \mem_d~2403_combout\ : std_logic;
SIGNAL \mem_d~2405_combout\ : std_logic;
SIGNAL \mem_d~1765_q\ : std_logic;
SIGNAL \mem_d~2420_combout\ : std_logic;
SIGNAL \mem_d~1805_q\ : std_logic;
SIGNAL \mem_d~1773feeder_combout\ : std_logic;
SIGNAL \mem_d~1773_q\ : std_logic;
SIGNAL \mem_d~2421_combout\ : std_logic;
SIGNAL \mem_d~1677_q\ : std_logic;
SIGNAL \mem_d~1637_q\ : std_logic;
SIGNAL \mem_d~1645feeder_combout\ : std_logic;
SIGNAL \mem_d~1645_q\ : std_logic;
SIGNAL \mem_d~2417_combout\ : std_logic;
SIGNAL \mem_d~2418_combout\ : std_logic;
SIGNAL \mem_d~2419_combout\ : std_logic;
SIGNAL \mem_d~2422_combout\ : std_logic;
SIGNAL \mem_d~1589feeder_combout\ : std_logic;
SIGNAL \mem_d~1589_q\ : std_logic;
SIGNAL \mem_d~1597_q\ : std_logic;
SIGNAL \mem_d~1557_q\ : std_logic;
SIGNAL \mem_d~2411_combout\ : std_logic;
SIGNAL \mem_d~2412_combout\ : std_logic;
SIGNAL \mem_d~1717feeder_combout\ : std_logic;
SIGNAL \mem_d~1717_q\ : std_logic;
SIGNAL \mem_d~1725_q\ : std_logic;
SIGNAL \mem_d~1685_q\ : std_logic;
SIGNAL \mem_d~2413_combout\ : std_logic;
SIGNAL \mem_d~2414_combout\ : std_logic;
SIGNAL \mem_d~2415_combout\ : std_logic;
SIGNAL \mem_d~1733feeder_combout\ : std_logic;
SIGNAL \mem_d~1733_q\ : std_logic;
SIGNAL \mem_d~1741_q\ : std_logic;
SIGNAL \mem_d~1709feeder_combout\ : std_logic;
SIGNAL \mem_d~1709_q\ : std_logic;
SIGNAL \mem_d~1701_q\ : std_logic;
SIGNAL \mem_d~2408_combout\ : std_logic;
SIGNAL \mem_d~2409_combout\ : std_logic;
SIGNAL \mem_d~1581feeder_combout\ : std_logic;
SIGNAL \mem_d~1581_q\ : std_logic;
SIGNAL \mem_d~1613_q\ : std_logic;
SIGNAL \mem_d~1605feeder_combout\ : std_logic;
SIGNAL \mem_d~1605_q\ : std_logic;
SIGNAL \mem_d~1573_q\ : std_logic;
SIGNAL \mem_d~2406_combout\ : std_logic;
SIGNAL \mem_d~2407_combout\ : std_logic;
SIGNAL \mem_d~2410_combout\ : std_logic;
SIGNAL \mem_d~2416_combout\ : std_logic;
SIGNAL \mem_d~2423_combout\ : std_logic;
SIGNAL \mem_d~2603_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mux42~5_combout\ : std_logic;
SIGNAL \Mux42~6_combout\ : std_logic;
SIGNAL \regs[14][4]~feeder_combout\ : std_logic;
SIGNAL \regs[14][4]~q\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \regs[3][4]~feeder_combout\ : std_logic;
SIGNAL \regs[3][4]~q\ : std_logic;
SIGNAL \regs[1][4]~q\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mux41~6_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \regs[6][5]~feeder_combout\ : std_logic;
SIGNAL \regs[6][5]~q\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \regs[1][5]~feeder_combout\ : std_logic;
SIGNAL \regs[1][5]~q\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \Mux32~6_combout\ : std_logic;
SIGNAL \regs[9][5]~feeder_combout\ : std_logic;
SIGNAL \regs[9][5]~q\ : std_logic;
SIGNAL \regs[8][5]~q\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~9_combout\ : std_logic;
SIGNAL \mem_d~1806_q\ : std_logic;
SIGNAL \mem_d~2466_combout\ : std_logic;
SIGNAL \mem_d~1678_q\ : std_logic;
SIGNAL \mem_d~2463_combout\ : std_logic;
SIGNAL \mem_d~2465_combout\ : std_logic;
SIGNAL \mem_d~1766feeder_combout\ : std_logic;
SIGNAL \mem_d~1766_q\ : std_logic;
SIGNAL \mem_d~1774_q\ : std_logic;
SIGNAL \mem_d~2462_combout\ : std_logic;
SIGNAL \mem_d~2467_combout\ : std_logic;
SIGNAL \mem_d~1710feeder_combout\ : std_logic;
SIGNAL \mem_d~1710_q\ : std_logic;
SIGNAL \mem_d~1742_q\ : std_logic;
SIGNAL \mem_d~1702_q\ : std_logic;
SIGNAL \mem_d~2453_combout\ : std_logic;
SIGNAL \mem_d~2454_combout\ : std_logic;
SIGNAL \mem_d~1606feeder_combout\ : std_logic;
SIGNAL \mem_d~1606_q\ : std_logic;
SIGNAL \mem_d~1614_q\ : std_logic;
SIGNAL \mem_d~1582feeder_combout\ : std_logic;
SIGNAL \mem_d~1582_q\ : std_logic;
SIGNAL \mem_d~1574_q\ : std_logic;
SIGNAL \mem_d~2451_combout\ : std_logic;
SIGNAL \mem_d~2452_combout\ : std_logic;
SIGNAL \mem_d~2460_combout\ : std_logic;
SIGNAL \mem_d~2461_combout\ : std_logic;
SIGNAL \mem_d~2468_combout\ : std_logic;
SIGNAL \mem_d~142_q\ : std_logic;
SIGNAL \mem_d~78feeder_combout\ : std_logic;
SIGNAL \mem_d~78_q\ : std_logic;
SIGNAL \mem_d~2486_combout\ : std_logic;
SIGNAL \mem_d~62feeder_combout\ : std_logic;
SIGNAL \mem_d~62_q\ : std_logic;
SIGNAL \mem_d~126_q\ : std_logic;
SIGNAL \mem_d~2488_combout\ : std_logic;
SIGNAL \mem_d~190feeder_combout\ : std_logic;
SIGNAL \mem_d~190_q\ : std_logic;
SIGNAL \mem_d~254_q\ : std_logic;
SIGNAL \mem_d~2487_combout\ : std_logic;
SIGNAL \mem_d~2489_combout\ : std_logic;
SIGNAL \mem_d~2491_combout\ : std_logic;
SIGNAL \mem_d~246feeder_combout\ : std_logic;
SIGNAL \mem_d~246_q\ : std_logic;
SIGNAL \mem_d~262_q\ : std_logic;
SIGNAL \mem_d~182_q\ : std_logic;
SIGNAL \mem_d~2477_combout\ : std_logic;
SIGNAL \mem_d~2478_combout\ : std_logic;
SIGNAL \mem_d~2479_combout\ : std_logic;
SIGNAL \mem_d~86feeder_combout\ : std_logic;
SIGNAL \mem_d~86_q\ : std_logic;
SIGNAL \mem_d~102_q\ : std_logic;
SIGNAL \mem_d~38feeder_combout\ : std_logic;
SIGNAL \mem_d~38_q\ : std_logic;
SIGNAL \mem_d~22_q\ : std_logic;
SIGNAL \mem_d~2480_combout\ : std_logic;
SIGNAL \mem_d~2481_combout\ : std_logic;
SIGNAL \mem_d~230_q\ : std_logic;
SIGNAL \mem_d~166feeder_combout\ : std_logic;
SIGNAL \mem_d~166_q\ : std_logic;
SIGNAL \mem_d~150_q\ : std_logic;
SIGNAL \mem_d~2482_combout\ : std_logic;
SIGNAL \mem_d~2483_combout\ : std_logic;
SIGNAL \mem_d~2484_combout\ : std_logic;
SIGNAL \mem_d~2485_combout\ : std_logic;
SIGNAL \mem_d~110feeder_combout\ : std_logic;
SIGNAL \mem_d~110_q\ : std_logic;
SIGNAL \mem_d~94_q\ : std_logic;
SIGNAL \mem_d~46feeder_combout\ : std_logic;
SIGNAL \mem_d~46_q\ : std_logic;
SIGNAL \mem_d~30_q\ : std_logic;
SIGNAL \mem_d~2469_combout\ : std_logic;
SIGNAL \mem_d~2470_combout\ : std_logic;
SIGNAL \mem_d~2473_combout\ : std_logic;
SIGNAL \mem_d~2492_combout\ : std_logic;
SIGNAL \mem_d~2604_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Mux41~5_combout\ : std_logic;
SIGNAL \regs[3][5]~feeder_combout\ : std_logic;
SIGNAL \regs[3][5]~q\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \regs[15][5]~q\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \regs[0][6]~q\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \regs[6][6]~q\ : std_logic;
SIGNAL \regs[5][6]~q\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \regs[15][6]~q\ : std_logic;
SIGNAL \regs[12][6]~feeder_combout\ : std_logic;
SIGNAL \regs[12][6]~q\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \regs[9][6]~feeder_combout\ : std_logic;
SIGNAL \regs[9][6]~q\ : std_logic;
SIGNAL \regs[8][6]~q\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \mem_d~159_q\ : std_logic;
SIGNAL \mem_d~2518_combout\ : std_logic;
SIGNAL \mem_d~223_q\ : std_logic;
SIGNAL \mem_d~2519_combout\ : std_logic;
SIGNAL \mem_d~111feeder_combout\ : std_logic;
SIGNAL \mem_d~111_q\ : std_logic;
SIGNAL \mem_d~95_q\ : std_logic;
SIGNAL \mem_d~31_q\ : std_logic;
SIGNAL \mem_d~2516_combout\ : std_logic;
SIGNAL \mem_d~2517_combout\ : std_logic;
SIGNAL \mem_d~2520_combout\ : std_logic;
SIGNAL \mem_d~2523_combout\ : std_logic;
SIGNAL \mem_d~207feeder_combout\ : std_logic;
SIGNAL \mem_d~207_q\ : std_logic;
SIGNAL \mem_d~79_q\ : std_logic;
SIGNAL \mem_d~2524_combout\ : std_logic;
SIGNAL \mem_d~271_q\ : std_logic;
SIGNAL \mem_d~2525_combout\ : std_logic;
SIGNAL \mem_d~2526_combout\ : std_logic;
SIGNAL \mem_d~247feeder_combout\ : std_logic;
SIGNAL \mem_d~247_q\ : std_logic;
SIGNAL \mem_d~263_q\ : std_logic;
SIGNAL \mem_d~199feeder_combout\ : std_logic;
SIGNAL \mem_d~199_q\ : std_logic;
SIGNAL \mem_d~183_q\ : std_logic;
SIGNAL \mem_d~2529_combout\ : std_logic;
SIGNAL \mem_d~2530_combout\ : std_logic;
SIGNAL \mem_d~103_q\ : std_logic;
SIGNAL \mem_d~39feeder_combout\ : std_logic;
SIGNAL \mem_d~39_q\ : std_logic;
SIGNAL \mem_d~23_q\ : std_logic;
SIGNAL \mem_d~2531_combout\ : std_logic;
SIGNAL \mem_d~2532_combout\ : std_logic;
SIGNAL \mem_d~215_q\ : std_logic;
SIGNAL \mem_d~167feeder_combout\ : std_logic;
SIGNAL \mem_d~167_q\ : std_logic;
SIGNAL \mem_d~151_q\ : std_logic;
SIGNAL \mem_d~2533_combout\ : std_logic;
SIGNAL \mem_d~2534_combout\ : std_logic;
SIGNAL \Mux40~5_combout\ : std_logic;
SIGNAL \Mux40~6_combout\ : std_logic;
SIGNAL \Mux40~7_combout\ : std_logic;
SIGNAL \Mux40~8_combout\ : std_logic;
SIGNAL \mem_d~1711feeder_combout\ : std_logic;
SIGNAL \mem_d~1711_q\ : std_logic;
SIGNAL \mem_d~1743_q\ : std_logic;
SIGNAL \mem_d~1703_q\ : std_logic;
SIGNAL \mem_d~2501_combout\ : std_logic;
SIGNAL \mem_d~2502_combout\ : std_logic;
SIGNAL \mem_d~1583feeder_combout\ : std_logic;
SIGNAL \mem_d~1583_q\ : std_logic;
SIGNAL \mem_d~1575_q\ : std_logic;
SIGNAL \mem_d~2499_combout\ : std_logic;
SIGNAL \mem_d~1615_q\ : std_logic;
SIGNAL \mem_d~2500_combout\ : std_logic;
SIGNAL \mem_d~2503_combout\ : std_logic;
SIGNAL \mem_d~1695feeder_combout\ : std_logic;
SIGNAL \mem_d~1695_q\ : std_logic;
SIGNAL \mem_d~1727_q\ : std_logic;
SIGNAL \mem_d~1687_q\ : std_logic;
SIGNAL \mem_d~2506_combout\ : std_logic;
SIGNAL \mem_d~2507_combout\ : std_logic;
SIGNAL \mem_d~1591feeder_combout\ : std_logic;
SIGNAL \mem_d~1591_q\ : std_logic;
SIGNAL \mem_d~1599_q\ : std_logic;
SIGNAL \mem_d~1559_q\ : std_logic;
SIGNAL \mem_d~2504_combout\ : std_logic;
SIGNAL \mem_d~2505_combout\ : std_logic;
SIGNAL \mem_d~2508_combout\ : std_logic;
SIGNAL \mem_d~2509_combout\ : std_logic;
SIGNAL \mem_d~1655feeder_combout\ : std_logic;
SIGNAL \mem_d~1655_q\ : std_logic;
SIGNAL \mem_d~1783_q\ : std_logic;
SIGNAL \mem_d~2493_combout\ : std_logic;
SIGNAL \mem_d~1631feeder_combout\ : std_logic;
SIGNAL \mem_d~1631_q\ : std_logic;
SIGNAL \mem_d~1759_q\ : std_logic;
SIGNAL \mem_d~2494_combout\ : std_logic;
SIGNAL \mem_d~1623feeder_combout\ : std_logic;
SIGNAL \mem_d~1623_q\ : std_logic;
SIGNAL \mem_d~1751_q\ : std_logic;
SIGNAL \mem_d~2495_combout\ : std_logic;
SIGNAL \mem_d~2496_combout\ : std_logic;
SIGNAL \mem_d~2498_combout\ : std_logic;
SIGNAL \mem_d~2515_combout\ : std_logic;
SIGNAL \Mux40~11_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mux40~9_combout\ : std_logic;
SIGNAL \Mux40~10_combout\ : std_logic;
SIGNAL \regs[13][6]~q\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \regs[11][6]~feeder_combout\ : std_logic;
SIGNAL \regs[11][6]~q\ : std_logic;
SIGNAL \regs[10][6]~q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \regs[7][6]~q\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \PC~17_combout\ : std_logic;
SIGNAL \Add4~16\ : std_logic;
SIGNAL \Add4~17_combout\ : std_logic;
SIGNAL \PC~18_combout\ : std_logic;
SIGNAL \Mux168~0_combout\ : std_logic;
SIGNAL \Mux168~1_combout\ : std_logic;
SIGNAL \PC[7]~12_combout\ : std_logic;
SIGNAL \Add4~13_combout\ : std_logic;
SIGNAL \PC~16_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \desvio~0_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~19_combout\ : std_logic;
SIGNAL \PC~13_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add4~21_combout\ : std_logic;
SIGNAL \PC~19_combout\ : std_logic;
SIGNAL \Mux167~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \regs[15][0]~q\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
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

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\Mux3~6_combout\ & \Mux4~7_combout\ & \Mux5~6_combout\ & \Mux6~6_combout\ & \Mux7~6_combout\ & \Mux8~6_combout\ & \Mux9~6_combout\ & \Mux10~6_combout\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\Mux15~9_combout\ & \Mux16~9_combout\ & \Mux17~9_combout\ & \Mux18~9_combout\ & \Mux19~9_combout\ & \Mux20~9_combout\ & \Mux21~9_combout\ & \Mux22~9_combout\ & gnd);

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

-- Location: LCCOMB_X23_Y19_N10
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Mux10~6_combout\ & ((GND) # (!\Mux14~1_combout\))) # (!\Mux10~6_combout\ & (\Mux14~1_combout\ $ (GND)))
-- \Add2~1\ = CARRY((\Mux10~6_combout\) # (!\Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux14~1_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X22_Y19_N0
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Mux14~1_combout\ & (\Mux10~6_combout\ $ (VCC))) # (!\Mux14~1_combout\ & (\Mux10~6_combout\ & VCC))
-- \Add3~1\ = CARRY((\Mux14~1_combout\ & \Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux10~6_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X19_Y18_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Mux22~9_combout\ & (\Mux10~6_combout\ $ (VCC))) # (!\Mux22~9_combout\ & ((\Mux10~6_combout\) # (GND)))
-- \Add1~1\ = CARRY((\Mux10~6_combout\) # (!\Mux22~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~9_combout\,
	datab => \Mux10~6_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X19_Y17_N24
\Add4~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~23_combout\ = (PC(5) & (!\Add4~22\)) # (!PC(5) & ((\Add4~22\) # (GND)))
-- \Add4~24\ = CARRY((!\Add4~22\) # (!PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(5),
	datad => VCC,
	cin => \Add4~22\,
	combout => \Add4~23_combout\,
	cout => \Add4~24\);

-- Location: LCCOMB_X19_Y17_N26
\Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~25_combout\ = (PC(6) & (\Add4~24\ $ (GND))) # (!PC(6) & (!\Add4~24\ & VCC))
-- \Add4~26\ = CARRY((PC(6) & !\Add4~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(6),
	datad => VCC,
	cin => \Add4~24\,
	combout => \Add4~25_combout\,
	cout => \Add4~26\);

-- Location: LCCOMB_X19_Y17_N28
\Add4~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~27_combout\ = PC(7) $ (\Add4~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(7),
	cin => \Add4~26\,
	combout => \Add4~27_combout\);

-- Location: LCCOMB_X19_Y18_N4
\Add1~4\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y16_N2
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

-- Location: LCCOMB_X19_Y18_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Mux19~9_combout\ & ((\Mux7~6_combout\ & (!\Add1~5\)) # (!\Mux7~6_combout\ & ((\Add1~5\) # (GND))))) # (!\Mux19~9_combout\ & ((\Mux7~6_combout\ & (\Add1~5\ & VCC)) # (!\Mux7~6_combout\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\Mux19~9_combout\ & ((!\Add1~5\) # (!\Mux7~6_combout\))) # (!\Mux19~9_combout\ & (!\Mux7~6_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~9_combout\,
	datab => \Mux7~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X23_Y16_N4
\Mult1|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~4_combout\ = ((\Mult1|auto_generated|le4a\(2) $ (\Mult1|auto_generated|le3a\(4) $ (!\Mult1|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|auto_generated|op_1~5\ = CARRY((\Mult1|auto_generated|le4a\(2) & ((\Mult1|auto_generated|le3a\(4)) # (!\Mult1|auto_generated|op_1~3\))) # (!\Mult1|auto_generated|le4a\(2) & (\Mult1|auto_generated|le3a\(4) & !\Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(2),
	datab => \Mult1|auto_generated|le3a\(4),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~3\,
	combout => \Mult1|auto_generated|op_1~4_combout\,
	cout => \Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y19_N18
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

-- Location: LCCOMB_X22_Y19_N8
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

-- Location: LCCOMB_X23_Y19_N20
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

-- Location: LCCOMB_X23_Y16_N6
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

-- Location: LCCOMB_X23_Y19_N22
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Mux4~7_combout\ & ((GND) # (!\Add2~11\))) # (!\Mux4~7_combout\ & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((\Mux4~7_combout\) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X23_Y19_N24
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Mux3~6_combout\ $ (!\Add2~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~6_combout\,
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: FF_X22_Y17_N23
\PC[7]\ : dffeas
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
	q => PC(7));

-- Location: FF_X24_Y15_N13
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
	ena => \regs[12][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][2]~q\);

-- Location: LCCOMB_X24_Y16_N12
\Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux2~1_combout\ & ((\regs[13][4]~q\) # ((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (((\regs[12][4]~q\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[13][4]~q\,
	datac => \regs[12][4]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: FF_X21_Y14_N3
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
	ena => \regs[14][5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][5]~q\);

-- Location: FF_X23_Y18_N27
\regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][7]~q\);

-- Location: FF_X22_Y15_N27
\regs[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][0]~q\);

-- Location: FF_X24_Y18_N23
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
	ena => \regs[4][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][0]~q\);

-- Location: FF_X21_Y18_N11
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
	ena => \regs[6][1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][0]~q\);

-- Location: FF_X22_Y15_N31
\regs[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][1]~q\);

-- Location: LCCOMB_X18_Y18_N30
\Mux21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux12~1_combout\ & ((\regs[7][1]~q\) # ((!\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\regs[3][1]~q\ & \Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \regs[7][1]~q\,
	datac => \regs[3][1]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: FF_X21_Y15_N23
\regs[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][1]~q\);

-- Location: LCCOMB_X23_Y15_N18
\Mux21~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\) # (\regs[13][1]~q\)))) # (!\Mux12~1_combout\ & (\regs[9][1]~q\ & (!\Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \regs[9][1]~q\,
	datac => \Mux13~1_combout\,
	datad => \regs[13][1]~q\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X23_Y15_N2
\Mux21~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\Mux13~1_combout\ & ((\Mux21~7_combout\ & ((\regs[15][1]~q\))) # (!\Mux21~7_combout\ & (\regs[11][1]~q\)))) # (!\Mux13~1_combout\ & (((\Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][1]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[15][1]~q\,
	datad => \Mux21~7_combout\,
	combout => \Mux21~8_combout\);

-- Location: FF_X24_Y18_N27
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
	ena => \regs[4][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][2]~q\);

-- Location: LCCOMB_X24_Y17_N6
\Mux20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux12~1_combout\ & (((\regs[4][2]~q\) # (\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (\regs[0][2]~q\ & ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][2]~q\,
	datab => \regs[4][2]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux20~4_combout\);

-- Location: FF_X23_Y14_N5
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
	ena => \regs[9][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][3]~q\);

-- Location: FF_X25_Y16_N25
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
	ena => \regs[6][1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][3]~q\);

-- Location: FF_X24_Y18_N13
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
	ena => \regs[5][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][3]~q\);

-- Location: FF_X24_Y17_N27
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
	ena => \regs[5][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][4]~q\);

-- Location: FF_X21_Y17_N25
\regs[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][4]~q\);

-- Location: LCCOMB_X21_Y17_N24
\Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\regs[7][4]~q\))) # (!\Mux12~1_combout\ & (\regs[3][4]~q\)))) # (!\Mux13~1_combout\ & (((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][4]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[7][4]~q\,
	datad => \Mux12~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X21_Y17_N8
\Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux13~1_combout\ & (((\Mux18~2_combout\)))) # (!\Mux13~1_combout\ & ((\Mux18~2_combout\ & (\regs[5][4]~q\)) # (!\Mux18~2_combout\ & ((\regs[1][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][4]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[1][4]~q\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: FF_X25_Y17_N23
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
	ena => \regs[4][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][4]~q\);

-- Location: FF_X25_Y16_N27
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
	ena => \regs[6][1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][4]~q\);

-- Location: FF_X24_Y18_N15
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
	ena => \regs[5][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][5]~q\);

-- Location: FF_X23_Y14_N27
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
	ena => \regs[11][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][5]~q\);

-- Location: FF_X22_Y14_N9
\regs[10][5]\ : dffeas
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
	ena => \regs[10][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][5]~q\);

-- Location: LCCOMB_X22_Y14_N8
\Mux17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\regs[11][5]~q\)) # (!\Mux14~1_combout\ & ((\regs[10][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \regs[11][5]~q\,
	datac => \regs[10][5]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X19_Y14_N26
\Mux17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\Mux12~1_combout\ & ((\Mux17~7_combout\ & ((\regs[15][5]~q\))) # (!\Mux17~7_combout\ & (\regs[14][5]~q\)))) # (!\Mux12~1_combout\ & (((\Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][5]~q\,
	datab => \regs[15][5]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux17~7_combout\,
	combout => \Mux17~8_combout\);

-- Location: FF_X18_Y16_N7
\regs[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[4][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][6]~q\);

-- Location: LCCOMB_X18_Y16_N6
\Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux14~1_combout\ & ((\regs[5][6]~q\) # ((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (((\regs[4][6]~q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[5][6]~q\,
	datac => \regs[4][6]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: FF_X21_Y19_N13
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
	ena => \regs[8][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][7]~q\);

-- Location: LCCOMB_X21_Y19_N6
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\regs[10][7]~q\))) # (!\Mux13~1_combout\ & (\regs[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[8][7]~q\,
	datab => \regs[10][7]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X21_Y19_N24
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux12~1_combout\ & ((\Mux15~0_combout\ & ((\regs[14][7]~q\))) # (!\Mux15~0_combout\ & (\regs[12][7]~q\)))) # (!\Mux12~1_combout\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][7]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[14][7]~q\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X21_Y16_N22
\Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux13~1_combout\ & (((\regs[2][7]~q\) # (\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & (\regs[0][7]~q\ & ((!\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[0][7]~q\,
	datac => \regs[2][7]~q\,
	datad => \Mux12~1_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X21_Y16_N30
\Mux15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux15~4_combout\ & ((\regs[6][7]~q\) # ((!\Mux12~1_combout\)))) # (!\Mux15~4_combout\ & (((\regs[4][7]~q\ & \Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][7]~q\,
	datab => \regs[4][7]~q\,
	datac => \Mux15~4_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux15~5_combout\);

-- Location: FF_X21_Y15_N1
\regs[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][7]~q\);

-- Location: LCCOMB_X22_Y19_N24
\Mux46~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Mux169~1_combout\ & ((\Mux168~1_combout\ & ((\Add3~0_combout\))) # (!\Mux168~1_combout\ & (\Add2~0_combout\)))) # (!\Mux169~1_combout\ & (!\Mux168~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add2~0_combout\,
	datad => \Add3~0_combout\,
	combout => \Mux46~2_combout\);

-- Location: FF_X25_Y15_N21
\mem_d~1625\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1625feeder_combout\,
	ena => \mem_d~2607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1625_q\);

-- Location: FF_X26_Y15_N21
\mem_d~1617\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1617feeder_combout\,
	ena => \mem_d~2609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1617_q\);

-- Location: FF_X24_Y15_N31
\mem_d~1745\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1745_q\);

-- Location: LCCOMB_X24_Y15_N30
\mem_d~2209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2209_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1745_q\))) # (!\Mux2~1_combout\ & (\mem_d~1617_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1617_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1745_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2209_combout\);

-- Location: FF_X24_Y11_N1
\mem_d~1657\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1657feeder_combout\,
	ena => \mem_d~2611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1657_q\);

-- Location: FF_X16_Y17_N5
\mem_d~1601\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1601feeder_combout\,
	ena => \mem_d~2613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1601_q\);

-- Location: FF_X14_Y18_N17
\mem_d~1729\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1729feeder_combout\,
	ena => \mem_d~2618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1729_q\);

-- Location: FF_X16_Y14_N29
\mem_d~1561\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1561feeder_combout\,
	ena => \mem_d~2621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1561_q\);

-- Location: FF_X16_Y17_N11
\mem_d~1553\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1553feeder_combout\,
	ena => \mem_d~2625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1553_q\);

-- Location: FF_X26_Y15_N15
\mem_d~1641\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1641feeder_combout\,
	ena => \mem_d~2629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1641_q\);

-- Location: FF_X25_Y13_N9
\mem_d~1665\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1665feeder_combout\,
	ena => \mem_d~2630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1665_q\);

-- Location: FF_X24_Y12_N25
\mem_d~1633\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1633_q\);

-- Location: LCCOMB_X24_Y12_N24
\mem_d~2225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2225_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1665_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1633_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1665_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1633_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2225_combout\);

-- Location: FF_X24_Y12_N3
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
	ena => \mem_d~2632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1673_q\);

-- Location: LCCOMB_X24_Y12_N2
\mem_d~2226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2226_combout\ = (\Mux14~1_combout\ & ((\mem_d~2225_combout\ & ((\mem_d~1673_q\))) # (!\mem_d~2225_combout\ & (\mem_d~1641_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1641_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1673_q\,
	datad => \mem_d~2225_combout\,
	combout => \mem_d~2226_combout\);

-- Location: FF_X25_Y13_N31
\mem_d~1793\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1793feeder_combout\,
	ena => \mem_d~2633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1793_q\);

-- Location: FF_X26_Y16_N17
\mem_d~1769\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1769feeder_combout\,
	ena => \mem_d~2634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1769_q\);

-- Location: FF_X26_Y16_N7
\mem_d~1761\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1761_q\);

-- Location: LCCOMB_X26_Y16_N6
\mem_d~2227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2227_combout\ = (\Mux14~1_combout\ & ((\mem_d~1769_q\) # ((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & (((\mem_d~1761_q\ & !\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1769_q\,
	datac => \mem_d~1761_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2227_combout\);

-- Location: FF_X25_Y12_N25
\mem_d~1801\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1801_q\);

-- Location: LCCOMB_X25_Y12_N24
\mem_d~2228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2228_combout\ = (\Mux12~1_combout\ & ((\mem_d~2227_combout\ & ((\mem_d~1801_q\))) # (!\mem_d~2227_combout\ & (\mem_d~1793_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1793_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1801_q\,
	datad => \mem_d~2227_combout\,
	combout => \mem_d~2228_combout\);

-- Location: LCCOMB_X25_Y12_N26
\mem_d~2229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2229_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~2228_combout\)) # (!\Mux2~1_combout\ & ((\mem_d~2226_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~2228_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2226_combout\,
	combout => \mem_d~2229_combout\);

-- Location: FF_X18_Y11_N17
\mem_d~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~89feeder_combout\,
	ena => \mem_d~2638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~89_q\);

-- Location: FF_X21_Y11_N5
\mem_d~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~121feeder_combout\,
	ena => \mem_d~2642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~121_q\);

-- Location: FF_X18_Y13_N7
\mem_d~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~41feeder_combout\,
	ena => \mem_d~2647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~41_q\);

-- Location: FF_X17_Y15_N1
\mem_d~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~2669_combout\,
	ena => \mem_d~2649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~33_q\);

-- Location: FF_X22_Y13_N13
\mem_d~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~73feeder_combout\,
	ena => \mem_d~2651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~73_q\);

-- Location: FF_X19_Y13_N1
\mem_d~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~2670_combout\,
	ena => \mem_d~2655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~25_q\);

-- Location: FF_X19_Y12_N5
\mem_d~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~129_q\);

-- Location: FF_X18_Y12_N17
\mem_d~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~97feeder_combout\,
	ena => \mem_d~2663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~97_q\);

-- Location: LCCOMB_X19_Y12_N4
\mem_d~2249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2249_combout\ = (\Mux2~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~129_q\))) # (!\Mux12~1_combout\ & (\mem_d~97_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~97_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~129_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2249_combout\);

-- Location: FF_X18_Y12_N23
\mem_d~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~137feeder_combout\,
	ena => \mem_d~2666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~137_q\);

-- Location: LCCOMB_X25_Y16_N14
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

-- Location: LCCOMB_X19_Y18_N20
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Mux21~9_combout\ & (\Mux9~6_combout\ & (\Mux10~6_combout\ $ (!\Mux22~9_combout\)))) # (!\Mux21~9_combout\ & (!\Mux9~6_combout\ & (\Mux10~6_combout\ $ (!\Mux22~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~9_combout\,
	datab => \Mux10~6_combout\,
	datac => \Mux22~9_combout\,
	datad => \Mux9~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\Mux28~1_combout\ & (!\Mux29~1_combout\ & (\Mux11~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~2_combout\);

-- Location: FF_X24_Y12_N17
\mem_d~1634\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1634feeder_combout\,
	ena => \mem_d~2631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1634_q\);

-- Location: FF_X26_Y13_N13
\mem_d~1650\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1650feeder_combout\,
	ena => \mem_d~2605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1650_q\);

-- Location: FF_X25_Y13_N11
\mem_d~1794\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1794feeder_combout\,
	ena => \mem_d~2633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1794_q\);

-- Location: LCCOMB_X21_Y15_N22
\mem_d~2262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2262_combout\ = (!\Mux1~0_combout\ & \Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \mem_d~2262_combout\);

-- Location: FF_X16_Y14_N13
\mem_d~1594\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1594feeder_combout\,
	ena => \mem_d~2627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1594_q\);

-- Location: FF_X17_Y16_N21
\mem_d~1578\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1578feeder_combout\,
	ena => \mem_d~2614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1578_q\);

-- Location: FF_X17_Y16_N27
\mem_d~1562\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1562_q\);

-- Location: LCCOMB_X17_Y16_N26
\mem_d~2263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2263_combout\ = (\Mux12~1_combout\ & (\Mux13~1_combout\)) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~1578_q\))) # (!\Mux13~1_combout\ & (\mem_d~1562_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1562_q\,
	datad => \mem_d~1578_q\,
	combout => \mem_d~2263_combout\);

-- Location: FF_X16_Y16_N17
\mem_d~1610\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1610feeder_combout\,
	ena => \mem_d~2616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1610_q\);

-- Location: LCCOMB_X17_Y16_N12
\mem_d~2264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2264_combout\ = (\Mux12~1_combout\ & ((\mem_d~2263_combout\ & (\mem_d~1610_q\)) # (!\mem_d~2263_combout\ & ((\mem_d~1594_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1610_q\,
	datac => \mem_d~2263_combout\,
	datad => \mem_d~1594_q\,
	combout => \mem_d~2264_combout\);

-- Location: FF_X19_Y17_N5
\mem_d~1586\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1586_q\);

-- Location: FF_X17_Y17_N15
\mem_d~1698\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1698feeder_combout\,
	ena => \mem_d~2619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1698_q\);

-- Location: FF_X18_Y17_N11
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
	ena => \mem_d~2626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1682_q\);

-- Location: LCCOMB_X18_Y17_N10
\mem_d~2269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2269_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1698_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1682_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1698_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1682_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2269_combout\);

-- Location: FF_X26_Y14_N17
\mem_d~1754\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1754feeder_combout\,
	ena => \mem_d~2608_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1754_q\);

-- Location: FF_X25_Y14_N31
\mem_d~1786\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1786feeder_combout\,
	ena => \mem_d~2612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1786_q\);

-- Location: FF_X24_Y11_N15
\mem_d~1658\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1658feeder_combout\,
	ena => \mem_d~2611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1658_q\);

-- Location: FF_X18_Y12_N5
\mem_d~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~98_q\);

-- Location: FF_X18_Y11_N5
\mem_d~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~90feeder_combout\,
	ena => \mem_d~2638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~90_q\);

-- Location: FF_X19_Y11_N17
\mem_d~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~82feeder_combout\,
	ena => \mem_d~2639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~82_q\);

-- Location: LCCOMB_X18_Y12_N6
\mem_d~2280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2280_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~90_q\)) # (!\Mux14~1_combout\ & ((\mem_d~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~90_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~82_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2280_combout\);

-- Location: FF_X19_Y13_N29
\mem_d~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~106feeder_combout\,
	ena => \mem_d~2667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~106_q\);

-- Location: LCCOMB_X18_Y12_N4
\mem_d~2281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2281_combout\ = (\mem_d~2280_combout\ & ((\mem_d~106_q\) # ((!\Mux13~1_combout\)))) # (!\mem_d~2280_combout\ & (((\mem_d~98_q\ & \Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2280_combout\,
	datab => \mem_d~106_q\,
	datac => \mem_d~98_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2281_combout\);

-- Location: FF_X23_Y11_N23
\mem_d~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~226_q\);

-- Location: FF_X16_Y13_N7
\mem_d~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~218feeder_combout\,
	ena => \mem_d~2640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~218_q\);

-- Location: FF_X23_Y11_N1
\mem_d~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~210_q\);

-- Location: LCCOMB_X23_Y11_N0
\mem_d~2282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2282_combout\ = (\Mux14~1_combout\ & ((\mem_d~218_q\) # ((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (((\mem_d~210_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~218_q\,
	datac => \mem_d~210_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2282_combout\);

-- Location: FF_X17_Y13_N9
\mem_d~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~234feeder_combout\,
	ena => \mem_d~2665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~234_q\);

-- Location: LCCOMB_X23_Y11_N22
\mem_d~2283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2283_combout\ = (\Mux13~1_combout\ & ((\mem_d~2282_combout\ & (\mem_d~234_q\)) # (!\mem_d~2282_combout\ & ((\mem_d~226_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~234_q\,
	datac => \mem_d~226_q\,
	datad => \mem_d~2282_combout\,
	combout => \mem_d~2283_combout\);

-- Location: LCCOMB_X19_Y15_N8
\mem_d~2284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2284_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2283_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~2281_combout\,
	datad => \mem_d~2283_combout\,
	combout => \mem_d~2284_combout\);

-- Location: FF_X24_Y19_N21
\mem_d~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~66feeder_combout\,
	ena => \mem_d~2645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~66_q\);

-- Location: FF_X21_Y12_N7
\mem_d~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~178feeder_combout\,
	ena => \mem_d~2654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~178_q\);

-- Location: FF_X25_Y19_N1
\mem_d~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~50_q\);

-- Location: LCCOMB_X25_Y19_N0
\mem_d~2285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2285_combout\ = (\Mux2~1_combout\ & ((\mem_d~178_q\) # ((\Mux13~1_combout\)))) # (!\Mux2~1_combout\ & (((\mem_d~50_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~178_q\,
	datac => \mem_d~50_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2285_combout\);

-- Location: FF_X25_Y19_N7
\mem_d~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~194_q\);

-- Location: LCCOMB_X25_Y19_N6
\mem_d~2286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2286_combout\ = (\Mux13~1_combout\ & ((\mem_d~2285_combout\ & ((\mem_d~194_q\))) # (!\mem_d~2285_combout\ & (\mem_d~66_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~66_q\,
	datac => \mem_d~194_q\,
	datad => \mem_d~2285_combout\,
	combout => \mem_d~2286_combout\);

-- Location: FF_X22_Y13_N25
\mem_d~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~74feeder_combout\,
	ena => \mem_d~2651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~74_q\);

-- Location: FF_X21_Y13_N13
\mem_d~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~186feeder_combout\,
	ena => \mem_d~2660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~186_q\);

-- Location: FF_X21_Y13_N23
\mem_d~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~58_q\);

-- Location: LCCOMB_X21_Y13_N22
\mem_d~2287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2287_combout\ = (\Mux2~1_combout\ & ((\mem_d~186_q\) # ((\Mux13~1_combout\)))) # (!\Mux2~1_combout\ & (((\mem_d~58_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~186_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~58_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2287_combout\);

-- Location: FF_X23_Y13_N5
\mem_d~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~202_q\);

-- Location: LCCOMB_X23_Y13_N4
\mem_d~2288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2288_combout\ = (\Mux13~1_combout\ & ((\mem_d~2287_combout\ & ((\mem_d~202_q\))) # (!\mem_d~2287_combout\ & (\mem_d~74_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~74_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~202_q\,
	datad => \mem_d~2287_combout\,
	combout => \mem_d~2288_combout\);

-- Location: LCCOMB_X19_Y15_N2
\mem_d~2289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2289_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~2288_combout\)) # (!\Mux14~1_combout\ & ((\mem_d~2286_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~2288_combout\,
	datad => \mem_d~2286_combout\,
	combout => \mem_d~2289_combout\);

-- Location: FF_X19_Y19_N1
\mem_d~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~146feeder_combout\,
	ena => \mem_d~2658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~146_q\);

-- Location: FF_X19_Y15_N1
\mem_d~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~162_q\);

-- Location: LCCOMB_X19_Y15_N0
\mem_d~2290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2290_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~162_q\))) # (!\Mux13~1_combout\ & (\mem_d~146_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~146_q\,
	datac => \mem_d~162_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2290_combout\);

-- Location: FF_X19_Y13_N27
\mem_d~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~26feeder_combout\,
	ena => \mem_d~2655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~26_q\);

-- Location: FF_X18_Y13_N29
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
	ena => \mem_d~2647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~42_q\);

-- Location: LCCOMB_X18_Y13_N28
\mem_d~2291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2291_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~42_q\))) # (!\Mux13~1_combout\ & (\mem_d~26_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~26_q\,
	datac => \mem_d~42_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2291_combout\);

-- Location: FF_X17_Y15_N9
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
	ena => \mem_d~2657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~18_q\);

-- Location: FF_X17_Y15_N11
\mem_d~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~2671_combout\,
	ena => \mem_d~2649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~34_q\);

-- Location: LCCOMB_X17_Y15_N8
\mem_d~2292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2292_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & (!\mem_d~34_q\)) # (!\Mux13~1_combout\ & ((\mem_d~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~34_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~18_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2292_combout\);

-- Location: LCCOMB_X19_Y15_N6
\mem_d~2293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2293_combout\ = (\Mux2~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~2291_combout\))) # (!\Mux14~1_combout\ & (\mem_d~2292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~2292_combout\,
	datac => \Mux14~1_combout\,
	datad => \mem_d~2291_combout\,
	combout => \mem_d~2293_combout\);

-- Location: FF_X17_Y13_N15
\mem_d~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~154feeder_combout\,
	ena => \mem_d~2656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~154_q\);

-- Location: FF_X23_Y13_N19
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
	ena => \mem_d~2648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~170_q\);

-- Location: LCCOMB_X23_Y13_N18
\mem_d~2294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2294_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~170_q\))) # (!\Mux13~1_combout\ & (\mem_d~154_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~154_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~170_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2294_combout\);

-- Location: LCCOMB_X19_Y15_N4
\mem_d~2295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2295_combout\ = (\mem_d~2293_combout\ & (((\mem_d~2294_combout\)) # (!\Mux2~1_combout\))) # (!\mem_d~2293_combout\ & (\Mux2~1_combout\ & ((\mem_d~2290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2293_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2294_combout\,
	datad => \mem_d~2290_combout\,
	combout => \mem_d~2295_combout\);

-- Location: LCCOMB_X19_Y15_N10
\mem_d~2296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2296_combout\ = (\Mux11~1_combout\ & (\Mux12~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~2289_combout\))) # (!\Mux12~1_combout\ & (\mem_d~2295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2295_combout\,
	datad => \mem_d~2289_combout\,
	combout => \mem_d~2296_combout\);

-- Location: FF_X22_Y11_N11
\mem_d~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~242feeder_combout\,
	ena => \mem_d~2641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~242_q\);

-- Location: FF_X21_Y12_N9
\mem_d~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~258_q\);

-- Location: LCCOMB_X21_Y12_N8
\mem_d~2297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2297_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~258_q\))) # (!\Mux13~1_combout\ & (\mem_d~242_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~242_q\,
	datac => \mem_d~258_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2297_combout\);

-- Location: FF_X21_Y11_N1
\mem_d~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~122feeder_combout\,
	ena => \mem_d~2642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~122_q\);

-- Location: FF_X18_Y12_N13
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
	ena => \mem_d~2666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~138_q\);

-- Location: LCCOMB_X18_Y12_N12
\mem_d~2298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2298_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~138_q\))) # (!\Mux13~1_combout\ & (\mem_d~122_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~122_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~138_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2298_combout\);

-- Location: FF_X19_Y11_N15
\mem_d~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~114feeder_combout\,
	ena => \mem_d~2643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~114_q\);

-- Location: FF_X19_Y12_N7
\mem_d~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~130_q\);

-- Location: LCCOMB_X19_Y12_N6
\mem_d~2299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2299_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~130_q\)) # (!\Mux13~1_combout\ & ((\mem_d~114_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~130_q\,
	datad => \mem_d~114_q\,
	combout => \mem_d~2299_combout\);

-- Location: LCCOMB_X19_Y15_N20
\mem_d~2300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2300_combout\ = (\Mux14~1_combout\ & ((\mem_d~2298_combout\) # ((\Mux2~1_combout\)))) # (!\Mux14~1_combout\ & (((!\Mux2~1_combout\ & \mem_d~2299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2298_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2299_combout\,
	combout => \mem_d~2300_combout\);

-- Location: FF_X21_Y11_N7
\mem_d~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~250feeder_combout\,
	ena => \mem_d~2644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~250_q\);

-- Location: FF_X16_Y15_N25
\mem_d~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~266_q\);

-- Location: LCCOMB_X16_Y15_N24
\mem_d~2301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2301_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~266_q\))) # (!\Mux13~1_combout\ & (\mem_d~250_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~250_q\,
	datac => \mem_d~266_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2301_combout\);

-- Location: LCCOMB_X19_Y15_N22
\mem_d~2302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2302_combout\ = (\Mux2~1_combout\ & ((\mem_d~2300_combout\ & ((\mem_d~2301_combout\))) # (!\mem_d~2300_combout\ & (\mem_d~2297_combout\)))) # (!\Mux2~1_combout\ & (((\mem_d~2300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2297_combout\,
	datab => \mem_d~2301_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2300_combout\,
	combout => \mem_d~2302_combout\);

-- Location: LCCOMB_X19_Y15_N12
\mem_d~2303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2303_combout\ = (\Mux11~1_combout\ & ((\mem_d~2296_combout\ & ((\mem_d~2302_combout\))) # (!\mem_d~2296_combout\ & (\mem_d~2284_combout\)))) # (!\Mux11~1_combout\ & (((\mem_d~2296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2284_combout\,
	datac => \mem_d~2302_combout\,
	datad => \mem_d~2296_combout\,
	combout => \mem_d~2303_combout\);

-- Location: FF_X25_Y15_N9
\mem_d~1627\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1627feeder_combout\,
	ena => \mem_d~2607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1627_q\);

-- Location: FF_X17_Y17_N13
\mem_d~1699\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1699feeder_combout\,
	ena => \mem_d~2619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1699_q\);

-- Location: FF_X16_Y13_N1
\mem_d~1563\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1563feeder_combout\,
	ena => \mem_d~2621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1563_q\);

-- Location: FF_X14_Y17_N25
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
	ena => \mem_d~2614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1579_q\);

-- Location: LCCOMB_X14_Y17_N24
\mem_d~2315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2315_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~1579_q\))) # (!\Mux13~1_combout\ & (\mem_d~1563_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1563_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1579_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2315_combout\);

-- Location: FF_X16_Y17_N9
\mem_d~1555\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1555feeder_combout\,
	ena => \mem_d~2625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1555_q\);

-- Location: FF_X14_Y17_N27
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
	ena => \mem_d~2615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1571_q\);

-- Location: LCCOMB_X14_Y17_N26
\mem_d~2316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2316_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~1571_q\))) # (!\Mux13~1_combout\ & (\mem_d~1555_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1555_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1571_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2316_combout\);

-- Location: LCCOMB_X14_Y17_N12
\mem_d~2317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2317_combout\ = (\Mux2~1_combout\ & (\Mux14~1_combout\)) # (!\Mux2~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~2315_combout\))) # (!\Mux14~1_combout\ & (\mem_d~2316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2316_combout\,
	datad => \mem_d~2315_combout\,
	combout => \mem_d~2317_combout\);

-- Location: FF_X25_Y13_N17
\mem_d~1667\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1667feeder_combout\,
	ena => \mem_d~2630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1667_q\);

-- Location: FF_X25_Y13_N15
\mem_d~1795\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1795_q\);

-- Location: LCCOMB_X25_Y13_N14
\mem_d~2322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2322_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1795_q\))) # (!\Mux2~1_combout\ & (\mem_d~1667_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~1667_q\,
	datac => \mem_d~1795_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2322_combout\);

-- Location: FF_X24_Y13_N25
\mem_d~1651\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1651feeder_combout\,
	ena => \mem_d~2605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1651_q\);

-- Location: FF_X25_Y14_N3
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
	ena => \mem_d~2606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1779_q\);

-- Location: LCCOMB_X25_Y14_N2
\mem_d~2323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2323_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1779_q\))) # (!\Mux2~1_combout\ & (\mem_d~1651_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1651_q\,
	datac => \mem_d~1779_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2323_combout\);

-- Location: LCCOMB_X25_Y14_N12
\mem_d~2324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2324_combout\ = (\Mux13~1_combout\ & (((\mem_d~2322_combout\) # (\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & (\mem_d~2323_combout\ & ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~2323_combout\,
	datac => \mem_d~2322_combout\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2324_combout\);

-- Location: FF_X21_Y11_N13
\mem_d~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~123feeder_combout\,
	ena => \mem_d~2642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~123_q\);

-- Location: FF_X24_Y19_N31
\mem_d~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~67feeder_combout\,
	ena => \mem_d~2645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~67_q\);

-- Location: FF_X17_Y15_N29
\mem_d~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~35feeder_combout\,
	ena => \mem_d~2649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~35_q\);

-- Location: FF_X18_Y13_N31
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
	ena => \mem_d~2647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~43_q\);

-- Location: LCCOMB_X18_Y13_N30
\mem_d~2335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2335_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~43_q\))) # (!\Mux14~1_combout\ & (\mem_d~35_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~35_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~43_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2335_combout\);

-- Location: FF_X19_Y12_N21
\mem_d~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~51feeder_combout\,
	ena => \mem_d~2653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~51_q\);

-- Location: FF_X21_Y12_N31
\mem_d~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~179feeder_combout\,
	ena => \mem_d~2654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~179_q\);

-- Location: FF_X19_Y13_N31
\mem_d~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~107feeder_combout\,
	ena => \mem_d~2667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~107_q\);

-- Location: FF_X19_Y12_N3
\mem_d~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~131feeder_combout\,
	ena => \mem_d~2662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~131_q\);

-- Location: FF_X23_Y12_N25
\mem_d~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~259feeder_combout\,
	ena => \mem_d~2664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~259_q\);

-- Location: FF_X23_Y12_N3
\mem_d~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~227_q\);

-- Location: LCCOMB_X23_Y12_N2
\mem_d~2347\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2347_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~259_q\)) # (!\Mux12~1_combout\ & ((\mem_d~227_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~259_q\,
	datac => \mem_d~227_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2347_combout\);

-- Location: FF_X25_Y15_N17
\mem_d~1628\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux34~9_combout\,
	ena => \mem_d~2607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1628_q\);

-- Location: FF_X26_Y13_N1
\mem_d~1652\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1652feeder_combout\,
	ena => \mem_d~2605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1652_q\);

-- Location: FF_X26_Y15_N31
\mem_d~1620\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1620_q\);

-- Location: LCCOMB_X26_Y15_N30
\mem_d~2351\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2351_combout\ = (\Mux12~1_combout\ & ((\mem_d~1652_q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1620_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1652_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1620_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2351_combout\);

-- Location: FF_X26_Y17_N21
\mem_d~1660\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1660feeder_combout\,
	ena => \mem_d~2611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1660_q\);

-- Location: LCCOMB_X26_Y15_N12
\mem_d~2352\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2352_combout\ = (\mem_d~2351_combout\ & ((\mem_d~1660_q\) # ((!\Mux14~1_combout\)))) # (!\mem_d~2351_combout\ & (((\mem_d~1628_q\ & \Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1660_q\,
	datab => \mem_d~1628_q\,
	datac => \mem_d~2351_combout\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2352_combout\);

-- Location: FF_X26_Y14_N19
\mem_d~1756\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2608_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1756_q\);

-- Location: FF_X25_Y18_N25
\mem_d~1780\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1780feeder_combout\,
	ena => \mem_d~2606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1780_q\);

-- Location: FF_X26_Y14_N25
\mem_d~1748\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1748_q\);

-- Location: LCCOMB_X26_Y14_N24
\mem_d~2353\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2353_combout\ = (\Mux12~1_combout\ & ((\mem_d~1780_q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1748_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1780_q\,
	datac => \mem_d~1748_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2353_combout\);

-- Location: FF_X25_Y14_N21
\mem_d~1788\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1788feeder_combout\,
	ena => \mem_d~2612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1788_q\);

-- Location: LCCOMB_X26_Y14_N18
\mem_d~2354\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2354_combout\ = (\mem_d~2353_combout\ & ((\mem_d~1788_q\) # ((!\Mux14~1_combout\)))) # (!\mem_d~2353_combout\ & (((\mem_d~1756_q\ & \Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1788_q\,
	datab => \mem_d~2353_combout\,
	datac => \mem_d~1756_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2354_combout\);

-- Location: LCCOMB_X18_Y15_N20
\mem_d~2355\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2355_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2354_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2352_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~2354_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2355_combout\);

-- Location: FF_X14_Y17_N21
\mem_d~1580\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1580feeder_combout\,
	ena => \mem_d~2614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1580_q\);

-- Location: FF_X17_Y17_N5
\mem_d~1700\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1700feeder_combout\,
	ena => \mem_d~2619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1700_q\);

-- Location: FF_X14_Y17_N11
\mem_d~1572\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1572_q\);

-- Location: LCCOMB_X14_Y17_N10
\mem_d~2356\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2356_combout\ = (\Mux2~1_combout\ & ((\mem_d~1700_q\) # ((\Mux14~1_combout\)))) # (!\Mux2~1_combout\ & (((\mem_d~1572_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1700_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1572_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2356_combout\);

-- Location: FF_X17_Y17_N3
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
	ena => \mem_d~2617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1708_q\);

-- Location: LCCOMB_X17_Y17_N2
\mem_d~2357\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2357_combout\ = (\Mux14~1_combout\ & ((\mem_d~2356_combout\ & ((\mem_d~1708_q\))) # (!\mem_d~2356_combout\ & (\mem_d~1580_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1580_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1708_q\,
	datad => \mem_d~2356_combout\,
	combout => \mem_d~2357_combout\);

-- Location: FF_X16_Y16_N11
\mem_d~1612\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1612feeder_combout\,
	ena => \mem_d~2616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1612_q\);

-- Location: FF_X14_Y18_N25
\mem_d~1732\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1732feeder_combout\,
	ena => \mem_d~2618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1732_q\);

-- Location: FF_X14_Y15_N21
\mem_d~1604\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1604_q\);

-- Location: LCCOMB_X14_Y15_N20
\mem_d~2358\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2358_combout\ = (\Mux2~1_combout\ & ((\mem_d~1732_q\) # ((\Mux14~1_combout\)))) # (!\Mux2~1_combout\ & (((\mem_d~1604_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1732_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1604_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2358_combout\);

-- Location: FF_X14_Y18_N15
\mem_d~1740\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1740_q\);

-- Location: LCCOMB_X14_Y18_N14
\mem_d~2359\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2359_combout\ = (\Mux14~1_combout\ & ((\mem_d~2358_combout\ & ((\mem_d~1740_q\))) # (!\mem_d~2358_combout\ & (\mem_d~1612_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1612_q\,
	datac => \mem_d~1740_q\,
	datad => \mem_d~2358_combout\,
	combout => \mem_d~2359_combout\);

-- Location: LCCOMB_X18_Y15_N26
\mem_d~2360\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2360_combout\ = (!\Mux1~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~2359_combout\))) # (!\Mux12~1_combout\ & (\mem_d~2357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2357_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2359_combout\,
	combout => \mem_d~2360_combout\);

-- Location: FF_X18_Y17_N17
\mem_d~1684\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1684feeder_combout\,
	ena => \mem_d~2626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1684_q\);

-- Location: FF_X18_Y13_N13
\mem_d~1692\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1692_q\);

-- Location: LCCOMB_X18_Y13_N12
\mem_d~2361\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2361_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1692_q\))) # (!\Mux14~1_combout\ & (\mem_d~1684_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~1684_q\,
	datac => \mem_d~1692_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2361_combout\);

-- Location: FF_X25_Y15_N3
\mem_d~1588\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1588feeder_combout\,
	ena => \mem_d~2623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1588_q\);

-- Location: FF_X17_Y18_N5
\mem_d~1596\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1596_q\);

-- Location: LCCOMB_X17_Y18_N4
\mem_d~2362\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2362_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1596_q\))) # (!\Mux14~1_combout\ & (\mem_d~1588_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1588_q\,
	datac => \mem_d~1596_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2362_combout\);

-- Location: FF_X16_Y17_N27
\mem_d~1556\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1556feeder_combout\,
	ena => \mem_d~2625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1556_q\);

-- Location: FF_X16_Y14_N1
\mem_d~1564\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1564_q\);

-- Location: LCCOMB_X16_Y14_N0
\mem_d~2363\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2363_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1564_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1556_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1564_q\,
	datad => \mem_d~1556_q\,
	combout => \mem_d~2363_combout\);

-- Location: LCCOMB_X18_Y15_N16
\mem_d~2364\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2364_combout\ = (\Mux12~1_combout\ & (((\mem_d~2362_combout\) # (\Mux2~1_combout\)))) # (!\Mux12~1_combout\ & (\mem_d~2363_combout\ & ((!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2363_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2362_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2364_combout\);

-- Location: FF_X18_Y17_N27
\mem_d~1716\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1716feeder_combout\,
	ena => \mem_d~2624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1716_q\);

-- Location: FF_X16_Y15_N11
\mem_d~1724\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1724_q\);

-- Location: LCCOMB_X16_Y15_N10
\mem_d~2365\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2365_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1724_q\))) # (!\Mux14~1_combout\ & (\mem_d~1716_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1716_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1724_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2365_combout\);

-- Location: LCCOMB_X18_Y15_N10
\mem_d~2366\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2366_combout\ = (\Mux2~1_combout\ & ((\mem_d~2364_combout\ & ((\mem_d~2365_combout\))) # (!\mem_d~2364_combout\ & (\mem_d~2361_combout\)))) # (!\Mux2~1_combout\ & (((\mem_d~2364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2361_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2365_combout\,
	datad => \mem_d~2364_combout\,
	combout => \mem_d~2366_combout\);

-- Location: LCCOMB_X18_Y15_N24
\mem_d~2367\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2367_combout\ = (\Mux11~1_combout\ & (\Mux13~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~2360_combout\)) # (!\Mux13~1_combout\ & ((\mem_d~2366_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2360_combout\,
	datad => \mem_d~2366_combout\,
	combout => \mem_d~2367_combout\);

-- Location: FF_X26_Y16_N11
\mem_d~1764\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1764feeder_combout\,
	ena => \mem_d~2635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1764_q\);

-- Location: FF_X26_Y16_N9
\mem_d~1772\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1772_q\);

-- Location: LCCOMB_X26_Y16_N8
\mem_d~2368\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2368_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1772_q\))) # (!\Mux14~1_combout\ & (\mem_d~1764_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1764_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1772_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2368_combout\);

-- Location: FF_X25_Y13_N21
\mem_d~1668\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1668feeder_combout\,
	ena => \mem_d~2630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1668_q\);

-- Location: FF_X24_Y13_N17
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
	ena => \mem_d~2632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1676_q\);

-- Location: LCCOMB_X24_Y13_N16
\mem_d~2369\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2369_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1676_q\))) # (!\Mux14~1_combout\ & (\mem_d~1668_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1668_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1676_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2369_combout\);

-- Location: FF_X24_Y12_N13
\mem_d~1636\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1636feeder_combout\,
	ena => \mem_d~2631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1636_q\);

-- Location: FF_X26_Y15_N23
\mem_d~1644\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1644_q\);

-- Location: LCCOMB_X26_Y15_N22
\mem_d~2370\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2370_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1644_q\))) # (!\Mux14~1_combout\ & (\mem_d~1636_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1636_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1644_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2370_combout\);

-- Location: LCCOMB_X26_Y15_N8
\mem_d~2371\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2371_combout\ = (\Mux12~1_combout\ & (((\Mux2~1_combout\) # (\mem_d~2369_combout\)))) # (!\Mux12~1_combout\ & (\mem_d~2370_combout\ & (!\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2370_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2369_combout\,
	combout => \mem_d~2371_combout\);

-- Location: FF_X25_Y11_N1
\mem_d~1796\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1796feeder_combout\,
	ena => \mem_d~2633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1796_q\);

-- Location: FF_X25_Y11_N19
\mem_d~1804\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1804_q\);

-- Location: LCCOMB_X25_Y11_N18
\mem_d~2372\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2372_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1804_q\))) # (!\Mux14~1_combout\ & (\mem_d~1796_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1796_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1804_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2372_combout\);

-- Location: LCCOMB_X26_Y15_N2
\mem_d~2373\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2373_combout\ = (\Mux2~1_combout\ & ((\mem_d~2371_combout\ & (\mem_d~2372_combout\)) # (!\mem_d~2371_combout\ & ((\mem_d~2368_combout\))))) # (!\Mux2~1_combout\ & (((\mem_d~2371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2372_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2371_combout\,
	datad => \mem_d~2368_combout\,
	combout => \mem_d~2373_combout\);

-- Location: LCCOMB_X18_Y15_N30
\mem_d~2374\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2374_combout\ = (\Mux11~1_combout\ & ((\mem_d~2367_combout\ & ((\mem_d~2373_combout\))) # (!\mem_d~2367_combout\ & (\mem_d~2355_combout\)))) # (!\Mux11~1_combout\ & (((\mem_d~2367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2355_combout\,
	datac => \mem_d~2373_combout\,
	datad => \mem_d~2367_combout\,
	combout => \mem_d~2374_combout\);

-- Location: FF_X18_Y12_N27
\mem_d~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~100feeder_combout\,
	ena => \mem_d~2663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~100_q\);

-- Location: FF_X19_Y11_N21
\mem_d~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~116feeder_combout\,
	ena => \mem_d~2643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~116_q\);

-- Location: FF_X19_Y11_N23
\mem_d~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~84_q\);

-- Location: LCCOMB_X19_Y11_N22
\mem_d~2375\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2375_combout\ = (\Mux12~1_combout\ & ((\mem_d~116_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~84_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~116_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~84_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2375_combout\);

-- Location: FF_X19_Y12_N25
\mem_d~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~132_q\);

-- Location: LCCOMB_X19_Y12_N24
\mem_d~2376\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2376_combout\ = (\Mux13~1_combout\ & ((\mem_d~2375_combout\ & ((\mem_d~132_q\))) # (!\mem_d~2375_combout\ & (\mem_d~100_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~100_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~132_q\,
	datad => \mem_d~2375_combout\,
	combout => \mem_d~2376_combout\);

-- Location: LCCOMB_X18_Y15_N12
\mem_d~2377\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2377_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2376_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2376_combout\,
	combout => \mem_d~2377_combout\);

-- Location: FF_X22_Y11_N25
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
	ena => \mem_d~2641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~244_q\);

-- Location: FF_X23_Y11_N13
\mem_d~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~228feeder_combout\,
	ena => \mem_d~2661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~228_q\);

-- Location: FF_X23_Y11_N7
\mem_d~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~212_q\);

-- Location: LCCOMB_X23_Y11_N6
\mem_d~2378\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2378_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~228_q\)) # (!\Mux13~1_combout\ & ((\mem_d~212_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~228_q\,
	datac => \mem_d~212_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2378_combout\);

-- Location: FF_X21_Y12_N5
\mem_d~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~260feeder_combout\,
	ena => \mem_d~2664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~260_q\);

-- Location: LCCOMB_X22_Y11_N24
\mem_d~2379\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2379_combout\ = (\Mux12~1_combout\ & ((\mem_d~2378_combout\ & (\mem_d~260_q\)) # (!\mem_d~2378_combout\ & ((\mem_d~244_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2378_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~260_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~244_q\,
	datad => \mem_d~2378_combout\,
	combout => \mem_d~2379_combout\);

-- Location: LCCOMB_X18_Y15_N22
\mem_d~2380\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2380_combout\ = (\mem_d~2377_combout\ & (((\Mux2~0_combout\ & \Mux167~0_combout\)))) # (!\mem_d~2377_combout\ & (\mem_d~2379_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2379_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2377_combout\,
	combout => \mem_d~2380_combout\);

-- Location: FF_X17_Y13_N1
\mem_d~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~156feeder_combout\,
	ena => \mem_d~2656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~156_q\);

-- Location: FF_X21_Y13_N29
\mem_d~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~188_q\);

-- Location: LCCOMB_X21_Y13_N28
\mem_d~2381\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2381_combout\ = (!\Mux1~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~188_q\))) # (!\Mux12~1_combout\ & (\mem_d~156_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~156_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~188_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2381_combout\);

-- Location: FF_X18_Y13_N19
\mem_d~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~44feeder_combout\,
	ena => \mem_d~2647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~44_q\);

-- Location: FF_X22_Y13_N17
\mem_d~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~76_q\);

-- Location: LCCOMB_X22_Y13_N16
\mem_d~2382\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2382_combout\ = (!\Mux1~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~76_q\))) # (!\Mux12~1_combout\ & (\mem_d~44_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~44_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~76_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2382_combout\);

-- Location: FF_X19_Y13_N9
\mem_d~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~28feeder_combout\,
	ena => \mem_d~2655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~28_q\);

-- Location: FF_X21_Y13_N3
\mem_d~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~60_q\);

-- Location: LCCOMB_X21_Y13_N2
\mem_d~2383\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2383_combout\ = (!\Mux1~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~60_q\))) # (!\Mux12~1_combout\ & (\mem_d~28_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~28_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~60_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2383_combout\);

-- Location: LCCOMB_X22_Y14_N0
\mem_d~2384\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2384_combout\ = (\Mux13~1_combout\ & ((\Mux2~1_combout\) # ((\mem_d~2382_combout\)))) # (!\Mux13~1_combout\ & (!\Mux2~1_combout\ & ((\mem_d~2383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2382_combout\,
	datad => \mem_d~2383_combout\,
	combout => \mem_d~2384_combout\);

-- Location: FF_X23_Y13_N13
\mem_d~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~172feeder_combout\,
	ena => \mem_d~2648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~172_q\);

-- Location: FF_X23_Y13_N27
\mem_d~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~204_q\);

-- Location: LCCOMB_X23_Y13_N26
\mem_d~2385\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2385_combout\ = (!\Mux1~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~204_q\))) # (!\Mux12~1_combout\ & (\mem_d~172_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~172_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~204_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2385_combout\);

-- Location: LCCOMB_X18_Y15_N8
\mem_d~2386\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2386_combout\ = (\Mux2~1_combout\ & ((\mem_d~2384_combout\ & ((\mem_d~2385_combout\))) # (!\mem_d~2384_combout\ & (\mem_d~2381_combout\)))) # (!\Mux2~1_combout\ & (((\mem_d~2384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2381_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2385_combout\,
	datad => \mem_d~2384_combout\,
	combout => \mem_d~2386_combout\);

-- Location: FF_X19_Y12_N11
\mem_d~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~52feeder_combout\,
	ena => \mem_d~2653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~52_q\);

-- Location: FF_X17_Y15_N13
\mem_d~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~36feeder_combout\,
	ena => \mem_d~2649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~36_q\);

-- Location: FF_X17_Y15_N3
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
	ena => \mem_d~2657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~20_q\);

-- Location: LCCOMB_X17_Y15_N2
\mem_d~2387\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2387_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~36_q\)) # (!\Mux13~1_combout\ & ((\mem_d~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~36_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~20_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2387_combout\);

-- Location: FF_X18_Y15_N3
\mem_d~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~68_q\);

-- Location: LCCOMB_X18_Y15_N2
\mem_d~2388\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2388_combout\ = (\Mux12~1_combout\ & ((\mem_d~2387_combout\ & ((\mem_d~68_q\))) # (!\mem_d~2387_combout\ & (\mem_d~52_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~52_q\,
	datac => \mem_d~68_q\,
	datad => \mem_d~2387_combout\,
	combout => \mem_d~2388_combout\);

-- Location: LCCOMB_X18_Y15_N4
\mem_d~2389\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2389_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2388_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2388_combout\,
	combout => \mem_d~2389_combout\);

-- Location: FF_X21_Y12_N23
\mem_d~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~180feeder_combout\,
	ena => \mem_d~2654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~180_q\);

-- Location: FF_X19_Y19_N25
\mem_d~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~164feeder_combout\,
	ena => \mem_d~2650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~164_q\);

-- Location: FF_X23_Y19_N29
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
	ena => \mem_d~2658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~148_q\);

-- Location: LCCOMB_X23_Y19_N28
\mem_d~2390\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2390_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~164_q\)) # (!\Mux13~1_combout\ & ((\mem_d~148_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~164_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~148_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2390_combout\);

-- Location: FF_X24_Y19_N19
\mem_d~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~196_q\);

-- Location: LCCOMB_X24_Y19_N18
\mem_d~2391\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2391_combout\ = (\Mux12~1_combout\ & ((\mem_d~2390_combout\ & ((\mem_d~196_q\))) # (!\mem_d~2390_combout\ & (\mem_d~180_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~180_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~196_q\,
	datad => \mem_d~2390_combout\,
	combout => \mem_d~2391_combout\);

-- Location: LCCOMB_X18_Y15_N6
\mem_d~2392\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2392_combout\ = (\mem_d~2389_combout\ & (\Mux2~0_combout\ & (\Mux167~0_combout\))) # (!\mem_d~2389_combout\ & (\mem_d~2391_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2389_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2391_combout\,
	combout => \mem_d~2392_combout\);

-- Location: LCCOMB_X18_Y15_N28
\mem_d~2393\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2393_combout\ = (\Mux11~1_combout\ & (\Mux14~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~2386_combout\)) # (!\Mux14~1_combout\ & ((\mem_d~2392_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2386_combout\,
	datad => \mem_d~2392_combout\,
	combout => \mem_d~2393_combout\);

-- Location: FF_X16_Y13_N13
\mem_d~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~220feeder_combout\,
	ena => \mem_d~2640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~220_q\);

-- Location: FF_X21_Y11_N29
\mem_d~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~124feeder_combout\,
	ena => \mem_d~2642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~124_q\);

-- Location: FF_X18_Y11_N7
\mem_d~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~92_q\);

-- Location: LCCOMB_X18_Y11_N6
\mem_d~2394\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2394_combout\ = (\Mux2~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~124_q\)) # (!\Mux12~1_combout\ & ((\mem_d~92_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~124_q\,
	datac => \mem_d~92_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2394_combout\);

-- Location: FF_X21_Y11_N27
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
	ena => \mem_d~2644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~252_q\);

-- Location: LCCOMB_X21_Y11_N26
\mem_d~2395\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2395_combout\ = (\Mux2~1_combout\ & ((\mem_d~2394_combout\ & ((\mem_d~252_q\))) # (!\mem_d~2394_combout\ & (\mem_d~220_q\)))) # (!\Mux2~1_combout\ & (((\mem_d~2394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~220_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~252_q\,
	datad => \mem_d~2394_combout\,
	combout => \mem_d~2395_combout\);

-- Location: FF_X17_Y13_N19
\mem_d~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~236feeder_combout\,
	ena => \mem_d~2665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~236_q\);

-- Location: FF_X16_Y12_N1
\mem_d~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~140feeder_combout\,
	ena => \mem_d~2666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~140_q\);

-- Location: FF_X19_Y13_N15
\mem_d~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~108_q\);

-- Location: LCCOMB_X19_Y13_N14
\mem_d~2396\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2396_combout\ = (\Mux2~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~140_q\)) # (!\Mux12~1_combout\ & ((\mem_d~108_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~140_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~108_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2396_combout\);

-- Location: FF_X16_Y15_N1
\mem_d~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux34~9_combout\,
	sload => VCC,
	ena => \mem_d~2668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~268_q\);

-- Location: LCCOMB_X16_Y15_N0
\mem_d~2397\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2397_combout\ = (\Mux2~1_combout\ & ((\mem_d~2396_combout\ & ((\mem_d~268_q\))) # (!\mem_d~2396_combout\ & (\mem_d~236_q\)))) # (!\Mux2~1_combout\ & (((\mem_d~2396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~236_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~268_q\,
	datad => \mem_d~2396_combout\,
	combout => \mem_d~2397_combout\);

-- Location: LCCOMB_X18_Y15_N18
\mem_d~2398\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2398_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~2397_combout\)) # (!\Mux13~1_combout\ & ((\mem_d~2395_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2397_combout\,
	datad => \mem_d~2395_combout\,
	combout => \mem_d~2398_combout\);

-- Location: LCCOMB_X18_Y15_N0
\mem_d~2399\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2399_combout\ = (\Mux11~1_combout\ & ((\mem_d~2393_combout\ & (\mem_d~2398_combout\)) # (!\mem_d~2393_combout\ & ((\mem_d~2380_combout\))))) # (!\Mux11~1_combout\ & (((\mem_d~2393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2398_combout\,
	datac => \mem_d~2380_combout\,
	datad => \mem_d~2393_combout\,
	combout => \mem_d~2399_combout\);

-- Location: LCCOMB_X23_Y17_N12
\Mux42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux168~1_combout\ & (\Mux169~1_combout\ & ((\Add3~8_combout\)))) # (!\Mux168~1_combout\ & (((\Add2~8_combout\)) # (!\Mux169~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Add2~8_combout\,
	datad => \Add3~8_combout\,
	combout => \Mux42~2_combout\);

-- Location: FF_X25_Y15_N25
\mem_d~1629\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1629feeder_combout\,
	ena => \mem_d~2607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1629_q\);

-- Location: FF_X26_Y14_N23
\mem_d~1757\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2608_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1757_q\);

-- Location: LCCOMB_X26_Y14_N22
\mem_d~2400\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2400_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1757_q\))) # (!\Mux2~1_combout\ & (\mem_d~1629_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1629_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1757_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2400_combout\);

-- Location: FF_X26_Y13_N11
\mem_d~1621\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1621feeder_combout\,
	ena => \mem_d~2609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1621_q\);

-- Location: FF_X26_Y14_N5
\mem_d~1749\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1749_q\);

-- Location: LCCOMB_X26_Y14_N4
\mem_d~2402\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2402_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1749_q\))) # (!\Mux2~1_combout\ & (\mem_d~1621_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1621_q\,
	datac => \mem_d~1749_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2402_combout\);

-- Location: FF_X24_Y11_N3
\mem_d~1661\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1661feeder_combout\,
	ena => \mem_d~2611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1661_q\);

-- Location: FF_X16_Y14_N27
\mem_d~1565\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1565feeder_combout\,
	ena => \mem_d~2621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1565_q\);

-- Location: FF_X18_Y13_N5
\mem_d~1693\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1693feeder_combout\,
	ena => \mem_d~2622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1693_q\);

-- Location: FF_X25_Y13_N19
\mem_d~1669\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1669feeder_combout\,
	ena => \mem_d~2630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1669_q\);

-- Location: FF_X25_Y13_N25
\mem_d~1797\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1797feeder_combout\,
	ena => \mem_d~2633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1797_q\);

-- Location: FF_X26_Y12_N25
\mem_d~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~69feeder_combout\,
	ena => \mem_d~2645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~69_q\);

-- Location: FF_X19_Y12_N13
\mem_d~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~53_q\);

-- Location: LCCOMB_X19_Y12_N12
\mem_d~2424\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2424_combout\ = (\Mux13~1_combout\ & ((\mem_d~69_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~53_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~69_q\,
	datac => \mem_d~53_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2424_combout\);

-- Location: FF_X24_Y19_N5
\mem_d~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~197feeder_combout\,
	ena => \mem_d~2646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~197_q\);

-- Location: FF_X21_Y12_N13
\mem_d~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~181_q\);

-- Location: LCCOMB_X21_Y12_N12
\mem_d~2426\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2426_combout\ = (\Mux13~1_combout\ & ((\mem_d~197_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~181_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~197_q\,
	datac => \mem_d~181_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2426_combout\);

-- Location: FF_X19_Y11_N31
\mem_d~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~85feeder_combout\,
	ena => \mem_d~2639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~85_q\);

-- Location: FF_X19_Y19_N31
\mem_d~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~165feeder_combout\,
	ena => \mem_d~2650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~165_q\);

-- Location: FF_X23_Y11_N21
\mem_d~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~229feeder_combout\,
	ena => \mem_d~2661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~229_q\);

-- Location: FF_X18_Y11_N1
\mem_d~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~93feeder_combout\,
	ena => \mem_d~2638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~93_q\);

-- Location: FF_X18_Y13_N3
\mem_d~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~45feeder_combout\,
	ena => \mem_d~2647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~45_q\);

-- Location: FF_X14_Y13_N21
\mem_d~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~173feeder_combout\,
	ena => \mem_d~2648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~173_q\);

-- Location: FF_X17_Y13_N13
\mem_d~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~157_q\);

-- Location: LCCOMB_X17_Y13_N12
\mem_d~2437\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2437_combout\ = (\Mux13~1_combout\ & ((\mem_d~173_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~157_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~173_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~157_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2437_combout\);

-- Location: FF_X18_Y12_N1
\mem_d~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~141feeder_combout\,
	ena => \mem_d~2666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~141_q\);

-- Location: FF_X26_Y14_N11
\mem_d~1750\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1750feeder_combout\,
	ena => \mem_d~2610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1750_q\);

-- Location: FF_X24_Y13_N11
\mem_d~1654\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1654feeder_combout\,
	ena => \mem_d~2605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1654_q\);

-- Location: FF_X26_Y15_N17
\mem_d~1622\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1622_q\);

-- Location: LCCOMB_X26_Y15_N16
\mem_d~2446\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2446_combout\ = (\Mux2~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1654_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1622_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1654_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1622_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2446_combout\);

-- Location: FF_X25_Y18_N5
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
	ena => \mem_d~2606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1782_q\);

-- Location: LCCOMB_X25_Y18_N4
\mem_d~2447\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2447_combout\ = (\Mux2~1_combout\ & ((\mem_d~2446_combout\ & ((\mem_d~1782_q\))) # (!\mem_d~2446_combout\ & (\mem_d~1750_q\)))) # (!\Mux2~1_combout\ & (((\mem_d~2446_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1750_q\,
	datac => \mem_d~1782_q\,
	datad => \mem_d~2446_combout\,
	combout => \mem_d~2447_combout\);

-- Location: FF_X26_Y14_N21
\mem_d~1758\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2608_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1758_q\);

-- Location: FF_X24_Y11_N5
\mem_d~1662\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1662feeder_combout\,
	ena => \mem_d~2611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1662_q\);

-- Location: FF_X25_Y15_N13
\mem_d~1630\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1630_q\);

-- Location: LCCOMB_X25_Y15_N12
\mem_d~2448\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2448_combout\ = (\Mux2~1_combout\ & (\Mux12~1_combout\)) # (!\Mux2~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~1662_q\))) # (!\Mux12~1_combout\ & (\mem_d~1630_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1630_q\,
	datad => \mem_d~1662_q\,
	combout => \mem_d~2448_combout\);

-- Location: FF_X25_Y14_N15
\mem_d~1790\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1790feeder_combout\,
	ena => \mem_d~2612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1790_q\);

-- Location: LCCOMB_X26_Y14_N20
\mem_d~2449\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2449_combout\ = (\mem_d~2448_combout\ & ((\mem_d~1790_q\) # ((!\Mux2~1_combout\)))) # (!\mem_d~2448_combout\ & (((\mem_d~1758_q\ & \Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1790_q\,
	datab => \mem_d~2448_combout\,
	datac => \mem_d~1758_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2449_combout\);

-- Location: LCCOMB_X21_Y14_N30
\mem_d~2450\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2450_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~2449_combout\))) # (!\Mux14~1_combout\ & (\mem_d~2447_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2447_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux14~1_combout\,
	datad => \mem_d~2449_combout\,
	combout => \mem_d~2450_combout\);

-- Location: FF_X14_Y18_N7
\mem_d~1734\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1734feeder_combout\,
	ena => \mem_d~2618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1734_q\);

-- Location: FF_X25_Y15_N19
\mem_d~1590\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1590feeder_combout\,
	ena => \mem_d~2623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1590_q\);

-- Location: FF_X16_Y13_N9
\mem_d~1566\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1566feeder_combout\,
	ena => \mem_d~2621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1566_q\);

-- Location: FF_X16_Y17_N1
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
	ena => \mem_d~2625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1558_q\);

-- Location: LCCOMB_X16_Y17_N0
\mem_d~2455\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2455_combout\ = (\Mux14~1_combout\ & ((\mem_d~1566_q\) # ((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & (((\mem_d~1558_q\ & !\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1566_q\,
	datac => \mem_d~1558_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2455_combout\);

-- Location: FF_X17_Y18_N23
\mem_d~1598\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1598_q\);

-- Location: LCCOMB_X17_Y18_N22
\mem_d~2456\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2456_combout\ = (\mem_d~2455_combout\ & (((\mem_d~1598_q\)) # (!\Mux12~1_combout\))) # (!\mem_d~2455_combout\ & (\Mux12~1_combout\ & ((\mem_d~1590_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2455_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1598_q\,
	datad => \mem_d~1590_q\,
	combout => \mem_d~2456_combout\);

-- Location: FF_X17_Y18_N13
\mem_d~1694\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1694_q\);

-- Location: FF_X18_Y17_N5
\mem_d~1718\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1718feeder_combout\,
	ena => \mem_d~2624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1718_q\);

-- Location: FF_X18_Y17_N7
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
	ena => \mem_d~2626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1686_q\);

-- Location: LCCOMB_X18_Y17_N6
\mem_d~2457\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2457_combout\ = (\Mux12~1_combout\ & ((\mem_d~1718_q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1686_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1718_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1686_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2457_combout\);

-- Location: FF_X17_Y14_N23
\mem_d~1726\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1726feeder_combout\,
	ena => \mem_d~2628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1726_q\);

-- Location: LCCOMB_X17_Y18_N12
\mem_d~2458\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2458_combout\ = (\Mux14~1_combout\ & ((\mem_d~2457_combout\ & (\mem_d~1726_q\)) # (!\mem_d~2457_combout\ & ((\mem_d~1694_q\))))) # (!\Mux14~1_combout\ & (((\mem_d~2457_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1726_q\,
	datac => \mem_d~1694_q\,
	datad => \mem_d~2457_combout\,
	combout => \mem_d~2458_combout\);

-- Location: LCCOMB_X17_Y18_N6
\mem_d~2459\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2459_combout\ = (\Mux2~0_combout\ & ((\Mux13~1_combout\) # ((\mem_d~2456_combout\)))) # (!\Mux2~0_combout\ & (!\Mux13~1_combout\ & ((\mem_d~2458_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2456_combout\,
	datad => \mem_d~2458_combout\,
	combout => \mem_d~2459_combout\);

-- Location: FF_X25_Y13_N7
\mem_d~1670\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1670feeder_combout\,
	ena => \mem_d~2630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1670_q\);

-- Location: FF_X24_Y12_N7
\mem_d~1638\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1638feeder_combout\,
	ena => \mem_d~2631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1638_q\);

-- Location: FF_X26_Y15_N27
\mem_d~1646\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1646feeder_combout\,
	ena => \mem_d~2629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1646_q\);

-- Location: LCCOMB_X24_Y13_N26
\mem_d~2464\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2464_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1646_q\))) # (!\Mux14~1_combout\ & (\mem_d~1638_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1638_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1646_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2464_combout\);

-- Location: FF_X25_Y11_N13
\mem_d~1798\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1798feeder_combout\,
	ena => \mem_d~2633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1798_q\);

-- Location: FF_X16_Y13_N15
\mem_d~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~222feeder_combout\,
	ena => \mem_d~2640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~222_q\);

-- Location: FF_X23_Y13_N11
\mem_d~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~174feeder_combout\,
	ena => \mem_d~2648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~174_q\);

-- Location: FF_X17_Y13_N29
\mem_d~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~158_q\);

-- Location: LCCOMB_X17_Y13_N28
\mem_d~2471\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2471_combout\ = (\Mux13~1_combout\ & ((\mem_d~174_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~158_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~174_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~158_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2471_combout\);

-- Location: FF_X17_Y13_N31
\mem_d~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~238_q\);

-- Location: LCCOMB_X17_Y13_N30
\mem_d~2472\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2472_combout\ = (\Mux11~1_combout\ & ((\mem_d~2471_combout\ & ((\mem_d~238_q\))) # (!\mem_d~2471_combout\ & (\mem_d~222_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2471_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~222_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~238_q\,
	datad => \mem_d~2471_combout\,
	combout => \mem_d~2472_combout\);

-- Location: FF_X19_Y11_N1
\mem_d~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~118feeder_combout\,
	ena => \mem_d~2643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~118_q\);

-- Location: FF_X26_Y12_N7
\mem_d~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~70feeder_combout\,
	ena => \mem_d~2645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~70_q\);

-- Location: FF_X22_Y12_N7
\mem_d~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~54_q\);

-- Location: LCCOMB_X22_Y12_N6
\mem_d~2474\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2474_combout\ = (\Mux13~1_combout\ & ((\mem_d~70_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~54_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~70_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~54_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2474_combout\);

-- Location: FF_X22_Y12_N13
\mem_d~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~134_q\);

-- Location: LCCOMB_X22_Y12_N12
\mem_d~2475\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2475_combout\ = (\Mux11~1_combout\ & ((\mem_d~2474_combout\ & ((\mem_d~134_q\))) # (!\mem_d~2474_combout\ & (\mem_d~118_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2474_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~118_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~134_q\,
	datad => \mem_d~2474_combout\,
	combout => \mem_d~2475_combout\);

-- Location: LCCOMB_X22_Y12_N26
\mem_d~2476\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2476_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2475_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2475_combout\,
	combout => \mem_d~2476_combout\);

-- Location: FF_X24_Y19_N15
\mem_d~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~198feeder_combout\,
	ena => \mem_d~2646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~198_q\);

-- Location: FF_X23_Y11_N3
\mem_d~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~214feeder_combout\,
	ena => \mem_d~2637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~214_q\);

-- Location: FF_X23_Y13_N29
\mem_d~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~206feeder_combout\,
	ena => \mem_d~2652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~206_q\);

-- Location: FF_X16_Y12_N23
\mem_d~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~270_q\);

-- Location: LCCOMB_X16_Y12_N22
\mem_d~2490\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2490_combout\ = (!\Mux1~1_combout\ & ((\Mux11~1_combout\ & ((\mem_d~270_q\))) # (!\Mux11~1_combout\ & (\mem_d~206_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~206_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~270_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2490_combout\);

-- Location: FF_X24_Y11_N17
\mem_d~1663\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1663feeder_combout\,
	ena => \mem_d~2611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1663_q\);

-- Location: FF_X25_Y14_N19
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
	ena => \mem_d~2612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1791_q\);

-- Location: LCCOMB_X25_Y14_N18
\mem_d~2497\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2497_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1791_q\))) # (!\Mux2~1_combout\ & (\mem_d~1663_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1663_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1791_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2497_combout\);

-- Location: FF_X16_Y17_N31
\mem_d~1607\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1607feeder_combout\,
	ena => \mem_d~2613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1607_q\);

-- Location: FF_X14_Y18_N31
\mem_d~1735\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1735feeder_combout\,
	ena => \mem_d~2618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1735_q\);

-- Location: FF_X16_Y14_N17
\mem_d~1567\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1567feeder_combout\,
	ena => \mem_d~2621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1567_q\);

-- Location: FF_X18_Y17_N13
\mem_d~1719\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1719feeder_combout\,
	ena => \mem_d~2624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1719_q\);

-- Location: FF_X26_Y12_N5
\mem_d~1647\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1647feeder_combout\,
	ena => \mem_d~2629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1647_q\);

-- Location: FF_X25_Y13_N5
\mem_d~1671\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1671feeder_combout\,
	ena => \mem_d~2630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1671_q\);

-- Location: FF_X24_Y12_N21
\mem_d~1639\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1639_q\);

-- Location: LCCOMB_X24_Y12_N20
\mem_d~2510\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2510_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1671_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1639_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1671_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1639_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2510_combout\);

-- Location: FF_X24_Y12_N23
\mem_d~1679\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1679_q\);

-- Location: LCCOMB_X24_Y12_N22
\mem_d~2511\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2511_combout\ = (\Mux14~1_combout\ & ((\mem_d~2510_combout\ & ((\mem_d~1679_q\))) # (!\mem_d~2510_combout\ & (\mem_d~1647_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2510_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1647_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1679_q\,
	datad => \mem_d~2510_combout\,
	combout => \mem_d~2511_combout\);

-- Location: FF_X26_Y11_N9
\mem_d~1799\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1799feeder_combout\,
	ena => \mem_d~2633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1799_q\);

-- Location: FF_X26_Y16_N29
\mem_d~1775\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1775feeder_combout\,
	ena => \mem_d~2634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1775_q\);

-- Location: FF_X26_Y16_N19
\mem_d~1767\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1767_q\);

-- Location: LCCOMB_X26_Y16_N18
\mem_d~2512\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2512_combout\ = (\Mux14~1_combout\ & ((\mem_d~1775_q\) # ((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & (((\mem_d~1767_q\ & !\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1775_q\,
	datac => \mem_d~1767_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2512_combout\);

-- Location: FF_X25_Y12_N3
\mem_d~1807\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1807_q\);

-- Location: LCCOMB_X25_Y12_N2
\mem_d~2513\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2513_combout\ = (\Mux12~1_combout\ & ((\mem_d~2512_combout\ & ((\mem_d~1807_q\))) # (!\mem_d~2512_combout\ & (\mem_d~1799_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2512_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1799_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1807_q\,
	datad => \mem_d~2512_combout\,
	combout => \mem_d~2513_combout\);

-- Location: LCCOMB_X24_Y12_N28
\mem_d~2514\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2514_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2513_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2511_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2511_combout\,
	datad => \mem_d~2513_combout\,
	combout => \mem_d~2514_combout\);

-- Location: FF_X18_Y13_N9
\mem_d~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~47feeder_combout\,
	ena => \mem_d~2647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~47_q\);

-- Location: FF_X14_Y13_N11
\mem_d~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~175feeder_combout\,
	ena => \mem_d~2648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~175_q\);

-- Location: FF_X17_Y13_N7
\mem_d~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~239feeder_combout\,
	ena => \mem_d~2665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~239_q\);

-- Location: FF_X21_Y11_N17
\mem_d~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~127feeder_combout\,
	ena => \mem_d~2642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~127_q\);

-- Location: FF_X21_Y13_N11
\mem_d~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~191feeder_combout\,
	ena => \mem_d~2660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~191_q\);

-- Location: FF_X21_Y13_N17
\mem_d~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~63_q\);

-- Location: LCCOMB_X21_Y13_N16
\mem_d~2521\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2521_combout\ = (\Mux2~1_combout\ & ((\mem_d~191_q\) # ((\Mux11~1_combout\)))) # (!\Mux2~1_combout\ & (((\mem_d~63_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~191_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~63_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2521_combout\);

-- Location: FF_X21_Y11_N19
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
	ena => \mem_d~2644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~255_q\);

-- Location: LCCOMB_X21_Y11_N18
\mem_d~2522\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2522_combout\ = (\Mux11~1_combout\ & ((\mem_d~2521_combout\ & ((\mem_d~255_q\))) # (!\mem_d~2521_combout\ & (\mem_d~127_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2521_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~127_q\,
	datac => \mem_d~255_q\,
	datad => \mem_d~2521_combout\,
	combout => \mem_d~2522_combout\);

-- Location: FF_X18_Y12_N3
\mem_d~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~143feeder_combout\,
	ena => \mem_d~2666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~143_q\);

-- Location: FF_X19_Y11_N29
\mem_d~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~119feeder_combout\,
	ena => \mem_d~2643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~119_q\);

-- Location: FF_X26_Y12_N19
\mem_d~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~71feeder_combout\,
	ena => \mem_d~2645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~71_q\);

-- Location: FF_X19_Y12_N17
\mem_d~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~55_q\);

-- Location: LCCOMB_X19_Y12_N16
\mem_d~2527\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2527_combout\ = (\Mux13~1_combout\ & ((\mem_d~71_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~55_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~71_q\,
	datac => \mem_d~55_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2527_combout\);

-- Location: FF_X19_Y12_N19
\mem_d~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~135_q\);

-- Location: LCCOMB_X19_Y12_N18
\mem_d~2528\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2528_combout\ = (\mem_d~2527_combout\ & (((\mem_d~135_q\) # (!\Mux11~1_combout\)))) # (!\mem_d~2527_combout\ & (\mem_d~119_q\ & ((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~119_q\,
	datab => \mem_d~2527_combout\,
	datac => \mem_d~135_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2528_combout\);

-- Location: FF_X19_Y11_N3
\mem_d~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~87feeder_combout\,
	ena => \mem_d~2639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~87_q\);

-- Location: FF_X23_Y11_N5
\mem_d~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~231feeder_combout\,
	ena => \mem_d~2661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~231_q\);

-- Location: LCCOMB_X21_Y16_N16
\Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (!PC(7) & (!PC(6) & !PC(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datac => PC(6),
	datad => PC(5),
	combout => \Mux11~2_combout\);

-- Location: FF_X25_Y13_N3
\mem_d~1672\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1672feeder_combout\,
	ena => \mem_d~2630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1672_q\);

-- Location: FF_X24_Y11_N31
\mem_d~1664\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1664feeder_combout\,
	ena => \mem_d~2611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1664_q\);

-- Location: FF_X24_Y12_N27
\mem_d~1640\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1640feeder_combout\,
	ena => \mem_d~2631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1640_q\);

-- Location: FF_X25_Y15_N29
\mem_d~1632\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1632feeder_combout\,
	ena => \mem_d~2607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1632_q\);

-- Location: FF_X26_Y15_N7
\mem_d~1624\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1624_q\);

-- Location: LCCOMB_X26_Y15_N6
\mem_d~2539\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2539_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1632_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1624_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1632_q\,
	datac => \mem_d~1624_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2539_combout\);

-- Location: FF_X26_Y15_N25
\mem_d~1648\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1648_q\);

-- Location: LCCOMB_X26_Y15_N24
\mem_d~2540\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2540_combout\ = (\Mux13~1_combout\ & ((\mem_d~2539_combout\ & ((\mem_d~1648_q\))) # (!\mem_d~2539_combout\ & (\mem_d~1640_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2539_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1640_q\,
	datac => \mem_d~1648_q\,
	datad => \mem_d~2539_combout\,
	combout => \mem_d~2540_combout\);

-- Location: FF_X25_Y13_N13
\mem_d~1800\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1800feeder_combout\,
	ena => \mem_d~2633_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1800_q\);

-- Location: FF_X25_Y14_N17
\mem_d~1792\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1792feeder_combout\,
	ena => \mem_d~2612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1792_q\);

-- Location: FF_X25_Y14_N7
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
	ena => \mem_d~2606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1784_q\);

-- Location: LCCOMB_X25_Y14_N6
\mem_d~2542\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2542_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1792_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1784_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1792_q\,
	datac => \mem_d~1784_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2542_combout\);

-- Location: FF_X25_Y12_N5
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
	ena => \mem_d~2636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1808_q\);

-- Location: LCCOMB_X25_Y12_N4
\mem_d~2543\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2543_combout\ = (\Mux13~1_combout\ & ((\mem_d~2542_combout\ & ((\mem_d~1808_q\))) # (!\mem_d~2542_combout\ & (\mem_d~1800_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2542_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1800_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1808_q\,
	datad => \mem_d~2542_combout\,
	combout => \mem_d~2543_combout\);

-- Location: FF_X17_Y18_N17
\mem_d~1696\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1696feeder_combout\,
	ena => \mem_d~2622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1696_q\);

-- Location: FF_X16_Y14_N23
\mem_d~1568\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1568feeder_combout\,
	ena => \mem_d~2621_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1568_q\);

-- Location: FF_X19_Y17_N31
\mem_d~1592\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1592_q\);

-- Location: FF_X14_Y18_N13
\mem_d~1736\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1736feeder_combout\,
	ena => \mem_d~2618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1736_q\);

-- Location: FF_X19_Y11_N13
\mem_d~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~120feeder_combout\,
	ena => \mem_d~2643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~120_q\);

-- Location: FF_X22_Y11_N7
\mem_d~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~248feeder_combout\,
	ena => \mem_d~2641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~248_q\);

-- Location: FF_X19_Y11_N11
\mem_d~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~88feeder_combout\,
	ena => \mem_d~2639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~88_q\);

-- Location: FF_X14_Y16_N1
\mem_d~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~216feeder_combout\,
	ena => \mem_d~2637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~216_q\);

-- Location: FF_X22_Y13_N21
\mem_d~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~80feeder_combout\,
	ena => \mem_d~2651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~80_q\);

-- Location: FF_X18_Y12_N29
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
	ena => \mem_d~2666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~144_q\);

-- Location: LCCOMB_X18_Y12_N28
\mem_d~2567\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2567_combout\ = (!\Mux1~1_combout\ & ((\Mux11~1_combout\ & (\mem_d~144_q\)) # (!\Mux11~1_combout\ & ((\mem_d~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~144_q\,
	datad => \mem_d~80_q\,
	combout => \mem_d~2567_combout\);

-- Location: FF_X21_Y13_N7
\mem_d~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~192feeder_combout\,
	ena => \mem_d~2660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~192_q\);

-- Location: FF_X17_Y11_N11
\mem_d~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~256_q\);

-- Location: LCCOMB_X17_Y11_N10
\mem_d~2568\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2568_combout\ = (!\Mux1~1_combout\ & ((\Mux11~1_combout\ & (\mem_d~256_q\)) # (!\Mux11~1_combout\ & ((\mem_d~192_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~256_q\,
	datad => \mem_d~192_q\,
	combout => \mem_d~2568_combout\);

-- Location: FF_X22_Y11_N29
\mem_d~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~64feeder_combout\,
	ena => \mem_d~2659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~64_q\);

-- Location: FF_X21_Y11_N9
\mem_d~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~128_q\);

-- Location: LCCOMB_X21_Y11_N8
\mem_d~2569\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2569_combout\ = (!\Mux1~1_combout\ & ((\Mux11~1_combout\ & ((\mem_d~128_q\))) # (!\Mux11~1_combout\ & (\mem_d~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~64_q\,
	datac => \mem_d~128_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2569_combout\);

-- Location: LCCOMB_X17_Y11_N12
\mem_d~2570\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2570_combout\ = (\Mux13~1_combout\ & (\Mux2~1_combout\)) # (!\Mux13~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2568_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2569_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2569_combout\,
	datad => \mem_d~2568_combout\,
	combout => \mem_d~2570_combout\);

-- Location: FF_X23_Y13_N21
\mem_d~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~208feeder_combout\,
	ena => \mem_d~2652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~208_q\);

-- Location: FF_X17_Y11_N3
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
	ena => \mem_d~2668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~272_q\);

-- Location: LCCOMB_X17_Y11_N2
\mem_d~2571\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2571_combout\ = (!\Mux1~1_combout\ & ((\Mux11~1_combout\ & (\mem_d~272_q\)) # (!\Mux11~1_combout\ & ((\mem_d~208_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~272_q\,
	datad => \mem_d~208_q\,
	combout => \mem_d~2571_combout\);

-- Location: LCCOMB_X17_Y11_N4
\mem_d~2572\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2572_combout\ = (\Mux13~1_combout\ & ((\mem_d~2570_combout\ & (\mem_d~2571_combout\)) # (!\mem_d~2570_combout\ & ((\mem_d~2567_combout\))))) # (!\Mux13~1_combout\ & (((\mem_d~2570_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~2571_combout\,
	datac => \mem_d~2567_combout\,
	datad => \mem_d~2570_combout\,
	combout => \mem_d~2572_combout\);

-- Location: FF_X18_Y11_N15
\mem_d~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~96feeder_combout\,
	ena => \mem_d~2638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~96_q\);

-- Location: FF_X16_Y13_N27
\mem_d~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~224feeder_combout\,
	ena => \mem_d~2640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~224_q\);

-- Location: FF_X14_Y13_N5
\mem_d~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~176feeder_combout\,
	ena => \mem_d~2648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~176_q\);

-- Location: LCCOMB_X24_Y17_N30
\Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (!\Mux0~1_combout\ & (\Mux29~1_combout\ & (!\Mux28~1_combout\ & \Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux11~1_combout\,
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X24_Y18_N6
\Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (!\Mux29~1_combout\ & (\Mux11~1_combout\ & (\Mux28~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X24_Y18_N8
\Mux37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & ((\regs[5][0]~q\))) # (!\Mux29~1_combout\ & (\regs[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][0]~q\,
	datab => \regs[5][0]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X18_Y16_N10
\Mux37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (\Mux37~2_combout\ & (((\regs[7][0]~q\) # (!\Mux28~1_combout\)))) # (!\Mux37~2_combout\ & (\regs[6][0]~q\ & ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~2_combout\,
	datab => \regs[6][0]~q\,
	datac => \regs[7][0]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X18_Y16_N18
\Mux36~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[1][1]~q\)) # (!\Mux29~1_combout\ & ((\regs[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][1]~q\,
	datab => \Mux28~1_combout\,
	datac => \regs[0][1]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X18_Y16_N12
\Mux36~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~5_combout\ = (\Mux36~4_combout\ & ((\regs[3][1]~q\) # ((!\Mux28~1_combout\)))) # (!\Mux36~4_combout\ & (((\regs[2][1]~q\ & \Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][1]~q\,
	datab => \Mux36~4_combout\,
	datac => \regs[2][1]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux36~5_combout\);

-- Location: LCCOMB_X23_Y16_N12
\Mult1|auto_generated|le3a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(2) = LCELL((\Mux14~1_combout\ & (\Mux13~1_combout\ $ ((\Mux8~6_combout\)))) # (!\Mux14~1_combout\ & (\Mux13~1_combout\ & ((!\Mux9~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mult1|auto_generated|le3a\(2));

-- Location: LCCOMB_X22_Y18_N14
\Mult1|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(0) = LCELL(\Mult1|auto_generated|cs1a[1]~8_combout\ $ (((\Mux10~6_combout\ & \Mult1|auto_generated|cs2a[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datac => \Mult1|auto_generated|cs2a[1]~0_combout\,
	datad => \Mult1|auto_generated|cs1a[1]~8_combout\,
	combout => \Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X23_Y15_N12
\Mux35~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~7_combout\ = (\Mux28~1_combout\ & ((\regs[14][2]~q\) # ((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & (((\regs[12][2]~q\ & !\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][2]~q\,
	datab => \Mux28~1_combout\,
	datac => \regs[12][2]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux35~7_combout\);

-- Location: LCCOMB_X23_Y15_N14
\Mux35~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~8_combout\ = (\Mux35~7_combout\ & (((\regs[15][2]~q\)) # (!\Mux29~1_combout\))) # (!\Mux35~7_combout\ & (\Mux29~1_combout\ & ((\regs[13][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~7_combout\,
	datab => \Mux29~1_combout\,
	datac => \regs[15][2]~q\,
	datad => \regs[13][2]~q\,
	combout => \Mux35~8_combout\);

-- Location: LCCOMB_X23_Y16_N30
\Mult1|auto_generated|le3a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(3) = LCELL((\Mux14~1_combout\ & (\Mux13~1_combout\ $ ((\Mux7~6_combout\)))) # (!\Mux14~1_combout\ & (\Mux13~1_combout\ & ((!\Mux8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mult1|auto_generated|le3a\(3));

-- Location: LCCOMB_X22_Y14_N20
\Mux34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][3]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][3]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[8][3]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\Mux34~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux29~1_combout\ & ((\Mux34~0_combout\ & ((\regs[11][3]~q\))) # (!\Mux34~0_combout\ & (\regs[9][3]~q\)))) # (!\Mux29~1_combout\ & (((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[9][3]~q\,
	datac => \Mux34~0_combout\,
	datad => \regs[11][3]~q\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X24_Y18_N20
\Mux34~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[5][3]~q\)) # (!\Mux29~1_combout\ & ((\regs[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][3]~q\,
	datab => \regs[4][3]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X19_Y16_N26
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

-- Location: LCCOMB_X19_Y16_N12
\Mux34~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\Mux29~1_combout\ & ((\regs[1][3]~q\) # ((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (((\regs[0][3]~q\ & !\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][3]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[0][3]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X19_Y16_N10
\Mux34~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (\Mux34~4_combout\ & (((\regs[3][3]~q\)) # (!\Mux28~1_combout\))) # (!\Mux34~4_combout\ & (\Mux28~1_combout\ & ((\regs[2][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~4_combout\,
	datab => \Mux28~1_combout\,
	datac => \regs[3][3]~q\,
	datad => \regs[2][3]~q\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X19_Y16_N30
\Mux34~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~6_combout\ = (\Mux11~1_combout\ & ((\Mux34~3_combout\) # ((\Mux0~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux34~5_combout\ & !\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~3_combout\,
	datab => \Mux34~5_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux34~6_combout\);

-- Location: LCCOMB_X24_Y16_N4
\Mux34~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~7_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[14][3]~q\)) # (!\Mux28~1_combout\ & ((\regs[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[14][3]~q\,
	datac => \regs[12][3]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux34~7_combout\);

-- Location: LCCOMB_X24_Y16_N8
\Mux34~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~8_combout\ = (\Mux29~1_combout\ & ((\Mux34~7_combout\ & (\regs[15][3]~q\)) # (!\Mux34~7_combout\ & ((\regs[13][3]~q\))))) # (!\Mux29~1_combout\ & (\Mux34~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux34~7_combout\,
	datac => \regs[15][3]~q\,
	datad => \regs[13][3]~q\,
	combout => \Mux34~8_combout\);

-- Location: LCCOMB_X25_Y15_N16
\Mux34~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux34~9_combout\ = (\Mux0~1_combout\ & ((\Mux34~6_combout\ & ((\Mux34~8_combout\))) # (!\Mux34~6_combout\ & (\Mux34~1_combout\)))) # (!\Mux0~1_combout\ & (((\Mux34~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux34~1_combout\,
	datac => \Mux34~6_combout\,
	datad => \Mux34~8_combout\,
	combout => \Mux34~9_combout\);

-- Location: LCCOMB_X22_Y18_N6
\Mult1|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(2) = LCELL((\Mult1|auto_generated|cs2a[1]~0_combout\ & (\Mult1|auto_generated|cs1a[1]~8_combout\ $ ((\Mux8~6_combout\)))) # (!\Mult1|auto_generated|cs2a[1]~0_combout\ & (\Mult1|auto_generated|cs1a[1]~8_combout\ & 
-- ((!\Mux9~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|cs1a[1]~8_combout\,
	datab => \Mult1|auto_generated|cs2a[1]~0_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mult1|auto_generated|le4a\(2));

-- Location: LCCOMB_X24_Y17_N28
\Mux33~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[5][4]~q\)) # (!\Mux29~1_combout\ & ((\regs[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][4]~q\,
	datab => \regs[4][4]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X24_Y17_N2
\Mux33~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux28~1_combout\ & ((\Mux33~2_combout\ & ((\regs[7][4]~q\))) # (!\Mux33~2_combout\ & (\regs[6][4]~q\)))) # (!\Mux28~1_combout\ & (((\Mux33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][4]~q\,
	datab => \regs[7][4]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux33~2_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X24_Y15_N6
\Mux33~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~7_combout\ = (\Mux28~1_combout\ & ((\regs[14][4]~q\) # ((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & (((!\Mux29~1_combout\ & \regs[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][4]~q\,
	datab => \Mux28~1_combout\,
	datac => \Mux29~1_combout\,
	datad => \regs[12][4]~q\,
	combout => \Mux33~7_combout\);

-- Location: LCCOMB_X24_Y18_N30
\Mux32~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & ((\regs[5][5]~q\))) # (!\Mux29~1_combout\ & (\regs[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][5]~q\,
	datab => \regs[5][5]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Mux32~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~7_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[14][5]~q\)) # (!\Mux28~1_combout\ & ((\regs[12][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][5]~q\,
	datab => \regs[12][5]~q\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux32~7_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Mux32~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~8_combout\ = (\Mux32~7_combout\ & ((\regs[15][5]~q\) # ((!\Mux29~1_combout\)))) # (!\Mux32~7_combout\ & (((\Mux29~1_combout\ & \regs[13][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~7_combout\,
	datab => \regs[15][5]~q\,
	datac => \Mux29~1_combout\,
	datad => \regs[13][5]~q\,
	combout => \Mux32~8_combout\);

-- Location: LCCOMB_X23_Y16_N26
\Mult1|auto_generated|le3a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(5) = LCELL((\Mux14~1_combout\ & (\Mux13~1_combout\ $ (((\Mux5~6_combout\))))) # (!\Mux14~1_combout\ & (\Mux13~1_combout\ & (!\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux6~6_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mult1|auto_generated|le3a\(5));

-- Location: LCCOMB_X19_Y16_N18
\Mult1|auto_generated|le3a[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(6) = LCELL((\Mux14~1_combout\ & (\Mux13~1_combout\ $ ((\Mux4~7_combout\)))) # (!\Mux14~1_combout\ & (\Mux13~1_combout\ & ((!\Mux5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux4~7_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mult1|auto_generated|le3a\(6));

-- Location: LCCOMB_X23_Y19_N0
\Mult1|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(2) = LCELL((\Mux8~6_combout\ & ((\Mux11~1_combout\) # ((\Mux12~1_combout\ & \Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux8~6_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mult1|auto_generated|le5a\(2));

-- Location: LCCOMB_X21_Y19_N28
\Mux30~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\Mux28~1_combout\ & (((\regs[14][7]~q\) # (\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & (\regs[12][7]~q\ & ((!\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][7]~q\,
	datab => \regs[14][7]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X21_Y19_N14
\Mux30~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\Mux29~1_combout\ & ((\Mux30~7_combout\ & ((\regs[15][7]~q\))) # (!\Mux30~7_combout\ & (\regs[13][7]~q\)))) # (!\Mux29~1_combout\ & (\Mux30~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux30~7_combout\,
	datac => \regs[13][7]~q\,
	datad => \regs[15][7]~q\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X19_Y17_N30
\Add4~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~29_combout\ = (\desvio~0_combout\ & ((!\Mux13~0_combout\) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux13~0_combout\,
	datad => \desvio~0_combout\,
	combout => \Add4~29_combout\);

-- Location: LCCOMB_X22_Y17_N22
\PC~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~20_combout\ = (\PC[7]~12_combout\ & (((\Add4~27_combout\)))) # (!\PC[7]~12_combout\ & (((\Mux0~0_combout\)) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \PC[7]~12_combout\,
	datad => \Add4~27_combout\,
	combout => \PC~20_combout\);

-- Location: LCCOMB_X18_Y15_N14
\mem_d~2601\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2601_combout\ = (\Mux0~0_combout\ & (\mem_d~2374_combout\)) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & ((\mem_d~2399_combout\))) # (!\Mux167~0_combout\ & (\mem_d~2374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2374_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2399_combout\,
	combout => \mem_d~2601_combout\);

-- Location: LCCOMB_X17_Y12_N22
\mem_d~2621\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2621_combout\ = (\Mux2~0_combout\ & (\mem_d~2589_combout\ & (\Mux167~0_combout\ & \mem_d~2581_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mem_d~2589_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2581_combout\,
	combout => \mem_d~2621_combout\);

-- Location: LCCOMB_X23_Y12_N28
\mem_d~2633\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2633_combout\ = (\mem_d~2581_combout\ & (\mem_d~2594_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2581_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2594_combout\,
	combout => \mem_d~2633_combout\);

-- Location: LCCOMB_X17_Y15_N0
\mem_d~2669\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2669_combout\ = !\Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~2669_combout\);

-- Location: LCCOMB_X19_Y13_N0
\mem_d~2670\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2670_combout\ = !\Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~2670_combout\);

-- Location: LCCOMB_X17_Y15_N10
\mem_d~2671\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2671_combout\ = !\Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~2671_combout\);

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

-- Location: LCCOMB_X21_Y14_N2
\regs[14][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[14][5]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N26
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

-- Location: LCCOMB_X24_Y18_N14
\regs[5][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[5][5]~feeder_combout\);

-- Location: LCCOMB_X26_Y15_N20
\mem_d~1617feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1617feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1617feeder_combout\);

-- Location: LCCOMB_X26_Y15_N14
\mem_d~1641feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1641feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1641feeder_combout\);

-- Location: LCCOMB_X26_Y16_N16
\mem_d~1769feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1769feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~1769feeder_combout\);

-- Location: LCCOMB_X18_Y11_N16
\mem_d~89feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~89feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~89feeder_combout\);

-- Location: LCCOMB_X21_Y11_N4
\mem_d~121feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~121feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~121feeder_combout\);

-- Location: LCCOMB_X22_Y13_N12
\mem_d~73feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~73feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~73feeder_combout\);

-- Location: LCCOMB_X25_Y13_N8
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

-- Location: LCCOMB_X25_Y13_N30
\mem_d~1793feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1793feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1793feeder_combout\);

-- Location: LCCOMB_X24_Y11_N0
\mem_d~1657feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1657feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~1657feeder_combout\);

-- Location: LCCOMB_X18_Y12_N16
\mem_d~97feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~97feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~97feeder_combout\);

-- Location: LCCOMB_X18_Y12_N22
\mem_d~137feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~137feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~137feeder_combout\);

-- Location: LCCOMB_X18_Y13_N6
\mem_d~41feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~41feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~41feeder_combout\);

-- Location: LCCOMB_X25_Y15_N20
\mem_d~1625feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1625feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1625feeder_combout\);

-- Location: LCCOMB_X16_Y17_N4
\mem_d~1601feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1601feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1601feeder_combout\);

-- Location: LCCOMB_X16_Y17_N10
\mem_d~1553feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1553feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1553feeder_combout\);

-- Location: LCCOMB_X16_Y14_N28
\mem_d~1561feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1561feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1561feeder_combout\);

-- Location: LCCOMB_X14_Y18_N16
\mem_d~1729feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1729feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1729feeder_combout\);

-- Location: LCCOMB_X26_Y14_N16
\mem_d~1754feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1754feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1754feeder_combout\);

-- Location: LCCOMB_X24_Y19_N20
\mem_d~66feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~66feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~66feeder_combout\);

-- Location: LCCOMB_X17_Y16_N20
\mem_d~1578feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1578feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1578feeder_combout\);

-- Location: LCCOMB_X24_Y11_N14
\mem_d~1658feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1658feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1658feeder_combout\);

-- Location: LCCOMB_X24_Y12_N16
\mem_d~1634feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1634feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1634feeder_combout\);

-- Location: LCCOMB_X22_Y11_N10
\mem_d~242feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~242feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~242feeder_combout\);

-- Location: LCCOMB_X19_Y19_N0
\mem_d~146feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~146feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~146feeder_combout\);

-- Location: LCCOMB_X25_Y14_N30
\mem_d~1786feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1786feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1786feeder_combout\);

-- Location: LCCOMB_X25_Y13_N10
\mem_d~1794feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1794feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1794feeder_combout\);

-- Location: LCCOMB_X26_Y13_N12
\mem_d~1650feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1650feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1650feeder_combout\);

-- Location: LCCOMB_X22_Y13_N24
\mem_d~74feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~74feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~74feeder_combout\);

-- Location: LCCOMB_X21_Y11_N0
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

-- Location: LCCOMB_X21_Y11_N6
\mem_d~250feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~250feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~250feeder_combout\);

-- Location: LCCOMB_X21_Y13_N12
\mem_d~186feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~186feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~186feeder_combout\);

-- Location: LCCOMB_X21_Y12_N6
\mem_d~178feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~178feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~178feeder_combout\);

-- Location: LCCOMB_X19_Y13_N26
\mem_d~26feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~26feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~26feeder_combout\);

-- Location: LCCOMB_X19_Y13_N28
\mem_d~106feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~106feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~106feeder_combout\);

-- Location: LCCOMB_X17_Y13_N14
\mem_d~154feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~154feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~154feeder_combout\);

-- Location: LCCOMB_X17_Y13_N8
\mem_d~234feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~234feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~234feeder_combout\);

-- Location: LCCOMB_X16_Y13_N6
\mem_d~218feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~218feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~218feeder_combout\);

-- Location: LCCOMB_X19_Y11_N16
\mem_d~82feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~82feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~82feeder_combout\);

-- Location: LCCOMB_X19_Y11_N14
\mem_d~114feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~114feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~114feeder_combout\);

-- Location: LCCOMB_X18_Y11_N4
\mem_d~90feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~90feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~90feeder_combout\);

-- Location: LCCOMB_X16_Y14_N12
\mem_d~1594feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1594feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1594feeder_combout\);

-- Location: LCCOMB_X17_Y17_N14
\mem_d~1698feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1698feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1698feeder_combout\);

-- Location: LCCOMB_X16_Y16_N16
\mem_d~1610feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1610feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1610feeder_combout\);

-- Location: LCCOMB_X24_Y19_N30
\mem_d~67feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~67feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~67feeder_combout\);

-- Location: LCCOMB_X17_Y17_N12
\mem_d~1699feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1699feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1699feeder_combout\);

-- Location: LCCOMB_X16_Y17_N8
\mem_d~1555feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1555feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1555feeder_combout\);

-- Location: LCCOMB_X25_Y15_N8
\mem_d~1627feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1627feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1627feeder_combout\);

-- Location: LCCOMB_X21_Y11_N12
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

-- Location: LCCOMB_X25_Y13_N16
\mem_d~1667feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1667feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1667feeder_combout\);

-- Location: LCCOMB_X19_Y12_N2
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

-- Location: LCCOMB_X19_Y12_N20
\mem_d~51feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~51feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~51feeder_combout\);

-- Location: LCCOMB_X21_Y12_N30
\mem_d~179feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~179feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~179feeder_combout\);

-- Location: LCCOMB_X19_Y13_N30
\mem_d~107feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~107feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~107feeder_combout\);

-- Location: LCCOMB_X16_Y13_N0
\mem_d~1563feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1563feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1563feeder_combout\);

-- Location: LCCOMB_X17_Y15_N28
\mem_d~35feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~35feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~35feeder_combout\);

-- Location: LCCOMB_X24_Y13_N24
\mem_d~1651feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1651feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1651feeder_combout\);

-- Location: LCCOMB_X23_Y12_N24
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

-- Location: LCCOMB_X25_Y15_N2
\mem_d~1588feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1588feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1588feeder_combout\);

-- Location: LCCOMB_X21_Y11_N28
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

-- Location: LCCOMB_X25_Y18_N24
\mem_d~1780feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1780feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1780feeder_combout\);

-- Location: LCCOMB_X26_Y17_N20
\mem_d~1660feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1660feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1660feeder_combout\);

-- Location: LCCOMB_X26_Y16_N10
\mem_d~1764feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1764feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1764feeder_combout\);

-- Location: LCCOMB_X21_Y12_N22
\mem_d~180feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~180feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~180feeder_combout\);

-- Location: LCCOMB_X21_Y12_N4
\mem_d~260feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~260feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~260feeder_combout\);

-- Location: LCCOMB_X24_Y12_N12
\mem_d~1636feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1636feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1636feeder_combout\);

-- Location: LCCOMB_X25_Y14_N20
\mem_d~1788feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1788feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1788feeder_combout\);

-- Location: LCCOMB_X25_Y13_N20
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

-- Location: LCCOMB_X26_Y13_N0
\mem_d~1652feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1652feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1652feeder_combout\);

-- Location: LCCOMB_X25_Y11_N0
\mem_d~1796feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1796feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1796feeder_combout\);

-- Location: LCCOMB_X23_Y13_N12
\mem_d~172feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~172feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~172feeder_combout\);

-- Location: LCCOMB_X23_Y11_N12
\mem_d~228feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~228feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~228feeder_combout\);

-- Location: LCCOMB_X18_Y17_N26
\mem_d~1716feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1716feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1716feeder_combout\);

-- Location: LCCOMB_X18_Y17_N16
\mem_d~1684feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1684feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1684feeder_combout\);

-- Location: LCCOMB_X17_Y17_N4
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

-- Location: LCCOMB_X19_Y19_N24
\mem_d~164feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~164feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~164feeder_combout\);

-- Location: LCCOMB_X18_Y12_N26
\mem_d~100feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~100feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~100feeder_combout\);

-- Location: LCCOMB_X19_Y13_N8
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

-- Location: LCCOMB_X16_Y16_N10
\mem_d~1612feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1612feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1612feeder_combout\);

-- Location: LCCOMB_X17_Y15_N12
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

-- Location: LCCOMB_X19_Y11_N20
\mem_d~116feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~116feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~116feeder_combout\);

-- Location: LCCOMB_X19_Y12_N10
\mem_d~52feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~52feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~52feeder_combout\);

-- Location: LCCOMB_X18_Y13_N18
\mem_d~44feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~44feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~44feeder_combout\);

-- Location: LCCOMB_X17_Y13_N0
\mem_d~156feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~156feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~156feeder_combout\);

-- Location: LCCOMB_X17_Y13_N18
\mem_d~236feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~236feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~236feeder_combout\);

-- Location: LCCOMB_X16_Y17_N26
\mem_d~1556feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1556feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1556feeder_combout\);

-- Location: LCCOMB_X16_Y13_N12
\mem_d~220feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~220feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~220feeder_combout\);

-- Location: LCCOMB_X16_Y12_N0
\mem_d~140feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~140feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~140feeder_combout\);

-- Location: LCCOMB_X14_Y17_N20
\mem_d~1580feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1580feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux34~9_combout\,
	combout => \mem_d~1580feeder_combout\);

-- Location: LCCOMB_X14_Y18_N24
\mem_d~1732feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1732feeder_combout\ = \Mux34~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux34~9_combout\,
	combout => \mem_d~1732feeder_combout\);

-- Location: LCCOMB_X25_Y15_N24
\mem_d~1629feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1629feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~1629feeder_combout\);

-- Location: LCCOMB_X18_Y11_N0
\mem_d~93feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~93feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~93feeder_combout\);

-- Location: LCCOMB_X19_Y11_N30
\mem_d~85feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~85feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~85feeder_combout\);

-- Location: LCCOMB_X24_Y19_N4
\mem_d~197feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~197feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~197feeder_combout\);

-- Location: LCCOMB_X25_Y13_N18
\mem_d~1669feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1669feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~1669feeder_combout\);

-- Location: LCCOMB_X25_Y13_N24
\mem_d~1797feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1797feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~1797feeder_combout\);

-- Location: LCCOMB_X26_Y13_N10
\mem_d~1621feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1621feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1621feeder_combout\);

-- Location: LCCOMB_X26_Y12_N24
\mem_d~69feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~69feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~69feeder_combout\);

-- Location: LCCOMB_X24_Y11_N2
\mem_d~1661feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1661feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1661feeder_combout\);

-- Location: LCCOMB_X23_Y11_N20
\mem_d~229feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~229feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~229feeder_combout\);

-- Location: LCCOMB_X16_Y14_N26
\mem_d~1565feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1565feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1565feeder_combout\);

-- Location: LCCOMB_X18_Y12_N0
\mem_d~141feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~141feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~141feeder_combout\);

-- Location: LCCOMB_X18_Y13_N4
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

-- Location: LCCOMB_X18_Y13_N2
\mem_d~45feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~45feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~45feeder_combout\);

-- Location: LCCOMB_X19_Y19_N30
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

-- Location: LCCOMB_X14_Y13_N20
\mem_d~173feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~173feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~173feeder_combout\);

-- Location: LCCOMB_X25_Y13_N6
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

-- Location: LCCOMB_X24_Y13_N10
\mem_d~1654feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1654feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1654feeder_combout\);

-- Location: LCCOMB_X24_Y12_N6
\mem_d~1638feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1638feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1638feeder_combout\);

-- Location: LCCOMB_X24_Y11_N4
\mem_d~1662feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1662feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~1662feeder_combout\);

-- Location: LCCOMB_X26_Y12_N6
\mem_d~70feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~70feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~70feeder_combout\);

-- Location: LCCOMB_X25_Y15_N18
\mem_d~1590feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1590feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1590feeder_combout\);

-- Location: LCCOMB_X26_Y15_N26
\mem_d~1646feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1646feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~1646feeder_combout\);

-- Location: LCCOMB_X26_Y14_N10
\mem_d~1750feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1750feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1750feeder_combout\);

-- Location: LCCOMB_X18_Y17_N4
\mem_d~1718feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1718feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1718feeder_combout\);

-- Location: LCCOMB_X24_Y19_N14
\mem_d~198feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~198feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~198feeder_combout\);

-- Location: LCCOMB_X25_Y14_N14
\mem_d~1790feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1790feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1790feeder_combout\);

-- Location: LCCOMB_X23_Y13_N10
\mem_d~174feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~174feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~174feeder_combout\);

-- Location: LCCOMB_X23_Y13_N28
\mem_d~206feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~206feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~206feeder_combout\);

-- Location: LCCOMB_X19_Y11_N0
\mem_d~118feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~118feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~118feeder_combout\);

-- Location: LCCOMB_X23_Y11_N2
\mem_d~214feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~214feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~214feeder_combout\);

-- Location: LCCOMB_X25_Y11_N12
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

-- Location: LCCOMB_X17_Y14_N22
\mem_d~1726feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1726feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1726feeder_combout\);

-- Location: LCCOMB_X16_Y13_N14
\mem_d~222feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~222feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~222feeder_combout\);

-- Location: LCCOMB_X16_Y13_N8
\mem_d~1566feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1566feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~1566feeder_combout\);

-- Location: LCCOMB_X14_Y18_N6
\mem_d~1734feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1734feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1734feeder_combout\);

-- Location: LCCOMB_X25_Y13_N4
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

-- Location: LCCOMB_X24_Y11_N16
\mem_d~1663feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1663feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1663feeder_combout\);

-- Location: LCCOMB_X19_Y11_N2
\mem_d~87feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~87feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~87feeder_combout\);

-- Location: LCCOMB_X19_Y11_N28
\mem_d~119feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~119feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~119feeder_combout\);

-- Location: LCCOMB_X23_Y11_N4
\mem_d~231feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~231feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~231feeder_combout\);

-- Location: LCCOMB_X26_Y11_N8
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

-- Location: LCCOMB_X26_Y12_N4
\mem_d~1647feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1647feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~1647feeder_combout\);

-- Location: LCCOMB_X26_Y12_N18
\mem_d~71feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~71feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~71feeder_combout\);

-- Location: LCCOMB_X21_Y11_N16
\mem_d~127feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~127feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~127feeder_combout\);

-- Location: LCCOMB_X21_Y13_N10
\mem_d~191feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~191feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~191feeder_combout\);

-- Location: LCCOMB_X18_Y13_N8
\mem_d~47feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~47feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~47feeder_combout\);

-- Location: LCCOMB_X18_Y12_N2
\mem_d~143feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~143feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~143feeder_combout\);

-- Location: LCCOMB_X16_Y14_N16
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

-- Location: LCCOMB_X17_Y13_N6
\mem_d~239feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~239feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~239feeder_combout\);

-- Location: LCCOMB_X14_Y18_N30
\mem_d~1735feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1735feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1735feeder_combout\);

-- Location: LCCOMB_X14_Y13_N10
\mem_d~175feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~175feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~175feeder_combout\);

-- Location: LCCOMB_X18_Y17_N12
\mem_d~1719feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1719feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1719feeder_combout\);

-- Location: LCCOMB_X16_Y17_N30
\mem_d~1607feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1607feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1607feeder_combout\);

-- Location: LCCOMB_X26_Y16_N28
\mem_d~1775feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1775feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1775feeder_combout\);

-- Location: LCCOMB_X25_Y13_N2
\mem_d~1672feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1672feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~1672feeder_combout\);

-- Location: LCCOMB_X25_Y13_N12
\mem_d~1800feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1800feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~1800feeder_combout\);

-- Location: LCCOMB_X24_Y12_N26
\mem_d~1640feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1640feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~1640feeder_combout\);

-- Location: LCCOMB_X25_Y14_N16
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

-- Location: LCCOMB_X22_Y13_N20
\mem_d~80feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~80feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~80feeder_combout\);

-- Location: LCCOMB_X23_Y13_N20
\mem_d~208feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~208feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~208feeder_combout\);

-- Location: LCCOMB_X24_Y11_N30
\mem_d~1664feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1664feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~1664feeder_combout\);

-- Location: LCCOMB_X25_Y15_N28
\mem_d~1632feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1632feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~1632feeder_combout\);

-- Location: LCCOMB_X21_Y13_N6
\mem_d~192feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~192feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~192feeder_combout\);

-- Location: LCCOMB_X16_Y13_N26
\mem_d~224feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~224feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~224feeder_combout\);

-- Location: LCCOMB_X14_Y13_N4
\mem_d~176feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~176feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~176feeder_combout\);

-- Location: LCCOMB_X14_Y18_N12
\mem_d~1736feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1736feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1736feeder_combout\);

-- Location: LCCOMB_X14_Y16_N0
\mem_d~216feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~216feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~216feeder_combout\);

-- Location: LCCOMB_X16_Y14_N22
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

-- Location: LCCOMB_X22_Y11_N6
\mem_d~248feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~248feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~248feeder_combout\);

-- Location: LCCOMB_X22_Y11_N28
\mem_d~64feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~64feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~64feeder_combout\);

-- Location: LCCOMB_X18_Y11_N14
\mem_d~96feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~96feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~96feeder_combout\);

-- Location: LCCOMB_X19_Y11_N10
\mem_d~88feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~88feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~88feeder_combout\);

-- Location: LCCOMB_X19_Y11_N12
\mem_d~120feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~120feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~120feeder_combout\);

-- Location: LCCOMB_X17_Y18_N16
\mem_d~1696feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1696feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~1696feeder_combout\);

-- Location: LCCOMB_X21_Y18_N10
\regs[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][0]~feeder_combout\ = \Mux46~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux46~6_combout\,
	combout => \regs[6][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N22
\regs[4][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][0]~feeder_combout\ = \Mux46~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux46~6_combout\,
	combout => \regs[4][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N26
\regs[4][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][2]~feeder_combout\ = \Mux44~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux44~6_combout\,
	combout => \regs[4][2]~feeder_combout\);

-- Location: LCCOMB_X24_Y15_N12
\regs[12][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][2]~feeder_combout\ = \Mux44~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux44~6_combout\,
	combout => \regs[12][2]~feeder_combout\);

-- Location: LCCOMB_X25_Y16_N24
\regs[6][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][3]~feeder_combout\ = \Mux43~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~6_combout\,
	combout => \regs[6][3]~feeder_combout\);

-- Location: LCCOMB_X23_Y14_N4
\regs[9][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][3]~feeder_combout\ = \Mux43~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux43~6_combout\,
	combout => \regs[9][3]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N12
\regs[5][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][3]~feeder_combout\ = \Mux43~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~6_combout\,
	combout => \regs[5][3]~feeder_combout\);

-- Location: LCCOMB_X24_Y17_N26
\regs[5][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][4]~feeder_combout\ = \Mux42~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux42~6_combout\,
	combout => \regs[5][4]~feeder_combout\);

-- Location: LCCOMB_X25_Y17_N22
\regs[4][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][4]~feeder_combout\ = \Mux42~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux42~6_combout\,
	combout => \regs[4][4]~feeder_combout\);

-- Location: LCCOMB_X25_Y16_N26
\regs[6][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][4]~feeder_combout\ = \Mux42~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux42~6_combout\,
	combout => \regs[6][4]~feeder_combout\);

-- Location: LCCOMB_X21_Y19_N12
\regs[8][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][7]~feeder_combout\ = \Mux39~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux39~9_combout\,
	combout => \regs[8][7]~feeder_combout\);

-- Location: IOOBUF_X21_Y24_N2
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

-- Location: IOOBUF_X21_Y24_N9
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X34_Y18_N2
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X18_Y24_N9
\R0_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~7_combout\,
	devoe => ww_devoe,
	o => \R0_out[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOOBUF_X34_Y16_N2
\R1_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\R1_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\R1_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\R1_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\R1_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\R1_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\R1_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~9_combout\,
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
	i => \Mux15~9_combout\,
	devoe => ww_devoe,
	o => \R1_out[7]~output_o\);

-- Location: LCCOMB_X22_Y17_N24
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (PC(0) & (!PC(3) & (!PC(2)))) # (!PC(0) & (!PC(1) & (PC(3) $ (PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(0),
	datac => PC(2),
	datad => PC(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X21_Y17_N18
\Mux169~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux169~0_combout\ = (PC(3)) # ((PC(1) & ((PC(0)))) # (!PC(1) & (PC(2) & !PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(2),
	datac => PC(3),
	datad => PC(0),
	combout => \Mux169~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\Mux169~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux169~1_combout\ = (\Mux169~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux167~0_combout\,
	datad => \Mux169~0_combout\,
	combout => \Mux169~1_combout\);

-- Location: LCCOMB_X22_Y17_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (PC(0) & ((PC(1) & (PC(3))) # (!PC(1) & ((PC(2)))))) # (!PC(0) & (PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(0),
	datac => PC(2),
	datad => PC(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X17_Y19_N30
\mem_d~2255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2255_combout\ = (!\Mux167~1_combout\ & (\Mux167~0_combout\ & !\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \mem_d~2255_combout\);

-- Location: LCCOMB_X17_Y19_N20
\Add4~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~31_combout\ = (((\Mux169~0_combout\ & !\Mux168~0_combout\)) # (!\mem_d~2255_combout\)) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2255_combout\,
	datad => \Mux168~0_combout\,
	combout => \Add4~31_combout\);

-- Location: LCCOMB_X21_Y17_N26
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (PC(3) & ((PC(2)) # ((PC(0) & PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(3),
	datac => PC(2),
	datad => PC(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X21_Y17_N30
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\Mux167~0_combout\) # (!\Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux2~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X17_Y19_N0
\PC~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~14_combout\ = (\Mux167~1_combout\) # ((\Mux1~0_combout\) # ((\Mux169~0_combout\) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux169~0_combout\,
	combout => \PC~14_combout\);

-- Location: LCCOMB_X19_Y17_N20
\Add4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~19_combout\ = (PC(3) & (!\Add4~18\)) # (!PC(3) & ((\Add4~18\) # (GND)))
-- \Add4~20\ = CARRY((!\Add4~18\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \Add4~18\,
	combout => \Add4~19_combout\,
	cout => \Add4~20\);

-- Location: LCCOMB_X19_Y17_N22
\Add4~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~21_combout\ = (PC(4) & (\Add4~20\ $ (GND))) # (!PC(4) & (!\Add4~20\ & VCC))
-- \Add4~22\ = CARRY((PC(4) & !\Add4~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datad => VCC,
	cin => \Add4~20\,
	combout => \Add4~21_combout\,
	cout => \Add4~22\);

-- Location: LCCOMB_X22_Y17_N2
\PC~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~15_combout\ = (\Add4~23_combout\ & (((\PC~14_combout\) # (\Equal0~4_combout\)) # (!\Mux168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \PC~14_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add4~23_combout\,
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

-- Location: FF_X22_Y17_N3
\PC[5]\ : dffeas
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
	q => PC(5));

-- Location: LCCOMB_X22_Y17_N8
\PC~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~21_combout\ = (\PC[7]~12_combout\ & (\Add4~25_combout\)) # (!\PC[7]~12_combout\ & (((\Mux0~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~25_combout\,
	datab => \Mux0~0_combout\,
	datac => \PC[7]~12_combout\,
	datad => \Mux167~0_combout\,
	combout => \PC~21_combout\);

-- Location: FF_X22_Y17_N9
\PC[6]\ : dffeas
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
	q => PC(6));

-- Location: LCCOMB_X21_Y16_N18
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (PC(4)) # ((PC(3) & ((PC(2)) # (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(4),
	datac => PC(2),
	datad => PC(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X21_Y16_N20
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (PC(7)) # ((PC(5)) # ((PC(6)) # (\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => PC(5),
	datac => PC(6),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X22_Y17_N18
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\Mux13~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux167~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X22_Y18_N28
\Mult1|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(0) = LCELL((\Mux10~6_combout\ & ((\Mux11~1_combout\) # ((\Mux12~1_combout\ & \Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mult1|auto_generated|le5a\(0));

-- Location: LCCOMB_X23_Y17_N8
\Mult1|auto_generated|cs2a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|cs2a[1]~0_combout\ = (\Mux167~0_combout\ & (\Mux13~0_combout\ $ (\Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux13~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mult1|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X22_Y18_N18
\Mult1|auto_generated|le3a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(1) = LCELL((\Mux14~1_combout\ & (\Mux9~6_combout\ $ (((\Mux13~1_combout\))))) # (!\Mux14~1_combout\ & (((!\Mux10~6_combout\ & \Mux13~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux9~6_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mult1|auto_generated|le3a\(1));

-- Location: LCCOMB_X22_Y17_N0
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!PC(3) & (PC(1) & ((PC(2)) # (!PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(2),
	datac => PC(1),
	datad => PC(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\Mult1|auto_generated|le3a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(0) = LCELL((\Mux167~0_combout\ & (\Mux13~0_combout\ $ (((\Mux14~0_combout\) # (!\Mux10~6_combout\))))) # (!\Mux167~0_combout\ & (!\Mux10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \Mult1|auto_generated|le3a\(0));

-- Location: LCCOMB_X22_Y16_N0
\Mult1|auto_generated|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~0_combout\ = (\Mux13~1_combout\ & (\Mult1|auto_generated|le3a\(0) $ (VCC))) # (!\Mux13~1_combout\ & (\Mult1|auto_generated|le3a\(0) & VCC))
-- \Mult1|auto_generated|op_3~1\ = CARRY((\Mux13~1_combout\ & \Mult1|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mult1|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult1|auto_generated|op_3~0_combout\,
	cout => \Mult1|auto_generated|op_3~1\);

-- Location: LCCOMB_X22_Y16_N2
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

-- Location: LCCOMB_X22_Y17_N30
\Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\Mux14~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux167~0_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Mux13~1_combout\ & ((\Mux9~6_combout\ & (!\Add2~1\)) # (!\Mux9~6_combout\ & ((\Add2~1\) # (GND))))) # (!\Mux13~1_combout\ & ((\Mux9~6_combout\ & (\Add2~1\ & VCC)) # (!\Mux9~6_combout\ & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\Mux13~1_combout\ & ((!\Add2~1\) # (!\Mux9~6_combout\))) # (!\Mux13~1_combout\ & (!\Mux9~6_combout\ & !\Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux9~6_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X22_Y19_N2
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Mux13~1_combout\ & ((\Mux9~6_combout\ & (\Add3~1\ & VCC)) # (!\Mux9~6_combout\ & (!\Add3~1\)))) # (!\Mux13~1_combout\ & ((\Mux9~6_combout\ & (!\Add3~1\)) # (!\Mux9~6_combout\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\Mux13~1_combout\ & (!\Mux9~6_combout\ & !\Add3~1\)) # (!\Mux13~1_combout\ & ((!\Add3~1\) # (!\Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux9~6_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X22_Y19_N26
\Mux45~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (\Mux169~1_combout\ & ((\Mux168~1_combout\ & ((\Add3~2_combout\))) # (!\Mux168~1_combout\ & (\Add2~2_combout\)))) # (!\Mux169~1_combout\ & (!\Mux168~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add2~2_combout\,
	datad => \Add3~2_combout\,
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X21_Y15_N18
\Mux45~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (\Mux169~1_combout\ & (((\Mux45~2_combout\)))) # (!\Mux169~1_combout\ & ((\Mux45~2_combout\ & (\Mux13~1_combout\)) # (!\Mux45~2_combout\ & ((\Mult1|auto_generated|op_3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Mult1|auto_generated|op_3~2_combout\,
	datad => \Mux45~2_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X19_Y18_N2
\Add1~2\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X22_Y17_N6
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!\Mux12~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux167~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X22_Y19_N4
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Mux8~6_combout\ $ (\Mux12~1_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Mux8~6_combout\ & ((\Mux12~1_combout\) # (!\Add3~3\))) # (!\Mux8~6_combout\ & (\Mux12~1_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux12~1_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X23_Y19_N14
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Mux8~6_combout\ $ (\Mux12~1_combout\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Mux8~6_combout\ & ((!\Add2~3\) # (!\Mux12~1_combout\))) # (!\Mux8~6_combout\ & (!\Mux12~1_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux12~1_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X22_Y19_N28
\Mux44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Mux169~1_combout\ & ((\Mux168~1_combout\ & (\Add3~4_combout\)) # (!\Mux168~1_combout\ & ((\Add2~4_combout\))))) # (!\Mux169~1_combout\ & (!\Mux168~1_combout\))

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
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X21_Y16_N14
\Mult1|auto_generated|cs1a[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|cs1a[1]~8_combout\ = \Mux11~1_combout\ $ ((((!\Mux12~0_combout\ & !\Mux13~0_combout\)) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux13~0_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mult1|auto_generated|cs1a[1]~8_combout\);

-- Location: LCCOMB_X23_Y16_N0
\Mult1|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~0_combout\ = (\Mult1|auto_generated|le3a\(2) & (\Mult1|auto_generated|cs1a[1]~8_combout\ $ (VCC))) # (!\Mult1|auto_generated|le3a\(2) & (\Mult1|auto_generated|cs1a[1]~8_combout\ & VCC))
-- \Mult1|auto_generated|op_1~1\ = CARRY((\Mult1|auto_generated|le3a\(2) & \Mult1|auto_generated|cs1a[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(2),
	datab => \Mult1|auto_generated|cs1a[1]~8_combout\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_1~0_combout\,
	cout => \Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X22_Y16_N4
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

-- Location: LCCOMB_X23_Y18_N30
\Mux44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (\Mux169~1_combout\ & (\Mux44~2_combout\)) # (!\Mux169~1_combout\ & ((\Mux44~2_combout\ & (\Mux12~1_combout\)) # (!\Mux44~2_combout\ & ((\Mult1|auto_generated|op_3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux44~2_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mult1|auto_generated|op_3~4_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X23_Y19_N16
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Mux7~6_combout\ & ((\Mux11~1_combout\ & (!\Add2~5\)) # (!\Mux11~1_combout\ & (\Add2~5\ & VCC)))) # (!\Mux7~6_combout\ & ((\Mux11~1_combout\ & ((\Add2~5\) # (GND))) # (!\Mux11~1_combout\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((\Mux7~6_combout\ & (\Mux11~1_combout\ & !\Add2~5\)) # (!\Mux7~6_combout\ & ((\Mux11~1_combout\) # (!\Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux11~1_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X22_Y19_N6
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

-- Location: LCCOMB_X22_Y19_N22
\Mux43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux169~1_combout\ & ((\Mux168~1_combout\ & ((\Add3~6_combout\))) # (!\Mux168~1_combout\ & (\Add2~6_combout\)))) # (!\Mux169~1_combout\ & (!\Mux168~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add2~6_combout\,
	datad => \Add3~6_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X22_Y16_N6
\Mult1|auto_generated|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~6_combout\ = (\Mult1|auto_generated|op_1~2_combout\ & ((\Mult1|auto_generated|le4a\(1) & (\Mult1|auto_generated|op_3~5\ & VCC)) # (!\Mult1|auto_generated|le4a\(1) & (!\Mult1|auto_generated|op_3~5\)))) # 
-- (!\Mult1|auto_generated|op_1~2_combout\ & ((\Mult1|auto_generated|le4a\(1) & (!\Mult1|auto_generated|op_3~5\)) # (!\Mult1|auto_generated|le4a\(1) & ((\Mult1|auto_generated|op_3~5\) # (GND)))))
-- \Mult1|auto_generated|op_3~7\ = CARRY((\Mult1|auto_generated|op_1~2_combout\ & (!\Mult1|auto_generated|le4a\(1) & !\Mult1|auto_generated|op_3~5\)) # (!\Mult1|auto_generated|op_1~2_combout\ & ((!\Mult1|auto_generated|op_3~5\) # 
-- (!\Mult1|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~2_combout\,
	datab => \Mult1|auto_generated|le4a\(1),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~5\,
	combout => \Mult1|auto_generated|op_3~6_combout\,
	cout => \Mult1|auto_generated|op_3~7\);

-- Location: LCCOMB_X22_Y19_N16
\Mux43~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\Mux169~1_combout\ & (((\Mux43~2_combout\)))) # (!\Mux169~1_combout\ & ((\Mux43~2_combout\ & (\Mux11~1_combout\)) # (!\Mux43~2_combout\ & ((\Mult1|auto_generated|op_3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux43~2_combout\,
	datad => \Mult1|auto_generated|op_3~6_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X21_Y16_N24
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

-- Location: LCCOMB_X21_Y15_N6
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X24_Y17_N4
\Mux29~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (PC(2) & ((PC(0)) # ((PC(3))))) # (!PC(2) & (PC(1) & (PC(0) $ (!PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(3),
	datac => PC(2),
	datad => PC(1),
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X23_Y17_N28
\Mux29~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux29~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X26_Y17_N0
\Mux28~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (PC(2)) # ((PC(1) & ((PC(0)))) # (!PC(1) & (PC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => PC(3),
	datac => PC(0),
	datad => PC(1),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X26_Y17_N6
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

-- Location: LCCOMB_X24_Y15_N26
\Decoder0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\Mux11~1_combout\ & (!\Mux0~1_combout\ & (\Mux29~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X25_Y15_N4
\regs[3][4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[3][4]~7_combout\ = (\Mux167~0_combout\ & (\Mux167~1_combout\ & \Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux167~1_combout\,
	datac => \Decoder0~7_combout\,
	combout => \regs[3][4]~7_combout\);

-- Location: FF_X19_Y16_N15
\regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][6]~q\);

-- Location: LCCOMB_X24_Y14_N2
\Decoder0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\Mux28~1_combout\ & (\Mux29~1_combout\ & (!\Mux11~1_combout\ & !\Mux0~1_combout\)))

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
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X24_Y14_N24
\regs[1][4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[1][4]~5_combout\ = (\Mux167~0_combout\ & (\Mux167~1_combout\ & \Decoder0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datac => \Mux167~1_combout\,
	datad => \Decoder0~5_combout\,
	combout => \regs[1][4]~5_combout\);

-- Location: FF_X21_Y17_N15
\regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][6]~q\);

-- Location: LCCOMB_X24_Y14_N8
\Decoder0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\Mux28~1_combout\ & (!\Mux29~1_combout\ & (!\Mux11~1_combout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X24_Y14_N4
\regs[2][5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][5]~4_combout\ = (\Mux167~1_combout\ & (\Decoder0~4_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Decoder0~4_combout\,
	datad => \Mux167~0_combout\,
	combout => \regs[2][5]~4_combout\);

-- Location: FF_X22_Y16_N29
\regs[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[2][5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][6]~q\);

-- Location: LCCOMB_X21_Y17_N28
\Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux1~0_combout\ & ((\regs[2][6]~q\))) # (!\Mux1~0_combout\ & (\regs[0][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][6]~q\,
	datab => \regs[2][6]~q\,
	datac => \Mux1~0_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X21_Y17_N6
\Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = ((\Mux2~0_combout\ & (\Mux4~4_combout\)) # (!\Mux2~0_combout\ & ((\Mux1~0_combout\)))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux4~4_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X21_Y17_N14
\Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux2~1_combout\ & ((\Mux4~5_combout\ & (\regs[3][6]~q\)) # (!\Mux4~5_combout\ & ((\regs[1][6]~q\))))) # (!\Mux2~1_combout\ & (((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[3][6]~q\,
	datac => \regs[1][6]~q\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X22_Y17_N26
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X21_Y14_N6
\regs[14][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][6]~feeder_combout\ = \Mux40~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux40~10_combout\,
	combout => \regs[14][6]~feeder_combout\);

-- Location: LCCOMB_X21_Y16_N26
\regs[14][5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][5]~0_combout\ = (\Decoder0~0_combout\ & (\Mux167~1_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \Mux167~1_combout\,
	datad => \Mux167~0_combout\,
	combout => \regs[14][5]~0_combout\);

-- Location: FF_X21_Y14_N7
\regs[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[14][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[14][5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][6]~q\);

-- Location: LCCOMB_X21_Y14_N0
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux2~1_combout\ & (((\regs[13][6]~q\) # (\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (\regs[12][6]~q\ & ((!\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][6]~q\,
	datab => \Mux2~1_combout\,
	datac => \regs[13][6]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X21_Y14_N14
\Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux1~1_combout\ & ((\Mux4~2_combout\ & (\regs[15][6]~q\)) # (!\Mux4~2_combout\ & ((\regs[14][6]~q\))))) # (!\Mux1~1_combout\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][6]~q\,
	datab => \Mux1~1_combout\,
	datac => \regs[14][6]~q\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X21_Y17_N10
\Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\Mux4~3_combout\))) # (!\Mux0~0_combout\ & (\Mux4~6_combout\)))) # (!\Mux167~0_combout\ & (((\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux4~6_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X23_Y19_N26
\Mult1|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(3) = LCELL((\Mux7~6_combout\ & ((\Mux11~1_combout\) # ((\Mux13~1_combout\ & \Mux12~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mult1|auto_generated|le5a\(3));

-- Location: LCCOMB_X23_Y16_N14
\Mult1|auto_generated|le4a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(5) = LCELL((\Mult1|auto_generated|cs2a[1]~0_combout\ & (\Mult1|auto_generated|cs1a[1]~8_combout\ $ (((\Mux5~6_combout\))))) # (!\Mult1|auto_generated|cs2a[1]~0_combout\ & (\Mult1|auto_generated|cs1a[1]~8_combout\ & 
-- (!\Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|cs2a[1]~0_combout\,
	datab => \Mult1|auto_generated|cs1a[1]~8_combout\,
	datac => \Mux6~6_combout\,
	datad => \Mux5~6_combout\,
	combout => \Mult1|auto_generated|le4a\(5));

-- Location: LCCOMB_X24_Y16_N18
\Mult1|auto_generated|le3a[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(7) = LCELL((\Mux14~1_combout\ & (\Mux13~1_combout\ $ (((\Mux3~6_combout\))))) # (!\Mux14~1_combout\ & (\Mux13~1_combout\ & (!\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux4~7_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mult1|auto_generated|le3a\(7));

-- Location: LCCOMB_X24_Y16_N0
\Mult1|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(4) = LCELL((\Mult1|auto_generated|cs2a[1]~0_combout\ & ((\Mult1|auto_generated|cs1a[1]~8_combout\ $ (\Mux6~6_combout\)))) # (!\Mult1|auto_generated|cs2a[1]~0_combout\ & (!\Mux7~6_combout\ & 
-- (\Mult1|auto_generated|cs1a[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mult1|auto_generated|cs2a[1]~0_combout\,
	datac => \Mult1|auto_generated|cs1a[1]~8_combout\,
	datad => \Mux6~6_combout\,
	combout => \Mult1|auto_generated|le4a\(4));

-- Location: LCCOMB_X23_Y16_N24
\Mult1|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(3) = LCELL((\Mult1|auto_generated|cs2a[1]~0_combout\ & (\Mult1|auto_generated|cs1a[1]~8_combout\ $ ((\Mux7~6_combout\)))) # (!\Mult1|auto_generated|cs2a[1]~0_combout\ & (\Mult1|auto_generated|cs1a[1]~8_combout\ & 
-- ((!\Mux8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|cs2a[1]~0_combout\,
	datab => \Mult1|auto_generated|cs1a[1]~8_combout\,
	datac => \Mux7~6_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mult1|auto_generated|le4a\(3));

-- Location: LCCOMB_X23_Y16_N20
\Mult1|auto_generated|le3a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(4) = LCELL((\Mux14~1_combout\ & (\Mux13~1_combout\ $ ((\Mux6~6_combout\)))) # (!\Mux14~1_combout\ & (\Mux13~1_combout\ & ((!\Mux7~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux6~6_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mult1|auto_generated|le3a\(4));

-- Location: LCCOMB_X23_Y16_N8
\Mult1|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~8_combout\ = ((\Mult1|auto_generated|le3a\(6) $ (\Mult1|auto_generated|le4a\(4) $ (!\Mult1|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|auto_generated|op_1~9\ = CARRY((\Mult1|auto_generated|le3a\(6) & ((\Mult1|auto_generated|le4a\(4)) # (!\Mult1|auto_generated|op_1~7\))) # (!\Mult1|auto_generated|le3a\(6) & (\Mult1|auto_generated|le4a\(4) & !\Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(6),
	datab => \Mult1|auto_generated|le4a\(4),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~7\,
	combout => \Mult1|auto_generated|op_1~8_combout\,
	cout => \Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X23_Y16_N10
\Mult1|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~10_combout\ = \Mult1|auto_generated|le4a\(5) $ (\Mult1|auto_generated|op_1~9\ $ (\Mult1|auto_generated|le3a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|le4a\(5),
	datad => \Mult1|auto_generated|le3a\(7),
	cin => \Mult1|auto_generated|op_1~9\,
	combout => \Mult1|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X19_Y16_N24
\Mult1|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(1) = LCELL((\Mux9~6_combout\ & ((\Mux11~1_combout\) # ((\Mux13~1_combout\ & \Mux12~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mult1|auto_generated|le5a\(1));

-- Location: LCCOMB_X22_Y16_N8
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

-- Location: LCCOMB_X22_Y16_N10
\Mult1|auto_generated|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~10_combout\ = (\Mult1|auto_generated|op_1~6_combout\ & ((\Mult1|auto_generated|le5a\(1) & (\Mult1|auto_generated|op_3~9\ & VCC)) # (!\Mult1|auto_generated|le5a\(1) & (!\Mult1|auto_generated|op_3~9\)))) # 
-- (!\Mult1|auto_generated|op_1~6_combout\ & ((\Mult1|auto_generated|le5a\(1) & (!\Mult1|auto_generated|op_3~9\)) # (!\Mult1|auto_generated|le5a\(1) & ((\Mult1|auto_generated|op_3~9\) # (GND)))))
-- \Mult1|auto_generated|op_3~11\ = CARRY((\Mult1|auto_generated|op_1~6_combout\ & (!\Mult1|auto_generated|le5a\(1) & !\Mult1|auto_generated|op_3~9\)) # (!\Mult1|auto_generated|op_1~6_combout\ & ((!\Mult1|auto_generated|op_3~9\) # 
-- (!\Mult1|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~6_combout\,
	datab => \Mult1|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~9\,
	combout => \Mult1|auto_generated|op_3~10_combout\,
	cout => \Mult1|auto_generated|op_3~11\);

-- Location: LCCOMB_X22_Y16_N12
\Mult1|auto_generated|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~12_combout\ = ((\Mult1|auto_generated|le5a\(2) $ (\Mult1|auto_generated|op_1~8_combout\ $ (!\Mult1|auto_generated|op_3~11\)))) # (GND)
-- \Mult1|auto_generated|op_3~13\ = CARRY((\Mult1|auto_generated|le5a\(2) & ((\Mult1|auto_generated|op_1~8_combout\) # (!\Mult1|auto_generated|op_3~11\))) # (!\Mult1|auto_generated|le5a\(2) & (\Mult1|auto_generated|op_1~8_combout\ & 
-- !\Mult1|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le5a\(2),
	datab => \Mult1|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~11\,
	combout => \Mult1|auto_generated|op_3~12_combout\,
	cout => \Mult1|auto_generated|op_3~13\);

-- Location: LCCOMB_X22_Y16_N14
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

-- Location: LCCOMB_X22_Y19_N10
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

-- Location: LCCOMB_X22_Y19_N12
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Mux4~7_combout\ & (\Add3~11\ $ (GND))) # (!\Mux4~7_combout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\Mux4~7_combout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X22_Y19_N14
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \Mux3~6_combout\ $ (\Add3~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~6_combout\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X22_Y16_N22
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

-- Location: LCCOMB_X22_Y16_N16
\Mux39~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Mux39~2_combout\ & (((\Mux0~1_combout\) # (\Mux168~1_combout\)))) # (!\Mux39~2_combout\ & (\Add2~14_combout\ & ((!\Mux168~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux39~2_combout\,
	datad => \Mux168~1_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X19_Y18_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Mux4~7_combout\ $ (\Mux16~9_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Mux4~7_combout\ & ((!\Add1~11\) # (!\Mux16~9_combout\))) # (!\Mux4~7_combout\ & (!\Mux16~9_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => \Mux16~9_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X19_Y18_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Mux15~9_combout\ $ (\Add1~13\ $ (!\Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~9_combout\,
	datad => \Mux3~6_combout\,
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X24_Y18_N4
\regs[6][1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][1]~15_combout\ = (\Decoder0~15_combout\ & (\Mux167~0_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~15_combout\,
	datab => \Mux167~0_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[6][1]~15_combout\);

-- Location: FF_X21_Y16_N13
\regs[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][7]~q\);

-- Location: LCCOMB_X23_Y18_N12
\Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (\Mux29~1_combout\ & (!\Mux0~1_combout\ & (\Mux28~1_combout\ & \Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux11~1_combout\,
	combout => \Decoder0~14_combout\);

-- Location: LCCOMB_X23_Y18_N26
\regs[7][3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][3]~14_combout\ = (\Mux167~1_combout\ & (\Mux167~0_combout\ & \Decoder0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Mux167~0_combout\,
	datad => \Decoder0~14_combout\,
	combout => \regs[7][3]~14_combout\);

-- Location: FF_X23_Y18_N15
\regs[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][7]~q\);

-- Location: LCCOMB_X24_Y18_N24
\regs[4][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][7]~feeder_combout\ = \Mux39~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux39~9_combout\,
	combout => \regs[4][7]~feeder_combout\);

-- Location: LCCOMB_X24_Y17_N24
\Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (!\Mux0~1_combout\ & (!\Mux29~1_combout\ & (!\Mux28~1_combout\ & \Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux11~1_combout\,
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X24_Y17_N18
\regs[4][3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][3]~13_combout\ = (\Mux167~1_combout\ & (\Decoder0~13_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Decoder0~13_combout\,
	datad => \Mux167~0_combout\,
	combout => \regs[4][3]~13_combout\);

-- Location: FF_X24_Y18_N25
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
	ena => \regs[4][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][7]~q\);

-- Location: LCCOMB_X22_Y16_N18
\regs[5][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][7]~feeder_combout\ = \Mux39~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux39~9_combout\,
	combout => \regs[5][7]~feeder_combout\);

-- Location: LCCOMB_X24_Y17_N22
\regs[5][5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[5][5]~12_combout\ = (\Decoder0~12_combout\ & (\Mux167~0_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~12_combout\,
	datab => \Mux167~0_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[5][5]~12_combout\);

-- Location: FF_X22_Y16_N19
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
	ena => \regs[5][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][7]~q\);

-- Location: LCCOMB_X23_Y18_N6
\Mux30~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & ((\regs[5][7]~q\))) # (!\Mux29~1_combout\ & (\regs[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[4][7]~q\,
	datac => \Mux29~1_combout\,
	datad => \regs[5][7]~q\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X23_Y18_N14
\Mux30~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux28~1_combout\ & ((\Mux30~2_combout\ & ((\regs[7][7]~q\))) # (!\Mux30~2_combout\ & (\regs[6][7]~q\)))) # (!\Mux28~1_combout\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[6][7]~q\,
	datac => \regs[7][7]~q\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X21_Y16_N0
\regs[0][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][7]~feeder_combout\ = \Mux39~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux39~9_combout\,
	combout => \regs[0][7]~feeder_combout\);

-- Location: LCCOMB_X19_Y16_N28
\Decoder0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\Mux11~1_combout\ & (!\Mux29~1_combout\ & (!\Mux0~1_combout\ & !\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X19_Y16_N8
\regs[0][5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][5]~6_combout\ = (\Mux167~1_combout\ & (\Decoder0~6_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Decoder0~6_combout\,
	datad => \Mux167~0_combout\,
	combout => \regs[0][5]~6_combout\);

-- Location: FF_X21_Y16_N1
\regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[0][7]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][7]~q\);

-- Location: LCCOMB_X23_Y18_N8
\Mux30~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux29~1_combout\ & ((\regs[1][7]~q\) # ((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (((!\Mux28~1_combout\ & \regs[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][7]~q\,
	datab => \Mux29~1_combout\,
	datac => \Mux28~1_combout\,
	datad => \regs[0][7]~q\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X23_Y17_N4
\regs[2][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][7]~feeder_combout\ = \Mux39~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux39~9_combout\,
	combout => \regs[2][7]~feeder_combout\);

-- Location: FF_X23_Y17_N5
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
	ena => \regs[2][5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][7]~q\);

-- Location: LCCOMB_X23_Y18_N2
\Mux30~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\Mux28~1_combout\ & ((\Mux30~4_combout\ & (\regs[3][7]~q\)) # (!\Mux30~4_combout\ & ((\regs[2][7]~q\))))) # (!\Mux28~1_combout\ & (\Mux30~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux30~4_combout\,
	datac => \regs[3][7]~q\,
	datad => \regs[2][7]~q\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X23_Y18_N24
\Mux30~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Mux11~1_combout\ & ((\Mux30~3_combout\) # ((\Mux0~1_combout\)))) # (!\Mux11~1_combout\ & (((!\Mux0~1_combout\ & \Mux30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux30~3_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux30~5_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X24_Y15_N4
\Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!\Mux11~1_combout\ & (\Mux0~1_combout\ & (!\Mux29~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X22_Y15_N30
\regs[10][1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[10][1]~8_combout\ = (\Mux167~0_combout\ & (\Decoder0~8_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Decoder0~8_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[10][1]~8_combout\);

-- Location: FF_X22_Y15_N17
\regs[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][7]~q\);

-- Location: LCCOMB_X22_Y15_N16
\Mux30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & ((\regs[10][7]~q\))) # (!\Mux28~1_combout\ & (\regs[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[8][7]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[10][7]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\Mux0~1_combout\ & (\Mux29~1_combout\ & (!\Mux11~1_combout\ & \Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X22_Y15_N26
\regs[11][2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][2]~11_combout\ = (\Mux167~0_combout\ & (\Decoder0~11_combout\ & \Mux167~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Decoder0~11_combout\,
	datad => \Mux167~1_combout\,
	combout => \regs[11][2]~11_combout\);

-- Location: FF_X22_Y15_N3
\regs[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][7]~q\);

-- Location: LCCOMB_X22_Y15_N2
\Mux30~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\regs[11][7]~q\) # (!\Mux29~1_combout\)))) # (!\Mux30~0_combout\ & (\regs[9][7]~q\ & ((\Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][7]~q\,
	datab => \Mux30~0_combout\,
	datac => \regs[11][7]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X25_Y16_N16
\Mux30~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (\Mux0~1_combout\ & ((\Mux30~6_combout\ & (\Mux30~8_combout\)) # (!\Mux30~6_combout\ & ((\Mux30~1_combout\))))) # (!\Mux0~1_combout\ & (((\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~8_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux30~6_combout\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X16_Y16_N18
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

-- Location: LCCOMB_X17_Y19_N2
\mem_d~2580\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2580_combout\ = (!\Mux167~1_combout\ & (!\Mux1~0_combout\ & (\Mux167~0_combout\ & \Mux169~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux169~0_combout\,
	combout => \mem_d~2580_combout\);

-- Location: LCCOMB_X17_Y19_N28
\mem_d~2581\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2581_combout\ = (!\reset~input_o\ & (!\Mux168~1_combout\ & (\Mux0~1_combout\ & \mem_d~2580_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Mux168~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \mem_d~2580_combout\,
	combout => \mem_d~2581_combout\);

-- Location: LCCOMB_X18_Y16_N24
\mem_d~2586\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2586_combout\ = (\Mux13~1_combout\ & (!\Mux11~1_combout\ & (!\Mux12~1_combout\ & \Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2586_combout\);

-- Location: LCCOMB_X17_Y16_N18
\mem_d~2614\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2614_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2581_combout\ & \mem_d~2586_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2586_combout\,
	combout => \mem_d~2614_combout\);

-- Location: FF_X16_Y16_N19
\mem_d~1584\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1584feeder_combout\,
	ena => \mem_d~2614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1584_q\);

-- Location: LCCOMB_X18_Y18_N22
\mem_d~2588\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2588_combout\ = (\Mux13~1_combout\ & (\Mux14~1_combout\ & (!\Mux11~1_combout\ & \Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2588_combout\);

-- Location: LCCOMB_X17_Y16_N4
\mem_d~2616\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2616_combout\ = (\mem_d~2581_combout\ & (\Mux2~0_combout\ & (\mem_d~2588_combout\ & \Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2581_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2588_combout\,
	datad => \Mux167~0_combout\,
	combout => \mem_d~2616_combout\);

-- Location: FF_X16_Y16_N7
\mem_d~1616\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1616_q\);

-- Location: LCCOMB_X16_Y17_N22
\mem_d~1608feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1608feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1608feeder_combout\);

-- Location: LCCOMB_X25_Y18_N0
\mem_d~2585\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2585_combout\ = (!\Mux14~1_combout\ & (!\Mux11~1_combout\ & (\Mux12~1_combout\ & \Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2585_combout\);

-- Location: LCCOMB_X25_Y18_N14
\mem_d~2613\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2613_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2581_combout\ & \mem_d~2585_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2585_combout\,
	combout => \mem_d~2613_combout\);

-- Location: FF_X16_Y17_N23
\mem_d~1608\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1608feeder_combout\,
	ena => \mem_d~2613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1608_q\);

-- Location: LCCOMB_X14_Y17_N6
\mem_d~1576feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1576feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~1576feeder_combout\);

-- Location: LCCOMB_X18_Y18_N0
\mem_d~2587\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2587_combout\ = (!\Mux12~1_combout\ & (!\Mux11~1_combout\ & (!\Mux14~1_combout\ & \Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2587_combout\);

-- Location: LCCOMB_X18_Y19_N6
\mem_d~2615\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2615_combout\ = (\Mux2~0_combout\ & (\Mux167~0_combout\ & (\mem_d~2581_combout\ & \mem_d~2587_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2587_combout\,
	combout => \mem_d~2615_combout\);

-- Location: FF_X14_Y17_N7
\mem_d~1576\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1576feeder_combout\,
	ena => \mem_d~2615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1576_q\);

-- Location: LCCOMB_X16_Y16_N20
\mem_d~2545\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2545_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1608_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1576_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1608_q\,
	datac => \mem_d~1576_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2545_combout\);

-- Location: LCCOMB_X16_Y16_N6
\mem_d~2546\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2546_combout\ = (\Mux14~1_combout\ & ((\mem_d~2545_combout\ & ((\mem_d~1616_q\))) # (!\mem_d~2545_combout\ & (\mem_d~1584_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2545_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1584_q\,
	datac => \mem_d~1616_q\,
	datad => \mem_d~2545_combout\,
	combout => \mem_d~2546_combout\);

-- Location: LCCOMB_X17_Y18_N10
\mem_d~2620\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2620_combout\ = (\mem_d~2588_combout\ & (\mem_d~2581_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \mem_d~2588_combout\,
	datac => \mem_d~2581_combout\,
	datad => \Mux2~0_combout\,
	combout => \mem_d~2620_combout\);

-- Location: FF_X14_Y18_N19
\mem_d~1744\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1744_q\);

-- Location: LCCOMB_X18_Y19_N24
\mem_d~2619\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2619_combout\ = (\mem_d~2581_combout\ & (\mem_d~2587_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2587_combout\,
	combout => \mem_d~2619_combout\);

-- Location: FF_X17_Y17_N19
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
	ena => \mem_d~2619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1704_q\);

-- Location: LCCOMB_X17_Y17_N20
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

-- Location: LCCOMB_X17_Y16_N10
\mem_d~2617\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2617_combout\ = (\mem_d~2581_combout\ & (\mem_d~2586_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2586_combout\,
	combout => \mem_d~2617_combout\);

-- Location: FF_X17_Y17_N21
\mem_d~1712\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1712feeder_combout\,
	ena => \mem_d~2617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1712_q\);

-- Location: LCCOMB_X17_Y17_N18
\mem_d~2552\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2552_combout\ = (\Mux12~1_combout\ & (\Mux14~1_combout\)) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1712_q\))) # (!\Mux14~1_combout\ & (\mem_d~1704_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1704_q\,
	datad => \mem_d~1712_q\,
	combout => \mem_d~2552_combout\);

-- Location: LCCOMB_X14_Y18_N18
\mem_d~2553\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2553_combout\ = (\Mux12~1_combout\ & ((\mem_d~2552_combout\ & ((\mem_d~1744_q\))) # (!\mem_d~2552_combout\ & (\mem_d~1736_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1736_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1744_q\,
	datad => \mem_d~2552_combout\,
	combout => \mem_d~2553_combout\);

-- Location: LCCOMB_X18_Y18_N2
\mem_d~2592\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2592_combout\ = (!\Mux13~1_combout\ & (\Mux14~1_combout\ & (!\Mux11~1_combout\ & \Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2592_combout\);

-- Location: LCCOMB_X17_Y18_N2
\mem_d~2627\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2627_combout\ = (\Mux2~0_combout\ & (\Mux167~0_combout\ & (\mem_d~2581_combout\ & \mem_d~2592_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2592_combout\,
	combout => \mem_d~2627_combout\);

-- Location: FF_X16_Y14_N5
\mem_d~1600\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1600_q\);

-- Location: LCCOMB_X18_Y18_N24
\mem_d~2591\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2591_combout\ = (!\Mux13~1_combout\ & (!\Mux14~1_combout\ & (!\Mux11~1_combout\ & !\Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2591_combout\);

-- Location: LCCOMB_X17_Y16_N16
\mem_d~2625\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2625_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2581_combout\ & \mem_d~2591_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2591_combout\,
	combout => \mem_d~2625_combout\);

-- Location: FF_X16_Y17_N25
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
	ena => \mem_d~2625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1560_q\);

-- Location: LCCOMB_X16_Y17_N24
\mem_d~2549\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2549_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1592_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1560_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1592_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1560_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2549_combout\);

-- Location: LCCOMB_X16_Y14_N4
\mem_d~2550\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2550_combout\ = (\Mux14~1_combout\ & ((\mem_d~2549_combout\ & ((\mem_d~1600_q\))) # (!\mem_d~2549_combout\ & (\mem_d~1568_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2549_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1568_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1600_q\,
	datad => \mem_d~2549_combout\,
	combout => \mem_d~2550_combout\);

-- Location: LCCOMB_X18_Y17_N20
\mem_d~1720feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1720feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1720feeder_combout\);

-- Location: LCCOMB_X22_Y13_N14
\mem_d~2590\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2590_combout\ = (\Mux12~1_combout\ & (!\Mux13~1_combout\ & (!\Mux11~1_combout\ & !\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2590_combout\);

-- Location: LCCOMB_X17_Y12_N0
\mem_d~2624\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2624_combout\ = (\mem_d~2581_combout\ & (\mem_d~2590_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mem_d~2581_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2590_combout\,
	combout => \mem_d~2624_combout\);

-- Location: FF_X18_Y17_N21
\mem_d~1720\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1720feeder_combout\,
	ena => \mem_d~2624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1720_q\);

-- Location: LCCOMB_X17_Y18_N24
\mem_d~2628\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2628_combout\ = (\mem_d~2581_combout\ & (\mem_d~2592_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2592_combout\,
	combout => \mem_d~2628_combout\);

-- Location: FF_X17_Y14_N13
\mem_d~1728\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1728_q\);

-- Location: LCCOMB_X17_Y16_N22
\mem_d~2626\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2626_combout\ = (\mem_d~2581_combout\ & (\mem_d~2591_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2591_combout\,
	combout => \mem_d~2626_combout\);

-- Location: FF_X18_Y17_N31
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
	ena => \mem_d~2626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1688_q\);

-- Location: LCCOMB_X18_Y17_N30
\mem_d~2547\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2547_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1696_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1688_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1696_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1688_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2547_combout\);

-- Location: LCCOMB_X17_Y14_N12
\mem_d~2548\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2548_combout\ = (\Mux12~1_combout\ & ((\mem_d~2547_combout\ & ((\mem_d~1728_q\))) # (!\mem_d~2547_combout\ & (\mem_d~1720_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2547_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1720_q\,
	datac => \mem_d~1728_q\,
	datad => \mem_d~2547_combout\,
	combout => \mem_d~2548_combout\);

-- Location: LCCOMB_X16_Y18_N0
\mem_d~2551\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2551_combout\ = (\Mux13~1_combout\ & (\Mux2~1_combout\)) # (!\Mux13~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2548_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2550_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2550_combout\,
	datad => \mem_d~2548_combout\,
	combout => \mem_d~2551_combout\);

-- Location: LCCOMB_X16_Y18_N26
\mem_d~2554\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2554_combout\ = (\Mux13~1_combout\ & ((\mem_d~2551_combout\ & ((\mem_d~2553_combout\))) # (!\mem_d~2551_combout\ & (\mem_d~2546_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~2551_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~2546_combout\,
	datac => \mem_d~2553_combout\,
	datad => \mem_d~2551_combout\,
	combout => \mem_d~2554_combout\);

-- Location: LCCOMB_X23_Y12_N14
\mem_d~2596\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2596_combout\ = (\Mux14~1_combout\ & (\Mux11~1_combout\ & (\Mux13~1_combout\ & \Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2596_combout\);

-- Location: LCCOMB_X24_Y12_N0
\mem_d~2632\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2632_combout\ = (\Mux2~0_combout\ & (\Mux167~0_combout\ & (\mem_d~2581_combout\ & \mem_d~2596_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2596_combout\,
	combout => \mem_d~2632_combout\);

-- Location: FF_X24_Y13_N1
\mem_d~1680\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1680_q\);

-- Location: LCCOMB_X25_Y18_N18
\mem_d~2579\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2579_combout\ = (!\Mux14~1_combout\ & (\Mux11~1_combout\ & (\Mux12~1_combout\ & !\Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2579_combout\);

-- Location: LCCOMB_X25_Y18_N30
\mem_d~2605\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2605_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2581_combout\ & \mem_d~2579_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2579_combout\,
	combout => \mem_d~2605_combout\);

-- Location: FF_X24_Y13_N7
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
	ena => \mem_d~2605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1656_q\);

-- Location: LCCOMB_X24_Y13_N6
\mem_d~2537\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2537_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1664_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1656_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1664_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1656_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2537_combout\);

-- Location: LCCOMB_X24_Y13_N0
\mem_d~2538\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2538_combout\ = (\Mux13~1_combout\ & ((\mem_d~2537_combout\ & ((\mem_d~1680_q\))) # (!\mem_d~2537_combout\ & (\mem_d~1672_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2537_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1672_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1680_q\,
	datad => \mem_d~2537_combout\,
	combout => \mem_d~2538_combout\);

-- Location: LCCOMB_X16_Y18_N20
\mem_d~2541\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2541_combout\ = (\Mux2~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~2538_combout\))) # (!\Mux12~1_combout\ & (\mem_d~2540_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2540_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2538_combout\,
	combout => \mem_d~2541_combout\);

-- Location: LCCOMB_X25_Y16_N4
\mem_d~1768feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1768feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~1768feeder_combout\);

-- Location: LCCOMB_X18_Y18_N16
\mem_d~2595\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2595_combout\ = (\Mux13~1_combout\ & (!\Mux14~1_combout\ & (\Mux11~1_combout\ & !\Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2595_combout\);

-- Location: LCCOMB_X17_Y16_N8
\mem_d~2635\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2635_combout\ = (\mem_d~2581_combout\ & (\mem_d~2595_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2581_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2595_combout\,
	combout => \mem_d~2635_combout\);

-- Location: FF_X25_Y16_N5
\mem_d~1768\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1768feeder_combout\,
	ena => \mem_d~2635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1768_q\);

-- Location: LCCOMB_X21_Y18_N20
\mem_d~2593\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2593_combout\ = (\Mux13~1_combout\ & (\Mux14~1_combout\ & (\Mux11~1_combout\ & !\Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2593_combout\);

-- Location: LCCOMB_X25_Y18_N26
\mem_d~2634\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2634_combout\ = (\mem_d~2581_combout\ & (\mem_d~2593_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2593_combout\,
	combout => \mem_d~2634_combout\);

-- Location: FF_X26_Y16_N25
\mem_d~1776\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1776_q\);

-- Location: LCCOMB_X26_Y14_N14
\mem_d~1760feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1760feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~1760feeder_combout\);

-- Location: LCCOMB_X17_Y12_N18
\mem_d~2582\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2582_combout\ = (!\Mux13~1_combout\ & (\Mux14~1_combout\ & (!\Mux12~1_combout\ & \Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2582_combout\);

-- Location: LCCOMB_X17_Y12_N16
\mem_d~2608\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2608_combout\ = (\mem_d~2582_combout\ & (\mem_d~2581_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \mem_d~2582_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2581_combout\,
	combout => \mem_d~2608_combout\);

-- Location: FF_X26_Y14_N15
\mem_d~1760\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1760feeder_combout\,
	ena => \mem_d~2608_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1760_q\);

-- Location: LCCOMB_X17_Y12_N24
\mem_d~2583\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2583_combout\ = (!\Mux13~1_combout\ & (!\Mux14~1_combout\ & (!\Mux12~1_combout\ & \Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2583_combout\);

-- Location: LCCOMB_X16_Y15_N12
\mem_d~2610\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2610_combout\ = (\mem_d~2583_combout\ & (\mem_d~2581_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2583_combout\,
	datad => \mem_d~2581_combout\,
	combout => \mem_d~2610_combout\);

-- Location: FF_X26_Y14_N1
\mem_d~1752\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1752_q\);

-- Location: LCCOMB_X26_Y14_N0
\mem_d~2535\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2535_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1760_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1752_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1760_q\,
	datac => \mem_d~1752_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2535_combout\);

-- Location: LCCOMB_X26_Y16_N24
\mem_d~2536\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2536_combout\ = (\Mux13~1_combout\ & ((\mem_d~2535_combout\ & ((\mem_d~1776_q\))) # (!\mem_d~2535_combout\ & (\mem_d~1768_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2535_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1768_q\,
	datac => \mem_d~1776_q\,
	datad => \mem_d~2535_combout\,
	combout => \mem_d~2536_combout\);

-- Location: LCCOMB_X16_Y18_N10
\mem_d~2544\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2544_combout\ = (\mem_d~2541_combout\ & ((\mem_d~2543_combout\) # ((!\Mux2~1_combout\)))) # (!\mem_d~2541_combout\ & (((\Mux2~1_combout\ & \mem_d~2536_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2543_combout\,
	datab => \mem_d~2541_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2536_combout\,
	combout => \mem_d~2544_combout\);

-- Location: LCCOMB_X16_Y18_N8
\Mux39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (\Mux11~2_combout\ & ((\Mux11~0_combout\ & ((\mem_d~2544_combout\))) # (!\Mux11~0_combout\ & (\mem_d~2554_combout\)))) # (!\Mux11~2_combout\ & (((\mem_d~2544_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => \Mux11~0_combout\,
	datac => \mem_d~2554_combout\,
	datad => \mem_d~2544_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X17_Y19_N26
\mem_d~2597\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2597_combout\ = (!\reset~input_o\ & (!\Mux168~1_combout\ & (!\Mux0~1_combout\ & \mem_d~2580_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Mux168~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \mem_d~2580_combout\,
	combout => \mem_d~2597_combout\);

-- Location: LCCOMB_X17_Y16_N14
\mem_d~2667\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2667_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2593_combout\ & \mem_d~2597_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2593_combout\,
	datad => \mem_d~2597_combout\,
	combout => \mem_d~2667_combout\);

-- Location: FF_X19_Y13_N23
\mem_d~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~112_q\);

-- Location: LCCOMB_X18_Y13_N22
\mem_d~48feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~48feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~48feeder_combout\);

-- Location: LCCOMB_X18_Y13_N26
\mem_d~2647\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2647_combout\ = (\Mux2~0_combout\ & (\Mux167~0_combout\ & (\mem_d~2597_combout\ & \mem_d~2586_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2586_combout\,
	combout => \mem_d~2647_combout\);

-- Location: FF_X18_Y13_N23
\mem_d~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~48feeder_combout\,
	ena => \mem_d~2647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~48_q\);

-- Location: LCCOMB_X17_Y12_N14
\mem_d~2589\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2589_combout\ = (!\Mux13~1_combout\ & (\Mux14~1_combout\ & (!\Mux12~1_combout\ & !\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2589_combout\);

-- Location: LCCOMB_X16_Y13_N22
\mem_d~2655\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2655_combout\ = (\Mux167~0_combout\ & (\mem_d~2589_combout\ & (\Mux2~0_combout\ & \mem_d~2597_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \mem_d~2589_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2597_combout\,
	combout => \mem_d~2655_combout\);

-- Location: FF_X19_Y13_N5
\mem_d~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~32_q\);

-- Location: LCCOMB_X19_Y13_N4
\mem_d~2573\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2573_combout\ = (\Mux13~1_combout\ & ((\mem_d~48_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~32_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~48_q\,
	datac => \mem_d~32_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2573_combout\);

-- Location: LCCOMB_X19_Y13_N22
\mem_d~2574\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2574_combout\ = (\Mux11~1_combout\ & ((\mem_d~2573_combout\ & ((\mem_d~112_q\))) # (!\mem_d~2573_combout\ & (\mem_d~96_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2573_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~96_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~112_q\,
	datad => \mem_d~2573_combout\,
	combout => \mem_d~2574_combout\);

-- Location: LCCOMB_X16_Y18_N22
\mem_d~2575\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2575_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2574_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2574_combout\,
	combout => \mem_d~2575_combout\);

-- Location: LCCOMB_X18_Y18_N18
\mem_d~2665\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2665_combout\ = (\mem_d~2593_combout\ & (\mem_d~2597_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \mem_d~2593_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2597_combout\,
	combout => \mem_d~2665_combout\);

-- Location: FF_X17_Y13_N11
\mem_d~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~240_q\);

-- Location: LCCOMB_X17_Y12_N6
\mem_d~2656\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2656_combout\ = (\mem_d~2597_combout\ & (\mem_d~2589_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2597_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2589_combout\,
	combout => \mem_d~2656_combout\);

-- Location: FF_X17_Y13_N25
\mem_d~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~160_q\);

-- Location: LCCOMB_X17_Y13_N24
\mem_d~2576\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2576_combout\ = (\Mux13~1_combout\ & ((\mem_d~176_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~160_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~176_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~160_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2576_combout\);

-- Location: LCCOMB_X17_Y13_N10
\mem_d~2577\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2577_combout\ = (\Mux11~1_combout\ & ((\mem_d~2576_combout\ & ((\mem_d~240_q\))) # (!\mem_d~2576_combout\ & (\mem_d~224_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2576_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~224_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~240_q\,
	datad => \mem_d~2576_combout\,
	combout => \mem_d~2577_combout\);

-- Location: LCCOMB_X16_Y18_N4
\mem_d~2578\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2578_combout\ = (\mem_d~2575_combout\ & (\Mux167~0_combout\ & (\Mux2~0_combout\))) # (!\mem_d~2575_combout\ & (\mem_d~2577_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2575_combout\,
	datad => \mem_d~2577_combout\,
	combout => \mem_d~2578_combout\);

-- Location: LCCOMB_X17_Y12_N8
\mem_d~2663\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2663_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2597_combout\ & \mem_d~2595_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2595_combout\,
	combout => \mem_d~2663_combout\);

-- Location: FF_X16_Y18_N29
\mem_d~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~104_q\);

-- Location: LCCOMB_X17_Y15_N24
\mem_d~40feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~40feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~40feeder_combout\);

-- Location: LCCOMB_X17_Y18_N14
\mem_d~2649\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2649_combout\ = (\Mux2~0_combout\ & (\mem_d~2587_combout\ & (\mem_d~2597_combout\ & \Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mem_d~2587_combout\,
	datac => \mem_d~2597_combout\,
	datad => \Mux167~0_combout\,
	combout => \mem_d~2649_combout\);

-- Location: FF_X17_Y15_N25
\mem_d~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~40feeder_combout\,
	ena => \mem_d~2649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~40_q\);

-- Location: LCCOMB_X16_Y15_N18
\mem_d~2657\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2657_combout\ = (\Mux167~0_combout\ & (\mem_d~2597_combout\ & (\Mux2~0_combout\ & \mem_d~2591_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \mem_d~2597_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2591_combout\,
	combout => \mem_d~2657_combout\);

-- Location: FF_X17_Y15_N23
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
	ena => \mem_d~2657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~24_q\);

-- Location: LCCOMB_X17_Y15_N22
\mem_d~2560\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2560_combout\ = (\Mux11~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~40_q\)) # (!\Mux13~1_combout\ & ((\mem_d~24_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~40_q\,
	datac => \mem_d~24_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2560_combout\);

-- Location: LCCOMB_X16_Y18_N28
\mem_d~2561\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2561_combout\ = (\Mux11~1_combout\ & ((\mem_d~2560_combout\ & ((\mem_d~104_q\))) # (!\mem_d~2560_combout\ & (\mem_d~88_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2560_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~88_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~104_q\,
	datad => \mem_d~2560_combout\,
	combout => \mem_d~2561_combout\);

-- Location: LCCOMB_X16_Y18_N14
\mem_d~2562\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2562_combout\ = ((\Mux1~0_combout\ & (!\Mux2~0_combout\)) # (!\Mux1~0_combout\ & (\Mux2~0_combout\ & \mem_d~2561_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2561_combout\,
	combout => \mem_d~2562_combout\);

-- Location: LCCOMB_X23_Y12_N12
\mem_d~2661\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2661_combout\ = (\mem_d~2595_combout\ & (\mem_d~2597_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2595_combout\,
	datad => \mem_d~2597_combout\,
	combout => \mem_d~2661_combout\);

-- Location: FF_X16_Y18_N17
\mem_d~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~232_q\);

-- Location: LCCOMB_X19_Y19_N14
\mem_d~168feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~168feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~168feeder_combout\);

-- Location: LCCOMB_X18_Y19_N14
\mem_d~2650\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2650_combout\ = (\mem_d~2597_combout\ & (\mem_d~2587_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2587_combout\,
	combout => \mem_d~2650_combout\);

-- Location: FF_X19_Y19_N15
\mem_d~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~168feeder_combout\,
	ena => \mem_d~2650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~168_q\);

-- Location: LCCOMB_X19_Y19_N26
\mem_d~2658\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2658_combout\ = (\mem_d~2597_combout\ & (\mem_d~2591_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mem_d~2597_combout\,
	datac => \mem_d~2591_combout\,
	datad => \Mux167~0_combout\,
	combout => \mem_d~2658_combout\);

-- Location: FF_X19_Y19_N9
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
	ena => \mem_d~2658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~152_q\);

-- Location: LCCOMB_X19_Y19_N8
\mem_d~2563\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2563_combout\ = (\Mux13~1_combout\ & ((\mem_d~168_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~152_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~168_q\,
	datac => \mem_d~152_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2563_combout\);

-- Location: LCCOMB_X16_Y18_N16
\mem_d~2564\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2564_combout\ = (\Mux11~1_combout\ & ((\mem_d~2563_combout\ & ((\mem_d~232_q\))) # (!\mem_d~2563_combout\ & (\mem_d~216_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2563_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~216_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~232_q\,
	datad => \mem_d~2563_combout\,
	combout => \mem_d~2564_combout\);

-- Location: LCCOMB_X16_Y18_N30
\mem_d~2565\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2565_combout\ = (\mem_d~2562_combout\ & (\Mux167~0_combout\ & (\Mux2~0_combout\))) # (!\mem_d~2562_combout\ & (\mem_d~2564_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2562_combout\,
	datad => \mem_d~2564_combout\,
	combout => \mem_d~2565_combout\);

-- Location: LCCOMB_X22_Y12_N28
\mem_d~2594\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2594_combout\ = (\Mux12~1_combout\ & (\Mux11~1_combout\ & (\Mux13~1_combout\ & !\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux13~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2594_combout\);

-- Location: LCCOMB_X22_Y12_N16
\mem_d~2662\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2662_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2597_combout\ & \mem_d~2594_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2594_combout\,
	combout => \mem_d~2662_combout\);

-- Location: FF_X19_Y12_N31
\mem_d~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~136_q\);

-- Location: LCCOMB_X26_Y12_N28
\mem_d~72feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~72feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux30~9_combout\,
	combout => \mem_d~72feeder_combout\);

-- Location: LCCOMB_X24_Y19_N10
\mem_d~2645\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2645_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2597_combout\ & \mem_d~2585_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2585_combout\,
	combout => \mem_d~2645_combout\);

-- Location: FF_X26_Y12_N29
\mem_d~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~72feeder_combout\,
	ena => \mem_d~2645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~72_q\);

-- Location: LCCOMB_X17_Y12_N10
\mem_d~2653\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2653_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2597_combout\ & \mem_d~2590_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2590_combout\,
	combout => \mem_d~2653_combout\);

-- Location: FF_X19_Y12_N29
\mem_d~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~56_q\);

-- Location: LCCOMB_X19_Y12_N28
\mem_d~2555\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2555_combout\ = (\Mux13~1_combout\ & ((\mem_d~72_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~56_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~72_q\,
	datac => \mem_d~56_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2555_combout\);

-- Location: LCCOMB_X19_Y12_N30
\mem_d~2556\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2556_combout\ = (\Mux11~1_combout\ & ((\mem_d~2555_combout\ & ((\mem_d~136_q\))) # (!\mem_d~2555_combout\ & (\mem_d~120_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2555_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~120_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~136_q\,
	datad => \mem_d~2555_combout\,
	combout => \mem_d~2556_combout\);

-- Location: LCCOMB_X23_Y12_N10
\mem_d~2664\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2664_combout\ = (\mem_d~2594_combout\ & (\mem_d~2597_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mem_d~2594_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2597_combout\,
	combout => \mem_d~2664_combout\);

-- Location: FF_X21_Y12_N11
\mem_d~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~264_q\);

-- Location: LCCOMB_X22_Y19_N20
\mem_d~200feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~200feeder_combout\ = \Mux30~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux30~9_combout\,
	combout => \mem_d~200feeder_combout\);

-- Location: LCCOMB_X24_Y19_N16
\mem_d~2646\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2646_combout\ = (\mem_d~2597_combout\ & (\mem_d~2585_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2585_combout\,
	combout => \mem_d~2646_combout\);

-- Location: FF_X22_Y19_N21
\mem_d~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~200feeder_combout\,
	ena => \mem_d~2646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~200_q\);

-- Location: LCCOMB_X17_Y12_N20
\mem_d~2654\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2654_combout\ = (\mem_d~2597_combout\ & (\mem_d~2590_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2590_combout\,
	combout => \mem_d~2654_combout\);

-- Location: FF_X21_Y12_N21
\mem_d~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux30~9_combout\,
	sload => VCC,
	ena => \mem_d~2654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~184_q\);

-- Location: LCCOMB_X21_Y12_N20
\mem_d~2557\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2557_combout\ = (\Mux13~1_combout\ & ((\mem_d~200_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~184_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~200_q\,
	datac => \mem_d~184_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2557_combout\);

-- Location: LCCOMB_X21_Y12_N10
\mem_d~2558\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2558_combout\ = (\Mux11~1_combout\ & ((\mem_d~2557_combout\ & ((\mem_d~264_q\))) # (!\mem_d~2557_combout\ & (\mem_d~248_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2557_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~248_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~264_q\,
	datad => \mem_d~2557_combout\,
	combout => \mem_d~2558_combout\);

-- Location: LCCOMB_X16_Y18_N18
\mem_d~2559\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2559_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2558_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2556_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2556_combout\,
	datad => \mem_d~2558_combout\,
	combout => \mem_d~2559_combout\);

-- Location: LCCOMB_X16_Y18_N24
\mem_d~2566\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2566_combout\ = (\Mux12~1_combout\ & ((\Mux14~1_combout\) # ((\mem_d~2559_combout\)))) # (!\Mux12~1_combout\ & (!\Mux14~1_combout\ & (\mem_d~2565_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2565_combout\,
	datad => \mem_d~2559_combout\,
	combout => \mem_d~2566_combout\);

-- Location: LCCOMB_X16_Y18_N6
\Mux39~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = (\Mux14~1_combout\ & ((\mem_d~2566_combout\ & (\mem_d~2572_combout\)) # (!\mem_d~2566_combout\ & ((\mem_d~2578_combout\))))) # (!\Mux14~1_combout\ & (((\mem_d~2566_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2572_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2578_combout\,
	datad => \mem_d~2566_combout\,
	combout => \Mux39~5_combout\);

-- Location: LCCOMB_X16_Y18_N12
\Mux39~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~6_combout\ = (\Mux0~1_combout\ & (!\Mux1~1_combout\ & (\Mux39~4_combout\))) # (!\Mux0~1_combout\ & (((\Mux39~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux39~4_combout\,
	datad => \Mux39~5_combout\,
	combout => \Mux39~6_combout\);

-- Location: LCCOMB_X19_Y18_N24
\Mux39~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~7_combout\ = (\Mux169~1_combout\ & (!\Mux168~1_combout\)) # (!\Mux169~1_combout\ & ((\Mux168~1_combout\ & ((\Mux39~6_combout\))) # (!\Mux168~1_combout\ & (\Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add1~14_combout\,
	datad => \Mux39~6_combout\,
	combout => \Mux39~7_combout\);

-- Location: LCCOMB_X25_Y16_N0
\Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (\Mux28~1_combout\ & (\Mux29~1_combout\ & (\Mux11~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X25_Y16_N30
\regs[15][5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[15][5]~3_combout\ = (\Mux167~0_combout\ & (\Mux167~1_combout\ & \Decoder0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux167~0_combout\,
	datac => \Mux167~1_combout\,
	datad => \Decoder0~3_combout\,
	combout => \regs[15][5]~3_combout\);

-- Location: FF_X23_Y15_N11
\regs[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][7]~q\);

-- Location: LCCOMB_X23_Y15_N8
\regs[13][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][7]~feeder_combout\ = \Mux39~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux39~9_combout\,
	combout => \regs[13][7]~feeder_combout\);

-- Location: LCCOMB_X24_Y14_N12
\Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\Mux28~1_combout\ & (\Mux29~1_combout\ & (\Mux11~1_combout\ & \Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux0~1_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X25_Y14_N22
\regs[13][5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][5]~1_combout\ = (\Mux167~1_combout\ & (\Mux167~0_combout\ & \Decoder0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Mux167~0_combout\,
	datad => \Decoder0~1_combout\,
	combout => \regs[13][5]~1_combout\);

-- Location: FF_X23_Y15_N9
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
	ena => \regs[13][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][7]~q\);

-- Location: LCCOMB_X22_Y15_N8
\Mux15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux13~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux12~1_combout\ & ((\regs[13][7]~q\))) # (!\Mux12~1_combout\ & (\regs[9][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][7]~q\,
	datab => \regs[13][7]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X23_Y15_N10
\Mux15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\Mux13~1_combout\ & ((\Mux15~7_combout\ & ((\regs[15][7]~q\))) # (!\Mux15~7_combout\ & (\regs[11][7]~q\)))) # (!\Mux13~1_combout\ & (((\Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][7]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[15][7]~q\,
	datad => \Mux15~7_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & ((\regs[3][7]~q\))) # (!\Mux13~1_combout\ & (\regs[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][7]~q\,
	datab => \regs[3][7]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X23_Y18_N16
\Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux12~1_combout\ & ((\Mux15~2_combout\ & ((\regs[7][7]~q\))) # (!\Mux15~2_combout\ & (\regs[5][7]~q\)))) # (!\Mux12~1_combout\ & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][7]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[7][7]~q\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X21_Y16_N28
\Mux15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux11~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux14~1_combout\ & ((\Mux15~3_combout\))) # (!\Mux14~1_combout\ & (\Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~5_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux15~3_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X21_Y16_N10
\Mux15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\Mux11~1_combout\ & ((\Mux15~6_combout\ & ((\Mux15~8_combout\))) # (!\Mux15~6_combout\ & (\Mux15~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux15~8_combout\,
	datad => \Mux15~6_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X21_Y14_N20
\regs[13][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[13][5]~feeder_combout\);

-- Location: FF_X21_Y14_N21
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
	ena => \regs[13][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][5]~q\);

-- Location: LCCOMB_X24_Y14_N16
\regs[12][5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][5]~2_combout\ = (\Decoder0~2_combout\ & (\Mux167~1_combout\ & \Mux167~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \Mux167~1_combout\,
	datad => \Mux167~0_combout\,
	combout => \regs[12][5]~2_combout\);

-- Location: FF_X24_Y16_N17
\regs[12][5]\ : dffeas
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
	ena => \regs[12][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][5]~q\);

-- Location: LCCOMB_X22_Y14_N10
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux12~1_combout\ & (((\regs[12][5]~q\) # (\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (\regs[8][5]~q\ & ((!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[8][5]~q\,
	datab => \regs[12][5]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X23_Y14_N20
\Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux14~1_combout\ & ((\Mux17~0_combout\ & ((\regs[13][5]~q\))) # (!\Mux17~0_combout\ & (\regs[9][5]~q\)))) # (!\Mux14~1_combout\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][5]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[13][5]~q\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: FF_X24_Y17_N23
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

-- Location: LCCOMB_X19_Y14_N30
\regs[4][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[4][5]~feeder_combout\);

-- Location: FF_X19_Y14_N31
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
	ena => \regs[4][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][5]~q\);

-- Location: LCCOMB_X19_Y14_N24
\Mux17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\regs[5][5]~q\)) # (!\Mux14~1_combout\ & ((\regs[4][5]~q\))))) # (!\Mux12~1_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][5]~q\,
	datab => \regs[4][5]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X19_Y14_N22
\Mux17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux12~1_combout\ & (((\Mux17~4_combout\)))) # (!\Mux12~1_combout\ & ((\Mux17~4_combout\ & (\regs[1][5]~q\)) # (!\Mux17~4_combout\ & ((\regs[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][5]~q\,
	datab => \regs[0][5]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux17~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: FF_X24_Y14_N5
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
	ena => \regs[7][3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][5]~q\);

-- Location: FF_X24_Y14_N17
\regs[2][5]\ : dffeas
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
	ena => \regs[2][5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][5]~q\);

-- Location: LCCOMB_X24_Y14_N10
\Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux12~1_combout\ & ((\regs[6][5]~q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\regs[2][5]~q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][5]~q\,
	datab => \regs[2][5]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X24_Y14_N6
\Mux17~3\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X19_Y14_N28
\Mux17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux13~1_combout\ & ((\Mux11~1_combout\) # ((\Mux17~3_combout\)))) # (!\Mux13~1_combout\ & (!\Mux11~1_combout\ & (\Mux17~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux17~5_combout\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X19_Y14_N16
\Mux17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\Mux11~1_combout\ & ((\Mux17~6_combout\ & (\Mux17~8_combout\)) # (!\Mux17~6_combout\ & ((\Mux17~1_combout\))))) # (!\Mux11~1_combout\ & (((\Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~8_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux17~6_combout\,
	combout => \Mux17~9_combout\);

-- Location: LCCOMB_X23_Y14_N16
\regs[9][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][2]~feeder_combout\ = \Mux44~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux44~6_combout\,
	combout => \regs[9][2]~feeder_combout\);

-- Location: LCCOMB_X24_Y15_N14
\Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!\Mux11~1_combout\ & (\Mux0~1_combout\ & (\Mux29~1_combout\ & !\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux29~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X21_Y15_N0
\regs[9][4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][4]~9_combout\ = (\Mux167~1_combout\ & (\Mux167~0_combout\ & \Decoder0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~1_combout\,
	datab => \Mux167~0_combout\,
	datad => \Decoder0~9_combout\,
	combout => \regs[9][4]~9_combout\);

-- Location: FF_X23_Y14_N17
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
	ena => \regs[9][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][2]~q\);

-- Location: LCCOMB_X19_Y16_N16
\Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (!\Mux11~1_combout\ & (!\Mux29~1_combout\ & (\Mux0~1_combout\ & !\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux29~1_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux28~1_combout\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X21_Y16_N12
\regs[8][0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][0]~10_combout\ = (\Mux167~0_combout\ & (\Mux167~1_combout\ & \Decoder0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux167~1_combout\,
	datad => \Decoder0~10_combout\,
	combout => \regs[8][0]~10_combout\);

-- Location: FF_X22_Y14_N29
\regs[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][2]~q\);

-- Location: LCCOMB_X22_Y14_N28
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux12~1_combout\ & ((\regs[12][2]~q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\regs[8][2]~q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][2]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[8][2]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X23_Y14_N2
\Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux14~1_combout\ & ((\Mux20~0_combout\ & (\regs[13][2]~q\)) # (!\Mux20~0_combout\ & ((\regs[9][2]~q\))))) # (!\Mux14~1_combout\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][2]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[9][2]~q\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X19_Y15_N14
\regs[14][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][2]~feeder_combout\ = \Mux44~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux44~6_combout\,
	combout => \regs[14][2]~feeder_combout\);

-- Location: FF_X19_Y15_N15
\regs[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[14][2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[14][5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][2]~q\);

-- Location: FF_X23_Y15_N15
\regs[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][2]~q\);

-- Location: FF_X22_Y15_N5
\regs[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][2]~q\);

-- Location: LCCOMB_X22_Y15_N6
\Mux20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\regs[11][2]~q\)) # (!\Mux14~1_combout\ & ((\regs[10][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][2]~q\,
	datab => \regs[10][2]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X19_Y15_N26
\Mux20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = (\Mux12~1_combout\ & ((\Mux20~7_combout\ & ((\regs[15][2]~q\))) # (!\Mux20~7_combout\ & (\regs[14][2]~q\)))) # (!\Mux12~1_combout\ & (((\Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \regs[14][2]~q\,
	datac => \regs[15][2]~q\,
	datad => \Mux20~7_combout\,
	combout => \Mux20~8_combout\);

-- Location: FF_X23_Y17_N25
\regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][2]~q\);

-- Location: FF_X23_Y18_N5
\regs[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][2]~q\);

-- Location: LCCOMB_X23_Y17_N0
\Mux20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux12~1_combout\ & ((\regs[6][2]~q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\regs[2][2]~q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][2]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[2][2]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X23_Y18_N4
\Mux20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux14~1_combout\ & ((\Mux20~2_combout\ & ((\regs[7][2]~q\))) # (!\Mux20~2_combout\ & (\regs[3][2]~q\)))) # (!\Mux14~1_combout\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[3][2]~q\,
	datac => \regs[7][2]~q\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X23_Y18_N20
\regs[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[1][2]~feeder_combout\ = \Mux44~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux44~6_combout\,
	combout => \regs[1][2]~feeder_combout\);

-- Location: FF_X23_Y18_N21
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
	ena => \regs[1][4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][2]~q\);

-- Location: FF_X24_Y17_N1
\regs[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][2]~q\);

-- Location: LCCOMB_X24_Y17_N0
\Mux20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux20~4_combout\ & (((\regs[5][2]~q\) # (!\Mux14~1_combout\)))) # (!\Mux20~4_combout\ & (\regs[1][2]~q\ & ((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \regs[1][2]~q\,
	datac => \regs[5][2]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X23_Y18_N10
\Mux20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux11~1_combout\ & (\Mux13~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\Mux20~3_combout\)) # (!\Mux13~1_combout\ & ((\Mux20~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux20~3_combout\,
	datad => \Mux20~5_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Mux20~9\ : cycloneiii_lcell_comb
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

-- Location: FF_X21_Y14_N25
\regs[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][1]~q\);

-- Location: FF_X22_Y14_N5
\regs[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][1]~q\);

-- Location: LCCOMB_X22_Y14_N18
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux13~1_combout\ & ((\regs[10][1]~q\) # ((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & (((\regs[8][1]~q\ & !\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][1]~q\,
	datab => \regs[8][1]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X22_Y18_N4
\Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux12~1_combout\ & ((\Mux21~0_combout\ & ((\regs[14][1]~q\))) # (!\Mux21~0_combout\ & (\regs[12][1]~q\)))) # (!\Mux12~1_combout\ & (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][1]~q\,
	datab => \regs[14][1]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: FF_X22_Y18_N27
\regs[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][1]~q\);

-- Location: FF_X21_Y17_N21
\regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][1]~q\);

-- Location: LCCOMB_X22_Y18_N26
\Mux21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~2_combout\ & ((\Mux13~1_combout\) # ((\regs[5][1]~q\)))) # (!\Mux21~2_combout\ & (!\Mux13~1_combout\ & ((\regs[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \Mux13~1_combout\,
	datac => \regs[5][1]~q\,
	datad => \regs[1][1]~q\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X18_Y16_N16
\regs[4][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][1]~feeder_combout\ = \Mux45~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux45~6_combout\,
	combout => \regs[4][1]~feeder_combout\);

-- Location: FF_X18_Y16_N17
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
	ena => \regs[4][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][1]~q\);

-- Location: FF_X22_Y18_N13
\regs[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][1]~q\);

-- Location: LCCOMB_X18_Y18_N4
\regs[0][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][1]~feeder_combout\ = \Mux45~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux45~6_combout\,
	combout => \regs[0][1]~feeder_combout\);

-- Location: FF_X18_Y18_N5
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
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][1]~q\);

-- Location: LCCOMB_X18_Y18_N10
\Mux21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\regs[2][1]~q\)) # (!\Mux13~1_combout\ & ((\regs[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][1]~q\,
	datab => \regs[0][1]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X22_Y18_N12
\Mux21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux12~1_combout\ & ((\Mux21~4_combout\ & ((\regs[6][1]~q\))) # (!\Mux21~4_combout\ & (\regs[4][1]~q\)))) # (!\Mux12~1_combout\ & (((\Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \regs[4][1]~q\,
	datac => \regs[6][1]~q\,
	datad => \Mux21~4_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X22_Y18_N10
\Mux21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux14~1_combout\ & ((\Mux11~1_combout\) # ((\Mux21~3_combout\)))) # (!\Mux14~1_combout\ & (!\Mux11~1_combout\ & ((\Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux21~3_combout\,
	datad => \Mux21~5_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X22_Y18_N16
\Mux21~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = (\Mux11~1_combout\ & ((\Mux21~6_combout\ & (\Mux21~8_combout\)) # (!\Mux21~6_combout\ & ((\Mux21~1_combout\))))) # (!\Mux11~1_combout\ & (((\Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~8_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux21~1_combout\,
	datad => \Mux21~6_combout\,
	combout => \Mux21~9_combout\);

-- Location: LCCOMB_X19_Y14_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\Mux22~9_combout\ & (\Mux10~6_combout\ $ (VCC))) # (!\Mux22~9_combout\ & (\Mux10~6_combout\ & VCC))
-- \Add0~1\ = CARRY((\Mux22~9_combout\ & \Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~9_combout\,
	datab => \Mux10~6_combout\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X19_Y14_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Mux9~6_combout\ & ((\Mux21~9_combout\ & (\Add0~1\ & VCC)) # (!\Mux21~9_combout\ & (!\Add0~1\)))) # (!\Mux9~6_combout\ & ((\Mux21~9_combout\ & (!\Add0~1\)) # (!\Mux21~9_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\Mux9~6_combout\ & (!\Mux21~9_combout\ & !\Add0~1\)) # (!\Mux9~6_combout\ & ((!\Add0~1\) # (!\Mux21~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \Mux21~9_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X19_Y14_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\Mux8~6_combout\ $ (\Mux20~9_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\Mux8~6_combout\ & ((\Mux20~9_combout\) # (!\Add0~3\))) # (!\Mux8~6_combout\ & (\Mux20~9_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \Mux20~9_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X19_Y14_N6
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Mux19~9_combout\ & ((\Mux7~6_combout\ & (\Add0~5\ & VCC)) # (!\Mux7~6_combout\ & (!\Add0~5\)))) # (!\Mux19~9_combout\ & ((\Mux7~6_combout\ & (!\Add0~5\)) # (!\Mux7~6_combout\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\Mux19~9_combout\ & (!\Mux7~6_combout\ & !\Add0~5\)) # (!\Mux19~9_combout\ & ((!\Add0~5\) # (!\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~9_combout\,
	datab => \Mux7~6_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X19_Y14_N8
\Add0~8\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X19_Y14_N10
\Add0~10\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X19_Y14_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Mux16~9_combout\ $ (\Mux4~7_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\Mux16~9_combout\ & ((\Mux4~7_combout\) # (!\Add0~11\))) # (!\Mux16~9_combout\ & (\Mux4~7_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~9_combout\,
	datab => \Mux4~7_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X19_Y14_N14
\Add0~14\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X21_Y18_N14
\Mux46~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\Mux46~2_combout\ & ((\Mux14~1_combout\) # ((\Mux169~1_combout\)))) # (!\Mux46~2_combout\ & (((!\Mux169~1_combout\ & \Mult1|auto_generated|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux46~2_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux169~1_combout\,
	datad => \Mult1|auto_generated|op_3~0_combout\,
	combout => \Mux46~3_combout\);

-- Location: FF_X18_Y18_N7
\regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][0]~q\);

-- Location: FF_X21_Y17_N17
\regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][0]~q\);

-- Location: LCCOMB_X18_Y18_N12
\regs[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[0][0]~feeder_combout\ = \Mux46~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux46~6_combout\,
	combout => \regs[0][0]~feeder_combout\);

-- Location: FF_X18_Y18_N13
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
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][0]~q\);

-- Location: LCCOMB_X18_Y16_N0
\Mux37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (\Mux29~1_combout\ & ((\regs[1][0]~q\) # ((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (((\regs[0][0]~q\ & !\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[1][0]~q\,
	datac => \regs[0][0]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X18_Y16_N26
\Mux37~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~5_combout\ = (\Mux28~1_combout\ & ((\Mux37~4_combout\ & ((\regs[3][0]~q\))) # (!\Mux37~4_combout\ & (\regs[2][0]~q\)))) # (!\Mux28~1_combout\ & (((\Mux37~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][0]~q\,
	datab => \Mux28~1_combout\,
	datac => \regs[3][0]~q\,
	datad => \Mux37~4_combout\,
	combout => \Mux37~5_combout\);

-- Location: LCCOMB_X18_Y16_N28
\Mux37~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~6_combout\ = (\Mux0~1_combout\ & (((\Mux11~1_combout\)))) # (!\Mux0~1_combout\ & ((\Mux11~1_combout\ & (\Mux37~3_combout\)) # (!\Mux11~1_combout\ & ((\Mux37~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~3_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux37~5_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux37~6_combout\);

-- Location: LCCOMB_X22_Y15_N20
\Mux37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & ((\regs[10][0]~q\))) # (!\Mux28~1_combout\ & (\regs[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[8][0]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[10][0]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux37~0_combout\);

-- Location: FF_X21_Y15_N9
\regs[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[9][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][0]~q\);

-- Location: LCCOMB_X22_Y15_N18
\Mux37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Mux29~1_combout\ & ((\Mux37~0_combout\ & (\regs[11][0]~q\)) # (!\Mux37~0_combout\ & ((\regs[9][0]~q\))))) # (!\Mux29~1_combout\ & (((\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][0]~q\,
	datab => \Mux29~1_combout\,
	datac => \Mux37~0_combout\,
	datad => \regs[9][0]~q\,
	combout => \Mux37~1_combout\);

-- Location: FF_X23_Y15_N29
\regs[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][0]~q\);

-- Location: FF_X21_Y15_N13
\regs[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][0]~q\);

-- Location: FF_X19_Y15_N17
\regs[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[14][5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][0]~q\);

-- Location: LCCOMB_X18_Y16_N30
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

-- Location: LCCOMB_X23_Y15_N28
\Mux37~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~8_combout\ = (\Mux29~1_combout\ & ((\Mux37~7_combout\ & (\regs[15][0]~q\)) # (!\Mux37~7_combout\ & ((\regs[13][0]~q\))))) # (!\Mux29~1_combout\ & (((\Mux37~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][0]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[13][0]~q\,
	datad => \Mux37~7_combout\,
	combout => \Mux37~8_combout\);

-- Location: LCCOMB_X24_Y13_N22
\Mux37~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux37~9_combout\ = (\Mux0~1_combout\ & ((\Mux37~6_combout\ & ((\Mux37~8_combout\))) # (!\Mux37~6_combout\ & (\Mux37~1_combout\)))) # (!\Mux0~1_combout\ & (\Mux37~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux37~6_combout\,
	datac => \Mux37~1_combout\,
	datad => \Mux37~8_combout\,
	combout => \Mux37~9_combout\);

-- Location: LCCOMB_X16_Y13_N4
\mem_d~217feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~217feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~217feeder_combout\);

-- Location: LCCOMB_X16_Y13_N24
\mem_d~2640\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2640_combout\ = (\mem_d~2582_combout\ & (\mem_d~2597_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \mem_d~2582_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2597_combout\,
	combout => \mem_d~2640_combout\);

-- Location: FF_X16_Y13_N5
\mem_d~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~217feeder_combout\,
	ena => \mem_d~2640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~217_q\);

-- Location: LCCOMB_X17_Y12_N30
\mem_d~2637\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2637_combout\ = (\mem_d~2597_combout\ & (\mem_d~2583_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2583_combout\,
	combout => \mem_d~2637_combout\);

-- Location: FF_X18_Y19_N21
\mem_d~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~209_q\);

-- Location: LCCOMB_X18_Y13_N20
\mem_d~2639\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2639_combout\ = (\mem_d~2597_combout\ & (\mem_d~2583_combout\ & (\Mux167~0_combout\ & \Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2597_combout\,
	datab => \mem_d~2583_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \mem_d~2639_combout\);

-- Location: FF_X19_Y11_N5
\mem_d~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~81_q\);

-- Location: LCCOMB_X19_Y11_N4
\mem_d~2231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2231_combout\ = (\Mux14~1_combout\ & ((\mem_d~89_q\) # ((\Mux2~1_combout\)))) # (!\Mux14~1_combout\ & (((\mem_d~81_q\ & !\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~89_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~81_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2231_combout\);

-- Location: LCCOMB_X18_Y19_N20
\mem_d~2232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2232_combout\ = (\Mux2~1_combout\ & ((\mem_d~2231_combout\ & (\mem_d~217_q\)) # (!\mem_d~2231_combout\ & ((\mem_d~209_q\))))) # (!\Mux2~1_combout\ & (((\mem_d~2231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~217_q\,
	datac => \mem_d~209_q\,
	datad => \mem_d~2231_combout\,
	combout => \mem_d~2232_combout\);

-- Location: LCCOMB_X21_Y11_N10
\mem_d~249feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~249feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~249feeder_combout\);

-- Location: LCCOMB_X18_Y18_N14
\mem_d~2584\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2584_combout\ = (\Mux14~1_combout\ & (!\Mux13~1_combout\ & (\Mux11~1_combout\ & \Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2584_combout\);

-- Location: LCCOMB_X18_Y18_N26
\mem_d~2644\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2644_combout\ = (\mem_d~2584_combout\ & (\mem_d~2597_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \mem_d~2584_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2597_combout\,
	combout => \mem_d~2644_combout\);

-- Location: FF_X21_Y11_N11
\mem_d~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~249feeder_combout\,
	ena => \mem_d~2644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~249_q\);

-- Location: LCCOMB_X23_Y12_N6
\mem_d~2641\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2641_combout\ = (\mem_d~2597_combout\ & (\mem_d~2579_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2597_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2579_combout\,
	combout => \mem_d~2641_combout\);

-- Location: FF_X22_Y11_N5
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
	ena => \mem_d~2641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~241_q\);

-- Location: LCCOMB_X21_Y11_N22
\mem_d~2643\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2643_combout\ = (\Mux2~0_combout\ & (\Mux167~0_combout\ & (\mem_d~2597_combout\ & \mem_d~2579_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2579_combout\,
	combout => \mem_d~2643_combout\);

-- Location: FF_X19_Y11_N7
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
	ena => \mem_d~2643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~113_q\);

-- Location: LCCOMB_X19_Y11_N6
\mem_d~2233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2233_combout\ = (\Mux14~1_combout\ & ((\mem_d~121_q\) # ((\Mux2~1_combout\)))) # (!\Mux14~1_combout\ & (((\mem_d~113_q\ & !\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~121_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~113_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2233_combout\);

-- Location: LCCOMB_X22_Y11_N4
\mem_d~2234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2234_combout\ = (\Mux2~1_combout\ & ((\mem_d~2233_combout\ & (\mem_d~249_q\)) # (!\mem_d~2233_combout\ & ((\mem_d~241_q\))))) # (!\Mux2~1_combout\ & (((\mem_d~2233_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~249_q\,
	datac => \mem_d~241_q\,
	datad => \mem_d~2233_combout\,
	combout => \mem_d~2234_combout\);

-- Location: LCCOMB_X21_Y19_N2
\mem_d~2235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2235_combout\ = (!\Mux1~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~2234_combout\))) # (!\Mux12~1_combout\ & (\mem_d~2232_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2232_combout\,
	datad => \mem_d~2234_combout\,
	combout => \mem_d~2235_combout\);

-- Location: FF_X21_Y12_N3
\mem_d~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~257_q\);

-- Location: LCCOMB_X23_Y11_N24
\mem_d~225feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~225feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~225feeder_combout\);

-- Location: FF_X23_Y11_N25
\mem_d~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~225feeder_combout\,
	ena => \mem_d~2661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~225_q\);

-- Location: LCCOMB_X21_Y12_N2
\mem_d~2250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2250_combout\ = (\mem_d~2249_combout\ & (((\mem_d~257_q\)) # (!\Mux2~1_combout\))) # (!\mem_d~2249_combout\ & (\Mux2~1_combout\ & ((\mem_d~225_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2249_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~257_q\,
	datad => \mem_d~225_q\,
	combout => \mem_d~2250_combout\);

-- Location: FF_X19_Y13_N7
\mem_d~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~105_q\);

-- Location: LCCOMB_X19_Y13_N6
\mem_d~2251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2251_combout\ = (\Mux2~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~137_q\)) # (!\Mux12~1_combout\ & ((\mem_d~105_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~137_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~105_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2251_combout\);

-- Location: LCCOMB_X24_Y12_N30
\mem_d~2668\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2668_combout\ = (\mem_d~2597_combout\ & (\mem_d~2596_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2596_combout\,
	combout => \mem_d~2668_combout\);

-- Location: FF_X22_Y13_N23
\mem_d~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~265_q\);

-- Location: LCCOMB_X17_Y13_N22
\mem_d~233feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~233feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~233feeder_combout\);

-- Location: FF_X17_Y13_N23
\mem_d~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~233feeder_combout\,
	ena => \mem_d~2665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~233_q\);

-- Location: LCCOMB_X22_Y13_N22
\mem_d~2252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2252_combout\ = (\Mux2~1_combout\ & ((\mem_d~2251_combout\ & (\mem_d~265_q\)) # (!\mem_d~2251_combout\ & ((\mem_d~233_q\))))) # (!\Mux2~1_combout\ & (\mem_d~2251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~2251_combout\,
	datac => \mem_d~265_q\,
	datad => \mem_d~233_q\,
	combout => \mem_d~2252_combout\);

-- Location: LCCOMB_X21_Y12_N0
\mem_d~2253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2253_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~2252_combout\))) # (!\Mux14~1_combout\ & (\mem_d~2250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2250_combout\,
	datac => \Mux1~1_combout\,
	datad => \mem_d~2252_combout\,
	combout => \mem_d~2253_combout\);

-- Location: FF_X21_Y12_N25
\mem_d~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~177_q\);

-- Location: LCCOMB_X18_Y11_N10
\mem_d~49feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~49feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~49feeder_combout\);

-- Location: FF_X18_Y11_N11
\mem_d~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~49feeder_combout\,
	ena => \mem_d~2653_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~49_q\);

-- Location: LCCOMB_X21_Y12_N24
\mem_d~2242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2242_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~177_q\)) # (!\Mux2~1_combout\ & ((\mem_d~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~177_q\,
	datad => \mem_d~49_q\,
	combout => \mem_d~2242_combout\);

-- Location: LCCOMB_X21_Y13_N4
\mem_d~57feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~57feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~57feeder_combout\);

-- Location: LCCOMB_X18_Y18_N8
\mem_d~2659\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2659_combout\ = (\mem_d~2597_combout\ & (\Mux2~0_combout\ & (\Mux167~0_combout\ & \mem_d~2592_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2597_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2592_combout\,
	combout => \mem_d~2659_combout\);

-- Location: FF_X21_Y13_N5
\mem_d~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~57feeder_combout\,
	ena => \mem_d~2659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~57_q\);

-- Location: LCCOMB_X17_Y18_N0
\mem_d~2660\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2660_combout\ = (\mem_d~2592_combout\ & (\mem_d~2597_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2592_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \Mux167~0_combout\,
	combout => \mem_d~2660_combout\);

-- Location: FF_X21_Y13_N31
\mem_d~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~185_q\);

-- Location: LCCOMB_X21_Y13_N30
\mem_d~2246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2246_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~185_q\))) # (!\Mux2~1_combout\ & (\mem_d~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~57_q\,
	datac => \mem_d~185_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2246_combout\);

-- Location: LCCOMB_X17_Y15_N6
\mem_d~17feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~17feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~17feeder_combout\);

-- Location: FF_X17_Y15_N7
\mem_d~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~17feeder_combout\,
	ena => \mem_d~2657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~17_q\);

-- Location: FF_X23_Y19_N31
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
	ena => \mem_d~2658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~145_q\);

-- Location: LCCOMB_X23_Y19_N30
\mem_d~2244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2244_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~145_q\))) # (!\Mux2~1_combout\ & (\mem_d~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~17_q\,
	datac => \mem_d~145_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2244_combout\);

-- Location: FF_X17_Y13_N5
\mem_d~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~153_q\);

-- Location: LCCOMB_X17_Y13_N4
\mem_d~2243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2243_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~153_q\))) # (!\Mux2~1_combout\ & (!\mem_d~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~25_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~153_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2243_combout\);

-- Location: LCCOMB_X25_Y16_N6
\mem_d~2245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2245_combout\ = (\Mux12~1_combout\ & (\Mux14~1_combout\)) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~2243_combout\))) # (!\Mux14~1_combout\ & (\mem_d~2244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2244_combout\,
	datad => \mem_d~2243_combout\,
	combout => \mem_d~2245_combout\);

-- Location: LCCOMB_X25_Y16_N8
\mem_d~2247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2247_combout\ = (\Mux12~1_combout\ & ((\mem_d~2245_combout\ & ((\mem_d~2246_combout\))) # (!\mem_d~2245_combout\ & (\mem_d~2242_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~2245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~2242_combout\,
	datac => \mem_d~2246_combout\,
	datad => \mem_d~2245_combout\,
	combout => \mem_d~2247_combout\);

-- Location: LCCOMB_X23_Y13_N2
\mem_d~2652\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2652_combout\ = (\mem_d~2597_combout\ & (\mem_d~2588_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2588_combout\,
	combout => \mem_d~2652_combout\);

-- Location: FF_X23_Y13_N7
\mem_d~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~201_q\);

-- Location: LCCOMB_X23_Y13_N6
\mem_d~2240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2240_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~201_q\))) # (!\Mux2~1_combout\ & (\mem_d~73_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~73_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~201_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2240_combout\);

-- Location: FF_X24_Y19_N3
\mem_d~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~193_q\);

-- Location: LCCOMB_X24_Y19_N0
\mem_d~65feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~65feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~65feeder_combout\);

-- Location: FF_X24_Y19_N1
\mem_d~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~65feeder_combout\,
	ena => \mem_d~2645_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~65_q\);

-- Location: LCCOMB_X24_Y19_N2
\mem_d~2236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2236_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~193_q\)) # (!\Mux2~1_combout\ & ((\mem_d~65_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~193_q\,
	datad => \mem_d~65_q\,
	combout => \mem_d~2236_combout\);

-- Location: FF_X18_Y19_N19
\mem_d~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~161_q\);

-- Location: LCCOMB_X18_Y19_N18
\mem_d~2238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2238_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~161_q\))) # (!\Mux2~1_combout\ & (!\mem_d~33_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~33_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~161_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2238_combout\);

-- Location: LCCOMB_X18_Y13_N16
\mem_d~2648\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2648_combout\ = (\mem_d~2597_combout\ & (\mem_d~2586_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2597_combout\,
	datad => \mem_d~2586_combout\,
	combout => \mem_d~2648_combout\);

-- Location: FF_X23_Y13_N17
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
	ena => \mem_d~2648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~169_q\);

-- Location: LCCOMB_X23_Y13_N16
\mem_d~2237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2237_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~169_q\))) # (!\Mux2~1_combout\ & (\mem_d~41_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~41_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~169_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2237_combout\);

-- Location: LCCOMB_X25_Y16_N2
\mem_d~2239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2239_combout\ = (\Mux12~1_combout\ & (\Mux14~1_combout\)) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~2237_combout\))) # (!\Mux14~1_combout\ & (\mem_d~2238_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2238_combout\,
	datad => \mem_d~2237_combout\,
	combout => \mem_d~2239_combout\);

-- Location: LCCOMB_X25_Y16_N12
\mem_d~2241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2241_combout\ = (\Mux12~1_combout\ & ((\mem_d~2239_combout\ & (\mem_d~2240_combout\)) # (!\mem_d~2239_combout\ & ((\mem_d~2236_combout\))))) # (!\Mux12~1_combout\ & (((\mem_d~2239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~2240_combout\,
	datac => \mem_d~2236_combout\,
	datad => \mem_d~2239_combout\,
	combout => \mem_d~2241_combout\);

-- Location: LCCOMB_X21_Y19_N20
\mem_d~2248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2248_combout\ = (\Mux13~1_combout\ & ((\Mux11~1_combout\) # ((\mem_d~2241_combout\)))) # (!\Mux13~1_combout\ & (!\Mux11~1_combout\ & (\mem_d~2247_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2247_combout\,
	datad => \mem_d~2241_combout\,
	combout => \mem_d~2248_combout\);

-- Location: LCCOMB_X21_Y19_N30
\mem_d~2254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2254_combout\ = (\Mux11~1_combout\ & ((\mem_d~2248_combout\ & ((\mem_d~2253_combout\))) # (!\mem_d~2248_combout\ & (\mem_d~2235_combout\)))) # (!\Mux11~1_combout\ & (((\mem_d~2248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2235_combout\,
	datac => \mem_d~2253_combout\,
	datad => \mem_d~2248_combout\,
	combout => \mem_d~2254_combout\);

-- Location: FF_X18_Y17_N9
\mem_d~1713\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1713_q\);

-- Location: LCCOMB_X25_Y15_N14
\mem_d~1585feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1585feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1585feeder_combout\);

-- Location: LCCOMB_X22_Y13_N4
\mem_d~2623\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2623_combout\ = (\Mux2~0_combout\ & (\mem_d~2590_combout\ & (\Mux167~0_combout\ & \mem_d~2581_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mem_d~2590_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2581_combout\,
	combout => \mem_d~2623_combout\);

-- Location: FF_X25_Y15_N15
\mem_d~1585\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1585feeder_combout\,
	ena => \mem_d~2623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1585_q\);

-- Location: LCCOMB_X18_Y17_N8
\mem_d~2219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2219_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~1713_q\)) # (!\Mux2~1_combout\ & ((\mem_d~1585_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1713_q\,
	datad => \mem_d~1585_q\,
	combout => \mem_d~2219_combout\);

-- Location: FF_X18_Y17_N23
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
	ena => \mem_d~2626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1681_q\);

-- Location: LCCOMB_X18_Y17_N22
\mem_d~2220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2220_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1681_q\))) # (!\Mux2~1_combout\ & (\mem_d~1553_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1553_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1681_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2220_combout\);

-- Location: LCCOMB_X17_Y14_N18
\mem_d~2221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2221_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~2219_combout\)) # (!\Mux12~1_combout\ & ((\mem_d~2220_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2219_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2220_combout\,
	combout => \mem_d~2221_combout\);

-- Location: FF_X17_Y14_N9
\mem_d~1721\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1721_q\);

-- Location: LCCOMB_X16_Y14_N2
\mem_d~1593feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1593feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1593feeder_combout\);

-- Location: FF_X16_Y14_N3
\mem_d~1593\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1593feeder_combout\,
	ena => \mem_d~2627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1593_q\);

-- Location: LCCOMB_X17_Y14_N8
\mem_d~2222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2222_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~1721_q\)) # (!\Mux2~1_combout\ & ((\mem_d~1593_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1721_q\,
	datad => \mem_d~1593_q\,
	combout => \mem_d~2222_combout\);

-- Location: LCCOMB_X17_Y18_N8
\mem_d~2622\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2622_combout\ = (\mem_d~2581_combout\ & (\mem_d~2589_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2589_combout\,
	combout => \mem_d~2622_combout\);

-- Location: FF_X18_Y13_N1
\mem_d~1689\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1689_q\);

-- Location: LCCOMB_X18_Y13_N0
\mem_d~2218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2218_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1689_q\))) # (!\Mux2~1_combout\ & (\mem_d~1561_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1561_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1689_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2218_combout\);

-- Location: LCCOMB_X17_Y14_N6
\mem_d~2223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2223_combout\ = (\Mux14~1_combout\ & ((\mem_d~2221_combout\ & (\mem_d~2222_combout\)) # (!\mem_d~2221_combout\ & ((\mem_d~2218_combout\))))) # (!\Mux14~1_combout\ & (\mem_d~2221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2221_combout\,
	datac => \mem_d~2222_combout\,
	datad => \mem_d~2218_combout\,
	combout => \mem_d~2223_combout\);

-- Location: LCCOMB_X14_Y17_N16
\mem_d~1577feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1577feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~1577feeder_combout\);

-- Location: FF_X14_Y17_N17
\mem_d~1577\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1577feeder_combout\,
	ena => \mem_d~2614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1577_q\);

-- Location: FF_X14_Y17_N31
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
	ena => \mem_d~2615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1569_q\);

-- Location: LCCOMB_X14_Y17_N30
\mem_d~2213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2213_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1577_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1569_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1577_q\,
	datac => \mem_d~1569_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2213_combout\);

-- Location: FF_X16_Y16_N1
\mem_d~1609\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1609_q\);

-- Location: LCCOMB_X16_Y16_N0
\mem_d~2214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2214_combout\ = (\mem_d~2213_combout\ & (((\mem_d~1609_q\) # (!\Mux12~1_combout\)))) # (!\mem_d~2213_combout\ & (\mem_d~1601_q\ & ((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1601_q\,
	datab => \mem_d~2213_combout\,
	datac => \mem_d~1609_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2214_combout\);

-- Location: FF_X17_Y17_N27
\mem_d~1697\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1697_q\);

-- Location: LCCOMB_X17_Y17_N26
\mem_d~2215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2215_combout\ = (\Mux12~1_combout\ & ((\mem_d~1729_q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1697_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1729_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1697_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2215_combout\);

-- Location: FF_X17_Y14_N25
\mem_d~1737\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux37~9_combout\,
	sload => VCC,
	ena => \mem_d~2620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1737_q\);

-- Location: LCCOMB_X17_Y17_N8
\mem_d~1705feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1705feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~1705feeder_combout\);

-- Location: FF_X17_Y17_N9
\mem_d~1705\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1705feeder_combout\,
	ena => \mem_d~2617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1705_q\);

-- Location: LCCOMB_X17_Y14_N24
\mem_d~2216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2216_combout\ = (\Mux14~1_combout\ & ((\mem_d~2215_combout\ & (\mem_d~1737_q\)) # (!\mem_d~2215_combout\ & ((\mem_d~1705_q\))))) # (!\Mux14~1_combout\ & (\mem_d~2215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2215_combout\,
	datac => \mem_d~1737_q\,
	datad => \mem_d~1705_q\,
	combout => \mem_d~2216_combout\);

-- Location: LCCOMB_X16_Y16_N14
\mem_d~2217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2217_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2216_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~2214_combout\,
	datac => \Mux1~1_combout\,
	datad => \mem_d~2216_combout\,
	combout => \mem_d~2217_combout\);

-- Location: LCCOMB_X21_Y16_N4
\mem_d~2224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2224_combout\ = (\Mux13~1_combout\ & ((\Mux11~1_combout\) # ((\mem_d~2217_combout\)))) # (!\Mux13~1_combout\ & (!\Mux11~1_combout\ & (\mem_d~2223_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2223_combout\,
	datad => \mem_d~2217_combout\,
	combout => \mem_d~2224_combout\);

-- Location: LCCOMB_X25_Y14_N10
\mem_d~2612\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2612_combout\ = (\mem_d~2581_combout\ & (\mem_d~2584_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2584_combout\,
	combout => \mem_d~2612_combout\);

-- Location: FF_X25_Y14_N25
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
	ena => \mem_d~2612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1785_q\);

-- Location: LCCOMB_X25_Y14_N24
\mem_d~2211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2211_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1785_q\))) # (!\Mux2~1_combout\ & (\mem_d~1657_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1657_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1785_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2211_combout\);

-- Location: LCCOMB_X26_Y14_N12
\mem_d~1753feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1753feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux37~9_combout\,
	combout => \mem_d~1753feeder_combout\);

-- Location: FF_X26_Y14_N13
\mem_d~1753\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1753feeder_combout\,
	ena => \mem_d~2608_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1753_q\);

-- Location: LCCOMB_X24_Y15_N8
\mem_d~2208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2208_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1753_q\))) # (!\Mux2~1_combout\ & (\mem_d~1625_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1625_q\,
	datab => \Mux1~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~1753_q\,
	combout => \mem_d~2208_combout\);

-- Location: LCCOMB_X24_Y15_N24
\mem_d~2210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2210_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~2208_combout\))) # (!\Mux14~1_combout\ & (\mem_d~2209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2209_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2208_combout\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2210_combout\);

-- Location: LCCOMB_X25_Y18_N20
\mem_d~2606\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2606_combout\ = (\mem_d~2581_combout\ & (\mem_d~2579_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2579_combout\,
	combout => \mem_d~2606_combout\);

-- Location: FF_X25_Y18_N13
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
	ena => \mem_d~2606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1777_q\);

-- Location: LCCOMB_X24_Y13_N28
\mem_d~1649feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1649feeder_combout\ = \Mux37~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux37~9_combout\,
	combout => \mem_d~1649feeder_combout\);

-- Location: FF_X24_Y13_N29
\mem_d~1649\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1649feeder_combout\,
	ena => \mem_d~2605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1649_q\);

-- Location: LCCOMB_X25_Y18_N12
\mem_d~2207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2207_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~1777_q\)) # (!\Mux2~1_combout\ & ((\mem_d~1649_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1777_q\,
	datad => \mem_d~1649_q\,
	combout => \mem_d~2207_combout\);

-- Location: LCCOMB_X25_Y18_N22
\mem_d~2212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2212_combout\ = (\Mux12~1_combout\ & ((\mem_d~2210_combout\ & (\mem_d~2211_combout\)) # (!\mem_d~2210_combout\ & ((\mem_d~2207_combout\))))) # (!\Mux12~1_combout\ & (((\mem_d~2210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~2211_combout\,
	datac => \mem_d~2210_combout\,
	datad => \mem_d~2207_combout\,
	combout => \mem_d~2212_combout\);

-- Location: LCCOMB_X21_Y16_N6
\mem_d~2230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2230_combout\ = (\Mux11~1_combout\ & ((\mem_d~2224_combout\ & (\mem_d~2229_combout\)) # (!\mem_d~2224_combout\ & ((\mem_d~2212_combout\))))) # (!\Mux11~1_combout\ & (((\mem_d~2224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2229_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2224_combout\,
	datad => \mem_d~2212_combout\,
	combout => \mem_d~2230_combout\);

-- Location: LCCOMB_X21_Y18_N22
\mem_d~2598\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2598_combout\ = (\Mux0~0_combout\ & (((\mem_d~2230_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & (\mem_d~2254_combout\)) # (!\Mux167~0_combout\ & ((\mem_d~2230_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2254_combout\,
	datad => \mem_d~2230_combout\,
	combout => \mem_d~2598_combout\);

-- Location: LCCOMB_X21_Y18_N8
\Mux46~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (\Mux169~1_combout\ & (\Mux168~1_combout\ & ((\Add0~0_combout\)))) # (!\Mux169~1_combout\ & (((\mem_d~2598_combout\)) # (!\Mux168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \mem_d~2598_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X23_Y14_N18
\regs[11][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][3]~feeder_combout\ = \Mux43~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux43~6_combout\,
	combout => \regs[11][3]~feeder_combout\);

-- Location: FF_X23_Y14_N19
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
	ena => \regs[11][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][3]~q\);

-- Location: FF_X22_Y14_N27
\regs[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][3]~q\);

-- Location: FF_X22_Y14_N21
\regs[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][3]~q\);

-- Location: LCCOMB_X22_Y14_N2
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\regs[9][3]~q\)) # (!\Mux14~1_combout\ & ((\regs[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][3]~q\,
	datab => \regs[8][3]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X22_Y14_N26
\Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux13~1_combout\ & ((\Mux19~0_combout\ & (\regs[11][3]~q\)) # (!\Mux19~0_combout\ & ((\regs[10][3]~q\))))) # (!\Mux13~1_combout\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[11][3]~q\,
	datac => \regs[10][3]~q\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X23_Y15_N22
\regs[13][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][3]~feeder_combout\ = \Mux43~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux43~6_combout\,
	combout => \regs[13][3]~feeder_combout\);

-- Location: FF_X23_Y15_N23
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
	ena => \regs[13][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][3]~q\);

-- Location: FF_X24_Y16_N9
\regs[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][3]~q\);

-- Location: FF_X24_Y16_N5
\regs[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][3]~q\);

-- Location: LCCOMB_X19_Y15_N28
\Mux19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\Mux14~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux13~1_combout\ & (\regs[14][3]~q\)) # (!\Mux13~1_combout\ & ((\regs[12][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[14][3]~q\,
	datac => \regs[12][3]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X19_Y15_N18
\Mux19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\Mux14~1_combout\ & ((\Mux19~7_combout\ & ((\regs[15][3]~q\))) # (!\Mux19~7_combout\ & (\regs[13][3]~q\)))) # (!\Mux14~1_combout\ & (((\Mux19~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[13][3]~q\,
	datac => \regs[15][3]~q\,
	datad => \Mux19~7_combout\,
	combout => \Mux19~8_combout\);

-- Location: FF_X23_Y16_N29
\regs[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][3]~q\);

-- Location: FF_X19_Y16_N9
\regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][3]~q\);

-- Location: LCCOMB_X19_Y16_N4
\Mux19~4\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X19_Y16_N22
\Mux19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~4_combout\ & ((\regs[3][3]~q\) # ((!\Mux13~1_combout\)))) # (!\Mux19~4_combout\ & (((\regs[2][3]~q\ & \Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][3]~q\,
	datab => \regs[2][3]~q\,
	datac => \Mux19~4_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux19~5_combout\);

-- Location: FF_X23_Y18_N19
\regs[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][3]~q\);

-- Location: LCCOMB_X24_Y18_N18
\regs[4][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[4][3]~feeder_combout\ = \Mux43~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~6_combout\,
	combout => \regs[4][3]~feeder_combout\);

-- Location: FF_X24_Y18_N19
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
	ena => \regs[4][3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[4][3]~q\);

-- Location: LCCOMB_X24_Y18_N16
\Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\regs[5][3]~q\)) # (!\Mux14~1_combout\ & ((\regs[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[5][3]~q\,
	datab => \regs[4][3]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X23_Y18_N18
\Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux13~1_combout\ & ((\Mux19~2_combout\ & ((\regs[7][3]~q\))) # (!\Mux19~2_combout\ & (\regs[6][3]~q\)))) # (!\Mux13~1_combout\ & (((\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][3]~q\,
	datab => \Mux13~1_combout\,
	datac => \regs[7][3]~q\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X19_Y18_N16
\Mux19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux11~1_combout\ & (\Mux12~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux12~1_combout\ & ((\Mux19~3_combout\))) # (!\Mux12~1_combout\ & (\Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux19~5_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X19_Y18_N26
\Mux19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~9_combout\ = (\Mux11~1_combout\ & ((\Mux19~6_combout\ & ((\Mux19~8_combout\))) # (!\Mux19~6_combout\ & (\Mux19~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux19~8_combout\,
	datad => \Mux19~6_combout\,
	combout => \Mux19~9_combout\);

-- Location: FF_X24_Y16_N31
\regs[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][4]~q\);

-- Location: LCCOMB_X23_Y14_N24
\regs[9][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][4]~feeder_combout\ = \Mux42~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux42~6_combout\,
	combout => \regs[9][4]~feeder_combout\);

-- Location: FF_X23_Y14_N25
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
	ena => \regs[9][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][4]~q\);

-- Location: LCCOMB_X22_Y15_N24
\Mux18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\Mux12~1_combout\ & ((\regs[13][4]~q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((!\Mux13~1_combout\ & \regs[9][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][4]~q\,
	datab => \Mux12~1_combout\,
	datac => \Mux13~1_combout\,
	datad => \regs[9][4]~q\,
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X22_Y15_N14
\Mux18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~8_combout\ = (\Mux13~1_combout\ & ((\Mux18~7_combout\ & ((\regs[15][4]~q\))) # (!\Mux18~7_combout\ & (\regs[11][4]~q\)))) # (!\Mux13~1_combout\ & (((\Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][4]~q\,
	datab => \regs[15][4]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux18~7_combout\,
	combout => \Mux18~8_combout\);

-- Location: FF_X24_Y16_N13
\regs[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][4]~q\);

-- Location: LCCOMB_X22_Y14_N16
\regs[8][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][4]~feeder_combout\ = \Mux42~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux42~6_combout\,
	combout => \regs[8][4]~feeder_combout\);

-- Location: FF_X22_Y14_N17
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
	ena => \regs[8][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][4]~q\);

-- Location: LCCOMB_X22_Y14_N22
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\regs[10][4]~q\)) # (!\Mux13~1_combout\ & ((\regs[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][4]~q\,
	datab => \regs[8][4]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X21_Y14_N28
\Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux12~1_combout\ & ((\Mux18~0_combout\ & (\regs[14][4]~q\)) # (!\Mux18~0_combout\ & ((\regs[12][4]~q\))))) # (!\Mux12~1_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][4]~q\,
	datab => \Mux12~1_combout\,
	datac => \regs[12][4]~q\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: FF_X24_Y17_N19
\regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][4]~q\);

-- Location: LCCOMB_X25_Y17_N8
\regs[2][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][4]~feeder_combout\ = \Mux42~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux42~6_combout\,
	combout => \regs[2][4]~feeder_combout\);

-- Location: FF_X25_Y17_N9
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
	ena => \regs[2][5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][4]~q\);

-- Location: LCCOMB_X25_Y17_N24
\Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux12~1_combout\ & ((\regs[6][4]~q\) # ((!\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\regs[2][4]~q\ & \Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][4]~q\,
	datab => \regs[2][4]~q\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X25_Y17_N30
\Mux18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux13~1_combout\ & (((\Mux18~4_combout\)))) # (!\Mux13~1_combout\ & ((\Mux18~4_combout\ & (\regs[4][4]~q\)) # (!\Mux18~4_combout\ & ((\regs[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][4]~q\,
	datab => \regs[0][4]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux18~4_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X21_Y16_N2
\Mux18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux14~1_combout\ & ((\Mux18~3_combout\) # ((\Mux11~1_combout\)))) # (!\Mux14~1_combout\ & (((\Mux18~5_combout\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux18~5_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X21_Y16_N8
\Mux18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~9_combout\ = (\Mux11~1_combout\ & ((\Mux18~6_combout\ & (\Mux18~8_combout\)) # (!\Mux18~6_combout\ & ((\Mux18~1_combout\))))) # (!\Mux11~1_combout\ & (((\Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux18~8_combout\,
	datac => \Mux18~1_combout\,
	datad => \Mux18~6_combout\,
	combout => \Mux18~9_combout\);

-- Location: DSPMULT_X20_Y18_N0
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

-- Location: DSPOUT_X20_Y18_N2
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

-- Location: LCCOMB_X21_Y18_N18
\Mux46~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~5_combout\ = (\Mux168~1_combout\ & (((\Mux46~4_combout\)))) # (!\Mux168~1_combout\ & ((\Mux46~4_combout\ & (\Add1~0_combout\)) # (!\Mux46~4_combout\ & ((\Mult0|auto_generated|mac_out2~dataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Mux168~1_combout\,
	datac => \Mux46~4_combout\,
	datad => \Mult0|auto_generated|mac_out2~dataout\,
	combout => \Mux46~5_combout\);

-- Location: LCCOMB_X21_Y18_N4
\Mux46~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux46~6_combout\ = (\Mux167~0_combout\ & ((\Mux1~0_combout\ & (\Mux46~3_combout\)) # (!\Mux1~0_combout\ & ((\Mux46~5_combout\))))) # (!\Mux167~0_combout\ & (((\Mux46~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux46~3_combout\,
	datad => \Mux46~5_combout\,
	combout => \Mux46~6_combout\);

-- Location: FF_X22_Y15_N21
\regs[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][0]~q\);

-- Location: LCCOMB_X21_Y18_N12
\regs[8][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[8][0]~feeder_combout\ = \Mux46~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux46~6_combout\,
	combout => \regs[8][0]~feeder_combout\);

-- Location: FF_X21_Y18_N13
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
	ena => \regs[8][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][0]~q\);

-- Location: LCCOMB_X21_Y15_N8
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux14~1_combout\ & (((\regs[9][0]~q\) # (\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (\regs[8][0]~q\ & ((!\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[8][0]~q\,
	datac => \regs[9][0]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X22_Y15_N12
\Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux13~1_combout\ & ((\Mux22~0_combout\ & (\regs[11][0]~q\)) # (!\Mux22~0_combout\ & ((\regs[10][0]~q\))))) # (!\Mux13~1_combout\ & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][0]~q\,
	datab => \regs[10][0]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X19_Y15_N16
\Mux22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux14~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux13~1_combout\ & ((\regs[14][0]~q\))) # (!\Mux13~1_combout\ & (\regs[12][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \regs[12][0]~q\,
	datac => \regs[14][0]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X23_Y15_N24
\Mux22~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\Mux14~1_combout\ & ((\Mux22~7_combout\ & (\regs[15][0]~q\)) # (!\Mux22~7_combout\ & ((\regs[13][0]~q\))))) # (!\Mux14~1_combout\ & (((\Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][0]~q\,
	datab => \regs[13][0]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux22~7_combout\,
	combout => \Mux22~8_combout\);

-- Location: LCCOMB_X23_Y17_N20
\regs[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[2][0]~feeder_combout\ = \Mux46~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux46~6_combout\,
	combout => \regs[2][0]~feeder_combout\);

-- Location: FF_X23_Y17_N21
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
	ena => \regs[2][5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][0]~q\);

-- Location: LCCOMB_X18_Y18_N20
\Mux22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux14~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux13~1_combout\ & ((\regs[2][0]~q\))) # (!\Mux13~1_combout\ & (\regs[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][0]~q\,
	datab => \regs[2][0]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X18_Y18_N6
\Mux22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux14~1_combout\ & ((\Mux22~4_combout\ & ((\regs[3][0]~q\))) # (!\Mux22~4_combout\ & (\regs[1][0]~q\)))) # (!\Mux14~1_combout\ & (((\Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][0]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[3][0]~q\,
	datad => \Mux22~4_combout\,
	combout => \Mux22~5_combout\);

-- Location: FF_X24_Y18_N5
\regs[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][0]~q\);

-- Location: LCCOMB_X18_Y16_N8
\regs[7][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][0]~feeder_combout\ = \Mux46~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux46~6_combout\,
	combout => \regs[7][0]~feeder_combout\);

-- Location: FF_X18_Y16_N9
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
	ena => \regs[7][3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][0]~q\);

-- Location: LCCOMB_X21_Y18_N16
\Mux22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux14~1_combout\ & (((\regs[7][0]~q\) # (!\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (\regs[6][0]~q\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][0]~q\,
	datab => \regs[7][0]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X24_Y18_N28
\Mux22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux13~1_combout\ & (((\Mux22~2_combout\)))) # (!\Mux13~1_combout\ & ((\Mux22~2_combout\ & ((\regs[5][0]~q\))) # (!\Mux22~2_combout\ & (\regs[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][0]~q\,
	datab => \regs[5][0]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux22~2_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X19_Y18_N28
\Mux22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux11~1_combout\ & (\Mux12~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux12~1_combout\ & ((\Mux22~3_combout\))) # (!\Mux12~1_combout\ & (\Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux22~5_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X19_Y18_N22
\Mux22~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~9_combout\ = (\Mux11~1_combout\ & ((\Mux22~6_combout\ & ((\Mux22~8_combout\))) # (!\Mux22~6_combout\ & (\Mux22~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux22~8_combout\,
	datad => \Mux22~6_combout\,
	combout => \Mux22~9_combout\);

-- Location: LCCOMB_X19_Y18_N18
\Mux39~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~8_combout\ = (\Mux169~1_combout\ & ((\Mux39~7_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\Mux39~7_combout\ & (\Add0~14_combout\)))) # (!\Mux169~1_combout\ & (\Mux39~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux39~7_combout\,
	datac => \Add0~14_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \Mux39~8_combout\);

-- Location: LCCOMB_X22_Y16_N30
\Mux39~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux39~9_combout\ = (\Mux167~0_combout\ & ((\Mux1~0_combout\ & (\Mux39~3_combout\)) # (!\Mux1~0_combout\ & ((\Mux39~8_combout\))))) # (!\Mux167~0_combout\ & (\Mux39~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux39~3_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux39~8_combout\,
	combout => \Mux39~9_combout\);

-- Location: FF_X23_Y17_N9
\regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][7]~q\);

-- Location: LCCOMB_X23_Y17_N22
\Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux1~1_combout\ & ((\regs[2][7]~q\) # ((\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & (((\regs[0][7]~q\ & !\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][7]~q\,
	datab => \regs[0][7]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X23_Y17_N18
\Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & (((\regs[3][7]~q\) # (!\Mux2~1_combout\)))) # (!\Mux3~4_combout\ & (\regs[1][7]~q\ & ((\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][7]~q\,
	datab => \regs[3][7]~q\,
	datac => \Mux3~4_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X21_Y19_N16
\regs[14][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][7]~feeder_combout\ = \Mux39~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux39~9_combout\,
	combout => \regs[14][7]~feeder_combout\);

-- Location: FF_X21_Y19_N17
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
	ena => \regs[14][5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][7]~q\);

-- Location: FF_X21_Y15_N27
\regs[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux39~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][7]~q\);

-- Location: LCCOMB_X21_Y15_N26
\Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux2~1_combout\ & ((\regs[13][7]~q\) # ((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (((\regs[12][7]~q\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[13][7]~q\,
	datac => \regs[12][7]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X21_Y19_N10
\Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux1~1_combout\ & ((\Mux3~2_combout\ & (\regs[15][7]~q\)) # (!\Mux3~2_combout\ & ((\regs[14][7]~q\))))) # (!\Mux1~1_combout\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][7]~q\,
	datab => \regs[14][7]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X21_Y19_N4
\Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux0~0_combout\ & (((\Mux3~3_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & (\Mux3~5_combout\)) # (!\Mux167~0_combout\ & ((\Mux3~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux3~5_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X23_Y15_N20
\Mux43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & ((\Add0~6_combout\))) # (!\Mux169~1_combout\ & (\mem_d~2601_combout\)))) # (!\Mux168~1_combout\ & (((!\Mux169~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2601_combout\,
	datab => \Mux168~1_combout\,
	datac => \Mux169~1_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X23_Y15_N6
\Mux43~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~5_combout\ = (\Mux168~1_combout\ & (((\Mux43~4_combout\)))) # (!\Mux168~1_combout\ & ((\Mux43~4_combout\ & (\Add1~6_combout\)) # (!\Mux43~4_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Mux168~1_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \Mux43~4_combout\,
	combout => \Mux43~5_combout\);

-- Location: LCCOMB_X23_Y15_N30
\Mux43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux43~6_combout\ = (\Mux167~0_combout\ & ((\Mux1~0_combout\ & (\Mux43~3_combout\)) # (!\Mux1~0_combout\ & ((\Mux43~5_combout\))))) # (!\Mux167~0_combout\ & (\Mux43~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux43~3_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux43~5_combout\,
	combout => \Mux43~6_combout\);

-- Location: LCCOMB_X19_Y15_N24
\regs[14][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][3]~feeder_combout\ = \Mux43~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux43~6_combout\,
	combout => \regs[14][3]~feeder_combout\);

-- Location: FF_X19_Y15_N25
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
	ena => \regs[14][5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][3]~q\);

-- Location: LCCOMB_X24_Y16_N26
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux2~1_combout\ & ((\regs[13][3]~q\) # ((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (((\regs[12][3]~q\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[13][3]~q\,
	datab => \regs[12][3]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X24_Y16_N10
\Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & ((\regs[15][3]~q\) # ((!\Mux1~1_combout\)))) # (!\Mux7~2_combout\ & (((\regs[14][3]~q\ & \Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][3]~q\,
	datab => \regs[14][3]~q\,
	datac => \Mux7~2_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux7~3_combout\);

-- Location: FF_X19_Y16_N11
\regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][3]~q\);

-- Location: FF_X21_Y17_N3
\regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux43~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][3]~q\);

-- Location: LCCOMB_X21_Y17_N2
\Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux2~1_combout\ & (((\regs[1][3]~q\) # (\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (\regs[0][3]~q\ & ((!\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[0][3]~q\,
	datac => \regs[1][3]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X23_Y16_N28
\Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux1~1_combout\ & ((\Mux7~4_combout\ & (\regs[3][3]~q\)) # (!\Mux7~4_combout\ & ((\regs[2][3]~q\))))) # (!\Mux1~1_combout\ & (((\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \regs[3][3]~q\,
	datac => \regs[2][3]~q\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X23_Y16_N16
\Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux0~0_combout\ & (((\Mux7~3_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & ((\Mux7~5_combout\))) # (!\Mux167~0_combout\ & (\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: FF_X22_Y15_N11
\regs[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][2]~q\);

-- Location: LCCOMB_X22_Y15_N4
\Mux35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & ((\regs[10][2]~q\))) # (!\Mux28~1_combout\ & (\regs[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[8][2]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[10][2]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X22_Y15_N10
\Mux35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux29~1_combout\ & ((\Mux35~0_combout\ & ((\regs[11][2]~q\))) # (!\Mux35~0_combout\ & (\regs[9][2]~q\)))) # (!\Mux29~1_combout\ & (((\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][2]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[11][2]~q\,
	datad => \Mux35~0_combout\,
	combout => \Mux35~1_combout\);

-- Location: FF_X24_Y17_N9
\regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][2]~q\);

-- Location: LCCOMB_X24_Y17_N8
\Mux35~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[1][2]~q\)) # (!\Mux29~1_combout\ & ((\regs[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[1][2]~q\,
	datac => \regs[0][2]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X24_Y17_N14
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

-- Location: FF_X23_Y16_N9
\regs[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][2]~q\);

-- Location: LCCOMB_X25_Y16_N18
\Mux35~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & ((\regs[5][2]~q\))) # (!\Mux29~1_combout\ & (\regs[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][2]~q\,
	datab => \regs[5][2]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X25_Y16_N28
\Mux35~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux28~1_combout\ & ((\Mux35~2_combout\ & (\regs[7][2]~q\)) # (!\Mux35~2_combout\ & ((\regs[6][2]~q\))))) # (!\Mux28~1_combout\ & (((\Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[7][2]~q\,
	datac => \regs[6][2]~q\,
	datad => \Mux35~2_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X24_Y15_N2
\Mux35~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~6_combout\ = (\Mux11~1_combout\ & (((\Mux35~3_combout\) # (\Mux0~1_combout\)))) # (!\Mux11~1_combout\ & (\Mux35~5_combout\ & ((!\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux35~5_combout\,
	datac => \Mux35~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux35~6_combout\);

-- Location: LCCOMB_X24_Y15_N20
\Mux35~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux35~9_combout\ = (\Mux0~1_combout\ & ((\Mux35~6_combout\ & (\Mux35~8_combout\)) # (!\Mux35~6_combout\ & ((\Mux35~1_combout\))))) # (!\Mux0~1_combout\ & (((\Mux35~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~8_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux35~1_combout\,
	datad => \Mux35~6_combout\,
	combout => \Mux35~9_combout\);

-- Location: LCCOMB_X24_Y11_N20
\mem_d~1659feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1659feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1659feeder_combout\);

-- Location: LCCOMB_X18_Y19_N12
\mem_d~2611\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2611_combout\ = (\Mux2~0_combout\ & (\Mux167~0_combout\ & (\mem_d~2584_combout\ & \mem_d~2581_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2584_combout\,
	datad => \mem_d~2581_combout\,
	combout => \mem_d~2611_combout\);

-- Location: FF_X24_Y11_N21
\mem_d~1659\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1659feeder_combout\,
	ena => \mem_d~2611_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1659_q\);

-- Location: FF_X25_Y14_N9
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
	ena => \mem_d~2612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1787_q\);

-- Location: LCCOMB_X25_Y14_N8
\mem_d~2321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2321_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1787_q\))) # (!\Mux2~1_combout\ & (\mem_d~1659_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1659_q\,
	datac => \mem_d~1787_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2321_combout\);

-- Location: LCCOMB_X25_Y12_N10
\mem_d~2636\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2636_combout\ = (\mem_d~2596_combout\ & (\mem_d~2581_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2596_combout\,
	datad => \mem_d~2581_combout\,
	combout => \mem_d~2636_combout\);

-- Location: FF_X25_Y12_N17
\mem_d~1803\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1803_q\);

-- Location: LCCOMB_X24_Y13_N14
\mem_d~1675feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1675feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1675feeder_combout\);

-- Location: FF_X24_Y13_N15
\mem_d~1675\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1675feeder_combout\,
	ena => \mem_d~2632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1675_q\);

-- Location: LCCOMB_X25_Y12_N16
\mem_d~2325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2325_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~1803_q\)) # (!\Mux2~1_combout\ & ((\mem_d~1675_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1803_q\,
	datad => \mem_d~1675_q\,
	combout => \mem_d~2325_combout\);

-- Location: LCCOMB_X25_Y14_N26
\mem_d~2326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2326_combout\ = (\mem_d~2324_combout\ & (((\mem_d~2325_combout\) # (!\Mux14~1_combout\)))) # (!\mem_d~2324_combout\ & (\mem_d~2321_combout\ & ((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2324_combout\,
	datab => \mem_d~2321_combout\,
	datac => \mem_d~2325_combout\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2326_combout\);

-- Location: LCCOMB_X17_Y14_N16
\mem_d~1723feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1723feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1723feeder_combout\);

-- Location: FF_X17_Y14_N17
\mem_d~1723\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1723feeder_combout\,
	ena => \mem_d~2628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1723_q\);

-- Location: FF_X17_Y14_N15
\mem_d~1739\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1739_q\);

-- Location: FF_X16_Y14_N15
\mem_d~1595\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1595_q\);

-- Location: LCCOMB_X14_Y14_N24
\mem_d~1611feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1611feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1611feeder_combout\);

-- Location: FF_X14_Y14_N25
\mem_d~1611\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1611feeder_combout\,
	ena => \mem_d~2616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1611_q\);

-- Location: LCCOMB_X16_Y14_N14
\mem_d~2311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2311_combout\ = (\Mux13~1_combout\ & ((\Mux2~1_combout\) # ((\mem_d~1611_q\)))) # (!\Mux13~1_combout\ & (!\Mux2~1_combout\ & (\mem_d~1595_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1595_q\,
	datad => \mem_d~1611_q\,
	combout => \mem_d~2311_combout\);

-- Location: LCCOMB_X17_Y14_N14
\mem_d~2312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2312_combout\ = (\Mux2~1_combout\ & ((\mem_d~2311_combout\ & ((\mem_d~1739_q\))) # (!\mem_d~2311_combout\ & (\mem_d~1723_q\)))) # (!\Mux2~1_combout\ & (((\mem_d~2311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1723_q\,
	datac => \mem_d~1739_q\,
	datad => \mem_d~2311_combout\,
	combout => \mem_d~2312_combout\);

-- Location: LCCOMB_X18_Y17_N0
\mem_d~1715feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1715feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1715feeder_combout\);

-- Location: FF_X18_Y17_N1
\mem_d~1715\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1715feeder_combout\,
	ena => \mem_d~2624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1715_q\);

-- Location: LCCOMB_X24_Y19_N28
\mem_d~2618\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2618_combout\ = (\mem_d~2581_combout\ & (\mem_d~2585_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2585_combout\,
	combout => \mem_d~2618_combout\);

-- Location: FF_X26_Y18_N9
\mem_d~1731\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1731_q\);

-- Location: FF_X22_Y17_N27
\mem_d~1603\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1603_q\);

-- Location: FF_X25_Y15_N11
\mem_d~1587\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1587_q\);

-- Location: LCCOMB_X25_Y15_N10
\mem_d~2309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2309_combout\ = (\Mux2~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1603_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1587_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1603_q\,
	datac => \mem_d~1587_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2309_combout\);

-- Location: LCCOMB_X26_Y18_N8
\mem_d~2310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2310_combout\ = (\Mux2~1_combout\ & ((\mem_d~2309_combout\ & ((\mem_d~1731_q\))) # (!\mem_d~2309_combout\ & (\mem_d~1715_q\)))) # (!\Mux2~1_combout\ & (((\mem_d~2309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1715_q\,
	datac => \mem_d~1731_q\,
	datad => \mem_d~2309_combout\,
	combout => \mem_d~2310_combout\);

-- Location: LCCOMB_X21_Y18_N24
\mem_d~2313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2313_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~2312_combout\)) # (!\Mux14~1_combout\ & ((\mem_d~2310_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2312_combout\,
	datad => \mem_d~2310_combout\,
	combout => \mem_d~2313_combout\);

-- Location: LCCOMB_X18_Y17_N2
\mem_d~1683feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1683feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~1683feeder_combout\);

-- Location: FF_X18_Y17_N3
\mem_d~1683\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1683feeder_combout\,
	ena => \mem_d~2626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1683_q\);

-- Location: LCCOMB_X14_Y17_N14
\mem_d~2314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2314_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1699_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1683_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1699_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1683_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2314_combout\);

-- Location: LCCOMB_X17_Y18_N30
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

-- Location: FF_X17_Y18_N31
\mem_d~1691\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1691feeder_combout\,
	ena => \mem_d~2622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1691_q\);

-- Location: FF_X17_Y17_N23
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
	ena => \mem_d~2617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1707_q\);

-- Location: LCCOMB_X17_Y17_N22
\mem_d~2318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2318_combout\ = (!\Mux1~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~1707_q\))) # (!\Mux13~1_combout\ & (\mem_d~1691_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~1691_q\,
	datac => \mem_d~1707_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2318_combout\);

-- Location: LCCOMB_X14_Y17_N22
\mem_d~2319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2319_combout\ = (\mem_d~2317_combout\ & (((\mem_d~2318_combout\)) # (!\Mux2~1_combout\))) # (!\mem_d~2317_combout\ & (\Mux2~1_combout\ & (\mem_d~2314_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2317_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2314_combout\,
	datad => \mem_d~2318_combout\,
	combout => \mem_d~2319_combout\);

-- Location: LCCOMB_X21_Y18_N30
\mem_d~2320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2320_combout\ = (\Mux11~1_combout\ & (\Mux12~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~2313_combout\)) # (!\Mux12~1_combout\ & ((\mem_d~2319_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2313_combout\,
	datad => \mem_d~2319_combout\,
	combout => \mem_d~2320_combout\);

-- Location: LCCOMB_X26_Y16_N0
\mem_d~1771feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1771feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1771feeder_combout\);

-- Location: FF_X26_Y16_N1
\mem_d~1771\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1771feeder_combout\,
	ena => \mem_d~2634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1771_q\);

-- Location: FF_X26_Y16_N31
\mem_d~1763\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1763_q\);

-- Location: LCCOMB_X26_Y14_N6
\mem_d~1755feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1755feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1755feeder_combout\);

-- Location: FF_X26_Y14_N7
\mem_d~1755\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1755feeder_combout\,
	ena => \mem_d~2608_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1755_q\);

-- Location: FF_X26_Y14_N29
\mem_d~1747\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1747_q\);

-- Location: LCCOMB_X26_Y14_N28
\mem_d~2306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2306_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1755_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1747_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1755_q\,
	datac => \mem_d~1747_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2306_combout\);

-- Location: LCCOMB_X26_Y16_N30
\mem_d~2307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2307_combout\ = (\Mux13~1_combout\ & ((\mem_d~2306_combout\ & (\mem_d~1771_q\)) # (!\mem_d~2306_combout\ & ((\mem_d~1763_q\))))) # (!\Mux13~1_combout\ & (((\mem_d~2306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1771_q\,
	datac => \mem_d~1763_q\,
	datad => \mem_d~2306_combout\,
	combout => \mem_d~2307_combout\);

-- Location: LCCOMB_X25_Y18_N8
\mem_d~2629\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2629_combout\ = (\Mux167~0_combout\ & (\Mux2~0_combout\ & (\mem_d~2581_combout\ & \mem_d~2593_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2593_combout\,
	combout => \mem_d~2629_combout\);

-- Location: FF_X26_Y15_N11
\mem_d~1643\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1643_q\);

-- Location: LCCOMB_X24_Y12_N14
\mem_d~1635feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1635feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~1635feeder_combout\);

-- Location: LCCOMB_X23_Y12_N30
\mem_d~2631\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2631_combout\ = (\Mux2~0_combout\ & (\Mux167~0_combout\ & (\mem_d~2595_combout\ & \mem_d~2581_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2595_combout\,
	datad => \mem_d~2581_combout\,
	combout => \mem_d~2631_combout\);

-- Location: FF_X24_Y12_N15
\mem_d~1635\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1635feeder_combout\,
	ena => \mem_d~2631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1635_q\);

-- Location: LCCOMB_X25_Y14_N28
\mem_d~2609\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2609_combout\ = (\Mux2~0_combout\ & (\Mux167~0_combout\ & (\mem_d~2581_combout\ & \mem_d~2583_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2581_combout\,
	datad => \mem_d~2583_combout\,
	combout => \mem_d~2609_combout\);

-- Location: FF_X26_Y15_N1
\mem_d~1619\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1619_q\);

-- Location: LCCOMB_X26_Y15_N0
\mem_d~2304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2304_combout\ = (\Mux13~1_combout\ & ((\mem_d~1635_q\) # ((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~1619_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1635_q\,
	datac => \mem_d~1619_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2304_combout\);

-- Location: LCCOMB_X26_Y15_N10
\mem_d~2305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2305_combout\ = (\Mux14~1_combout\ & ((\mem_d~2304_combout\ & ((\mem_d~1643_q\))) # (!\mem_d~2304_combout\ & (\mem_d~1627_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1627_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1643_q\,
	datad => \mem_d~2304_combout\,
	combout => \mem_d~2305_combout\);

-- Location: LCCOMB_X26_Y15_N4
\mem_d~2308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2308_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~2307_combout\)) # (!\Mux2~1_combout\ & ((\mem_d~2305_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~2307_combout\,
	datad => \mem_d~2305_combout\,
	combout => \mem_d~2308_combout\);

-- Location: LCCOMB_X21_Y18_N28
\mem_d~2327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2327_combout\ = (\Mux11~1_combout\ & ((\mem_d~2320_combout\ & (\mem_d~2326_combout\)) # (!\mem_d~2320_combout\ & ((\mem_d~2308_combout\))))) # (!\Mux11~1_combout\ & (((\mem_d~2320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2326_combout\,
	datac => \mem_d~2320_combout\,
	datad => \mem_d~2308_combout\,
	combout => \mem_d~2327_combout\);

-- Location: LCCOMB_X16_Y13_N10
\mem_d~219feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~219feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~219feeder_combout\);

-- Location: FF_X16_Y13_N11
\mem_d~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~219feeder_combout\,
	ena => \mem_d~2640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~219_q\);

-- Location: LCCOMB_X17_Y12_N28
\mem_d~2638\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2638_combout\ = (\mem_d~2597_combout\ & (\mem_d~2582_combout\ & (\Mux167~0_combout\ & \Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2597_combout\,
	datab => \mem_d~2582_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \mem_d~2638_combout\);

-- Location: FF_X18_Y11_N19
\mem_d~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~91_q\);

-- Location: LCCOMB_X23_Y11_N10
\mem_d~211feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~211feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~211feeder_combout\);

-- Location: FF_X23_Y11_N11
\mem_d~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~211feeder_combout\,
	ena => \mem_d~2637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~211_q\);

-- Location: LCCOMB_X19_Y11_N24
\mem_d~83feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~83feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~83feeder_combout\);

-- Location: FF_X19_Y11_N25
\mem_d~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~83feeder_combout\,
	ena => \mem_d~2639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~83_q\);

-- Location: LCCOMB_X18_Y11_N12
\mem_d~2328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2328_combout\ = (\Mux2~1_combout\ & ((\mem_d~211_q\) # ((\Mux14~1_combout\)))) # (!\Mux2~1_combout\ & (((!\Mux14~1_combout\ & \mem_d~83_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~211_q\,
	datac => \Mux14~1_combout\,
	datad => \mem_d~83_q\,
	combout => \mem_d~2328_combout\);

-- Location: LCCOMB_X18_Y11_N18
\mem_d~2329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2329_combout\ = (\Mux14~1_combout\ & ((\mem_d~2328_combout\ & (\mem_d~219_q\)) # (!\mem_d~2328_combout\ & ((\mem_d~91_q\))))) # (!\Mux14~1_combout\ & (((\mem_d~2328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~219_q\,
	datac => \mem_d~91_q\,
	datad => \mem_d~2328_combout\,
	combout => \mem_d~2329_combout\);

-- Location: LCCOMB_X21_Y11_N14
\mem_d~251feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~251feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux35~9_combout\,
	combout => \mem_d~251feeder_combout\);

-- Location: FF_X21_Y11_N15
\mem_d~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~251feeder_combout\,
	ena => \mem_d~2644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~251_q\);

-- Location: FF_X22_Y11_N21
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
	ena => \mem_d~2641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~243_q\);

-- Location: FF_X19_Y11_N19
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
	ena => \mem_d~2643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~115_q\);

-- Location: LCCOMB_X19_Y11_N18
\mem_d~2330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2330_combout\ = (\Mux2~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~123_q\)) # (!\Mux14~1_combout\ & ((\mem_d~115_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~123_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~115_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2330_combout\);

-- Location: LCCOMB_X22_Y11_N20
\mem_d~2331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2331_combout\ = (\Mux2~1_combout\ & ((\mem_d~2330_combout\ & (\mem_d~251_q\)) # (!\mem_d~2330_combout\ & ((\mem_d~243_q\))))) # (!\Mux2~1_combout\ & (((\mem_d~2330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~251_q\,
	datac => \mem_d~243_q\,
	datad => \mem_d~2330_combout\,
	combout => \mem_d~2331_combout\);

-- Location: LCCOMB_X22_Y11_N22
\mem_d~2332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2332_combout\ = (!\Mux1~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~2331_combout\))) # (!\Mux12~1_combout\ & (\mem_d~2329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2329_combout\,
	datad => \mem_d~2331_combout\,
	combout => \mem_d~2332_combout\);

-- Location: FF_X18_Y12_N15
\mem_d~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~99_q\);

-- Location: LCCOMB_X18_Y12_N14
\mem_d~2345\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2345_combout\ = (\Mux12~1_combout\ & ((\mem_d~131_q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~99_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~131_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~99_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2345_combout\);

-- Location: LCCOMB_X23_Y12_N8
\mem_d~2666\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2666_combout\ = (\Mux2~0_combout\ & (\mem_d~2596_combout\ & (\Mux167~0_combout\ & \mem_d~2597_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \mem_d~2596_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2597_combout\,
	combout => \mem_d~2666_combout\);

-- Location: FF_X18_Y12_N25
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
	ena => \mem_d~2666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~139_q\);

-- Location: LCCOMB_X18_Y12_N24
\mem_d~2346\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2346_combout\ = (\mem_d~2345_combout\ & (((\mem_d~139_q\) # (!\Mux14~1_combout\)))) # (!\mem_d~2345_combout\ & (\mem_d~107_q\ & ((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~107_q\,
	datab => \mem_d~2345_combout\,
	datac => \mem_d~139_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2346_combout\);

-- Location: LCCOMB_X17_Y13_N26
\mem_d~235feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~235feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~235feeder_combout\);

-- Location: FF_X17_Y13_N27
\mem_d~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~235feeder_combout\,
	ena => \mem_d~2665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~235_q\);

-- Location: FF_X22_Y13_N1
\mem_d~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~267_q\);

-- Location: LCCOMB_X22_Y13_N0
\mem_d~2348\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2348_combout\ = (\mem_d~2347_combout\ & (((\mem_d~267_q\) # (!\Mux14~1_combout\)))) # (!\mem_d~2347_combout\ & (\mem_d~235_q\ & ((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2347_combout\,
	datab => \mem_d~235_q\,
	datac => \mem_d~267_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2348_combout\);

-- Location: LCCOMB_X22_Y13_N18
\mem_d~2349\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2349_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2348_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~2346_combout\,
	datad => \mem_d~2348_combout\,
	combout => \mem_d~2349_combout\);

-- Location: LCCOMB_X22_Y13_N30
\mem_d~2651\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2651_combout\ = (\mem_d~2597_combout\ & (\mem_d~2588_combout\ & (\Mux2~0_combout\ & \Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2597_combout\,
	datab => \mem_d~2588_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \mem_d~2651_combout\);

-- Location: FF_X22_Y13_N11
\mem_d~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~75_q\);

-- Location: LCCOMB_X22_Y13_N10
\mem_d~2334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2334_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~75_q\))) # (!\Mux14~1_combout\ & (\mem_d~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~67_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~75_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2334_combout\);

-- Location: LCCOMB_X21_Y13_N24
\mem_d~2336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2336_combout\ = (\Mux2~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~2334_combout\))) # (!\Mux12~1_combout\ & (\mem_d~2335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2335_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2334_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2336_combout\);

-- Location: FF_X23_Y13_N15
\mem_d~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~203_q\);

-- Location: LCCOMB_X24_Y19_N24
\mem_d~195feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~195feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~195feeder_combout\);

-- Location: FF_X24_Y19_N25
\mem_d~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~195feeder_combout\,
	ena => \mem_d~2646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~195_q\);

-- Location: LCCOMB_X23_Y13_N14
\mem_d~2337\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2337_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~203_q\)) # (!\Mux14~1_combout\ & ((\mem_d~195_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~203_q\,
	datad => \mem_d~195_q\,
	combout => \mem_d~2337_combout\);

-- Location: LCCOMB_X19_Y15_N30
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

-- Location: FF_X19_Y15_N31
\mem_d~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~163feeder_combout\,
	ena => \mem_d~2650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~163_q\);

-- Location: FF_X23_Y13_N9
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
	ena => \mem_d~2648_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~171_q\);

-- Location: LCCOMB_X23_Y13_N8
\mem_d~2333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2333_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~171_q\))) # (!\Mux14~1_combout\ & (\mem_d~163_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~163_q\,
	datac => \mem_d~171_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2333_combout\);

-- Location: LCCOMB_X21_Y17_N22
\mem_d~2338\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2338_combout\ = (\Mux2~1_combout\ & ((\mem_d~2336_combout\ & (\mem_d~2337_combout\)) # (!\mem_d~2336_combout\ & ((\mem_d~2333_combout\))))) # (!\Mux2~1_combout\ & (\mem_d~2336_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~2336_combout\,
	datac => \mem_d~2337_combout\,
	datad => \mem_d~2333_combout\,
	combout => \mem_d~2338_combout\);

-- Location: LCCOMB_X19_Y13_N12
\mem_d~27feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~27feeder_combout\ = \Mux35~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux35~9_combout\,
	combout => \mem_d~27feeder_combout\);

-- Location: FF_X19_Y13_N13
\mem_d~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~27feeder_combout\,
	ena => \mem_d~2655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~27_q\);

-- Location: FF_X21_Y13_N27
\mem_d~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~59_q\);

-- Location: FF_X17_Y15_N19
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
	ena => \mem_d~2657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~19_q\);

-- Location: LCCOMB_X17_Y15_N18
\mem_d~2339\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2339_combout\ = (\Mux12~1_combout\ & ((\mem_d~51_q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~19_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~51_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~19_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2339_combout\);

-- Location: LCCOMB_X21_Y13_N26
\mem_d~2340\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2340_combout\ = (\Mux14~1_combout\ & ((\mem_d~2339_combout\ & ((\mem_d~59_q\))) # (!\mem_d~2339_combout\ & (\mem_d~27_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~27_q\,
	datac => \mem_d~59_q\,
	datad => \mem_d~2339_combout\,
	combout => \mem_d~2340_combout\);

-- Location: LCCOMB_X17_Y13_N16
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

-- Location: FF_X17_Y13_N17
\mem_d~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~155feeder_combout\,
	ena => \mem_d~2656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~155_q\);

-- Location: FF_X21_Y13_N1
\mem_d~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux35~9_combout\,
	sload => VCC,
	ena => \mem_d~2660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~187_q\);

-- Location: FF_X19_Y19_N11
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
	ena => \mem_d~2658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~147_q\);

-- Location: LCCOMB_X19_Y19_N10
\mem_d~2341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2341_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~179_q\)) # (!\Mux12~1_combout\ & ((\mem_d~147_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~179_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~147_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2341_combout\);

-- Location: LCCOMB_X21_Y13_N0
\mem_d~2342\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2342_combout\ = (\Mux14~1_combout\ & ((\mem_d~2341_combout\ & ((\mem_d~187_q\))) # (!\mem_d~2341_combout\ & (\mem_d~155_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~155_q\,
	datac => \mem_d~187_q\,
	datad => \mem_d~2341_combout\,
	combout => \mem_d~2342_combout\);

-- Location: LCCOMB_X21_Y13_N18
\mem_d~2343\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2343_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2342_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2340_combout\,
	datad => \mem_d~2342_combout\,
	combout => \mem_d~2343_combout\);

-- Location: LCCOMB_X21_Y17_N0
\mem_d~2344\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2344_combout\ = (\Mux11~1_combout\ & (\Mux13~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~2338_combout\)) # (!\Mux13~1_combout\ & ((\mem_d~2343_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2338_combout\,
	datad => \mem_d~2343_combout\,
	combout => \mem_d~2344_combout\);

-- Location: LCCOMB_X21_Y18_N6
\mem_d~2350\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2350_combout\ = (\Mux11~1_combout\ & ((\mem_d~2344_combout\ & ((\mem_d~2349_combout\))) # (!\mem_d~2344_combout\ & (\mem_d~2332_combout\)))) # (!\Mux11~1_combout\ & (((\mem_d~2344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2332_combout\,
	datac => \mem_d~2349_combout\,
	datad => \mem_d~2344_combout\,
	combout => \mem_d~2350_combout\);

-- Location: LCCOMB_X21_Y18_N2
\mem_d~2600\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2600_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & (\mem_d~2327_combout\)) # (!\Mux0~0_combout\ & ((\mem_d~2350_combout\))))) # (!\Mux167~0_combout\ & (\mem_d~2327_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \mem_d~2327_combout\,
	datac => \Mux0~0_combout\,
	datad => \mem_d~2350_combout\,
	combout => \mem_d~2600_combout\);

-- Location: LCCOMB_X21_Y18_N0
\Mux44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = (\Mux169~1_combout\ & (\Mux168~1_combout\ & (\Add0~4_combout\))) # (!\Mux169~1_combout\ & (((\mem_d~2600_combout\)) # (!\Mux168~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Add0~4_combout\,
	datad => \mem_d~2600_combout\,
	combout => \Mux44~4_combout\);

-- Location: LCCOMB_X21_Y18_N26
\Mux44~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~5_combout\ = (\Mux168~1_combout\ & (((\Mux44~4_combout\)))) # (!\Mux168~1_combout\ & ((\Mux44~4_combout\ & (\Add1~4_combout\)) # (!\Mux44~4_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Mux168~1_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \Mux44~4_combout\,
	combout => \Mux44~5_combout\);

-- Location: LCCOMB_X23_Y18_N22
\Mux44~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux44~6_combout\ = (\Mux1~0_combout\ & (((\Mux44~3_combout\)))) # (!\Mux1~0_combout\ & ((\Mux167~0_combout\ & ((\Mux44~5_combout\))) # (!\Mux167~0_combout\ & (\Mux44~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux44~3_combout\,
	datad => \Mux44~5_combout\,
	combout => \Mux44~6_combout\);

-- Location: FF_X23_Y17_N1
\regs[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux44~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][2]~q\);

-- Location: LCCOMB_X23_Y17_N10
\Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux1~1_combout\ & (((\Mux2~1_combout\)))) # (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\regs[1][2]~q\)) # (!\Mux2~1_combout\ & ((\regs[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][2]~q\,
	datab => \regs[0][2]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Mux8~5\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X23_Y15_N16
\regs[13][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][2]~feeder_combout\ = \Mux44~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux44~6_combout\,
	combout => \regs[13][2]~feeder_combout\);

-- Location: FF_X23_Y15_N17
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
	ena => \regs[13][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][2]~q\);

-- Location: LCCOMB_X24_Y15_N22
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux2~1_combout\ & (((\regs[13][2]~q\) # (\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (\regs[12][2]~q\ & ((!\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][2]~q\,
	datab => \regs[13][2]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X23_Y15_N4
\Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux1~1_combout\ & ((\Mux8~2_combout\ & ((\regs[15][2]~q\))) # (!\Mux8~2_combout\ & (\regs[14][2]~q\)))) # (!\Mux1~1_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][2]~q\,
	datab => \regs[15][2]~q\,
	datac => \Mux1~1_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X22_Y18_N30
\Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\Mux8~3_combout\))) # (!\Mux0~0_combout\ & (\Mux8~5_combout\)))) # (!\Mux167~0_combout\ & (((\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux8~5_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X18_Y16_N2
\regs[7][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[7][1]~feeder_combout\ = \Mux45~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux45~6_combout\,
	combout => \regs[7][1]~feeder_combout\);

-- Location: FF_X18_Y16_N3
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
	ena => \regs[7][3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][1]~q\);

-- Location: LCCOMB_X18_Y16_N22
\Mux36~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & ((\regs[5][1]~q\))) # (!\Mux29~1_combout\ & (\regs[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][1]~q\,
	datab => \Mux28~1_combout\,
	datac => \regs[5][1]~q\,
	datad => \Mux29~1_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X18_Y16_N20
\Mux36~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux36~2_combout\ & (((\regs[7][1]~q\) # (!\Mux28~1_combout\)))) # (!\Mux36~2_combout\ & (\regs[6][1]~q\ & ((\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[6][1]~q\,
	datab => \regs[7][1]~q\,
	datac => \Mux36~2_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X18_Y16_N14
\Mux36~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~6_combout\ = (\Mux0~1_combout\ & (((\Mux11~1_combout\)))) # (!\Mux0~1_combout\ & ((\Mux11~1_combout\ & ((\Mux36~3_combout\))) # (!\Mux11~1_combout\ & (\Mux36~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~5_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux36~3_combout\,
	combout => \Mux36~6_combout\);

-- Location: FF_X21_Y15_N7
\regs[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[12][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][1]~q\);

-- Location: LCCOMB_X22_Y18_N24
\Mux36~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~7_combout\ = (\Mux28~1_combout\ & ((\regs[14][1]~q\) # ((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & (((!\Mux29~1_combout\ & \regs[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[14][1]~q\,
	datac => \Mux29~1_combout\,
	datad => \regs[12][1]~q\,
	combout => \Mux36~7_combout\);

-- Location: LCCOMB_X23_Y15_N0
\regs[13][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][1]~feeder_combout\ = \Mux45~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux45~6_combout\,
	combout => \regs[13][1]~feeder_combout\);

-- Location: FF_X23_Y15_N1
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
	ena => \regs[13][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][1]~q\);

-- Location: FF_X23_Y15_N3
\regs[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][1]~q\);

-- Location: LCCOMB_X24_Y18_N2
\Mux36~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~8_combout\ = (\Mux29~1_combout\ & ((\Mux36~7_combout\ & ((\regs[15][1]~q\))) # (!\Mux36~7_combout\ & (\regs[13][1]~q\)))) # (!\Mux29~1_combout\ & (\Mux36~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \Mux36~7_combout\,
	datac => \regs[13][1]~q\,
	datad => \regs[15][1]~q\,
	combout => \Mux36~8_combout\);

-- Location: FF_X22_Y15_N1
\regs[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][1]~q\);

-- Location: LCCOMB_X22_Y14_N4
\Mux36~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][1]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][1]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[8][1]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X22_Y15_N0
\Mux36~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux29~1_combout\ & ((\Mux36~0_combout\ & ((\regs[11][1]~q\))) # (!\Mux36~0_combout\ & (\regs[9][1]~q\)))) # (!\Mux29~1_combout\ & (((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][1]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[11][1]~q\,
	datad => \Mux36~0_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X24_Y15_N16
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

-- Location: FF_X25_Y12_N21
\mem_d~1802\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1802_q\);

-- Location: LCCOMB_X24_Y13_N30
\mem_d~1674feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1674feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1674feeder_combout\);

-- Location: FF_X24_Y13_N31
\mem_d~1674\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1674feeder_combout\,
	ena => \mem_d~2632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1674_q\);

-- Location: LCCOMB_X25_Y12_N18
\mem_d~2276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2276_combout\ = (\Mux2~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~1674_q\))) # (!\Mux13~1_combout\ & (\mem_d~1658_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1658_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1674_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2276_combout\);

-- Location: LCCOMB_X25_Y12_N20
\mem_d~2277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2277_combout\ = (\Mux2~1_combout\ & ((\mem_d~2276_combout\ & ((\mem_d~1802_q\))) # (!\mem_d~2276_combout\ & (\mem_d~1786_q\)))) # (!\Mux2~1_combout\ & (((\mem_d~2276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1786_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1802_q\,
	datad => \mem_d~2276_combout\,
	combout => \mem_d~2277_combout\);

-- Location: FF_X25_Y12_N9
\mem_d~1770\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1770_q\);

-- Location: LCCOMB_X26_Y12_N0
\mem_d~1642feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1642feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1642feeder_combout\);

-- Location: FF_X26_Y12_N1
\mem_d~1642\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1642feeder_combout\,
	ena => \mem_d~2629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1642_q\);

-- Location: LCCOMB_X16_Y15_N22
\mem_d~2607\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2607_combout\ = (\mem_d~2582_combout\ & (\mem_d~2581_combout\ & (\Mux2~0_combout\ & \Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2582_combout\,
	datab => \mem_d~2581_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \mem_d~2607_combout\);

-- Location: FF_X25_Y15_N23
\mem_d~1626\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1626_q\);

-- Location: LCCOMB_X25_Y15_N22
\mem_d~2274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2274_combout\ = (\Mux2~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1642_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1626_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1642_q\,
	datac => \mem_d~1626_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2274_combout\);

-- Location: LCCOMB_X25_Y12_N8
\mem_d~2275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2275_combout\ = (\Mux2~1_combout\ & ((\mem_d~2274_combout\ & ((\mem_d~1770_q\))) # (!\mem_d~2274_combout\ & (\mem_d~1754_q\)))) # (!\Mux2~1_combout\ & (((\mem_d~2274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1754_q\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~1770_q\,
	datad => \mem_d~2274_combout\,
	combout => \mem_d~2275_combout\);

-- Location: LCCOMB_X25_Y12_N14
\mem_d~2278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2278_combout\ = (!\Mux1~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~2277_combout\)) # (!\Mux12~1_combout\ & ((\mem_d~2275_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~2277_combout\,
	datac => \mem_d~2275_combout\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2278_combout\);

-- Location: LCCOMB_X17_Y14_N28
\mem_d~1722feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1722feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1722feeder_combout\);

-- Location: FF_X17_Y14_N29
\mem_d~1722\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1722feeder_combout\,
	ena => \mem_d~2628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1722_q\);

-- Location: FF_X17_Y14_N27
\mem_d~1738\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1738_q\);

-- Location: LCCOMB_X17_Y17_N0
\mem_d~1706feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1706feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1706feeder_combout\);

-- Location: FF_X17_Y17_N1
\mem_d~1706\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1706feeder_combout\,
	ena => \mem_d~2617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1706_q\);

-- Location: FF_X17_Y18_N29
\mem_d~1690\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1690_q\);

-- Location: LCCOMB_X17_Y18_N28
\mem_d~2265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2265_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1706_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1690_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1706_q\,
	datac => \mem_d~1690_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2265_combout\);

-- Location: LCCOMB_X17_Y14_N26
\mem_d~2266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2266_combout\ = (\Mux12~1_combout\ & ((\mem_d~2265_combout\ & ((\mem_d~1738_q\))) # (!\mem_d~2265_combout\ & (\mem_d~1722_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1722_q\,
	datac => \mem_d~1738_q\,
	datad => \mem_d~2265_combout\,
	combout => \mem_d~2266_combout\);

-- Location: FF_X18_Y17_N25
\mem_d~1714\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1714_q\);

-- Location: LCCOMB_X14_Y18_N10
\mem_d~1730feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1730feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux36~9_combout\,
	combout => \mem_d~1730feeder_combout\);

-- Location: FF_X14_Y18_N11
\mem_d~1730\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1730feeder_combout\,
	ena => \mem_d~2618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1730_q\);

-- Location: LCCOMB_X18_Y17_N24
\mem_d~2270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2270_combout\ = (\mem_d~2269_combout\ & (((\mem_d~1730_q\)) # (!\Mux12~1_combout\))) # (!\mem_d~2269_combout\ & (\Mux12~1_combout\ & (\mem_d~1714_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2269_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1714_q\,
	datad => \mem_d~1730_q\,
	combout => \mem_d~2270_combout\);

-- Location: FF_X16_Y17_N7
\mem_d~1602\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1602_q\);

-- Location: LCCOMB_X14_Y17_N28
\mem_d~1570feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1570feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1570feeder_combout\);

-- Location: FF_X14_Y17_N29
\mem_d~1570\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1570feeder_combout\,
	ena => \mem_d~2615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1570_q\);

-- Location: FF_X16_Y17_N29
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
	ena => \mem_d~2625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1554_q\);

-- Location: LCCOMB_X16_Y17_N28
\mem_d~2267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2267_combout\ = (\Mux12~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~1570_q\)) # (!\Mux13~1_combout\ & ((\mem_d~1554_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1570_q\,
	datac => \mem_d~1554_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2267_combout\);

-- Location: LCCOMB_X16_Y17_N6
\mem_d~2268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2268_combout\ = (\Mux12~1_combout\ & ((\mem_d~2267_combout\ & ((\mem_d~1602_q\))) # (!\mem_d~2267_combout\ & (\mem_d~1586_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1586_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1602_q\,
	datad => \mem_d~2267_combout\,
	combout => \mem_d~2268_combout\);

-- Location: LCCOMB_X21_Y15_N20
\mem_d~2271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2271_combout\ = (\Mux14~1_combout\ & (((\Mux2~0_combout\)))) # (!\Mux14~1_combout\ & ((\Mux2~0_combout\ & ((\mem_d~2268_combout\))) # (!\Mux2~0_combout\ & (\mem_d~2270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2270_combout\,
	datac => \Mux2~0_combout\,
	datad => \mem_d~2268_combout\,
	combout => \mem_d~2271_combout\);

-- Location: LCCOMB_X21_Y15_N14
\mem_d~2272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2272_combout\ = (\Mux14~1_combout\ & ((\mem_d~2271_combout\ & (\mem_d~2264_combout\)) # (!\mem_d~2271_combout\ & ((\mem_d~2266_combout\))))) # (!\Mux14~1_combout\ & (((\mem_d~2271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2264_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2266_combout\,
	datad => \mem_d~2271_combout\,
	combout => \mem_d~2272_combout\);

-- Location: LCCOMB_X21_Y15_N4
\mem_d~2273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2273_combout\ = (\Mux11~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux11~1_combout\ & (\mem_d~2262_combout\ & ((\mem_d~2272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2262_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2272_combout\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2273_combout\);

-- Location: FF_X25_Y14_N1
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
	ena => \mem_d~2606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1778_q\);

-- Location: LCCOMB_X26_Y16_N4
\mem_d~1762feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1762feeder_combout\ = \Mux36~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux36~9_combout\,
	combout => \mem_d~1762feeder_combout\);

-- Location: FF_X26_Y16_N5
\mem_d~1762\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1762feeder_combout\,
	ena => \mem_d~2635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1762_q\);

-- Location: FF_X26_Y14_N27
\mem_d~1746\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1746_q\);

-- Location: LCCOMB_X26_Y14_N26
\mem_d~2259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2259_combout\ = (\Mux13~1_combout\ & ((\mem_d~1762_q\) # ((\Mux12~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~1746_q\ & !\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~1762_q\,
	datac => \mem_d~1746_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2259_combout\);

-- Location: LCCOMB_X25_Y14_N0
\mem_d~2260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2260_combout\ = (\Mux12~1_combout\ & ((\mem_d~2259_combout\ & (\mem_d~1794_q\)) # (!\mem_d~2259_combout\ & ((\mem_d~1778_q\))))) # (!\Mux12~1_combout\ & (((\mem_d~2259_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1794_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1778_q\,
	datad => \mem_d~2259_combout\,
	combout => \mem_d~2260_combout\);

-- Location: LCCOMB_X23_Y12_N0
\mem_d~2630\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2630_combout\ = (\mem_d~2581_combout\ & (\Mux2~0_combout\ & (\Mux167~0_combout\ & \mem_d~2594_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2581_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2594_combout\,
	combout => \mem_d~2630_combout\);

-- Location: FF_X25_Y13_N1
\mem_d~1666\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2630_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1666_q\);

-- Location: FF_X26_Y13_N3
\mem_d~1618\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux36~9_combout\,
	sload => VCC,
	ena => \mem_d~2609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1618_q\);

-- Location: LCCOMB_X26_Y13_N2
\mem_d~2256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2256_combout\ = (\Mux12~1_combout\ & ((\mem_d~1650_q\) # ((\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1618_q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1650_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1618_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2256_combout\);

-- Location: LCCOMB_X25_Y13_N0
\mem_d~2257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2257_combout\ = (\Mux13~1_combout\ & ((\mem_d~2256_combout\ & ((\mem_d~1666_q\))) # (!\mem_d~2256_combout\ & (\mem_d~1634_q\)))) # (!\Mux13~1_combout\ & (((\mem_d~2256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1634_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~1666_q\,
	datad => \mem_d~2256_combout\,
	combout => \mem_d~2257_combout\);

-- Location: LCCOMB_X25_Y18_N16
\mem_d~2258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2258_combout\ = ((\Mux2~0_combout\ & (!\Mux1~0_combout\ & \mem_d~2257_combout\)) # (!\Mux2~0_combout\ & (\Mux1~0_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \mem_d~2257_combout\,
	combout => \mem_d~2258_combout\);

-- Location: LCCOMB_X25_Y18_N10
\mem_d~2261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2261_combout\ = (\mem_d~2258_combout\ & (\Mux167~0_combout\ & (\Mux2~0_combout\))) # (!\mem_d~2258_combout\ & (\mem_d~2260_combout\ & ((!\Mux2~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \mem_d~2260_combout\,
	datad => \mem_d~2258_combout\,
	combout => \mem_d~2261_combout\);

-- Location: LCCOMB_X21_Y15_N2
\mem_d~2279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2279_combout\ = (\Mux11~1_combout\ & ((\mem_d~2273_combout\ & (\mem_d~2278_combout\)) # (!\mem_d~2273_combout\ & ((\mem_d~2261_combout\))))) # (!\Mux11~1_combout\ & (((\mem_d~2273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2278_combout\,
	datac => \mem_d~2273_combout\,
	datad => \mem_d~2261_combout\,
	combout => \mem_d~2279_combout\);

-- Location: LCCOMB_X21_Y15_N28
\mem_d~2599\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2599_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\mem_d~2279_combout\))) # (!\Mux0~0_combout\ & (\mem_d~2303_combout\)))) # (!\Mux167~0_combout\ & (((\mem_d~2279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2303_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \mem_d~2279_combout\,
	combout => \mem_d~2599_combout\);

-- Location: LCCOMB_X21_Y15_N24
\Mux45~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & (\Add0~2_combout\)) # (!\Mux169~1_combout\ & ((\mem_d~2599_combout\))))) # (!\Mux168~1_combout\ & (((!\Mux169~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add0~2_combout\,
	datac => \Mux169~1_combout\,
	datad => \mem_d~2599_combout\,
	combout => \Mux45~4_combout\);

-- Location: LCCOMB_X21_Y15_N10
\Mux45~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~5_combout\ = (\Mux168~1_combout\ & (((\Mux45~4_combout\)))) # (!\Mux168~1_combout\ & ((\Mux45~4_combout\ & (\Add1~2_combout\)) # (!\Mux45~4_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add1~2_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \Mux45~4_combout\,
	combout => \Mux45~5_combout\);

-- Location: LCCOMB_X21_Y15_N30
\Mux45~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux45~6_combout\ = (\Mux1~0_combout\ & (\Mux45~3_combout\)) # (!\Mux1~0_combout\ & ((\Mux167~0_combout\ & ((\Mux45~5_combout\))) # (!\Mux167~0_combout\ & (\Mux45~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux45~3_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux45~5_combout\,
	combout => \Mux45~6_combout\);

-- Location: FF_X23_Y17_N29
\regs[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[2][5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[2][1]~q\);

-- Location: FF_X18_Y18_N31
\regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux45~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][1]~q\);

-- Location: LCCOMB_X21_Y17_N20
\Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux2~1_combout\ & (((\regs[1][1]~q\) # (\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (\regs[0][1]~q\ & ((!\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[0][1]~q\,
	datac => \regs[1][1]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X23_Y17_N6
\Mux9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux1~1_combout\ & ((\Mux9~4_combout\ & ((\regs[3][1]~q\))) # (!\Mux9~4_combout\ & (\regs[2][1]~q\)))) # (!\Mux1~1_combout\ & (((\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \regs[2][1]~q\,
	datac => \regs[3][1]~q\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X21_Y15_N16
\Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux2~1_combout\ & (((\regs[13][1]~q\) # (\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (\regs[12][1]~q\ & ((!\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[12][1]~q\,
	datab => \regs[13][1]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X21_Y14_N24
\Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux1~1_combout\ & ((\Mux9~2_combout\ & (\regs[15][1]~q\)) # (!\Mux9~2_combout\ & ((\regs[14][1]~q\))))) # (!\Mux1~1_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][1]~q\,
	datab => \Mux1~1_combout\,
	datac => \regs[14][1]~q\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X22_Y18_N20
\Mux9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\Mux9~3_combout\))) # (!\Mux0~0_combout\ & (\Mux9~5_combout\)))) # (!\Mux167~0_combout\ & (((\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux9~5_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X22_Y18_N8
\Mult1|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(1) = LCELL((\Mult1|auto_generated|cs2a[1]~0_combout\ & (\Mult1|auto_generated|cs1a[1]~8_combout\ $ (((\Mux9~6_combout\))))) # (!\Mult1|auto_generated|cs2a[1]~0_combout\ & (\Mult1|auto_generated|cs1a[1]~8_combout\ & 
-- (!\Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|cs1a[1]~8_combout\,
	datab => \Mult1|auto_generated|cs2a[1]~0_combout\,
	datac => \Mux10~6_combout\,
	datad => \Mux9~6_combout\,
	combout => \Mult1|auto_generated|le4a\(1));

-- Location: LCCOMB_X23_Y17_N26
\Mux42~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\Mux42~2_combout\ & ((\Mux169~1_combout\) # ((\Mux2~1_combout\)))) # (!\Mux42~2_combout\ & (!\Mux169~1_combout\ & ((\Mult1|auto_generated|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~2_combout\,
	datab => \Mux169~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mult1|auto_generated|op_3~8_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X19_Y18_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Mux18~9_combout\ $ (\Mux6~6_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Mux18~9_combout\ & (\Mux6~6_combout\ & !\Add1~7\)) # (!\Mux18~9_combout\ & ((\Mux6~6_combout\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~9_combout\,
	datab => \Mux6~6_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X22_Y15_N23
\regs[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[11][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][4]~q\);

-- Location: FF_X22_Y15_N29
\regs[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][4]~q\);

-- Location: LCCOMB_X22_Y15_N28
\Mux33~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & ((\regs[10][4]~q\))) # (!\Mux28~1_combout\ & (\regs[8][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[8][4]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[10][4]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X22_Y15_N22
\Mux33~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux29~1_combout\ & ((\Mux33~0_combout\ & ((\regs[11][4]~q\))) # (!\Mux33~0_combout\ & (\regs[9][4]~q\)))) # (!\Mux29~1_combout\ & (((\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][4]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[11][4]~q\,
	datad => \Mux33~0_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X21_Y14_N4
\regs[13][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[13][4]~feeder_combout\ = \Mux42~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux42~6_combout\,
	combout => \regs[13][4]~feeder_combout\);

-- Location: FF_X21_Y14_N5
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
	ena => \regs[13][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][4]~q\);

-- Location: LCCOMB_X24_Y15_N0
\Mux33~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~8_combout\ = (\Mux33~7_combout\ & (((\regs[15][4]~q\) # (!\Mux29~1_combout\)))) # (!\Mux33~7_combout\ & (\regs[13][4]~q\ & (\Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~7_combout\,
	datab => \regs[13][4]~q\,
	datac => \Mux29~1_combout\,
	datad => \regs[15][4]~q\,
	combout => \Mux33~8_combout\);

-- Location: LCCOMB_X24_Y17_N20
\Mux33~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & (\regs[1][4]~q\)) # (!\Mux29~1_combout\ & ((\regs[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][4]~q\,
	datab => \regs[0][4]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X24_Y17_N10
\Mux33~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (\Mux28~1_combout\ & ((\Mux33~4_combout\ & (\regs[3][4]~q\)) # (!\Mux33~4_combout\ & ((\regs[2][4]~q\))))) # (!\Mux28~1_combout\ & (((\Mux33~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[3][4]~q\,
	datab => \regs[2][4]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux33~4_combout\,
	combout => \Mux33~5_combout\);

-- Location: LCCOMB_X23_Y19_N6
\Mux33~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~6_combout\ = (\Mux0~1_combout\ & (((\Mux11~1_combout\)))) # (!\Mux0~1_combout\ & ((\Mux11~1_combout\ & (\Mux33~3_combout\)) # (!\Mux11~1_combout\ & ((\Mux33~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~3_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux33~5_combout\,
	datad => \Mux11~1_combout\,
	combout => \Mux33~6_combout\);

-- Location: LCCOMB_X25_Y15_N6
\Mux33~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux33~9_combout\ = (\Mux0~1_combout\ & ((\Mux33~6_combout\ & ((\Mux33~8_combout\))) # (!\Mux33~6_combout\ & (\Mux33~1_combout\)))) # (!\Mux0~1_combout\ & (((\Mux33~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux33~1_combout\,
	datac => \Mux33~8_combout\,
	datad => \Mux33~6_combout\,
	combout => \Mux33~9_combout\);

-- Location: LCCOMB_X21_Y11_N20
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

-- Location: LCCOMB_X22_Y12_N22
\mem_d~2642\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2642_combout\ = (\Mux167~0_combout\ & (\mem_d~2584_combout\ & (\mem_d~2597_combout\ & \Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \mem_d~2584_combout\,
	datac => \mem_d~2597_combout\,
	datad => \Mux2~0_combout\,
	combout => \mem_d~2642_combout\);

-- Location: FF_X21_Y11_N21
\mem_d~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~125feeder_combout\,
	ena => \mem_d~2642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~125_q\);

-- Location: FF_X21_Y11_N31
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
	ena => \mem_d~2644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~253_q\);

-- Location: LCCOMB_X21_Y13_N20
\mem_d~189feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~189feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~189feeder_combout\);

-- Location: FF_X21_Y13_N21
\mem_d~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~189feeder_combout\,
	ena => \mem_d~2660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~189_q\);

-- Location: FF_X21_Y13_N15
\mem_d~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~61_q\);

-- Location: LCCOMB_X21_Y13_N14
\mem_d~2440\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2440_combout\ = (\Mux11~1_combout\ & (((\Mux2~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~189_q\)) # (!\Mux2~1_combout\ & ((\mem_d~61_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~189_q\,
	datac => \mem_d~61_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2440_combout\);

-- Location: LCCOMB_X21_Y11_N30
\mem_d~2441\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2441_combout\ = (\Mux11~1_combout\ & ((\mem_d~2440_combout\ & ((\mem_d~253_q\))) # (!\mem_d~2440_combout\ & (\mem_d~125_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2440_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~125_q\,
	datac => \mem_d~253_q\,
	datad => \mem_d~2440_combout\,
	combout => \mem_d~2441_combout\);

-- Location: FF_X22_Y13_N3
\mem_d~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~77_q\);

-- Location: LCCOMB_X23_Y13_N24
\mem_d~205feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~205feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~205feeder_combout\);

-- Location: FF_X23_Y13_N25
\mem_d~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~205feeder_combout\,
	ena => \mem_d~2652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~205_q\);

-- Location: LCCOMB_X22_Y13_N2
\mem_d~2442\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2442_combout\ = (\Mux2~1_combout\ & ((\Mux11~1_combout\) # ((\mem_d~205_q\)))) # (!\Mux2~1_combout\ & (!\Mux11~1_combout\ & (\mem_d~77_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~77_q\,
	datad => \mem_d~205_q\,
	combout => \mem_d~2442_combout\);

-- Location: FF_X22_Y13_N9
\mem_d~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~269_q\);

-- Location: LCCOMB_X22_Y13_N8
\mem_d~2443\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2443_combout\ = (\mem_d~2442_combout\ & (((\mem_d~269_q\) # (!\Mux11~1_combout\)))) # (!\mem_d~2442_combout\ & (\mem_d~141_q\ & ((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~141_q\,
	datab => \mem_d~2442_combout\,
	datac => \mem_d~269_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2443_combout\);

-- Location: LCCOMB_X18_Y14_N24
\mem_d~2444\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2444_combout\ = (\Mux13~0_combout\ & (\mem_d~2441_combout\)) # (!\Mux13~0_combout\ & ((\mem_d~2443_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~0_combout\,
	datac => \mem_d~2441_combout\,
	datad => \mem_d~2443_combout\,
	combout => \mem_d~2444_combout\);

-- Location: LCCOMB_X16_Y13_N30
\mem_d~221feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~221feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~221feeder_combout\);

-- Location: FF_X16_Y13_N31
\mem_d~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~221feeder_combout\,
	ena => \mem_d~2640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~221_q\);

-- Location: FF_X17_Y13_N3
\mem_d~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2665_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~237_q\);

-- Location: LCCOMB_X17_Y13_N2
\mem_d~2438\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2438_combout\ = (\mem_d~2437_combout\ & (((\mem_d~237_q\) # (!\Mux11~1_combout\)))) # (!\mem_d~2437_combout\ & (\mem_d~221_q\ & ((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2437_combout\,
	datab => \mem_d~221_q\,
	datac => \mem_d~237_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2438_combout\);

-- Location: FF_X19_Y13_N19
\mem_d~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~109_q\);

-- Location: FF_X19_Y13_N25
\mem_d~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~29_q\);

-- Location: LCCOMB_X19_Y13_N24
\mem_d~2435\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2435_combout\ = (\Mux11~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~45_q\)) # (!\Mux13~1_combout\ & ((\mem_d~29_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~45_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~29_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2435_combout\);

-- Location: LCCOMB_X19_Y13_N18
\mem_d~2436\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2436_combout\ = (\Mux11~1_combout\ & ((\mem_d~2435_combout\ & ((\mem_d~109_q\))) # (!\mem_d~2435_combout\ & (\mem_d~93_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2435_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~93_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~109_q\,
	datad => \mem_d~2435_combout\,
	combout => \mem_d~2436_combout\);

-- Location: LCCOMB_X18_Y14_N14
\mem_d~2439\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2439_combout\ = (\Mux2~0_combout\ & ((\mem_d~2436_combout\))) # (!\Mux2~0_combout\ & (\mem_d~2438_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datac => \mem_d~2438_combout\,
	datad => \mem_d~2436_combout\,
	combout => \mem_d~2439_combout\);

-- Location: LCCOMB_X22_Y11_N30
\mem_d~245feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~245feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~245feeder_combout\);

-- Location: FF_X22_Y11_N31
\mem_d~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~245feeder_combout\,
	ena => \mem_d~2641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~245_q\);

-- Location: FF_X21_Y12_N27
\mem_d~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~261_q\);

-- Location: LCCOMB_X21_Y12_N26
\mem_d~2427\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2427_combout\ = (\mem_d~2426_combout\ & (((\mem_d~261_q\) # (!\Mux11~1_combout\)))) # (!\mem_d~2426_combout\ & (\mem_d~245_q\ & ((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2426_combout\,
	datab => \mem_d~245_q\,
	datac => \mem_d~261_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2427_combout\);

-- Location: LCCOMB_X19_Y11_N8
\mem_d~117feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~117feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~117feeder_combout\);

-- Location: FF_X19_Y11_N9
\mem_d~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~117feeder_combout\,
	ena => \mem_d~2643_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~117_q\);

-- Location: FF_X19_Y12_N15
\mem_d~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2662_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~133_q\);

-- Location: LCCOMB_X19_Y12_N14
\mem_d~2425\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2425_combout\ = (\mem_d~2424_combout\ & (((\mem_d~133_q\) # (!\Mux11~1_combout\)))) # (!\mem_d~2424_combout\ & (\mem_d~117_q\ & ((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2424_combout\,
	datab => \mem_d~117_q\,
	datac => \mem_d~133_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2425_combout\);

-- Location: FF_X18_Y14_N27
\mem_d~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~213_q\);

-- Location: FF_X19_Y19_N5
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
	ena => \mem_d~2658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~149_q\);

-- Location: LCCOMB_X19_Y19_N4
\mem_d~2430\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2430_combout\ = (\Mux13~1_combout\ & ((\mem_d~165_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~149_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~165_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~149_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2430_combout\);

-- Location: LCCOMB_X18_Y14_N26
\mem_d~2431\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2431_combout\ = (\Mux11~1_combout\ & ((\mem_d~2430_combout\ & (\mem_d~229_q\)) # (!\mem_d~2430_combout\ & ((\mem_d~213_q\))))) # (!\Mux11~1_combout\ & (((\mem_d~2430_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~229_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~213_q\,
	datad => \mem_d~2430_combout\,
	combout => \mem_d~2431_combout\);

-- Location: FF_X18_Y14_N21
\mem_d~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~101_q\);

-- Location: LCCOMB_X17_Y15_N16
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

-- Location: FF_X17_Y15_N17
\mem_d~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~37feeder_combout\,
	ena => \mem_d~2649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~37_q\);

-- Location: FF_X17_Y15_N31
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
	ena => \mem_d~2657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~21_q\);

-- Location: LCCOMB_X17_Y15_N30
\mem_d~2428\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2428_combout\ = (\Mux11~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~37_q\)) # (!\Mux13~1_combout\ & ((\mem_d~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~37_q\,
	datac => \mem_d~21_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2428_combout\);

-- Location: LCCOMB_X18_Y14_N20
\mem_d~2429\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2429_combout\ = (\Mux11~1_combout\ & ((\mem_d~2428_combout\ & ((\mem_d~101_q\))) # (!\mem_d~2428_combout\ & (\mem_d~85_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2428_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~85_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~101_q\,
	datad => \mem_d~2428_combout\,
	combout => \mem_d~2429_combout\);

-- Location: LCCOMB_X18_Y14_N0
\mem_d~2432\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2432_combout\ = (\Mux2~0_combout\ & ((\Mux12~1_combout\) # ((\mem_d~2429_combout\)))) # (!\Mux2~0_combout\ & (!\Mux12~1_combout\ & (\mem_d~2431_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2431_combout\,
	datad => \mem_d~2429_combout\,
	combout => \mem_d~2432_combout\);

-- Location: LCCOMB_X18_Y14_N2
\mem_d~2433\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2433_combout\ = (\Mux12~1_combout\ & ((\mem_d~2432_combout\ & ((\mem_d~2425_combout\))) # (!\mem_d~2432_combout\ & (\mem_d~2427_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~2432_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~2427_combout\,
	datac => \mem_d~2425_combout\,
	datad => \mem_d~2432_combout\,
	combout => \mem_d~2433_combout\);

-- Location: LCCOMB_X18_Y14_N16
\mem_d~2434\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2434_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & (\mem_d~2262_combout\ & ((\mem_d~2433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2262_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux14~1_combout\,
	datad => \mem_d~2433_combout\,
	combout => \mem_d~2434_combout\);

-- Location: LCCOMB_X18_Y14_N18
\mem_d~2445\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2445_combout\ = (\Mux14~1_combout\ & ((\mem_d~2434_combout\ & (\mem_d~2444_combout\)) # (!\mem_d~2434_combout\ & ((\mem_d~2439_combout\))))) # (!\Mux14~1_combout\ & (((\mem_d~2434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2444_combout\,
	datac => \mem_d~2439_combout\,
	datad => \mem_d~2434_combout\,
	combout => \mem_d~2445_combout\);

-- Location: LCCOMB_X18_Y14_N22
\mem_d~2602\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2602_combout\ = (\Mux167~0_combout\ & (\mem_d~2445_combout\ & ((\Mux14~0_combout\) # (!\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2445_combout\,
	combout => \mem_d~2602_combout\);

-- Location: FF_X25_Y14_N23
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
	ena => \mem_d~2612_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1789_q\);

-- Location: LCCOMB_X24_Y14_N0
\mem_d~2404\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2404_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1789_q\))) # (!\Mux2~1_combout\ & (\mem_d~1661_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1661_q\,
	datab => \mem_d~1789_q\,
	datac => \Mux1~1_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2404_combout\);

-- Location: FF_X25_Y18_N7
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
	ena => \mem_d~2606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1781_q\);

-- Location: LCCOMB_X26_Y18_N2
\mem_d~1653feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1653feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1653feeder_combout\);

-- Location: FF_X26_Y18_N3
\mem_d~1653\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1653feeder_combout\,
	ena => \mem_d~2605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1653_q\);

-- Location: LCCOMB_X25_Y18_N6
\mem_d~2401\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2401_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~1781_q\)) # (!\Mux2~1_combout\ & ((\mem_d~1653_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1781_q\,
	datad => \mem_d~1653_q\,
	combout => \mem_d~2401_combout\);

-- Location: LCCOMB_X24_Y14_N18
\mem_d~2403\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2403_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & ((\mem_d~2401_combout\))) # (!\Mux12~1_combout\ & (\mem_d~2402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2402_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2401_combout\,
	combout => \mem_d~2403_combout\);

-- Location: LCCOMB_X23_Y14_N28
\mem_d~2405\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2405_combout\ = (\Mux14~1_combout\ & ((\mem_d~2403_combout\ & ((\mem_d~2404_combout\))) # (!\mem_d~2403_combout\ & (\mem_d~2400_combout\)))) # (!\Mux14~1_combout\ & (((\mem_d~2403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2400_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~2404_combout\,
	datad => \mem_d~2403_combout\,
	combout => \mem_d~2405_combout\);

-- Location: FF_X26_Y16_N27
\mem_d~1765\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1765_q\);

-- Location: LCCOMB_X26_Y16_N26
\mem_d~2420\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2420_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1797_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1765_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1797_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1765_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2420_combout\);

-- Location: FF_X25_Y12_N1
\mem_d~1805\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1805_q\);

-- Location: LCCOMB_X25_Y12_N6
\mem_d~1773feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1773feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1773feeder_combout\);

-- Location: FF_X25_Y12_N7
\mem_d~1773\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1773feeder_combout\,
	ena => \mem_d~2634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1773_q\);

-- Location: LCCOMB_X25_Y12_N0
\mem_d~2421\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2421_combout\ = (\Mux14~1_combout\ & ((\mem_d~2420_combout\ & (\mem_d~1805_q\)) # (!\mem_d~2420_combout\ & ((\mem_d~1773_q\))))) # (!\Mux14~1_combout\ & (\mem_d~2420_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2420_combout\,
	datac => \mem_d~1805_q\,
	datad => \mem_d~1773_q\,
	combout => \mem_d~2421_combout\);

-- Location: FF_X24_Y12_N5
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
	ena => \mem_d~2632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1677_q\);

-- Location: FF_X24_Y12_N11
\mem_d~1637\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2631_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1637_q\);

-- Location: LCCOMB_X26_Y12_N14
\mem_d~1645feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1645feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1645feeder_combout\);

-- Location: FF_X26_Y12_N15
\mem_d~1645\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1645feeder_combout\,
	ena => \mem_d~2629_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1645_q\);

-- Location: LCCOMB_X24_Y12_N10
\mem_d~2417\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2417_combout\ = (\Mux12~1_combout\ & (\Mux14~1_combout\)) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1645_q\))) # (!\Mux14~1_combout\ & (\mem_d~1637_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1637_q\,
	datad => \mem_d~1645_q\,
	combout => \mem_d~2417_combout\);

-- Location: LCCOMB_X24_Y12_N4
\mem_d~2418\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2418_combout\ = (\Mux12~1_combout\ & ((\mem_d~2417_combout\ & ((\mem_d~1677_q\))) # (!\mem_d~2417_combout\ & (\mem_d~1669_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1669_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1677_q\,
	datad => \mem_d~2417_combout\,
	combout => \mem_d~2418_combout\);

-- Location: LCCOMB_X24_Y12_N18
\mem_d~2419\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2419_combout\ = ((\Mux2~0_combout\ & (\mem_d~2418_combout\ & !\Mux1~0_combout\)) # (!\Mux2~0_combout\ & ((\Mux1~0_combout\)))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2418_combout\,
	datad => \Mux1~0_combout\,
	combout => \mem_d~2419_combout\);

-- Location: LCCOMB_X24_Y12_N8
\mem_d~2422\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2422_combout\ = (\mem_d~2419_combout\ & (\Mux2~0_combout\ & (\Mux167~0_combout\))) # (!\mem_d~2419_combout\ & (\mem_d~2421_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2421_combout\,
	datad => \mem_d~2419_combout\,
	combout => \mem_d~2422_combout\);

-- Location: LCCOMB_X25_Y15_N30
\mem_d~1589feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1589feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~1589feeder_combout\);

-- Location: FF_X25_Y15_N31
\mem_d~1589\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1589feeder_combout\,
	ena => \mem_d~2623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1589_q\);

-- Location: FF_X16_Y14_N9
\mem_d~1597\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1597_q\);

-- Location: FF_X16_Y17_N13
\mem_d~1557\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1557_q\);

-- Location: LCCOMB_X16_Y17_N12
\mem_d~2411\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2411_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1565_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1557_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1565_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1557_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2411_combout\);

-- Location: LCCOMB_X16_Y14_N8
\mem_d~2412\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2412_combout\ = (\Mux12~1_combout\ & ((\mem_d~2411_combout\ & ((\mem_d~1597_q\))) # (!\mem_d~2411_combout\ & (\mem_d~1589_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1589_q\,
	datac => \mem_d~1597_q\,
	datad => \mem_d~2411_combout\,
	combout => \mem_d~2412_combout\);

-- Location: LCCOMB_X18_Y17_N28
\mem_d~1717feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1717feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1717feeder_combout\);

-- Location: FF_X18_Y17_N29
\mem_d~1717\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1717feeder_combout\,
	ena => \mem_d~2624_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1717_q\);

-- Location: FF_X17_Y14_N5
\mem_d~1725\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1725_q\);

-- Location: FF_X18_Y17_N15
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
	ena => \mem_d~2626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1685_q\);

-- Location: LCCOMB_X18_Y17_N14
\mem_d~2413\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2413_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1693_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1685_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1693_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1685_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2413_combout\);

-- Location: LCCOMB_X17_Y14_N4
\mem_d~2414\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2414_combout\ = (\Mux12~1_combout\ & ((\mem_d~2413_combout\ & ((\mem_d~1725_q\))) # (!\mem_d~2413_combout\ & (\mem_d~1717_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1717_q\,
	datac => \mem_d~1725_q\,
	datad => \mem_d~2413_combout\,
	combout => \mem_d~2414_combout\);

-- Location: LCCOMB_X16_Y14_N10
\mem_d~2415\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2415_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2414_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2412_combout\,
	datad => \mem_d~2414_combout\,
	combout => \mem_d~2415_combout\);

-- Location: LCCOMB_X14_Y18_N8
\mem_d~1733feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1733feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1733feeder_combout\);

-- Location: FF_X14_Y18_N9
\mem_d~1733\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1733feeder_combout\,
	ena => \mem_d~2618_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1733_q\);

-- Location: FF_X17_Y14_N21
\mem_d~1741\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1741_q\);

-- Location: LCCOMB_X17_Y17_N24
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

-- Location: FF_X17_Y17_N25
\mem_d~1709\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1709feeder_combout\,
	ena => \mem_d~2617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1709_q\);

-- Location: FF_X17_Y17_N31
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
	ena => \mem_d~2619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1701_q\);

-- Location: LCCOMB_X17_Y17_N30
\mem_d~2408\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2408_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1709_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1701_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1709_q\,
	datac => \mem_d~1701_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2408_combout\);

-- Location: LCCOMB_X17_Y14_N20
\mem_d~2409\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2409_combout\ = (\Mux12~1_combout\ & ((\mem_d~2408_combout\ & ((\mem_d~1741_q\))) # (!\mem_d~2408_combout\ & (\mem_d~1733_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1733_q\,
	datac => \mem_d~1741_q\,
	datad => \mem_d~2408_combout\,
	combout => \mem_d~2409_combout\);

-- Location: LCCOMB_X14_Y14_N2
\mem_d~1581feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1581feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux33~9_combout\,
	combout => \mem_d~1581feeder_combout\);

-- Location: FF_X14_Y14_N3
\mem_d~1581\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1581feeder_combout\,
	ena => \mem_d~2614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1581_q\);

-- Location: FF_X14_Y14_N29
\mem_d~1613\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux33~9_combout\,
	sload => VCC,
	ena => \mem_d~2616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1613_q\);

-- Location: LCCOMB_X13_Y17_N16
\mem_d~1605feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1605feeder_combout\ = \Mux33~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux33~9_combout\,
	combout => \mem_d~1605feeder_combout\);

-- Location: FF_X13_Y17_N17
\mem_d~1605\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1605feeder_combout\,
	ena => \mem_d~2613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1605_q\);

-- Location: FF_X14_Y17_N1
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
	ena => \mem_d~2615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1573_q\);

-- Location: LCCOMB_X14_Y17_N0
\mem_d~2406\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2406_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~1605_q\)) # (!\Mux12~1_combout\ & ((\mem_d~1573_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1605_q\,
	datac => \mem_d~1573_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2406_combout\);

-- Location: LCCOMB_X14_Y14_N28
\mem_d~2407\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2407_combout\ = (\Mux14~1_combout\ & ((\mem_d~2406_combout\ & ((\mem_d~1613_q\))) # (!\mem_d~2406_combout\ & (\mem_d~1581_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1581_q\,
	datac => \mem_d~1613_q\,
	datad => \mem_d~2406_combout\,
	combout => \mem_d~2407_combout\);

-- Location: LCCOMB_X17_Y14_N10
\mem_d~2410\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2410_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~2409_combout\)) # (!\Mux2~1_combout\ & ((\mem_d~2407_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~2409_combout\,
	datac => \mem_d~2407_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2410_combout\);

-- Location: LCCOMB_X23_Y14_N6
\mem_d~2416\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2416_combout\ = (\Mux11~1_combout\ & (\Mux13~1_combout\)) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & ((\mem_d~2410_combout\))) # (!\Mux13~1_combout\ & (\mem_d~2415_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2415_combout\,
	datad => \mem_d~2410_combout\,
	combout => \mem_d~2416_combout\);

-- Location: LCCOMB_X23_Y14_N0
\mem_d~2423\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2423_combout\ = (\Mux11~1_combout\ & ((\mem_d~2416_combout\ & ((\mem_d~2422_combout\))) # (!\mem_d~2416_combout\ & (\mem_d~2405_combout\)))) # (!\Mux11~1_combout\ & (((\mem_d~2416_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~2405_combout\,
	datac => \mem_d~2422_combout\,
	datad => \mem_d~2416_combout\,
	combout => \mem_d~2423_combout\);

-- Location: LCCOMB_X18_Y14_N28
\mem_d~2603\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2603_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\mem_d~2423_combout\))) # (!\Mux0~0_combout\ & (\mem_d~2602_combout\)))) # (!\Mux167~0_combout\ & (((\mem_d~2423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \mem_d~2602_combout\,
	datad => \mem_d~2423_combout\,
	combout => \mem_d~2603_combout\);

-- Location: LCCOMB_X19_Y14_N18
\Mux42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & (\Add0~8_combout\)) # (!\Mux169~1_combout\ & ((\mem_d~2603_combout\))))) # (!\Mux168~1_combout\ & (!\Mux169~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Add0~8_combout\,
	datad => \mem_d~2603_combout\,
	combout => \Mux42~4_combout\);

-- Location: LCCOMB_X23_Y17_N16
\Mux42~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~5_combout\ = (\Mux168~1_combout\ & (((\Mux42~4_combout\)))) # (!\Mux168~1_combout\ & ((\Mux42~4_combout\ & (\Add1~8_combout\)) # (!\Mux42~4_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add1~8_combout\,
	datac => \Mux42~4_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	combout => \Mux42~5_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Mux42~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux42~6_combout\ = (\Mux1~0_combout\ & (((\Mux42~3_combout\)))) # (!\Mux1~0_combout\ & ((\Mux167~0_combout\ & ((\Mux42~5_combout\))) # (!\Mux167~0_combout\ & (\Mux42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux42~3_combout\,
	datad => \Mux42~5_combout\,
	combout => \Mux42~6_combout\);

-- Location: LCCOMB_X21_Y14_N10
\regs[14][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[14][4]~feeder_combout\ = \Mux42~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux42~6_combout\,
	combout => \regs[14][4]~feeder_combout\);

-- Location: FF_X21_Y14_N11
\regs[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[14][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[14][5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[14][4]~q\);

-- Location: LCCOMB_X24_Y16_N30
\Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\regs[15][4]~q\) # (!\Mux1~1_combout\)))) # (!\Mux6~2_combout\ & (\regs[14][4]~q\ & ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \regs[14][4]~q\,
	datac => \regs[15][4]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X23_Y17_N14
\regs[3][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[3][4]~feeder_combout\ = \Mux42~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux42~6_combout\,
	combout => \regs[3][4]~feeder_combout\);

-- Location: FF_X23_Y17_N15
\regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[3][4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][4]~q\);

-- Location: FF_X21_Y17_N9
\regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux42~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[1][4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][4]~q\);

-- Location: LCCOMB_X24_Y17_N12
\Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux2~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\ & ((\regs[2][4]~q\))) # (!\Mux1~1_combout\ & (\regs[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][4]~q\,
	datab => \regs[2][4]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X23_Y16_N18
\Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux2~1_combout\ & ((\Mux6~4_combout\ & (\regs[3][4]~q\)) # (!\Mux6~4_combout\ & ((\regs[1][4]~q\))))) # (!\Mux2~1_combout\ & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[3][4]~q\,
	datac => \regs[1][4]~q\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X23_Y16_N22
\Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux0~0_combout\ & (((\Mux6~3_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & ((\Mux6~5_combout\))) # (!\Mux167~0_combout\ & (\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~5_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X23_Y19_N8
\Mux41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~6_combout\ = (\Mux167~0_combout\ & (!\Mux168~0_combout\ & ((\Add2~10_combout\) # (!\Mux169~0_combout\)))) # (!\Mux167~0_combout\ & (((\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~0_combout\,
	datab => \Add2~10_combout\,
	datac => \Mux168~0_combout\,
	datad => \Mux167~0_combout\,
	combout => \Mux41~6_combout\);

-- Location: LCCOMB_X21_Y14_N26
\Mux41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & (\Add3~10_combout\)) # (!\Mux169~1_combout\ & ((\Mult1|auto_generated|op_3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add3~10_combout\,
	datac => \Mux169~1_combout\,
	datad => \Mult1|auto_generated|op_3~10_combout\,
	combout => \Mux41~4_combout\);

-- Location: LCCOMB_X19_Y18_N10
\Add1~10\ : cycloneiii_lcell_comb
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

-- Location: LCCOMB_X25_Y16_N20
\regs[6][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[6][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[6][5]~feeder_combout\);

-- Location: FF_X25_Y16_N21
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
	ena => \regs[6][1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][5]~q\);

-- Location: LCCOMB_X24_Y14_N14
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

-- Location: LCCOMB_X19_Y14_N20
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

-- Location: FF_X19_Y14_N21
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
	ena => \regs[1][4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[1][5]~q\);

-- Location: LCCOMB_X24_Y14_N28
\Mux32~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (\Mux29~1_combout\ & (((\regs[1][5]~q\) # (\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (\regs[0][5]~q\ & ((!\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][5]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[1][5]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X24_Y14_N22
\Mux32~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (\Mux28~1_combout\ & ((\Mux32~4_combout\ & ((\regs[3][5]~q\))) # (!\Mux32~4_combout\ & (\regs[2][5]~q\)))) # (!\Mux28~1_combout\ & (((\Mux32~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \regs[2][5]~q\,
	datac => \regs[3][5]~q\,
	datad => \Mux32~4_combout\,
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X24_Y14_N20
\Mux32~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~6_combout\ = (\Mux11~1_combout\ & ((\Mux32~3_combout\) # ((\Mux0~1_combout\)))) # (!\Mux11~1_combout\ & (((\Mux32~5_combout\ & !\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux32~3_combout\,
	datac => \Mux32~5_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux32~6_combout\);

-- Location: LCCOMB_X23_Y14_N30
\regs[9][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[9][5]~feeder_combout\);

-- Location: FF_X23_Y14_N31
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
	ena => \regs[9][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][5]~q\);

-- Location: FF_X22_Y14_N13
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
	ena => \regs[8][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][5]~q\);

-- Location: LCCOMB_X22_Y14_N12
\Mux32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][5]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][5]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[8][5]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X23_Y14_N12
\Mux32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux29~1_combout\ & ((\Mux32~0_combout\ & (\regs[11][5]~q\)) # (!\Mux32~0_combout\ & ((\regs[9][5]~q\))))) # (!\Mux29~1_combout\ & (((\Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][5]~q\,
	datab => \regs[9][5]~q\,
	datac => \Mux29~1_combout\,
	datad => \Mux32~0_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X24_Y14_N26
\Mux32~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux32~9_combout\ = (\Mux0~1_combout\ & ((\Mux32~6_combout\ & (\Mux32~8_combout\)) # (!\Mux32~6_combout\ & ((\Mux32~1_combout\))))) # (!\Mux0~1_combout\ & (((\Mux32~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~8_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux32~6_combout\,
	datad => \Mux32~1_combout\,
	combout => \Mux32~9_combout\);

-- Location: FF_X25_Y11_N31
\mem_d~1806\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2636_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1806_q\);

-- Location: LCCOMB_X25_Y11_N30
\mem_d~2466\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2466_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1806_q\))) # (!\Mux14~1_combout\ & (\mem_d~1798_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1798_q\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~1806_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2466_combout\);

-- Location: FF_X24_Y13_N21
\mem_d~1678\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2632_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1678_q\);

-- Location: LCCOMB_X24_Y13_N20
\mem_d~2463\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2463_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1678_q\))) # (!\Mux14~1_combout\ & (\mem_d~1670_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1670_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1678_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2463_combout\);

-- Location: LCCOMB_X24_Y13_N8
\mem_d~2465\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2465_combout\ = (\Mux12~1_combout\ & (((\Mux2~1_combout\) # (\mem_d~2463_combout\)))) # (!\Mux12~1_combout\ & (\mem_d~2464_combout\ & (!\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2464_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2463_combout\,
	combout => \mem_d~2465_combout\);

-- Location: LCCOMB_X26_Y16_N20
\mem_d~1766feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1766feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~1766feeder_combout\);

-- Location: FF_X26_Y16_N21
\mem_d~1766\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1766feeder_combout\,
	ena => \mem_d~2635_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1766_q\);

-- Location: FF_X26_Y16_N23
\mem_d~1774\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2634_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1774_q\);

-- Location: LCCOMB_X26_Y16_N22
\mem_d~2462\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2462_combout\ = (!\Mux1~1_combout\ & ((\Mux14~1_combout\ & ((\mem_d~1774_q\))) # (!\Mux14~1_combout\ & (\mem_d~1766_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1766_q\,
	datac => \mem_d~1774_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2462_combout\);

-- Location: LCCOMB_X24_Y13_N2
\mem_d~2467\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2467_combout\ = (\Mux2~1_combout\ & ((\mem_d~2465_combout\ & (\mem_d~2466_combout\)) # (!\mem_d~2465_combout\ & ((\mem_d~2462_combout\))))) # (!\Mux2~1_combout\ & (((\mem_d~2465_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~2466_combout\,
	datac => \mem_d~2465_combout\,
	datad => \mem_d~2462_combout\,
	combout => \mem_d~2467_combout\);

-- Location: LCCOMB_X17_Y17_N16
\mem_d~1710feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1710feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1710feeder_combout\);

-- Location: FF_X17_Y17_N17
\mem_d~1710\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1710feeder_combout\,
	ena => \mem_d~2617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1710_q\);

-- Location: FF_X14_Y18_N29
\mem_d~1742\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1742_q\);

-- Location: FF_X17_Y17_N7
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
	ena => \mem_d~2619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1702_q\);

-- Location: LCCOMB_X17_Y17_N6
\mem_d~2453\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2453_combout\ = (\Mux12~1_combout\ & ((\mem_d~1734_q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1702_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1734_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1702_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2453_combout\);

-- Location: LCCOMB_X14_Y18_N28
\mem_d~2454\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2454_combout\ = (\Mux14~1_combout\ & ((\mem_d~2453_combout\ & ((\mem_d~1742_q\))) # (!\mem_d~2453_combout\ & (\mem_d~1710_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2453_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1710_q\,
	datac => \mem_d~1742_q\,
	datad => \mem_d~2453_combout\,
	combout => \mem_d~2454_combout\);

-- Location: LCCOMB_X16_Y17_N14
\mem_d~1606feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1606feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~1606feeder_combout\);

-- Location: FF_X16_Y17_N15
\mem_d~1606\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1606feeder_combout\,
	ena => \mem_d~2613_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1606_q\);

-- Location: FF_X16_Y16_N25
\mem_d~1614\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1614_q\);

-- Location: LCCOMB_X14_Y17_N18
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

-- Location: FF_X14_Y17_N19
\mem_d~1582\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1582feeder_combout\,
	ena => \mem_d~2614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1582_q\);

-- Location: FF_X14_Y17_N9
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
	ena => \mem_d~2615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1574_q\);

-- Location: LCCOMB_X14_Y17_N8
\mem_d~2451\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2451_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1582_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1574_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1582_q\,
	datac => \mem_d~1574_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2451_combout\);

-- Location: LCCOMB_X16_Y16_N24
\mem_d~2452\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2452_combout\ = (\Mux12~1_combout\ & ((\mem_d~2451_combout\ & ((\mem_d~1614_q\))) # (!\mem_d~2451_combout\ & (\mem_d~1606_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2451_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1606_q\,
	datac => \mem_d~1614_q\,
	datad => \mem_d~2451_combout\,
	combout => \mem_d~2452_combout\);

-- Location: LCCOMB_X17_Y18_N20
\mem_d~2460\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2460_combout\ = (\mem_d~2459_combout\ & (((\mem_d~2452_combout\)) # (!\Mux13~1_combout\))) # (!\mem_d~2459_combout\ & (\Mux13~1_combout\ & (\mem_d~2454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2459_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2454_combout\,
	datad => \mem_d~2452_combout\,
	combout => \mem_d~2460_combout\);

-- Location: LCCOMB_X17_Y18_N18
\mem_d~2461\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2461_combout\ = (\Mux11~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux11~1_combout\ & (\mem_d~2262_combout\ & ((\mem_d~2460_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2262_combout\,
	datab => \Mux13~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \mem_d~2460_combout\,
	combout => \mem_d~2461_combout\);

-- Location: LCCOMB_X21_Y14_N8
\mem_d~2468\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2468_combout\ = (\Mux11~1_combout\ & ((\mem_d~2461_combout\ & ((\mem_d~2467_combout\))) # (!\mem_d~2461_combout\ & (\mem_d~2450_combout\)))) # (!\Mux11~1_combout\ & (((\mem_d~2461_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2450_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2467_combout\,
	datad => \mem_d~2461_combout\,
	combout => \mem_d~2468_combout\);

-- Location: FF_X18_Y12_N21
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
	ena => \mem_d~2666_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~142_q\);

-- Location: LCCOMB_X22_Y13_N26
\mem_d~78feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~78feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~78feeder_combout\);

-- Location: FF_X22_Y13_N27
\mem_d~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~78feeder_combout\,
	ena => \mem_d~2651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~78_q\);

-- Location: LCCOMB_X18_Y12_N20
\mem_d~2486\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2486_combout\ = (!\Mux1~1_combout\ & ((\Mux11~1_combout\ & (\mem_d~142_q\)) # (!\Mux11~1_combout\ & ((\mem_d~78_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~142_q\,
	datad => \mem_d~78_q\,
	combout => \mem_d~2486_combout\);

-- Location: LCCOMB_X22_Y11_N18
\mem_d~62feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~62feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~62feeder_combout\);

-- Location: FF_X22_Y11_N19
\mem_d~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~62feeder_combout\,
	ena => \mem_d~2659_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~62_q\);

-- Location: FF_X21_Y11_N3
\mem_d~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2642_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~126_q\);

-- Location: LCCOMB_X21_Y11_N2
\mem_d~2488\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2488_combout\ = (!\Mux1~1_combout\ & ((\Mux11~1_combout\ & ((\mem_d~126_q\))) # (!\Mux11~1_combout\ & (\mem_d~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~62_q\,
	datac => \mem_d~126_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2488_combout\);

-- Location: LCCOMB_X21_Y13_N8
\mem_d~190feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~190feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~190feeder_combout\);

-- Location: FF_X21_Y13_N9
\mem_d~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~190feeder_combout\,
	ena => \mem_d~2660_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~190_q\);

-- Location: FF_X21_Y11_N25
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
	ena => \mem_d~2644_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~254_q\);

-- Location: LCCOMB_X21_Y11_N24
\mem_d~2487\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2487_combout\ = (!\Mux1~1_combout\ & ((\Mux11~1_combout\ & ((\mem_d~254_q\))) # (!\Mux11~1_combout\ & (\mem_d~190_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~190_q\,
	datac => \mem_d~254_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2487_combout\);

-- Location: LCCOMB_X22_Y12_N10
\mem_d~2489\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2489_combout\ = (\Mux2~1_combout\ & ((\Mux13~1_combout\) # ((\mem_d~2487_combout\)))) # (!\Mux2~1_combout\ & (!\Mux13~1_combout\ & (\mem_d~2488_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~2488_combout\,
	datad => \mem_d~2487_combout\,
	combout => \mem_d~2489_combout\);

-- Location: LCCOMB_X22_Y12_N4
\mem_d~2491\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2491_combout\ = (\Mux13~1_combout\ & ((\mem_d~2489_combout\ & (\mem_d~2490_combout\)) # (!\mem_d~2489_combout\ & ((\mem_d~2486_combout\))))) # (!\Mux13~1_combout\ & (((\mem_d~2489_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2490_combout\,
	datab => \mem_d~2486_combout\,
	datac => \Mux13~1_combout\,
	datad => \mem_d~2489_combout\,
	combout => \mem_d~2491_combout\);

-- Location: LCCOMB_X22_Y11_N16
\mem_d~246feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~246feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~246feeder_combout\);

-- Location: FF_X22_Y11_N17
\mem_d~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~246feeder_combout\,
	ena => \mem_d~2641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~246_q\);

-- Location: FF_X21_Y12_N15
\mem_d~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~262_q\);

-- Location: FF_X21_Y12_N17
\mem_d~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~182_q\);

-- Location: LCCOMB_X21_Y12_N16
\mem_d~2477\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2477_combout\ = (\Mux11~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~198_q\)) # (!\Mux13~1_combout\ & ((\mem_d~182_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~198_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~182_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2477_combout\);

-- Location: LCCOMB_X21_Y12_N14
\mem_d~2478\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2478_combout\ = (\Mux11~1_combout\ & ((\mem_d~2477_combout\ & ((\mem_d~262_q\))) # (!\mem_d~2477_combout\ & (\mem_d~246_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2477_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~246_q\,
	datac => \mem_d~262_q\,
	datad => \mem_d~2477_combout\,
	combout => \mem_d~2478_combout\);

-- Location: LCCOMB_X22_Y12_N20
\mem_d~2479\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2479_combout\ = (\mem_d~2476_combout\ & (\Mux2~0_combout\ & (\Mux167~0_combout\))) # (!\mem_d~2476_combout\ & (\mem_d~2478_combout\ & ((!\Mux167~0_combout\) # (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2476_combout\,
	datab => \Mux2~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \mem_d~2478_combout\,
	combout => \mem_d~2479_combout\);

-- Location: LCCOMB_X19_Y11_N26
\mem_d~86feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~86feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~86feeder_combout\);

-- Location: FF_X19_Y11_N27
\mem_d~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~86feeder_combout\,
	ena => \mem_d~2639_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~86_q\);

-- Location: FF_X18_Y12_N19
\mem_d~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~102_q\);

-- Location: LCCOMB_X17_Y15_N20
\mem_d~38feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~38feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~38feeder_combout\);

-- Location: FF_X17_Y15_N21
\mem_d~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~38feeder_combout\,
	ena => \mem_d~2649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~38_q\);

-- Location: FF_X17_Y15_N15
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
	ena => \mem_d~2657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~22_q\);

-- Location: LCCOMB_X17_Y15_N14
\mem_d~2480\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2480_combout\ = (\Mux11~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~38_q\)) # (!\Mux13~1_combout\ & ((\mem_d~22_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~38_q\,
	datac => \mem_d~22_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2480_combout\);

-- Location: LCCOMB_X18_Y12_N18
\mem_d~2481\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2481_combout\ = (\Mux11~1_combout\ & ((\mem_d~2480_combout\ & ((\mem_d~102_q\))) # (!\mem_d~2480_combout\ & (\mem_d~86_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2480_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~86_q\,
	datac => \mem_d~102_q\,
	datad => \mem_d~2480_combout\,
	combout => \mem_d~2481_combout\);

-- Location: FF_X23_Y12_N5
\mem_d~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2661_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~230_q\);

-- Location: LCCOMB_X19_Y19_N18
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

-- Location: FF_X19_Y19_N19
\mem_d~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~166feeder_combout\,
	ena => \mem_d~2650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~166_q\);

-- Location: FF_X19_Y19_N13
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
	ena => \mem_d~2658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~150_q\);

-- Location: LCCOMB_X19_Y19_N12
\mem_d~2482\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2482_combout\ = (\Mux13~1_combout\ & ((\mem_d~166_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~150_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~166_q\,
	datac => \mem_d~150_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2482_combout\);

-- Location: LCCOMB_X23_Y12_N4
\mem_d~2483\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2483_combout\ = (\Mux11~1_combout\ & ((\mem_d~2482_combout\ & ((\mem_d~230_q\))) # (!\mem_d~2482_combout\ & (\mem_d~214_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2482_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~214_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~230_q\,
	datad => \mem_d~2482_combout\,
	combout => \mem_d~2483_combout\);

-- Location: LCCOMB_X22_Y12_N2
\mem_d~2484\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2484_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~2483_combout\))) # (!\Mux2~1_combout\ & (\mem_d~2481_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~2481_combout\,
	datad => \mem_d~2483_combout\,
	combout => \mem_d~2484_combout\);

-- Location: LCCOMB_X22_Y12_N8
\mem_d~2485\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2485_combout\ = (\Mux14~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux12~1_combout\ & (\mem_d~2479_combout\)) # (!\Mux12~1_combout\ & ((\mem_d~2484_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2479_combout\,
	datac => \Mux12~1_combout\,
	datad => \mem_d~2484_combout\,
	combout => \mem_d~2485_combout\);

-- Location: LCCOMB_X19_Y13_N2
\mem_d~110feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~110feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux32~9_combout\,
	combout => \mem_d~110feeder_combout\);

-- Location: FF_X19_Y13_N3
\mem_d~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~110feeder_combout\,
	ena => \mem_d~2667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~110_q\);

-- Location: FF_X18_Y11_N23
\mem_d~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~94_q\);

-- Location: LCCOMB_X18_Y13_N24
\mem_d~46feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~46feeder_combout\ = \Mux32~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux32~9_combout\,
	combout => \mem_d~46feeder_combout\);

-- Location: FF_X18_Y13_N25
\mem_d~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~46feeder_combout\,
	ena => \mem_d~2647_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~46_q\);

-- Location: FF_X19_Y13_N17
\mem_d~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux32~9_combout\,
	sload => VCC,
	ena => \mem_d~2655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~30_q\);

-- Location: LCCOMB_X19_Y13_N16
\mem_d~2469\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2469_combout\ = (\Mux11~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~46_q\)) # (!\Mux13~1_combout\ & ((\mem_d~30_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~46_q\,
	datac => \mem_d~30_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2469_combout\);

-- Location: LCCOMB_X18_Y11_N22
\mem_d~2470\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2470_combout\ = (\Mux11~1_combout\ & ((\mem_d~2469_combout\ & (\mem_d~110_q\)) # (!\mem_d~2469_combout\ & ((\mem_d~94_q\))))) # (!\Mux11~1_combout\ & (((\mem_d~2469_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~110_q\,
	datac => \mem_d~94_q\,
	datad => \mem_d~2469_combout\,
	combout => \mem_d~2470_combout\);

-- Location: LCCOMB_X22_Y12_N24
\mem_d~2473\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2473_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~2472_combout\)) # (!\Mux2~1_combout\ & ((\mem_d~2470_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2472_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux2~1_combout\,
	datad => \mem_d~2470_combout\,
	combout => \mem_d~2473_combout\);

-- Location: LCCOMB_X22_Y12_N30
\mem_d~2492\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2492_combout\ = (\Mux14~1_combout\ & ((\mem_d~2485_combout\ & (\mem_d~2491_combout\)) # (!\mem_d~2485_combout\ & ((\mem_d~2473_combout\))))) # (!\Mux14~1_combout\ & (((\mem_d~2485_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2491_combout\,
	datac => \mem_d~2485_combout\,
	datad => \mem_d~2473_combout\,
	combout => \mem_d~2492_combout\);

-- Location: LCCOMB_X21_Y14_N18
\mem_d~2604\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2604_combout\ = (\Mux0~0_combout\ & (((\mem_d~2468_combout\)))) # (!\Mux0~0_combout\ & ((\Mux167~0_combout\ & ((\mem_d~2492_combout\))) # (!\Mux167~0_combout\ & (\mem_d~2468_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \Mux167~0_combout\,
	datac => \mem_d~2468_combout\,
	datad => \mem_d~2492_combout\,
	combout => \mem_d~2604_combout\);

-- Location: LCCOMB_X21_Y14_N22
\Mux41~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Mux168~1_combout\ & ((\Mux169~1_combout\ & (\Add0~10_combout\)) # (!\Mux169~1_combout\ & ((\mem_d~2604_combout\))))) # (!\Mux168~1_combout\ & (((!\Mux169~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add0~10_combout\,
	datac => \Mux169~1_combout\,
	datad => \mem_d~2604_combout\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X21_Y14_N12
\Mux41~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\Mux168~1_combout\ & (((\Mux41~2_combout\)))) # (!\Mux168~1_combout\ & ((\Mux41~2_combout\ & (\Add1~10_combout\)) # (!\Mux41~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Add1~10_combout\,
	datac => \Mux41~2_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X21_Y14_N16
\Mux41~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux41~5_combout\ = (\Mux1~1_combout\ & ((\Mux41~6_combout\) # ((\Mux41~4_combout\)))) # (!\Mux1~1_combout\ & (((\Mux41~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux41~6_combout\,
	datac => \Mux41~4_combout\,
	datad => \Mux41~3_combout\,
	combout => \Mux41~5_combout\);

-- Location: LCCOMB_X25_Y18_N28
\regs[3][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[3][5]~feeder_combout\ = \Mux41~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux41~5_combout\,
	combout => \regs[3][5]~feeder_combout\);

-- Location: FF_X25_Y18_N29
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
	ena => \regs[3][4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[3][5]~q\);

-- Location: LCCOMB_X24_Y17_N16
\Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux2~1_combout\ & (((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & ((\Mux1~1_combout\ & ((\regs[2][5]~q\))) # (!\Mux1~1_combout\ & (\regs[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[0][5]~q\,
	datab => \regs[2][5]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X25_Y18_N2
\Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux2~1_combout\ & ((\Mux5~4_combout\ & (\regs[3][5]~q\)) # (!\Mux5~4_combout\ & ((\regs[1][5]~q\))))) # (!\Mux2~1_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[3][5]~q\,
	datac => \regs[1][5]~q\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X24_Y16_N16
\Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux2~1_combout\ & ((\regs[13][5]~q\) # ((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (((\regs[12][5]~q\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[13][5]~q\,
	datac => \regs[12][5]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: FF_X24_Y16_N3
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
	ena => \regs[15][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][5]~q\);

-- Location: LCCOMB_X24_Y16_N2
\Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\regs[15][5]~q\) # (!\Mux1~1_combout\)))) # (!\Mux5~2_combout\ & (\regs[14][5]~q\ & ((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][5]~q\,
	datab => \Mux5~2_combout\,
	datac => \regs[15][5]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X22_Y18_N0
\Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\Mux5~3_combout\))) # (!\Mux0~0_combout\ & (\Mux5~5_combout\)))) # (!\Mux167~0_combout\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux5~5_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X19_Y16_N6
\Mux40~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux168~1_combout\ & (((\Add0~12_combout\)) # (!\Mux169~1_combout\))) # (!\Mux168~1_combout\ & ((\Mux169~1_combout\) # ((\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux168~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Add1~12_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X22_Y16_N24
\Mux40~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (\Mux169~1_combout\ & (\Mux168~1_combout\ & (\Add3~12_combout\))) # (!\Mux169~1_combout\ & (((\Mult1|auto_generated|op_3~12_combout\)) # (!\Mux168~1_combout\)))

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
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X22_Y16_N26
\Mux40~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = (\Mux168~1_combout\ & (((\Mux40~3_combout\)))) # (!\Mux168~1_combout\ & ((\Mux40~3_combout\ & ((\Mux0~1_combout\))) # (!\Mux40~3_combout\ & (\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux168~1_combout\,
	datad => \Mux40~3_combout\,
	combout => \Mux40~4_combout\);

-- Location: FF_X19_Y16_N1
\regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[0][5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[0][6]~q\);

-- Location: LCCOMB_X24_Y18_N0
\Mux31~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\Mux29~1_combout\ & ((\regs[1][6]~q\) # ((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & (((!\Mux28~1_combout\ & \regs[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[1][6]~q\,
	datac => \Mux28~1_combout\,
	datad => \regs[0][6]~q\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Mux31~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\Mux28~1_combout\ & ((\Mux31~4_combout\ & ((\regs[3][6]~q\))) # (!\Mux31~4_combout\ & (\regs[2][6]~q\)))) # (!\Mux28~1_combout\ & (((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][6]~q\,
	datab => \regs[3][6]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~5_combout\);

-- Location: FF_X23_Y16_N7
\regs[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[6][1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[6][6]~q\);

-- Location: FF_X22_Y16_N13
\regs[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[5][5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[5][6]~q\);

-- Location: LCCOMB_X25_Y16_N10
\Mux31~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux28~1_combout\ & (((\Mux29~1_combout\)))) # (!\Mux28~1_combout\ & ((\Mux29~1_combout\ & ((\regs[5][6]~q\))) # (!\Mux29~1_combout\ & (\regs[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[4][6]~q\,
	datab => \regs[5][6]~q\,
	datac => \Mux28~1_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X26_Y16_N14
\Mux31~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux28~1_combout\ & ((\Mux31~2_combout\ & (\regs[7][6]~q\)) # (!\Mux31~2_combout\ & ((\regs[6][6]~q\))))) # (!\Mux28~1_combout\ & (((\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[7][6]~q\,
	datab => \Mux28~1_combout\,
	datac => \regs[6][6]~q\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X24_Y16_N14
\Mux31~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux11~1_combout\ & (((\Mux0~1_combout\) # (\Mux31~3_combout\)))) # (!\Mux11~1_combout\ & (\Mux31~5_combout\ & (!\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux31~5_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux31~6_combout\);

-- Location: FF_X24_Y16_N23
\regs[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][6]~q\);

-- Location: LCCOMB_X24_Y16_N28
\regs[12][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[12][6]~feeder_combout\ = \Mux40~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux40~10_combout\,
	combout => \regs[12][6]~feeder_combout\);

-- Location: FF_X24_Y16_N29
\regs[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[12][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[12][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[12][6]~q\);

-- Location: LCCOMB_X24_Y16_N24
\Mux31~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & ((\regs[14][6]~q\))) # (!\Mux28~1_combout\ & (\regs[12][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[12][6]~q\,
	datac => \regs[14][6]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X24_Y16_N22
\Mux31~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\Mux29~1_combout\ & ((\Mux31~7_combout\ & ((\regs[15][6]~q\))) # (!\Mux31~7_combout\ & (\regs[13][6]~q\)))) # (!\Mux29~1_combout\ & (((\Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datab => \regs[13][6]~q\,
	datac => \regs[15][6]~q\,
	datad => \Mux31~7_combout\,
	combout => \Mux31~8_combout\);

-- Location: LCCOMB_X23_Y14_N8
\regs[9][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[9][6]~feeder_combout\ = \Mux40~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux40~10_combout\,
	combout => \regs[9][6]~feeder_combout\);

-- Location: FF_X23_Y14_N9
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
	ena => \regs[9][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[9][6]~q\);

-- Location: FF_X22_Y14_N25
\regs[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[8][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[8][6]~q\);

-- Location: LCCOMB_X22_Y14_N24
\Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux29~1_combout\ & (((\Mux28~1_combout\)))) # (!\Mux29~1_combout\ & ((\Mux28~1_combout\ & (\regs[10][6]~q\)) # (!\Mux28~1_combout\ & ((\regs[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[10][6]~q\,
	datab => \Mux29~1_combout\,
	datac => \regs[8][6]~q\,
	datad => \Mux28~1_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Mux31~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux29~1_combout\ & ((\Mux31~0_combout\ & (\regs[11][6]~q\)) # (!\Mux31~0_combout\ & ((\regs[9][6]~q\))))) # (!\Mux29~1_combout\ & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[11][6]~q\,
	datab => \regs[9][6]~q\,
	datac => \Mux29~1_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X24_Y13_N4
\Mux31~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\Mux0~1_combout\ & ((\Mux31~6_combout\ & (\Mux31~8_combout\)) # (!\Mux31~6_combout\ & ((\Mux31~1_combout\))))) # (!\Mux0~1_combout\ & (\Mux31~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux31~6_combout\,
	datac => \Mux31~8_combout\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~9_combout\);

-- Location: FF_X17_Y13_N21
\mem_d~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2656_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~159_q\);

-- Location: LCCOMB_X17_Y13_N20
\mem_d~2518\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2518_combout\ = (\Mux13~1_combout\ & ((\mem_d~175_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~159_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~175_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~159_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2518_combout\);

-- Location: FF_X16_Y13_N21
\mem_d~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2640_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~223_q\);

-- Location: LCCOMB_X16_Y13_N20
\mem_d~2519\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2519_combout\ = (\mem_d~2518_combout\ & ((\mem_d~239_q\) # ((!\Mux11~1_combout\)))) # (!\mem_d~2518_combout\ & (((\mem_d~223_q\ & \Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~239_q\,
	datab => \mem_d~2518_combout\,
	datac => \mem_d~223_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2519_combout\);

-- Location: LCCOMB_X19_Y13_N10
\mem_d~111feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~111feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~111feeder_combout\);

-- Location: FF_X19_Y13_N11
\mem_d~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~111feeder_combout\,
	ena => \mem_d~2667_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~111_q\);

-- Location: FF_X18_Y11_N21
\mem_d~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2638_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~95_q\);

-- Location: FF_X19_Y13_N21
\mem_d~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2655_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~31_q\);

-- Location: LCCOMB_X19_Y13_N20
\mem_d~2516\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2516_combout\ = (\Mux13~1_combout\ & ((\mem_d~47_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~31_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~47_q\,
	datab => \Mux13~1_combout\,
	datac => \mem_d~31_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2516_combout\);

-- Location: LCCOMB_X18_Y11_N20
\mem_d~2517\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2517_combout\ = (\Mux11~1_combout\ & ((\mem_d~2516_combout\ & (\mem_d~111_q\)) # (!\mem_d~2516_combout\ & ((\mem_d~95_q\))))) # (!\Mux11~1_combout\ & (((\mem_d~2516_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~111_q\,
	datac => \mem_d~95_q\,
	datad => \mem_d~2516_combout\,
	combout => \mem_d~2517_combout\);

-- Location: LCCOMB_X17_Y11_N20
\mem_d~2520\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2520_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~2519_combout\)) # (!\Mux2~1_combout\ & ((\mem_d~2517_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~2519_combout\,
	datac => \mem_d~2517_combout\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2520_combout\);

-- Location: LCCOMB_X18_Y14_N4
\mem_d~2523\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2523_combout\ = ((\Mux1~0_combout\ & ((!\Mux13~0_combout\))) # (!\Mux1~0_combout\ & (\mem_d~2522_combout\ & \Mux13~0_combout\))) # (!\Mux167~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2522_combout\,
	datab => \Mux1~0_combout\,
	datac => \Mux167~0_combout\,
	datad => \Mux13~0_combout\,
	combout => \mem_d~2523_combout\);

-- Location: LCCOMB_X23_Y13_N22
\mem_d~207feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~207feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~207feeder_combout\);

-- Location: FF_X23_Y13_N23
\mem_d~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~207feeder_combout\,
	ena => \mem_d~2652_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~207_q\);

-- Location: FF_X22_Y13_N29
\mem_d~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2651_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~79_q\);

-- Location: LCCOMB_X22_Y13_N28
\mem_d~2524\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2524_combout\ = (\Mux2~1_combout\ & ((\mem_d~207_q\) # ((\Mux11~1_combout\)))) # (!\Mux2~1_combout\ & (((\mem_d~79_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~207_q\,
	datac => \mem_d~79_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2524_combout\);

-- Location: FF_X22_Y13_N7
\mem_d~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2668_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~271_q\);

-- Location: LCCOMB_X22_Y13_N6
\mem_d~2525\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2525_combout\ = (\mem_d~2524_combout\ & (((\mem_d~271_q\) # (!\Mux11~1_combout\)))) # (!\mem_d~2524_combout\ & (\mem_d~143_q\ & ((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~143_q\,
	datab => \mem_d~2524_combout\,
	datac => \mem_d~271_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2525_combout\);

-- Location: LCCOMB_X18_Y14_N30
\mem_d~2526\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2526_combout\ = (\mem_d~2523_combout\ & (\Mux167~0_combout\ & (\Mux13~0_combout\))) # (!\mem_d~2523_combout\ & (\mem_d~2525_combout\ & ((!\Mux13~0_combout\) # (!\Mux167~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \mem_d~2523_combout\,
	datad => \mem_d~2525_combout\,
	combout => \mem_d~2526_combout\);

-- Location: LCCOMB_X22_Y11_N8
\mem_d~247feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~247feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~247feeder_combout\);

-- Location: FF_X22_Y11_N9
\mem_d~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~247feeder_combout\,
	ena => \mem_d~2641_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~247_q\);

-- Location: FF_X21_Y12_N19
\mem_d~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2664_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~263_q\);

-- Location: LCCOMB_X22_Y19_N30
\mem_d~199feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~199feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~199feeder_combout\);

-- Location: FF_X22_Y19_N31
\mem_d~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~199feeder_combout\,
	ena => \mem_d~2646_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~199_q\);

-- Location: FF_X21_Y12_N29
\mem_d~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2654_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~183_q\);

-- Location: LCCOMB_X21_Y12_N28
\mem_d~2529\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2529_combout\ = (\Mux13~1_combout\ & ((\mem_d~199_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~183_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~199_q\,
	datac => \mem_d~183_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2529_combout\);

-- Location: LCCOMB_X21_Y12_N18
\mem_d~2530\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2530_combout\ = (\Mux11~1_combout\ & ((\mem_d~2529_combout\ & ((\mem_d~263_q\))) # (!\mem_d~2529_combout\ & (\mem_d~247_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2529_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~247_q\,
	datac => \mem_d~263_q\,
	datad => \mem_d~2529_combout\,
	combout => \mem_d~2530_combout\);

-- Location: FF_X17_Y12_N5
\mem_d~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2663_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~103_q\);

-- Location: LCCOMB_X17_Y15_N4
\mem_d~39feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~39feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~39feeder_combout\);

-- Location: FF_X17_Y15_N5
\mem_d~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~39feeder_combout\,
	ena => \mem_d~2649_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~39_q\);

-- Location: FF_X17_Y15_N27
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
	ena => \mem_d~2657_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~23_q\);

-- Location: LCCOMB_X17_Y15_N26
\mem_d~2531\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2531_combout\ = (\Mux11~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux13~1_combout\ & (\mem_d~39_q\)) # (!\Mux13~1_combout\ & ((\mem_d~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \mem_d~39_q\,
	datac => \mem_d~23_q\,
	datad => \Mux13~1_combout\,
	combout => \mem_d~2531_combout\);

-- Location: LCCOMB_X17_Y12_N4
\mem_d~2532\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2532_combout\ = (\Mux11~1_combout\ & ((\mem_d~2531_combout\ & ((\mem_d~103_q\))) # (!\mem_d~2531_combout\ & (\mem_d~87_q\)))) # (!\Mux11~1_combout\ & (((\mem_d~2531_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~87_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~103_q\,
	datad => \mem_d~2531_combout\,
	combout => \mem_d~2532_combout\);

-- Location: FF_X17_Y12_N3
\mem_d~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2637_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~215_q\);

-- Location: LCCOMB_X19_Y19_N2
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

-- Location: FF_X19_Y19_N3
\mem_d~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~167feeder_combout\,
	ena => \mem_d~2650_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~167_q\);

-- Location: FF_X19_Y19_N21
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
	ena => \mem_d~2658_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~151_q\);

-- Location: LCCOMB_X19_Y19_N20
\mem_d~2533\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2533_combout\ = (\Mux13~1_combout\ & ((\mem_d~167_q\) # ((\Mux11~1_combout\)))) # (!\Mux13~1_combout\ & (((\mem_d~151_q\ & !\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \mem_d~167_q\,
	datac => \mem_d~151_q\,
	datad => \Mux11~1_combout\,
	combout => \mem_d~2533_combout\);

-- Location: LCCOMB_X17_Y12_N2
\mem_d~2534\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2534_combout\ = (\Mux11~1_combout\ & ((\mem_d~2533_combout\ & (\mem_d~231_q\)) # (!\mem_d~2533_combout\ & ((\mem_d~215_q\))))) # (!\Mux11~1_combout\ & (((\mem_d~2533_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~231_q\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~215_q\,
	datad => \mem_d~2533_combout\,
	combout => \mem_d~2534_combout\);

-- Location: LCCOMB_X17_Y12_N12
\Mux40~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~5_combout\ = (\Mux2~0_combout\ & ((\Mux12~1_combout\) # ((\mem_d~2532_combout\)))) # (!\Mux2~0_combout\ & (!\Mux12~1_combout\ & ((\mem_d~2534_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2532_combout\,
	datad => \mem_d~2534_combout\,
	combout => \Mux40~5_combout\);

-- Location: LCCOMB_X18_Y14_N12
\Mux40~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~6_combout\ = (\Mux12~1_combout\ & ((\Mux40~5_combout\ & (\mem_d~2528_combout\)) # (!\Mux40~5_combout\ & ((\mem_d~2530_combout\))))) # (!\Mux12~1_combout\ & (((\Mux40~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2528_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2530_combout\,
	datad => \Mux40~5_combout\,
	combout => \Mux40~6_combout\);

-- Location: LCCOMB_X18_Y14_N10
\Mux40~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~7_combout\ = (\Mux14~1_combout\ & (((!\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & (\mem_d~2262_combout\ & ((\Mux40~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2262_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux40~6_combout\,
	combout => \Mux40~7_combout\);

-- Location: LCCOMB_X18_Y14_N8
\Mux40~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~8_combout\ = (\Mux14~1_combout\ & ((\Mux40~7_combout\ & (\mem_d~2520_combout\)) # (!\Mux40~7_combout\ & ((\mem_d~2526_combout\))))) # (!\Mux14~1_combout\ & (((\Mux40~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~2520_combout\,
	datac => \mem_d~2526_combout\,
	datad => \Mux40~7_combout\,
	combout => \Mux40~8_combout\);

-- Location: LCCOMB_X17_Y17_N28
\mem_d~1711feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1711feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1711feeder_combout\);

-- Location: FF_X17_Y17_N29
\mem_d~1711\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1711feeder_combout\,
	ena => \mem_d~2617_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1711_q\);

-- Location: FF_X17_Y14_N1
\mem_d~1743\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2620_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1743_q\);

-- Location: FF_X17_Y17_N11
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
	ena => \mem_d~2619_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1703_q\);

-- Location: LCCOMB_X17_Y17_N10
\mem_d~2501\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2501_combout\ = (\Mux12~1_combout\ & ((\mem_d~1735_q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1703_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1735_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1703_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2501_combout\);

-- Location: LCCOMB_X17_Y14_N0
\mem_d~2502\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2502_combout\ = (\Mux14~1_combout\ & ((\mem_d~2501_combout\ & ((\mem_d~1743_q\))) # (!\mem_d~2501_combout\ & (\mem_d~1711_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2501_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1711_q\,
	datac => \mem_d~1743_q\,
	datad => \mem_d~2501_combout\,
	combout => \mem_d~2502_combout\);

-- Location: LCCOMB_X14_Y17_N2
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

-- Location: FF_X14_Y17_N3
\mem_d~1583\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1583feeder_combout\,
	ena => \mem_d~2614_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1583_q\);

-- Location: FF_X14_Y17_N5
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
	ena => \mem_d~2615_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1575_q\);

-- Location: LCCOMB_X14_Y17_N4
\mem_d~2499\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2499_combout\ = (\Mux12~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~1_combout\ & (\mem_d~1583_q\)) # (!\Mux14~1_combout\ & ((\mem_d~1575_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1583_q\,
	datac => \mem_d~1575_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2499_combout\);

-- Location: FF_X16_Y16_N3
\mem_d~1615\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2616_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1615_q\);

-- Location: LCCOMB_X16_Y16_N2
\mem_d~2500\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2500_combout\ = (\mem_d~2499_combout\ & (((\mem_d~1615_q\) # (!\Mux12~1_combout\)))) # (!\mem_d~2499_combout\ & (\mem_d~1607_q\ & ((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1607_q\,
	datab => \mem_d~2499_combout\,
	datac => \mem_d~1615_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2500_combout\);

-- Location: LCCOMB_X16_Y16_N4
\mem_d~2503\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2503_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~2502_combout\)) # (!\Mux2~1_combout\ & ((\mem_d~2500_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~1_combout\,
	datac => \mem_d~2502_combout\,
	datad => \mem_d~2500_combout\,
	combout => \mem_d~2503_combout\);

-- Location: LCCOMB_X18_Y13_N10
\mem_d~1695feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1695feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~1695feeder_combout\);

-- Location: FF_X18_Y13_N11
\mem_d~1695\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1695feeder_combout\,
	ena => \mem_d~2622_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1695_q\);

-- Location: FF_X17_Y14_N31
\mem_d~1727\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2628_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1727_q\);

-- Location: FF_X18_Y17_N19
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
	ena => \mem_d~2626_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1687_q\);

-- Location: LCCOMB_X18_Y17_N18
\mem_d~2506\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2506_combout\ = (\Mux12~1_combout\ & ((\mem_d~1719_q\) # ((\Mux14~1_combout\)))) # (!\Mux12~1_combout\ & (((\mem_d~1687_q\ & !\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1719_q\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~1687_q\,
	datad => \Mux14~1_combout\,
	combout => \mem_d~2506_combout\);

-- Location: LCCOMB_X17_Y14_N30
\mem_d~2507\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2507_combout\ = (\Mux14~1_combout\ & ((\mem_d~2506_combout\ & ((\mem_d~1727_q\))) # (!\mem_d~2506_combout\ & (\mem_d~1695_q\)))) # (!\Mux14~1_combout\ & (((\mem_d~2506_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \mem_d~1695_q\,
	datac => \mem_d~1727_q\,
	datad => \mem_d~2506_combout\,
	combout => \mem_d~2507_combout\);

-- Location: LCCOMB_X25_Y15_N26
\mem_d~1591feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1591feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~1591feeder_combout\);

-- Location: FF_X25_Y15_N27
\mem_d~1591\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1591feeder_combout\,
	ena => \mem_d~2623_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1591_q\);

-- Location: FF_X16_Y14_N19
\mem_d~1599\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2627_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1599_q\);

-- Location: FF_X16_Y17_N17
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
	ena => \mem_d~2625_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1559_q\);

-- Location: LCCOMB_X16_Y17_N16
\mem_d~2504\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2504_combout\ = (\Mux14~1_combout\ & ((\mem_d~1567_q\) # ((\Mux12~1_combout\)))) # (!\Mux14~1_combout\ & (((\mem_d~1559_q\ & !\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~1567_q\,
	datab => \Mux14~1_combout\,
	datac => \mem_d~1559_q\,
	datad => \Mux12~1_combout\,
	combout => \mem_d~2504_combout\);

-- Location: LCCOMB_X16_Y14_N18
\mem_d~2505\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2505_combout\ = (\Mux12~1_combout\ & ((\mem_d~2504_combout\ & ((\mem_d~1599_q\))) # (!\mem_d~2504_combout\ & (\mem_d~1591_q\)))) # (!\Mux12~1_combout\ & (((\mem_d~2504_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \mem_d~1591_q\,
	datac => \mem_d~1599_q\,
	datad => \mem_d~2504_combout\,
	combout => \mem_d~2505_combout\);

-- Location: LCCOMB_X16_Y14_N20
\mem_d~2508\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2508_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & (\mem_d~2507_combout\)) # (!\Mux2~1_combout\ & ((\mem_d~2505_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux2~1_combout\,
	datac => \mem_d~2507_combout\,
	datad => \mem_d~2505_combout\,
	combout => \mem_d~2508_combout\);

-- Location: LCCOMB_X19_Y12_N8
\mem_d~2509\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2509_combout\ = (\Mux13~1_combout\ & ((\Mux11~1_combout\) # ((\mem_d~2503_combout\)))) # (!\Mux13~1_combout\ & (!\Mux11~1_combout\ & ((\mem_d~2508_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2503_combout\,
	datad => \mem_d~2508_combout\,
	combout => \mem_d~2509_combout\);

-- Location: LCCOMB_X24_Y13_N12
\mem_d~1655feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1655feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1655feeder_combout\);

-- Location: FF_X24_Y13_N13
\mem_d~1655\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1655feeder_combout\,
	ena => \mem_d~2605_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1655_q\);

-- Location: FF_X25_Y14_N5
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
	ena => \mem_d~2606_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1783_q\);

-- Location: LCCOMB_X25_Y14_N4
\mem_d~2493\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2493_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1783_q\))) # (!\Mux2~1_combout\ & (\mem_d~1655_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1655_q\,
	datac => \mem_d~1783_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2493_combout\);

-- Location: LCCOMB_X25_Y15_N0
\mem_d~1631feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1631feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux31~9_combout\,
	combout => \mem_d~1631feeder_combout\);

-- Location: FF_X25_Y15_N1
\mem_d~1631\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1631feeder_combout\,
	ena => \mem_d~2607_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1631_q\);

-- Location: FF_X24_Y11_N27
\mem_d~1759\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2608_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1759_q\);

-- Location: LCCOMB_X24_Y11_N26
\mem_d~2494\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2494_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1759_q\))) # (!\Mux2~1_combout\ & (\mem_d~1631_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \mem_d~1631_q\,
	datac => \mem_d~1759_q\,
	datad => \Mux2~1_combout\,
	combout => \mem_d~2494_combout\);

-- Location: LCCOMB_X26_Y15_N28
\mem_d~1623feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~1623feeder_combout\ = \Mux31~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux31~9_combout\,
	combout => \mem_d~1623feeder_combout\);

-- Location: FF_X26_Y15_N29
\mem_d~1623\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem_d~1623feeder_combout\,
	ena => \mem_d~2609_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1623_q\);

-- Location: FF_X26_Y17_N23
\mem_d~1751\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux31~9_combout\,
	sload => VCC,
	ena => \mem_d~2610_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_d~1751_q\);

-- Location: LCCOMB_X26_Y17_N22
\mem_d~2495\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2495_combout\ = (!\Mux1~1_combout\ & ((\Mux2~1_combout\ & ((\mem_d~1751_q\))) # (!\Mux2~1_combout\ & (\mem_d~1623_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \mem_d~1623_q\,
	datac => \mem_d~1751_q\,
	datad => \Mux1~1_combout\,
	combout => \mem_d~2495_combout\);

-- Location: LCCOMB_X22_Y11_N12
\mem_d~2496\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2496_combout\ = (\Mux14~1_combout\ & ((\Mux12~1_combout\) # ((\mem_d~2494_combout\)))) # (!\Mux14~1_combout\ & (!\Mux12~1_combout\ & ((\mem_d~2495_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2494_combout\,
	datad => \mem_d~2495_combout\,
	combout => \mem_d~2496_combout\);

-- Location: LCCOMB_X22_Y11_N2
\mem_d~2498\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2498_combout\ = (\Mux12~1_combout\ & ((\mem_d~2496_combout\ & (\mem_d~2497_combout\)) # (!\mem_d~2496_combout\ & ((\mem_d~2493_combout\))))) # (!\Mux12~1_combout\ & (((\mem_d~2496_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2497_combout\,
	datab => \Mux12~1_combout\,
	datac => \mem_d~2493_combout\,
	datad => \mem_d~2496_combout\,
	combout => \mem_d~2498_combout\);

-- Location: LCCOMB_X19_Y12_N26
\mem_d~2515\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mem_d~2515_combout\ = (\Mux11~1_combout\ & ((\mem_d~2509_combout\ & (\mem_d~2514_combout\)) # (!\mem_d~2509_combout\ & ((\mem_d~2498_combout\))))) # (!\Mux11~1_combout\ & (((\mem_d~2509_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2514_combout\,
	datab => \Mux11~1_combout\,
	datac => \mem_d~2509_combout\,
	datad => \mem_d~2498_combout\,
	combout => \mem_d~2515_combout\);

-- Location: LCCOMB_X18_Y14_N6
\Mux40~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~11_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\mem_d~2515_combout\))) # (!\Mux0~0_combout\ & (\Mux40~8_combout\)))) # (!\Mux167~0_combout\ & (((\mem_d~2515_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux40~8_combout\,
	datad => \mem_d~2515_combout\,
	combout => \Mux40~11_combout\);

-- Location: LCCOMB_X22_Y16_N20
\Mux40~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~9_combout\ = (\Mux169~1_combout\ & (!\Mux168~1_combout\ & ((!\Mult0|auto_generated|mac_out2~DATAOUT6\)))) # (!\Mux169~1_combout\ & (\Mux168~1_combout\ & (!\Mux40~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Mux40~11_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	combout => \Mux40~9_combout\);

-- Location: LCCOMB_X22_Y16_N28
\Mux40~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux40~10_combout\ = (\Mux1~1_combout\ & (((\Mux40~4_combout\)))) # (!\Mux1~1_combout\ & (\Mux40~2_combout\ & ((!\Mux40~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux40~2_combout\,
	datac => \Mux40~4_combout\,
	datad => \Mux40~9_combout\,
	combout => \Mux40~10_combout\);

-- Location: FF_X21_Y14_N1
\regs[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[13][5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[13][6]~q\);

-- Location: LCCOMB_X24_Y16_N20
\Mux16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux14~1_combout\ & (((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & ((\Mux13~1_combout\ & (\regs[14][6]~q\)) # (!\Mux13~1_combout\ & ((\regs[12][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[14][6]~q\,
	datab => \regs[12][6]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X24_Y16_N6
\Mux16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\Mux14~1_combout\ & ((\Mux16~7_combout\ & (\regs[15][6]~q\)) # (!\Mux16~7_combout\ & ((\regs[13][6]~q\))))) # (!\Mux14~1_combout\ & (((\Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[15][6]~q\,
	datab => \regs[13][6]~q\,
	datac => \Mux14~1_combout\,
	datad => \Mux16~7_combout\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X23_Y14_N10
\regs[11][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \regs[11][6]~feeder_combout\ = \Mux40~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux40~10_combout\,
	combout => \regs[11][6]~feeder_combout\);

-- Location: FF_X23_Y14_N11
\regs[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \regs[11][6]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \regs[11][2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[11][6]~q\);

-- Location: FF_X22_Y14_N31
\regs[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[10][1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[10][6]~q\);

-- Location: LCCOMB_X22_Y14_N6
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux13~1_combout\ & (((\Mux14~1_combout\)))) # (!\Mux13~1_combout\ & ((\Mux14~1_combout\ & (\regs[9][6]~q\)) # (!\Mux14~1_combout\ & ((\regs[8][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[9][6]~q\,
	datab => \regs[8][6]~q\,
	datac => \Mux13~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X22_Y14_N30
\Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux13~1_combout\ & ((\Mux16~0_combout\ & (\regs[11][6]~q\)) # (!\Mux16~0_combout\ & ((\regs[10][6]~q\))))) # (!\Mux13~1_combout\ & (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \regs[11][6]~q\,
	datac => \regs[10][6]~q\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X19_Y16_N0
\Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux14~1_combout\ & ((\regs[1][6]~q\) # ((\Mux13~1_combout\)))) # (!\Mux14~1_combout\ & (((\regs[0][6]~q\ & !\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[1][6]~q\,
	datab => \Mux14~1_combout\,
	datac => \regs[0][6]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X19_Y16_N14
\Mux16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~4_combout\ & (((\regs[3][6]~q\) # (!\Mux13~1_combout\)))) # (!\Mux16~4_combout\ & (\regs[2][6]~q\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs[2][6]~q\,
	datab => \Mux16~4_combout\,
	datac => \regs[3][6]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux16~5_combout\);

-- Location: FF_X18_Y16_N5
\regs[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux40~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[7][3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[7][6]~q\);

-- Location: LCCOMB_X18_Y16_N4
\Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux16~2_combout\ & (((\regs[7][6]~q\) # (!\Mux13~1_combout\)))) # (!\Mux16~2_combout\ & (\regs[6][6]~q\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \regs[6][6]~q\,
	datac => \regs[7][6]~q\,
	datad => \Mux13~1_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X19_Y16_N20
\Mux16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux11~1_combout\ & (((\Mux12~1_combout\)))) # (!\Mux11~1_combout\ & ((\Mux12~1_combout\ & ((\Mux16~3_combout\))) # (!\Mux12~1_combout\ & (\Mux16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux16~5_combout\,
	datac => \Mux16~3_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X19_Y16_N2
\Mux16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\Mux11~1_combout\ & ((\Mux16~6_combout\ & (\Mux16~8_combout\)) # (!\Mux16~6_combout\ & ((\Mux16~1_combout\))))) # (!\Mux11~1_combout\ & (((\Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux16~8_combout\,
	datac => \Mux16~1_combout\,
	datad => \Mux16~6_combout\,
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X19_Y17_N8
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Mux4~7_combout\ & (\Mux16~9_combout\ & (\Mux3~6_combout\ $ (!\Mux15~9_combout\)))) # (!\Mux4~7_combout\ & (!\Mux16~9_combout\ & (\Mux3~6_combout\ $ (!\Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => \Mux16~9_combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux15~9_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X19_Y18_N30
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Mux20~9_combout\ & (\Mux8~6_combout\ & (\Mux7~6_combout\ $ (!\Mux19~9_combout\)))) # (!\Mux20~9_combout\ & (!\Mux8~6_combout\ & (\Mux7~6_combout\ $ (!\Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~9_combout\,
	datab => \Mux7~6_combout\,
	datac => \Mux19~9_combout\,
	datad => \Mux8~6_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X19_Y17_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Mux17~9_combout\ & (\Mux5~6_combout\ & (\Mux6~6_combout\ $ (!\Mux18~9_combout\)))) # (!\Mux17~9_combout\ & (!\Mux5~6_combout\ & (\Mux6~6_combout\ $ (!\Mux18~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~9_combout\,
	datab => \Mux6~6_combout\,
	datac => \Mux18~9_combout\,
	datad => \Mux5~6_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X19_Y17_N6
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X19_Y17_N0
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\Mux14~1_combout\) # ((\Add4~31_combout\) # (\Mux169~1_combout\ $ (\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux169~1_combout\,
	datac => \Add4~31_combout\,
	datad => \Equal0~4_combout\,
	combout => \Add4~12_combout\);

-- Location: LCCOMB_X19_Y17_N14
\Add4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~13_combout\ = (PC(0) & (\Add4~12_combout\ $ (VCC))) # (!PC(0) & (\Add4~12_combout\ & VCC))
-- \Add4~14\ = CARRY((PC(0) & \Add4~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => \Add4~12_combout\,
	datad => VCC,
	combout => \Add4~13_combout\,
	cout => \Add4~14\);

-- Location: LCCOMB_X19_Y17_N16
\Add4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~15_combout\ = (\Add4~29_combout\ & ((PC(1) & (\Add4~14\ & VCC)) # (!PC(1) & (!\Add4~14\)))) # (!\Add4~29_combout\ & ((PC(1) & (!\Add4~14\)) # (!PC(1) & ((\Add4~14\) # (GND)))))
-- \Add4~16\ = CARRY((\Add4~29_combout\ & (!PC(1) & !\Add4~14\)) # (!\Add4~29_combout\ & ((!\Add4~14\) # (!PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~29_combout\,
	datab => PC(1),
	datad => VCC,
	cin => \Add4~14\,
	combout => \Add4~15_combout\,
	cout => \Add4~16\);

-- Location: LCCOMB_X19_Y17_N12
\PC~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~17_combout\ = (\PC[7]~12_combout\ & (((\Add4~15_combout\)))) # (!\PC[7]~12_combout\ & (((!\Mux13~0_combout\)) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \PC[7]~12_combout\,
	datad => \Add4~15_combout\,
	combout => \PC~17_combout\);

-- Location: FF_X19_Y17_N13
\PC[1]\ : dffeas
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
	q => PC(1));

-- Location: LCCOMB_X19_Y17_N18
\Add4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~17_combout\ = ((PC(2) $ (\Add4~30_combout\ $ (!\Add4~16\)))) # (GND)
-- \Add4~18\ = CARRY((PC(2) & ((\Add4~30_combout\) # (!\Add4~16\))) # (!PC(2) & (\Add4~30_combout\ & !\Add4~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(2),
	datab => \Add4~30_combout\,
	datad => VCC,
	cin => \Add4~16\,
	combout => \Add4~17_combout\,
	cout => \Add4~18\);

-- Location: LCCOMB_X22_Y17_N14
\PC~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~18_combout\ = (\PC[7]~12_combout\ & (((\Add4~17_combout\)))) # (!\PC[7]~12_combout\ & (((!\Mux12~0_combout\)) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux12~0_combout\,
	datac => \PC[7]~12_combout\,
	datad => \Add4~17_combout\,
	combout => \PC~18_combout\);

-- Location: FF_X22_Y17_N15
\PC[2]\ : dffeas
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
	q => PC(2));

-- Location: LCCOMB_X21_Y17_N12
\Mux168~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux168~0_combout\ = (PC(1) & (!PC(2) & ((!PC(0)) # (!PC(3))))) # (!PC(1) & (((!PC(3) & PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(1),
	datab => PC(2),
	datac => PC(3),
	datad => PC(0),
	combout => \Mux168~0_combout\);

-- Location: LCCOMB_X17_Y19_N24
\Mux168~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux168~1_combout\ = (\Mux167~0_combout\ & \Mux168~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux167~0_combout\,
	datad => \Mux168~0_combout\,
	combout => \Mux168~1_combout\);

-- Location: LCCOMB_X18_Y18_N28
\PC[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC[7]~12_combout\ = (\Mux169~1_combout\) # (((\Equal0~4_combout\) # (!\mem_d~2255_combout\)) # (!\Mux168~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux169~1_combout\,
	datab => \Mux168~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \mem_d~2255_combout\,
	combout => \PC[7]~12_combout\);

-- Location: LCCOMB_X22_Y17_N20
\PC~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~16_combout\ = (\PC[7]~12_combout\ & (((\Add4~13_combout\)))) # (!\PC[7]~12_combout\ & (((!\Mux14~0_combout\)) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \PC[7]~12_combout\,
	datac => \Mux14~0_combout\,
	datad => \Add4~13_combout\,
	combout => \PC~16_combout\);

-- Location: FF_X22_Y17_N21
\PC[0]\ : dffeas
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
	q => PC(0));

-- Location: LCCOMB_X22_Y17_N16
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (PC(3) & (((!PC(2) & !PC(1))))) # (!PC(3) & ((PC(0)) # ((PC(2)) # (PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(3),
	datab => PC(0),
	datac => PC(2),
	datad => PC(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X19_Y17_N10
\desvio~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \desvio~0_combout\ = (\mem_d~2255_combout\ & ((\Mux169~1_combout\ & (\Mux168~1_combout\ & \Equal0~4_combout\)) # (!\Mux169~1_combout\ & ((!\Equal0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_d~2255_combout\,
	datab => \Mux169~1_combout\,
	datac => \Mux168~1_combout\,
	datad => \Equal0~4_combout\,
	combout => \desvio~0_combout\);

-- Location: LCCOMB_X19_Y17_N4
\Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = (\desvio~0_combout\ & ((!\Mux12~0_combout\) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux12~0_combout\,
	datad => \desvio~0_combout\,
	combout => \Add4~30_combout\);

-- Location: LCCOMB_X22_Y17_N12
\PC~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~13_combout\ = (\PC[7]~12_combout\ & (\Add4~19_combout\)) # (!\PC[7]~12_combout\ & ((\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[7]~12_combout\,
	datac => \Add4~19_combout\,
	datad => \Mux11~1_combout\,
	combout => \PC~13_combout\);

-- Location: FF_X22_Y17_N13
\PC[3]\ : dffeas
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
	q => PC(3));

-- Location: LCCOMB_X21_Y17_N4
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (PC(0) & (((!PC(2) & !PC(1))) # (!PC(3)))) # (!PC(0) & (PC(2) $ (((PC(3)) # (PC(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(3),
	datac => PC(2),
	datad => PC(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X22_Y17_N28
\PC~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PC~19_combout\ = (\PC[7]~12_combout\ & (((\Add4~21_combout\)))) # (!\PC[7]~12_combout\ & (((!\Mux2~0_combout\)) # (!\Mux167~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux2~0_combout\,
	datac => \PC[7]~12_combout\,
	datad => \Add4~21_combout\,
	combout => \PC~19_combout\);

-- Location: FF_X22_Y17_N29
\PC[4]\ : dffeas
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
	q => PC(4));

-- Location: LCCOMB_X22_Y17_N4
\Mux167~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux167~0_combout\ = (!PC(7) & (!PC(4) & (!PC(6) & !PC(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => PC(4),
	datac => PC(6),
	datad => PC(5),
	combout => \Mux167~0_combout\);

-- Location: LCCOMB_X21_Y17_N16
\Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux2~1_combout\ & (((\regs[1][0]~q\) # (\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (\regs[0][0]~q\ & ((!\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[0][0]~q\,
	datac => \regs[1][0]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X23_Y17_N2
\Mux10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux1~1_combout\ & ((\Mux10~4_combout\ & ((\regs[3][0]~q\))) # (!\Mux10~4_combout\ & (\regs[2][0]~q\)))) # (!\Mux1~1_combout\ & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \regs[2][0]~q\,
	datac => \regs[3][0]~q\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: FF_X23_Y15_N27
\regs[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Mux46~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \regs[15][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs[15][0]~q\);

-- Location: LCCOMB_X21_Y15_N12
\Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux2~1_combout\ & ((\regs[13][0]~q\) # ((\Mux1~1_combout\)))) # (!\Mux2~1_combout\ & (((\regs[12][0]~q\ & !\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \regs[13][0]~q\,
	datac => \regs[12][0]~q\,
	datad => \Mux1~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X23_Y15_N26
\Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux1~1_combout\ & ((\Mux10~2_combout\ & ((\regs[15][0]~q\))) # (!\Mux10~2_combout\ & (\regs[14][0]~q\)))) # (!\Mux1~1_combout\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \regs[14][0]~q\,
	datac => \regs[15][0]~q\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X22_Y18_N22
\Mux10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux167~0_combout\ & ((\Mux0~0_combout\ & ((\Mux10~3_combout\))) # (!\Mux0~0_combout\ & (\Mux10~5_combout\)))) # (!\Mux167~0_combout\ & (((\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux167~0_combout\,
	datab => \Mux0~0_combout\,
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


