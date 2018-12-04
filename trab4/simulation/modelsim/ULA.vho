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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/09/2018 19:47:37"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	opcode : IN std_logic_vector(3 DOWNTO 0);
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	Z : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic;
	ovfl : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- Z[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[2]	=>  Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[3]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[4]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[5]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[6]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[7]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[8]	=>  Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[9]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[10]	=>  Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[11]	=>  Location: PIN_AJ3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[12]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[13]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[14]	=>  Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[15]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[16]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[17]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[18]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[19]	=>  Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[20]	=>  Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[21]	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[22]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[23]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[24]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[25]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[26]	=>  Location: PIN_AH5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[27]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[28]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[29]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[30]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z[31]	=>  Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- zero	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovfl	=>  Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_ovfl : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftRight1~6_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \Mux32~6_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \Mux31~7_combout\ : std_logic;
SIGNAL \Mux31~8_combout\ : std_logic;
SIGNAL \Mux31~9_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \ShiftRight1~44_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \ShiftRight1~46_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \ShiftRight1~54_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \ShiftRight1~56_combout\ : std_logic;
SIGNAL \ShiftRight0~80_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ShiftRight0~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ShiftLeft0~79_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ShiftLeft0~87_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~90_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ShiftLeft0~95_combout\ : std_logic;
SIGNAL \ShiftLeft0~96_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~100_combout\ : std_logic;
SIGNAL \ShiftLeft0~102_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~103_combout\ : std_logic;
SIGNAL \ShiftLeft0~104_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux9~11_combout\ : std_logic;
SIGNAL \Mux9~12_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \ShiftLeft0~105_combout\ : std_logic;
SIGNAL \ShiftLeft0~106_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~107_combout\ : std_logic;
SIGNAL \ShiftLeft0~109_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~114_combout\ : std_logic;
SIGNAL \ShiftLeft0~115_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \tmp~1_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~116_combout\ : std_logic;
SIGNAL \ShiftLeft0~117_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \tmp~2_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \tmp~3_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~118_combout\ : std_logic;
SIGNAL \ShiftLeft0~119_combout\ : std_logic;
SIGNAL \ShiftLeft0~120_combout\ : std_logic;
SIGNAL \ShiftLeft0~121_combout\ : std_logic;
SIGNAL \ShiftLeft0~122_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~124_combout\ : std_logic;
SIGNAL \ShiftRight0~88_combout\ : std_logic;
SIGNAL \ShiftRight0~89_combout\ : std_logic;
SIGNAL \ShiftLeft0~125_combout\ : std_logic;
SIGNAL \Mux25~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~126_combout\ : std_logic;
SIGNAL \ShiftRight1~62_combout\ : std_logic;
SIGNAL \ShiftRight0~91_combout\ : std_logic;
SIGNAL \ShiftRight0~93_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux9~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~128_combout\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~129_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~8_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~19_cout\ : std_logic;
SIGNAL \LessThan1~21_cout\ : std_logic;
SIGNAL \LessThan1~23_cout\ : std_logic;
SIGNAL \LessThan1~25_cout\ : std_logic;
SIGNAL \LessThan1~27_cout\ : std_logic;
SIGNAL \LessThan1~29_cout\ : std_logic;
SIGNAL \LessThan1~31_cout\ : std_logic;
SIGNAL \LessThan1~33_cout\ : std_logic;
SIGNAL \LessThan1~35_cout\ : std_logic;
SIGNAL \LessThan1~37_cout\ : std_logic;
SIGNAL \LessThan1~39_cout\ : std_logic;
SIGNAL \LessThan1~41_cout\ : std_logic;
SIGNAL \LessThan1~43_cout\ : std_logic;
SIGNAL \LessThan1~45_cout\ : std_logic;
SIGNAL \LessThan1~47_cout\ : std_logic;
SIGNAL \LessThan1~49_cout\ : std_logic;
SIGNAL \LessThan1~51_cout\ : std_logic;
SIGNAL \LessThan1~53_cout\ : std_logic;
SIGNAL \LessThan1~55_cout\ : std_logic;
SIGNAL \LessThan1~57_cout\ : std_logic;
SIGNAL \LessThan1~59_cout\ : std_logic;
SIGNAL \LessThan1~61_cout\ : std_logic;
SIGNAL \LessThan1~62_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight1~7_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight1~8_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \Mux33~7_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~8_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \Mux33~6_combout\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \Mux32~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~8_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Mux31~10_combout\ : std_logic;
SIGNAL \Mux31~11_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \ShiftRight1~41_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \ShiftRight1~42_combout\ : std_logic;
SIGNAL \ShiftRight1~43_combout\ : std_logic;
SIGNAL \ShiftRight1~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \Mux30~14_combout\ : std_logic;
SIGNAL \Mux30~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \Mux30~16_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~17_combout\ : std_logic;
SIGNAL \ShiftRight1~10_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \ShiftRight1~9_combout\ : std_logic;
SIGNAL \Mux30~12_combout\ : std_logic;
SIGNAL \Mux30~13_combout\ : std_logic;
SIGNAL \Mux30~18_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~19_combout\ : std_logic;
SIGNAL \Mux30~20_combout\ : std_logic;
SIGNAL \Mux30~23_combout\ : std_logic;
SIGNAL \Mux29~12_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Mux29~14_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \ShiftRight1~45_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux29~13_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \ShiftRight1~47_combout\ : std_logic;
SIGNAL \ShiftRight1~48_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \ShiftRight1~11_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ShiftRight1~49_combout\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \ShiftRight1~50_combout\ : std_logic;
SIGNAL \ShiftRight1~51_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \ShiftRight1~53_combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \Mux30~11_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \ShiftRight0~78_combout\ : std_logic;
SIGNAL \ShiftRight1~55_combout\ : std_logic;
SIGNAL \Mux30~22_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Mux30~10_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \Mux25~8_combout\ : std_logic;
SIGNAL \Mux25~9_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \Mux24~9_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Mux23~8_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~9_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \ShiftRight1~60_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \ShiftRight1~52_combout\ : std_logic;
SIGNAL \ShiftRight0~83_combout\ : std_logic;
SIGNAL \ShiftRight0~84_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ShiftLeft0~127_combout\ : std_logic;
SIGNAL \ShiftRight0~85_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ShiftLeft0~80_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux16~11_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux30~21_combout\ : std_logic;
SIGNAL \ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Mux16~10_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux16~13_combout\ : std_logic;
SIGNAL \Mux16~14_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~12_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \ShiftRight0~90_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~97_combout\ : std_logic;
SIGNAL \ShiftLeft0~98_combout\ : std_logic;
SIGNAL \ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ShiftLeft0~99_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux9~13_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Mux9~14_combout\ : std_logic;
SIGNAL \Mux9~15_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~16_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux9~10_combout\ : std_logic;
SIGNAL \ShiftRight0~79_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \ShiftRight1~57_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~113_combout\ : std_logic;
SIGNAL \ShiftLeft0~101_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \ShiftRight1~58_combout\ : std_logic;
SIGNAL \ShiftRight0~81_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \ShiftRight0~82_combout\ : std_logic;
SIGNAL \ShiftRight1~63_combout\ : std_logic;
SIGNAL \Mux33~9_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ShiftLeft0~92_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ShiftLeft0~93_combout\ : std_logic;
SIGNAL \ShiftLeft0~108_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux5~12_combout\ : std_logic;
SIGNAL \Mux5~13_combout\ : std_logic;
SIGNAL \Mux5~14_combout\ : std_logic;
SIGNAL \Mux5~15_combout\ : std_logic;
SIGNAL \Mux5~16_combout\ : std_logic;
SIGNAL \ShiftRight1~59_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~123_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \ShiftRight0~92_combout\ : std_logic;
SIGNAL \ShiftRight0~87_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~14_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~111_combout\ : std_logic;
SIGNAL \ShiftLeft0~110_combout\ : std_logic;
SIGNAL \ShiftLeft0~112_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~11_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~12_combout\ : std_logic;
SIGNAL \Mux2~16_combout\ : std_logic;
SIGNAL \Mux2~13_combout\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ovfl$latch~combout\ : std_logic;
SIGNAL \opcode~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_opcode <= opcode;
ww_A <= A;
ww_B <= B;
Z <= ww_Z;
zero <= ww_zero;
ovfl <= ww_ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X33_Y3_N20
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\A~combout\(1) $ (\Add0~5_combout\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\A~combout\(1) & ((\Add0~5_combout\) # (!\Add0~4\))) # (!\A~combout\(1) & (\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X33_Y3_N22
\Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\A~combout\(2) & ((\Add0~8_combout\ & (\Add0~7\ & VCC)) # (!\Add0~8_combout\ & (!\Add0~7\)))) # (!\A~combout\(2) & ((\Add0~8_combout\ & (!\Add0~7\)) # (!\Add0~8_combout\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\A~combout\(2) & (!\Add0~8_combout\ & !\Add0~7\)) # (!\A~combout\(2) & ((!\Add0~7\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X33_Y3_N28
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Add0~17_combout\ $ (\A~combout\(5) $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\Add0~17_combout\ & ((\A~combout\(5)) # (!\Add0~16\))) # (!\Add0~17_combout\ & (\A~combout\(5) & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \A~combout\(5),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X33_Y3_N30
\Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\ & ((\A~combout\(6) & (\Add0~19\ & VCC)) # (!\A~combout\(6) & (!\Add0~19\)))) # (!\Add0~20_combout\ & ((\A~combout\(6) & (!\Add0~19\)) # (!\A~combout\(6) & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\Add0~20_combout\ & (!\A~combout\(6) & !\Add0~19\)) # (!\Add0~20_combout\ & ((!\Add0~19\) # (!\A~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \A~combout\(6),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X33_Y2_N2
\Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\A~combout\(8) & ((\Add0~26_combout\ & (\Add0~25\ & VCC)) # (!\Add0~26_combout\ & (!\Add0~25\)))) # (!\A~combout\(8) & ((\Add0~26_combout\ & (!\Add0~25\)) # (!\Add0~26_combout\ & ((\Add0~25\) # (GND)))))
-- \Add0~28\ = CARRY((\A~combout\(8) & (!\Add0~26_combout\ & !\Add0~25\)) # (!\A~combout\(8) & ((!\Add0~25\) # (!\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X33_Y2_N26
\Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\Add0~62_combout\ & ((\A~combout\(20) & (\Add0~61\ & VCC)) # (!\A~combout\(20) & (!\Add0~61\)))) # (!\Add0~62_combout\ & ((\A~combout\(20) & (!\Add0~61\)) # (!\A~combout\(20) & ((\Add0~61\) # (GND)))))
-- \Add0~64\ = CARRY((\Add0~62_combout\ & (!\A~combout\(20) & !\Add0~61\)) # (!\Add0~62_combout\ & ((!\Add0~61\) # (!\A~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~62_combout\,
	datab => \A~combout\(20),
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X33_Y2_N30
\Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\A~combout\(22) & ((\Add0~68_combout\ & (\Add0~67\ & VCC)) # (!\Add0~68_combout\ & (!\Add0~67\)))) # (!\A~combout\(22) & ((\Add0~68_combout\ & (!\Add0~67\)) # (!\Add0~68_combout\ & ((\Add0~67\) # (GND)))))
-- \Add0~70\ = CARRY((\A~combout\(22) & (!\Add0~68_combout\ & !\Add0~67\)) # (!\A~combout\(22) & ((!\Add0~67\) # (!\Add0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(22),
	datab => \Add0~68_combout\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X33_Y1_N2
\Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~74_combout\ & ((\A~combout\(24) & (\Add0~73\ & VCC)) # (!\A~combout\(24) & (!\Add0~73\)))) # (!\Add0~74_combout\ & ((\A~combout\(24) & (!\Add0~73\)) # (!\A~combout\(24) & ((\Add0~73\) # (GND)))))
-- \Add0~76\ = CARRY((\Add0~74_combout\ & (!\A~combout\(24) & !\Add0~73\)) # (!\Add0~74_combout\ & ((!\Add0~73\) # (!\A~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~74_combout\,
	datab => \A~combout\(24),
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X33_Y1_N4
\Add0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = ((\Add0~77_combout\ $ (\A~combout\(25) $ (!\Add0~76\)))) # (GND)
-- \Add0~79\ = CARRY((\Add0~77_combout\ & ((\A~combout\(25)) # (!\Add0~76\))) # (!\Add0~77_combout\ & (\A~combout\(25) & !\Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~77_combout\,
	datab => \A~combout\(25),
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X33_Y1_N6
\Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~80_combout\ & ((\A~combout\(26) & (\Add0~79\ & VCC)) # (!\A~combout\(26) & (!\Add0~79\)))) # (!\Add0~80_combout\ & ((\A~combout\(26) & (!\Add0~79\)) # (!\A~combout\(26) & ((\Add0~79\) # (GND)))))
-- \Add0~82\ = CARRY((\Add0~80_combout\ & (!\A~combout\(26) & !\Add0~79\)) # (!\Add0~80_combout\ & ((!\Add0~79\) # (!\A~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \A~combout\(26),
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X33_Y1_N8
\Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = ((\A~combout\(27) $ (\Add0~83_combout\ $ (!\Add0~82\)))) # (GND)
-- \Add0~85\ = CARRY((\A~combout\(27) & ((\Add0~83_combout\) # (!\Add0~82\))) # (!\A~combout\(27) & (\Add0~83_combout\ & !\Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(27),
	datab => \Add0~83_combout\,
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X33_Y1_N10
\Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~86_combout\ & ((\A~combout\(28) & (\Add0~85\ & VCC)) # (!\A~combout\(28) & (!\Add0~85\)))) # (!\Add0~86_combout\ & ((\A~combout\(28) & (!\Add0~85\)) # (!\A~combout\(28) & ((\Add0~85\) # (GND)))))
-- \Add0~88\ = CARRY((\Add0~86_combout\ & (!\A~combout\(28) & !\Add0~85\)) # (!\Add0~86_combout\ & ((!\Add0~85\) # (!\A~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~86_combout\,
	datab => \A~combout\(28),
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

-- Location: LCCOMB_X33_Y1_N12
\Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = ((\A~combout\(29) $ (\Add0~89_combout\ $ (!\Add0~88\)))) # (GND)
-- \Add0~91\ = CARRY((\A~combout\(29) & ((\Add0~89_combout\) # (!\Add0~88\))) # (!\A~combout\(29) & (\Add0~89_combout\ & !\Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datab => \Add0~89_combout\,
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X33_Y1_N14
\Add0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~92_combout\ & ((\A~combout\(30) & (\Add0~91\ & VCC)) # (!\A~combout\(30) & (!\Add0~91\)))) # (!\Add0~92_combout\ & ((\A~combout\(30) & (!\Add0~91\)) # (!\A~combout\(30) & ((\Add0~91\) # (GND)))))
-- \Add0~94\ = CARRY((\Add0~92_combout\ & (!\A~combout\(30) & !\Add0~91\)) # (!\Add0~92_combout\ & ((!\Add0~91\) # (!\A~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~92_combout\,
	datab => \A~combout\(30),
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~93_combout\,
	cout => \Add0~94\);

-- Location: LCCOMB_X33_Y1_N16
\Add0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = \Add0~95_combout\ $ (\Add0~94\ $ (\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~95_combout\,
	datad => \A~combout\(31),
	cin => \Add0~94\,
	combout => \Add0~96_combout\);

-- Location: LCCOMB_X32_Y2_N10
\ShiftLeft0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\A~combout\(10)) # ((\A~combout\(11)) # ((\A~combout\(9)) # (\A~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \A~combout\(11),
	datac => \A~combout\(9),
	datad => \A~combout\(12),
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X36_Y6_N26
\ShiftRight1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~6_combout\ = (\A~combout\(0) & (\B~combout\(3))) # (!\A~combout\(0) & ((\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datac => \B~combout\(2),
	datad => \A~combout\(0),
	combout => \ShiftRight1~6_combout\);

-- Location: LCCOMB_X34_Y5_N8
\ShiftRight0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\A~combout\(2) & ((\ShiftRight0~20_combout\))) # (!\A~combout\(2) & (\ShiftRight0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~23_combout\,
	datac => \A~combout\(2),
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X32_Y4_N12
\ShiftRight0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (!\A~combout\(1) & ((\A~combout\(0) & (\B~combout\(29))) # (!\A~combout\(0) & ((\B~combout\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(29),
	datac => \B~combout\(28),
	datad => \A~combout\(0),
	combout => \ShiftRight0~26_combout\);

-- Location: LCCOMB_X30_Y6_N0
\ShiftRight0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\A~combout\(1) & (\B~combout\(23))) # (!\A~combout\(1) & ((\B~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(1),
	datac => \B~combout\(21),
	combout => \ShiftRight0~28_combout\);

-- Location: LCCOMB_X32_Y5_N6
\ShiftRight0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (\A~combout\(1) & ((\B~combout\(18)))) # (!\A~combout\(1) & (\B~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datac => \A~combout\(1),
	datad => \B~combout\(18),
	combout => \ShiftRight0~34_combout\);

-- Location: LCCOMB_X30_Y5_N14
\ShiftRight0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (\A~combout\(0) & (\ShiftRight0~36_combout\)) # (!\A~combout\(0) & ((\ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~36_combout\,
	datac => \ShiftRight0~37_combout\,
	datad => \A~combout\(0),
	combout => \ShiftRight0~38_combout\);

-- Location: LCCOMB_X36_Y4_N20
\Mux33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\opcode~combout\(1) & (\opcode~combout\(0))) # (!\opcode~combout\(1) & ((\opcode~combout\(0) & ((\B~combout\(0)) # (\A~combout\(0)))) # (!\opcode~combout\(0) & (\B~combout\(0) & \A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \B~combout\(0),
	datad => \A~combout\(0),
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X36_Y6_N4
\ShiftRight0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (!\A~combout\(1) & ((\A~combout\(0) & (\B~combout\(2))) # (!\A~combout\(0) & ((\B~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \A~combout\(0),
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X36_Y6_N28
\ShiftRight0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (!\A~combout\(2) & ((\ShiftRight0~43_combout\) # ((\A~combout\(1) & \ShiftRight1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datab => \A~combout\(1),
	datac => \A~combout\(2),
	datad => \ShiftRight1~9_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X34_Y7_N6
\ShiftRight0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\A~combout\(1) & ((\A~combout\(0) & ((\B~combout\(8)))) # (!\A~combout\(0) & (\B~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(0),
	datac => \B~combout\(8),
	datad => \A~combout\(1),
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X34_Y7_N10
\ShiftRight0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\ShiftRight0~45_combout\) # ((\ShiftRight1~10_combout\ & !\A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~45_combout\,
	datab => \ShiftRight1~10_combout\,
	datad => \A~combout\(1),
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X35_Y6_N22
\ShiftRight0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (\ShiftRight0~42_combout\ & ((\ShiftRight0~44_combout\) # ((\A~combout\(2) & \ShiftRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~46_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \ShiftRight0~44_combout\,
	combout => \ShiftRight0~47_combout\);

-- Location: LCCOMB_X35_Y6_N12
\ShiftRight0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\ShiftRight0~47_combout\) # ((\ShiftRight0~50_combout\ & (\A~combout\(3) & !\A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~50_combout\,
	datab => \A~combout\(3),
	datac => \A~combout\(4),
	datad => \ShiftRight0~47_combout\,
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X32_Y6_N12
\ShiftRight0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\A~combout\(1) & (!\A~combout\(0) & (\B~combout\(31)))) # (!\A~combout\(1) & (((\ShiftRight1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(31),
	datac => \A~combout\(1),
	datad => \ShiftRight1~13_combout\,
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X36_Y3_N16
\ShiftRight0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (!\ShiftLeft0~22_combout\ & ((\ShiftRight0~51_combout\) # ((\ShiftRight0~58_combout\ & \A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~58_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \A~combout\(4),
	datad => \ShiftRight0~51_combout\,
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X36_Y3_N12
\Mux32~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~6_combout\ = (!\ShiftLeft0~16_combout\ & (!\ShiftLeft0~19_combout\ & (\A~combout\(4) & \Mux33~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datab => \ShiftLeft0~19_combout\,
	datac => \A~combout\(4),
	datad => \Mux33~6_combout\,
	combout => \Mux32~6_combout\);

-- Location: LCCOMB_X34_Y7_N24
\ShiftRight1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (!\A~combout\(0) & ((\A~combout\(1) & ((\B~combout\(8)))) # (!\A~combout\(1) & (\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \A~combout\(0),
	datac => \B~combout\(8),
	datad => \A~combout\(1),
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X34_Y7_N12
\ShiftRight1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\ShiftRight1~20_combout\) # ((\A~combout\(0) & \ShiftRight1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~20_combout\,
	datac => \A~combout\(0),
	datad => \ShiftRight1~21_combout\,
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X35_Y6_N14
\Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\ShiftRight0~32_combout\ & (\ShiftRight1~6_combout\ & ((!\Mux30~4_combout\)))) # (!\ShiftRight0~32_combout\ & (((\ShiftRight1~22_combout\) # (\Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~6_combout\,
	datab => \ShiftRight1~22_combout\,
	datac => \ShiftRight0~32_combout\,
	datad => \Mux30~4_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X36_Y6_N14
\Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux31~2_combout\ & (((\ShiftRight0~61_combout\)) # (!\Mux30~4_combout\))) # (!\Mux31~2_combout\ & (\Mux30~4_combout\ & ((\ShiftRight1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \Mux30~4_combout\,
	datac => \ShiftRight0~61_combout\,
	datad => \ShiftRight1~7_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X30_Y6_N14
\ShiftRight1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\A~combout\(1) & ((\B~combout\(25)))) # (!\A~combout\(1) & (\B~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(1),
	datac => \B~combout\(25),
	combout => \ShiftRight1~31_combout\);

-- Location: LCCOMB_X31_Y4_N18
\ShiftRight1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = (\A~combout\(3) & ((\ShiftRight1~30_combout\))) # (!\A~combout\(3) & (\Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \ShiftRight1~30_combout\,
	datad => \A~combout\(3),
	combout => \ShiftRight1~35_combout\);

-- Location: LCCOMB_X31_Y4_N16
\ShiftRight0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\ShiftRight1~29_combout\ & ((\ShiftRight0~39_combout\) # ((\ShiftRight1~32_combout\ & \Mux9~2_combout\)))) # (!\ShiftRight1~29_combout\ & (((\ShiftRight1~32_combout\ & \Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datab => \ShiftRight0~39_combout\,
	datac => \ShiftRight1~32_combout\,
	datad => \Mux9~2_combout\,
	combout => \ShiftRight0~62_combout\);

-- Location: LCCOMB_X31_Y4_N22
\ShiftRight0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (!\A~combout\(1) & ((\A~combout\(0) & ((\B~combout\(31)))) # (!\A~combout\(0) & (\B~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(30),
	datac => \B~combout\(31),
	datad => \A~combout\(1),
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X31_Y4_N8
\ShiftRight0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (\A~combout\(2) & (\A~combout\(3) & \ShiftRight0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \ShiftRight0~63_combout\,
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X31_Y4_N2
\ShiftRight0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\ShiftRight0~64_combout\) # ((\ShiftRight0~62_combout\) # ((\ShiftRight1~34_combout\ & \ShiftRight0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~34_combout\,
	datab => \ShiftRight0~64_combout\,
	datac => \ShiftRight0~62_combout\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X35_Y3_N28
\Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(2) $ (\B~combout\(2))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(2) & !\B~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \opcode~combout\(0),
	datac => \B~combout\(2),
	datad => \opcode~combout\(1),
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X36_Y7_N10
\ShiftLeft0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (!\A~combout\(0) & ((\A~combout\(1) & (\B~combout\(0))) # (!\A~combout\(1) & ((\B~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(1),
	datac => \B~combout\(2),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~25_combout\);

-- Location: LCCOMB_X36_Y7_N24
\ShiftLeft0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (\B~combout\(1) & \A~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(1),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~26_combout\);

-- Location: LCCOMB_X35_Y3_N30
\Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = ((\ShiftRight0~32_combout\ & (\ShiftRight0~12_combout\ & \ShiftLeft0~124_combout\))) # (!\Mux31~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \Mux31~4_combout\,
	datac => \ShiftRight0~12_combout\,
	datad => \ShiftLeft0~124_combout\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X35_Y3_N0
\Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux30~7_combout\ & (\Mux31~5_combout\ & ((\ShiftRight0~65_combout\) # (\Mux31~4_combout\)))) # (!\Mux30~7_combout\ & (((\Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~65_combout\,
	datab => \Mux31~5_combout\,
	datac => \Mux30~7_combout\,
	datad => \Mux31~4_combout\,
	combout => \Mux31~6_combout\);

-- Location: LCCOMB_X35_Y4_N4
\Mux31~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~7_combout\ = (\Mux30~22_combout\ & (((\Mux30~6_combout\) # (\ShiftRight1~35_combout\)))) # (!\Mux30~22_combout\ & (\Mux31~6_combout\ & (!\Mux30~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~22_combout\,
	datab => \Mux31~6_combout\,
	datac => \Mux30~6_combout\,
	datad => \ShiftRight1~35_combout\,
	combout => \Mux31~7_combout\);

-- Location: LCCOMB_X35_Y4_N26
\Mux31~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~8_combout\ = (\Mux31~7_combout\ & ((\B~combout\(31)) # ((!\Mux30~6_combout\)))) # (!\Mux31~7_combout\ & (((\Mux30~6_combout\ & \Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux31~7_combout\,
	datac => \Mux30~6_combout\,
	datad => \Mux31~3_combout\,
	combout => \Mux31~8_combout\);

-- Location: LCCOMB_X34_Y3_N18
\Mux31~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~9_combout\ = (\Mux30~10_combout\ & ((\Mux30~8_combout\ & ((\Mux31~8_combout\))) # (!\Mux30~8_combout\ & (\Add0~9_combout\)))) # (!\Mux30~10_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \Add0~9_combout\,
	datac => \Mux30~8_combout\,
	datad => \Mux31~8_combout\,
	combout => \Mux31~9_combout\);

-- Location: LCCOMB_X32_Y4_N10
\ShiftRight1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = (!\A~combout\(1) & ((\A~combout\(0) & ((\B~combout\(28)))) # (!\A~combout\(0) & (\B~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(27),
	datac => \B~combout\(28),
	datad => \A~combout\(0),
	combout => \ShiftRight1~40_combout\);

-- Location: LCCOMB_X33_Y3_N10
\Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \B~combout\(3) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(3),
	datad => \opcode~combout\(2),
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X31_Y5_N0
\ShiftRight0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (\ShiftRight0~38_combout\ & ((\Mux9~2_combout\) # ((\ShiftRight0~30_combout\ & \ShiftRight0~32_combout\)))) # (!\ShiftRight0~38_combout\ & (((\ShiftRight0~30_combout\ & \ShiftRight0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datab => \Mux9~2_combout\,
	datac => \ShiftRight0~30_combout\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X36_Y6_N8
\ShiftLeft0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (!\A~combout\(0) & (!\A~combout\(1) & (\A~combout\(2) & \B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \A~combout\(1),
	datac => \A~combout\(2),
	datad => \B~combout\(0),
	combout => \ShiftLeft0~30_combout\);

-- Location: LCCOMB_X36_Y6_N30
\ShiftLeft0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (\A~combout\(0) & ((\A~combout\(1) & ((\B~combout\(1)))) # (!\A~combout\(1) & (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~31_combout\);

-- Location: LCCOMB_X36_Y6_N20
\ShiftLeft0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (!\A~combout\(0) & ((\A~combout\(1) & ((\B~combout\(2)))) # (!\A~combout\(1) & (\B~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(1),
	datac => \B~combout\(2),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~32_combout\);

-- Location: LCCOMB_X36_Y6_N6
\ShiftLeft0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (\ShiftLeft0~30_combout\) # ((!\A~combout\(2) & ((\ShiftLeft0~32_combout\) # (\ShiftLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~32_combout\,
	datab => \ShiftLeft0~30_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~33_combout\);

-- Location: LCCOMB_X35_Y5_N16
\Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\ShiftRight0~12_combout\ & (!\A~combout\(3) & \ShiftLeft0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~12_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~33_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X38_Y4_N0
\Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\B~combout\(4) $ (\A~combout\(4))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\B~combout\(4) & !\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X34_Y5_N10
\Mux29~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux30~7_combout\ & ((\Mux29~4_combout\ & (\Mux29~3_combout\)) # (!\Mux29~4_combout\ & ((\ShiftRight0~88_combout\))))) # (!\Mux30~7_combout\ & (((\Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datab => \Mux30~7_combout\,
	datac => \ShiftRight0~88_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X31_Y5_N24
\ShiftRight1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~44_combout\ = (\A~combout\(2) & ((\A~combout\(3) & ((\B~combout\(31)))) # (!\A~combout\(3) & (\ShiftRight0~38_combout\)))) # (!\A~combout\(2) & (((\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datab => \A~combout\(2),
	datac => \B~combout\(31),
	datad => \A~combout\(3),
	combout => \ShiftRight1~44_combout\);

-- Location: LCCOMB_X31_Y6_N18
\ShiftRight0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (\Mux9~2_combout\ & ((\ShiftRight0~54_combout\) # ((\ShiftRight0~32_combout\ & \ShiftRight0~60_combout\)))) # (!\Mux9~2_combout\ & (((\ShiftRight0~32_combout\ & \ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \ShiftRight0~54_combout\,
	datac => \ShiftRight0~32_combout\,
	datad => \ShiftRight0~60_combout\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X36_Y6_N16
\ShiftLeft0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (!\A~combout\(1) & ((\A~combout\(0) & ((\B~combout\(0)))) # (!\A~combout\(0) & (\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \B~combout\(0),
	combout => \ShiftLeft0~34_combout\);

-- Location: LCCOMB_X36_Y7_N30
\ShiftLeft0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (\A~combout\(0) & ((\A~combout\(1) & (\B~combout\(2))) # (!\A~combout\(1) & ((\B~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(1),
	datac => \B~combout\(4),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~35_combout\);

-- Location: LCCOMB_X36_Y7_N28
\ShiftLeft0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (!\A~combout\(0) & ((\A~combout\(1) & (\B~combout\(3))) # (!\A~combout\(1) & ((\B~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \A~combout\(1),
	datac => \B~combout\(3),
	datad => \B~combout\(5),
	combout => \ShiftLeft0~36_combout\);

-- Location: LCCOMB_X36_Y5_N0
\ShiftLeft0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (\A~combout\(2) & (((\ShiftLeft0~34_combout\)))) # (!\A~combout\(2) & ((\ShiftLeft0~35_combout\) # ((\ShiftLeft0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~35_combout\,
	datab => \A~combout\(2),
	datac => \ShiftLeft0~34_combout\,
	datad => \ShiftLeft0~36_combout\,
	combout => \ShiftLeft0~37_combout\);

-- Location: LCCOMB_X36_Y5_N26
\Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\ShiftRight0~12_combout\ & (!\A~combout\(3) & \ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~37_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X38_Y4_N12
\Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(5) $ (\B~combout\(5))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(5) & !\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X34_Y5_N16
\Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux30~7_combout\ & ((\Mux28~2_combout\ & (\Mux28~1_combout\)) # (!\Mux28~2_combout\ & ((\ShiftRight0~89_combout\))))) # (!\Mux30~7_combout\ & (((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux30~7_combout\,
	datac => \ShiftRight0~89_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X34_Y4_N20
\ShiftRight1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~46_combout\ = (\A~combout\(2) & (\B~combout\(31))) # (!\A~combout\(2) & ((\A~combout\(1) & (\B~combout\(31))) # (!\A~combout\(1) & ((\ShiftRight1~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \A~combout\(2),
	datac => \ShiftRight1~13_combout\,
	datad => \A~combout\(1),
	combout => \ShiftRight1~46_combout\);

-- Location: LCCOMB_X33_Y3_N6
\Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \B~combout\(5) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(5),
	datad => \opcode~combout\(2),
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X31_Y4_N6
\ShiftRight0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (\ShiftRight0~32_combout\ & ((\ShiftRight1~32_combout\) # ((\ShiftRight0~39_combout\ & \ShiftRight0~63_combout\)))) # (!\ShiftRight0~32_combout\ & (\ShiftRight0~39_combout\ & ((\ShiftRight0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \ShiftRight0~39_combout\,
	datac => \ShiftRight1~32_combout\,
	datad => \ShiftRight0~63_combout\,
	combout => \ShiftRight0~73_combout\);

-- Location: LCCOMB_X36_Y7_N18
\ShiftLeft0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (\A~combout\(1) & (\B~combout\(3))) # (!\A~combout\(1) & ((\B~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \B~combout\(3),
	datad => \B~combout\(5),
	combout => \ShiftLeft0~38_combout\);

-- Location: LCCOMB_X36_Y7_N2
\ShiftLeft0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (!\A~combout\(2) & ((\A~combout\(0) & (\ShiftLeft0~38_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \ShiftLeft0~38_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~39_combout\,
	combout => \ShiftLeft0~40_combout\);

-- Location: LCCOMB_X36_Y7_N16
\ShiftLeft0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (\ShiftLeft0~40_combout\) # ((\ShiftLeft0~124_combout\ & \A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~124_combout\,
	datab => \ShiftLeft0~40_combout\,
	datac => \A~combout\(2),
	combout => \ShiftLeft0~41_combout\);

-- Location: LCCOMB_X33_Y7_N28
\Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (!\A~combout\(3) & (\ShiftLeft0~41_combout\ & \ShiftRight0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \ShiftLeft0~41_combout\,
	datad => \ShiftRight0~12_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X38_Y4_N26
\Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(6) $ (\B~combout\(6))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(6) & !\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \opcode~combout\(0),
	datac => \B~combout\(6),
	datad => \opcode~combout\(1),
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X34_Y5_N24
\Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux30~7_combout\ & ((\Mux27~2_combout\ & (\Mux27~1_combout\)) # (!\Mux27~2_combout\ & ((\ShiftRight0~90_combout\))))) # (!\Mux30~7_combout\ & (((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux30~7_combout\,
	datac => \ShiftRight0~90_combout\,
	datad => \Mux27~2_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X34_Y5_N30
\Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux29~2_combout\ & (\Mux29~6_combout\)) # (!\Mux29~2_combout\ & ((\Mux29~6_combout\ & (\Mux27~3_combout\)) # (!\Mux29~6_combout\ & ((\ShiftRight1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \Mux29~6_combout\,
	datac => \Mux27~3_combout\,
	datad => \ShiftRight1~22_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X33_Y5_N16
\Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux27~4_combout\ & (((\ShiftRight0~74_combout\) # (!\Mux29~2_combout\)))) # (!\Mux27~4_combout\ & (\ShiftRight1~26_combout\ & ((\Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~26_combout\,
	datab => \Mux27~4_combout\,
	datac => \ShiftRight0~74_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X33_Y3_N12
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \B~combout\(6) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(6),
	datad => \opcode~combout\(2),
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X33_Y4_N14
\Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Mux29~9_combout\ & (((\Mux29~14_combout\)))) # (!\Mux29~9_combout\ & ((\Mux29~14_combout\ & ((\Mux27~5_combout\))) # (!\Mux29~14_combout\ & (\Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Add0~21_combout\,
	datac => \Mux27~5_combout\,
	datad => \Mux29~14_combout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X32_Y6_N0
\ShiftRight0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (\ShiftRight1~39_combout\ & (!\ShiftRight0~32_combout\ & ((!\ShiftRight1~52_combout\) # (!\Mux9~2_combout\)))) # (!\ShiftRight1~39_combout\ & (((!\ShiftRight1~52_combout\) # (!\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~39_combout\,
	datab => \ShiftRight0~32_combout\,
	datac => \Mux9~2_combout\,
	datad => \ShiftRight1~52_combout\,
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X36_Y4_N24
\ShiftRight0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = ((!\ShiftLeft0~20_combout\ & (\A~combout\(3) & \B~combout\(31)))) # (!\ShiftRight0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~20_combout\,
	datab => \A~combout\(3),
	datac => \ShiftRight0~75_combout\,
	datad => \B~combout\(31),
	combout => \ShiftRight0~76_combout\);

-- Location: LCCOMB_X35_Y7_N28
\Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\ShiftRight0~12_combout\ & (!\A~combout\(3) & \ShiftLeft0~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~44_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X38_Y4_N24
\Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(7) & (\opcode~combout\(0) & !\A~combout\(7))) # (!\B~combout\(7) & (\opcode~combout\(0) $ (!\A~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \A~combout\(7),
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X35_Y7_N2
\Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux30~7_combout\ & ((\Mux26~2_combout\ & (\Mux26~1_combout\)) # (!\Mux26~2_combout\ & ((\ShiftRight0~76_combout\))))) # (!\Mux30~7_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~7_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux26~2_combout\,
	datad => \ShiftRight0~76_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X36_Y4_N6
\ShiftRight1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~54_combout\ = ((\B~combout\(31) & \A~combout\(3))) # (!\ShiftRight0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~75_combout\,
	datab => \B~combout\(31),
	datac => \A~combout\(3),
	combout => \ShiftRight1~54_combout\);

-- Location: LCCOMB_X35_Y2_N22
\Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \B~combout\(7) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(7),
	datad => \opcode~combout\(2),
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X34_Y6_N8
\ShiftLeft0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (\B~combout\(0) & (!\A~combout\(0) & (!\A~combout\(2) & !\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \A~combout\(0),
	datac => \A~combout\(2),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~45_combout\);

-- Location: LCCOMB_X35_Y6_N6
\ShiftLeft0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (\ShiftLeft0~125_combout\) # ((\Mux9~2_combout\ & ((\ShiftLeft0~32_combout\) # (\ShiftLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~125_combout\,
	datab => \ShiftLeft0~32_combout\,
	datac => \Mux9~2_combout\,
	datad => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~48_combout\);

-- Location: LCCOMB_X34_Y3_N22
\Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(8) $ (\B~combout\(8))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(8) & !\B~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \B~combout\(8),
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X34_Y3_N20
\Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux30~7_combout\ & ((\Mux25~3_combout\ & ((\Mux25~10_combout\))) # (!\Mux25~3_combout\ & (\ShiftRight0~78_combout\)))) # (!\Mux30~7_combout\ & (((\Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~78_combout\,
	datab => \Mux30~7_combout\,
	datac => \Mux25~10_combout\,
	datad => \Mux25~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X34_Y3_N10
\Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux30~22_combout\ & (((\Mux30~6_combout\)))) # (!\Mux30~22_combout\ & ((\Mux30~6_combout\ & (\ShiftRight0~24_combout\)) # (!\Mux30~6_combout\ & ((\Mux25~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~24_combout\,
	datab => \Mux30~22_combout\,
	datac => \Mux25~4_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X31_Y3_N2
\Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\A~combout\(9) $ (\B~combout\(9))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\A~combout\(9) & !\B~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(9),
	datab => \opcode~combout\(0),
	datac => \B~combout\(9),
	datad => \opcode~combout\(1),
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X32_Y3_N6
\Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux30~7_combout\ & ((\Mux24~1_combout\ & ((\ShiftRight0~12_combout\))) # (!\Mux24~1_combout\ & (\ShiftRight0~79_combout\)))) # (!\Mux30~7_combout\ & (((\Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~7_combout\,
	datab => \ShiftRight0~79_combout\,
	datac => \Mux24~1_combout\,
	datad => \ShiftRight0~12_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X34_Y7_N18
\ShiftLeft0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = (\A~combout\(1) & (\B~combout\(7))) # (!\A~combout\(1) & ((\B~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(1),
	datac => \B~combout\(9),
	combout => \ShiftLeft0~49_combout\);

-- Location: LCCOMB_X35_Y7_N6
\ShiftLeft0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = (\A~combout\(0) & ((\ShiftLeft0~46_combout\))) # (!\A~combout\(0) & (\ShiftLeft0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \ShiftLeft0~49_combout\,
	datac => \ShiftLeft0~46_combout\,
	combout => \ShiftLeft0~50_combout\);

-- Location: LCCOMB_X36_Y5_N12
\ShiftLeft0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = (\A~combout\(2) & (((\ShiftLeft0~36_combout\) # (\ShiftLeft0~35_combout\)))) # (!\A~combout\(2) & (\ShiftLeft0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~50_combout\,
	datab => \ShiftLeft0~36_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~35_combout\,
	combout => \ShiftLeft0~51_combout\);

-- Location: LCCOMB_X35_Y3_N24
\Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = ((\ShiftLeft0~126_combout\) # ((\ShiftLeft0~51_combout\ & !\A~combout\(3)))) # (!\Mux24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~51_combout\,
	datab => \A~combout\(3),
	datac => \Mux24~1_combout\,
	datad => \ShiftLeft0~126_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X32_Y6_N18
\ShiftRight1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~56_combout\ = (\A~combout\(3) & ((\B~combout\(31)))) # (!\A~combout\(3) & (\ShiftRight1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~18_combout\,
	datab => \A~combout\(3),
	datac => \B~combout\(31),
	combout => \ShiftRight1~56_combout\);

-- Location: LCCOMB_X31_Y4_N20
\ShiftRight0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~80_combout\ = (\ShiftRight1~29_combout\ & ((\ShiftRight0~32_combout\) # ((\ShiftRight0~63_combout\ & \Mux9~2_combout\)))) # (!\ShiftRight1~29_combout\ & (\ShiftRight0~63_combout\ & ((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datab => \ShiftRight0~63_combout\,
	datac => \ShiftRight0~32_combout\,
	datad => \Mux9~2_combout\,
	combout => \ShiftRight0~80_combout\);

-- Location: LCCOMB_X33_Y4_N30
\Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(10) & (!\A~combout\(10) & \opcode~combout\(0))) # (!\B~combout\(10) & (\A~combout\(10) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \B~combout\(10),
	datac => \A~combout\(10),
	datad => \opcode~combout\(0),
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X36_Y7_N0
\ShiftLeft0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = (\ShiftRight0~39_combout\ & ((\ShiftLeft0~25_combout\) # ((\ShiftLeft0~26_combout\ & !\A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~26_combout\,
	datab => \A~combout\(1),
	datac => \ShiftRight0~39_combout\,
	datad => \ShiftLeft0~25_combout\,
	combout => \ShiftLeft0~52_combout\);

-- Location: LCCOMB_X36_Y7_N6
\ShiftLeft0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = (\A~combout\(2) & ((\A~combout\(0) & (\ShiftLeft0~38_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \ShiftLeft0~38_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~39_combout\,
	combout => \ShiftLeft0~53_combout\);

-- Location: LCCOMB_X34_Y7_N2
\ShiftLeft0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = (!\A~combout\(2) & ((\A~combout\(0) & ((\ShiftLeft0~49_combout\))) # (!\A~combout\(0) & (\ShiftLeft0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datab => \A~combout\(0),
	datac => \A~combout\(2),
	datad => \ShiftLeft0~49_combout\,
	combout => \ShiftLeft0~55_combout\);

-- Location: LCCOMB_X33_Y7_N22
\ShiftLeft0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = (\ShiftLeft0~52_combout\) # ((!\A~combout\(3) & ((\ShiftLeft0~53_combout\) # (\ShiftLeft0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~53_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~52_combout\,
	datad => \ShiftLeft0~55_combout\,
	combout => \ShiftLeft0~56_combout\);

-- Location: LCCOMB_X33_Y4_N12
\Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~2_combout\ & (((\ShiftRight0~12_combout\ & \ShiftLeft0~56_combout\)) # (!\Mux30~7_combout\))) # (!\Mux23~2_combout\ & (((\Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \Mux23~2_combout\,
	datac => \Mux30~7_combout\,
	datad => \ShiftLeft0~56_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X32_Y4_N16
\Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux23~3_combout\ & ((\ShiftRight0~80_combout\) # (\Mux23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~3_combout\,
	datac => \ShiftRight0~80_combout\,
	datad => \Mux23~2_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X32_Y2_N22
\Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\opcode~combout\(1) & (!\opcode~combout\(0))) # (!\opcode~combout\(1) & ((\opcode~combout\(0) & (\A~combout\(11) $ (\B~combout\(11)))) # (!\opcode~combout\(0) & (!\A~combout\(11) & !\B~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \A~combout\(11),
	datad => \B~combout\(11),
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X32_Y2_N20
\Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \B~combout\(11) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(11),
	datad => \opcode~combout\(2),
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X34_Y6_N14
\ShiftLeft0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = (\A~combout\(0) & ((\ShiftLeft0~58_combout\))) # (!\A~combout\(0) & (\ShiftLeft0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~61_combout\,
	datab => \ShiftLeft0~58_combout\,
	datac => \A~combout\(0),
	combout => \ShiftLeft0~62_combout\);

-- Location: LCCOMB_X35_Y5_N14
\ShiftLeft0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = (\A~combout\(2) & ((\ShiftLeft0~47_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \ShiftLeft0~62_combout\,
	datad => \ShiftLeft0~47_combout\,
	combout => \ShiftLeft0~63_combout\);

-- Location: LCCOMB_X35_Y5_N8
\Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\ShiftRight0~12_combout\ & ((\A~combout\(3) & ((\ShiftLeft0~33_combout\))) # (!\A~combout\(3) & (\ShiftLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftLeft0~63_combout\,
	datac => \ShiftRight0~12_combout\,
	datad => \ShiftLeft0~33_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X32_Y2_N0
\Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(12) & (!\A~combout\(12) & \opcode~combout\(0))) # (!\B~combout\(12) & (\A~combout\(12) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \A~combout\(12),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X35_Y3_N16
\Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~2_combout\ & (((\Mux21~1_combout\) # (!\Mux30~7_combout\)))) # (!\Mux21~2_combout\ & (\ShiftRight0~82_combout\ & (\Mux30~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \ShiftRight0~82_combout\,
	datac => \Mux30~7_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X32_Y2_N14
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \B~combout\(12) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(12),
	datad => \opcode~combout\(2),
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X36_Y5_N30
\ShiftLeft0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = (\A~combout\(2) & ((\ShiftLeft0~50_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~65_combout\,
	datab => \A~combout\(2),
	datac => \ShiftLeft0~50_combout\,
	combout => \ShiftLeft0~66_combout\);

-- Location: LCCOMB_X36_Y5_N28
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\ShiftRight0~12_combout\ & ((\A~combout\(3) & (\ShiftLeft0~37_combout\)) # (!\A~combout\(3) & ((\ShiftLeft0~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \ShiftLeft0~37_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~66_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X34_Y3_N30
\Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(13) & (!\B~combout\(13) & \opcode~combout\(0))) # (!\A~combout\(13) & (\B~combout\(13) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \B~combout\(13),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X35_Y3_N6
\Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux20~1_combout\ & ((\Mux20~0_combout\) # ((!\Mux30~7_combout\)))) # (!\Mux20~1_combout\ & (((\Mux30~7_combout\ & \ShiftRight0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux30~7_combout\,
	datad => \ShiftRight0~91_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X34_Y3_N8
\Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux30~22_combout\ & (((\ShiftRight1~59_combout\) # (\Mux30~6_combout\)))) # (!\Mux30~22_combout\ & (\Mux20~2_combout\ & ((!\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~2_combout\,
	datab => \Mux30~22_combout\,
	datac => \ShiftRight1~59_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X32_Y2_N30
\Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = \B~combout\(13) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(13),
	datad => \opcode~combout\(2),
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X34_Y7_N20
\ShiftLeft0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = (\A~combout\(2) & ((\A~combout\(0) & ((\ShiftLeft0~49_combout\))) # (!\A~combout\(0) & (\ShiftLeft0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datab => \A~combout\(0),
	datac => \A~combout\(2),
	datad => \ShiftLeft0~49_combout\,
	combout => \ShiftLeft0~67_combout\);

-- Location: LCCOMB_X34_Y6_N10
\ShiftLeft0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = (\A~combout\(1) & (\B~combout\(12))) # (!\A~combout\(1) & ((\B~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(12),
	datac => \B~combout\(14),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~68_combout\);

-- Location: LCCOMB_X34_Y6_N28
\ShiftLeft0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = (\A~combout\(0) & (\ShiftLeft0~64_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~64_combout\,
	datac => \A~combout\(0),
	datad => \ShiftLeft0~68_combout\,
	combout => \ShiftLeft0~69_combout\);

-- Location: LCCOMB_X33_Y7_N8
\ShiftLeft0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = (\ShiftLeft0~67_combout\) # ((\ShiftLeft0~69_combout\ & !\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~69_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~67_combout\,
	combout => \ShiftLeft0~70_combout\);

-- Location: LCCOMB_X33_Y7_N10
\Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\ShiftRight0~12_combout\ & ((\A~combout\(3) & (\ShiftLeft0~41_combout\)) # (!\A~combout\(3) & ((\ShiftLeft0~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~70_combout\,
	datad => \ShiftRight0~12_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X31_Y3_N14
\Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\opcode~combout\(0) & (!\opcode~combout\(1) & (\B~combout\(14) $ (\A~combout\(14))))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # ((!\B~combout\(14) & !\A~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datab => \opcode~combout\(0),
	datac => \A~combout\(14),
	datad => \opcode~combout\(1),
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X32_Y3_N20
\Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux19~1_combout\ & ((\Mux19~0_combout\) # ((!\Mux30~7_combout\)))) # (!\Mux19~1_combout\ & (((\ShiftRight0~92_combout\ & \Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux19~0_combout\,
	datac => \ShiftRight0~92_combout\,
	datad => \Mux30~7_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X32_Y5_N10
\ShiftLeft0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = (\A~combout\(1) & (\B~combout\(13))) # (!\A~combout\(1) & ((\B~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datac => \B~combout\(13),
	datad => \B~combout\(15),
	combout => \ShiftLeft0~71_combout\);

-- Location: LCCOMB_X34_Y6_N26
\ShiftLeft0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = (\A~combout\(0) & (\ShiftLeft0~68_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~68_combout\,
	datab => \A~combout\(0),
	datad => \ShiftLeft0~71_combout\,
	combout => \ShiftLeft0~72_combout\);

-- Location: LCCOMB_X34_Y6_N20
\ShiftLeft0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = (\A~combout\(2) & ((\ShiftLeft0~59_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~72_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~59_combout\,
	combout => \ShiftLeft0~73_combout\);

-- Location: LCCOMB_X36_Y2_N12
\ShiftRight0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~86_combout\ = (\ShiftRight0~84_combout\) # ((\B~combout\(31) & (!\ShiftLeft0~22_combout\ & \ShiftRight0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \ShiftLeft0~22_combout\,
	datac => \ShiftRight0~84_combout\,
	datad => \ShiftRight0~85_combout\,
	combout => \ShiftRight0~86_combout\);

-- Location: LCCOMB_X35_Y5_N30
\ShiftLeft0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = (\A~combout\(2) & ((\ShiftLeft0~62_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftLeft0~76_combout\,
	datac => \ShiftLeft0~62_combout\,
	combout => \ShiftLeft0~77_combout\);

-- Location: LCCOMB_X35_Y6_N24
\ShiftLeft0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~79_combout\ = (\ShiftRight0~53_combout\ & (!\A~combout\(4) & ((\ShiftLeft0~32_combout\) # (\ShiftLeft0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~53_combout\,
	datab => \ShiftLeft0~32_combout\,
	datac => \A~combout\(4),
	datad => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~79_combout\);

-- Location: LCCOMB_X38_Y3_N12
\Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\B~combout\(16) & ((\opcode~combout\(0)) # (\A~combout\(16)))) # (!\B~combout\(16) & (\opcode~combout\(0) & \A~combout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datac => \opcode~combout\(0),
	datad => \A~combout\(16),
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X33_Y7_N16
\ShiftLeft0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~84_combout\ = (\ShiftLeft0~55_combout\) # (\ShiftLeft0~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~55_combout\,
	datad => \ShiftLeft0~53_combout\,
	combout => \ShiftLeft0~84_combout\);

-- Location: LCCOMB_X32_Y5_N12
\ShiftLeft0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~85_combout\ = (\A~combout\(1) & (\B~combout\(16))) # (!\A~combout\(1) & ((\B~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datac => \A~combout\(1),
	datad => \B~combout\(18),
	combout => \ShiftLeft0~85_combout\);

-- Location: LCCOMB_X33_Y7_N14
\ShiftLeft0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~87_combout\ = (\A~combout\(2) & (\ShiftLeft0~69_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~69_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~86_combout\,
	combout => \ShiftLeft0~87_combout\);

-- Location: LCCOMB_X35_Y3_N20
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\ShiftRight0~32_combout\ & (\ShiftLeft0~124_combout\ & (!\ShiftLeft0~16_combout\ & !\ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \ShiftLeft0~124_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X35_Y7_N16
\Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux16~4_combout\ & (((\ShiftRight0~65_combout\ & \Mux16~2_combout\)))) # (!\Mux16~4_combout\ & ((\Mux15~0_combout\) # ((!\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux16~4_combout\,
	datac => \ShiftRight0~65_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X34_Y7_N14
\Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux15~1_combout\ & ((\ShiftLeft0~87_combout\) # ((\Mux30~21_combout\)))) # (!\Mux15~1_combout\ & (((\ShiftLeft0~84_combout\ & !\Mux30~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~87_combout\,
	datab => \ShiftLeft0~84_combout\,
	datac => \Mux15~1_combout\,
	datad => \Mux30~21_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X35_Y4_N8
\Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux16~7_combout\ & ((\Mux16~8_combout\ & ((\ShiftRight1~35_combout\))) # (!\Mux16~8_combout\ & (\Mux15~2_combout\)))) # (!\Mux16~7_combout\ & (((!\Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \Mux16~7_combout\,
	datac => \ShiftRight1~35_combout\,
	datad => \Mux16~8_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X34_Y2_N20
\Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux15~3_combout\ & (((!\A~combout\(18) & !\B~combout\(18))) # (!\Mux5~2_combout\))) # (!\Mux15~3_combout\ & (\Mux5~2_combout\ & (\A~combout\(18) $ (\B~combout\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \A~combout\(18),
	datac => \B~combout\(18),
	datad => \Mux5~2_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X34_Y2_N26
\Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = \opcode~combout\(2) $ (\B~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datad => \B~combout\(19),
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X33_Y5_N2
\ShiftLeft0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~89_combout\ = (\A~combout\(0) & (\ShiftLeft0~85_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~85_combout\,
	datac => \ShiftLeft0~88_combout\,
	datad => \A~combout\(0),
	combout => \ShiftLeft0~89_combout\);

-- Location: LCCOMB_X34_Y6_N2
\ShiftLeft0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~90_combout\ = (\A~combout\(2) & ((\ShiftLeft0~72_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~89_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~72_combout\,
	combout => \ShiftLeft0~90_combout\);

-- Location: LCCOMB_X33_Y6_N6
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\ShiftLeft0~16_combout\ & (\ShiftLeft0~29_combout\ & (\ShiftRight0~32_combout\ & !\ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datab => \ShiftLeft0~29_combout\,
	datac => \ShiftRight0~32_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X34_Y6_N4
\Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux16~4_combout\ & (\ShiftRight0~67_combout\ & ((\Mux16~2_combout\)))) # (!\Mux16~4_combout\ & (((\Mux14~0_combout\) # (!\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \Mux16~4_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X34_Y6_N18
\Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux30~21_combout\ & (((\Mux14~1_combout\)))) # (!\Mux30~21_combout\ & ((\Mux14~1_combout\ & ((\ShiftLeft0~90_combout\))) # (!\Mux14~1_combout\ & (\ShiftLeft0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~21_combout\,
	datab => \ShiftLeft0~60_combout\,
	datac => \Mux14~1_combout\,
	datad => \ShiftLeft0~90_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X35_Y4_N6
\Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux16~7_combout\ & ((\Mux16~8_combout\ & ((\ShiftRight1~61_combout\))) # (!\Mux16~8_combout\ & (\Mux14~2_combout\)))) # (!\Mux16~7_combout\ & (((!\Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux16~7_combout\,
	datac => \ShiftRight1~61_combout\,
	datad => \Mux16~8_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X34_Y2_N16
\Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux5~2_combout\ & ((\B~combout\(19) & (!\A~combout\(19) & !\Mux14~3_combout\)) # (!\B~combout\(19) & (\A~combout\(19) $ (\Mux14~3_combout\))))) # (!\Mux5~2_combout\ & (((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \B~combout\(19),
	datac => \A~combout\(19),
	datad => \Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X34_Y2_N2
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \B~combout\(20) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(20),
	datac => \opcode~combout\(2),
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X36_Y5_N6
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\ShiftLeft0~19_combout\ & (!\A~combout\(3) & (\ShiftLeft0~33_combout\ & !\ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~33_combout\,
	datad => \ShiftLeft0~16_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X35_Y5_N0
\Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux16~4_combout\ & (\ShiftRight0~88_combout\ & (\Mux16~2_combout\))) # (!\Mux16~4_combout\ & (((\Mux13~0_combout\) # (!\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \ShiftRight0~88_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X35_Y5_N18
\Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux30~21_combout\ & (((\Mux13~1_combout\)))) # (!\Mux30~21_combout\ & ((\Mux13~1_combout\ & (\ShiftLeft0~93_combout\)) # (!\Mux13~1_combout\ & ((\ShiftLeft0~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~21_combout\,
	datab => \ShiftLeft0~93_combout\,
	datac => \ShiftLeft0~63_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X30_Y6_N6
\ShiftLeft0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~94_combout\ = (\A~combout\(1) & (\B~combout\(19))) # (!\A~combout\(1) & ((\B~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(19),
	datac => \B~combout\(21),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~94_combout\);

-- Location: LCCOMB_X31_Y5_N12
\ShiftLeft0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~95_combout\ = (\A~combout\(0) & (\ShiftLeft0~91_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~91_combout\,
	datac => \ShiftLeft0~94_combout\,
	datad => \A~combout\(0),
	combout => \ShiftLeft0~95_combout\);

-- Location: LCCOMB_X35_Y5_N12
\ShiftLeft0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~96_combout\ = (\A~combout\(2) & (\ShiftLeft0~82_combout\)) # (!\A~combout\(2) & ((\ShiftLeft0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~82_combout\,
	datac => \ShiftLeft0~95_combout\,
	datad => \A~combout\(2),
	combout => \ShiftLeft0~96_combout\);

-- Location: LCCOMB_X36_Y5_N24
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\ShiftLeft0~19_combout\ & (!\ShiftLeft0~16_combout\ & (!\A~combout\(3) & \ShiftLeft0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \ShiftLeft0~16_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~37_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X34_Y5_N14
\Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux16~4_combout\ & (\ShiftRight0~89_combout\ & (\Mux16~2_combout\))) # (!\Mux16~4_combout\ & (((\Mux12~0_combout\) # (!\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~89_combout\,
	datab => \Mux16~4_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X35_Y5_N22
\Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux30~21_combout\ & (((\Mux12~1_combout\)))) # (!\Mux30~21_combout\ & ((\Mux12~1_combout\ & (\ShiftLeft0~96_combout\)) # (!\Mux12~1_combout\ & ((\ShiftLeft0~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~96_combout\,
	datab => \ShiftLeft0~66_combout\,
	datac => \Mux30~21_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X35_Y4_N18
\Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux16~7_combout\ & ((\Mux16~8_combout\ & (\ShiftRight1~48_combout\)) # (!\Mux16~8_combout\ & ((\Mux12~2_combout\))))) # (!\Mux16~7_combout\ & (((!\Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~48_combout\,
	datab => \Mux16~7_combout\,
	datac => \Mux12~2_combout\,
	datad => \Mux16~8_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X35_Y2_N24
\Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~3_combout\ & (((!\A~combout\(21) & !\B~combout\(21))) # (!\Mux5~2_combout\))) # (!\Mux12~3_combout\ & (\Mux5~2_combout\ & (\A~combout\(21) $ (\B~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datab => \Mux5~2_combout\,
	datac => \A~combout\(21),
	datad => \B~combout\(21),
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X33_Y7_N2
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\ShiftLeft0~41_combout\ & (!\A~combout\(3) & (!\ShiftLeft0~19_combout\ & !\ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~19_combout\,
	datad => \ShiftLeft0~16_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X30_Y6_N20
\ShiftLeft0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~100_combout\ = (\A~combout\(1) & ((\B~combout\(21)))) # (!\A~combout\(1) & (\B~combout\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(1),
	datac => \B~combout\(21),
	combout => \ShiftLeft0~100_combout\);

-- Location: LCCOMB_X34_Y6_N12
\ShiftLeft0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~102_combout\ = (\A~combout\(2) & ((\ShiftLeft0~89_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \ShiftLeft0~101_combout\,
	datad => \ShiftLeft0~89_combout\,
	combout => \ShiftLeft0~102_combout\);

-- Location: LCCOMB_X35_Y7_N14
\Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux16~4_combout\ & (\Mux16~2_combout\ & ((\ShiftRight0~76_combout\)))) # (!\Mux16~4_combout\ & (((\Mux10~8_combout\)) # (!\Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~4_combout\,
	datab => \Mux16~2_combout\,
	datac => \Mux10~8_combout\,
	datad => \ShiftRight0~76_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X35_Y6_N2
\Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux30~21_combout\ & (((\Mux10~3_combout\)))) # (!\Mux30~21_combout\ & ((\Mux10~3_combout\ & (\ShiftLeft0~102_combout\)) # (!\Mux10~3_combout\ & ((\ShiftLeft0~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~102_combout\,
	datab => \Mux30~21_combout\,
	datac => \ShiftLeft0~73_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X35_Y4_N2
\Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux16~7_combout\ & ((\Mux16~8_combout\ & (\ShiftRight1~54_combout\)) # (!\Mux16~8_combout\ & ((\Mux10~4_combout\))))) # (!\Mux16~7_combout\ & (((!\Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~54_combout\,
	datab => \Mux16~7_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux16~8_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X30_Y6_N28
\ShiftLeft0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~103_combout\ = (\A~combout\(1) & (\B~combout\(22))) # (!\A~combout\(1) & ((\B~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(22),
	datac => \B~combout\(24),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~103_combout\);

-- Location: LCCOMB_X30_Y6_N18
\ShiftLeft0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~104_combout\ = (\A~combout\(0) & (\ShiftLeft0~100_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~100_combout\,
	datab => \ShiftLeft0~103_combout\,
	datac => \A~combout\(0),
	combout => \ShiftLeft0~104_combout\);

-- Location: LCCOMB_X35_Y5_N4
\Mux9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\ShiftRight0~42_combout\ & ((\Mux9~7_combout\ & (\ShiftLeft0~92_combout\)) # (!\Mux9~7_combout\ & ((\ShiftLeft0~104_combout\))))) # (!\ShiftRight0~42_combout\ & (((\Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~42_combout\,
	datab => \ShiftLeft0~92_combout\,
	datac => \ShiftLeft0~104_combout\,
	datad => \Mux9~7_combout\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X36_Y5_N2
\Mux9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\ShiftRight0~42_combout\ & (\Mux9~8_combout\)) # (!\ShiftRight0~42_combout\ & ((\Mux9~8_combout\ & ((\ShiftLeft0~48_combout\))) # (!\Mux9~8_combout\ & (\ShiftLeft0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~42_combout\,
	datab => \Mux9~8_combout\,
	datac => \ShiftLeft0~77_combout\,
	datad => \ShiftLeft0~48_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X33_Y1_N22
\Mux9~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~11_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(24) & (\opcode~combout\(0) & !\B~combout\(24))) # (!\A~combout\(24) & (\opcode~combout\(0) $ (!\B~combout\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \A~combout\(24),
	datac => \opcode~combout\(0),
	datad => \B~combout\(24),
	combout => \Mux9~11_combout\);

-- Location: LCCOMB_X33_Y4_N2
\Mux9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~12_combout\ = (\Mux9~11_combout\ & (((\Mux9~17_combout\) # (!\Mux9~10_combout\)))) # (!\Mux9~11_combout\ & (\ShiftRight0~78_combout\ & (\Mux9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~78_combout\,
	datab => \Mux9~11_combout\,
	datac => \Mux9~10_combout\,
	datad => \Mux9~17_combout\,
	combout => \Mux9~12_combout\);

-- Location: LCCOMB_X33_Y1_N20
\Add0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = \opcode~combout\(2) $ (\B~combout\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(2),
	datad => \B~combout\(24),
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X30_Y6_N12
\ShiftLeft0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~105_combout\ = (!\A~combout\(0) & ((\A~combout\(1) & (\B~combout\(23))) # (!\A~combout\(1) & ((\B~combout\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(0),
	datac => \B~combout\(25),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~105_combout\);

-- Location: LCCOMB_X30_Y6_N10
\ShiftLeft0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~106_combout\ = (\ShiftLeft0~105_combout\) # ((\ShiftLeft0~103_combout\ & \A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~103_combout\,
	datac => \A~combout\(0),
	datad => \ShiftLeft0~105_combout\,
	combout => \ShiftLeft0~106_combout\);

-- Location: LCCOMB_X35_Y5_N10
\Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\ShiftRight0~42_combout\ & (!\Mux9~7_combout\ & ((\ShiftLeft0~106_combout\)))) # (!\ShiftRight0~42_combout\ & ((\Mux9~7_combout\) # ((\ShiftLeft0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~42_combout\,
	datab => \Mux9~7_combout\,
	datac => \ShiftLeft0~83_combout\,
	datad => \ShiftLeft0~106_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X35_Y5_N20
\Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux8~3_combout\ & (((\ShiftLeft0~128_combout\)) # (!\Mux9~7_combout\))) # (!\Mux8~3_combout\ & (\Mux9~7_combout\ & (\ShiftLeft0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Mux9~7_combout\,
	datac => \ShiftLeft0~95_combout\,
	datad => \ShiftLeft0~128_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X34_Y1_N4
\Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = \B~combout\(25) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datad => \opcode~combout\(2),
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X32_Y1_N18
\Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux9~5_combout\ & ((\ShiftRight1~56_combout\) # ((\Mux9~13_combout\)))) # (!\Mux9~5_combout\ & (((!\Mux9~13_combout\ & \Add0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \ShiftRight1~56_combout\,
	datac => \Mux9~13_combout\,
	datad => \Add0~78_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X30_Y6_N4
\ShiftLeft0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~107_combout\ = (\A~combout\(1) & ((\A~combout\(0) & (\B~combout\(23))) # (!\A~combout\(0) & ((\B~combout\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(0),
	datac => \B~combout\(24),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~107_combout\);

-- Location: LCCOMB_X30_Y6_N2
\ShiftLeft0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~109_combout\ = (\ShiftLeft0~107_combout\) # ((\ShiftLeft0~108_combout\ & !\A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~108_combout\,
	datac => \ShiftLeft0~107_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~109_combout\);

-- Location: LCCOMB_X33_Y7_N20
\Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux9~7_combout\ & (((\ShiftLeft0~98_combout\) # (!\ShiftRight0~42_combout\)))) # (!\Mux9~7_combout\ & (\ShiftLeft0~109_combout\ & ((\ShiftRight0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~7_combout\,
	datab => \ShiftLeft0~109_combout\,
	datac => \ShiftLeft0~98_combout\,
	datad => \ShiftRight0~42_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X33_Y7_N30
\Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\ & ((\ShiftLeft0~56_combout\) # ((\ShiftRight0~42_combout\)))) # (!\Mux7~3_combout\ & (((\ShiftLeft0~87_combout\ & !\ShiftRight0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~56_combout\,
	datab => \ShiftLeft0~87_combout\,
	datac => \Mux7~3_combout\,
	datad => \ShiftRight0~42_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X32_Y2_N8
\Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(26) & (!\A~combout\(26) & \opcode~combout\(0))) # (!\B~combout\(26) & (\A~combout\(26) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datab => \A~combout\(26),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X32_Y4_N8
\Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux9~10_combout\ & ((\Mux7~5_combout\ & ((\Mux7~10_combout\))) # (!\Mux7~5_combout\ & (\ShiftRight0~80_combout\)))) # (!\Mux9~10_combout\ & (\Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~10_combout\,
	datab => \Mux7~5_combout\,
	datac => \ShiftRight0~80_combout\,
	datad => \Mux7~10_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X32_Y2_N6
\Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = \B~combout\(26) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datad => \opcode~combout\(2),
	combout => \Add0~80_combout\);

-- Location: LCCOMB_X32_Y1_N24
\Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux9~13_combout\ & ((\Mux7~6_combout\) # ((\Mux9~5_combout\)))) # (!\Mux9~13_combout\ & (((!\Mux9~5_combout\ & \Add0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~6_combout\,
	datab => \Mux9~13_combout\,
	datac => \Mux9~5_combout\,
	datad => \Add0~81_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X34_Y6_N6
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\ShiftRight0~42_combout\ & (\ShiftLeft0~112_combout\ & ((!\Mux9~7_combout\)))) # (!\ShiftRight0~42_combout\ & (((\ShiftLeft0~90_combout\) # (\Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~112_combout\,
	datab => \ShiftLeft0~90_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \Mux9~7_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X32_Y1_N28
\Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(27) & (!\B~combout\(27) & \opcode~combout\(0))) # (!\A~combout\(27) & (\B~combout\(27) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(27),
	datab => \opcode~combout\(1),
	datac => \B~combout\(27),
	datad => \opcode~combout\(0),
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X32_Y1_N26
\Add0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = \B~combout\(27) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(27),
	datad => \opcode~combout\(2),
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X32_Y1_N20
\Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux9~5_combout\ & (((\Mux9~13_combout\) # (\ShiftRight1~62_combout\)))) # (!\Mux9~5_combout\ & (\Add0~84_combout\ & (!\Mux9~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Add0~84_combout\,
	datac => \Mux9~13_combout\,
	datad => \ShiftRight1~62_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X36_Y5_N4
\ShiftLeft0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~114_combout\ = (\A~combout\(3) & ((\ShiftLeft0~33_combout\))) # (!\A~combout\(3) & (\ShiftLeft0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~63_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~33_combout\,
	combout => \ShiftLeft0~114_combout\);

-- Location: LCCOMB_X32_Y4_N6
\ShiftLeft0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~115_combout\ = (\A~combout\(0) & (\B~combout\(27))) # (!\A~combout\(0) & ((\B~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(27),
	datac => \B~combout\(28),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~115_combout\);

-- Location: LCCOMB_X35_Y4_N20
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\ShiftRight0~32_combout\ & (((!\Mux30~4_combout\ & \ShiftLeft0~115_combout\)))) # (!\ShiftRight0~32_combout\ & ((\ShiftLeft0~104_combout\) # ((\Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \ShiftLeft0~104_combout\,
	datac => \Mux30~4_combout\,
	datad => \ShiftLeft0~115_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X34_Y1_N2
\tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~0_combout\ = (\B~combout\(28)) # (\A~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datac => \A~combout\(28),
	combout => \tmp~0_combout\);

-- Location: LCCOMB_X34_Y1_N20
\tmp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~1_combout\ = \B~combout\(28) $ (\A~combout\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datac => \A~combout\(28),
	combout => \tmp~1_combout\);

-- Location: LCCOMB_X34_Y1_N8
\Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = \B~combout\(28) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(28),
	datad => \opcode~combout\(2),
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X36_Y5_N10
\ShiftLeft0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~116_combout\ = (\A~combout\(3) & (\ShiftLeft0~37_combout\)) # (!\A~combout\(3) & ((\ShiftLeft0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~37_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~66_combout\,
	combout => \ShiftLeft0~116_combout\);

-- Location: LCCOMB_X32_Y4_N0
\ShiftLeft0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~117_combout\ = (\A~combout\(0) & ((\B~combout\(28)))) # (!\A~combout\(0) & (\B~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(29),
	datac => \B~combout\(28),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~117_combout\);

-- Location: LCCOMB_X35_Y5_N2
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\ShiftRight0~32_combout\ & (((\ShiftLeft0~117_combout\ & !\Mux30~4_combout\)))) # (!\ShiftRight0~32_combout\ & ((\ShiftLeft0~106_combout\) # ((\Mux30~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~106_combout\,
	datab => \ShiftRight0~32_combout\,
	datac => \ShiftLeft0~117_combout\,
	datad => \Mux30~4_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X35_Y5_N28
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux30~4_combout\ & ((\Mux4~2_combout\ & ((\ShiftLeft0~96_combout\))) # (!\Mux4~2_combout\ & (\ShiftLeft0~111_combout\)))) # (!\Mux30~4_combout\ & (\Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~4_combout\,
	datab => \Mux4~2_combout\,
	datac => \ShiftLeft0~111_combout\,
	datad => \ShiftLeft0~96_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X30_Y3_N28
\tmp~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~2_combout\ = (\A~combout\(29)) # (\B~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datac => \B~combout\(29),
	combout => \tmp~2_combout\);

-- Location: LCCOMB_X35_Y3_N10
\Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux5~7_combout\ & (\ShiftRight0~91_combout\ & (\Mux5~6_combout\))) # (!\Mux5~7_combout\ & (((!\tmp~2_combout\) # (!\Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~91_combout\,
	datab => \Mux5~7_combout\,
	datac => \Mux5~6_combout\,
	datad => \tmp~2_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X35_Y1_N26
\Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\ & ((\Mux4~3_combout\) # ((!\Mux33~9_combout\)))) # (!\Mux4~4_combout\ & (((\ShiftLeft0~116_combout\ & \Mux33~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux4~4_combout\,
	datac => \ShiftLeft0~116_combout\,
	datad => \Mux33~9_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X34_Y1_N10
\tmp~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tmp~3_combout\ = \A~combout\(29) $ (\B~combout\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datac => \B~combout\(29),
	combout => \tmp~3_combout\);

-- Location: LCCOMB_X35_Y1_N16
\Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux5~11_combout\ & ((\Mux5~10_combout\ & (\tmp~3_combout\)) # (!\Mux5~10_combout\ & ((\Mux4~5_combout\))))) # (!\Mux5~11_combout\ & (((\Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~3_combout\,
	datab => \Mux5~11_combout\,
	datac => \Mux5~10_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X34_Y1_N14
\Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = \B~combout\(29) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(29),
	datad => \opcode~combout\(2),
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X33_Y7_N24
\ShiftLeft0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~118_combout\ = (\A~combout\(3) & ((\A~combout\(4) & (\ShiftLeft0~41_combout\)) # (!\A~combout\(4) & ((\ShiftLeft0~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \A~combout\(3),
	datac => \ShiftLeft0~41_combout\,
	datad => \ShiftLeft0~99_combout\,
	combout => \ShiftLeft0~118_combout\);

-- Location: LCCOMB_X32_Y4_N30
\ShiftLeft0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~119_combout\ = (!\A~combout\(1) & ((\A~combout\(0) & (\B~combout\(29))) # (!\A~combout\(0) & ((\B~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(0),
	datac => \B~combout\(29),
	datad => \B~combout\(30),
	combout => \ShiftLeft0~119_combout\);

-- Location: LCCOMB_X32_Y4_N28
\ShiftLeft0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~120_combout\ = (!\A~combout\(2) & ((\ShiftLeft0~119_combout\) # ((\ShiftLeft0~115_combout\ & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~115_combout\,
	datab => \A~combout\(2),
	datac => \ShiftLeft0~119_combout\,
	datad => \A~combout\(1),
	combout => \ShiftLeft0~120_combout\);

-- Location: LCCOMB_X33_Y7_N18
\ShiftLeft0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~121_combout\ = (!\A~combout\(4) & ((\ShiftLeft0~120_combout\) # ((\ShiftLeft0~109_combout\ & \A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \ShiftLeft0~109_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~120_combout\,
	combout => \ShiftLeft0~121_combout\);

-- Location: LCCOMB_X33_Y7_N4
\ShiftLeft0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~122_combout\ = (!\A~combout\(3) & ((\ShiftLeft0~121_combout\) # ((\A~combout\(4) & \ShiftLeft0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \ShiftLeft0~70_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~121_combout\,
	combout => \ShiftLeft0~122_combout\);

-- Location: LCCOMB_X33_Y4_N28
\Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = \B~combout\(30) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(30),
	datad => \opcode~combout\(2),
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X34_Y1_N22
\Add0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\opcode~combout\(3)) # ((\opcode~combout\(1) & ((\opcode~combout\(2)) # (!\B~combout\(31)))) # (!\opcode~combout\(1) & ((\B~combout\(31)) # (!\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \opcode~combout\(1),
	datac => \B~combout\(31),
	datad => \opcode~combout\(2),
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X32_Y4_N14
\Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (!\A~combout\(1) & ((\A~combout\(0) & ((\B~combout\(30)))) # (!\A~combout\(0) & (\B~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \A~combout\(0),
	datac => \B~combout\(31),
	datad => \B~combout\(30),
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X32_Y4_N20
\Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (!\A~combout\(2) & ((\Mux2~8_combout\) # ((\A~combout\(1) & \ShiftLeft0~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \ShiftLeft0~117_combout\,
	datac => \Mux2~8_combout\,
	datad => \A~combout\(2),
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X38_Y3_N20
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\Mux18~6_combout\ & !\Mux17~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~6_combout\,
	datad => \Mux17~6_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X38_Y3_N14
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\ & (!\Mux33~8_combout\ & (!\Mux32~8_combout\ & !\Mux3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Mux33~8_combout\,
	datac => \Mux32~8_combout\,
	datad => \Mux3~6_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X36_Y7_N20
\ShiftLeft0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~124_combout\ = (\ShiftLeft0~25_combout\) # ((!\A~combout\(1) & (\B~combout\(1) & \A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~25_combout\,
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~124_combout\);

-- Location: LCCOMB_X31_Y5_N30
\ShiftRight0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~88_combout\ = (\ShiftRight0~68_combout\) # ((\A~combout\(3) & (\ShiftRight0~27_combout\ & !\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight0~68_combout\,
	datac => \ShiftRight0~27_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight0~88_combout\);

-- Location: LCCOMB_X31_Y6_N10
\ShiftRight0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~89_combout\ = (\ShiftRight0~71_combout\) # ((!\A~combout\(2) & (\ShiftRight0~52_combout\ & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~71_combout\,
	datac => \ShiftRight0~52_combout\,
	datad => \A~combout\(3),
	combout => \ShiftRight0~89_combout\);

-- Location: LCCOMB_X35_Y6_N10
\ShiftLeft0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~125_combout\ = (\A~combout\(3) & (((\ShiftLeft0~45_combout\)))) # (!\A~combout\(3) & (!\A~combout\(2) & (\ShiftLeft0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(3),
	datac => \ShiftLeft0~47_combout\,
	datad => \ShiftLeft0~45_combout\,
	combout => \ShiftLeft0~125_combout\);

-- Location: LCCOMB_X35_Y3_N14
\Mux25~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~10_combout\ = (\ShiftLeft0~48_combout\ & (!\ShiftLeft0~16_combout\ & (!\A~combout\(4) & !\ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~48_combout\,
	datab => \ShiftLeft0~16_combout\,
	datac => \A~combout\(4),
	datad => \ShiftLeft0~19_combout\,
	combout => \Mux25~10_combout\);

-- Location: LCCOMB_X36_Y5_N20
\ShiftLeft0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~126_combout\ = (\ShiftLeft0~34_combout\ & (!\A~combout\(2) & \A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	combout => \ShiftLeft0~126_combout\);

-- Location: LCCOMB_X33_Y6_N2
\ShiftRight1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~62_combout\ = (\ShiftRight1~58_combout\) # ((\B~combout\(31) & ((\A~combout\(2)) # (\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \ShiftRight1~58_combout\,
	combout => \ShiftRight1~62_combout\);

-- Location: LCCOMB_X32_Y6_N2
\ShiftRight0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~91_combout\ = (\ShiftRight0~52_combout\ & (!\A~combout\(3) & !\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~52_combout\,
	datab => \A~combout\(3),
	datac => \A~combout\(2),
	combout => \ShiftRight0~91_combout\);

-- Location: LCCOMB_X36_Y3_N30
\ShiftRight0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~93_combout\ = (!\ShiftLeft0~16_combout\ & (\ShiftRight0~40_combout\ & (!\A~combout\(4) & !\ShiftLeft0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datab => \ShiftRight0~40_combout\,
	datac => \A~combout\(4),
	datad => \ShiftLeft0~19_combout\,
	combout => \ShiftRight0~93_combout\);

-- Location: LCCOMB_X35_Y7_N24
\Mux10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (!\ShiftLeft0~19_combout\ & (!\A~combout\(3) & (\ShiftLeft0~44_combout\ & !\ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~44_combout\,
	datad => \ShiftLeft0~16_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X33_Y6_N16
\Mux9~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~17_combout\ = (!\ShiftLeft0~19_combout\ & (!\ShiftLeft0~16_combout\ & \Mux9~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \Mux9~9_combout\,
	combout => \Mux9~17_combout\);

-- Location: LCCOMB_X36_Y5_N22
\ShiftLeft0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~128_combout\ = (\A~combout\(3) & (\ShiftLeft0~34_combout\ & (!\A~combout\(2)))) # (!\A~combout\(3) & (((\ShiftLeft0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~34_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \ShiftLeft0~51_combout\,
	combout => \ShiftLeft0~128_combout\);

-- Location: LCCOMB_X33_Y6_N22
\Mux8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~10_combout\ = (!\ShiftLeft0~16_combout\ & (\Mux8~4_combout\ & !\ShiftLeft0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datac => \Mux8~4_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \Mux8~10_combout\);

-- Location: LCCOMB_X33_Y7_N6
\Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (!\ShiftLeft0~19_combout\ & (!\ShiftLeft0~16_combout\ & \Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~19_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X33_Y7_N12
\ShiftLeft0~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~129_combout\ = (!\ShiftLeft0~19_combout\ & (!\ShiftLeft0~16_combout\ & ((\ShiftLeft0~118_combout\) # (\ShiftLeft0~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~118_combout\,
	datab => \ShiftLeft0~122_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \ShiftLeft0~16_combout\,
	combout => \ShiftLeft0~129_combout\);

-- Location: LCCOMB_X33_Y6_N30
\Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\ShiftRight0~12_combout\ & ((\ShiftLeft0~57_combout\) # ((\ShiftLeft0~60_combout\ & !\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \ShiftLeft0~60_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~57_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X33_Y6_N8
\Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~8_combout\ = (\Mux30~7_combout\ & ((\Mux22~1_combout\ & (\Mux22~7_combout\)) # (!\Mux22~1_combout\ & ((\ShiftRight0~81_combout\))))) # (!\Mux30~7_combout\ & (((\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~7_combout\,
	datab => \Mux22~7_combout\,
	datac => \ShiftRight0~81_combout\,
	datad => \Mux22~1_combout\,
	combout => \Mux22~8_combout\);

-- Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(3),
	combout => \opcode~combout\(3));

-- Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(2),
	combout => \opcode~combout\(2));

-- Location: LCCOMB_X36_Y4_N8
\Mux33~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = \opcode~combout\(2) $ (((\opcode~combout\(1) & !\opcode~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(3),
	combout => \Mux33~4_combout\);

-- Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X33_Y3_N8
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \B~combout\(0) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datad => \opcode~combout\(2),
	combout => \Add0~0_combout\);

-- Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(1),
	combout => \opcode~combout\(1));

-- Location: LCCOMB_X33_Y3_N16
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(!\opcode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X33_Y3_N18
\Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\A~combout\(0) & ((\Add0~0_combout\ & (\Add0~2_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~2_cout\)))) # (!\A~combout\(0) & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\A~combout\(0) & (!\Add0~0_combout\ & !\Add0~2_cout\)) # (!\A~combout\(0) & ((!\Add0~2_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(31),
	combout => \A~combout\(31));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(30),
	combout => \A~combout\(30));

-- Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(29),
	combout => \A~combout\(29));

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(28),
	combout => \A~combout\(28));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(27),
	combout => \A~combout\(27));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(26),
	combout => \A~combout\(26));

-- Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(25),
	combout => \A~combout\(25));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(24),
	combout => \B~combout\(24));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(23),
	combout => \A~combout\(23));

-- Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(22),
	combout => \A~combout\(22));

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(21),
	combout => \A~combout\(21));

-- Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(20),
	combout => \A~combout\(20));

-- Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(19),
	combout => \A~combout\(19));

-- Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(18),
	combout => \A~combout\(18));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(17),
	combout => \B~combout\(17));

-- Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(16),
	combout => \B~combout\(16));

-- Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(15),
	combout => \B~combout\(15));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(14),
	combout => \B~combout\(14));

-- Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(13),
	combout => \B~combout\(13));

-- Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(12),
	combout => \A~combout\(12));

-- Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(11),
	combout => \A~combout\(11));

-- Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(10),
	combout => \A~combout\(10));

-- Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(9),
	combout => \A~combout\(9));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(8),
	combout => \B~combout\(8));

-- Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X31_Y2_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X31_Y2_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\B~combout\(1) & (\A~combout\(1) & !\LessThan1~1_cout\)) # (!\B~combout\(1) & ((\A~combout\(1)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X31_Y2_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\A~combout\(2) & (\B~combout\(2) & !\LessThan1~3_cout\)) # (!\A~combout\(2) & ((\B~combout\(2)) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \B~combout\(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X31_Y2_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\B~combout\(3) & (\A~combout\(3) & !\LessThan1~5_cout\)) # (!\B~combout\(3) & ((\A~combout\(3)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X31_Y2_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\B~combout\(4) & ((!\LessThan1~7_cout\) # (!\A~combout\(4)))) # (!\B~combout\(4) & (!\A~combout\(4) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X31_Y2_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\B~combout\(5) & (\A~combout\(5) & !\LessThan1~9_cout\)) # (!\B~combout\(5) & ((\A~combout\(5)) # (!\LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X31_Y2_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\A~combout\(6) & (\B~combout\(6) & !\LessThan1~11_cout\)) # (!\A~combout\(6) & ((\B~combout\(6)) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X31_Y2_N14
\LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\A~combout\(7) & ((!\LessThan1~13_cout\) # (!\B~combout\(7)))) # (!\A~combout\(7) & (!\B~combout\(7) & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X31_Y2_N16
\LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\A~combout\(8) & (\B~combout\(8) & !\LessThan1~15_cout\)) # (!\A~combout\(8) & ((\B~combout\(8)) # (!\LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \B~combout\(8),
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X31_Y2_N18
\LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~19_cout\ = CARRY((\B~combout\(9) & (\A~combout\(9) & !\LessThan1~17_cout\)) # (!\B~combout\(9) & ((\A~combout\(9)) # (!\LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datab => \A~combout\(9),
	datad => VCC,
	cin => \LessThan1~17_cout\,
	cout => \LessThan1~19_cout\);

-- Location: LCCOMB_X31_Y2_N20
\LessThan1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~21_cout\ = CARRY((\B~combout\(10) & ((!\LessThan1~19_cout\) # (!\A~combout\(10)))) # (!\B~combout\(10) & (!\A~combout\(10) & !\LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \A~combout\(10),
	datad => VCC,
	cin => \LessThan1~19_cout\,
	cout => \LessThan1~21_cout\);

-- Location: LCCOMB_X31_Y2_N22
\LessThan1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~23_cout\ = CARRY((\B~combout\(11) & (\A~combout\(11) & !\LessThan1~21_cout\)) # (!\B~combout\(11) & ((\A~combout\(11)) # (!\LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(11),
	datab => \A~combout\(11),
	datad => VCC,
	cin => \LessThan1~21_cout\,
	cout => \LessThan1~23_cout\);

-- Location: LCCOMB_X31_Y2_N24
\LessThan1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~25_cout\ = CARRY((\B~combout\(12) & ((!\LessThan1~23_cout\) # (!\A~combout\(12)))) # (!\B~combout\(12) & (!\A~combout\(12) & !\LessThan1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \A~combout\(12),
	datad => VCC,
	cin => \LessThan1~23_cout\,
	cout => \LessThan1~25_cout\);

-- Location: LCCOMB_X31_Y2_N26
\LessThan1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~27_cout\ = CARRY((\A~combout\(13) & ((!\LessThan1~25_cout\) # (!\B~combout\(13)))) # (!\A~combout\(13) & (!\B~combout\(13) & !\LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \B~combout\(13),
	datad => VCC,
	cin => \LessThan1~25_cout\,
	cout => \LessThan1~27_cout\);

-- Location: LCCOMB_X31_Y2_N28
\LessThan1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~29_cout\ = CARRY((\A~combout\(14) & (\B~combout\(14) & !\LessThan1~27_cout\)) # (!\A~combout\(14) & ((\B~combout\(14)) # (!\LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(14),
	datab => \B~combout\(14),
	datad => VCC,
	cin => \LessThan1~27_cout\,
	cout => \LessThan1~29_cout\);

-- Location: LCCOMB_X31_Y2_N30
\LessThan1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~31_cout\ = CARRY((\A~combout\(15) & ((!\LessThan1~29_cout\) # (!\B~combout\(15)))) # (!\A~combout\(15) & (!\B~combout\(15) & !\LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datab => \B~combout\(15),
	datad => VCC,
	cin => \LessThan1~29_cout\,
	cout => \LessThan1~31_cout\);

-- Location: LCCOMB_X31_Y1_N0
\LessThan1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~33_cout\ = CARRY((\A~combout\(16) & (\B~combout\(16) & !\LessThan1~31_cout\)) # (!\A~combout\(16) & ((\B~combout\(16)) # (!\LessThan1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \B~combout\(16),
	datad => VCC,
	cin => \LessThan1~31_cout\,
	cout => \LessThan1~33_cout\);

-- Location: LCCOMB_X31_Y1_N2
\LessThan1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~35_cout\ = CARRY((\A~combout\(17) & ((!\LessThan1~33_cout\) # (!\B~combout\(17)))) # (!\A~combout\(17) & (!\B~combout\(17) & !\LessThan1~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \B~combout\(17),
	datad => VCC,
	cin => \LessThan1~33_cout\,
	cout => \LessThan1~35_cout\);

-- Location: LCCOMB_X31_Y1_N4
\LessThan1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~37_cout\ = CARRY((\B~combout\(18) & ((!\LessThan1~35_cout\) # (!\A~combout\(18)))) # (!\B~combout\(18) & (!\A~combout\(18) & !\LessThan1~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(18),
	datab => \A~combout\(18),
	datad => VCC,
	cin => \LessThan1~35_cout\,
	cout => \LessThan1~37_cout\);

-- Location: LCCOMB_X31_Y1_N6
\LessThan1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~39_cout\ = CARRY((\B~combout\(19) & (\A~combout\(19) & !\LessThan1~37_cout\)) # (!\B~combout\(19) & ((\A~combout\(19)) # (!\LessThan1~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datab => \A~combout\(19),
	datad => VCC,
	cin => \LessThan1~37_cout\,
	cout => \LessThan1~39_cout\);

-- Location: LCCOMB_X31_Y1_N8
\LessThan1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~41_cout\ = CARRY((\B~combout\(20) & ((!\LessThan1~39_cout\) # (!\A~combout\(20)))) # (!\B~combout\(20) & (!\A~combout\(20) & !\LessThan1~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(20),
	datab => \A~combout\(20),
	datad => VCC,
	cin => \LessThan1~39_cout\,
	cout => \LessThan1~41_cout\);

-- Location: LCCOMB_X31_Y1_N10
\LessThan1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~43_cout\ = CARRY((\B~combout\(21) & (\A~combout\(21) & !\LessThan1~41_cout\)) # (!\B~combout\(21) & ((\A~combout\(21)) # (!\LessThan1~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(21),
	datab => \A~combout\(21),
	datad => VCC,
	cin => \LessThan1~41_cout\,
	cout => \LessThan1~43_cout\);

-- Location: LCCOMB_X31_Y1_N12
\LessThan1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~45_cout\ = CARRY((\B~combout\(22) & ((!\LessThan1~43_cout\) # (!\A~combout\(22)))) # (!\B~combout\(22) & (!\A~combout\(22) & !\LessThan1~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datab => \A~combout\(22),
	datad => VCC,
	cin => \LessThan1~43_cout\,
	cout => \LessThan1~45_cout\);

-- Location: LCCOMB_X31_Y1_N14
\LessThan1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~47_cout\ = CARRY((\B~combout\(23) & (\A~combout\(23) & !\LessThan1~45_cout\)) # (!\B~combout\(23) & ((\A~combout\(23)) # (!\LessThan1~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(23),
	datad => VCC,
	cin => \LessThan1~45_cout\,
	cout => \LessThan1~47_cout\);

-- Location: LCCOMB_X31_Y1_N16
\LessThan1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~49_cout\ = CARRY((\A~combout\(24) & (\B~combout\(24) & !\LessThan1~47_cout\)) # (!\A~combout\(24) & ((\B~combout\(24)) # (!\LessThan1~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(24),
	datab => \B~combout\(24),
	datad => VCC,
	cin => \LessThan1~47_cout\,
	cout => \LessThan1~49_cout\);

-- Location: LCCOMB_X31_Y1_N18
\LessThan1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~51_cout\ = CARRY((\B~combout\(25) & (\A~combout\(25) & !\LessThan1~49_cout\)) # (!\B~combout\(25) & ((\A~combout\(25)) # (!\LessThan1~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \A~combout\(25),
	datad => VCC,
	cin => \LessThan1~49_cout\,
	cout => \LessThan1~51_cout\);

-- Location: LCCOMB_X31_Y1_N20
\LessThan1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~53_cout\ = CARRY((\B~combout\(26) & ((!\LessThan1~51_cout\) # (!\A~combout\(26)))) # (!\B~combout\(26) & (!\A~combout\(26) & !\LessThan1~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datab => \A~combout\(26),
	datad => VCC,
	cin => \LessThan1~51_cout\,
	cout => \LessThan1~53_cout\);

-- Location: LCCOMB_X31_Y1_N22
\LessThan1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~55_cout\ = CARRY((\B~combout\(27) & (\A~combout\(27) & !\LessThan1~53_cout\)) # (!\B~combout\(27) & ((\A~combout\(27)) # (!\LessThan1~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \A~combout\(27),
	datad => VCC,
	cin => \LessThan1~53_cout\,
	cout => \LessThan1~55_cout\);

-- Location: LCCOMB_X31_Y1_N24
\LessThan1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~57_cout\ = CARRY((\B~combout\(28) & ((!\LessThan1~55_cout\) # (!\A~combout\(28)))) # (!\B~combout\(28) & (!\A~combout\(28) & !\LessThan1~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datab => \A~combout\(28),
	datad => VCC,
	cin => \LessThan1~55_cout\,
	cout => \LessThan1~57_cout\);

-- Location: LCCOMB_X31_Y1_N26
\LessThan1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~59_cout\ = CARRY((\B~combout\(29) & (\A~combout\(29) & !\LessThan1~57_cout\)) # (!\B~combout\(29) & ((\A~combout\(29)) # (!\LessThan1~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(29),
	datab => \A~combout\(29),
	datad => VCC,
	cin => \LessThan1~57_cout\,
	cout => \LessThan1~59_cout\);

-- Location: LCCOMB_X31_Y1_N28
\LessThan1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~61_cout\ = CARRY((\B~combout\(30) & ((!\LessThan1~59_cout\) # (!\A~combout\(30)))) # (!\B~combout\(30) & (!\A~combout\(30) & !\LessThan1~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \A~combout\(30),
	datad => VCC,
	cin => \LessThan1~59_cout\,
	cout => \LessThan1~61_cout\);

-- Location: LCCOMB_X31_Y1_N30
\LessThan1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~62_combout\ = (\B~combout\(31) & ((\LessThan1~61_cout\) # (!\A~combout\(31)))) # (!\B~combout\(31) & (\LessThan1~61_cout\ & !\A~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datad => \A~combout\(31),
	cin => \LessThan1~61_cout\,
	combout => \LessThan1~62_combout\);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(31),
	combout => \B~combout\(31));

-- Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(29),
	combout => \B~combout\(29));

-- Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(28),
	combout => \B~combout\(28));

-- Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(26),
	combout => \B~combout\(26));

-- Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(21),
	combout => \B~combout\(21));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(20),
	combout => \B~combout\(20));

-- Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(19),
	combout => \B~combout\(19));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(17),
	combout => \A~combout\(17));

-- Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(16),
	combout => \A~combout\(16));

-- Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(10),
	combout => \B~combout\(10));

-- Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(9),
	combout => \B~combout\(9));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(8),
	combout => \A~combout\(8));

-- Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X30_Y2_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X30_Y2_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\A~combout\(1) & ((!\LessThan0~1_cout\) # (!\B~combout\(1)))) # (!\A~combout\(1) & (!\B~combout\(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X30_Y2_N4
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\B~combout\(2) & ((!\LessThan0~3_cout\) # (!\A~combout\(2)))) # (!\B~combout\(2) & (!\A~combout\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X30_Y2_N6
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\A~combout\(3) & ((!\LessThan0~5_cout\) # (!\B~combout\(3)))) # (!\A~combout\(3) & (!\B~combout\(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X30_Y2_N8
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\B~combout\(4) & ((!\LessThan0~7_cout\) # (!\A~combout\(4)))) # (!\B~combout\(4) & (!\A~combout\(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X30_Y2_N10
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\A~combout\(5) & ((!\LessThan0~9_cout\) # (!\B~combout\(5)))) # (!\A~combout\(5) & (!\B~combout\(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \B~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X30_Y2_N12
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\A~combout\(6) & (\B~combout\(6) & !\LessThan0~11_cout\)) # (!\A~combout\(6) & ((\B~combout\(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X30_Y2_N14
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\B~combout\(7) & (\A~combout\(7) & !\LessThan0~13_cout\)) # (!\B~combout\(7) & ((\A~combout\(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X30_Y2_N16
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\B~combout\(8) & ((!\LessThan0~15_cout\) # (!\A~combout\(8)))) # (!\B~combout\(8) & (!\A~combout\(8) & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(8),
	datab => \A~combout\(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X30_Y2_N18
\LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\A~combout\(9) & ((!\LessThan0~17_cout\) # (!\B~combout\(9)))) # (!\A~combout\(9) & (!\B~combout\(9) & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(9),
	datab => \B~combout\(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X30_Y2_N20
\LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\A~combout\(10) & (\B~combout\(10) & !\LessThan0~19_cout\)) # (!\A~combout\(10) & ((\B~combout\(10)) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \B~combout\(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X30_Y2_N22
\LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\B~combout\(11) & (\A~combout\(11) & !\LessThan0~21_cout\)) # (!\B~combout\(11) & ((\A~combout\(11)) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(11),
	datab => \A~combout\(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X30_Y2_N24
\LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\B~combout\(12) & ((!\LessThan0~23_cout\) # (!\A~combout\(12)))) # (!\B~combout\(12) & (!\A~combout\(12) & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datab => \A~combout\(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X30_Y2_N26
\LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\A~combout\(13) & ((!\LessThan0~25_cout\) # (!\B~combout\(13)))) # (!\A~combout\(13) & (!\B~combout\(13) & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(13),
	datab => \B~combout\(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X30_Y2_N28
\LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\A~combout\(14) & (\B~combout\(14) & !\LessThan0~27_cout\)) # (!\A~combout\(14) & ((\B~combout\(14)) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(14),
	datab => \B~combout\(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X30_Y2_N30
\LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\A~combout\(15) & ((!\LessThan0~29_cout\) # (!\B~combout\(15)))) # (!\A~combout\(15) & (!\B~combout\(15) & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datab => \B~combout\(15),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X30_Y1_N0
\LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\B~combout\(16) & ((!\LessThan0~31_cout\) # (!\A~combout\(16)))) # (!\B~combout\(16) & (!\A~combout\(16) & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \A~combout\(16),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X30_Y1_N2
\LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\B~combout\(17) & (\A~combout\(17) & !\LessThan0~33_cout\)) # (!\B~combout\(17) & ((\A~combout\(17)) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(17),
	datab => \A~combout\(17),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X30_Y1_N4
\LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\B~combout\(18) & ((!\LessThan0~35_cout\) # (!\A~combout\(18)))) # (!\B~combout\(18) & (!\A~combout\(18) & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(18),
	datab => \A~combout\(18),
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X30_Y1_N6
\LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\A~combout\(19) & ((!\LessThan0~37_cout\) # (!\B~combout\(19)))) # (!\A~combout\(19) & (!\B~combout\(19) & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(19),
	datab => \B~combout\(19),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X30_Y1_N8
\LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\A~combout\(20) & (\B~combout\(20) & !\LessThan0~39_cout\)) # (!\A~combout\(20) & ((\B~combout\(20)) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(20),
	datab => \B~combout\(20),
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X30_Y1_N10
\LessThan0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\A~combout\(21) & ((!\LessThan0~41_cout\) # (!\B~combout\(21)))) # (!\A~combout\(21) & (!\B~combout\(21) & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \B~combout\(21),
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X30_Y1_N12
\LessThan0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\B~combout\(22) & ((!\LessThan0~43_cout\) # (!\A~combout\(22)))) # (!\B~combout\(22) & (!\A~combout\(22) & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datab => \A~combout\(22),
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X30_Y1_N14
\LessThan0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\B~combout\(23) & (\A~combout\(23) & !\LessThan0~45_cout\)) # (!\B~combout\(23) & ((\A~combout\(23)) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(23),
	datab => \A~combout\(23),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X30_Y1_N16
\LessThan0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\A~combout\(24) & (\B~combout\(24) & !\LessThan0~47_cout\)) # (!\A~combout\(24) & ((\B~combout\(24)) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(24),
	datab => \B~combout\(24),
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X30_Y1_N18
\LessThan0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\B~combout\(25) & (\A~combout\(25) & !\LessThan0~49_cout\)) # (!\B~combout\(25) & ((\A~combout\(25)) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \A~combout\(25),
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X30_Y1_N20
\LessThan0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\A~combout\(26) & (\B~combout\(26) & !\LessThan0~51_cout\)) # (!\A~combout\(26) & ((\B~combout\(26)) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(26),
	datab => \B~combout\(26),
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X30_Y1_N22
\LessThan0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\B~combout\(27) & (\A~combout\(27) & !\LessThan0~53_cout\)) # (!\B~combout\(27) & ((\A~combout\(27)) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(27),
	datab => \A~combout\(27),
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X30_Y1_N24
\LessThan0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\A~combout\(28) & (\B~combout\(28) & !\LessThan0~55_cout\)) # (!\A~combout\(28) & ((\B~combout\(28)) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(28),
	datab => \B~combout\(28),
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X30_Y1_N26
\LessThan0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\A~combout\(29) & ((!\LessThan0~57_cout\) # (!\B~combout\(29)))) # (!\A~combout\(29) & (!\B~combout\(29) & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datab => \B~combout\(29),
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X30_Y1_N28
\LessThan0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\B~combout\(30) & ((!\LessThan0~59_cout\) # (!\A~combout\(30)))) # (!\B~combout\(30) & (!\A~combout\(30) & !\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \A~combout\(30),
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X30_Y1_N30
\LessThan0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\A~combout\(31) & ((\LessThan0~61_cout\) # (!\B~combout\(31)))) # (!\A~combout\(31) & (\LessThan0~61_cout\ & !\B~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(31),
	datad => \B~combout\(31),
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X36_Y4_N22
\Mux33~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux33~2_combout\ & ((\LessThan1~62_combout\) # ((!\opcode~combout\(1))))) # (!\Mux33~2_combout\ & (((\LessThan0~62_combout\ & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~2_combout\,
	datab => \LessThan1~62_combout\,
	datac => \LessThan0~62_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X36_Y4_N18
\Mux33~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (\opcode~combout\(3) & (\Mux33~4_combout\)) # (!\opcode~combout\(3) & ((\Mux33~4_combout\ & (\Add0~3_combout\)) # (!\Mux33~4_combout\ & ((\Mux33~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux33~4_combout\,
	datac => \Add0~3_combout\,
	datad => \Mux33~3_combout\,
	combout => \Mux33~5_combout\);

-- Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(24),
	combout => \A~combout\(24));

-- Location: LCCOMB_X33_Y1_N26
\ShiftLeft0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\A~combout\(21)) # ((\A~combout\(24)) # ((\A~combout\(23)) # (\A~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \A~combout\(24),
	datac => \A~combout\(23),
	datad => \A~combout\(22),
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X33_Y1_N28
\ShiftLeft0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\A~combout\(27)) # ((\A~combout\(26)) # ((\A~combout\(25)) # (\A~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(27),
	datab => \A~combout\(26),
	datac => \A~combout\(25),
	datad => \A~combout\(28),
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X33_Y1_N18
\ShiftLeft0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (\A~combout\(29)) # ((\ShiftLeft0~17_combout\) # ((\A~combout\(30)) # (\ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datab => \ShiftLeft0~17_combout\,
	datac => \A~combout\(30),
	datad => \ShiftLeft0~18_combout\,
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X36_Y3_N0
\ShiftLeft0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (\ShiftLeft0~16_combout\) # (\ShiftLeft0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datac => \ShiftLeft0~19_combout\,
	combout => \ShiftLeft0~22_combout\);

-- Location: LCCOMB_X36_Y6_N0
\ShiftRight0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (!\A~combout\(1) & ((\A~combout\(0) & (\B~combout\(1))) # (!\A~combout\(0) & ((\B~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \A~combout\(1),
	datac => \B~combout\(1),
	datad => \B~combout\(0),
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X36_Y6_N12
\ShiftRight0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (!\A~combout\(2) & ((\ShiftRight0~13_combout\) # ((\ShiftRight1~6_combout\ & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~6_combout\,
	datab => \ShiftRight0~13_combout\,
	datac => \A~combout\(2),
	datad => \A~combout\(1),
	combout => \ShiftRight0~14_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X36_Y7_N4
\ShiftRight0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (\A~combout\(1) & ((\A~combout\(0) & ((\B~combout\(7)))) # (!\A~combout\(0) & (\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datab => \B~combout\(7),
	datac => \A~combout\(1),
	datad => \A~combout\(0),
	combout => \ShiftRight0~15_combout\);

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X36_Y7_N22
\ShiftRight1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~7_combout\ = (\A~combout\(0) & ((\B~combout\(5)))) # (!\A~combout\(0) & (\B~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(4),
	datad => \B~combout\(5),
	combout => \ShiftRight1~7_combout\);

-- Location: LCCOMB_X36_Y7_N8
\ShiftRight0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\ShiftRight0~15_combout\) # ((!\A~combout\(1) & \ShiftRight1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~15_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~7_combout\,
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X35_Y6_N4
\ShiftRight0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (!\A~combout\(3) & ((\ShiftRight0~14_combout\) # ((\A~combout\(2) & \ShiftRight0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(3),
	datac => \ShiftRight0~14_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X35_Y6_N26
\ShiftRight0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (!\A~combout\(4) & ((\ShiftRight0~17_combout\) # ((\ShiftRight0~24_combout\ & \A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~24_combout\,
	datab => \ShiftRight0~17_combout\,
	datac => \A~combout\(4),
	datad => \A~combout\(3),
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X32_Y5_N20
\ShiftRight0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\A~combout\(1) & (\B~combout\(19))) # (!\A~combout\(1) & ((\B~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datac => \A~combout\(1),
	datad => \B~combout\(17),
	combout => \ShiftRight0~33_combout\);

-- Location: LCCOMB_X31_Y4_N0
\ShiftRight0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (!\A~combout\(2) & !\A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datad => \A~combout\(3),
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X31_Y5_N18
\ShiftRight0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\ShiftRight0~32_combout\ & ((\A~combout\(0) & ((\ShiftRight0~33_combout\))) # (!\A~combout\(0) & (\ShiftRight0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~34_combout\,
	datab => \ShiftRight0~33_combout\,
	datac => \A~combout\(0),
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~35_combout\);

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(30),
	combout => \B~combout\(30));

-- Location: LCCOMB_X32_Y4_N26
\ShiftRight1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~8_combout\ = (\A~combout\(0) & (\B~combout\(31))) # (!\A~combout\(0) & ((\B~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(31),
	datad => \B~combout\(30),
	combout => \ShiftRight1~8_combout\);

-- Location: LCCOMB_X32_Y4_N24
\ShiftRight0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\ShiftRight0~26_combout\) # ((\ShiftRight1~8_combout\ & \A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~26_combout\,
	datab => \ShiftRight1~8_combout\,
	datad => \A~combout\(1),
	combout => \ShiftRight0~27_combout\);

-- Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(22),
	combout => \B~combout\(22));

-- Location: LCCOMB_X30_Y6_N26
\ShiftRight0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (\A~combout\(1) & (\B~combout\(22))) # (!\A~combout\(1) & ((\B~combout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(22),
	datac => \B~combout\(20),
	datad => \A~combout\(1),
	combout => \ShiftRight0~29_combout\);

-- Location: LCCOMB_X31_Y6_N16
\ShiftRight0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (\A~combout\(0) & (\ShiftRight0~28_combout\)) # (!\A~combout\(0) & ((\ShiftRight0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \ShiftRight0~29_combout\,
	datac => \A~combout\(0),
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X31_Y5_N4
\ShiftRight0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (\A~combout\(2) & ((\A~combout\(3) & (\ShiftRight0~27_combout\)) # (!\A~combout\(3) & ((\ShiftRight0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftRight0~30_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight0~31_combout\);

-- Location: LCCOMB_X31_Y5_N8
\ShiftRight0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (!\A~combout\(2) & \A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datad => \A~combout\(3),
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X31_Y5_N2
\ShiftRight0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\ShiftRight0~35_combout\) # ((\ShiftRight0~31_combout\) # ((\ShiftRight0~38_combout\ & \ShiftRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datab => \ShiftRight0~35_combout\,
	datac => \ShiftRight0~31_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X36_Y4_N12
\ShiftRight0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (!\ShiftLeft0~22_combout\ & ((\ShiftRight0~25_combout\) # ((\A~combout\(4) & \ShiftRight0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \ShiftRight0~25_combout\,
	datac => \ShiftRight0~40_combout\,
	datad => \ShiftLeft0~22_combout\,
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X36_Y4_N4
\Mux33~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~7_combout\ = (\Mux33~6_combout\ & ((\ShiftRight0~41_combout\) # ((\ShiftLeft0~22_combout\ & \B~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~6_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \B~combout\(31),
	datad => \ShiftRight0~41_combout\,
	combout => \Mux33~7_combout\);

-- Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(0),
	combout => \opcode~combout\(0));

-- Location: LCCOMB_X36_Y4_N14
\Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\opcode~combout\(1) & (\opcode~combout\(0))) # (!\opcode~combout\(1) & ((\opcode~combout\(0) & (\B~combout\(0) $ (\A~combout\(0)))) # (!\opcode~combout\(0) & (!\B~combout\(0) & !\A~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \B~combout\(0),
	datad => \A~combout\(0),
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X34_Y2_N24
\ShiftLeft0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\A~combout\(18)) # ((\A~combout\(17)) # ((\A~combout\(19)) # (\A~combout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \A~combout\(17),
	datac => \A~combout\(19),
	datad => \A~combout\(20),
	combout => \ShiftLeft0~15_combout\);

-- Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(15),
	combout => \A~combout\(15));

-- Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(13),
	combout => \A~combout\(13));

-- Location: LCCOMB_X32_Y2_N16
\ShiftLeft0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (\A~combout\(14)) # ((\A~combout\(15)) # ((\A~combout\(13)) # (\A~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(14),
	datab => \A~combout\(15),
	datac => \A~combout\(13),
	datad => \A~combout\(16),
	combout => \ShiftLeft0~14_combout\);

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X32_Y2_N12
\ShiftLeft0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\A~combout\(5)) # ((\A~combout\(8)) # ((\A~combout\(6)) # (\A~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \A~combout\(8),
	datac => \A~combout\(6),
	datad => \A~combout\(7),
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X32_Y2_N18
\ShiftLeft0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\ShiftLeft0~13_combout\) # ((\ShiftLeft0~15_combout\) # ((\ShiftLeft0~14_combout\) # (\ShiftLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \ShiftLeft0~15_combout\,
	datac => \ShiftLeft0~14_combout\,
	datad => \ShiftLeft0~12_combout\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X35_Y7_N20
\ShiftRight0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (!\ShiftLeft0~19_combout\ & (!\ShiftLeft0~16_combout\ & !\A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \A~combout\(4),
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X36_Y4_N16
\ShiftLeft0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (!\ShiftLeft0~20_combout\ & (!\A~combout\(3) & (\B~combout\(0) & \ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~20_combout\,
	datab => \A~combout\(3),
	datac => \B~combout\(0),
	datad => \ShiftRight0~12_combout\,
	combout => \ShiftLeft0~21_combout\);

-- Location: LCCOMB_X36_Y4_N2
\Mux33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux33~0_combout\ & ((\ShiftRight0~41_combout\) # ((!\opcode~combout\(1))))) # (!\Mux33~0_combout\ & (((\ShiftLeft0~21_combout\ & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~41_combout\,
	datab => \Mux33~0_combout\,
	datac => \ShiftLeft0~21_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X36_Y4_N10
\Mux33~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~8_combout\ = (\opcode~combout\(3) & ((\Mux33~5_combout\ & (\Mux33~7_combout\)) # (!\Mux33~5_combout\ & ((\Mux33~1_combout\))))) # (!\opcode~combout\(3) & (\Mux33~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux33~5_combout\,
	datac => \Mux33~7_combout\,
	datad => \Mux33~1_combout\,
	combout => \Mux33~8_combout\);

-- Location: LCCOMB_X36_Y3_N4
\Mux32~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\A~combout\(1) & ((\opcode~combout\(0)) # (\B~combout\(1)))) # (!\A~combout\(1) & (\opcode~combout\(0) & \B~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \opcode~combout\(0),
	datad => \B~combout\(1),
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X36_Y3_N22
\Mux32~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\opcode~combout\(1) & (\Add0~6_combout\ & ((!\opcode~combout\(2))))) # (!\opcode~combout\(1) & ((\opcode~combout\(2) & (\Add0~6_combout\)) # (!\opcode~combout\(2) & ((\Mux32~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \opcode~combout\(1),
	datac => \Mux32~2_combout\,
	datad => \opcode~combout\(2),
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X36_Y3_N20
\Mux32~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (\opcode~combout\(3) & ((\opcode~combout\(2)))) # (!\opcode~combout\(3) & (\Mux32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux32~3_combout\,
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(2),
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X32_Y4_N2
\ShiftRight1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = (\A~combout\(0) & ((\B~combout\(30)))) # (!\A~combout\(0) & (\B~combout\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \B~combout\(29),
	datad => \B~combout\(30),
	combout => \ShiftRight1~13_combout\);

-- Location: LCCOMB_X32_Y6_N4
\ShiftRight1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\A~combout\(2) & ((\A~combout\(1) & (\B~combout\(31))) # (!\A~combout\(1) & ((\ShiftRight1~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(31),
	datac => \A~combout\(2),
	datad => \ShiftRight1~13_combout\,
	combout => \ShiftRight1~17_combout\);

-- Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(27),
	combout => \B~combout\(27));

-- Location: LCCOMB_X30_Y5_N10
\ShiftRight0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\A~combout\(1) & ((\B~combout\(27)))) # (!\A~combout\(1) & (\B~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \B~combout\(27),
	datac => \A~combout\(1),
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X31_Y6_N22
\ShiftRight0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\A~combout\(0) & (\ShiftRight1~14_combout\)) # (!\A~combout\(0) & ((\ShiftRight0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datac => \A~combout\(0),
	datad => \ShiftRight0~36_combout\,
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X32_Y6_N10
\ShiftRight1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (\ShiftRight1~17_combout\) # ((!\A~combout\(2) & \ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \ShiftRight1~17_combout\,
	datad => \ShiftRight0~54_combout\,
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X30_Y6_N24
\ShiftRight1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\A~combout\(1) & ((\B~combout\(24)))) # (!\A~combout\(1) & (\B~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(22),
	datac => \B~combout\(24),
	datad => \A~combout\(1),
	combout => \ShiftRight1~15_combout\);

-- Location: LCCOMB_X31_Y6_N30
\ShiftRight0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\A~combout\(0) & ((\ShiftRight1~15_combout\))) # (!\A~combout\(0) & (\ShiftRight0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \ShiftRight1~15_combout\,
	datac => \A~combout\(0),
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X31_Y6_N8
\Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\A~combout\(2) & ((\ShiftRight0~60_combout\))) # (!\A~combout\(2) & (\ShiftRight0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \ShiftRight0~60_combout\,
	datad => \A~combout\(2),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X31_Y6_N2
\ShiftRight1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\A~combout\(3) & (\ShiftRight1~18_combout\)) # (!\A~combout\(3) & ((\Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~18_combout\,
	datac => \Mux24~0_combout\,
	datad => \A~combout\(3),
	combout => \ShiftRight1~19_combout\);

-- Location: LCCOMB_X36_Y2_N16
\Mux33~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~6_combout\ = (!\opcode~combout\(0) & !\opcode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux33~6_combout\);

-- Location: LCCOMB_X36_Y3_N18
\Mux32~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (\Mux33~6_combout\ & ((\ShiftLeft0~22_combout\ & ((\B~combout\(31)))) # (!\ShiftLeft0~22_combout\ & (\ShiftRight0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~51_combout\,
	datab => \Mux33~6_combout\,
	datac => \B~combout\(31),
	datad => \ShiftLeft0~22_combout\,
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X36_Y3_N2
\Mux32~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~7_combout\ = (\Mux32~5_combout\) # ((\Mux32~6_combout\ & \ShiftRight1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~6_combout\,
	datac => \ShiftRight1~19_combout\,
	datad => \Mux32~5_combout\,
	combout => \Mux32~7_combout\);

-- Location: LCCOMB_X36_Y3_N28
\ShiftLeft0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (\Mux16~0_combout\ & !\A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datac => \A~combout\(4),
	combout => \ShiftLeft0~24_combout\);

-- Location: LCCOMB_X36_Y3_N14
\Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\A~combout\(1) & (\opcode~combout\(0) & ((\opcode~combout\(1)) # (!\B~combout\(1))))) # (!\A~combout\(1) & (\opcode~combout\(0) $ (((!\opcode~combout\(1) & !\B~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \B~combout\(1),
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X36_Y3_N10
\Mux32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~0_combout\ & ((\ShiftRight0~59_combout\) # ((!\opcode~combout\(1))))) # (!\Mux32~0_combout\ & (((\ShiftLeft0~24_combout\ & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~59_combout\,
	datab => \ShiftLeft0~24_combout\,
	datac => \Mux32~0_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X36_Y3_N24
\Mux32~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~8_combout\ = (\Mux32~4_combout\ & ((\Mux32~7_combout\) # ((!\opcode~combout\(3))))) # (!\Mux32~4_combout\ & (((\opcode~combout\(3) & \Mux32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~4_combout\,
	datab => \Mux32~7_combout\,
	datac => \opcode~combout\(3),
	datad => \Mux32~1_combout\,
	combout => \Mux32~8_combout\);

-- Location: LCCOMB_X30_Y3_N20
\Mux30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (!\opcode~combout\(3) & (\opcode~combout\(1) $ (!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(3),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X30_Y3_N2
\Mux31~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~10_combout\ = (\Mux31~9_combout\ & (((\B~combout\(2) & \A~combout\(2))) # (!\Mux30~9_combout\))) # (!\Mux31~9_combout\ & (\Mux30~9_combout\ & ((\B~combout\(2)) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~9_combout\,
	datab => \Mux30~9_combout\,
	datac => \B~combout\(2),
	datad => \A~combout\(2),
	combout => \Mux31~10_combout\);

-- Location: LCCOMB_X30_Y3_N8
\Mux31~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~11_combout\ = (\Mux31~10_combout\ & (((\opcode~combout\(3)) # (!\opcode~combout\(1))) # (!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \Mux31~10_combout\,
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(3),
	combout => \Mux31~11_combout\);

-- Location: LCCOMB_X33_Y3_N0
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \B~combout\(2) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(2),
	datad => \opcode~combout\(2),
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X33_Y3_N2
\Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \B~combout\(1) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X33_Y3_N24
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (\A~combout\(3) $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & ((\A~combout\(3)) # (!\Add0~10\))) # (!\Add0~11_combout\ & (\A~combout\(3) & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X31_Y6_N28
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\A~combout\(2) & !\A~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datad => \A~combout\(3),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X32_Y6_N20
\ShiftRight1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~41_combout\ = (\ShiftRight0~39_combout\ & ((\ShiftRight1~40_combout\) # ((\ShiftRight1~13_combout\ & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~40_combout\,
	datab => \ShiftRight1~13_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight1~41_combout\);

-- Location: LCCOMB_X30_Y6_N16
\ShiftRight1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (\A~combout\(1) & ((\B~combout\(21)))) # (!\A~combout\(1) & (\B~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(19),
	datac => \B~combout\(21),
	datad => \A~combout\(1),
	combout => \ShiftRight1~33_combout\);

-- Location: LCCOMB_X31_Y6_N12
\ShiftRight1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~42_combout\ = (\ShiftRight0~32_combout\ & ((\A~combout\(0) & ((\ShiftRight0~29_combout\))) # (!\A~combout\(0) & (\ShiftRight1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \ShiftRight1~33_combout\,
	datac => \A~combout\(0),
	datad => \ShiftRight0~29_combout\,
	combout => \ShiftRight1~42_combout\);

-- Location: LCCOMB_X32_Y6_N6
\ShiftRight1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~43_combout\ = (!\ShiftRight1~41_combout\ & (!\ShiftRight1~42_combout\ & ((!\Mux9~2_combout\) # (!\ShiftRight1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~39_combout\,
	datab => \Mux9~2_combout\,
	datac => \ShiftRight1~41_combout\,
	datad => \ShiftRight1~42_combout\,
	combout => \ShiftRight1~43_combout\);

-- Location: LCCOMB_X33_Y6_N24
\ShiftRight1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~61_combout\ = ((\A~combout\(3) & (\A~combout\(2) & \B~combout\(31)))) # (!\ShiftRight1~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(2),
	datac => \ShiftRight1~43_combout\,
	datad => \B~combout\(31),
	combout => \ShiftRight1~61_combout\);

-- Location: LCCOMB_X36_Y6_N24
\ShiftLeft0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (!\A~combout\(1) & ((\A~combout\(0) & ((\B~combout\(2)))) # (!\A~combout\(0) & (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(1),
	datac => \B~combout\(2),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~28_combout\);

-- Location: LCCOMB_X36_Y6_N10
\ShiftLeft0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\A~combout\(0) & (\B~combout\(0))) # (!\A~combout\(0) & ((\B~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \B~combout\(1),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~23_combout\);

-- Location: LCCOMB_X36_Y6_N2
\ShiftLeft0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (\ShiftLeft0~28_combout\) # ((\A~combout\(1) & \ShiftLeft0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \ShiftLeft0~28_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LCCOMB_X31_Y3_N8
\Mux30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~14_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(3) & (\opcode~combout\(0) & !\B~combout\(3))) # (!\A~combout\(3) & (\opcode~combout\(0) $ (!\B~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \B~combout\(3),
	combout => \Mux30~14_combout\);

-- Location: LCCOMB_X33_Y6_N4
\Mux30~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~15_combout\ = ((\ShiftRight0~32_combout\ & (\ShiftLeft0~29_combout\ & \ShiftRight0~12_combout\))) # (!\Mux30~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \ShiftLeft0~29_combout\,
	datac => \Mux30~14_combout\,
	datad => \ShiftRight0~12_combout\,
	combout => \Mux30~15_combout\);

-- Location: LCCOMB_X32_Y6_N28
\ShiftLeft0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (!\A~combout\(0) & !\A~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \A~combout\(1),
	combout => \ShiftLeft0~27_combout\);

-- Location: LCCOMB_X33_Y6_N12
\ShiftRight0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\A~combout\(3) & \A~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \A~combout\(2),
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X33_Y6_N14
\ShiftRight0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = ((\B~combout\(31) & (\ShiftLeft0~27_combout\ & \ShiftRight0~53_combout\))) # (!\ShiftRight1~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \ShiftLeft0~27_combout\,
	datac => \ShiftRight1~43_combout\,
	datad => \ShiftRight0~53_combout\,
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X33_Y6_N26
\Mux30~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~16_combout\ = (\Mux30~7_combout\ & (\Mux30~15_combout\ & ((\ShiftRight0~67_combout\) # (\Mux30~14_combout\)))) # (!\Mux30~7_combout\ & (((\Mux30~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~7_combout\,
	datab => \Mux30~15_combout\,
	datac => \ShiftRight0~67_combout\,
	datad => \Mux30~14_combout\,
	combout => \Mux30~16_combout\);

-- Location: LCCOMB_X36_Y2_N4
\Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Mux30~5_combout\ & (((\opcode~combout\(2) & \ShiftLeft0~22_combout\)))) # (!\Mux30~5_combout\ & ((\ShiftRight0~12_combout\) # ((\opcode~combout\(2) & \ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \ShiftRight0~12_combout\,
	datac => \opcode~combout\(2),
	datad => \ShiftLeft0~22_combout\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X34_Y4_N18
\Mux30~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~17_combout\ = (\Mux30~22_combout\ & ((\ShiftRight1~61_combout\) # ((\Mux30~6_combout\)))) # (!\Mux30~22_combout\ & (((\Mux30~16_combout\ & !\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~22_combout\,
	datab => \ShiftRight1~61_combout\,
	datac => \Mux30~16_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux30~17_combout\);

-- Location: LCCOMB_X34_Y7_N0
\ShiftRight1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~10_combout\ = (\A~combout\(0) & ((\B~combout\(6)))) # (!\A~combout\(0) & (\B~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(5),
	datac => \A~combout\(0),
	datad => \B~combout\(6),
	combout => \ShiftRight1~10_combout\);

-- Location: LCCOMB_X32_Y5_N8
\ShiftRight1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\A~combout\(1) & ((\B~combout\(17)))) # (!\A~combout\(1) & (\B~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(15),
	datac => \A~combout\(1),
	datad => \B~combout\(17),
	combout => \ShiftRight1~23_combout\);

-- Location: LCCOMB_X32_Y5_N0
\ShiftRight1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (\A~combout\(0) & (\ShiftRight0~34_combout\)) # (!\A~combout\(0) & ((\ShiftRight1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~34_combout\,
	datac => \ShiftRight1~23_combout\,
	datad => \A~combout\(0),
	combout => \ShiftRight1~37_combout\);

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(11),
	combout => \B~combout\(11));

-- Location: LCCOMB_X33_Y5_N30
\ShiftRight1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\A~combout\(1) & (\B~combout\(13))) # (!\A~combout\(1) & ((\B~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(13),
	datac => \B~combout\(11),
	combout => \ShiftRight1~25_combout\);

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(12),
	combout => \B~combout\(12));

-- Location: LCCOMB_X33_Y5_N12
\ShiftRight0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\A~combout\(1) & (\B~combout\(14))) # (!\A~combout\(1) & ((\B~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(14),
	datac => \B~combout\(12),
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X33_Y5_N0
\ShiftRight1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = (\A~combout\(0) & ((\ShiftRight0~19_combout\))) # (!\A~combout\(0) & (\ShiftRight1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \ShiftRight1~25_combout\,
	datad => \ShiftRight0~19_combout\,
	combout => \ShiftRight1~38_combout\);

-- Location: LCCOMB_X33_Y5_N10
\ShiftRight0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (\A~combout\(2) & (\ShiftRight1~37_combout\)) # (!\A~combout\(2) & ((\ShiftRight1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \ShiftRight1~37_combout\,
	datad => \ShiftRight1~38_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: LCCOMB_X34_Y4_N6
\Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\A~combout\(3)) # ((\A~combout\(1) & !\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datac => \A~combout\(3),
	datad => \A~combout\(2),
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X34_Y7_N22
\ShiftRight1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (\A~combout\(1) & ((\B~combout\(9)))) # (!\A~combout\(1) & (\B~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \A~combout\(1),
	datac => \B~combout\(9),
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X34_Y7_N28
\ShiftRight0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\A~combout\(1) & (\B~combout\(10))) # (!\A~combout\(1) & ((\B~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(10),
	datac => \B~combout\(8),
	datad => \A~combout\(1),
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X34_Y7_N30
\ShiftRight1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (\A~combout\(0) & ((\ShiftRight0~22_combout\))) # (!\A~combout\(0) & (\ShiftRight1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~21_combout\,
	datac => \A~combout\(0),
	datad => \ShiftRight0~22_combout\,
	combout => \ShiftRight1~36_combout\);

-- Location: LCCOMB_X36_Y6_N18
\ShiftRight1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~9_combout\ = (\A~combout\(0) & (\B~combout\(4))) # (!\A~combout\(0) & ((\B~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datac => \B~combout\(3),
	datad => \A~combout\(0),
	combout => \ShiftRight1~9_combout\);

-- Location: LCCOMB_X35_Y4_N24
\Mux30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~12_combout\ = (\ShiftRight0~32_combout\ & (!\Mux30~4_combout\ & ((\ShiftRight1~9_combout\)))) # (!\ShiftRight0~32_combout\ & ((\Mux30~4_combout\) # ((\ShiftRight1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \Mux30~4_combout\,
	datac => \ShiftRight1~36_combout\,
	datad => \ShiftRight1~9_combout\,
	combout => \Mux30~12_combout\);

-- Location: LCCOMB_X34_Y4_N4
\Mux30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~13_combout\ = (\Mux30~4_combout\ & ((\Mux30~12_combout\ & ((\ShiftRight0~66_combout\))) # (!\Mux30~12_combout\ & (\ShiftRight1~10_combout\)))) # (!\Mux30~4_combout\ & (((\Mux30~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~4_combout\,
	datab => \ShiftRight1~10_combout\,
	datac => \ShiftRight0~66_combout\,
	datad => \Mux30~12_combout\,
	combout => \Mux30~13_combout\);

-- Location: LCCOMB_X34_Y4_N16
\Mux30~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~18_combout\ = (\Mux30~17_combout\ & ((\B~combout\(31)) # ((!\Mux30~6_combout\)))) # (!\Mux30~17_combout\ & (((\Mux30~13_combout\ & \Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux30~17_combout\,
	datac => \Mux30~13_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux30~18_combout\);

-- Location: LCCOMB_X35_Y2_N8
\Mux30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\opcode~combout\(3)) # ((\opcode~combout\(0) & (\opcode~combout\(1) $ (!\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(3),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X32_Y3_N12
\Mux30~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~19_combout\ = (\Mux30~10_combout\ & ((\Mux30~8_combout\ & ((\Mux30~18_combout\))) # (!\Mux30~8_combout\ & (\Add0~12_combout\)))) # (!\Mux30~10_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \Add0~12_combout\,
	datac => \Mux30~18_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux30~19_combout\);

-- Location: LCCOMB_X31_Y3_N30
\Mux30~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~20_combout\ = (\Mux30~19_combout\ & (((\A~combout\(3) & \B~combout\(3))) # (!\Mux30~9_combout\))) # (!\Mux30~19_combout\ & (\Mux30~9_combout\ & ((\A~combout\(3)) # (\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Mux30~19_combout\,
	datac => \Mux30~9_combout\,
	datad => \B~combout\(3),
	combout => \Mux30~20_combout\);

-- Location: LCCOMB_X30_Y3_N6
\Mux30~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~23_combout\ = (\Mux30~20_combout\ & (((\opcode~combout\(3)) # (!\opcode~combout\(1))) # (!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \Mux30~20_combout\,
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(3),
	combout => \Mux30~23_combout\);

-- Location: LCCOMB_X38_Y4_N10
\Mux29~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~12_combout\ = (\A~combout\(4) & ((\opcode~combout\(0)) # (\B~combout\(4)))) # (!\A~combout\(4) & (\opcode~combout\(0) & \B~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datac => \opcode~combout\(0),
	datad => \B~combout\(4),
	combout => \Mux29~12_combout\);

-- Location: LCCOMB_X38_Y4_N28
\Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (!\opcode~combout\(2) & (!\opcode~combout\(3) & !\opcode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(1),
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X36_Y2_N10
\Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\opcode~combout\(0) & ((\opcode~combout\(2)) # (!\opcode~combout\(1)))) # (!\opcode~combout\(0) & ((\opcode~combout\(1)) # (!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X33_Y4_N6
\Mux29~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\opcode~combout\(3) & (\opcode~combout\(2) & ((\Mux30~5_combout\) # (!\ShiftRight0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \Mux30~5_combout\,
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(2),
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X33_Y4_N22
\Mux29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~14_combout\ = (\Mux29~9_combout\ & ((\ShiftLeft0~19_combout\) # ((\ShiftLeft0~16_combout\)))) # (!\Mux29~9_combout\ & (((\opcode~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \opcode~combout\(3),
	datac => \ShiftLeft0~16_combout\,
	datad => \Mux29~9_combout\,
	combout => \Mux29~14_combout\);

-- Location: LCCOMB_X33_Y3_N4
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \B~combout\(4) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(4),
	datad => \opcode~combout\(2),
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X33_Y3_N26
\Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\A~combout\(4) & ((\Add0~14_combout\ & (\Add0~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~13\)))) # (!\A~combout\(4) & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\A~combout\(4) & (!\Add0~14_combout\ & !\Add0~13\)) # (!\A~combout\(4) & ((!\Add0~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X31_Y5_N14
\ShiftRight1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~45_combout\ = (\ShiftRight1~44_combout\ & ((\ShiftRight0~27_combout\) # ((\A~combout\(2))))) # (!\ShiftRight1~44_combout\ & (((\ShiftRight0~30_combout\ & !\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~44_combout\,
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftRight0~30_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight1~45_combout\);

-- Location: LCCOMB_X33_Y4_N0
\Mux29~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = (\Mux29~9_combout\ & (((\ShiftRight1~45_combout\) # (\Mux29~14_combout\)))) # (!\Mux29~9_combout\ & (\Add0~15_combout\ & ((!\Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~9_combout\,
	datab => \Add0~15_combout\,
	datac => \ShiftRight1~45_combout\,
	datad => \Mux29~14_combout\,
	combout => \Mux29~10_combout\);

-- Location: LCCOMB_X34_Y5_N28
\Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\A~combout\(3)) # ((\Mux30~5_combout\) # (!\ShiftRight0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datac => \ShiftRight0~12_combout\,
	datad => \Mux30~5_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X34_Y5_N20
\Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\ShiftRight0~12_combout\ & (!\Mux30~5_combout\ & ((\A~combout\(3)) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \A~combout\(2),
	datac => \ShiftRight0~12_combout\,
	datad => \Mux30~5_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X34_Y5_N18
\Mux29~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\Mux29~6_combout\ & ((\Mux29~5_combout\) # ((\Mux29~2_combout\)))) # (!\Mux29~6_combout\ & (((!\Mux29~2_combout\ & \ShiftRight0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~5_combout\,
	datab => \Mux29~6_combout\,
	datac => \Mux29~2_combout\,
	datad => \ShiftRight0~16_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X33_Y5_N20
\ShiftRight0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\A~combout\(1) & ((\B~combout\(11)))) # (!\A~combout\(1) & (\B~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(9),
	datac => \B~combout\(11),
	combout => \ShiftRight0~21_combout\);

-- Location: LCCOMB_X33_Y5_N18
\ShiftRight0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\A~combout\(0) & (\ShiftRight0~21_combout\)) # (!\A~combout\(0) & ((\ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight0~22_combout\,
	combout => \ShiftRight0~23_combout\);

-- Location: LCCOMB_X34_Y5_N6
\Mux29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\Mux29~7_combout\ & ((\ShiftRight0~70_combout\) # ((!\Mux29~2_combout\)))) # (!\Mux29~7_combout\ & (((\Mux29~2_combout\ & \ShiftRight0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~70_combout\,
	datab => \Mux29~7_combout\,
	datac => \Mux29~2_combout\,
	datad => \ShiftRight0~23_combout\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X34_Y4_N30
\Mux29~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = (\Mux29~14_combout\ & ((\Mux29~10_combout\ & (\B~combout\(31))) # (!\Mux29~10_combout\ & ((\Mux29~8_combout\))))) # (!\Mux29~14_combout\ & (((\Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux29~14_combout\,
	datac => \Mux29~10_combout\,
	datad => \Mux29~8_combout\,
	combout => \Mux29~11_combout\);

-- Location: LCCOMB_X38_Y4_N18
\Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\opcode~combout\(3) & (((!\opcode~combout\(0) & !\opcode~combout\(1))) # (!\opcode~combout\(2)))) # (!\opcode~combout\(3) & (\opcode~combout\(2) $ (((\opcode~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X38_Y4_N20
\Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~13_combout\ = (\Mux29~12_combout\ & ((\Mux9~3_combout\) # ((\Mux29~11_combout\ & \Mux9~4_combout\)))) # (!\Mux29~12_combout\ & (((\Mux29~11_combout\ & \Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~12_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux29~11_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux29~13_combout\);

-- Location: LCCOMB_X38_Y4_N6
\Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\B~combout\(5) & ((\opcode~combout\(0)) # (\A~combout\(5)))) # (!\B~combout\(5) & (\opcode~combout\(0) & \A~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(5),
	datac => \opcode~combout\(0),
	datad => \A~combout\(5),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X31_Y6_N20
\ShiftRight1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~47_combout\ = (\A~combout\(2) & ((\ShiftRight0~54_combout\))) # (!\A~combout\(2) & (\ShiftRight0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \ShiftRight0~60_combout\,
	datad => \ShiftRight0~54_combout\,
	combout => \ShiftRight1~47_combout\);

-- Location: LCCOMB_X34_Y4_N22
\ShiftRight1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~48_combout\ = (\A~combout\(3) & (\ShiftRight1~46_combout\)) # (!\A~combout\(3) & ((\ShiftRight1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~46_combout\,
	datac => \A~combout\(3),
	datad => \ShiftRight1~47_combout\,
	combout => \ShiftRight1~48_combout\);

-- Location: LCCOMB_X34_Y4_N28
\Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\Mux29~14_combout\ & (((\Mux29~9_combout\)))) # (!\Mux29~14_combout\ & ((\Mux29~9_combout\ & ((\ShiftRight1~48_combout\))) # (!\Mux29~9_combout\ & (\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Mux29~14_combout\,
	datac => \Mux29~9_combout\,
	datad => \ShiftRight1~48_combout\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X33_Y5_N6
\ShiftRight1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = (\A~combout\(1) & (\B~combout\(12))) # (!\A~combout\(1) & ((\B~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(12),
	datac => \A~combout\(1),
	datad => \B~combout\(10),
	combout => \ShiftRight1~12_combout\);

-- Location: LCCOMB_X33_Y5_N28
\ShiftRight0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\A~combout\(0) & ((\ShiftRight1~12_combout\))) # (!\A~combout\(0) & (\ShiftRight0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \ShiftRight0~21_combout\,
	datad => \ShiftRight1~12_combout\,
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X34_Y5_N2
\Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\Mux29~6_combout\ & (((\Mux29~2_combout\)))) # (!\Mux29~6_combout\ & ((\Mux29~2_combout\ & ((\ShiftRight0~49_combout\))) # (!\Mux29~2_combout\ & (\ShiftRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~46_combout\,
	datab => \Mux29~6_combout\,
	datac => \Mux29~2_combout\,
	datad => \ShiftRight0~49_combout\,
	combout => \Mux28~4_combout\);

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(18),
	combout => \B~combout\(18));

-- Location: LCCOMB_X32_Y5_N18
\ShiftRight1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (\A~combout\(1) & (\B~combout\(20))) # (!\A~combout\(1) & ((\B~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(20),
	datac => \A~combout\(1),
	datad => \B~combout\(18),
	combout => \ShiftRight1~16_combout\);

-- Location: LCCOMB_X31_Y5_N20
\ShiftRight0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = (\A~combout\(0) & (\ShiftRight1~16_combout\)) # (!\A~combout\(0) & ((\ShiftRight0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~16_combout\,
	datac => \ShiftRight0~33_combout\,
	datad => \A~combout\(0),
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X32_Y5_N16
\ShiftRight1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~11_combout\ = (\A~combout\(1) & ((\B~combout\(16)))) # (!\A~combout\(1) & (\B~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datac => \A~combout\(1),
	datad => \B~combout\(16),
	combout => \ShiftRight1~11_combout\);

-- Location: LCCOMB_X30_Y5_N4
\ShiftRight0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\A~combout\(1) & (\B~combout\(15))) # (!\A~combout\(1) & ((\B~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(15),
	datac => \A~combout\(1),
	datad => \B~combout\(13),
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X33_Y5_N8
\ShiftRight0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\A~combout\(0) & (\ShiftRight1~11_combout\)) # (!\A~combout\(0) & ((\ShiftRight0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~11_combout\,
	datac => \ShiftRight0~18_combout\,
	datad => \A~combout\(0),
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X34_Y5_N4
\ShiftRight0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (\A~combout\(2) & (\ShiftRight0~57_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \ShiftRight0~57_combout\,
	datad => \ShiftRight0~48_combout\,
	combout => \ShiftRight0~72_combout\);

-- Location: LCCOMB_X34_Y5_N22
\Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\Mux28~4_combout\ & (((\ShiftRight0~72_combout\) # (!\Mux29~6_combout\)))) # (!\Mux28~4_combout\ & (\Mux28~3_combout\ & ((\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Mux28~4_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \Mux29~6_combout\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X34_Y4_N10
\Mux28~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\Mux28~6_combout\ & ((\B~combout\(31)) # ((!\Mux29~14_combout\)))) # (!\Mux28~6_combout\ & (((\Mux28~5_combout\ & \Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux28~6_combout\,
	datac => \Mux28~5_combout\,
	datad => \Mux29~14_combout\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X38_Y4_N2
\Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\Mux28~0_combout\ & ((\Mux9~3_combout\) # ((\Mux28~7_combout\ & \Mux9~4_combout\)))) # (!\Mux28~0_combout\ & (((\Mux28~7_combout\ & \Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux28~7_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X38_Y4_N16
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\B~combout\(6) & ((\opcode~combout\(0)) # (\A~combout\(6)))) # (!\B~combout\(6) & (\opcode~combout\(0) & \A~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datac => \opcode~combout\(0),
	datad => \A~combout\(6),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X34_Y4_N0
\ShiftLeft0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (\A~combout\(1)) # ((\A~combout\(0)) # (\A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datac => \A~combout\(0),
	datad => \A~combout\(2),
	combout => \ShiftLeft0~20_combout\);

-- Location: LCCOMB_X34_Y4_N8
\ShiftRight1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~49_combout\ = (\A~combout\(3) & ((\ShiftLeft0~20_combout\ & ((\B~combout\(31)))) # (!\ShiftLeft0~20_combout\ & (\B~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftLeft0~20_combout\,
	datac => \B~combout\(30),
	datad => \B~combout\(31),
	combout => \ShiftRight1~49_combout\);

-- Location: LCCOMB_X30_Y5_N16
\ShiftRight1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\A~combout\(1) & ((\B~combout\(28)))) # (!\A~combout\(1) & (\B~combout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datac => \A~combout\(1),
	datad => \B~combout\(28),
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X32_Y4_N4
\ShiftRight1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\A~combout\(0) & ((\A~combout\(1) & ((\B~combout\(29)))) # (!\A~combout\(1) & (\B~combout\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(27),
	datac => \B~combout\(29),
	datad => \A~combout\(0),
	combout => \ShiftRight1~28_combout\);

-- Location: LCCOMB_X31_Y4_N28
\ShiftRight1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (\ShiftRight1~28_combout\) # ((!\A~combout\(0) & \ShiftRight1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \ShiftRight1~14_combout\,
	datad => \ShiftRight1~28_combout\,
	combout => \ShiftRight1~29_combout\);

-- Location: LCCOMB_X31_Y6_N0
\ShiftRight1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (\A~combout\(0) & (\ShiftRight1~31_combout\)) # (!\A~combout\(0) & ((\ShiftRight1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datab => \ShiftRight1~15_combout\,
	datac => \A~combout\(0),
	combout => \ShiftRight1~32_combout\);

-- Location: LCCOMB_X31_Y4_N24
\ShiftRight1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~50_combout\ = (\A~combout\(2) & (\ShiftRight1~29_combout\)) # (!\A~combout\(2) & ((\ShiftRight1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~29_combout\,
	datac => \ShiftRight1~32_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight1~50_combout\);

-- Location: LCCOMB_X34_Y4_N14
\ShiftRight1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~51_combout\ = (\ShiftRight1~49_combout\) # ((!\A~combout\(3) & \ShiftRight1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \ShiftRight1~49_combout\,
	datac => \ShiftRight1~50_combout\,
	combout => \ShiftRight1~51_combout\);

-- Location: LCCOMB_X34_Y4_N12
\Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\Mux27~6_combout\ & (((\B~combout\(31))) # (!\Mux29~9_combout\))) # (!\Mux27~6_combout\ & (\Mux29~9_combout\ & (\ShiftRight1~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~6_combout\,
	datab => \Mux29~9_combout\,
	datac => \ShiftRight1~51_combout\,
	datad => \B~combout\(31),
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X38_Y4_N8
\Mux27~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\Mux27~0_combout\ & ((\Mux9~3_combout\) # ((\Mux27~7_combout\ & \Mux9~4_combout\)))) # (!\Mux27~0_combout\ & (((\Mux27~7_combout\ & \Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~0_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux27~7_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux27~8_combout\);

-- Location: LCCOMB_X33_Y2_N0
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Add0~23_combout\ $ (\A~combout\(7) $ (!\Add0~22\)))) # (GND)
-- \Add0~25\ = CARRY((\Add0~23_combout\ & ((\A~combout\(7)) # (!\Add0~22\))) # (!\Add0~23_combout\ & (\A~combout\(7) & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \A~combout\(7),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X34_Y4_N26
\Mux26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux29~9_combout\ & ((\ShiftRight1~54_combout\) # ((\Mux29~14_combout\)))) # (!\Mux29~9_combout\ & (((\Add0~24_combout\ & !\Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~54_combout\,
	datab => \Mux29~9_combout\,
	datac => \Add0~24_combout\,
	datad => \Mux29~14_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X31_Y6_N6
\ShiftRight1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~53_combout\ = (\A~combout\(0) & (\ShiftRight0~29_combout\)) # (!\A~combout\(0) & ((\ShiftRight1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~29_combout\,
	datac => \A~combout\(0),
	datad => \ShiftRight1~33_combout\,
	combout => \ShiftRight1~53_combout\);

-- Location: LCCOMB_X32_Y6_N14
\ShiftRight0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = (\A~combout\(2) & (\ShiftRight1~53_combout\)) # (!\A~combout\(2) & ((\ShiftRight1~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~53_combout\,
	datac => \A~combout\(2),
	datad => \ShiftRight1~37_combout\,
	combout => \ShiftRight0~77_combout\);

-- Location: LCCOMB_X34_Y5_N12
\Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux29~2_combout\ & ((\Mux29~6_combout\) # ((\ShiftRight1~38_combout\)))) # (!\Mux29~2_combout\ & (!\Mux29~6_combout\ & ((\ShiftRight1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \Mux29~6_combout\,
	datac => \ShiftRight1~38_combout\,
	datad => \ShiftRight1~36_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X33_Y5_N26
\Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux26~4_combout\ & (((\ShiftRight0~77_combout\) # (!\Mux29~6_combout\)))) # (!\Mux26~4_combout\ & (\Mux26~3_combout\ & ((\Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~3_combout\,
	datab => \ShiftRight0~77_combout\,
	datac => \Mux26~4_combout\,
	datad => \Mux29~6_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X34_Y4_N24
\Mux26~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux26~6_combout\ & ((\B~combout\(31)) # ((!\Mux29~14_combout\)))) # (!\Mux26~6_combout\ & (((\Mux26~5_combout\ & \Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \Mux26~6_combout\,
	datac => \Mux26~5_combout\,
	datad => \Mux29~14_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X38_Y4_N14
\Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\B~combout\(7) & ((\opcode~combout\(0)) # (\A~combout\(7)))) # (!\B~combout\(7) & (\opcode~combout\(0) & \A~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datac => \opcode~combout\(0),
	datad => \A~combout\(7),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X38_Y4_N30
\Mux26~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (\Mux26~7_combout\ & ((\Mux9~4_combout\) # ((\Mux9~3_combout\ & \Mux26~0_combout\)))) # (!\Mux26~7_combout\ & (\Mux9~3_combout\ & (\Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~7_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux26~0_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux26~8_combout\);

-- Location: LCCOMB_X30_Y3_N12
\Mux30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~11_combout\ = (!\opcode~combout\(3) & (\opcode~combout\(1) & \opcode~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(3),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux30~11_combout\);

-- Location: LCCOMB_X35_Y3_N18
\Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (!\Mux30~5_combout\ & (\ShiftRight0~12_combout\ & (\A~combout\(3) & \opcode~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~5_combout\,
	datab => \ShiftRight0~12_combout\,
	datac => \A~combout\(3),
	datad => \opcode~combout\(3),
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X31_Y5_N6
\Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\A~combout\(2) & ((\ShiftRight0~30_combout\))) # (!\A~combout\(2) & (\ShiftRight0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~69_combout\,
	datac => \ShiftRight0~30_combout\,
	datad => \A~combout\(2),
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X31_Y5_N16
\ShiftRight0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~78_combout\ = (\ShiftRight0~38_combout\ & ((\ShiftRight0~32_combout\) # ((\Mux9~2_combout\ & \ShiftRight0~27_combout\)))) # (!\ShiftRight0~38_combout\ & (\Mux9~2_combout\ & (\ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datab => \Mux9~2_combout\,
	datac => \ShiftRight0~27_combout\,
	datad => \ShiftRight0~32_combout\,
	combout => \ShiftRight0~78_combout\);

-- Location: LCCOMB_X34_Y3_N28
\ShiftRight1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~55_combout\ = (\ShiftRight0~78_combout\) # ((\B~combout\(31) & \A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(31),
	datac => \A~combout\(3),
	datad => \ShiftRight0~78_combout\,
	combout => \ShiftRight1~55_combout\);

-- Location: LCCOMB_X35_Y2_N0
\Mux30~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~22_combout\ = (\opcode~combout\(2) & ((\opcode~combout\(0)) # ((\opcode~combout\(1)) # (!\ShiftRight0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftRight0~12_combout\,
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux30~22_combout\);

-- Location: LCCOMB_X34_Y3_N16
\Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux25~5_combout\ & (((\B~combout\(31)) # (!\Mux30~22_combout\)))) # (!\Mux25~5_combout\ & (\ShiftRight1~55_combout\ & ((\Mux30~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~5_combout\,
	datab => \ShiftRight1~55_combout\,
	datac => \B~combout\(31),
	datad => \Mux30~22_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X34_Y3_N12
\Mux30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~10_combout\ = (!\Mux30~9_combout\ & ((\Mux33~6_combout\) # ((!\Mux30~22_combout\) # (!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~6_combout\,
	datab => \Mux30~8_combout\,
	datac => \Mux30~9_combout\,
	datad => \Mux30~22_combout\,
	combout => \Mux30~10_combout\);

-- Location: LCCOMB_X34_Y3_N6
\Mux25~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\Mux30~8_combout\ & (((\Mux25~6_combout\ & \Mux30~10_combout\)))) # (!\Mux30~8_combout\ & ((\Add0~27_combout\) # ((!\Mux30~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \Mux30~8_combout\,
	datac => \Mux25~6_combout\,
	datad => \Mux30~10_combout\,
	combout => \Mux25~7_combout\);

-- Location: LCCOMB_X34_Y3_N4
\Mux25~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~8_combout\ = (\Mux30~9_combout\ & ((\A~combout\(8) & ((\B~combout\(8)) # (!\Mux25~7_combout\))) # (!\A~combout\(8) & (\B~combout\(8) & !\Mux25~7_combout\)))) # (!\Mux30~9_combout\ & (((\Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(8),
	datab => \B~combout\(8),
	datac => \Mux30~9_combout\,
	datad => \Mux25~7_combout\,
	combout => \Mux25~8_combout\);

-- Location: LCCOMB_X31_Y3_N20
\Mux25~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~9_combout\ = (\Mux23~1_combout\ & (((\Mux25~2_combout\)))) # (!\Mux23~1_combout\ & (!\Mux30~11_combout\ & ((\Mux25~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux23~1_combout\,
	datac => \Mux25~2_combout\,
	datad => \Mux25~8_combout\,
	combout => \Mux25~9_combout\);

-- Location: LCCOMB_X32_Y2_N24
\Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \B~combout\(9) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datad => \opcode~combout\(2),
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X33_Y4_N8
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \B~combout\(8) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(8),
	datad => \opcode~combout\(2),
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X33_Y2_N4
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = ((\A~combout\(9) $ (\Add0~29_combout\ $ (!\Add0~28\)))) # (GND)
-- \Add0~31\ = CARRY((\A~combout\(9) & ((\Add0~29_combout\) # (!\Add0~28\))) # (!\A~combout\(9) & (\Add0~29_combout\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(9),
	datab => \Add0~29_combout\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X32_Y3_N8
\Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux30~22_combout\ & ((\Mux30~6_combout\ & ((\B~combout\(31)))) # (!\Mux30~6_combout\ & (\ShiftRight1~56_combout\)))) # (!\Mux30~22_combout\ & (((\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~56_combout\,
	datab => \Mux30~22_combout\,
	datac => \B~combout\(31),
	datad => \Mux30~6_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X33_Y4_N16
\Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\opcode~combout\(1) & (((!\ShiftLeft0~16_combout\ & !\ShiftLeft0~19_combout\)) # (!\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftLeft0~16_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X34_Y5_N26
\ShiftRight0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\A~combout\(2) & ((\ShiftRight0~48_combout\))) # (!\A~combout\(2) & (\ShiftRight0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~49_combout\,
	datac => \A~combout\(2),
	datad => \ShiftRight0~48_combout\,
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X35_Y3_N26
\Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux30~6_combout\ & (((\ShiftRight0~50_combout\)))) # (!\Mux30~6_combout\ & ((\Mux24~3_combout\) # ((!\Mux30~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \Mux30~7_combout\,
	datac => \Mux30~6_combout\,
	datad => \ShiftRight0~50_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X32_Y3_N14
\Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux30~22_combout\ & (((\Mux24~5_combout\)))) # (!\Mux30~22_combout\ & (\Mux24~4_combout\ & ((\Mux24~2_combout\) # (\Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Mux30~22_combout\,
	datac => \Mux24~5_combout\,
	datad => \Mux24~4_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X32_Y3_N4
\Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux30~10_combout\ & ((\Mux30~8_combout\ & ((\Mux24~6_combout\))) # (!\Mux30~8_combout\ & (\Add0~30_combout\)))) # (!\Mux30~10_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \Add0~30_combout\,
	datac => \Mux24~6_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X31_Y3_N24
\Mux24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\Mux30~9_combout\ & ((\A~combout\(9) & ((\B~combout\(9)) # (!\Mux24~7_combout\))) # (!\A~combout\(9) & (\B~combout\(9) & !\Mux24~7_combout\)))) # (!\Mux30~9_combout\ & (((\Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \A~combout\(9),
	datac => \B~combout\(9),
	datad => \Mux24~7_combout\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X31_Y3_N18
\Mux24~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux24~9_combout\ = (\Mux23~1_combout\ & (((\Mux24~0_combout\)))) # (!\Mux23~1_combout\ & (!\Mux30~11_combout\ & (\Mux24~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux23~1_combout\,
	datac => \Mux24~8_combout\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~9_combout\);

-- Location: LCCOMB_X33_Y4_N10
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \B~combout\(10) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(10),
	datad => \opcode~combout\(2),
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X33_Y2_N6
\Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\A~combout\(10) & ((\Add0~32_combout\ & (\Add0~31\ & VCC)) # (!\Add0~32_combout\ & (!\Add0~31\)))) # (!\A~combout\(10) & ((\Add0~32_combout\ & (!\Add0~31\)) # (!\Add0~32_combout\ & ((\Add0~31\) # (GND)))))
-- \Add0~34\ = CARRY((\A~combout\(10) & (!\Add0~32_combout\ & !\Add0~31\)) # (!\A~combout\(10) & ((!\Add0~31\) # (!\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(10),
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X32_Y3_N18
\Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux30~22_combout\ & ((\Mux30~6_combout\ & ((\B~combout\(31)))) # (!\Mux30~6_combout\ & (\ShiftRight1~57_combout\)))) # (!\Mux30~22_combout\ & (((\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~57_combout\,
	datab => \Mux30~22_combout\,
	datac => \B~combout\(31),
	datad => \Mux30~6_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X33_Y5_N24
\ShiftRight1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (\A~combout\(0) & (\ShiftRight1~25_combout\)) # (!\A~combout\(0) & ((\ShiftRight1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \ShiftRight1~25_combout\,
	datad => \ShiftRight1~12_combout\,
	combout => \ShiftRight1~26_combout\);

-- Location: LCCOMB_X33_Y5_N22
\ShiftRight0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (\A~combout\(2) & (\ShiftRight1~24_combout\)) # (!\A~combout\(2) & ((\ShiftRight1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~24_combout\,
	datac => \ShiftRight1~26_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X32_Y3_N24
\Mux23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\Mux23~5_combout\ & (((\ShiftRight0~61_combout\) # (\Mux30~22_combout\)))) # (!\Mux23~5_combout\ & (\Mux23~4_combout\ & ((!\Mux30~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~4_combout\,
	datab => \Mux23~5_combout\,
	datac => \ShiftRight0~61_combout\,
	datad => \Mux30~22_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X32_Y3_N26
\Mux23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\Mux30~10_combout\ & ((\Mux30~8_combout\ & ((\Mux23~6_combout\))) # (!\Mux30~8_combout\ & (\Add0~33_combout\)))) # (!\Mux30~10_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \Add0~33_combout\,
	datac => \Mux23~6_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X31_Y3_N4
\Mux23~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~8_combout\ = (\Mux30~9_combout\ & ((\A~combout\(10) & ((\B~combout\(10)) # (!\Mux23~7_combout\))) # (!\A~combout\(10) & (!\Mux23~7_combout\ & \B~combout\(10))))) # (!\Mux30~9_combout\ & (((\Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \A~combout\(10),
	datac => \Mux23~7_combout\,
	datad => \B~combout\(10),
	combout => \Mux23~8_combout\);

-- Location: LCCOMB_X31_Y5_N22
\ShiftRight1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = (\A~combout\(0) & ((\ShiftRight1~33_combout\))) # (!\A~combout\(0) & (\ShiftRight1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~16_combout\,
	datac => \ShiftRight1~33_combout\,
	datad => \A~combout\(0),
	combout => \ShiftRight1~34_combout\);

-- Location: LCCOMB_X31_Y4_N12
\Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\A~combout\(2) & (\ShiftRight1~32_combout\)) # (!\A~combout\(2) & ((\ShiftRight1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~32_combout\,
	datac => \ShiftRight1~34_combout\,
	datad => \A~combout\(2),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X31_Y3_N26
\Mux23~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux23~9_combout\ = (\Mux23~1_combout\ & (((\Mux23~0_combout\)))) # (!\Mux23~1_combout\ & (!\Mux30~11_combout\ & (\Mux23~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux23~8_combout\,
	datac => \Mux23~0_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~9_combout\);

-- Location: LCCOMB_X32_Y3_N0
\Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux30~22_combout\ & ((\Mux30~6_combout\ & ((\B~combout\(31)))) # (!\Mux30~6_combout\ & (\ShiftRight1~62_combout\)))) # (!\Mux30~22_combout\ & (((\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~62_combout\,
	datab => \Mux30~22_combout\,
	datac => \B~combout\(31),
	datad => \Mux30~6_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X32_Y3_N30
\Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~2_combout\ & (((\ShiftRight0~66_combout\) # (\Mux30~22_combout\)))) # (!\Mux22~2_combout\ & (\Mux22~8_combout\ & ((!\Mux30~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~8_combout\,
	datab => \Mux22~2_combout\,
	datac => \ShiftRight0~66_combout\,
	datad => \Mux30~22_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X33_Y2_N8
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Add0~35_combout\ $ (\A~combout\(11) $ (!\Add0~34\)))) # (GND)
-- \Add0~37\ = CARRY((\Add0~35_combout\ & ((\A~combout\(11)) # (!\Add0~34\))) # (!\Add0~35_combout\ & (\A~combout\(11) & !\Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \A~combout\(11),
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X32_Y3_N16
\Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux30~10_combout\ & ((\Mux30~8_combout\ & (\Mux22~3_combout\)) # (!\Mux30~8_combout\ & ((\Add0~36_combout\))))) # (!\Mux30~10_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \Mux22~3_combout\,
	datac => \Add0~36_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X32_Y2_N26
\Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux30~9_combout\ & ((\A~combout\(11) & ((\B~combout\(11)) # (!\Mux22~4_combout\))) # (!\A~combout\(11) & (!\Mux22~4_combout\ & \B~combout\(11))))) # (!\Mux30~9_combout\ & (((\Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \A~combout\(11),
	datac => \Mux22~4_combout\,
	datad => \B~combout\(11),
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X30_Y5_N12
\ShiftRight0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\A~combout\(1) & (\B~combout\(26))) # (!\A~combout\(1) & ((\B~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datac => \A~combout\(1),
	datad => \B~combout\(24),
	combout => \ShiftRight0~37_combout\);

-- Location: LCCOMB_X31_Y6_N14
\ShiftRight1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = (\A~combout\(0) & ((\ShiftRight0~37_combout\))) # (!\A~combout\(0) & (\ShiftRight1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datab => \A~combout\(0),
	datac => \ShiftRight0~37_combout\,
	combout => \ShiftRight1~39_combout\);

-- Location: LCCOMB_X31_Y6_N4
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\A~combout\(2) & ((\ShiftRight1~39_combout\))) # (!\A~combout\(2) & (\ShiftRight1~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~53_combout\,
	datac => \ShiftRight1~39_combout\,
	datad => \A~combout\(2),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X31_Y3_N16
\Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\Mux23~1_combout\ & (((\Mux22~0_combout\)))) # (!\Mux23~1_combout\ & (!\Mux30~11_combout\ & (\Mux22~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux22~5_combout\,
	datac => \Mux22~0_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X33_Y2_N10
\Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38_combout\ & ((\A~combout\(12) & (\Add0~37\ & VCC)) # (!\A~combout\(12) & (!\Add0~37\)))) # (!\Add0~38_combout\ & ((\A~combout\(12) & (!\Add0~37\)) # (!\A~combout\(12) & ((\Add0~37\) # (GND)))))
-- \Add0~40\ = CARRY((\Add0~38_combout\ & (!\A~combout\(12) & !\Add0~37\)) # (!\Add0~38_combout\ & ((!\Add0~37\) # (!\A~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \A~combout\(12),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X31_Y5_N10
\ShiftRight0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (\A~combout\(0) & ((\ShiftRight0~33_combout\))) # (!\A~combout\(0) & (\ShiftRight0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~34_combout\,
	datab => \ShiftRight0~33_combout\,
	datad => \A~combout\(0),
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X33_Y5_N14
\ShiftRight0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\A~combout\(0) & (\ShiftRight0~18_combout\)) # (!\A~combout\(0) & ((\ShiftRight0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datac => \ShiftRight0~18_combout\,
	datad => \ShiftRight0~19_combout\,
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X34_Y5_N0
\ShiftRight0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (\A~combout\(2) & (\ShiftRight0~69_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \ShiftRight0~69_combout\,
	datad => \ShiftRight0~20_combout\,
	combout => \ShiftRight0~70_combout\);

-- Location: LCCOMB_X34_Y3_N2
\Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux30~22_combout\ & (((\Mux30~6_combout\)))) # (!\Mux30~22_combout\ & ((\Mux30~6_combout\ & ((\ShiftRight0~70_combout\))) # (!\Mux30~6_combout\ & (\Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datab => \Mux30~22_combout\,
	datac => \ShiftRight0~70_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X34_Y3_N0
\Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~4_combout\ & (((\B~combout\(31)) # (!\Mux30~22_combout\)))) # (!\Mux21~4_combout\ & (\ShiftRight1~63_combout\ & ((\Mux30~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~63_combout\,
	datab => \Mux21~4_combout\,
	datac => \B~combout\(31),
	datad => \Mux30~22_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X32_Y3_N22
\Mux21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux30~10_combout\ & ((\Mux30~8_combout\ & ((\Mux21~5_combout\))) # (!\Mux30~8_combout\ & (\Add0~39_combout\)))) # (!\Mux30~10_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \Add0~39_combout\,
	datac => \Mux21~5_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X32_Y2_N4
\Mux21~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux30~9_combout\ & ((\A~combout\(12) & ((\B~combout\(12)) # (!\Mux21~6_combout\))) # (!\A~combout\(12) & (\B~combout\(12) & !\Mux21~6_combout\)))) # (!\Mux30~9_combout\ & (((\Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \A~combout\(12),
	datac => \B~combout\(12),
	datad => \Mux21~6_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X31_Y5_N26
\Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\A~combout\(2) & (\ShiftRight0~38_combout\)) # (!\A~combout\(2) & ((\ShiftRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~38_combout\,
	datac => \ShiftRight0~30_combout\,
	datad => \A~combout\(2),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X31_Y3_N10
\Mux21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\Mux23~1_combout\ & (((\Mux21~0_combout\)))) # (!\Mux23~1_combout\ & (!\Mux30~11_combout\ & (\Mux21~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux21~7_combout\,
	datac => \Mux21~0_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X33_Y2_N12
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = ((\Add0~41_combout\ $ (\A~combout\(13) $ (!\Add0~40\)))) # (GND)
-- \Add0~43\ = CARRY((\Add0~41_combout\ & ((\A~combout\(13)) # (!\Add0~40\))) # (!\Add0~41_combout\ & (\A~combout\(13) & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \A~combout\(13),
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X34_Y3_N26
\Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux20~3_combout\ & (((\B~combout\(31)) # (!\Mux30~6_combout\)))) # (!\Mux20~3_combout\ & (\ShiftRight0~72_combout\ & ((\Mux30~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \ShiftRight0~72_combout\,
	datac => \B~combout\(31),
	datad => \Mux30~6_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X34_Y3_N24
\Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux30~10_combout\ & ((\Mux30~8_combout\ & ((\Mux20~4_combout\))) # (!\Mux30~8_combout\ & (\Add0~42_combout\)))) # (!\Mux30~10_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \Add0~42_combout\,
	datac => \Mux30~8_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X30_Y3_N18
\Mux20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux30~9_combout\ & ((\B~combout\(13) & ((\A~combout\(13)) # (!\Mux20~5_combout\))) # (!\B~combout\(13) & (\A~combout\(13) & !\Mux20~5_combout\)))) # (!\Mux30~9_combout\ & (((\Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(13),
	datab => \Mux30~9_combout\,
	datac => \A~combout\(13),
	datad => \Mux20~5_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X31_Y3_N0
\Mux20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\Mux23~1_combout\ & (((\ShiftRight1~47_combout\)))) # (!\Mux23~1_combout\ & (!\Mux30~11_combout\ & (\Mux20~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux20~6_combout\,
	datac => \ShiftRight1~47_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X32_Y5_N14
\ShiftRight1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (\A~combout\(0) & ((\ShiftRight1~23_combout\))) # (!\A~combout\(0) & (\ShiftRight1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~11_combout\,
	datac => \ShiftRight1~23_combout\,
	datad => \A~combout\(0),
	combout => \ShiftRight1~24_combout\);

-- Location: LCCOMB_X31_Y5_N28
\ShiftRight0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (\A~combout\(2) & (\ShiftRight1~34_combout\)) # (!\A~combout\(2) & ((\ShiftRight1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~34_combout\,
	datac => \ShiftRight1~24_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X32_Y3_N2
\Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux30~22_combout\ & (((\Mux30~6_combout\)))) # (!\Mux30~22_combout\ & ((\Mux30~6_combout\ & ((\ShiftRight0~74_combout\))) # (!\Mux30~6_combout\ & (\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux30~22_combout\,
	datac => \ShiftRight0~74_combout\,
	datad => \Mux30~6_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X31_Y4_N4
\ShiftRight1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~60_combout\ = (\A~combout\(3) & (\B~combout\(31))) # (!\A~combout\(3) & ((\ShiftLeft0~20_combout\ & (\B~combout\(31))) # (!\ShiftLeft0~20_combout\ & ((\B~combout\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \A~combout\(3),
	datac => \ShiftLeft0~20_combout\,
	datad => \B~combout\(30),
	combout => \ShiftRight1~60_combout\);

-- Location: LCCOMB_X32_Y3_N28
\Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux30~22_combout\ & ((\Mux19~3_combout\ & (\B~combout\(31))) # (!\Mux19~3_combout\ & ((\ShiftRight1~60_combout\))))) # (!\Mux30~22_combout\ & (\Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~22_combout\,
	datab => \Mux19~3_combout\,
	datac => \B~combout\(31),
	datad => \ShiftRight1~60_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X32_Y2_N28
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \B~combout\(14) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datad => \opcode~combout\(2),
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X33_Y2_N14
\Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\A~combout\(14) & ((\Add0~44_combout\ & (\Add0~43\ & VCC)) # (!\Add0~44_combout\ & (!\Add0~43\)))) # (!\A~combout\(14) & ((\Add0~44_combout\ & (!\Add0~43\)) # (!\Add0~44_combout\ & ((\Add0~43\) # (GND)))))
-- \Add0~46\ = CARRY((\A~combout\(14) & (!\Add0~44_combout\ & !\Add0~43\)) # (!\A~combout\(14) & ((!\Add0~43\) # (!\Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(14),
	datab => \Add0~44_combout\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X32_Y3_N10
\Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux30~10_combout\ & ((\Mux30~8_combout\ & (\Mux19~4_combout\)) # (!\Mux30~8_combout\ & ((\Add0~45_combout\))))) # (!\Mux30~10_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~10_combout\,
	datab => \Mux19~4_combout\,
	datac => \Add0~45_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux19~5_combout\);

-- Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(14),
	combout => \A~combout\(14));

-- Location: LCCOMB_X31_Y3_N28
\Mux19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux30~9_combout\ & ((\Mux19~5_combout\ & (\A~combout\(14) & \B~combout\(14))) # (!\Mux19~5_combout\ & ((\A~combout\(14)) # (\B~combout\(14)))))) # (!\Mux30~9_combout\ & (\Mux19~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \Mux19~5_combout\,
	datac => \A~combout\(14),
	datad => \B~combout\(14),
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X31_Y3_N6
\Mux19~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\Mux23~1_combout\ & (((\ShiftRight1~50_combout\)))) # (!\Mux23~1_combout\ & (!\Mux30~11_combout\ & (\Mux19~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux19~6_combout\,
	datac => \ShiftRight1~50_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X36_Y2_N22
\Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\A~combout\(15) & ((\opcode~combout\(0)) # (\B~combout\(15)))) # (!\A~combout\(15) & (\opcode~combout\(0) & \B~combout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(15),
	datac => \opcode~combout\(0),
	datad => \B~combout\(15),
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X36_Y2_N0
\Add0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = \opcode~combout\(2) $ (\B~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(2),
	datad => \B~combout\(15),
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X33_Y2_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\A~combout\(15) $ (\Add0~47_combout\ $ (!\Add0~46\)))) # (GND)
-- \Add0~49\ = CARRY((\A~combout\(15) & ((\Add0~47_combout\) # (!\Add0~46\))) # (!\A~combout\(15) & (\Add0~47_combout\ & !\Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(15),
	datab => \Add0~47_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X36_Y2_N28
\Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(2) & \Add0~48_combout\)))) # (!\opcode~combout\(1) & ((\opcode~combout\(2) & ((\Add0~48_combout\))) # (!\opcode~combout\(2) & (\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \Mux18~2_combout\,
	datac => \opcode~combout\(2),
	datad => \Add0~48_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X36_Y2_N26
\Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\opcode~combout\(3) & (\opcode~combout\(2))) # (!\opcode~combout\(3) & ((\Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \opcode~combout\(2),
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X32_Y6_N22
\ShiftRight1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~52_combout\ = (\ShiftRight1~40_combout\) # ((\ShiftRight1~13_combout\ & \A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~40_combout\,
	datab => \ShiftRight1~13_combout\,
	datac => \A~combout\(1),
	combout => \ShiftRight1~52_combout\);

-- Location: LCCOMB_X32_Y6_N26
\ShiftRight0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~83_combout\ = (\A~combout\(3) & ((\A~combout\(2) & ((\ShiftRight1~52_combout\))) # (!\A~combout\(2) & (\ShiftRight1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~39_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \ShiftRight1~52_combout\,
	combout => \ShiftRight0~83_combout\);

-- Location: LCCOMB_X32_Y6_N24
\ShiftRight0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~84_combout\ = (\ShiftRight0~12_combout\ & ((\ShiftRight0~83_combout\) # ((\ShiftRight0~77_combout\ & !\A~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \ShiftRight0~77_combout\,
	datac => \A~combout\(3),
	datad => \ShiftRight0~83_combout\,
	combout => \ShiftRight0~84_combout\);

-- Location: LCCOMB_X36_Y2_N24
\Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\Mux33~6_combout\ & ((\ShiftRight0~84_combout\) # ((!\ShiftRight0~12_combout\ & \B~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~6_combout\,
	datab => \ShiftRight0~84_combout\,
	datac => \ShiftRight0~12_combout\,
	datad => \B~combout\(31),
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X36_Y2_N2
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\opcode~combout\(1) & (((\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\A~combout\(15) & (\opcode~combout\(0) & !\B~combout\(15))) # (!\A~combout\(15) & (\opcode~combout\(0) $ (!\B~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \A~combout\(15),
	datac => \opcode~combout\(0),
	datad => \B~combout\(15),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X36_Y7_N12
\ShiftLeft0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\A~combout\(1) & (\B~combout\(4))) # (!\A~combout\(1) & ((\B~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \B~combout\(4),
	datad => \B~combout\(6),
	combout => \ShiftLeft0~39_combout\);

-- Location: LCCOMB_X36_Y7_N14
\ShiftLeft0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (\A~combout\(1) & (\B~combout\(5))) # (!\A~combout\(1) & ((\B~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(5),
	datac => \A~combout\(1),
	datad => \B~combout\(7),
	combout => \ShiftLeft0~42_combout\);

-- Location: LCCOMB_X35_Y7_N22
\ShiftLeft0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (\A~combout\(0) & (\ShiftLeft0~39_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \ShiftLeft0~39_combout\,
	datac => \ShiftLeft0~42_combout\,
	combout => \ShiftLeft0~43_combout\);

-- Location: LCCOMB_X35_Y6_N8
\ShiftLeft0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (\A~combout\(2) & ((\ShiftLeft0~29_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~43_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~29_combout\,
	combout => \ShiftLeft0~44_combout\);

-- Location: LCCOMB_X35_Y6_N30
\ShiftLeft0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = (\ShiftRight0~12_combout\ & ((\A~combout\(3) & ((\ShiftLeft0~44_combout\))) # (!\A~combout\(3) & (\ShiftLeft0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~73_combout\,
	datab => \A~combout\(3),
	datac => \ShiftLeft0~44_combout\,
	datad => \ShiftRight0~12_combout\,
	combout => \ShiftLeft0~74_combout\);

-- Location: LCCOMB_X36_Y2_N30
\Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & ((\ShiftRight0~86_combout\) # ((!\opcode~combout\(1))))) # (!\Mux18~0_combout\ & (((\ShiftLeft0~74_combout\ & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~86_combout\,
	datab => \Mux18~0_combout\,
	datac => \ShiftLeft0~74_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X36_Y2_N6
\Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\opcode~combout\(3) & ((\Mux18~4_combout\ & (\Mux18~5_combout\)) # (!\Mux18~4_combout\ & ((\Mux18~1_combout\))))) # (!\opcode~combout\(3) & (\Mux18~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux18~4_combout\,
	datac => \Mux18~5_combout\,
	datad => \Mux18~1_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X36_Y2_N20
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \opcode~combout\(2) $ (\B~combout\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datac => \B~combout\(16),
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X33_Y2_N18
\Add0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\A~combout\(16) & ((\Add0~50_combout\ & (\Add0~49\ & VCC)) # (!\Add0~50_combout\ & (!\Add0~49\)))) # (!\A~combout\(16) & ((\Add0~50_combout\ & (!\Add0~49\)) # (!\Add0~50_combout\ & ((\Add0~49\) # (GND)))))
-- \Add0~52\ = CARRY((\A~combout\(16) & (!\Add0~50_combout\ & !\Add0~49\)) # (!\A~combout\(16) & ((!\Add0~49\) # (!\Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(16),
	datab => \Add0~50_combout\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X38_Y3_N2
\Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\opcode~combout\(2) & (((\Add0~51_combout\ & !\opcode~combout\(1))))) # (!\opcode~combout\(2) & ((\opcode~combout\(1) & ((\Add0~51_combout\))) # (!\opcode~combout\(1) & (\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \opcode~combout\(2),
	datac => \Add0~51_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X38_Y3_N28
\Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\opcode~combout\(3) & ((\opcode~combout\(2)))) # (!\opcode~combout\(3) & (\Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux17~3_combout\,
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(2),
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X36_Y3_N26
\Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux33~6_combout\ & ((\ShiftRight0~12_combout\ & (\ShiftRight0~40_combout\)) # (!\ShiftRight0~12_combout\ & ((\B~combout\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \ShiftRight0~40_combout\,
	datac => \B~combout\(31),
	datad => \Mux33~6_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X34_Y7_N4
\ShiftLeft0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (\A~combout\(1) & ((\B~combout\(6)))) # (!\A~combout\(1) & (\B~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(1),
	datac => \B~combout\(8),
	datad => \B~combout\(6),
	combout => \ShiftLeft0~46_combout\);

-- Location: LCCOMB_X35_Y7_N12
\ShiftLeft0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (\A~combout\(0) & (\ShiftLeft0~42_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \ShiftLeft0~42_combout\,
	datac => \ShiftLeft0~46_combout\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LCCOMB_X35_Y5_N6
\ShiftLeft0~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~127_combout\ = (!\A~combout\(2) & (\A~combout\(3) & (!\A~combout\(4) & \ShiftLeft0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(3),
	datac => \A~combout\(4),
	datad => \ShiftLeft0~47_combout\,
	combout => \ShiftLeft0~127_combout\);

-- Location: LCCOMB_X36_Y4_N0
\ShiftRight0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~85_combout\ = (!\A~combout\(3) & (!\ShiftLeft0~20_combout\ & \A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \ShiftLeft0~20_combout\,
	datad => \A~combout\(4),
	combout => \ShiftRight0~85_combout\);

-- Location: LCCOMB_X35_Y6_N0
\ShiftRight0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (!\A~combout\(3) & !\A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \A~combout\(4),
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X36_Y5_N18
\ShiftLeft0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = (\ShiftLeft0~77_combout\ & ((\ShiftRight0~42_combout\) # ((\ShiftRight0~85_combout\ & \B~combout\(0))))) # (!\ShiftLeft0~77_combout\ & (\ShiftRight0~85_combout\ & (\B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~77_combout\,
	datab => \ShiftRight0~85_combout\,
	datac => \B~combout\(0),
	datad => \ShiftRight0~42_combout\,
	combout => \ShiftLeft0~78_combout\);

-- Location: LCCOMB_X36_Y5_N8
\ShiftLeft0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~80_combout\ = (!\ShiftLeft0~22_combout\ & ((\ShiftLeft0~79_combout\) # ((\ShiftLeft0~127_combout\) # (\ShiftLeft0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~79_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \ShiftLeft0~127_combout\,
	datad => \ShiftLeft0~78_combout\,
	combout => \ShiftLeft0~80_combout\);

-- Location: LCCOMB_X38_Y3_N8
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\B~combout\(16) & (\opcode~combout\(0) & ((\opcode~combout\(1)) # (!\A~combout\(16))))) # (!\B~combout\(16) & (\opcode~combout\(0) $ (((!\A~combout\(16) & !\opcode~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(16),
	datab => \A~combout\(16),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X38_Y3_N6
\Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & ((\ShiftRight0~93_combout\) # ((!\opcode~combout\(1))))) # (!\Mux17~0_combout\ & (((\ShiftLeft0~80_combout\ & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~93_combout\,
	datab => \ShiftLeft0~80_combout\,
	datac => \Mux17~0_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X38_Y3_N10
\Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\opcode~combout\(3) & ((\Mux17~4_combout\ & (\Mux17~5_combout\)) # (!\Mux17~4_combout\ & ((\Mux17~1_combout\))))) # (!\opcode~combout\(3) & (\Mux17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux17~4_combout\,
	datac => \Mux17~5_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X34_Y1_N30
\Mux16~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~11_combout\ = (\opcode~combout\(3)) # ((!\opcode~combout\(2)) # (!\opcode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux16~11_combout\);

-- Location: LCCOMB_X34_Y1_N16
\Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\opcode~combout\(3) & \opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(2),
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X34_Y1_N12
\Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux16~11_combout\ & ((\ShiftRight0~12_combout\) # ((!\Mux33~6_combout\) # (!\Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \Mux16~11_combout\,
	datac => \Mux9~5_combout\,
	datad => \Mux33~6_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X36_Y4_N30
\Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\opcode~combout\(1) & ((!\opcode~combout\(2)))) # (!\opcode~combout\(1) & (!\opcode~combout\(0) & \opcode~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X35_Y7_N4
\Mux30~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~21_combout\ = (\opcode~combout\(0)) # ((\ShiftLeft0~16_combout\) # ((\ShiftLeft0~19_combout\) # (\A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftLeft0~16_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \A~combout\(4),
	combout => \Mux30~21_combout\);

-- Location: LCCOMB_X32_Y5_N28
\ShiftLeft0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~81_combout\ = (\A~combout\(1) & (\B~combout\(15))) # (!\A~combout\(1) & ((\B~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(15),
	datac => \A~combout\(1),
	datad => \B~combout\(17),
	combout => \ShiftLeft0~81_combout\);

-- Location: LCCOMB_X32_Y5_N24
\ShiftLeft0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = (\A~combout\(1) & (\B~combout\(14))) # (!\A~combout\(1) & ((\B~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(14),
	datac => \A~combout\(1),
	datad => \B~combout\(16),
	combout => \ShiftLeft0~75_combout\);

-- Location: LCCOMB_X32_Y5_N26
\ShiftLeft0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~82_combout\ = (\A~combout\(0) & ((\ShiftLeft0~75_combout\))) # (!\A~combout\(0) & (\ShiftLeft0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~81_combout\,
	datac => \ShiftLeft0~75_combout\,
	datad => \A~combout\(0),
	combout => \ShiftLeft0~82_combout\);

-- Location: LCCOMB_X34_Y6_N24
\ShiftLeft0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = (\A~combout\(1) & ((\B~combout\(11)))) # (!\A~combout\(1) & (\B~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(13),
	datac => \B~combout\(11),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~64_combout\);

-- Location: LCCOMB_X34_Y6_N16
\ShiftLeft0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = (\A~combout\(1) & (\B~combout\(10))) # (!\A~combout\(1) & ((\B~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(10),
	datab => \B~combout\(12),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~61_combout\);

-- Location: LCCOMB_X35_Y6_N28
\ShiftLeft0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = (\A~combout\(0) & ((\ShiftLeft0~61_combout\))) # (!\A~combout\(0) & (\ShiftLeft0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~64_combout\,
	datac => \A~combout\(0),
	datad => \ShiftLeft0~61_combout\,
	combout => \ShiftLeft0~65_combout\);

-- Location: LCCOMB_X36_Y5_N14
\ShiftLeft0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~83_combout\ = (\A~combout\(2) & ((\ShiftLeft0~65_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datac => \ShiftLeft0~82_combout\,
	datad => \ShiftLeft0~65_combout\,
	combout => \ShiftLeft0~83_combout\);

-- Location: LCCOMB_X31_Y6_N26
\ShiftRight0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (\Mux9~2_combout\ & ((\A~combout\(0) & ((\ShiftRight1~15_combout\))) # (!\A~combout\(0) & (\ShiftRight0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \ShiftRight1~15_combout\,
	datac => \A~combout\(0),
	datad => \Mux9~2_combout\,
	combout => \ShiftRight0~56_combout\);

-- Location: LCCOMB_X32_Y6_N30
\ShiftRight0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\ShiftRight0~52_combout\ & ((\ShiftRight0~53_combout\) # ((\ShiftRight0~54_combout\ & \ShiftRight0~39_combout\)))) # (!\ShiftRight0~52_combout\ & (\ShiftRight0~54_combout\ & ((\ShiftRight0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~52_combout\,
	datab => \ShiftRight0~54_combout\,
	datac => \ShiftRight0~53_combout\,
	datad => \ShiftRight0~39_combout\,
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X31_Y6_N24
\ShiftRight0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (\ShiftRight0~56_combout\) # ((\ShiftRight0~55_combout\) # ((\ShiftRight0~57_combout\ & \ShiftRight0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~57_combout\,
	datab => \ShiftRight0~56_combout\,
	datac => \ShiftRight0~32_combout\,
	datad => \ShiftRight0~55_combout\,
	combout => \ShiftRight0~58_combout\);

-- Location: LCCOMB_X35_Y7_N0
\Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\A~combout\(3) & !\A~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datad => \A~combout\(4),
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X35_Y7_N26
\Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\opcode~combout\(0)) # ((!\ShiftLeft0~19_combout\ & (\Mux16~3_combout\ & !\ShiftLeft0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \Mux16~3_combout\,
	datac => \opcode~combout\(0),
	datad => \ShiftLeft0~16_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X36_Y3_N6
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\ShiftRight0~32_combout\ & (!\A~combout\(1) & (\ShiftLeft0~23_combout\ & !\ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datab => \A~combout\(1),
	datac => \ShiftLeft0~23_combout\,
	datad => \ShiftLeft0~22_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X35_Y5_N24
\Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\Mux16~2_combout\ & ((\Mux16~4_combout\ & (\ShiftRight0~58_combout\)) # (!\Mux16~4_combout\ & ((\Mux16~0_combout\))))) # (!\Mux16~2_combout\ & (((!\Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~2_combout\,
	datab => \ShiftRight0~58_combout\,
	datac => \Mux16~4_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X36_Y5_N16
\Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux30~21_combout\ & (((\Mux16~5_combout\)))) # (!\Mux30~21_combout\ & ((\Mux16~5_combout\ & ((\ShiftLeft0~83_combout\))) # (!\Mux16~5_combout\ & (\ShiftLeft0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~51_combout\,
	datab => \Mux30~21_combout\,
	datac => \ShiftLeft0~83_combout\,
	datad => \Mux16~5_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X36_Y4_N28
\Mux16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\opcode~combout\(2)) # ((!\opcode~combout\(1) & \opcode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X35_Y4_N14
\Mux16~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\Mux16~7_combout\ & ((\Mux16~8_combout\ & (\ShiftRight1~19_combout\)) # (!\Mux16~8_combout\ & ((\Mux16~6_combout\))))) # (!\Mux16~7_combout\ & (((!\Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~19_combout\,
	datab => \Mux16~7_combout\,
	datac => \Mux16~6_combout\,
	datad => \Mux16~8_combout\,
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X34_Y2_N8
\Mux16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~10_combout\ = (\Mux5~2_combout\ & ((\A~combout\(17) & (!\Mux16~9_combout\ & !\B~combout\(17))) # (!\A~combout\(17) & (\Mux16~9_combout\ $ (\B~combout\(17)))))) # (!\Mux5~2_combout\ & (((\Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \A~combout\(17),
	datac => \Mux16~9_combout\,
	datad => \B~combout\(17),
	combout => \Mux16~10_combout\);

-- Location: LCCOMB_X34_Y2_N18
\Add0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = \opcode~combout\(2) $ (\B~combout\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(2),
	datad => \B~combout\(17),
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X33_Y2_N20
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = ((\A~combout\(17) $ (\Add0~53_combout\ $ (!\Add0~52\)))) # (GND)
-- \Add0~55\ = CARRY((\A~combout\(17) & ((\Add0~53_combout\) # (!\Add0~52\))) # (!\A~combout\(17) & (\Add0~53_combout\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(17),
	datab => \Add0~53_combout\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X34_Y2_N12
\Mux16~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~13_combout\ = (\Mux30~9_combout\ & ((\A~combout\(17) & ((\Mux30~8_combout\) # (\B~combout\(17)))) # (!\A~combout\(17) & (\Mux30~8_combout\ & \B~combout\(17))))) # (!\Mux30~9_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \A~combout\(17),
	datac => \Mux30~8_combout\,
	datad => \B~combout\(17),
	combout => \Mux16~13_combout\);

-- Location: LCCOMB_X34_Y2_N14
\Mux16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~14_combout\ = (\Mux30~9_combout\ & (((\Mux16~13_combout\)))) # (!\Mux30~9_combout\ & ((\Mux16~13_combout\ & ((\Add0~54_combout\))) # (!\Mux16~13_combout\ & (\Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \Mux16~10_combout\,
	datac => \Add0~54_combout\,
	datad => \Mux16~13_combout\,
	combout => \Mux16~14_combout\);

-- Location: LCCOMB_X36_Y1_N26
\Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux9~5_combout\ & (\B~combout\(31) & (\Mux33~6_combout\ & !\ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \B~combout\(31),
	datac => \Mux33~6_combout\,
	datad => \ShiftRight0~12_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X35_Y1_N24
\Mux16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~12_combout\ = (\Mux16~1_combout\) # ((\Mux10~2_combout\ & \Mux16~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux16~14_combout\,
	datac => \Mux16~1_combout\,
	combout => \Mux16~12_combout\);

-- Location: LCCOMB_X34_Y2_N30
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = \B~combout\(18) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(18),
	datac => \opcode~combout\(2),
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X33_Y2_N22
\Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\A~combout\(18) & ((\Add0~56_combout\ & (\Add0~55\ & VCC)) # (!\Add0~56_combout\ & (!\Add0~55\)))) # (!\A~combout\(18) & ((\Add0~56_combout\ & (!\Add0~55\)) # (!\Add0~56_combout\ & ((\Add0~55\) # (GND)))))
-- \Add0~58\ = CARRY((\A~combout\(18) & (!\Add0~56_combout\ & !\Add0~55\)) # (!\A~combout\(18) & ((!\Add0~55\) # (!\Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(18),
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X34_Y2_N28
\Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux30~9_combout\ & ((\B~combout\(18) & ((\Mux30~8_combout\) # (\A~combout\(18)))) # (!\B~combout\(18) & (\Mux30~8_combout\ & \A~combout\(18))))) # (!\Mux30~9_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \B~combout\(18),
	datac => \Mux30~8_combout\,
	datad => \A~combout\(18),
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X34_Y2_N22
\Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux30~9_combout\ & (((\Mux15~6_combout\)))) # (!\Mux30~9_combout\ & ((\Mux15~6_combout\ & ((\Add0~57_combout\))) # (!\Mux15~6_combout\ & (\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \Add0~57_combout\,
	datac => \Mux30~9_combout\,
	datad => \Mux15~6_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X35_Y1_N10
\Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux16~1_combout\) # ((\Mux15~7_combout\ & \Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datac => \Mux15~7_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X33_Y2_N24
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\Add0~59_combout\ $ (\A~combout\(19) $ (!\Add0~58\)))) # (GND)
-- \Add0~61\ = CARRY((\Add0~59_combout\ & ((\A~combout\(19)) # (!\Add0~58\))) # (!\Add0~59_combout\ & (\A~combout\(19) & !\Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \A~combout\(19),
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X34_Y2_N0
\Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux30~9_combout\ & ((\A~combout\(19) & ((\Mux30~8_combout\) # (\B~combout\(19)))) # (!\A~combout\(19) & (\Mux30~8_combout\ & \B~combout\(19))))) # (!\Mux30~9_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \A~combout\(19),
	datac => \Mux30~8_combout\,
	datad => \B~combout\(19),
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X34_Y2_N6
\Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux30~9_combout\ & (((\Mux14~6_combout\)))) # (!\Mux30~9_combout\ & ((\Mux14~6_combout\ & ((\Add0~60_combout\))) # (!\Mux14~6_combout\ & (\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Add0~60_combout\,
	datac => \Mux30~9_combout\,
	datad => \Mux14~6_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X35_Y1_N20
\Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux16~1_combout\) # ((\Mux10~2_combout\ & \Mux14~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux14~7_combout\,
	datac => \Mux16~1_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X35_Y4_N12
\Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux16~7_combout\ & ((\Mux16~8_combout\ & ((\ShiftRight1~45_combout\))) # (!\Mux16~8_combout\ & (\Mux13~2_combout\)))) # (!\Mux16~7_combout\ & (((!\Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux16~7_combout\,
	datac => \ShiftRight1~45_combout\,
	datad => \Mux16~8_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X34_Y2_N4
\Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux5~2_combout\ & ((\B~combout\(20) & (!\Mux13~3_combout\ & !\A~combout\(20))) # (!\B~combout\(20) & (\Mux13~3_combout\ $ (\A~combout\(20)))))) # (!\Mux5~2_combout\ & (((\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \B~combout\(20),
	datac => \Mux13~3_combout\,
	datad => \A~combout\(20),
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X34_Y2_N10
\Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux30~9_combout\ & ((\B~combout\(20) & ((\Mux30~8_combout\) # (\A~combout\(20)))) # (!\B~combout\(20) & (\Mux30~8_combout\ & \A~combout\(20))))) # (!\Mux30~9_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \B~combout\(20),
	datac => \Mux30~8_combout\,
	datad => \A~combout\(20),
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X35_Y2_N26
\Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux30~9_combout\ & (((\Mux13~6_combout\)))) # (!\Mux30~9_combout\ & ((\Mux13~6_combout\ & (\Add0~63_combout\)) # (!\Mux13~6_combout\ & ((\Mux13~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~63_combout\,
	datab => \Mux13~4_combout\,
	datac => \Mux30~9_combout\,
	datad => \Mux13~6_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X35_Y1_N18
\Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux16~1_combout\) # ((\Mux10~2_combout\ & \Mux13~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux13~7_combout\,
	datac => \Mux16~1_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X35_Y2_N10
\Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = \opcode~combout\(2) $ (\B~combout\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datad => \B~combout\(21),
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X33_Y2_N28
\Add0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = ((\A~combout\(21) $ (\Add0~65_combout\ $ (!\Add0~64\)))) # (GND)
-- \Add0~67\ = CARRY((\A~combout\(21) & ((\Add0~65_combout\) # (!\Add0~64\))) # (!\A~combout\(21) & (\Add0~65_combout\ & !\Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(21),
	datab => \Add0~65_combout\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X35_Y2_N6
\Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux30~9_combout\ & ((\Mux30~8_combout\ & ((\A~combout\(21)) # (\B~combout\(21)))) # (!\Mux30~8_combout\ & (\A~combout\(21) & \B~combout\(21))))) # (!\Mux30~9_combout\ & (!\Mux30~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \Mux30~8_combout\,
	datac => \A~combout\(21),
	datad => \B~combout\(21),
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X35_Y2_N20
\Mux12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux30~9_combout\ & (((\Mux12~6_combout\)))) # (!\Mux30~9_combout\ & ((\Mux12~6_combout\ & ((\Add0~66_combout\))) # (!\Mux12~6_combout\ & (\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Add0~66_combout\,
	datac => \Mux30~9_combout\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X35_Y1_N0
\Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux16~1_combout\) # ((\Mux12~7_combout\ & \Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datac => \Mux12~7_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X35_Y2_N30
\Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux30~8_combout\ & (\Mux30~9_combout\ & ((\B~combout\(22)) # (\A~combout\(22))))) # (!\Mux30~8_combout\ & (((\B~combout\(22) & \A~combout\(22))) # (!\Mux30~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datab => \Mux30~8_combout\,
	datac => \Mux30~9_combout\,
	datad => \A~combout\(22),
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X35_Y2_N4
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (!\opcode~combout\(1) & !\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X31_Y4_N10
\ShiftRight0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~90_combout\ = (\ShiftRight0~73_combout\) # ((\A~combout\(2) & (!\A~combout\(3) & \ShiftRight1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~73_combout\,
	datab => \A~combout\(2),
	datac => \A~combout\(3),
	datad => \ShiftRight1~29_combout\,
	combout => \ShiftRight0~90_combout\);

-- Location: LCCOMB_X35_Y7_N18
\Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = \opcode~combout\(0) $ (((\ShiftLeft0~16_combout\) # ((\ShiftLeft0~19_combout\) # (\A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \ShiftLeft0~16_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \A~combout\(4),
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X34_Y7_N8
\Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux16~4_combout\ & (((\ShiftRight0~90_combout\ & \Mux16~2_combout\)))) # (!\Mux16~4_combout\ & ((\Mux11~0_combout\) # ((!\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \ShiftRight0~90_combout\,
	datac => \Mux16~4_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X30_Y6_N8
\ShiftLeft0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~97_combout\ = (\A~combout\(1) & ((\B~combout\(20)))) # (!\A~combout\(1) & (\B~combout\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(22),
	datac => \B~combout\(20),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~97_combout\);

-- Location: LCCOMB_X30_Y6_N22
\ShiftLeft0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~98_combout\ = (\A~combout\(0) & (\ShiftLeft0~94_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~94_combout\,
	datab => \A~combout\(0),
	datac => \ShiftLeft0~97_combout\,
	combout => \ShiftLeft0~98_combout\);

-- Location: LCCOMB_X33_Y5_N4
\ShiftLeft0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~86_combout\ = (\A~combout\(0) & ((\ShiftLeft0~81_combout\))) # (!\A~combout\(0) & (\ShiftLeft0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~85_combout\,
	datab => \ShiftLeft0~81_combout\,
	datad => \A~combout\(0),
	combout => \ShiftLeft0~86_combout\);

-- Location: LCCOMB_X33_Y7_N0
\ShiftLeft0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~99_combout\ = (\A~combout\(2) & ((\ShiftLeft0~86_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datac => \ShiftLeft0~98_combout\,
	datad => \ShiftLeft0~86_combout\,
	combout => \ShiftLeft0~99_combout\);

-- Location: LCCOMB_X34_Y7_N26
\Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~1_combout\ & (((\ShiftLeft0~99_combout\) # (\Mux30~21_combout\)))) # (!\Mux11~1_combout\ & (\ShiftLeft0~70_combout\ & ((!\Mux30~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~70_combout\,
	datab => \Mux11~1_combout\,
	datac => \ShiftLeft0~99_combout\,
	datad => \Mux30~21_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X35_Y4_N0
\Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux16~8_combout\ & (\ShiftRight1~51_combout\ & ((\Mux16~7_combout\)))) # (!\Mux16~8_combout\ & (((\Mux11~2_combout\) # (!\Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~51_combout\,
	datab => \Mux16~8_combout\,
	datac => \Mux11~2_combout\,
	datad => \Mux16~7_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X35_Y2_N28
\Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux5~2_combout\ & ((\B~combout\(22) & (!\A~combout\(22) & !\Mux11~3_combout\)) # (!\B~combout\(22) & (\A~combout\(22) $ (\Mux11~3_combout\))))) # (!\Mux5~2_combout\ & (((\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datab => \A~combout\(22),
	datac => \Mux5~2_combout\,
	datad => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X35_Y2_N12
\Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux11~6_combout\ & ((\Add0~69_combout\) # ((\Mux30~9_combout\)))) # (!\Mux11~6_combout\ & (((!\Mux30~9_combout\ & \Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~69_combout\,
	datab => \Mux11~6_combout\,
	datac => \Mux30~9_combout\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X35_Y1_N6
\Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux16~1_combout\) # ((\Mux10~2_combout\ & \Mux11~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux11~7_combout\,
	datac => \Mux16~1_combout\,
	combout => \Mux11~5_combout\);

-- Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(23),
	combout => \B~combout\(23));

-- Location: LCCOMB_X35_Y2_N18
\Mux10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux30~9_combout\ & ((\Mux30~8_combout\ & ((\A~combout\(23)) # (\B~combout\(23)))) # (!\Mux30~8_combout\ & (\A~combout\(23) & \B~combout\(23))))) # (!\Mux30~9_combout\ & (!\Mux30~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \Mux30~8_combout\,
	datac => \A~combout\(23),
	datad => \B~combout\(23),
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X34_Y1_N6
\Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = \B~combout\(23) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(23),
	datad => \opcode~combout\(2),
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X35_Y2_N14
\Add0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = \B~combout\(22) $ (\opcode~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(22),
	datad => \opcode~combout\(2),
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X33_Y1_N0
\Add0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = ((\A~combout\(23) $ (\Add0~71_combout\ $ (!\Add0~70\)))) # (GND)
-- \Add0~73\ = CARRY((\A~combout\(23) & ((\Add0~71_combout\) # (!\Add0~70\))) # (!\A~combout\(23) & (\Add0~71_combout\ & !\Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(23),
	datab => \Add0~71_combout\,
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X35_Y2_N2
\Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~5_combout\ & (((!\A~combout\(23) & !\B~combout\(23))) # (!\Mux5~2_combout\))) # (!\Mux10~5_combout\ & (\Mux5~2_combout\ & (\A~combout\(23) $ (\B~combout\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~5_combout\,
	datab => \Mux5~2_combout\,
	datac => \A~combout\(23),
	datad => \B~combout\(23),
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X35_Y2_N16
\Mux10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (\Mux30~9_combout\ & (\Mux10~9_combout\)) # (!\Mux30~9_combout\ & ((\Mux10~9_combout\ & (\Add0~72_combout\)) # (!\Mux10~9_combout\ & ((\Mux10~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \Mux10~9_combout\,
	datac => \Add0~72_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~10_combout\);

-- Location: LCCOMB_X35_Y1_N12
\Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux16~1_combout\) # ((\Mux10~10_combout\ & \Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datac => \Mux10~10_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X32_Y1_N4
\Mux9~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~13_combout\ = (\opcode~combout\(3) & ((!\opcode~combout\(2)) # (!\ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datac => \ShiftRight0~12_combout\,
	datad => \opcode~combout\(2),
	combout => \Mux9~13_combout\);

-- Location: LCCOMB_X33_Y1_N30
\Mux9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~14_combout\ = (\Mux9~5_combout\ & (((\Mux9~13_combout\) # (\ShiftRight1~55_combout\)))) # (!\Mux9~5_combout\ & (\Add0~75_combout\ & (!\Mux9~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Add0~75_combout\,
	datac => \Mux9~13_combout\,
	datad => \ShiftRight1~55_combout\,
	combout => \Mux9~14_combout\);

-- Location: LCCOMB_X32_Y1_N14
\Mux9~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~15_combout\ = (\Mux9~13_combout\ & ((\Mux9~14_combout\ & ((\B~combout\(31)))) # (!\Mux9~14_combout\ & (\Mux9~12_combout\)))) # (!\Mux9~13_combout\ & (((\Mux9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~12_combout\,
	datab => \Mux9~13_combout\,
	datac => \B~combout\(31),
	datad => \Mux9~14_combout\,
	combout => \Mux9~15_combout\);

-- Location: LCCOMB_X33_Y1_N24
\Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\A~combout\(24) & ((\opcode~combout\(0)) # (\B~combout\(24)))) # (!\A~combout\(24) & (\opcode~combout\(0) & \B~combout\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(24),
	datac => \opcode~combout\(0),
	datad => \B~combout\(24),
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X32_Y1_N0
\Mux9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~16_combout\ = (\Mux9~15_combout\ & ((\Mux9~4_combout\) # ((\Mux9~6_combout\ & \Mux9~3_combout\)))) # (!\Mux9~15_combout\ & (\Mux9~6_combout\ & (\Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~15_combout\,
	datab => \Mux9~6_combout\,
	datac => \Mux9~3_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~16_combout\);

-- Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(25),
	combout => \B~combout\(25));

-- Location: LCCOMB_X33_Y4_N24
\Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\opcode~combout\(0) & ((\A~combout\(25)) # (\B~combout\(25)))) # (!\opcode~combout\(0) & (\A~combout\(25) & \B~combout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \A~combout\(25),
	datad => \B~combout\(25),
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X33_Y4_N18
\Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\opcode~combout\(1) & (((!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\B~combout\(25) & (!\A~combout\(25) & \opcode~combout\(0))) # (!\B~combout\(25) & (\A~combout\(25) $ (!\opcode~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \B~combout\(25),
	datac => \A~combout\(25),
	datad => \opcode~combout\(0),
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X33_Y4_N4
\Mux9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~10_combout\ = (\opcode~combout\(1) & ((\ShiftRight0~12_combout\) # (!\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datac => \ShiftRight0~12_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux9~10_combout\);

-- Location: LCCOMB_X32_Y6_N8
\ShiftRight0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~79_combout\ = (\ShiftRight0~52_combout\ & ((\Mux9~2_combout\) # ((\ShiftRight0~32_combout\ & \ShiftRight0~54_combout\)))) # (!\ShiftRight0~52_combout\ & (\ShiftRight0~32_combout\ & ((\ShiftRight0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~52_combout\,
	datab => \ShiftRight0~32_combout\,
	datac => \Mux9~2_combout\,
	datad => \ShiftRight0~54_combout\,
	combout => \ShiftRight0~79_combout\);

-- Location: LCCOMB_X33_Y4_N20
\Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~5_combout\ & ((\Mux8~10_combout\) # ((!\Mux9~10_combout\)))) # (!\Mux8~5_combout\ & (((\Mux9~10_combout\ & \ShiftRight0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~10_combout\,
	datab => \Mux8~5_combout\,
	datac => \Mux9~10_combout\,
	datad => \ShiftRight0~79_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X32_Y1_N16
\Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~7_combout\ & ((\B~combout\(31)) # ((!\Mux9~13_combout\)))) # (!\Mux8~7_combout\ & (((\Mux9~13_combout\ & \Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~7_combout\,
	datab => \B~combout\(31),
	datac => \Mux9~13_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X32_Y1_N2
\Mux8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\Mux8~2_combout\ & ((\Mux9~3_combout\) # ((\Mux8~8_combout\ & \Mux9~4_combout\)))) # (!\Mux8~2_combout\ & (((\Mux8~8_combout\ & \Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux8~8_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X31_Y4_N14
\ShiftRight1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (\A~combout\(0) & (((\B~combout\(31))))) # (!\A~combout\(0) & ((\A~combout\(1) & ((\B~combout\(31)))) # (!\A~combout\(1) & (\B~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(30),
	datac => \B~combout\(31),
	datad => \A~combout\(1),
	combout => \ShiftRight1~27_combout\);

-- Location: LCCOMB_X31_Y4_N30
\ShiftRight1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\A~combout\(2) & ((\ShiftRight1~27_combout\))) # (!\A~combout\(2) & (\ShiftRight1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~29_combout\,
	datac => \ShiftRight1~27_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight1~30_combout\);

-- Location: LCCOMB_X31_Y4_N26
\ShiftRight1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~57_combout\ = (\A~combout\(3) & ((\B~combout\(31)))) # (!\A~combout\(3) & (\ShiftRight1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~30_combout\,
	datac => \B~combout\(31),
	datad => \A~combout\(3),
	combout => \ShiftRight1~57_combout\);

-- Location: LCCOMB_X32_Y1_N6
\Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & ((\B~combout\(31)) # ((!\Mux9~5_combout\)))) # (!\Mux7~7_combout\ & (((\Mux9~5_combout\ & \ShiftRight1~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~7_combout\,
	datab => \B~combout\(31),
	datac => \Mux9~5_combout\,
	datad => \ShiftRight1~57_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X32_Y2_N2
\Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\B~combout\(26) & ((\A~combout\(26)) # (\opcode~combout\(0)))) # (!\B~combout\(26) & (\A~combout\(26) & \opcode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(26),
	datac => \A~combout\(26),
	datad => \opcode~combout\(0),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X32_Y1_N12
\Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\Mux7~8_combout\ & ((\Mux9~4_combout\) # ((\Mux9~3_combout\ & \Mux7~2_combout\)))) # (!\Mux7~8_combout\ & (\Mux9~3_combout\ & (\Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~8_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux7~2_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X34_Y7_N16
\ShiftLeft0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = (\A~combout\(1) & ((\B~combout\(8)))) # (!\A~combout\(1) & (\B~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(10),
	datac => \B~combout\(8),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~54_combout\);

-- Location: LCCOMB_X34_Y6_N22
\ShiftLeft0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = (\A~combout\(1) & (\B~combout\(9))) # (!\A~combout\(1) & ((\B~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(9),
	datac => \B~combout\(11),
	datad => \A~combout\(1),
	combout => \ShiftLeft0~58_combout\);

-- Location: LCCOMB_X34_Y6_N0
\ShiftLeft0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = (\A~combout\(0) & (\ShiftLeft0~54_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(0),
	datac => \ShiftLeft0~54_combout\,
	datad => \ShiftLeft0~58_combout\,
	combout => \ShiftLeft0~59_combout\);

-- Location: LCCOMB_X34_Y6_N30
\ShiftLeft0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = (\A~combout\(2) & ((\ShiftLeft0~43_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~59_combout\,
	datac => \A~combout\(2),
	datad => \ShiftLeft0~43_combout\,
	combout => \ShiftLeft0~60_combout\);

-- Location: LCCOMB_X36_Y6_N22
\ShiftLeft0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = (\ShiftRight0~39_combout\ & ((\ShiftLeft0~28_combout\) # ((\A~combout\(1) & \ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~28_combout\,
	datab => \A~combout\(1),
	datac => \ShiftRight0~39_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LCCOMB_X33_Y6_N0
\ShiftLeft0~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~113_combout\ = (\ShiftLeft0~57_combout\) # ((\ShiftLeft0~60_combout\ & !\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~60_combout\,
	datac => \A~combout\(3),
	datad => \ShiftLeft0~57_combout\,
	combout => \ShiftLeft0~113_combout\);

-- Location: LCCOMB_X30_Y6_N30
\ShiftLeft0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~101_combout\ = (\A~combout\(0) & ((\ShiftLeft0~97_combout\))) # (!\A~combout\(0) & (\ShiftLeft0~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~100_combout\,
	datab => \ShiftLeft0~97_combout\,
	datac => \A~combout\(0),
	combout => \ShiftLeft0~101_combout\);

-- Location: LCCOMB_X35_Y6_N20
\Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\A~combout\(4)) # ((\A~combout\(2) & !\A~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \A~combout\(3),
	datac => \A~combout\(4),
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X33_Y6_N18
\Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux6~3_combout\ & ((\ShiftLeft0~113_combout\) # ((!\Mux9~7_combout\)))) # (!\Mux6~3_combout\ & (((\ShiftLeft0~101_combout\ & \Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \ShiftLeft0~113_combout\,
	datac => \ShiftLeft0~101_combout\,
	datad => \Mux9~7_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X33_Y6_N28
\Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (!\ShiftLeft0~19_combout\ & (!\ShiftLeft0~16_combout\ & \Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X32_Y6_N16
\ShiftRight1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~58_combout\ = (\ShiftRight0~32_combout\ & ((\ShiftRight1~40_combout\) # ((\A~combout\(1) & \ShiftRight1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~40_combout\,
	datab => \ShiftRight0~32_combout\,
	datac => \A~combout\(1),
	datad => \ShiftRight1~13_combout\,
	combout => \ShiftRight1~58_combout\);

-- Location: LCCOMB_X33_Y6_N20
\ShiftRight0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~81_combout\ = (\ShiftRight1~58_combout\) # ((\B~combout\(31) & (\ShiftLeft0~27_combout\ & \Mux9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \ShiftLeft0~27_combout\,
	datac => \Mux9~2_combout\,
	datad => \ShiftRight1~58_combout\,
	combout => \ShiftRight0~81_combout\);

-- Location: LCCOMB_X33_Y4_N26
\Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux6~5_combout\ & (((\Mux6~10_combout\)) # (!\Mux9~10_combout\))) # (!\Mux6~5_combout\ & (\Mux9~10_combout\ & ((\ShiftRight0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \Mux9~10_combout\,
	datac => \Mux6~10_combout\,
	datad => \ShiftRight0~81_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X32_Y1_N10
\Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\ & ((\B~combout\(31)) # ((!\Mux9~13_combout\)))) # (!\Mux6~7_combout\ & (((\Mux9~13_combout\ & \Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~7_combout\,
	datab => \B~combout\(31),
	datac => \Mux9~13_combout\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X32_Y1_N30
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\A~combout\(27) & ((\B~combout\(27)) # (\opcode~combout\(0)))) # (!\A~combout\(27) & (\B~combout\(27) & \opcode~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(27),
	datac => \B~combout\(27),
	datad => \opcode~combout\(0),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X32_Y1_N8
\Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~8_combout\ & ((\Mux9~4_combout\) # ((\Mux6~2_combout\ & \Mux9~3_combout\)))) # (!\Mux6~8_combout\ & (\Mux6~2_combout\ & (\Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux6~2_combout\,
	datac => \Mux9~3_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X32_Y4_N22
\ShiftRight0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~82_combout\ = (\ShiftRight0~32_combout\ & ((\ShiftRight0~26_combout\) # ((\ShiftRight1~8_combout\ & \A~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~26_combout\,
	datab => \ShiftRight1~8_combout\,
	datac => \ShiftRight0~32_combout\,
	datad => \A~combout\(1),
	combout => \ShiftRight0~82_combout\);

-- Location: LCCOMB_X34_Y3_N14
\ShiftRight1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~63_combout\ = (\ShiftRight0~82_combout\) # ((\B~combout\(31) & ((\A~combout\(3)) # (\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(31),
	datac => \ShiftRight0~82_combout\,
	datad => \A~combout\(2),
	combout => \ShiftRight1~63_combout\);

-- Location: LCCOMB_X36_Y1_N18
\Mux33~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~9_combout\ = (\opcode~combout\(1) & !\opcode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux33~9_combout\);

-- Location: LCCOMB_X36_Y1_N30
\Mux5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\opcode~combout\(2) & (((!\ShiftRight0~12_combout\)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & (!\opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(2),
	datac => \opcode~combout\(1),
	datad => \ShiftRight0~12_combout\,
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X36_Y1_N0
\Mux5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (!\opcode~combout\(2) & (((\Mux5~10_combout\) # (!\Mux33~9_combout\)) # (!\ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~22_combout\,
	datab => \Mux33~9_combout\,
	datac => \opcode~combout\(2),
	datad => \Mux5~10_combout\,
	combout => \Mux5~11_combout\);

-- Location: LCCOMB_X35_Y3_N22
\Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (!\A~combout\(4) & \opcode~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datac => \opcode~combout\(0),
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X35_Y3_N4
\Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = ((!\ShiftLeft0~19_combout\ & (\Mux5~5_combout\ & !\ShiftLeft0~16_combout\))) # (!\opcode~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \Mux5~5_combout\,
	datac => \ShiftLeft0~16_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X35_Y3_N2
\Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\opcode~combout\(1) & ((\A~combout\(4)) # (\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(4),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X35_Y3_N8
\Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~6_combout\ & ((\Mux5~7_combout\ & ((\ShiftRight0~82_combout\))) # (!\Mux5~7_combout\ & (!\tmp~0_combout\)))) # (!\Mux5~6_combout\ & (((!\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~0_combout\,
	datab => \ShiftRight0~82_combout\,
	datac => \Mux5~6_combout\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X32_Y5_N30
\ShiftLeft0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~88_combout\ = (\A~combout\(1) & ((\B~combout\(17)))) # (!\A~combout\(1) & (\B~combout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(19),
	datac => \A~combout\(1),
	datad => \B~combout\(17),
	combout => \ShiftLeft0~88_combout\);

-- Location: LCCOMB_X32_Y5_N4
\ShiftLeft0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~91_combout\ = (\A~combout\(1) & ((\B~combout\(18)))) # (!\A~combout\(1) & (\B~combout\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(20),
	datac => \A~combout\(1),
	datad => \B~combout\(18),
	combout => \ShiftLeft0~91_combout\);

-- Location: LCCOMB_X32_Y5_N22
\ShiftLeft0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~92_combout\ = (\A~combout\(0) & (\ShiftLeft0~88_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~88_combout\,
	datac => \ShiftLeft0~91_combout\,
	datad => \A~combout\(0),
	combout => \ShiftLeft0~92_combout\);

-- Location: LCCOMB_X32_Y5_N2
\ShiftLeft0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = (\A~combout\(0) & (\ShiftLeft0~71_combout\)) # (!\A~combout\(0) & ((\ShiftLeft0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~71_combout\,
	datac => \ShiftLeft0~75_combout\,
	datad => \A~combout\(0),
	combout => \ShiftLeft0~76_combout\);

-- Location: LCCOMB_X35_Y5_N26
\ShiftLeft0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~93_combout\ = (\A~combout\(2) & ((\ShiftLeft0~76_combout\))) # (!\A~combout\(2) & (\ShiftLeft0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~92_combout\,
	datac => \ShiftLeft0~76_combout\,
	datad => \A~combout\(2),
	combout => \ShiftLeft0~93_combout\);

-- Location: LCCOMB_X30_Y5_N22
\ShiftLeft0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~108_combout\ = (\A~combout\(0) & (\B~combout\(25))) # (!\A~combout\(0) & ((\B~combout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datac => \B~combout\(26),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~108_combout\);

-- Location: LCCOMB_X35_Y4_N10
\Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & (((\ShiftLeft0~93_combout\)) # (!\Mux30~4_combout\))) # (!\Mux5~3_combout\ & (\Mux30~4_combout\ & ((\ShiftLeft0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux30~4_combout\,
	datac => \ShiftLeft0~93_combout\,
	datad => \ShiftLeft0~108_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X35_Y1_N30
\Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\Mux5~8_combout\ & (((\Mux5~4_combout\) # (!\Mux33~9_combout\)))) # (!\Mux5~8_combout\ & (\ShiftLeft0~114_combout\ & ((\Mux33~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~114_combout\,
	datab => \Mux5~8_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux33~9_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X35_Y1_N28
\Mux5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~12_combout\ = (\Mux5~11_combout\ & ((\Mux5~10_combout\ & (\tmp~1_combout\)) # (!\Mux5~10_combout\ & ((\Mux5~9_combout\))))) # (!\Mux5~11_combout\ & (((\Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~1_combout\,
	datab => \Mux5~11_combout\,
	datac => \Mux5~10_combout\,
	datad => \Mux5~9_combout\,
	combout => \Mux5~12_combout\);

-- Location: LCCOMB_X34_Y1_N26
\Mux5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~13_combout\ = (\opcode~combout\(2) & ((\Mux5~12_combout\ & ((\B~combout\(31)))) # (!\Mux5~12_combout\ & (\ShiftRight1~63_combout\)))) # (!\opcode~combout\(2) & (((\Mux5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \ShiftRight1~63_combout\,
	datac => \B~combout\(31),
	datad => \Mux5~12_combout\,
	combout => \Mux5~13_combout\);

-- Location: LCCOMB_X34_Y1_N18
\Mux5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~14_combout\ = (\Mux9~4_combout\ & ((\Mux30~8_combout\ & ((\Mux5~13_combout\))) # (!\Mux30~8_combout\ & (\Add0~87_combout\)))) # (!\Mux9~4_combout\ & (((!\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~87_combout\,
	datab => \Mux5~13_combout\,
	datac => \Mux9~4_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux5~14_combout\);

-- Location: LCCOMB_X34_Y1_N24
\Mux5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~15_combout\ = (\Mux30~9_combout\ & ((\B~combout\(28) & ((\A~combout\(28)) # (!\Mux5~14_combout\))) # (!\B~combout\(28) & (\A~combout\(28) & !\Mux5~14_combout\)))) # (!\Mux30~9_combout\ & (((\Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(28),
	datab => \Mux30~9_combout\,
	datac => \A~combout\(28),
	datad => \Mux5~14_combout\,
	combout => \Mux5~15_combout\);

-- Location: LCCOMB_X30_Y3_N24
\Mux5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~16_combout\ = (\Mux5~15_combout\ & (((\opcode~combout\(3)) # (!\opcode~combout\(2))) # (!\opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(3),
	datac => \Mux5~15_combout\,
	datad => \opcode~combout\(2),
	combout => \Mux5~16_combout\);

-- Location: LCCOMB_X34_Y4_N2
\ShiftRight1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight1~59_combout\ = (\ShiftRight0~32_combout\ & ((\A~combout\(1) & (\B~combout\(31))) # (!\A~combout\(1) & ((\ShiftRight1~13_combout\))))) # (!\ShiftRight0~32_combout\ & (\B~combout\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(31),
	datab => \ShiftRight0~32_combout\,
	datac => \ShiftRight1~13_combout\,
	datad => \A~combout\(1),
	combout => \ShiftRight1~59_combout\);

-- Location: LCCOMB_X34_Y1_N28
\Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~6_combout\ & (((\B~combout\(31)) # (!\opcode~combout\(2))))) # (!\Mux4~6_combout\ & (\ShiftRight1~59_combout\ & ((\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \ShiftRight1~59_combout\,
	datac => \B~combout\(31),
	datad => \opcode~combout\(2),
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X34_Y1_N0
\Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux30~8_combout\ & (((\Mux9~4_combout\ & \Mux4~7_combout\)))) # (!\Mux30~8_combout\ & ((\Add0~90_combout\) # ((!\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datab => \Mux30~8_combout\,
	datac => \Mux9~4_combout\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X30_Y3_N26
\Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux30~9_combout\ & ((\A~combout\(29) & ((\B~combout\(29)) # (!\Mux4~8_combout\))) # (!\A~combout\(29) & (\B~combout\(29) & !\Mux4~8_combout\)))) # (!\Mux30~9_combout\ & (((\Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(29),
	datab => \Mux30~9_combout\,
	datac => \B~combout\(29),
	datad => \Mux4~8_combout\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X30_Y3_N10
\Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\Mux4~9_combout\ & (((\opcode~combout\(3)) # (!\opcode~combout\(1))) # (!\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \Mux4~9_combout\,
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(3),
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X36_Y4_N26
\ShiftLeft0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~123_combout\ = (!\A~combout\(3) & (!\ShiftLeft0~20_combout\ & \ShiftRight0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datac => \ShiftLeft0~20_combout\,
	datad => \ShiftRight0~12_combout\,
	combout => \ShiftLeft0~123_combout\);

-- Location: LCCOMB_X36_Y3_N8
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux33~6_combout\ & ((\ShiftLeft0~123_combout\ & (\B~combout\(30))) # (!\ShiftLeft0~123_combout\ & ((\B~combout\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(30),
	datab => \B~combout\(31),
	datac => \ShiftLeft0~123_combout\,
	datad => \Mux33~6_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X38_Y3_N24
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\B~combout\(30) & ((\opcode~combout\(0)) # (\A~combout\(30)))) # (!\B~combout\(30) & (\opcode~combout\(0) & \A~combout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(30),
	datac => \opcode~combout\(0),
	datad => \A~combout\(30),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X38_Y3_N26
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\opcode~combout\(1) & (\Add0~93_combout\ & ((!\opcode~combout\(2))))) # (!\opcode~combout\(1) & ((\opcode~combout\(2) & (\Add0~93_combout\)) # (!\opcode~combout\(2) & ((\Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~93_combout\,
	datab => \opcode~combout\(1),
	datac => \Mux3~2_combout\,
	datad => \opcode~combout\(2),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X38_Y3_N16
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\opcode~combout\(3) & ((\opcode~combout\(2)))) # (!\opcode~combout\(3) & (\Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~3_combout\,
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(2),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X33_Y3_N14
\ShiftRight0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~92_combout\ = (\ShiftRight1~8_combout\ & (!\A~combout\(3) & (!\A~combout\(1) & !\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~8_combout\,
	datab => \A~combout\(3),
	datac => \A~combout\(1),
	datad => \A~combout\(2),
	combout => \ShiftRight0~92_combout\);

-- Location: LCCOMB_X35_Y3_N12
\ShiftRight0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~87_combout\ = (!\ShiftLeft0~19_combout\ & (!\ShiftLeft0~16_combout\ & (!\A~combout\(4) & \ShiftRight0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~19_combout\,
	datab => \ShiftLeft0~16_combout\,
	datac => \A~combout\(4),
	datad => \ShiftRight0~92_combout\,
	combout => \ShiftRight0~87_combout\);

-- Location: LCCOMB_X38_Y3_N4
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\A~combout\(30) & (\opcode~combout\(0) & ((\opcode~combout\(1)) # (!\B~combout\(30))))) # (!\A~combout\(30) & (\opcode~combout\(0) $ (((!\B~combout\(30) & !\opcode~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(30),
	datab => \B~combout\(30),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X38_Y3_N22
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\ShiftRight0~87_combout\) # (!\opcode~combout\(1))))) # (!\Mux3~0_combout\ & (\ShiftLeft0~129_combout\ & ((\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~129_combout\,
	datab => \ShiftRight0~87_combout\,
	datac => \Mux3~0_combout\,
	datad => \opcode~combout\(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X38_Y3_N18
\Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\opcode~combout\(3) & ((\Mux3~4_combout\ & (\Mux3~5_combout\)) # (!\Mux3~4_combout\ & ((\Mux3~1_combout\))))) # (!\opcode~combout\(3) & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(3),
	datab => \Mux3~5_combout\,
	datac => \Mux3~4_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X36_Y1_N28
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Add0~96_combout\ & (!\opcode~combout\(3) & (\opcode~combout\(1) $ (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~96_combout\,
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(3),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X36_Y1_N24
\Mux2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~14_combout\ = (\Mux9~5_combout\ & (!\opcode~combout\(1) & (\B~combout\(31) & !\opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \opcode~combout\(1),
	datac => \B~combout\(31),
	datad => \opcode~combout\(0),
	combout => \Mux2~14_combout\);

-- Location: LCCOMB_X36_Y1_N2
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (!\opcode~combout\(2) & ((\A~combout\(31) & ((\B~combout\(31)) # (\opcode~combout\(0)))) # (!\A~combout\(31) & (\B~combout\(31) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \opcode~combout\(2),
	datac => \B~combout\(31),
	datad => \opcode~combout\(0),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X36_Y1_N14
\Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~4_combout\) # ((\Mux2~14_combout\) # ((\Mux30~9_combout\ & \Mux2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~9_combout\,
	datab => \Mux2~4_combout\,
	datac => \Mux2~14_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X36_Y1_N8
\Mux2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~15_combout\ = (\B~combout\(31) & (\opcode~combout\(0) & ((\opcode~combout\(1)) # (!\A~combout\(31))))) # (!\B~combout\(31) & (!\opcode~combout\(1) & (\A~combout\(31) $ (!\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \opcode~combout\(1),
	datac => \B~combout\(31),
	datad => \opcode~combout\(0),
	combout => \Mux2~15_combout\);

-- Location: LCCOMB_X30_Y5_N2
\ShiftLeft0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~111_combout\ = (\A~combout\(0) & ((\B~combout\(26)))) # (!\A~combout\(0) & (\B~combout\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(27),
	datac => \B~combout\(26),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~111_combout\);

-- Location: LCCOMB_X30_Y5_N0
\ShiftLeft0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~110_combout\ = (\A~combout\(1) & ((\A~combout\(0) & ((\B~combout\(24)))) # (!\A~combout\(0) & (\B~combout\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(25),
	datab => \B~combout\(24),
	datac => \A~combout\(1),
	datad => \A~combout\(0),
	combout => \ShiftLeft0~110_combout\);

-- Location: LCCOMB_X30_Y5_N28
\ShiftLeft0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~112_combout\ = (\ShiftLeft0~110_combout\) # ((\ShiftLeft0~111_combout\ & !\A~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~111_combout\,
	datac => \A~combout\(1),
	datad => \ShiftLeft0~110_combout\,
	combout => \ShiftLeft0~112_combout\);

-- Location: LCCOMB_X32_Y4_N18
\Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (!\A~combout\(4) & ((\Mux2~9_combout\) # ((\ShiftLeft0~112_combout\ & \A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \ShiftLeft0~112_combout\,
	datac => \A~combout\(4),
	datad => \A~combout\(2),
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X35_Y6_N16
\Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~11_combout\ = (!\A~combout\(3) & ((\Mux2~10_combout\) # ((\ShiftLeft0~73_combout\ & \A~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~73_combout\,
	datab => \Mux2~10_combout\,
	datac => \A~combout\(4),
	datad => \A~combout\(3),
	combout => \Mux2~11_combout\);

-- Location: LCCOMB_X35_Y6_N18
\Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\A~combout\(3) & ((\A~combout\(4) & ((\ShiftLeft0~44_combout\))) # (!\A~combout\(4) & (\ShiftLeft0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~102_combout\,
	datab => \ShiftLeft0~44_combout\,
	datac => \A~combout\(4),
	datad => \A~combout\(3),
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X36_Y1_N12
\Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~12_combout\ = (!\ShiftLeft0~22_combout\ & (\Mux33~9_combout\ & ((\Mux2~11_combout\) # (\Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~22_combout\,
	datab => \Mux2~11_combout\,
	datac => \Mux2~7_combout\,
	datad => \Mux33~9_combout\,
	combout => \Mux2~12_combout\);

-- Location: LCCOMB_X36_Y1_N10
\Mux2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~16_combout\ = (\Mux2~12_combout\) # ((\Mux2~15_combout\ & ((\ShiftLeft0~123_combout\) # (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~123_combout\,
	datab => \opcode~combout\(1),
	datac => \Mux2~15_combout\,
	datad => \Mux2~12_combout\,
	combout => \Mux2~16_combout\);

-- Location: LCCOMB_X36_Y1_N22
\Mux2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~13_combout\ = (\Mux2~6_combout\) # ((!\opcode~combout\(2) & (\opcode~combout\(3) & \Mux2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \opcode~combout\(3),
	datac => \Mux2~6_combout\,
	datad => \Mux2~16_combout\,
	combout => \Mux2~13_combout\);

-- Location: LCCOMB_X31_Y3_N22
\Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = (!\Mux20~7_combout\ & !\Mux19~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~7_combout\,
	datad => \Mux19~7_combout\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X35_Y1_N4
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux11~5_combout\ & (!\Mux12~5_combout\ & !\Mux13~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux12~5_combout\,
	datad => \Mux13~5_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X31_Y3_N12
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Mux21~8_combout\ & (!\Mux23~9_combout\ & (!\Mux22~6_combout\ & !\Mux24~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~8_combout\,
	datab => \Mux23~9_combout\,
	datac => \Mux22~6_combout\,
	datad => \Mux24~9_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X35_Y1_N2
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Mux25~9_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & !\Mux10~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~9_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Mux10~7_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X32_Y1_N22
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Mux6~9_combout\ & (!\Mux9~16_combout\ & (!\Mux7~9_combout\ & !\Mux8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~9_combout\,
	datab => \Mux9~16_combout\,
	datac => \Mux7~9_combout\,
	datad => \Mux8~9_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X38_Y4_N4
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\Mux28~8_combout\ & (!\Mux26~8_combout\ & ((!\Mux27~0_combout\) # (!\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \Mux9~3_combout\,
	datac => \Mux27~0_combout\,
	datad => \Mux26~8_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X38_Y4_N22
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Mux29~13_combout\ & (\Equal0~4_combout\ & ((!\Mux9~4_combout\) # (!\Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~13_combout\,
	datab => \Equal0~4_combout\,
	datac => \Mux27~7_combout\,
	datad => \Mux9~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X30_Y3_N0
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Mux30~11_combout\) # ((!\Mux31~10_combout\ & !\Mux30~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux31~10_combout\,
	datad => \Mux30~20_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X30_Y3_N30
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & ((\Mux30~11_combout\) # ((!\Mux4~9_combout\ & !\Mux5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~11_combout\,
	datab => \Mux4~9_combout\,
	datac => \Mux5~15_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X35_Y1_N8
\Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~10_combout\ & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X35_Y1_N22
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux14~5_combout\ & (!\Mux2~13_combout\ & (!\Mux16~12_combout\ & !\Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Mux2~13_combout\,
	datac => \Mux16~12_combout\,
	datad => \Mux15~5_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X35_Y1_N14
\Equal0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~12_combout\ & (\Equal0~3_combout\ & (\Equal0~11_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~12_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~11_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X36_Y1_N20
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\opcode~combout\(3) & (!\opcode~combout\(0) & (\opcode~combout\(2) $ (\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \opcode~combout\(3),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X36_Y1_N6
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\A~combout\(31) & (\B~combout\(31) & (\opcode~combout\(1) $ (\Mux2~13_combout\)))) # (!\A~combout\(31) & (\Mux2~13_combout\ & (\opcode~combout\(1) $ (\B~combout\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(31),
	datab => \opcode~combout\(1),
	datac => \B~combout\(31),
	datad => \Mux2~13_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X36_Y1_N16
\ovfl$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovfl$latch~combout\ = (\Mux0~0_combout\ & ((\Mux1~0_combout\))) # (!\Mux0~0_combout\ & (\ovfl$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ovfl$latch~combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \ovfl$latch~combout\);

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux33~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(0));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux32~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(1));

-- Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux31~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(2));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux30~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(3));

-- Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux29~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(4));

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux28~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(5));

-- Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux27~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(6));

-- Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux26~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(7));

-- Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux25~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(8));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux24~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(9));

-- Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux23~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(10));

-- Location: PIN_AJ3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux22~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(11));

-- Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux21~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(12));

-- Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux20~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(13));

-- Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux19~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(14));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux18~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(15));

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux17~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(16));

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux16~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(17));

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(18));

-- Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux14~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(19));

-- Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(20));

-- Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(21));

-- Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(22));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(23));

-- Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(24));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(25));

-- Location: PIN_AH5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(26));

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(27));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(28));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(29));

-- Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(30));

-- Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z(31));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\zero~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_zero);

-- Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovfl~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ovfl$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovfl);
END structure;


