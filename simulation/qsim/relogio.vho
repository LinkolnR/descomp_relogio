-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/29/2023 08:39:09"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	PalavraControle : BUFFER std_logic_vector(14 DOWNTO 0);
	ProgramCounter : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- PalavraControle[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[6]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[9]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[10]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[12]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PalavraControle[14]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[2]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ProgramCounter[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PalavraControle : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_ProgramCounter : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \CPU|REG_retorno|DOUT[0]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[11]~3_combout\ : std_logic;
SIGNAL \CPU|ULA_END|Add0~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~1_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|MUX_END|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~4_combout\ : std_logic;
SIGNAL \CPU|MUX_END|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~62_q\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~71_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~80_q\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~26_q\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~44_q\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~35_q\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~17_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~137_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~53_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~101_combout\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~63_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~81_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~72_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~27feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~27_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~36feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~36_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~45feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~45_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~18feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~18_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~141_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~54feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~54_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~105_combout\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~82_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~64feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~64_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~73_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~28feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~28_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~46_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~37_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~19_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~145_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~55_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~109_combout\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~83_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~74_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~65feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~65_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~47_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~38feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~38_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~29_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~20feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~20_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~149_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~56feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~56_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~113_combout\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~78_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~69_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~60feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~60_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~24_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~33_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~42_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~15_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~129_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~51feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~51_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~93_combout\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~84_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~66feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~66_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~75_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~30_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~48_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~39_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~21_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~153_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~57_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~117_combout\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~2_combout\ : std_logic;
SIGNAL \CPU|ULA_END|Add0~0_combout\ : std_logic;
SIGNAL \CPU|MUX_END|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~79_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~61_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~70_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~25_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~43_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~34feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~34_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~16feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~16_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~133_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~52_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~97_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~0_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~23_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~32feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~32_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~41_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~14_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~125_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~59feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~59_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~68_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~77_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~50feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~50_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~89_combout\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|FlipFlop|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~6_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~5_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|Equal11~3_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[6]~0_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~796_combout\ : std_logic;
SIGNAL \RAM|ram~142_q\ : std_logic;
SIGNAL \RAM|ram~795_combout\ : std_logic;
SIGNAL \RAM|ram~126_q\ : std_logic;
SIGNAL \RAM|ram~798_combout\ : std_logic;
SIGNAL \RAM|ram~134_q\ : std_logic;
SIGNAL \RAM|ram~94feeder_combout\ : std_logic;
SIGNAL \RAM|ram~811_combout\ : std_logic;
SIGNAL \RAM|ram~94_q\ : std_logic;
SIGNAL \RAM|ram~102feeder_combout\ : std_logic;
SIGNAL \RAM|ram~814_combout\ : std_logic;
SIGNAL \RAM|ram~102_q\ : std_logic;
SIGNAL \RAM|ram~812_combout\ : std_logic;
SIGNAL \RAM|ram~110_q\ : std_logic;
SIGNAL \RAM|ram~86feeder_combout\ : std_logic;
SIGNAL \RAM|ram~813_combout\ : std_logic;
SIGNAL \RAM|ram~86_q\ : std_logic;
SIGNAL \RAM|ram~747_combout\ : std_logic;
SIGNAL \RAM|ram~797_combout\ : std_logic;
SIGNAL \RAM|ram~118_q\ : std_logic;
SIGNAL \RAM|ram~616_combout\ : std_logic;
SIGNAL \RAM|ram~803_combout\ : std_logic;
SIGNAL \RAM|ram~382_q\ : std_logic;
SIGNAL \RAM|ram~804_combout\ : std_logic;
SIGNAL \RAM|ram~398_q\ : std_logic;
SIGNAL \RAM|ram~806_combout\ : std_logic;
SIGNAL \RAM|ram~390_q\ : std_logic;
SIGNAL \RAM|ram~819_combout\ : std_logic;
SIGNAL \RAM|ram~350_q\ : std_logic;
SIGNAL \RAM|ram~820_combout\ : std_logic;
SIGNAL \RAM|ram~366_q\ : std_logic;
SIGNAL \RAM|ram~822_combout\ : std_logic;
SIGNAL \RAM|ram~358_q\ : std_logic;
SIGNAL \RAM|ram~342feeder_combout\ : std_logic;
SIGNAL \RAM|ram~821_combout\ : std_logic;
SIGNAL \RAM|ram~342_q\ : std_logic;
SIGNAL \RAM|ram~755_combout\ : std_logic;
SIGNAL \RAM|ram~374feeder_combout\ : std_logic;
SIGNAL \RAM|ram~805_combout\ : std_logic;
SIGNAL \RAM|ram~374_q\ : std_logic;
SIGNAL \RAM|ram~624_combout\ : std_logic;
SIGNAL \RAM|ram~792_combout\ : std_logic;
SIGNAL \RAM|ram~78_q\ : std_logic;
SIGNAL \RAM|ram~70feeder_combout\ : std_logic;
SIGNAL \RAM|ram~794_combout\ : std_logic;
SIGNAL \RAM|ram~70_q\ : std_logic;
SIGNAL \RAM|ram~62feeder_combout\ : std_logic;
SIGNAL \RAM|ram~791_combout\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|ram~807_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~38feeder_combout\ : std_logic;
SIGNAL \RAM|ram~810_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~808_combout\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~22feeder_combout\ : std_logic;
SIGNAL \RAM|ram~809_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~743_combout\ : std_logic;
SIGNAL \RAM|ram~54feeder_combout\ : std_logic;
SIGNAL \RAM|ram~793_combout\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|ram~612_combout\ : std_logic;
SIGNAL \RAM|ram~800_combout\ : std_logic;
SIGNAL \RAM|ram~334_q\ : std_logic;
SIGNAL \RAM|ram~318feeder_combout\ : std_logic;
SIGNAL \RAM|ram~799_combout\ : std_logic;
SIGNAL \RAM|ram~318_q\ : std_logic;
SIGNAL \RAM|ram~326feeder_combout\ : std_logic;
SIGNAL \RAM|ram~802_combout\ : std_logic;
SIGNAL \RAM|ram~326_q\ : std_logic;
SIGNAL \RAM|ram~816_combout\ : std_logic;
SIGNAL \RAM|ram~302_q\ : std_logic;
SIGNAL \RAM|ram~286feeder_combout\ : std_logic;
SIGNAL \RAM|ram~815_combout\ : std_logic;
SIGNAL \RAM|ram~286_q\ : std_logic;
SIGNAL \RAM|ram~294feeder_combout\ : std_logic;
SIGNAL \RAM|ram~818_combout\ : std_logic;
SIGNAL \RAM|ram~294_q\ : std_logic;
SIGNAL \RAM|ram~278feeder_combout\ : std_logic;
SIGNAL \RAM|ram~817_combout\ : std_logic;
SIGNAL \RAM|ram~278_q\ : std_logic;
SIGNAL \RAM|ram~751_combout\ : std_logic;
SIGNAL \RAM|ram~310feeder_combout\ : std_logic;
SIGNAL \RAM|ram~801_combout\ : std_logic;
SIGNAL \RAM|ram~310_q\ : std_logic;
SIGNAL \RAM|ram~620_combout\ : std_logic;
SIGNAL \RAM|ram~628_combout\ : std_logic;
SIGNAL \CPU|ULA|Saida[7]~5_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[4]~5_combout\ : std_logic;
SIGNAL \CPU|DECODER|saida[5]~6_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|registrador~18_q\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[7]~2_combout\ : std_logic;
SIGNAL \RAM|ram~333_q\ : std_logic;
SIGNAL \RAM|ram~317_q\ : std_logic;
SIGNAL \RAM|ram~325_q\ : std_logic;
SIGNAL \RAM|ram~285feeder_combout\ : std_logic;
SIGNAL \RAM|ram~285_q\ : std_logic;
SIGNAL \RAM|ram~301_q\ : std_logic;
SIGNAL \RAM|ram~293feeder_combout\ : std_logic;
SIGNAL \RAM|ram~293_q\ : std_logic;
SIGNAL \RAM|ram~277feeder_combout\ : std_logic;
SIGNAL \RAM|ram~277_q\ : std_logic;
SIGNAL \RAM|ram~783_combout\ : std_logic;
SIGNAL \RAM|ram~309feeder_combout\ : std_logic;
SIGNAL \RAM|ram~309_q\ : std_logic;
SIGNAL \RAM|ram~654_combout\ : std_logic;
SIGNAL \RAM|ram~381_q\ : std_logic;
SIGNAL \RAM|ram~397_q\ : std_logic;
SIGNAL \RAM|ram~389feeder_combout\ : std_logic;
SIGNAL \RAM|ram~389_q\ : std_logic;
SIGNAL \RAM|ram~349_q\ : std_logic;
SIGNAL \RAM|ram~357feeder_combout\ : std_logic;
SIGNAL \RAM|ram~357_q\ : std_logic;
SIGNAL \RAM|ram~365_q\ : std_logic;
SIGNAL \RAM|ram~341feeder_combout\ : std_logic;
SIGNAL \RAM|ram~341_q\ : std_logic;
SIGNAL \RAM|ram~787_combout\ : std_logic;
SIGNAL \RAM|ram~373_q\ : std_logic;
SIGNAL \RAM|ram~658_combout\ : std_logic;
SIGNAL \RAM|ram~61feeder_combout\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|ram~77_q\ : std_logic;
SIGNAL \RAM|ram~69feeder_combout\ : std_logic;
SIGNAL \RAM|ram~69_q\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~37feeder_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~775_combout\ : std_logic;
SIGNAL \RAM|ram~53feeder_combout\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|ram~646_combout\ : std_logic;
SIGNAL \RAM|ram~125feeder_combout\ : std_logic;
SIGNAL \RAM|ram~125_q\ : std_logic;
SIGNAL \RAM|ram~141_q\ : std_logic;
SIGNAL \RAM|ram~133_q\ : std_logic;
SIGNAL \RAM|ram~93feeder_combout\ : std_logic;
SIGNAL \RAM|ram~93_q\ : std_logic;
SIGNAL \RAM|ram~101feeder_combout\ : std_logic;
SIGNAL \RAM|ram~101_q\ : std_logic;
SIGNAL \RAM|ram~109_q\ : std_logic;
SIGNAL \RAM|ram~85feeder_combout\ : std_logic;
SIGNAL \RAM|ram~85_q\ : std_logic;
SIGNAL \RAM|ram~779_combout\ : std_logic;
SIGNAL \RAM|ram~117feeder_combout\ : std_logic;
SIGNAL \RAM|ram~117_q\ : std_logic;
SIGNAL \RAM|ram~650_combout\ : std_logic;
SIGNAL \RAM|ram~662_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \RAM|ram~316feeder_combout\ : std_logic;
SIGNAL \RAM|ram~316_q\ : std_logic;
SIGNAL \RAM|ram~332_q\ : std_logic;
SIGNAL \RAM|ram~324feeder_combout\ : std_logic;
SIGNAL \RAM|ram~324_q\ : std_logic;
SIGNAL \RAM|ram~284_q\ : std_logic;
SIGNAL \RAM|ram~300_q\ : std_logic;
SIGNAL \RAM|ram~292feeder_combout\ : std_logic;
SIGNAL \RAM|ram~292_q\ : std_logic;
SIGNAL \RAM|ram~276_q\ : std_logic;
SIGNAL \RAM|ram~703_combout\ : std_logic;
SIGNAL \RAM|ram~308feeder_combout\ : std_logic;
SIGNAL \RAM|ram~308_q\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~396_q\ : std_logic;
SIGNAL \RAM|ram~380feeder_combout\ : std_logic;
SIGNAL \RAM|ram~380_q\ : std_logic;
SIGNAL \RAM|ram~388feeder_combout\ : std_logic;
SIGNAL \RAM|ram~388_q\ : std_logic;
SIGNAL \RAM|ram~348feeder_combout\ : std_logic;
SIGNAL \RAM|ram~348_q\ : std_logic;
SIGNAL \RAM|ram~364_q\ : std_logic;
SIGNAL \RAM|ram~356_q\ : std_logic;
SIGNAL \RAM|ram~340_q\ : std_logic;
SIGNAL \RAM|ram~707_combout\ : std_logic;
SIGNAL \RAM|ram~372_q\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~124_q\ : std_logic;
SIGNAL \RAM|ram~140_q\ : std_logic;
SIGNAL \RAM|ram~132feeder_combout\ : std_logic;
SIGNAL \RAM|ram~132_q\ : std_logic;
SIGNAL \RAM|ram~92feeder_combout\ : std_logic;
SIGNAL \RAM|ram~92_q\ : std_logic;
SIGNAL \RAM|ram~108_q\ : std_logic;
SIGNAL \RAM|ram~100feeder_combout\ : std_logic;
SIGNAL \RAM|ram~100_q\ : std_logic;
SIGNAL \RAM|ram~84_q\ : std_logic;
SIGNAL \RAM|ram~699_combout\ : std_logic;
SIGNAL \RAM|ram~116feeder_combout\ : std_logic;
SIGNAL \RAM|ram~116_q\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \RAM|ram~76_q\ : std_logic;
SIGNAL \RAM|ram~60feeder_combout\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|ram~68feeder_combout\ : std_logic;
SIGNAL \RAM|ram~68_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~695_combout\ : std_logic;
SIGNAL \RAM|ram~52feeder_combout\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \RAM|ram~139_q\ : std_logic;
SIGNAL \RAM|ram~123_q\ : std_logic;
SIGNAL \RAM|ram~131_q\ : std_logic;
SIGNAL \RAM|ram~107_q\ : std_logic;
SIGNAL \RAM|ram~99feeder_combout\ : std_logic;
SIGNAL \RAM|ram~99_q\ : std_logic;
SIGNAL \RAM|ram~91feeder_combout\ : std_logic;
SIGNAL \RAM|ram~91_q\ : std_logic;
SIGNAL \RAM|ram~83_q\ : std_logic;
SIGNAL \RAM|ram~763_combout\ : std_logic;
SIGNAL \RAM|ram~115_q\ : std_logic;
SIGNAL \RAM|ram~633_combout\ : std_logic;
SIGNAL \RAM|ram~75_q\ : std_logic;
SIGNAL \RAM|ram~59feeder_combout\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|ram~67_q\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~27feeder_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~759_combout\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|ram~629_combout\ : std_logic;
SIGNAL \RAM|ram~379_q\ : std_logic;
SIGNAL \RAM|ram~395_q\ : std_logic;
SIGNAL \RAM|ram~387_q\ : std_logic;
SIGNAL \RAM|ram~363_q\ : std_logic;
SIGNAL \RAM|ram~347feeder_combout\ : std_logic;
SIGNAL \RAM|ram~347_q\ : std_logic;
SIGNAL \RAM|ram~355_q\ : std_logic;
SIGNAL \RAM|ram~339_q\ : std_logic;
SIGNAL \RAM|ram~771_combout\ : std_logic;
SIGNAL \RAM|ram~371feeder_combout\ : std_logic;
SIGNAL \RAM|ram~371_q\ : std_logic;
SIGNAL \RAM|ram~641_combout\ : std_logic;
SIGNAL \RAM|ram~331_q\ : std_logic;
SIGNAL \RAM|ram~315_q\ : std_logic;
SIGNAL \RAM|ram~323feeder_combout\ : std_logic;
SIGNAL \RAM|ram~323_q\ : std_logic;
SIGNAL \RAM|ram~299_q\ : std_logic;
SIGNAL \RAM|ram~283_q\ : std_logic;
SIGNAL \RAM|ram~291feeder_combout\ : std_logic;
SIGNAL \RAM|ram~291_q\ : std_logic;
SIGNAL \RAM|ram~275_q\ : std_logic;
SIGNAL \RAM|ram~767_combout\ : std_logic;
SIGNAL \RAM|ram~307feeder_combout\ : std_logic;
SIGNAL \RAM|ram~307_q\ : std_logic;
SIGNAL \RAM|ram~637_combout\ : std_logic;
SIGNAL \RAM|ram~645_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \RAM|ram~58feeder_combout\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~74_q\ : std_logic;
SIGNAL \RAM|ram~66_q\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~34feeder_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~711_combout\ : std_logic;
SIGNAL \RAM|ram~50feeder_combout\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \RAM|ram~138_q\ : std_logic;
SIGNAL \RAM|ram~130_q\ : std_logic;
SIGNAL \RAM|ram~122_q\ : std_logic;
SIGNAL \RAM|ram~90feeder_combout\ : std_logic;
SIGNAL \RAM|ram~90_q\ : std_logic;
SIGNAL \RAM|ram~106_q\ : std_logic;
SIGNAL \RAM|ram~98feeder_combout\ : std_logic;
SIGNAL \RAM|ram~98_q\ : std_logic;
SIGNAL \RAM|ram~82feeder_combout\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~715_combout\ : std_logic;
SIGNAL \RAM|ram~114feeder_combout\ : std_logic;
SIGNAL \RAM|ram~114_q\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \RAM|ram~378_q\ : std_logic;
SIGNAL \RAM|ram~394_q\ : std_logic;
SIGNAL \RAM|ram~386feeder_combout\ : std_logic;
SIGNAL \RAM|ram~386_q\ : std_logic;
SIGNAL \RAM|ram~362_q\ : std_logic;
SIGNAL \RAM|ram~346feeder_combout\ : std_logic;
SIGNAL \RAM|ram~346_q\ : std_logic;
SIGNAL \RAM|ram~354feeder_combout\ : std_logic;
SIGNAL \RAM|ram~354_q\ : std_logic;
SIGNAL \RAM|ram~338feeder_combout\ : std_logic;
SIGNAL \RAM|ram~338_q\ : std_logic;
SIGNAL \RAM|ram~723_combout\ : std_logic;
SIGNAL \RAM|ram~370_q\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \RAM|ram~314_q\ : std_logic;
SIGNAL \RAM|ram~322feeder_combout\ : std_logic;
SIGNAL \RAM|ram~322_q\ : std_logic;
SIGNAL \RAM|ram~330_q\ : std_logic;
SIGNAL \RAM|ram~298_q\ : std_logic;
SIGNAL \RAM|ram~290feeder_combout\ : std_logic;
SIGNAL \RAM|ram~290_q\ : std_logic;
SIGNAL \RAM|ram~282feeder_combout\ : std_logic;
SIGNAL \RAM|ram~282_q\ : std_logic;
SIGNAL \RAM|ram~274feeder_combout\ : std_logic;
SIGNAL \RAM|ram~274_q\ : std_logic;
SIGNAL \RAM|ram~719_combout\ : std_logic;
SIGNAL \RAM|ram~306feeder_combout\ : std_logic;
SIGNAL \RAM|ram~306_q\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~594_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|Saida[0]~1_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|registrador~11_q\ : std_logic;
SIGNAL \RAM|ram~71_q\ : std_logic;
SIGNAL \RAM|ram~55feeder_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~679_combout\ : std_logic;
SIGNAL \RAM|ram~47feeder_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~311feeder_combout\ : std_logic;
SIGNAL \RAM|ram~311_q\ : std_logic;
SIGNAL \RAM|ram~327_q\ : std_logic;
SIGNAL \RAM|ram~319feeder_combout\ : std_logic;
SIGNAL \RAM|ram~319_q\ : std_logic;
SIGNAL \RAM|ram~295_q\ : std_logic;
SIGNAL \RAM|ram~287feeder_combout\ : std_logic;
SIGNAL \RAM|ram~287_q\ : std_logic;
SIGNAL \RAM|ram~279_q\ : std_logic;
SIGNAL \RAM|ram~271_q\ : std_logic;
SIGNAL \RAM|ram~687_combout\ : std_logic;
SIGNAL \RAM|ram~303feeder_combout\ : std_logic;
SIGNAL \RAM|ram~303_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~135_q\ : std_logic;
SIGNAL \RAM|ram~119feeder_combout\ : std_logic;
SIGNAL \RAM|ram~119_q\ : std_logic;
SIGNAL \RAM|ram~127_q\ : std_logic;
SIGNAL \RAM|ram~103_q\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~87_q\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~683_combout\ : std_logic;
SIGNAL \RAM|ram~111_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~391_q\ : std_logic;
SIGNAL \RAM|ram~375_q\ : std_logic;
SIGNAL \RAM|ram~383feeder_combout\ : std_logic;
SIGNAL \RAM|ram~383_q\ : std_logic;
SIGNAL \RAM|ram~343_q\ : std_logic;
SIGNAL \RAM|ram~359_q\ : std_logic;
SIGNAL \RAM|ram~351feeder_combout\ : std_logic;
SIGNAL \RAM|ram~351_q\ : std_logic;
SIGNAL \RAM|ram~335feeder_combout\ : std_logic;
SIGNAL \RAM|ram~335_q\ : std_logic;
SIGNAL \RAM|ram~691_combout\ : std_logic;
SIGNAL \RAM|ram~367_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|Saida[1]~4_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|registrador~12_q\ : std_logic;
SIGNAL \RAM|ram~136_q\ : std_logic;
SIGNAL \RAM|ram~120_q\ : std_logic;
SIGNAL \RAM|ram~128feeder_combout\ : std_logic;
SIGNAL \RAM|ram~128_q\ : std_logic;
SIGNAL \RAM|ram~104_q\ : std_logic;
SIGNAL \RAM|ram~88feeder_combout\ : std_logic;
SIGNAL \RAM|ram~88_q\ : std_logic;
SIGNAL \RAM|ram~96feeder_combout\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~80feeder_combout\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~731_combout\ : std_logic;
SIGNAL \RAM|ram~112feeder_combout\ : std_logic;
SIGNAL \RAM|ram~112_q\ : std_logic;
SIGNAL \RAM|ram~599_combout\ : std_logic;
SIGNAL \RAM|ram~376_q\ : std_logic;
SIGNAL \RAM|ram~392_q\ : std_logic;
SIGNAL \RAM|ram~384_q\ : std_logic;
SIGNAL \RAM|ram~344feeder_combout\ : std_logic;
SIGNAL \RAM|ram~344_q\ : std_logic;
SIGNAL \RAM|ram~360_q\ : std_logic;
SIGNAL \RAM|ram~352_q\ : std_logic;
SIGNAL \RAM|ram~336_q\ : std_logic;
SIGNAL \RAM|ram~739_combout\ : std_logic;
SIGNAL \RAM|ram~368feeder_combout\ : std_logic;
SIGNAL \RAM|ram~368_q\ : std_logic;
SIGNAL \RAM|ram~607_combout\ : std_logic;
SIGNAL \RAM|ram~312feeder_combout\ : std_logic;
SIGNAL \RAM|ram~312_q\ : std_logic;
SIGNAL \RAM|ram~328_q\ : std_logic;
SIGNAL \RAM|ram~320_q\ : std_logic;
SIGNAL \RAM|ram~296_q\ : std_logic;
SIGNAL \RAM|ram~280feeder_combout\ : std_logic;
SIGNAL \RAM|ram~280_q\ : std_logic;
SIGNAL \RAM|ram~288feeder_combout\ : std_logic;
SIGNAL \RAM|ram~288_q\ : std_logic;
SIGNAL \RAM|ram~272feeder_combout\ : std_logic;
SIGNAL \RAM|ram~272_q\ : std_logic;
SIGNAL \RAM|ram~735_combout\ : std_logic;
SIGNAL \RAM|ram~304_q\ : std_logic;
SIGNAL \RAM|ram~603_combout\ : std_logic;
SIGNAL \RAM|ram~72_q\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|ram~24feeder_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~16feeder_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~727_combout\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~595_combout\ : std_logic;
SIGNAL \RAM|ram~611_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|Saida[2]~0_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|registrador~13_q\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~73_q\ : std_logic;
SIGNAL \RAM|ram~65feeder_combout\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~25feeder_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~663_combout\ : std_logic;
SIGNAL \RAM|ram~49feeder_combout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~393_q\ : std_logic;
SIGNAL \RAM|ram~377_q\ : std_logic;
SIGNAL \RAM|ram~385_q\ : std_logic;
SIGNAL \RAM|ram~345_q\ : std_logic;
SIGNAL \RAM|ram~361_q\ : std_logic;
SIGNAL \RAM|ram~353_q\ : std_logic;
SIGNAL \RAM|ram~337_q\ : std_logic;
SIGNAL \RAM|ram~675_combout\ : std_logic;
SIGNAL \RAM|ram~369_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~329_q\ : std_logic;
SIGNAL \RAM|ram~313_q\ : std_logic;
SIGNAL \RAM|ram~321feeder_combout\ : std_logic;
SIGNAL \RAM|ram~321_q\ : std_logic;
SIGNAL \RAM|ram~281_q\ : std_logic;
SIGNAL \RAM|ram~297_q\ : std_logic;
SIGNAL \RAM|ram~289_q\ : std_logic;
SIGNAL \RAM|ram~273feeder_combout\ : std_logic;
SIGNAL \RAM|ram~273_q\ : std_logic;
SIGNAL \RAM|ram~671_combout\ : std_logic;
SIGNAL \RAM|ram~305_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~121_q\ : std_logic;
SIGNAL \RAM|ram~137_q\ : std_logic;
SIGNAL \RAM|ram~129_q\ : std_logic;
SIGNAL \RAM|ram~105_q\ : std_logic;
SIGNAL \RAM|ram~89_q\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~81feeder_combout\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~667_combout\ : std_logic;
SIGNAL \RAM|ram~113_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|saida_MUX[2]~5_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|Saida[3]~3_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|registrador~14_q\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|Saida[4]~6_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|registrador~15_q\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|Saida[5]~2_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|registrador~16_q\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|Saida[6]~7_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|registrador~17_q\ : std_logic;
SIGNAL \CPU|ULA|Add0~30\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|FlipFlop|DOUT~4_combout\ : std_logic;
SIGNAL \CPU|FlipFlop|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FlipFlop|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FlipFlop|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|FlipFlop|DOUT~q\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~76_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~58_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~67_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~40_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~31feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~31_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~22feeder_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~22_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~13_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~121_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ram~49_q\ : std_logic;
SIGNAL \CPU|RAM_END|ram~85_combout\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \DecoderEnderecos|Equal7~0_combout\ : std_logic;
SIGNAL \DecoderEnderecos|Equal7~1_combout\ : std_logic;
SIGNAL \Registrador_LEDs|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \Registrador_LEDs|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \Registrador_LEDs|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \Registrador_LEDs|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \FlipFlopLed8|DOUT~q\ : std_logic;
SIGNAL \FlipFlopLed8|DOUT~feeder_combout\ : std_logic;
SIGNAL \FlipFlopLed8|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \DecoderEnderecos|Equal7~2_combout\ : std_logic;
SIGNAL \FlipFlopLed9|DOUT~0_combout\ : std_logic;
SIGNAL \FlipFlopLed9|DOUT~1_combout\ : std_logic;
SIGNAL \FlipFlopLed9|DOUT~q\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Registrador_LEDs|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|REG_retorno|DOUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|FlipFlop|ALT_INV_DOUT~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~9_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[4]~7_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[2]~5_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[1]~4_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[7]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~6_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~5_combout\ : std_logic;
SIGNAL \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~4_combout\ : std_logic;
SIGNAL \FlipFlopLed9|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \DecoderEnderecos|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \DecoderEnderecos|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[7]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \CPU|FlipFlop|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FlipFlop|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \CPU|FlipFlop|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida[1]~1_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~3_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \CPU|REG_retorno|ALT_INV_DOUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CPU|DECODER|ALT_INV_Equal11~2_combout\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~1_combout\ : std_logic;
SIGNAL \FlipFlopLed9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FlipFlopLed8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\ : std_logic;
SIGNAL \CPU|FlipFlop|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \CPU|DECODER|ALT_INV_Equal11~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|RAM_END|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~14_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~13_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~141_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~137_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~133_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~129_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~125_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \CPU|bancoRegistradores|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \CPU|bancoRegistradores|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|bancoRegistradores|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~121_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~117_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~113_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~109_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~105_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~101_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~97_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~93_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~89_combout\ : std_logic;
SIGNAL \CPU|RAM_END|ALT_INV_ram~85_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_SW <= SW;
PalavraControle <= ww_PalavraControle;
ProgramCounter <= ww_ProgramCounter;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|FlipFlop|ALT_INV_DOUT~4_combout\ <= NOT \CPU|FlipFlop|DOUT~4_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\RAM|ALT_INV_ram~357_q\ <= NOT \RAM|ram~357_q\;
\RAM|ALT_INV_ram~341_q\ <= NOT \RAM|ram~341_q\;
\RAM|ALT_INV_ram~365_q\ <= NOT \RAM|ram~365_q\;
\RAM|ALT_INV_ram~349_q\ <= NOT \RAM|ram~349_q\;
\RAM|ALT_INV_ram~293_q\ <= NOT \RAM|ram~293_q\;
\RAM|ALT_INV_ram~277_q\ <= NOT \RAM|ram~277_q\;
\RAM|ALT_INV_ram~301_q\ <= NOT \RAM|ram~301_q\;
\RAM|ALT_INV_ram~285_q\ <= NOT \RAM|ram~285_q\;
\RAM|ALT_INV_ram~101_q\ <= NOT \RAM|ram~101_q\;
\RAM|ALT_INV_ram~85_q\ <= NOT \RAM|ram~85_q\;
\RAM|ALT_INV_ram~109_q\ <= NOT \RAM|ram~109_q\;
\RAM|ALT_INV_ram~93_q\ <= NOT \RAM|ram~93_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~355_q\ <= NOT \RAM|ram~355_q\;
\RAM|ALT_INV_ram~339_q\ <= NOT \RAM|ram~339_q\;
\RAM|ALT_INV_ram~363_q\ <= NOT \RAM|ram~363_q\;
\RAM|ALT_INV_ram~347_q\ <= NOT \RAM|ram~347_q\;
\RAM|ALT_INV_ram~291_q\ <= NOT \RAM|ram~291_q\;
\RAM|ALT_INV_ram~275_q\ <= NOT \RAM|ram~275_q\;
\RAM|ALT_INV_ram~299_q\ <= NOT \RAM|ram~299_q\;
\RAM|ALT_INV_ram~283_q\ <= NOT \RAM|ram~283_q\;
\RAM|ALT_INV_ram~99_q\ <= NOT \RAM|ram~99_q\;
\RAM|ALT_INV_ram~83_q\ <= NOT \RAM|ram~83_q\;
\RAM|ALT_INV_ram~107_q\ <= NOT \RAM|ram~107_q\;
\RAM|ALT_INV_ram~91_q\ <= NOT \RAM|ram~91_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~358_q\ <= NOT \RAM|ram~358_q\;
\RAM|ALT_INV_ram~342_q\ <= NOT \RAM|ram~342_q\;
\RAM|ALT_INV_ram~366_q\ <= NOT \RAM|ram~366_q\;
\RAM|ALT_INV_ram~350_q\ <= NOT \RAM|ram~350_q\;
\RAM|ALT_INV_ram~294_q\ <= NOT \RAM|ram~294_q\;
\RAM|ALT_INV_ram~278_q\ <= NOT \RAM|ram~278_q\;
\RAM|ALT_INV_ram~302_q\ <= NOT \RAM|ram~302_q\;
\RAM|ALT_INV_ram~286_q\ <= NOT \RAM|ram~286_q\;
\RAM|ALT_INV_ram~102_q\ <= NOT \RAM|ram~102_q\;
\RAM|ALT_INV_ram~86_q\ <= NOT \RAM|ram~86_q\;
\RAM|ALT_INV_ram~110_q\ <= NOT \RAM|ram~110_q\;
\RAM|ALT_INV_ram~94_q\ <= NOT \RAM|ram~94_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~352_q\ <= NOT \RAM|ram~352_q\;
\RAM|ALT_INV_ram~336_q\ <= NOT \RAM|ram~336_q\;
\RAM|ALT_INV_ram~360_q\ <= NOT \RAM|ram~360_q\;
\RAM|ALT_INV_ram~344_q\ <= NOT \RAM|ram~344_q\;
\RAM|ALT_INV_ram~288_q\ <= NOT \RAM|ram~288_q\;
\RAM|ALT_INV_ram~272_q\ <= NOT \RAM|ram~272_q\;
\RAM|ALT_INV_ram~296_q\ <= NOT \RAM|ram~296_q\;
\RAM|ALT_INV_ram~280_q\ <= NOT \RAM|ram~280_q\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~104_q\ <= NOT \RAM|ram~104_q\;
\RAM|ALT_INV_ram~88_q\ <= NOT \RAM|ram~88_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~354_q\ <= NOT \RAM|ram~354_q\;
\RAM|ALT_INV_ram~338_q\ <= NOT \RAM|ram~338_q\;
\RAM|ALT_INV_ram~362_q\ <= NOT \RAM|ram~362_q\;
\RAM|ALT_INV_ram~346_q\ <= NOT \RAM|ram~346_q\;
\RAM|ALT_INV_ram~290_q\ <= NOT \RAM|ram~290_q\;
\RAM|ALT_INV_ram~274_q\ <= NOT \RAM|ram~274_q\;
\RAM|ALT_INV_ram~298_q\ <= NOT \RAM|ram~298_q\;
\RAM|ALT_INV_ram~282_q\ <= NOT \RAM|ram~282_q\;
\RAM|ALT_INV_ram~98_q\ <= NOT \RAM|ram~98_q\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~106_q\ <= NOT \RAM|ram~106_q\;
\RAM|ALT_INV_ram~90_q\ <= NOT \RAM|ram~90_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~356_q\ <= NOT \RAM|ram~356_q\;
\RAM|ALT_INV_ram~340_q\ <= NOT \RAM|ram~340_q\;
\RAM|ALT_INV_ram~364_q\ <= NOT \RAM|ram~364_q\;
\RAM|ALT_INV_ram~348_q\ <= NOT \RAM|ram~348_q\;
\RAM|ALT_INV_ram~292_q\ <= NOT \RAM|ram~292_q\;
\RAM|ALT_INV_ram~276_q\ <= NOT \RAM|ram~276_q\;
\RAM|ALT_INV_ram~300_q\ <= NOT \RAM|ram~300_q\;
\RAM|ALT_INV_ram~284_q\ <= NOT \RAM|ram~284_q\;
\RAM|ALT_INV_ram~100_q\ <= NOT \RAM|ram~100_q\;
\RAM|ALT_INV_ram~84_q\ <= NOT \RAM|ram~84_q\;
\RAM|ALT_INV_ram~108_q\ <= NOT \RAM|ram~108_q\;
\RAM|ALT_INV_ram~92_q\ <= NOT \RAM|ram~92_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~351_q\ <= NOT \RAM|ram~351_q\;
\RAM|ALT_INV_ram~335_q\ <= NOT \RAM|ram~335_q\;
\RAM|ALT_INV_ram~359_q\ <= NOT \RAM|ram~359_q\;
\RAM|ALT_INV_ram~343_q\ <= NOT \RAM|ram~343_q\;
\RAM|ALT_INV_ram~287_q\ <= NOT \RAM|ram~287_q\;
\RAM|ALT_INV_ram~271_q\ <= NOT \RAM|ram~271_q\;
\RAM|ALT_INV_ram~295_q\ <= NOT \RAM|ram~295_q\;
\RAM|ALT_INV_ram~279_q\ <= NOT \RAM|ram~279_q\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~103_q\ <= NOT \RAM|ram~103_q\;
\RAM|ALT_INV_ram~87_q\ <= NOT \RAM|ram~87_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~353_q\ <= NOT \RAM|ram~353_q\;
\RAM|ALT_INV_ram~337_q\ <= NOT \RAM|ram~337_q\;
\RAM|ALT_INV_ram~361_q\ <= NOT \RAM|ram~361_q\;
\RAM|ALT_INV_ram~345_q\ <= NOT \RAM|ram~345_q\;
\RAM|ALT_INV_ram~289_q\ <= NOT \RAM|ram~289_q\;
\RAM|ALT_INV_ram~273_q\ <= NOT \RAM|ram~273_q\;
\RAM|ALT_INV_ram~297_q\ <= NOT \RAM|ram~297_q\;
\RAM|ALT_INV_ram~281_q\ <= NOT \RAM|ram~281_q\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~105_q\ <= NOT \RAM|ram~105_q\;
\RAM|ALT_INV_ram~89_q\ <= NOT \RAM|ram~89_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\RAM|ALT_INV_ram~389_q\ <= NOT \RAM|ram~389_q\;
\RAM|ALT_INV_ram~373_q\ <= NOT \RAM|ram~373_q\;
\RAM|ALT_INV_ram~397_q\ <= NOT \RAM|ram~397_q\;
\RAM|ALT_INV_ram~381_q\ <= NOT \RAM|ram~381_q\;
\RAM|ALT_INV_ram~325_q\ <= NOT \RAM|ram~325_q\;
\RAM|ALT_INV_ram~309_q\ <= NOT \RAM|ram~309_q\;
\RAM|ALT_INV_ram~333_q\ <= NOT \RAM|ram~333_q\;
\RAM|ALT_INV_ram~317_q\ <= NOT \RAM|ram~317_q\;
\RAM|ALT_INV_ram~133_q\ <= NOT \RAM|ram~133_q\;
\RAM|ALT_INV_ram~117_q\ <= NOT \RAM|ram~117_q\;
\RAM|ALT_INV_ram~141_q\ <= NOT \RAM|ram~141_q\;
\RAM|ALT_INV_ram~125_q\ <= NOT \RAM|ram~125_q\;
\RAM|ALT_INV_ram~69_q\ <= NOT \RAM|ram~69_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\RAM|ALT_INV_ram~77_q\ <= NOT \RAM|ram~77_q\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~387_q\ <= NOT \RAM|ram~387_q\;
\RAM|ALT_INV_ram~371_q\ <= NOT \RAM|ram~371_q\;
\RAM|ALT_INV_ram~395_q\ <= NOT \RAM|ram~395_q\;
\RAM|ALT_INV_ram~379_q\ <= NOT \RAM|ram~379_q\;
\RAM|ALT_INV_ram~323_q\ <= NOT \RAM|ram~323_q\;
\RAM|ALT_INV_ram~307_q\ <= NOT \RAM|ram~307_q\;
\RAM|ALT_INV_ram~331_q\ <= NOT \RAM|ram~331_q\;
\RAM|ALT_INV_ram~315_q\ <= NOT \RAM|ram~315_q\;
\RAM|ALT_INV_ram~131_q\ <= NOT \RAM|ram~131_q\;
\RAM|ALT_INV_ram~115_q\ <= NOT \RAM|ram~115_q\;
\RAM|ALT_INV_ram~139_q\ <= NOT \RAM|ram~139_q\;
\RAM|ALT_INV_ram~123_q\ <= NOT \RAM|ram~123_q\;
\RAM|ALT_INV_ram~67_q\ <= NOT \RAM|ram~67_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\RAM|ALT_INV_ram~75_q\ <= NOT \RAM|ram~75_q\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~390_q\ <= NOT \RAM|ram~390_q\;
\RAM|ALT_INV_ram~374_q\ <= NOT \RAM|ram~374_q\;
\RAM|ALT_INV_ram~398_q\ <= NOT \RAM|ram~398_q\;
\RAM|ALT_INV_ram~382_q\ <= NOT \RAM|ram~382_q\;
\RAM|ALT_INV_ram~326_q\ <= NOT \RAM|ram~326_q\;
\RAM|ALT_INV_ram~310_q\ <= NOT \RAM|ram~310_q\;
\RAM|ALT_INV_ram~334_q\ <= NOT \RAM|ram~334_q\;
\RAM|ALT_INV_ram~318_q\ <= NOT \RAM|ram~318_q\;
\RAM|ALT_INV_ram~134_q\ <= NOT \RAM|ram~134_q\;
\RAM|ALT_INV_ram~118_q\ <= NOT \RAM|ram~118_q\;
\RAM|ALT_INV_ram~142_q\ <= NOT \RAM|ram~142_q\;
\RAM|ALT_INV_ram~126_q\ <= NOT \RAM|ram~126_q\;
\RAM|ALT_INV_ram~70_q\ <= NOT \RAM|ram~70_q\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\RAM|ALT_INV_ram~78_q\ <= NOT \RAM|ram~78_q\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~384_q\ <= NOT \RAM|ram~384_q\;
\RAM|ALT_INV_ram~368_q\ <= NOT \RAM|ram~368_q\;
\RAM|ALT_INV_ram~392_q\ <= NOT \RAM|ram~392_q\;
\RAM|ALT_INV_ram~376_q\ <= NOT \RAM|ram~376_q\;
\RAM|ALT_INV_ram~320_q\ <= NOT \RAM|ram~320_q\;
\RAM|ALT_INV_ram~304_q\ <= NOT \RAM|ram~304_q\;
\RAM|ALT_INV_ram~328_q\ <= NOT \RAM|ram~328_q\;
\RAM|ALT_INV_ram~312_q\ <= NOT \RAM|ram~312_q\;
\RAM|ALT_INV_ram~128_q\ <= NOT \RAM|ram~128_q\;
\RAM|ALT_INV_ram~112_q\ <= NOT \RAM|ram~112_q\;
\RAM|ALT_INV_ram~136_q\ <= NOT \RAM|ram~136_q\;
\RAM|ALT_INV_ram~120_q\ <= NOT \RAM|ram~120_q\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~72_q\ <= NOT \RAM|ram~72_q\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~386_q\ <= NOT \RAM|ram~386_q\;
\RAM|ALT_INV_ram~370_q\ <= NOT \RAM|ram~370_q\;
\RAM|ALT_INV_ram~394_q\ <= NOT \RAM|ram~394_q\;
\RAM|ALT_INV_ram~378_q\ <= NOT \RAM|ram~378_q\;
\RAM|ALT_INV_ram~322_q\ <= NOT \RAM|ram~322_q\;
\RAM|ALT_INV_ram~306_q\ <= NOT \RAM|ram~306_q\;
\RAM|ALT_INV_ram~330_q\ <= NOT \RAM|ram~330_q\;
\RAM|ALT_INV_ram~314_q\ <= NOT \RAM|ram~314_q\;
\RAM|ALT_INV_ram~130_q\ <= NOT \RAM|ram~130_q\;
\RAM|ALT_INV_ram~114_q\ <= NOT \RAM|ram~114_q\;
\RAM|ALT_INV_ram~138_q\ <= NOT \RAM|ram~138_q\;
\RAM|ALT_INV_ram~122_q\ <= NOT \RAM|ram~122_q\;
\RAM|ALT_INV_ram~66_q\ <= NOT \RAM|ram~66_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~74_q\ <= NOT \RAM|ram~74_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~388_q\ <= NOT \RAM|ram~388_q\;
\RAM|ALT_INV_ram~372_q\ <= NOT \RAM|ram~372_q\;
\RAM|ALT_INV_ram~396_q\ <= NOT \RAM|ram~396_q\;
\RAM|ALT_INV_ram~380_q\ <= NOT \RAM|ram~380_q\;
\RAM|ALT_INV_ram~324_q\ <= NOT \RAM|ram~324_q\;
\RAM|ALT_INV_ram~308_q\ <= NOT \RAM|ram~308_q\;
\RAM|ALT_INV_ram~332_q\ <= NOT \RAM|ram~332_q\;
\RAM|ALT_INV_ram~316_q\ <= NOT \RAM|ram~316_q\;
\RAM|ALT_INV_ram~132_q\ <= NOT \RAM|ram~132_q\;
\RAM|ALT_INV_ram~116_q\ <= NOT \RAM|ram~116_q\;
\RAM|ALT_INV_ram~140_q\ <= NOT \RAM|ram~140_q\;
\RAM|ALT_INV_ram~124_q\ <= NOT \RAM|ram~124_q\;
\RAM|ALT_INV_ram~68_q\ <= NOT \RAM|ram~68_q\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\RAM|ALT_INV_ram~76_q\ <= NOT \RAM|ram~76_q\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~383_q\ <= NOT \RAM|ram~383_q\;
\RAM|ALT_INV_ram~367_q\ <= NOT \RAM|ram~367_q\;
\RAM|ALT_INV_ram~391_q\ <= NOT \RAM|ram~391_q\;
\RAM|ALT_INV_ram~375_q\ <= NOT \RAM|ram~375_q\;
\RAM|ALT_INV_ram~319_q\ <= NOT \RAM|ram~319_q\;
\RAM|ALT_INV_ram~303_q\ <= NOT \RAM|ram~303_q\;
\RAM|ALT_INV_ram~327_q\ <= NOT \RAM|ram~327_q\;
\RAM|ALT_INV_ram~311_q\ <= NOT \RAM|ram~311_q\;
\RAM|ALT_INV_ram~127_q\ <= NOT \RAM|ram~127_q\;
\RAM|ALT_INV_ram~111_q\ <= NOT \RAM|ram~111_q\;
\RAM|ALT_INV_ram~135_q\ <= NOT \RAM|ram~135_q\;
\RAM|ALT_INV_ram~119_q\ <= NOT \RAM|ram~119_q\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~71_q\ <= NOT \RAM|ram~71_q\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[6]~9_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[6]~9_combout\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[5]~8_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[5]~8_combout\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[4]~7_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[4]~7_combout\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[3]~6_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[3]~6_combout\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[2]~5_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[2]~5_combout\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[1]~4_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[1]~4_combout\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[0]~3_combout\;
\RAM|ALT_INV_ram~385_q\ <= NOT \RAM|ram~385_q\;
\RAM|ALT_INV_ram~369_q\ <= NOT \RAM|ram~369_q\;
\RAM|ALT_INV_ram~393_q\ <= NOT \RAM|ram~393_q\;
\RAM|ALT_INV_ram~377_q\ <= NOT \RAM|ram~377_q\;
\RAM|ALT_INV_ram~321_q\ <= NOT \RAM|ram~321_q\;
\RAM|ALT_INV_ram~305_q\ <= NOT \RAM|ram~305_q\;
\RAM|ALT_INV_ram~329_q\ <= NOT \RAM|ram~329_q\;
\RAM|ALT_INV_ram~313_q\ <= NOT \RAM|ram~313_q\;
\RAM|ALT_INV_ram~129_q\ <= NOT \RAM|ram~129_q\;
\RAM|ALT_INV_ram~113_q\ <= NOT \RAM|ram~113_q\;
\RAM|ALT_INV_ram~137_q\ <= NOT \RAM|ram~137_q\;
\RAM|ALT_INV_ram~121_q\ <= NOT \RAM|ram~121_q\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~73_q\ <= NOT \RAM|ram~73_q\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[7]~2_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[7]~2_combout\;
\CPU|DECODER|ALT_INV_Equal11~6_combout\ <= NOT \CPU|DECODER|Equal11~6_combout\;
\CPU|DECODER|ALT_INV_saida[4]~4_combout\ <= NOT \CPU|DECODER|saida[4]~4_combout\;
\CPU|DECODER|ALT_INV_Equal11~5_combout\ <= NOT \CPU|DECODER|Equal11~5_combout\;
\CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \CPU|MUX_END|saida_MUX[0]~2_combout\;
\CPU|DECODER|ALT_INV_Equal11~4_combout\ <= NOT \CPU|DECODER|Equal11~4_combout\;
\FlipFlopLed9|ALT_INV_DOUT~0_combout\ <= NOT \FlipFlopLed9|DOUT~0_combout\;
\DecoderEnderecos|ALT_INV_Equal7~2_combout\ <= NOT \DecoderEnderecos|Equal7~2_combout\;
\DecoderEnderecos|ALT_INV_Equal7~0_combout\ <= NOT \DecoderEnderecos|Equal7~0_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\RAM|ALT_INV_ram~662_combout\ <= NOT \RAM|ram~662_combout\;
\RAM|ALT_INV_ram~645_combout\ <= NOT \RAM|ram~645_combout\;
\RAM|ALT_INV_ram~628_combout\ <= NOT \RAM|ram~628_combout\;
\RAM|ALT_INV_ram~611_combout\ <= NOT \RAM|ram~611_combout\;
\RAM|ALT_INV_ram~594_combout\ <= NOT \RAM|ram~594_combout\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[7]~1_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[7]~1_combout\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\CPU|FlipFlop|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FlipFlop|DOUT~2_combout\;
\CPU|FlipFlop|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FlipFlop|DOUT~1_combout\;
\CPU|DECODER|ALT_INV_saida~2_combout\ <= NOT \CPU|DECODER|saida~2_combout\;
\CPU|FlipFlop|ALT_INV_DOUT~0_combout\ <= NOT \CPU|FlipFlop|DOUT~0_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\ <= NOT \CPU|MUX_CPU|saida_MUX[6]~0_combout\;
\CPU|DECODER|ALT_INV_saida[1]~1_combout\ <= NOT \CPU|DECODER|saida[1]~1_combout\;
\CPU|DECODER|ALT_INV_Equal11~3_combout\ <= NOT \CPU|DECODER|Equal11~3_combout\;
\CPU|DECODER|ALT_INV_saida~0_combout\ <= NOT \CPU|DECODER|saida~0_combout\;
\CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|MUX_END|saida_MUX[1]~1_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\ <= NOT \CPU|MUX_END|saida_MUX[2]~0_combout\;
\CPU|REG_retorno|ALT_INV_DOUT\(2) <= NOT \CPU|REG_retorno|DOUT\(2);
\CPU|DECODER|ALT_INV_Equal11~2_combout\ <= NOT \CPU|DECODER|Equal11~2_combout\;
\CPU|REG_retorno|ALT_INV_DOUT\(0) <= NOT \CPU|REG_retorno|DOUT\(0);
\CPU|REG_retorno|ALT_INV_DOUT\(1) <= NOT \CPU|REG_retorno|DOUT\(1);
\CPU|DECODER|ALT_INV_Equal11~1_combout\ <= NOT \CPU|DECODER|Equal11~1_combout\;
\FlipFlopLed9|ALT_INV_DOUT~q\ <= NOT \FlipFlopLed9|DOUT~q\;
\FlipFlopLed8|ALT_INV_DOUT~q\ <= NOT \FlipFlopLed8|DOUT~q\;
\CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\ <= NOT \CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\;
\CPU|FlipFlop|ALT_INV_DOUT~q\ <= NOT \CPU|FlipFlop|DOUT~q\;
\CPU|DECODER|ALT_INV_Equal11~0_combout\ <= NOT \CPU|DECODER|Equal11~0_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|RAM_END|ALT_INV_ram~39_q\ <= NOT \CPU|RAM_END|ram~39_q\;
\CPU|RAM_END|ALT_INV_ram~21_q\ <= NOT \CPU|RAM_END|ram~21_q\;
\CPU|RAM_END|ALT_INV_ram~48_q\ <= NOT \CPU|RAM_END|ram~48_q\;
\CPU|RAM_END|ALT_INV_ram~30_q\ <= NOT \CPU|RAM_END|ram~30_q\;
\CPU|RAM_END|ALT_INV_ram~38_q\ <= NOT \CPU|RAM_END|ram~38_q\;
\CPU|RAM_END|ALT_INV_ram~20_q\ <= NOT \CPU|RAM_END|ram~20_q\;
\CPU|RAM_END|ALT_INV_ram~47_q\ <= NOT \CPU|RAM_END|ram~47_q\;
\CPU|RAM_END|ALT_INV_ram~29_q\ <= NOT \CPU|RAM_END|ram~29_q\;
\CPU|RAM_END|ALT_INV_ram~37_q\ <= NOT \CPU|RAM_END|ram~37_q\;
\CPU|RAM_END|ALT_INV_ram~19_q\ <= NOT \CPU|RAM_END|ram~19_q\;
\CPU|RAM_END|ALT_INV_ram~46_q\ <= NOT \CPU|RAM_END|ram~46_q\;
\CPU|RAM_END|ALT_INV_ram~28_q\ <= NOT \CPU|RAM_END|ram~28_q\;
\CPU|RAM_END|ALT_INV_ram~36_q\ <= NOT \CPU|RAM_END|ram~36_q\;
\CPU|RAM_END|ALT_INV_ram~18_q\ <= NOT \CPU|RAM_END|ram~18_q\;
\CPU|RAM_END|ALT_INV_ram~45_q\ <= NOT \CPU|RAM_END|ram~45_q\;
\CPU|RAM_END|ALT_INV_ram~27_q\ <= NOT \CPU|RAM_END|ram~27_q\;
\CPU|RAM_END|ALT_INV_ram~35_q\ <= NOT \CPU|RAM_END|ram~35_q\;
\CPU|RAM_END|ALT_INV_ram~17_q\ <= NOT \CPU|RAM_END|ram~17_q\;
\CPU|RAM_END|ALT_INV_ram~44_q\ <= NOT \CPU|RAM_END|ram~44_q\;
\CPU|RAM_END|ALT_INV_ram~26_q\ <= NOT \CPU|RAM_END|ram~26_q\;
\CPU|RAM_END|ALT_INV_ram~34_q\ <= NOT \CPU|RAM_END|ram~34_q\;
\CPU|RAM_END|ALT_INV_ram~16_q\ <= NOT \CPU|RAM_END|ram~16_q\;
\CPU|RAM_END|ALT_INV_ram~43_q\ <= NOT \CPU|RAM_END|ram~43_q\;
\CPU|RAM_END|ALT_INV_ram~25_q\ <= NOT \CPU|RAM_END|ram~25_q\;
\CPU|RAM_END|ALT_INV_ram~33_q\ <= NOT \CPU|RAM_END|ram~33_q\;
\CPU|RAM_END|ALT_INV_ram~15_q\ <= NOT \CPU|RAM_END|ram~15_q\;
\CPU|RAM_END|ALT_INV_ram~42_q\ <= NOT \CPU|RAM_END|ram~42_q\;
\CPU|RAM_END|ALT_INV_ram~24_q\ <= NOT \CPU|RAM_END|ram~24_q\;
\CPU|RAM_END|ALT_INV_ram~32_q\ <= NOT \CPU|RAM_END|ram~32_q\;
\CPU|RAM_END|ALT_INV_ram~14_q\ <= NOT \CPU|RAM_END|ram~14_q\;
\CPU|RAM_END|ALT_INV_ram~41_q\ <= NOT \CPU|RAM_END|ram~41_q\;
\CPU|RAM_END|ALT_INV_ram~23_q\ <= NOT \CPU|RAM_END|ram~23_q\;
\RAM|ALT_INV_ram~787_combout\ <= NOT \RAM|ram~787_combout\;
\RAM|ALT_INV_ram~783_combout\ <= NOT \RAM|ram~783_combout\;
\RAM|ALT_INV_ram~779_combout\ <= NOT \RAM|ram~779_combout\;
\RAM|ALT_INV_ram~775_combout\ <= NOT \RAM|ram~775_combout\;
\RAM|ALT_INV_ram~771_combout\ <= NOT \RAM|ram~771_combout\;
\RAM|ALT_INV_ram~767_combout\ <= NOT \RAM|ram~767_combout\;
\RAM|ALT_INV_ram~763_combout\ <= NOT \RAM|ram~763_combout\;
\RAM|ALT_INV_ram~759_combout\ <= NOT \RAM|ram~759_combout\;
\RAM|ALT_INV_ram~755_combout\ <= NOT \RAM|ram~755_combout\;
\RAM|ALT_INV_ram~751_combout\ <= NOT \RAM|ram~751_combout\;
\RAM|ALT_INV_ram~747_combout\ <= NOT \RAM|ram~747_combout\;
\RAM|ALT_INV_ram~743_combout\ <= NOT \RAM|ram~743_combout\;
\RAM|ALT_INV_ram~739_combout\ <= NOT \RAM|ram~739_combout\;
\RAM|ALT_INV_ram~735_combout\ <= NOT \RAM|ram~735_combout\;
\RAM|ALT_INV_ram~731_combout\ <= NOT \RAM|ram~731_combout\;
\RAM|ALT_INV_ram~727_combout\ <= NOT \RAM|ram~727_combout\;
\RAM|ALT_INV_ram~723_combout\ <= NOT \RAM|ram~723_combout\;
\RAM|ALT_INV_ram~719_combout\ <= NOT \RAM|ram~719_combout\;
\RAM|ALT_INV_ram~715_combout\ <= NOT \RAM|ram~715_combout\;
\RAM|ALT_INV_ram~711_combout\ <= NOT \RAM|ram~711_combout\;
\RAM|ALT_INV_ram~707_combout\ <= NOT \RAM|ram~707_combout\;
\RAM|ALT_INV_ram~703_combout\ <= NOT \RAM|ram~703_combout\;
\RAM|ALT_INV_ram~699_combout\ <= NOT \RAM|ram~699_combout\;
\RAM|ALT_INV_ram~695_combout\ <= NOT \RAM|ram~695_combout\;
\RAM|ALT_INV_ram~691_combout\ <= NOT \RAM|ram~691_combout\;
\RAM|ALT_INV_ram~687_combout\ <= NOT \RAM|ram~687_combout\;
\RAM|ALT_INV_ram~683_combout\ <= NOT \RAM|ram~683_combout\;
\RAM|ALT_INV_ram~679_combout\ <= NOT \RAM|ram~679_combout\;
\RAM|ALT_INV_ram~675_combout\ <= NOT \RAM|ram~675_combout\;
\RAM|ALT_INV_ram~671_combout\ <= NOT \RAM|ram~671_combout\;
\RAM|ALT_INV_ram~667_combout\ <= NOT \RAM|ram~667_combout\;
\RAM|ALT_INV_ram~663_combout\ <= NOT \RAM|ram~663_combout\;
\CPU|RAM_END|ALT_INV_ram~31_q\ <= NOT \CPU|RAM_END|ram~31_q\;
\CPU|RAM_END|ALT_INV_ram~13_q\ <= NOT \CPU|RAM_END|ram~13_q\;
\CPU|RAM_END|ALT_INV_ram~40_q\ <= NOT \CPU|RAM_END|ram~40_q\;
\CPU|RAM_END|ALT_INV_ram~22_q\ <= NOT \CPU|RAM_END|ram~22_q\;
\CPU|RAM_END|ALT_INV_ram~75_q\ <= NOT \CPU|RAM_END|ram~75_q\;
\CPU|RAM_END|ALT_INV_ram~153_combout\ <= NOT \CPU|RAM_END|ram~153_combout\;
\CPU|RAM_END|ALT_INV_ram~57_q\ <= NOT \CPU|RAM_END|ram~57_q\;
\CPU|RAM_END|ALT_INV_ram~84_q\ <= NOT \CPU|RAM_END|ram~84_q\;
\CPU|RAM_END|ALT_INV_ram~66_q\ <= NOT \CPU|RAM_END|ram~66_q\;
\CPU|RAM_END|ALT_INV_ram~74_q\ <= NOT \CPU|RAM_END|ram~74_q\;
\CPU|RAM_END|ALT_INV_ram~149_combout\ <= NOT \CPU|RAM_END|ram~149_combout\;
\CPU|RAM_END|ALT_INV_ram~56_q\ <= NOT \CPU|RAM_END|ram~56_q\;
\CPU|RAM_END|ALT_INV_ram~83_q\ <= NOT \CPU|RAM_END|ram~83_q\;
\CPU|RAM_END|ALT_INV_ram~65_q\ <= NOT \CPU|RAM_END|ram~65_q\;
\CPU|RAM_END|ALT_INV_ram~73_q\ <= NOT \CPU|RAM_END|ram~73_q\;
\CPU|RAM_END|ALT_INV_ram~145_combout\ <= NOT \CPU|RAM_END|ram~145_combout\;
\CPU|RAM_END|ALT_INV_ram~55_q\ <= NOT \CPU|RAM_END|ram~55_q\;
\CPU|RAM_END|ALT_INV_ram~82_q\ <= NOT \CPU|RAM_END|ram~82_q\;
\CPU|RAM_END|ALT_INV_ram~64_q\ <= NOT \CPU|RAM_END|ram~64_q\;
\CPU|RAM_END|ALT_INV_ram~72_q\ <= NOT \CPU|RAM_END|ram~72_q\;
\CPU|RAM_END|ALT_INV_ram~141_combout\ <= NOT \CPU|RAM_END|ram~141_combout\;
\CPU|RAM_END|ALT_INV_ram~54_q\ <= NOT \CPU|RAM_END|ram~54_q\;
\CPU|RAM_END|ALT_INV_ram~81_q\ <= NOT \CPU|RAM_END|ram~81_q\;
\CPU|RAM_END|ALT_INV_ram~63_q\ <= NOT \CPU|RAM_END|ram~63_q\;
\CPU|RAM_END|ALT_INV_ram~71_q\ <= NOT \CPU|RAM_END|ram~71_q\;
\CPU|RAM_END|ALT_INV_ram~137_combout\ <= NOT \CPU|RAM_END|ram~137_combout\;
\CPU|RAM_END|ALT_INV_ram~53_q\ <= NOT \CPU|RAM_END|ram~53_q\;
\CPU|RAM_END|ALT_INV_ram~80_q\ <= NOT \CPU|RAM_END|ram~80_q\;
\CPU|RAM_END|ALT_INV_ram~62_q\ <= NOT \CPU|RAM_END|ram~62_q\;
\CPU|RAM_END|ALT_INV_ram~70_q\ <= NOT \CPU|RAM_END|ram~70_q\;
\CPU|RAM_END|ALT_INV_ram~133_combout\ <= NOT \CPU|RAM_END|ram~133_combout\;
\CPU|RAM_END|ALT_INV_ram~52_q\ <= NOT \CPU|RAM_END|ram~52_q\;
\CPU|RAM_END|ALT_INV_ram~79_q\ <= NOT \CPU|RAM_END|ram~79_q\;
\CPU|RAM_END|ALT_INV_ram~61_q\ <= NOT \CPU|RAM_END|ram~61_q\;
\CPU|RAM_END|ALT_INV_ram~69_q\ <= NOT \CPU|RAM_END|ram~69_q\;
\CPU|RAM_END|ALT_INV_ram~129_combout\ <= NOT \CPU|RAM_END|ram~129_combout\;
\CPU|RAM_END|ALT_INV_ram~51_q\ <= NOT \CPU|RAM_END|ram~51_q\;
\CPU|RAM_END|ALT_INV_ram~78_q\ <= NOT \CPU|RAM_END|ram~78_q\;
\CPU|RAM_END|ALT_INV_ram~60_q\ <= NOT \CPU|RAM_END|ram~60_q\;
\CPU|RAM_END|ALT_INV_ram~68_q\ <= NOT \CPU|RAM_END|ram~68_q\;
\CPU|RAM_END|ALT_INV_ram~125_combout\ <= NOT \CPU|RAM_END|ram~125_combout\;
\CPU|RAM_END|ALT_INV_ram~50_q\ <= NOT \CPU|RAM_END|ram~50_q\;
\CPU|RAM_END|ALT_INV_ram~77_q\ <= NOT \CPU|RAM_END|ram~77_q\;
\CPU|RAM_END|ALT_INV_ram~59_q\ <= NOT \CPU|RAM_END|ram~59_q\;
\RAM|ALT_INV_ram~658_combout\ <= NOT \RAM|ram~658_combout\;
\RAM|ALT_INV_ram~654_combout\ <= NOT \RAM|ram~654_combout\;
\RAM|ALT_INV_ram~650_combout\ <= NOT \RAM|ram~650_combout\;
\RAM|ALT_INV_ram~646_combout\ <= NOT \RAM|ram~646_combout\;
\CPU|bancoRegistradores|ALT_INV_registrador~17_q\ <= NOT \CPU|bancoRegistradores|registrador~17_q\;
\RAM|ALT_INV_ram~641_combout\ <= NOT \RAM|ram~641_combout\;
\RAM|ALT_INV_ram~637_combout\ <= NOT \RAM|ram~637_combout\;
\RAM|ALT_INV_ram~633_combout\ <= NOT \RAM|ram~633_combout\;
\RAM|ALT_INV_ram~629_combout\ <= NOT \RAM|ram~629_combout\;
\CPU|bancoRegistradores|ALT_INV_registrador~15_q\ <= NOT \CPU|bancoRegistradores|registrador~15_q\;
\RAM|ALT_INV_ram~624_combout\ <= NOT \RAM|ram~624_combout\;
\RAM|ALT_INV_ram~620_combout\ <= NOT \RAM|ram~620_combout\;
\RAM|ALT_INV_ram~616_combout\ <= NOT \RAM|ram~616_combout\;
\RAM|ALT_INV_ram~612_combout\ <= NOT \RAM|ram~612_combout\;
\CPU|bancoRegistradores|ALT_INV_registrador~18_q\ <= NOT \CPU|bancoRegistradores|registrador~18_q\;
\CPU|bancoRegistradores|ALT_INV_registrador~12_q\ <= NOT \CPU|bancoRegistradores|registrador~12_q\;
\RAM|ALT_INV_ram~607_combout\ <= NOT \RAM|ram~607_combout\;
\RAM|ALT_INV_ram~603_combout\ <= NOT \RAM|ram~603_combout\;
\RAM|ALT_INV_ram~599_combout\ <= NOT \RAM|ram~599_combout\;
\RAM|ALT_INV_ram~595_combout\ <= NOT \RAM|ram~595_combout\;
\RAM|ALT_INV_ram~590_combout\ <= NOT \RAM|ram~590_combout\;
\RAM|ALT_INV_ram~586_combout\ <= NOT \RAM|ram~586_combout\;
\RAM|ALT_INV_ram~582_combout\ <= NOT \RAM|ram~582_combout\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\CPU|bancoRegistradores|ALT_INV_registrador~14_q\ <= NOT \CPU|bancoRegistradores|registrador~14_q\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\CPU|bancoRegistradores|ALT_INV_registrador~16_q\ <= NOT \CPU|bancoRegistradores|registrador~16_q\;
\CPU|bancoRegistradores|ALT_INV_registrador~11_q\ <= NOT \CPU|bancoRegistradores|registrador~11_q\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\CPU|ULA|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA|Add0~29_sumout\;
\CPU|ULA|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA|Add0~25_sumout\;
\CPU|ULA|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA|Add0~21_sumout\;
\CPU|ULA|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA|Add0~17_sumout\;
\CPU|ULA|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA|Add0~13_sumout\;
\CPU|ULA|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA|Add0~9_sumout\;
\CPU|ULA|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA|Add0~5_sumout\;
\CPU|bancoRegistradores|ALT_INV_registrador~13_q\ <= NOT \CPU|bancoRegistradores|registrador~13_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\CPU|ULA|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA|Add0~1_sumout\;
\CPU|RAM_END|ALT_INV_ram~67_q\ <= NOT \CPU|RAM_END|ram~67_q\;
\CPU|RAM_END|ALT_INV_ram~121_combout\ <= NOT \CPU|RAM_END|ram~121_combout\;
\CPU|RAM_END|ALT_INV_ram~49_q\ <= NOT \CPU|RAM_END|ram~49_q\;
\CPU|RAM_END|ALT_INV_ram~76_q\ <= NOT \CPU|RAM_END|ram~76_q\;
\CPU|RAM_END|ALT_INV_ram~58_q\ <= NOT \CPU|RAM_END|ram~58_q\;
\CPU|RAM_END|ALT_INV_ram~117_combout\ <= NOT \CPU|RAM_END|ram~117_combout\;
\CPU|RAM_END|ALT_INV_ram~113_combout\ <= NOT \CPU|RAM_END|ram~113_combout\;
\CPU|RAM_END|ALT_INV_ram~109_combout\ <= NOT \CPU|RAM_END|ram~109_combout\;
\CPU|RAM_END|ALT_INV_ram~105_combout\ <= NOT \CPU|RAM_END|ram~105_combout\;
\CPU|RAM_END|ALT_INV_ram~101_combout\ <= NOT \CPU|RAM_END|ram~101_combout\;
\CPU|RAM_END|ALT_INV_ram~97_combout\ <= NOT \CPU|RAM_END|ram~97_combout\;
\CPU|RAM_END|ALT_INV_ram~93_combout\ <= NOT \CPU|RAM_END|ram~93_combout\;
\CPU|RAM_END|ALT_INV_ram~89_combout\ <= NOT \CPU|RAM_END|ram~89_combout\;
\CPU|RAM_END|ALT_INV_ram~85_combout\ <= NOT \CPU|RAM_END|ram~85_combout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;

-- Location: IOOBUF_X8_Y45_N42
\PalavraControle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(0));

-- Location: IOOBUF_X54_Y21_N5
\PalavraControle[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(1));

-- Location: IOOBUF_X8_Y45_N76
\PalavraControle[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(2));

-- Location: IOOBUF_X12_Y45_N19
\PalavraControle[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(3));

-- Location: IOOBUF_X54_Y14_N45
\PalavraControle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PalavraControle(4));

-- Location: IOOBUF_X20_Y45_N2
\PalavraControle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(5));

-- Location: IOOBUF_X48_Y45_N53
\PalavraControle[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PalavraControle(6));

-- Location: IOOBUF_X10_Y45_N19
\PalavraControle[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(7));

-- Location: IOOBUF_X10_Y45_N53
\PalavraControle[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(8));

-- Location: IOOBUF_X20_Y45_N19
\PalavraControle[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PalavraControle(9));

-- Location: IOOBUF_X40_Y45_N42
\PalavraControle[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PalavraControle(10));

-- Location: IOOBUF_X12_Y45_N36
\PalavraControle[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(11));

-- Location: IOOBUF_X54_Y17_N22
\PalavraControle[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(12));

-- Location: IOOBUF_X8_Y45_N93
\PalavraControle[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~15_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(13));

-- Location: IOOBUF_X8_Y45_N59
\PalavraControle[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~16_combout\,
	devoe => ww_devoe,
	o => ww_PalavraControle(14));

-- Location: IOOBUF_X16_Y45_N59
\ProgramCounter[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ENDERECO|saida_MUX[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ProgramCounter(0));

-- Location: IOOBUF_X12_Y45_N53
\ProgramCounter[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ENDERECO|saida_MUX[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_ProgramCounter(1));

-- Location: IOOBUF_X10_Y45_N36
\ProgramCounter[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ENDERECO|saida_MUX[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_ProgramCounter(2));

-- Location: IOOBUF_X16_Y45_N76
\ProgramCounter[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ENDERECO|saida_MUX[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_ProgramCounter(3));

-- Location: IOOBUF_X12_Y45_N2
\ProgramCounter[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ENDERECO|saida_MUX[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_ProgramCounter(4));

-- Location: IOOBUF_X14_Y45_N2
\ProgramCounter[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ENDERECO|saida_MUX[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_ProgramCounter(5));

-- Location: IOOBUF_X10_Y45_N2
\ProgramCounter[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ENDERECO|saida_MUX[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_ProgramCounter(6));

-- Location: IOOBUF_X14_Y45_N19
\ProgramCounter[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ENDERECO|saida_MUX[7]~8_combout\,
	devoe => ww_devoe,
	o => ww_ProgramCounter(7));

-- Location: IOOBUF_X10_Y0_N42
\ProgramCounter[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|MUX_ENDERECO|saida_MUX[8]~9_combout\,
	devoe => ww_devoe,
	o => ww_ProgramCounter(8));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador_LEDs|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador_LEDs|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador_LEDs|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador_LEDs|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador_LEDs|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador_LEDs|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador_LEDs|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador_LEDs|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FlipFlopLed8|DOUT~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FlipFlopLed9|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X48_Y0_N59
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X44_Y0_N19
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X52_Y0_N19
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X43_Y0_N2
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X36_Y0_N2
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X6_Y18_N30
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: LABCELL_X6_Y18_N33
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: FF_X7_Y18_N35
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_ENDERECO|saida_MUX[8]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y18_N36
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))
-- \CPU|incrementaPC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\,
	cout => \CPU|incrementaPC|Add0~18\);

-- Location: LABCELL_X6_Y18_N39
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))
-- \CPU|incrementaPC|Add0~34\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementaPC|Add0~18\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\,
	cout => \CPU|incrementaPC|Add0~34\);

-- Location: LABCELL_X6_Y18_N42
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: LABCELL_X7_Y18_N21
\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( \CPU|incrementaPC|Add0~17_sumout\ & ( !\CPU|incrementaPC|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \ROM|memROM~3_combout\);

-- Location: LABCELL_X7_Y18_N9
\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = ( \ROM|memROM~3_combout\ & ( !\CPU|incrementaPC|Add0~1_sumout\ & ( (!\CPU|incrementaPC|Add0~13_sumout\ & (!\CPU|incrementaPC|Add0~5_sumout\ & (\ROM|memROM~8_combout\ & !\CPU|incrementaPC|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datab => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \ROM|ALT_INV_memROM~3_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \ROM|memROM~18_combout\);

-- Location: MLABCELL_X9_Y18_N18
\CPU|REG_retorno|DOUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REG_retorno|DOUT[0]~1_combout\ = !\CPU|REG_retorno|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|REG_retorno|ALT_INV_DOUT\(0),
	combout => \CPU|REG_retorno|DOUT[0]~1_combout\);

-- Location: FF_X7_Y18_N16
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_ENDERECO|saida_MUX[7]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LABCELL_X5_Y18_N57
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\CPU|PC|DOUT[8]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X7_Y20_N9
\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \CPU|PC|DOUT\(2) & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0)) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001111000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~11_combout\);

-- Location: LABCELL_X6_Y18_N9
\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = ( !\CPU|incrementaPC|Add0~21_sumout\ & ( \CPU|incrementaPC|Add0~17_sumout\ & ( (!\CPU|incrementaPC|Add0~9_sumout\ & (!\CPU|incrementaPC|Add0~1_sumout\ & (!\CPU|incrementaPC|Add0~5_sumout\ & !\CPU|incrementaPC|Add0~13_sumout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	datab => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \ROM|memROM~17_combout\);

-- Location: LABCELL_X7_Y19_N51
\CPU|DECODER|saida[11]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[11]~3_combout\ = ( !\CPU|incrementaPC|Add0~29_sumout\ & ( !\ROM|memROM~15_combout\ & ( (\ROM|memROM~17_combout\ & (\ROM|memROM~8_combout\ & (!\ROM|memROM~14_combout\ $ (!\ROM|memROM~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|saida[11]~3_combout\);

-- Location: FF_X9_Y18_N19
\CPU|REG_retorno|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|REG_retorno|DOUT[0]~1_combout\,
	ena => \CPU|DECODER|saida[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_retorno|DOUT\(0));

-- Location: MLABCELL_X9_Y18_N6
\CPU|ULA_END|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_END|Add0~1_combout\ = ( \CPU|REG_retorno|DOUT\(2) & ( \CPU|REG_retorno|DOUT\(0) & ( ((!\ROM|memROM~18_combout\) # ((!\CPU|DECODER|Equal11~2_combout\) # (!\CPU|REG_retorno|DOUT\(1)))) # (\CPU|incrementaPC|Add0~29_sumout\) ) ) ) # ( 
-- !\CPU|REG_retorno|DOUT\(2) & ( \CPU|REG_retorno|DOUT\(0) & ( (!\CPU|incrementaPC|Add0~29_sumout\ & (\ROM|memROM~18_combout\ & (\CPU|DECODER|Equal11~2_combout\ & \CPU|REG_retorno|DOUT\(1)))) ) ) ) # ( \CPU|REG_retorno|DOUT\(2) & ( 
-- !\CPU|REG_retorno|DOUT\(0) & ( ((!\CPU|incrementaPC|Add0~29_sumout\ & (\ROM|memROM~18_combout\ & \CPU|DECODER|Equal11~2_combout\))) # (\CPU|REG_retorno|DOUT\(1)) ) ) ) # ( !\CPU|REG_retorno|DOUT\(2) & ( !\CPU|REG_retorno|DOUT\(0) & ( 
-- (!\CPU|REG_retorno|DOUT\(1) & (((!\ROM|memROM~18_combout\) # (!\CPU|DECODER|Equal11~2_combout\)) # (\CPU|incrementaPC|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110100000000000000101111111100000000000000101111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datab => \ROM|ALT_INV_memROM~18_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~2_combout\,
	datad => \CPU|REG_retorno|ALT_INV_DOUT\(1),
	datae => \CPU|REG_retorno|ALT_INV_DOUT\(2),
	dataf => \CPU|REG_retorno|ALT_INV_DOUT\(0),
	combout => \CPU|ULA_END|Add0~1_combout\);

-- Location: FF_X9_Y18_N7
\CPU|REG_retorno|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA_END|Add0~1_combout\,
	ena => \CPU|DECODER|saida[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_retorno|DOUT\(2));

-- Location: MLABCELL_X9_Y18_N45
\CPU|DECODER|Equal11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~1_combout\ = ( !\ROM|memROM~11_combout\ & ( (!\ROM|memROM~15_combout\ & \ROM|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal11~1_combout\);

-- Location: LABCELL_X7_Y18_N57
\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( !\CPU|incrementaPC|Add0~1_sumout\ & ( (\CPU|incrementaPC|Add0~17_sumout\ & !\CPU|incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \ROM|memROM~7_combout\);

-- Location: LABCELL_X7_Y18_N6
\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( \ROM|memROM~7_combout\ & ( !\CPU|incrementaPC|Add0~29_sumout\ & ( (!\CPU|incrementaPC|Add0~13_sumout\ & (!\CPU|incrementaPC|Add0~5_sumout\ & (!\CPU|incrementaPC|Add0~9_sumout\ & \ROM|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datab => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	datad => \ROM|ALT_INV_memROM~8_combout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \ROM|memROM~16_combout\);

-- Location: MLABCELL_X9_Y18_N0
\CPU|MUX_END|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_END|saida_MUX[2]~0_combout\ = ( \CPU|DECODER|Equal11~1_combout\ & ( \ROM|memROM~16_combout\ & ( !\CPU|REG_retorno|DOUT\(2) $ (((!\CPU|REG_retorno|DOUT\(0) & ((\CPU|REG_retorno|DOUT\(1)) # (\CPU|DECODER|Equal11~2_combout\))) # 
-- (\CPU|REG_retorno|DOUT\(0) & ((!\CPU|DECODER|Equal11~2_combout\) # (!\CPU|REG_retorno|DOUT\(1)))))) ) ) ) # ( !\CPU|DECODER|Equal11~1_combout\ & ( \ROM|memROM~16_combout\ & ( \CPU|REG_retorno|DOUT\(2) ) ) ) # ( \CPU|DECODER|Equal11~1_combout\ & ( 
-- !\ROM|memROM~16_combout\ & ( \CPU|REG_retorno|DOUT\(2) ) ) ) # ( !\CPU|DECODER|Equal11~1_combout\ & ( !\ROM|memROM~16_combout\ & ( \CPU|REG_retorno|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101011001010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|REG_retorno|ALT_INV_DOUT\(2),
	datab => \CPU|REG_retorno|ALT_INV_DOUT\(0),
	datac => \CPU|DECODER|ALT_INV_Equal11~2_combout\,
	datad => \CPU|REG_retorno|ALT_INV_DOUT\(1),
	datae => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|MUX_END|saida_MUX[2]~0_combout\);

-- Location: LABCELL_X7_Y18_N42
\CPU|DECODER|Equal11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~4_combout\ = ( !\ROM|memROM~14_combout\ & ( \ROM|memROM~17_combout\ & ( (!\ROM|memROM~15_combout\ & (\ROM|memROM~8_combout\ & (!\CPU|incrementaPC|Add0~29_sumout\ & \ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \CPU|DECODER|Equal11~4_combout\);

-- Location: MLABCELL_X9_Y18_N48
\CPU|MUX_END|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_END|saida_MUX[0]~2_combout\ = ( \ROM|memROM~17_combout\ & ( !\CPU|REG_retorno|DOUT\(0) $ ((((!\ROM|memROM~8_combout\) # (!\CPU|DECODER|Equal11~1_combout\)) # (\CPU|incrementaPC|Add0~29_sumout\))) ) ) # ( !\ROM|memROM~17_combout\ & ( 
-- \CPU|REG_retorno|DOUT\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001110010011001100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datab => \CPU|REG_retorno|ALT_INV_DOUT\(0),
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \CPU|MUX_END|saida_MUX[0]~2_combout\);

-- Location: LABCELL_X10_Y18_N30
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (!\CPU|MUX_END|saida_MUX[1]~1_combout\ & (\CPU|MUX_END|saida_MUX[2]~0_combout\ & (\CPU|DECODER|Equal11~4_combout\ & \CPU|MUX_END|saida_MUX[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~4_combout\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	combout => \rtl~0_combout\);

-- Location: FF_X10_Y18_N7
\CPU|RAM_END|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~21_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~62_q\);

-- Location: LABCELL_X7_Y18_N18
\rtl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (\CPU|MUX_END|saida_MUX[2]~0_combout\ & (\CPU|DECODER|Equal11~4_combout\ & !\CPU|MUX_END|saida_MUX[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~4_combout\,
	datac => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	combout => \rtl~3_combout\);

-- Location: FF_X7_Y18_N4
\CPU|RAM_END|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~21_sumout\,
	sload => VCC,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~71_q\);

-- Location: FF_X12_Y18_N32
\CPU|RAM_END|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~21_sumout\,
	sload => VCC,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~80_q\);

-- Location: MLABCELL_X9_Y18_N42
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \CPU|MUX_END|saida_MUX[0]~2_combout\ & ( (!\CPU|MUX_END|saida_MUX[1]~1_combout\ & (\CPU|DECODER|Equal11~4_combout\ & !\CPU|MUX_END|saida_MUX[2]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~4_combout\,
	datac => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	combout => \rtl~4_combout\);

-- Location: FF_X9_Y18_N43
\CPU|RAM_END|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~21_sumout\,
	sload => VCC,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~26_q\);

-- Location: MLABCELL_X9_Y18_N33
\rtl~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = ( !\CPU|MUX_END|saida_MUX[2]~0_combout\ & ( (\CPU|MUX_END|saida_MUX[0]~2_combout\ & (\CPU|DECODER|Equal11~4_combout\ & \CPU|MUX_END|saida_MUX[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000000000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~4_combout\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \rtl~5_combout\);

-- Location: FF_X12_Y18_N13
\CPU|RAM_END|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~21_sumout\,
	sload => VCC,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~44_q\);

-- Location: MLABCELL_X9_Y18_N39
\rtl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = ( \CPU|DECODER|Equal11~4_combout\ & ( !\CPU|MUX_END|saida_MUX[0]~2_combout\ & ( (!\CPU|MUX_END|saida_MUX[2]~0_combout\ & \CPU|MUX_END|saida_MUX[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal11~4_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	combout => \rtl~7_combout\);

-- Location: FF_X6_Y18_N58
\CPU|RAM_END|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~21_sumout\,
	sload => VCC,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~35_q\);

-- Location: MLABCELL_X9_Y18_N27
\rtl~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = ( !\CPU|MUX_END|saida_MUX[0]~2_combout\ & ( (!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (\CPU|DECODER|Equal11~4_combout\ & !\CPU|MUX_END|saida_MUX[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~4_combout\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	combout => \rtl~6_combout\);

-- Location: FF_X9_Y18_N29
\CPU|RAM_END|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~21_sumout\,
	sload => VCC,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~17_q\);

-- Location: LABCELL_X12_Y18_N12
\CPU|RAM_END|ram~137\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~137_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~17_q\ & !\CPU|MUX_END|saida_MUX[2]~0_combout\)))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- (((\CPU|MUX_END|saida_MUX[2]~0_combout\)) # (\CPU|RAM_END|ram~26_q\)))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~35_q\ & !\CPU|MUX_END|saida_MUX[2]~0_combout\)))) # 
-- (\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|MUX_END|saida_MUX[2]~0_combout\)) # (\CPU|RAM_END|ram~44_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~26_q\,
	datab => \CPU|RAM_END|ALT_INV_ram~44_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~35_q\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~17_q\,
	combout => \CPU|RAM_END|ram~137_combout\);

-- Location: LABCELL_X10_Y18_N54
\rtl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = ( \CPU|MUX_END|saida_MUX[2]~0_combout\ & ( (!\CPU|MUX_END|saida_MUX[1]~1_combout\ & (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & \CPU|DECODER|Equal11~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~4_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \rtl~2_combout\);

-- Location: FF_X10_Y18_N55
\CPU|RAM_END|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~21_sumout\,
	sload => VCC,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~53_q\);

-- Location: LABCELL_X12_Y18_N30
\CPU|RAM_END|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~101_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((((\CPU|RAM_END|ram~137_combout\))))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((!\CPU|RAM_END|ram~137_combout\ & 
-- ((\CPU|RAM_END|ram~53_q\))) # (\CPU|RAM_END|ram~137_combout\ & (\CPU|RAM_END|ram~62_q\))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~137_combout\)))) # 
-- (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~137_combout\ & (\CPU|RAM_END|ram~71_q\)) # (\CPU|RAM_END|ram~137_combout\ & ((\CPU|RAM_END|ram~80_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~62_q\,
	datab => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|RAM_END|ALT_INV_ram~71_q\,
	datad => \CPU|RAM_END|ALT_INV_ram~80_q\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~137_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~53_q\,
	combout => \CPU|RAM_END|ram~101_combout\);

-- Location: LABCELL_X6_Y18_N27
\CPU|MUX_ENDERECO|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[4]~5_combout\ = ( \CPU|RAM_END|ram~101_combout\ & ( (!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\CPU|incrementaPC|Add0~21_sumout\) # (\CPU|DECODER|Equal11~0_combout\))) ) ) # ( !\CPU|RAM_END|ram~101_combout\ & ( 
-- (!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & \CPU|incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~101_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[4]~5_combout\);

-- Location: FF_X6_Y18_N29
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_ENDERECO|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LABCELL_X6_Y18_N45
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: FF_X10_Y18_N35
\CPU|RAM_END|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~1_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~63_q\);

-- Location: FF_X10_Y18_N44
\CPU|RAM_END|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~1_sumout\,
	sload => VCC,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~81_q\);

-- Location: FF_X7_Y18_N22
\CPU|RAM_END|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~1_sumout\,
	sload => VCC,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~72_q\);

-- Location: LABCELL_X10_Y19_N9
\CPU|RAM_END|ram~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~27feeder_combout\ = \CPU|incrementaPC|Add0~1_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|RAM_END|ram~27feeder_combout\);

-- Location: FF_X10_Y19_N11
\CPU|RAM_END|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~27feeder_combout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~27_q\);

-- Location: MLABCELL_X9_Y19_N51
\CPU|RAM_END|ram~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~36feeder_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|RAM_END|ram~36feeder_combout\);

-- Location: FF_X9_Y19_N52
\CPU|RAM_END|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~36feeder_combout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~36_q\);

-- Location: MLABCELL_X9_Y19_N9
\CPU|RAM_END|ram~45feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~45feeder_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|RAM_END|ram~45feeder_combout\);

-- Location: FF_X9_Y19_N11
\CPU|RAM_END|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~45feeder_combout\,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~45_q\);

-- Location: LABCELL_X10_Y19_N27
\CPU|RAM_END|ram~18feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~18feeder_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|RAM_END|ram~18feeder_combout\);

-- Location: FF_X10_Y19_N29
\CPU|RAM_END|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~18feeder_combout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~18_q\);

-- Location: LABCELL_X10_Y19_N42
\CPU|RAM_END|ram~141\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~141_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~18_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- ((((\CPU|MUX_END|saida_MUX[2]~0_combout\))) # (\CPU|RAM_END|ram~27_q\))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~36_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # 
-- (\CPU|MUX_END|saida_MUX[0]~2_combout\ & ((((\CPU|MUX_END|saida_MUX[2]~0_combout\) # (\CPU|RAM_END|ram~45_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datab => \CPU|RAM_END|ALT_INV_ram~27_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~36_q\,
	datad => \CPU|RAM_END|ALT_INV_ram~45_q\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~18_q\,
	combout => \CPU|RAM_END|ram~141_combout\);

-- Location: LABCELL_X10_Y18_N57
\CPU|RAM_END|ram~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~54feeder_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|RAM_END|ram~54feeder_combout\);

-- Location: FF_X10_Y18_N59
\CPU|RAM_END|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~54feeder_combout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~54_q\);

-- Location: LABCELL_X10_Y18_N42
\CPU|RAM_END|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~105_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~141_combout\)))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~141_combout\ & 
-- ((\CPU|RAM_END|ram~54_q\))) # (\CPU|RAM_END|ram~141_combout\ & (\CPU|RAM_END|ram~63_q\))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~141_combout\)))) # 
-- (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~141_combout\ & ((\CPU|RAM_END|ram~72_q\))) # (\CPU|RAM_END|ram~141_combout\ & (\CPU|RAM_END|ram~81_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~63_q\,
	datab => \CPU|RAM_END|ALT_INV_ram~81_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~72_q\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~141_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~54_q\,
	combout => \CPU|RAM_END|ram~105_combout\);

-- Location: LABCELL_X6_Y18_N0
\CPU|MUX_ENDERECO|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[5]~6_combout\ = ( \CPU|RAM_END|ram~105_combout\ & ( ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & (\CPU|incrementaPC|Add0~1_sumout\)) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\ROM|memROM~9_combout\)))) # 
-- (\CPU|DECODER|Equal11~0_combout\) ) ) # ( !\CPU|RAM_END|ram~105_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\ & ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & (\CPU|incrementaPC|Add0~1_sumout\)) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & 
-- ((\ROM|memROM~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~105_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[5]~6_combout\);

-- Location: FF_X6_Y18_N2
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_ENDERECO|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X6_Y18_N48
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: FF_X12_Y18_N38
\CPU|RAM_END|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~5_sumout\,
	sload => VCC,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~82_q\);

-- Location: LABCELL_X12_Y18_N21
\CPU|RAM_END|ram~64feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~64feeder_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|RAM_END|ram~64feeder_combout\);

-- Location: FF_X12_Y18_N22
\CPU|RAM_END|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~64feeder_combout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~64_q\);

-- Location: FF_X7_Y18_N1
\CPU|RAM_END|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~5_sumout\,
	sload => VCC,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~73_q\);

-- Location: LABCELL_X10_Y19_N57
\CPU|RAM_END|ram~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~28feeder_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|RAM_END|ram~28feeder_combout\);

-- Location: FF_X10_Y19_N58
\CPU|RAM_END|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~28feeder_combout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~28_q\);

-- Location: FF_X12_Y18_N25
\CPU|RAM_END|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~5_sumout\,
	sload => VCC,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~46_q\);

-- Location: FF_X6_Y18_N50
\CPU|RAM_END|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~5_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~37_q\);

-- Location: FF_X9_Y18_N25
\CPU|RAM_END|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~5_sumout\,
	sload => VCC,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~19_q\);

-- Location: LABCELL_X12_Y18_N24
\CPU|RAM_END|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~145_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~19_q\ & !\CPU|MUX_END|saida_MUX[2]~0_combout\)))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- (((\CPU|MUX_END|saida_MUX[2]~0_combout\)) # (\CPU|RAM_END|ram~28_q\)))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~37_q\ & !\CPU|MUX_END|saida_MUX[2]~0_combout\)))) # 
-- (\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|MUX_END|saida_MUX[2]~0_combout\)) # (\CPU|RAM_END|ram~46_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~28_q\,
	datab => \CPU|RAM_END|ALT_INV_ram~46_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~37_q\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~19_q\,
	combout => \CPU|RAM_END|ram~145_combout\);

-- Location: FF_X10_Y18_N25
\CPU|RAM_END|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~5_sumout\,
	sload => VCC,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~55_q\);

-- Location: LABCELL_X12_Y18_N36
\CPU|RAM_END|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~109_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~145_combout\)))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~145_combout\ & 
-- ((\CPU|RAM_END|ram~55_q\))) # (\CPU|RAM_END|ram~145_combout\ & (\CPU|RAM_END|ram~64_q\))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~145_combout\)))) # 
-- (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~145_combout\ & ((\CPU|RAM_END|ram~73_q\))) # (\CPU|RAM_END|ram~145_combout\ & (\CPU|RAM_END|ram~82_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~82_q\,
	datab => \CPU|RAM_END|ALT_INV_ram~64_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~73_q\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~145_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~55_q\,
	combout => \CPU|RAM_END|ram~109_combout\);

-- Location: LABCELL_X6_Y18_N21
\CPU|MUX_ENDERECO|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[6]~7_combout\ = ( \CPU|RAM_END|ram~109_combout\ & ( (!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\CPU|DECODER|Equal11~0_combout\) # (\CPU|incrementaPC|Add0~5_sumout\))) ) ) # ( !\CPU|RAM_END|ram~109_combout\ & ( 
-- (\CPU|incrementaPC|Add0~5_sumout\ & !\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~109_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[6]~7_combout\);

-- Location: FF_X6_Y18_N23
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_ENDERECO|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LABCELL_X6_Y18_N51
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: LABCELL_X6_Y18_N54
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\);

-- Location: LABCELL_X7_Y18_N36
\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( \ROM|memROM~7_combout\ & ( \CPU|incrementaPC|Add0~29_sumout\ & ( (!\CPU|incrementaPC|Add0~13_sumout\ & (\ROM|memROM~8_combout\ & (!\CPU|incrementaPC|Add0~9_sumout\ & !\CPU|incrementaPC|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \ROM|memROM~9_combout\);

-- Location: FF_X10_Y18_N50
\CPU|RAM_END|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~9_sumout\,
	sload => VCC,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~83_q\);

-- Location: FF_X7_Y18_N46
\CPU|RAM_END|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~9_sumout\,
	sload => VCC,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~74_q\);

-- Location: LABCELL_X10_Y18_N9
\CPU|RAM_END|ram~65feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~65feeder_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|RAM_END|ram~65feeder_combout\);

-- Location: FF_X10_Y18_N11
\CPU|RAM_END|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~65feeder_combout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~65_q\);

-- Location: FF_X10_Y19_N49
\CPU|RAM_END|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~9_sumout\,
	sload => VCC,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~47_q\);

-- Location: MLABCELL_X9_Y19_N30
\CPU|RAM_END|ram~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~38feeder_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|RAM_END|ram~38feeder_combout\);

-- Location: FF_X9_Y19_N31
\CPU|RAM_END|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~38feeder_combout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~38_q\);

-- Location: FF_X10_Y19_N10
\CPU|RAM_END|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~9_sumout\,
	sload => VCC,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~29_q\);

-- Location: LABCELL_X10_Y19_N39
\CPU|RAM_END|ram~20feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~20feeder_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|RAM_END|ram~20feeder_combout\);

-- Location: FF_X10_Y19_N41
\CPU|RAM_END|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~20feeder_combout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~20_q\);

-- Location: LABCELL_X10_Y19_N48
\CPU|RAM_END|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~149_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~20_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- ((((\CPU|MUX_END|saida_MUX[2]~0_combout\) # (\CPU|RAM_END|ram~29_q\))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~38_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # 
-- (\CPU|MUX_END|saida_MUX[0]~2_combout\ & ((((\CPU|MUX_END|saida_MUX[2]~0_combout\))) # (\CPU|RAM_END|ram~47_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datab => \CPU|RAM_END|ALT_INV_ram~47_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~38_q\,
	datad => \CPU|RAM_END|ALT_INV_ram~29_q\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~20_q\,
	combout => \CPU|RAM_END|ram~149_combout\);

-- Location: LABCELL_X10_Y18_N36
\CPU|RAM_END|ram~56feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~56feeder_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|RAM_END|ram~56feeder_combout\);

-- Location: FF_X10_Y18_N38
\CPU|RAM_END|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~56feeder_combout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~56_q\);

-- Location: LABCELL_X10_Y18_N48
\CPU|RAM_END|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~113_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~149_combout\)))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~149_combout\ & 
-- (\CPU|RAM_END|ram~56_q\)) # (\CPU|RAM_END|ram~149_combout\ & ((\CPU|RAM_END|ram~65_q\)))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((((\CPU|RAM_END|ram~149_combout\))))) # 
-- (\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((!\CPU|RAM_END|ram~149_combout\ & ((\CPU|RAM_END|ram~74_q\))) # (\CPU|RAM_END|ram~149_combout\ & (\CPU|RAM_END|ram~83_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~83_q\,
	datab => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|RAM_END|ALT_INV_ram~74_q\,
	datad => \CPU|RAM_END|ALT_INV_ram~65_q\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~149_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~56_q\,
	combout => \CPU|RAM_END|ram~113_combout\);

-- Location: LABCELL_X7_Y18_N3
\CPU|MUX_ENDERECO|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[7]~8_combout\ = ( \CPU|RAM_END|ram~113_combout\ & ( ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & (\ROM|memROM~9_combout\))) # 
-- (\CPU|DECODER|Equal11~0_combout\) ) ) # ( !\CPU|RAM_END|ram~113_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\ & ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\CPU|incrementaPC|Add0~9_sumout\))) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & 
-- (\ROM|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000110111111101110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~113_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[7]~8_combout\);

-- Location: FF_X7_Y18_N17
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_ENDERECO|saida_MUX[7]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y18_N18
\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = ( !\CPU|incrementaPC|Add0~33_sumout\ & ( (\CPU|incrementaPC|Add0~25_sumout\ & (\CPU|incrementaPC|Add0~29_sumout\ & \CPU|incrementaPC|Add0~17_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \ROM|memROM~20_combout\);

-- Location: LABCELL_X6_Y18_N6
\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\CPU|incrementaPC|Add0~21_sumout\ & ( \ROM|memROM~20_combout\ & ( (!\CPU|incrementaPC|Add0~9_sumout\ & (!\CPU|incrementaPC|Add0~1_sumout\ & (!\CPU|incrementaPC|Add0~13_sumout\ & !\CPU|incrementaPC|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	datab => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \ROM|ALT_INV_memROM~20_combout\,
	combout => \ROM|memROM~4_combout\);

-- Location: FF_X10_Y18_N14
\CPU|RAM_END|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~17_sumout\,
	sload => VCC,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~78_q\);

-- Location: FF_X7_Y18_N25
\CPU|RAM_END|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~17_sumout\,
	sload => VCC,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~69_q\);

-- Location: LABCELL_X10_Y18_N33
\CPU|RAM_END|ram~60feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~60feeder_combout\ = \CPU|incrementaPC|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|RAM_END|ram~60feeder_combout\);

-- Location: FF_X10_Y18_N34
\CPU|RAM_END|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~60feeder_combout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~60_q\);

-- Location: FF_X10_Y19_N8
\CPU|RAM_END|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~17_sumout\,
	sload => VCC,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~24_q\);

-- Location: FF_X9_Y19_N55
\CPU|RAM_END|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~17_sumout\,
	sload => VCC,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~33_q\);

-- Location: FF_X10_Y19_N44
\CPU|RAM_END|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~17_sumout\,
	sload => VCC,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~42_q\);

-- Location: FF_X10_Y19_N2
\CPU|RAM_END|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~17_sumout\,
	sload => VCC,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~15_q\);

-- Location: LABCELL_X10_Y19_N0
\CPU|RAM_END|ram~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~129_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~15_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- ((((\CPU|MUX_END|saida_MUX[2]~0_combout\))) # (\CPU|RAM_END|ram~24_q\))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~33_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # 
-- (\CPU|MUX_END|saida_MUX[0]~2_combout\ & ((((\CPU|MUX_END|saida_MUX[2]~0_combout\) # (\CPU|RAM_END|ram~42_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datab => \CPU|RAM_END|ALT_INV_ram~24_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~33_q\,
	datad => \CPU|RAM_END|ALT_INV_ram~42_q\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~15_q\,
	combout => \CPU|RAM_END|ram~129_combout\);

-- Location: LABCELL_X10_Y18_N39
\CPU|RAM_END|ram~51feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~51feeder_combout\ = \CPU|incrementaPC|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|RAM_END|ram~51feeder_combout\);

-- Location: FF_X10_Y18_N40
\CPU|RAM_END|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~51feeder_combout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~51_q\);

-- Location: LABCELL_X10_Y18_N12
\CPU|RAM_END|ram~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~93_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~129_combout\)))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~129_combout\ & 
-- (\CPU|RAM_END|ram~51_q\)) # (\CPU|RAM_END|ram~129_combout\ & ((\CPU|RAM_END|ram~60_q\)))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((((\CPU|RAM_END|ram~129_combout\))))) # 
-- (\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((!\CPU|RAM_END|ram~129_combout\ & ((\CPU|RAM_END|ram~69_q\))) # (\CPU|RAM_END|ram~129_combout\ & (\CPU|RAM_END|ram~78_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~78_q\,
	datab => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datac => \CPU|RAM_END|ALT_INV_ram~69_q\,
	datad => \CPU|RAM_END|ALT_INV_ram~60_q\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~129_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~51_q\,
	combout => \CPU|RAM_END|ram~93_combout\);

-- Location: LABCELL_X6_Y18_N24
\CPU|MUX_ENDERECO|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[2]~3_combout\ = ( \CPU|RAM_END|ram~93_combout\ & ( ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\CPU|incrementaPC|Add0~17_sumout\))) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & (\ROM|memROM~4_combout\))) # 
-- (\CPU|DECODER|Equal11~0_combout\) ) ) # ( !\CPU|RAM_END|ram~93_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\ & ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\CPU|incrementaPC|Add0~17_sumout\))) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & 
-- (\ROM|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~93_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[2]~3_combout\);

-- Location: FF_X6_Y18_N26
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_ENDERECO|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: LABCELL_X7_Y20_N36
\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \CPU|PC|DOUT\(2) & ( \ROM|memROM~0_combout\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(1))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \ROM|memROM~0_combout\ & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(1))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~10_combout\);

-- Location: FF_X12_Y18_N7
\CPU|RAM_END|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~84_q\);

-- Location: LABCELL_X12_Y18_N42
\CPU|RAM_END|ram~66feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~66feeder_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|RAM_END|ram~66feeder_combout\);

-- Location: FF_X12_Y18_N44
\CPU|RAM_END|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~66feeder_combout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~66_q\);

-- Location: FF_X7_Y18_N43
\CPU|RAM_END|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~75_q\);

-- Location: FF_X7_Y18_N53
\CPU|RAM_END|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~30_q\);

-- Location: FF_X12_Y18_N49
\CPU|RAM_END|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~48_q\);

-- Location: FF_X6_Y18_N56
\CPU|RAM_END|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|incrementaPC|Add0~13_sumout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~39_q\);

-- Location: FF_X9_Y18_N56
\CPU|RAM_END|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~21_q\);

-- Location: LABCELL_X12_Y18_N48
\CPU|RAM_END|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~153_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~21_q\ & !\CPU|MUX_END|saida_MUX[2]~0_combout\)))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- (((\CPU|MUX_END|saida_MUX[2]~0_combout\)) # (\CPU|RAM_END|ram~30_q\)))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~39_q\ & !\CPU|MUX_END|saida_MUX[2]~0_combout\)))) # 
-- (\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|MUX_END|saida_MUX[2]~0_combout\)) # (\CPU|RAM_END|ram~48_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~30_q\,
	datab => \CPU|RAM_END|ALT_INV_ram~48_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~39_q\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~21_q\,
	combout => \CPU|RAM_END|ram~153_combout\);

-- Location: FF_X10_Y18_N58
\CPU|RAM_END|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~57_q\);

-- Location: LABCELL_X12_Y18_N6
\CPU|RAM_END|ram~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~117_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~153_combout\)))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~153_combout\ & 
-- ((\CPU|RAM_END|ram~57_q\))) # (\CPU|RAM_END|ram~153_combout\ & (\CPU|RAM_END|ram~66_q\))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~153_combout\)))) # 
-- (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~153_combout\ & ((\CPU|RAM_END|ram~75_q\))) # (\CPU|RAM_END|ram~153_combout\ & (\CPU|RAM_END|ram~84_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~84_q\,
	datab => \CPU|RAM_END|ALT_INV_ram~66_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~75_q\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~153_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~57_q\,
	combout => \CPU|RAM_END|ram~117_combout\);

-- Location: LABCELL_X7_Y18_N54
\CPU|MUX_ENDERECO|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[8]~9_combout\ = ( \CPU|RAM_END|ram~117_combout\ & ( ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\CPU|incrementaPC|Add0~13_sumout\))) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & (\ROM|memROM~10_combout\))) # 
-- (\CPU|DECODER|Equal11~0_combout\) ) ) # ( !\CPU|RAM_END|ram~117_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\ & ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\CPU|incrementaPC|Add0~13_sumout\))) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & 
-- (\ROM|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000100001011000000011111101111110001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~117_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[8]~9_combout\);

-- Location: FF_X7_Y18_N34
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|MUX_ENDERECO|saida_MUX[8]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: LABCELL_X6_Y20_N30
\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = ( \CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))) ) ) # ( !\CPU|PC|DOUT\(1) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000011000000001100001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~13_combout\);

-- Location: LABCELL_X7_Y18_N27
\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[7]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~12_combout\);

-- Location: LABCELL_X5_Y18_N42
\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( \CPU|PC|DOUT\(7) & ( \CPU|PC|DOUT\(1) & ( (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT[8]~DUPLICATE_q\ & (\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(1),
	combout => \ROM|memROM~5_combout\);

-- Location: LABCELL_X6_Y20_N9
\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \ROM|memROM~12_combout\ & ( \ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(3))) # (\ROM|memROM~13_combout\))) ) ) ) # ( !\ROM|memROM~12_combout\ & ( \ROM|memROM~5_combout\ & ( 
-- (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) ) ) ) # ( \ROM|memROM~12_combout\ & ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~13_combout\ & \CPU|PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000001010000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \ROM|ALT_INV_memROM~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~14_combout\);

-- Location: MLABCELL_X9_Y18_N51
\CPU|DECODER|Equal11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~2_combout\ = ( \ROM|memROM~11_combout\ & ( (!\ROM|memROM~15_combout\ & !\ROM|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal11~2_combout\);

-- Location: MLABCELL_X9_Y18_N12
\CPU|ULA_END|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA_END|Add0~0_combout\ = ( \CPU|REG_retorno|DOUT\(1) & ( \CPU|incrementaPC|Add0~29_sumout\ & ( \CPU|REG_retorno|DOUT\(0) ) ) ) # ( !\CPU|REG_retorno|DOUT\(1) & ( \CPU|incrementaPC|Add0~29_sumout\ & ( !\CPU|REG_retorno|DOUT\(0) ) ) ) # ( 
-- \CPU|REG_retorno|DOUT\(1) & ( !\CPU|incrementaPC|Add0~29_sumout\ & ( !\CPU|REG_retorno|DOUT\(0) $ (((!\CPU|DECODER|Equal11~2_combout\) # ((!\ROM|memROM~17_combout\) # (!\ROM|memROM~8_combout\)))) ) ) ) # ( !\CPU|REG_retorno|DOUT\(1) & ( 
-- !\CPU|incrementaPC|Add0~29_sumout\ & ( !\CPU|REG_retorno|DOUT\(0) $ (((\CPU|DECODER|Equal11~2_combout\ & (\ROM|memROM~17_combout\ & \ROM|memROM~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111000000001000000011111111011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~2_combout\,
	datab => \ROM|ALT_INV_memROM~17_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datad => \CPU|REG_retorno|ALT_INV_DOUT\(0),
	datae => \CPU|REG_retorno|ALT_INV_DOUT\(1),
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|ULA_END|Add0~0_combout\);

-- Location: FF_X9_Y18_N14
\CPU|REG_retorno|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA_END|Add0~0_combout\,
	ena => \CPU|DECODER|saida[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG_retorno|DOUT\(1));

-- Location: MLABCELL_X9_Y18_N54
\CPU|MUX_END|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_END|saida_MUX[1]~1_combout\ = ( \CPU|DECODER|Equal11~1_combout\ & ( \ROM|memROM~18_combout\ & ( !\CPU|REG_retorno|DOUT\(1) $ (((!\CPU|DECODER|Equal11~2_combout\ $ (!\CPU|REG_retorno|DOUT\(0))) # (\CPU|incrementaPC|Add0~29_sumout\))) ) ) ) # ( 
-- !\CPU|DECODER|Equal11~1_combout\ & ( \ROM|memROM~18_combout\ & ( \CPU|REG_retorno|DOUT\(1) ) ) ) # ( \CPU|DECODER|Equal11~1_combout\ & ( !\ROM|memROM~18_combout\ & ( \CPU|REG_retorno|DOUT\(1) ) ) ) # ( !\CPU|DECODER|Equal11~1_combout\ & ( 
-- !\ROM|memROM~18_combout\ & ( \CPU|REG_retorno|DOUT\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100111001001100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datab => \CPU|REG_retorno|ALT_INV_DOUT\(1),
	datac => \CPU|DECODER|ALT_INV_Equal11~2_combout\,
	datad => \CPU|REG_retorno|ALT_INV_DOUT\(0),
	datae => \CPU|DECODER|ALT_INV_Equal11~1_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \CPU|MUX_END|saida_MUX[1]~1_combout\);

-- Location: MLABCELL_X9_Y18_N21
\rtl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = ( \CPU|MUX_END|saida_MUX[0]~2_combout\ & ( (\CPU|MUX_END|saida_MUX[1]~1_combout\ & (\CPU|DECODER|Equal11~4_combout\ & \CPU|MUX_END|saida_MUX[2]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \CPU|DECODER|ALT_INV_Equal11~4_combout\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	combout => \rtl~1_combout\);

-- Location: FF_X12_Y18_N1
\CPU|RAM_END|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~33_sumout\,
	sload => VCC,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~79_q\);

-- Location: FF_X10_Y18_N10
\CPU|RAM_END|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~33_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~61_q\);

-- Location: FF_X7_Y18_N19
\CPU|RAM_END|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~33_sumout\,
	sload => VCC,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~70_q\);

-- Location: FF_X9_Y18_N40
\CPU|RAM_END|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~33_sumout\,
	sload => VCC,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~25_q\);

-- Location: FF_X9_Y19_N41
\CPU|RAM_END|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~33_sumout\,
	sload => VCC,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~43_q\);

-- Location: MLABCELL_X9_Y19_N3
\CPU|RAM_END|ram~34feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~34feeder_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|RAM_END|ram~34feeder_combout\);

-- Location: FF_X9_Y19_N5
\CPU|RAM_END|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~34feeder_combout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~34_q\);

-- Location: LABCELL_X10_Y19_N24
\CPU|RAM_END|ram~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~16feeder_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|RAM_END|ram~16feeder_combout\);

-- Location: FF_X10_Y19_N26
\CPU|RAM_END|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~16feeder_combout\,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~16_q\);

-- Location: MLABCELL_X9_Y19_N39
\CPU|RAM_END|ram~133\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~133_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|MUX_END|saida_MUX[0]~2_combout\ & ((\CPU|RAM_END|ram~16_q\))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- (\CPU|RAM_END|ram~25_q\)))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|MUX_END|saida_MUX[0]~2_combout\))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- ((\CPU|RAM_END|ram~34_q\))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & (\CPU|RAM_END|ram~43_q\)))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|MUX_END|saida_MUX[0]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000011110000000001010101111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~25_q\,
	datab => \CPU|RAM_END|ALT_INV_ram~43_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~34_q\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~16_q\,
	combout => \CPU|RAM_END|ram~133_combout\);

-- Location: FF_X10_Y18_N28
\CPU|RAM_END|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~33_sumout\,
	sload => VCC,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~52_q\);

-- Location: LABCELL_X12_Y18_N0
\CPU|RAM_END|ram~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~97_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~133_combout\)))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~133_combout\ & 
-- ((\CPU|RAM_END|ram~52_q\))) # (\CPU|RAM_END|ram~133_combout\ & (\CPU|RAM_END|ram~61_q\))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~133_combout\)))) # 
-- (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~133_combout\ & ((\CPU|RAM_END|ram~70_q\))) # (\CPU|RAM_END|ram~133_combout\ & (\CPU|RAM_END|ram~79_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~79_q\,
	datab => \CPU|RAM_END|ALT_INV_ram~61_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~70_q\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~133_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~52_q\,
	combout => \CPU|RAM_END|ram~97_combout\);

-- Location: LABCELL_X5_Y18_N15
\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2))) ) ) # ( !\ROM|memROM~5_combout\ & ( (\CPU|PC|DOUT\(3) & (\ROM|memROM~0_combout\ & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

-- Location: LABCELL_X6_Y18_N12
\CPU|MUX_ENDERECO|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[3]~4_combout\ = ( \ROM|memROM~6_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\ & (((\CPU|incrementaPC|Add0~33_sumout\)) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & 
-- (((\CPU|RAM_END|ram~97_combout\)))) ) ) # ( !\ROM|memROM~6_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\ & (!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & (\CPU|incrementaPC|Add0~33_sumout\))) # (\CPU|DECODER|Equal11~0_combout\ & 
-- (((\CPU|RAM_END|ram~97_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	datad => \CPU|RAM_END|ALT_INV_ram~97_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[3]~4_combout\);

-- Location: FF_X6_Y18_N14
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_ENDERECO|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LABCELL_X7_Y18_N51
\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ & ( !\CPU|incrementaPC|Add0~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \ROM|memROM~8_combout\);

-- Location: LABCELL_X7_Y18_N30
\CPU|DECODER|Equal11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~0_combout\ = ( \ROM|memROM~14_combout\ & ( \ROM|memROM~17_combout\ & ( (!\ROM|memROM~15_combout\ & (\ROM|memROM~8_combout\ & (!\CPU|incrementaPC|Add0~29_sumout\ & !\ROM|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~17_combout\,
	combout => \CPU|DECODER|Equal11~0_combout\);

-- Location: LABCELL_X5_Y18_N21
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(0)))) ) ) ) # ( \ROM|memROM~0_combout\ & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ 
-- (!\CPU|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101101000000000000000000000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~2_combout\);

-- Location: FF_X10_Y19_N32
\CPU|RAM_END|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~29_sumout\,
	sload => VCC,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~23_q\);

-- Location: MLABCELL_X9_Y19_N12
\CPU|RAM_END|ram~32feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~32feeder_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|RAM_END|ram~32feeder_combout\);

-- Location: FF_X9_Y19_N13
\CPU|RAM_END|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~32feeder_combout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~32_q\);

-- Location: FF_X10_Y19_N19
\CPU|RAM_END|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~29_sumout\,
	sload => VCC,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~41_q\);

-- Location: FF_X10_Y19_N38
\CPU|RAM_END|ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~29_sumout\,
	sload => VCC,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~14_q\);

-- Location: LABCELL_X10_Y19_N18
\CPU|RAM_END|ram~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~125_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~14_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- ((((\CPU|MUX_END|saida_MUX[2]~0_combout\))) # (\CPU|RAM_END|ram~23_q\))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~32_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # 
-- (\CPU|MUX_END|saida_MUX[0]~2_combout\ & ((((\CPU|MUX_END|saida_MUX[2]~0_combout\) # (\CPU|RAM_END|ram~41_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datab => \CPU|RAM_END|ALT_INV_ram~23_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~32_q\,
	datad => \CPU|RAM_END|ALT_INV_ram~41_q\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~14_q\,
	combout => \CPU|RAM_END|ram~125_combout\);

-- Location: LABCELL_X10_Y18_N6
\CPU|RAM_END|ram~59feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~59feeder_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|RAM_END|ram~59feeder_combout\);

-- Location: FF_X10_Y18_N8
\CPU|RAM_END|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~59feeder_combout\,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~59_q\);

-- Location: FF_X7_Y18_N40
\CPU|RAM_END|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~29_sumout\,
	sload => VCC,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~68_q\);

-- Location: FF_X10_Y18_N19
\CPU|RAM_END|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~29_sumout\,
	sload => VCC,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~77_q\);

-- Location: LABCELL_X10_Y18_N24
\CPU|RAM_END|ram~50feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~50feeder_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|RAM_END|ram~50feeder_combout\);

-- Location: FF_X10_Y18_N26
\CPU|RAM_END|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~50feeder_combout\,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~50_q\);

-- Location: LABCELL_X10_Y18_N18
\CPU|RAM_END|ram~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~89_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|RAM_END|ram~125_combout\ & (((\CPU|RAM_END|ram~50_q\ & ((\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # (\CPU|RAM_END|ram~125_combout\ & 
-- ((((!\CPU|MUX_END|saida_MUX[2]~0_combout\))) # (\CPU|RAM_END|ram~59_q\))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|RAM_END|ram~125_combout\ & (((\CPU|RAM_END|ram~68_q\ & ((\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # 
-- (\CPU|RAM_END|ram~125_combout\ & ((((!\CPU|MUX_END|saida_MUX[2]~0_combout\) # (\CPU|RAM_END|ram~77_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100011011000110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~125_combout\,
	datab => \CPU|RAM_END|ALT_INV_ram~59_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~68_q\,
	datad => \CPU|RAM_END|ALT_INV_ram~77_q\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~50_q\,
	combout => \CPU|RAM_END|ram~89_combout\);

-- Location: LABCELL_X6_Y18_N3
\CPU|MUX_ENDERECO|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[1]~2_combout\ = ( \CPU|RAM_END|ram~89_combout\ & ( ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & (\CPU|incrementaPC|Add0~29_sumout\)) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & ((\ROM|memROM~2_combout\)))) # 
-- (\CPU|DECODER|Equal11~0_combout\) ) ) # ( !\CPU|RAM_END|ram~89_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\ & ((!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & (\CPU|incrementaPC|Add0~29_sumout\)) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & 
-- ((\ROM|memROM~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~89_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[1]~2_combout\);

-- Location: FF_X6_Y18_N5
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_ENDERECO|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LABCELL_X5_Y18_N36
\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = ( \CPU|PC|DOUT\(0) & ( \ROM|memROM~5_combout\ & ( (!\CPU|PC|DOUT\(2) & (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( 
-- \ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(2)))))) ) ) ) 
-- # ( !\CPU|PC|DOUT\(0) & ( !\ROM|memROM~5_combout\ & ( (\ROM|memROM~0_combout\ & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000110001100000000011101110000001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~15_combout\);

-- Location: LABCELL_X7_Y20_N15
\CPU|FlipFlop|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlipFlop|DOUT~0_combout\ = ( \CPU|FlipFlop|DOUT~q\ & ( (((!\ROM|memROM~16_combout\) # (\ROM|memROM~11_combout\)) # (\ROM|memROM~14_combout\)) # (\ROM|memROM~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \CPU|FlipFlop|ALT_INV_DOUT~q\,
	combout => \CPU|FlipFlop|DOUT~0_combout\);

-- Location: LABCELL_X6_Y20_N0
\CPU|DECODER|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~0_combout\ = ( \ROM|memROM~16_combout\ & ( (!\ROM|memROM~15_combout\ & (\ROM|memROM~11_combout\ & \ROM|memROM~14_combout\)) ) ) # ( !\ROM|memROM~16_combout\ & ( (!\ROM|memROM~15_combout\ & (!\ROM|memROM~11_combout\ & 
-- \ROM|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|saida~0_combout\);

-- Location: LABCELL_X6_Y20_N36
\CPU|DECODER|Equal11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~6_combout\ = ( !\ROM|memROM~16_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|Equal11~6_combout\);

-- Location: LABCELL_X6_Y20_N27
\CPU|DECODER|Equal11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~5_combout\ = ( !\ROM|memROM~15_combout\ & ( \ROM|memROM~11_combout\ & ( (!\ROM|memROM~14_combout\ & ((!\ROM|memROM~8_combout\) # ((!\ROM|memROM~17_combout\) # (\CPU|incrementaPC|Add0~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100100011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|DECODER|Equal11~5_combout\);

-- Location: LABCELL_X6_Y20_N39
\CPU|DECODER|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida~2_combout\ = ( \ROM|memROM~16_combout\ & ( (\ROM|memROM~11_combout\ & (\ROM|memROM~14_combout\ & !\ROM|memROM~15_combout\)) ) ) # ( !\ROM|memROM~16_combout\ & ( (!\ROM|memROM~11_combout\ & (!\ROM|memROM~14_combout\ & 
-- \ROM|memROM~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|saida~2_combout\);

-- Location: LABCELL_X6_Y20_N42
\CPU|DECODER|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[4]~4_combout\ = ( !\CPU|DECODER|saida~2_combout\ & ( !\CPU|DECODER|Equal11~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|DECODER|ALT_INV_Equal11~5_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida~2_combout\,
	combout => \CPU|DECODER|saida[4]~4_combout\);

-- Location: LABCELL_X7_Y19_N6
\CPU|MUX_CPU|saida_MUX[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[7]~1_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ & ( \ROM|memROM~18_combout\ & ( (\ROM|memROM~15_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[7]~1_combout\);

-- Location: LABCELL_X6_Y20_N15
\CPU|DECODER|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[1]~1_combout\ = ( \ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( (\ROM|memROM~14_combout\ & !\ROM|memROM~15_combout\) ) ) ) # ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~16_combout\ & ( (!\ROM|memROM~14_combout\ & 
-- !\ROM|memROM~15_combout\) ) ) ) # ( \ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~11_combout\ & ( !\ROM|memROM~16_combout\ & ( (\ROM|memROM~14_combout\ & !\ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100001111000011000000110000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|saida[1]~1_combout\);

-- Location: LABCELL_X6_Y20_N24
\CPU|DECODER|Equal11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|Equal11~3_combout\ = ( !\ROM|memROM~11_combout\ & ( \ROM|memROM~15_combout\ & ( (!\ROM|memROM~14_combout\ & ((!\ROM|memROM~8_combout\) # ((!\ROM|memROM~17_combout\) # (\CPU|incrementaPC|Add0~29_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	datae => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|DECODER|Equal11~3_combout\);

-- Location: LABCELL_X6_Y20_N45
\CPU|MUX_CPU|saida_MUX[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[6]~0_combout\ = ( !\CPU|DECODER|Equal11~3_combout\ & ( (!\ROM|memROM~10_combout\ & (\CPU|DECODER|saida[1]~1_combout\ & !\ROM|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[1]~1_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \CPU|DECODER|ALT_INV_Equal11~3_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[6]~0_combout\);

-- Location: LABCELL_X7_Y20_N18
\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( !\ROM|memROM~14_combout\ & ( !\ROM|memROM~18_combout\ & ( (\ROM|memROM~15_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~18_combout\,
	combout => \RAM|process_0~0_combout\);

-- Location: LABCELL_X5_Y21_N27
\RAM|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~796_combout\ = ( \ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~6_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~796_combout\);

-- Location: FF_X5_Y18_N8
\RAM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~142_q\);

-- Location: MLABCELL_X4_Y20_N6
\RAM|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~795_combout\ = ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~2_combout\ & ( (\ROM|memROM~6_combout\ & (!\ROM|memROM~9_combout\ & (\RAM|process_0~0_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~795_combout\);

-- Location: FF_X4_Y20_N49
\RAM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~126_q\);

-- Location: MLABCELL_X4_Y20_N9
\RAM|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~798_combout\ = ( \ROM|memROM~2_combout\ & ( !\ROM|memROM~1_combout\ & ( (\ROM|memROM~6_combout\ & (!\ROM|memROM~9_combout\ & (\ROM|memROM~4_combout\ & \RAM|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~798_combout\);

-- Location: FF_X5_Y18_N52
\RAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~134_q\);

-- Location: LABCELL_X2_Y19_N12
\RAM|ram~94feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~94feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~94feeder_combout\);

-- Location: LABCELL_X5_Y21_N57
\RAM|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~811_combout\ = ( !\ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~6_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~811_combout\);

-- Location: FF_X2_Y19_N13
\RAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~94feeder_combout\,
	ena => \RAM|ram~811_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~94_q\);

-- Location: LABCELL_X2_Y19_N18
\RAM|ram~102feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~102feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~102feeder_combout\);

-- Location: LABCELL_X7_Y19_N33
\RAM|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~814_combout\ = ( \RAM|process_0~0_combout\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~6_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~1_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~814_combout\);

-- Location: FF_X2_Y19_N19
\RAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~102feeder_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~102_q\);

-- Location: LABCELL_X6_Y17_N30
\RAM|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~812_combout\ = ( \RAM|process_0~0_combout\ & ( !\ROM|memROM~4_combout\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~812_combout\);

-- Location: FF_X2_Y18_N53
\RAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~110_q\);

-- Location: LABCELL_X2_Y18_N39
\RAM|ram~86feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~86feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~86feeder_combout\);

-- Location: MLABCELL_X4_Y17_N45
\RAM|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~813_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~813_combout\);

-- Location: FF_X2_Y18_N41
\RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~86feeder_combout\,
	ena => \RAM|ram~813_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~86_q\);

-- Location: LABCELL_X2_Y18_N51
\RAM|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~747_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~86_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~94_q\))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\RAM|ram~102_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\) # (\RAM|ram~110_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_ram~94_q\,
	datac => \RAM|ALT_INV_ram~102_q\,
	datad => \RAM|ALT_INV_ram~110_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~86_q\,
	combout => \RAM|ram~747_combout\);

-- Location: LABCELL_X7_Y20_N51
\RAM|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~797_combout\ = ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~9_combout\ & ( (\ROM|memROM~6_combout\ & (!\ROM|memROM~1_combout\ & (\ROM|memROM~4_combout\ & \RAM|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~797_combout\);

-- Location: FF_X5_Y18_N31
\RAM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~118_q\);

-- Location: LABCELL_X5_Y18_N6
\RAM|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~616_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~747_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~747_combout\ & ((\RAM|ram~118_q\))) # (\RAM|ram~747_combout\ & (\RAM|ram~126_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~747_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~747_combout\ & ((\RAM|ram~134_q\))) # (\RAM|ram~747_combout\ & (\RAM|ram~142_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~142_q\,
	datab => \RAM|ALT_INV_ram~126_q\,
	datac => \RAM|ALT_INV_ram~134_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~747_combout\,
	datag => \RAM|ALT_INV_ram~118_q\,
	combout => \RAM|ram~616_combout\);

-- Location: LABCELL_X6_Y17_N36
\RAM|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~803_combout\ = ( \RAM|process_0~0_combout\ & ( \ROM|memROM~4_combout\ & ( (!\ROM|memROM~2_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~9_combout\ & \ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~803_combout\);

-- Location: FF_X7_Y19_N29
\RAM|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~382_q\);

-- Location: LABCELL_X6_Y17_N9
\RAM|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~804_combout\ = ( \RAM|process_0~0_combout\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~9_combout\ & (\ROM|memROM~6_combout\ & (\ROM|memROM~1_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~804_combout\);

-- Location: FF_X7_Y19_N43
\RAM|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~398_q\);

-- Location: LABCELL_X7_Y17_N42
\RAM|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~806_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~9_combout\ & (\ROM|memROM~6_combout\ & (\ROM|memROM~4_combout\ & !\ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~806_combout\);

-- Location: FF_X7_Y19_N35
\RAM|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~390_q\);

-- Location: LABCELL_X7_Y19_N24
\RAM|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~819_combout\ = ( \RAM|process_0~0_combout\ & ( \ROM|memROM~9_combout\ & ( (\ROM|memROM~6_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~819_combout\);

-- Location: FF_X5_Y19_N52
\RAM|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~819_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~350_q\);

-- Location: LABCELL_X6_Y17_N21
\RAM|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~820_combout\ = ( \RAM|process_0~0_combout\ & ( \ROM|memROM~2_combout\ & ( (\ROM|memROM~9_combout\ & (\ROM|memROM~6_combout\ & (\ROM|memROM~1_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~820_combout\);

-- Location: FF_X6_Y16_N14
\RAM|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~366_q\);

-- Location: LABCELL_X6_Y16_N42
\RAM|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~822_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~6_combout\ & (!\ROM|memROM~1_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~822_combout\);

-- Location: FF_X6_Y16_N23
\RAM|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~358_q\);

-- Location: LABCELL_X6_Y16_N27
\RAM|ram~342feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~342feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~342feeder_combout\);

-- Location: LABCELL_X6_Y16_N0
\RAM|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~821_combout\ = ( !\ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~6_combout\ & (!\ROM|memROM~1_combout\ & (\ROM|memROM~9_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~821_combout\);

-- Location: FF_X6_Y16_N29
\RAM|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~342feeder_combout\,
	ena => \RAM|ram~821_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~342_q\);

-- Location: LABCELL_X6_Y16_N12
\RAM|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~755_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~342_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~350_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~358_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~366_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~350_q\,
	datab => \RAM|ALT_INV_ram~366_q\,
	datac => \RAM|ALT_INV_ram~358_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~342_q\,
	combout => \RAM|ram~755_combout\);

-- Location: MLABCELL_X4_Y17_N6
\RAM|ram~374feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~374feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~374feeder_combout\);

-- Location: MLABCELL_X4_Y17_N0
\RAM|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~805_combout\ = ( \ROM|memROM~6_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~9_combout\ & (!\ROM|memROM~1_combout\ & (\ROM|memROM~4_combout\ & !\ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~805_combout\);

-- Location: FF_X4_Y17_N7
\RAM|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~374feeder_combout\,
	ena => \RAM|ram~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~374_q\);

-- Location: LABCELL_X5_Y19_N12
\RAM|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~624_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~755_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~755_combout\ & ((\RAM|ram~374_q\))) # (\RAM|ram~755_combout\ & (\RAM|ram~382_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~755_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~755_combout\ & ((\RAM|ram~390_q\))) # (\RAM|ram~755_combout\ & (\RAM|ram~398_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~382_q\,
	datab => \RAM|ALT_INV_ram~398_q\,
	datac => \RAM|ALT_INV_ram~390_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~755_combout\,
	datag => \RAM|ALT_INV_ram~374_q\,
	combout => \RAM|ram~624_combout\);

-- Location: LABCELL_X6_Y16_N18
\RAM|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~792_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~792_combout\);

-- Location: FF_X7_Y17_N25
\RAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~78_q\);

-- Location: LABCELL_X5_Y17_N0
\RAM|ram~70feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~70feeder_combout\ = \CPU|bancoRegistradores|registrador~18_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~70feeder_combout\);

-- Location: LABCELL_X6_Y17_N57
\RAM|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~794_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~9_combout\ & (!\ROM|memROM~6_combout\ & (!\ROM|memROM~1_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~794_combout\);

-- Location: FF_X5_Y17_N1
\RAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~70feeder_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~70_q\);

-- Location: LABCELL_X7_Y17_N30
\RAM|ram~62feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~62feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~62feeder_combout\);

-- Location: LABCELL_X7_Y17_N36
\RAM|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~791_combout\ = ( !\ROM|memROM~2_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~1_combout\ & (\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~791_combout\);

-- Location: FF_X7_Y17_N32
\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~62feeder_combout\,
	ena => \RAM|ram~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

-- Location: LABCELL_X5_Y16_N6
\RAM|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~807_combout\ = ( !\ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~2_combout\ & (!\ROM|memROM~9_combout\ & \ROM|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~807_combout\);

-- Location: FF_X4_Y17_N46
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: LABCELL_X5_Y16_N30
\RAM|ram~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~38feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~38feeder_combout\);

-- Location: LABCELL_X5_Y16_N42
\RAM|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~810_combout\ = ( !\ROM|memROM~1_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~6_combout\ & !\ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~810_combout\);

-- Location: FF_X5_Y16_N31
\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~38feeder_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

-- Location: LABCELL_X6_Y17_N0
\RAM|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~808_combout\ = ( \RAM|process_0~0_combout\ & ( !\ROM|memROM~4_combout\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~9_combout\ & !\ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~808_combout\);

-- Location: FF_X7_Y17_N19
\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

-- Location: LABCELL_X5_Y16_N54
\RAM|ram~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~22feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~22feeder_combout\);

-- Location: MLABCELL_X4_Y17_N27
\RAM|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~809_combout\ = ( !\ROM|memROM~6_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~4_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & !\ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~809_combout\);

-- Location: FF_X5_Y16_N55
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~22feeder_combout\,
	ena => \RAM|ram~809_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: LABCELL_X7_Y17_N18
\RAM|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~743_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~22_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~30_q\))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (\RAM|ram~38_q\ & ((!\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\) # (\RAM|ram~46_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~38_q\,
	datad => \RAM|ALT_INV_ram~46_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~22_q\,
	combout => \RAM|ram~743_combout\);

-- Location: LABCELL_X2_Y20_N54
\RAM|ram~54feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~54feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~54feeder_combout\);

-- Location: MLABCELL_X4_Y19_N27
\RAM|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~793_combout\ = ( !\ROM|memROM~9_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~2_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~793_combout\);

-- Location: FF_X2_Y20_N55
\RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~54feeder_combout\,
	ena => \RAM|ram~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~54_q\);

-- Location: LABCELL_X7_Y17_N24
\RAM|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~612_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~4_combout\ & ((((\RAM|ram~743_combout\))))) # (\ROM|memROM~4_combout\ & (((!\RAM|ram~743_combout\ & (\RAM|ram~54_q\)) # (\RAM|ram~743_combout\ & ((\RAM|ram~62_q\)))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( (!\ROM|memROM~4_combout\ & ((((\RAM|ram~743_combout\))))) # (\ROM|memROM~4_combout\ & (((!\RAM|ram~743_combout\ & ((\RAM|ram~70_q\))) # (\RAM|ram~743_combout\ & (\RAM|ram~78_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \RAM|ALT_INV_ram~78_q\,
	datac => \RAM|ALT_INV_ram~70_q\,
	datad => \RAM|ALT_INV_ram~62_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~743_combout\,
	datag => \RAM|ALT_INV_ram~54_q\,
	combout => \RAM|ram~612_combout\);

-- Location: LABCELL_X5_Y21_N42
\RAM|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~800_combout\ = ( \ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~800_combout\);

-- Location: FF_X6_Y21_N56
\RAM|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~334_q\);

-- Location: LABCELL_X6_Y21_N30
\RAM|ram~318feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~318feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~318feeder_combout\);

-- Location: LABCELL_X5_Y21_N9
\RAM|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~799_combout\ = ( \ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~6_combout\ & (\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~799_combout\);

-- Location: FF_X6_Y21_N32
\RAM|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~318feeder_combout\,
	ena => \RAM|ram~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~318_q\);

-- Location: LABCELL_X2_Y21_N6
\RAM|ram~326feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~326feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~326feeder_combout\);

-- Location: LABCELL_X5_Y21_N36
\RAM|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~802_combout\ = ( \ROM|memROM~4_combout\ & ( \RAM|process_0~0_combout\ & ( (\ROM|memROM~9_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~802_combout\);

-- Location: FF_X2_Y21_N7
\RAM|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~326feeder_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~326_q\);

-- Location: LABCELL_X6_Y21_N24
\RAM|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~816_combout\ = ( \ROM|memROM~1_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~4_combout\ & (\ROM|memROM~9_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~816_combout\);

-- Location: FF_X6_Y21_N43
\RAM|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~18_q\,
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~302_q\);

-- Location: MLABCELL_X4_Y21_N54
\RAM|ram~286feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~286feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~286feeder_combout\);

-- Location: LABCELL_X5_Y21_N18
\RAM|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~815_combout\ = ( \ROM|memROM~1_combout\ & ( !\ROM|memROM~4_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~2_combout\ & (\ROM|memROM~9_combout\ & \RAM|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~815_combout\);

-- Location: FF_X4_Y21_N55
\RAM|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~286feeder_combout\,
	ena => \RAM|ram~815_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~286_q\);

-- Location: LABCELL_X2_Y21_N24
\RAM|ram~294feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~294feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~294feeder_combout\);

-- Location: LABCELL_X6_Y21_N48
\RAM|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~818_combout\ = ( !\ROM|memROM~1_combout\ & ( \RAM|process_0~0_combout\ & ( (!\ROM|memROM~4_combout\ & (\ROM|memROM~9_combout\ & (!\ROM|memROM~6_combout\ & \ROM|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~818_combout\);

-- Location: FF_X2_Y21_N26
\RAM|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~294feeder_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~294_q\);

-- Location: MLABCELL_X4_Y21_N36
\RAM|ram~278feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~278feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~278feeder_combout\);

-- Location: LABCELL_X7_Y20_N27
\RAM|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~817_combout\ = ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~9_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~4_combout\ & \RAM|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~817_combout\);

-- Location: FF_X4_Y21_N38
\RAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~278feeder_combout\,
	ena => \RAM|ram~817_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~278_q\);

-- Location: LABCELL_X6_Y21_N42
\RAM|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~751_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~278_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~286_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~294_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~302_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~302_q\,
	datab => \RAM|ALT_INV_ram~286_q\,
	datac => \RAM|ALT_INV_ram~294_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~278_q\,
	combout => \RAM|ram~751_combout\);

-- Location: LABCELL_X1_Y21_N24
\RAM|ram~310feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~310feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \RAM|ram~310feeder_combout\);

-- Location: LABCELL_X5_Y21_N21
\RAM|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~801_combout\ = ( \ROM|memROM~4_combout\ & ( !\ROM|memROM~1_combout\ & ( (!\ROM|memROM~6_combout\ & (!\ROM|memROM~2_combout\ & (\RAM|process_0~0_combout\ & \ROM|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~801_combout\);

-- Location: FF_X1_Y21_N25
\RAM|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~310feeder_combout\,
	ena => \RAM|ram~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~310_q\);

-- Location: LABCELL_X6_Y21_N54
\RAM|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~620_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~751_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~751_combout\ & ((\RAM|ram~310_q\))) # (\RAM|ram~751_combout\ & (\RAM|ram~318_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~751_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~751_combout\ & ((\RAM|ram~326_q\))) # (\RAM|ram~751_combout\ & (\RAM|ram~334_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~334_q\,
	datab => \RAM|ALT_INV_ram~318_q\,
	datac => \RAM|ALT_INV_ram~326_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~751_combout\,
	datag => \RAM|ALT_INV_ram~310_q\,
	combout => \RAM|ram~620_combout\);

-- Location: LABCELL_X5_Y18_N51
\RAM|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~628_combout\ = ( \RAM|ram~612_combout\ & ( \RAM|ram~620_combout\ & ( (!\ROM|memROM~6_combout\) # ((!\ROM|memROM~9_combout\ & (\RAM|ram~616_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~624_combout\)))) ) ) ) # ( !\RAM|ram~612_combout\ & ( 
-- \RAM|ram~620_combout\ & ( (!\ROM|memROM~9_combout\ & (\ROM|memROM~6_combout\ & (\RAM|ram~616_combout\))) # (\ROM|memROM~9_combout\ & ((!\ROM|memROM~6_combout\) # ((\RAM|ram~624_combout\)))) ) ) ) # ( \RAM|ram~612_combout\ & ( !\RAM|ram~620_combout\ & ( 
-- (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~6_combout\) # ((\RAM|ram~616_combout\)))) # (\ROM|memROM~9_combout\ & (\ROM|memROM~6_combout\ & ((\RAM|ram~624_combout\)))) ) ) ) # ( !\RAM|ram~612_combout\ & ( !\RAM|ram~620_combout\ & ( (\ROM|memROM~6_combout\ & 
-- ((!\ROM|memROM~9_combout\ & (\RAM|ram~616_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~624_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~616_combout\,
	datad => \RAM|ALT_INV_ram~624_combout\,
	datae => \RAM|ALT_INV_ram~612_combout\,
	dataf => \RAM|ALT_INV_ram~620_combout\,
	combout => \RAM|ram~628_combout\);

-- Location: LABCELL_X5_Y18_N0
\CPU|ULA|Saida[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Saida[7]~5_combout\ = ( \CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( \RAM|ram~628_combout\ & ( (!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~18_q\) ) ) ) # ( !\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( \RAM|ram~628_combout\ & 
-- ( (\CPU|MUX_CPU|saida_MUX[7]~1_combout\ & ((!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~18_q\))) ) ) ) # ( \CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( !\RAM|ram~628_combout\ & ( (\CPU|MUX_CPU|saida_MUX[7]~1_combout\ & 
-- ((!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~18_q\))) ) ) ) # ( !\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( !\RAM|ram~628_combout\ & ( (\CPU|MUX_CPU|saida_MUX[7]~1_combout\ & ((!\CPU|DECODER|saida~0_combout\) # 
-- (\CPU|bancoRegistradores|registrador~18_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000011110000010100001111000001011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[7]~1_combout\,
	datad => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datae => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	dataf => \RAM|ALT_INV_ram~628_combout\,
	combout => \CPU|ULA|Saida[7]~5_combout\);

-- Location: LABCELL_X6_Y20_N33
\CPU|DECODER|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[4]~5_combout\ = ( \CPU|DECODER|saida~2_combout\ & ( !\CPU|DECODER|Equal11~6_combout\ ) ) # ( !\CPU|DECODER|saida~2_combout\ & ( (!\CPU|DECODER|Equal11~6_combout\ & \CPU|DECODER|Equal11~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal11~5_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida~2_combout\,
	combout => \CPU|DECODER|saida[4]~5_combout\);

-- Location: LABCELL_X7_Y18_N48
\CPU|DECODER|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECODER|saida[5]~6_combout\ = ( \ROM|memROM~16_combout\ & ( (\ROM|memROM~11_combout\ & (!\ROM|memROM~15_combout\ & \ROM|memROM~14_combout\)) ) ) # ( !\ROM|memROM~16_combout\ & ( !\ROM|memROM~15_combout\ $ (((!\ROM|memROM~11_combout\ & 
-- !\ROM|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	dataf => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|DECODER|saida[5]~6_combout\);

-- Location: FF_X5_Y20_N26
\CPU|bancoRegistradores|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \CPU|ULA|Saida[7]~5_combout\,
	sload => \CPU|DECODER|saida[4]~5_combout\,
	ena => \CPU|DECODER|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|bancoRegistradores|registrador~18_q\);

-- Location: LABCELL_X5_Y18_N12
\CPU|MUX_CPU|saida_MUX[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[7]~2_combout\ = ( \RAM|ram~628_combout\ & ( (\CPU|MUX_CPU|saida_MUX[6]~0_combout\) # (\CPU|MUX_CPU|saida_MUX[7]~1_combout\) ) ) # ( !\RAM|ram~628_combout\ & ( \CPU|MUX_CPU|saida_MUX[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[7]~1_combout\,
	datad => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	dataf => \RAM|ALT_INV_ram~628_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[7]~2_combout\);

-- Location: FF_X6_Y21_N37
\RAM|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~333_q\);

-- Location: FF_X6_Y21_N17
\RAM|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~317_q\);

-- Location: FF_X2_Y20_N40
\RAM|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~325_q\);

-- Location: MLABCELL_X4_Y21_N57
\RAM|ram~285feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~285feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~285feeder_combout\);

-- Location: FF_X4_Y21_N58
\RAM|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~285feeder_combout\,
	ena => \RAM|ram~815_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~285_q\);

-- Location: FF_X6_Y21_N19
\RAM|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~301_q\);

-- Location: LABCELL_X2_Y21_N27
\RAM|ram~293feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~293feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~293feeder_combout\);

-- Location: FF_X2_Y21_N28
\RAM|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~293feeder_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~293_q\);

-- Location: MLABCELL_X4_Y21_N39
\RAM|ram~277feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~277feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~277feeder_combout\);

-- Location: FF_X4_Y21_N41
\RAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~277feeder_combout\,
	ena => \RAM|ram~817_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~277_q\);

-- Location: LABCELL_X6_Y21_N18
\RAM|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~783_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~277_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~285_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~293_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~301_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~285_q\,
	datab => \RAM|ALT_INV_ram~301_q\,
	datac => \RAM|ALT_INV_ram~293_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~277_q\,
	combout => \RAM|ram~783_combout\);

-- Location: LABCELL_X2_Y21_N33
\RAM|ram~309feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~309feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~309feeder_combout\);

-- Location: FF_X2_Y21_N34
\RAM|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~309feeder_combout\,
	ena => \RAM|ram~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~309_q\);

-- Location: LABCELL_X6_Y21_N36
\RAM|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~654_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~783_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~783_combout\ & ((\RAM|ram~309_q\))) # (\RAM|ram~783_combout\ & (\RAM|ram~317_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~783_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~783_combout\ & ((\RAM|ram~325_q\))) # (\RAM|ram~783_combout\ & (\RAM|ram~333_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~333_q\,
	datab => \RAM|ALT_INV_ram~317_q\,
	datac => \RAM|ALT_INV_ram~325_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~783_combout\,
	datag => \RAM|ALT_INV_ram~309_q\,
	combout => \RAM|ram~654_combout\);

-- Location: FF_X6_Y17_N56
\RAM|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~381_q\);

-- Location: FF_X6_Y17_N44
\RAM|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~397_q\);

-- Location: LABCELL_X7_Y19_N36
\RAM|ram~389feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~389feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~389feeder_combout\);

-- Location: FF_X7_Y19_N37
\RAM|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~389feeder_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~389_q\);

-- Location: FF_X5_Y19_N49
\RAM|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~819_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~349_q\);

-- Location: LABCELL_X6_Y16_N54
\RAM|ram~357feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~357feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~357feeder_combout\);

-- Location: FF_X6_Y16_N55
\RAM|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~357feeder_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~357_q\);

-- Location: FF_X6_Y17_N49
\RAM|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~365_q\);

-- Location: LABCELL_X6_Y16_N24
\RAM|ram~341feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~341feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~341feeder_combout\);

-- Location: FF_X6_Y16_N25
\RAM|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~341feeder_combout\,
	ena => \RAM|ram~821_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~341_q\);

-- Location: LABCELL_X6_Y17_N48
\RAM|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~787_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~341_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~349_q\))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\RAM|ram~357_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\) # (\RAM|ram~365_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_ram~349_q\,
	datac => \RAM|ALT_INV_ram~357_q\,
	datad => \RAM|ALT_INV_ram~365_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~341_q\,
	combout => \RAM|ram~787_combout\);

-- Location: FF_X4_Y17_N1
\RAM|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~373_q\);

-- Location: LABCELL_X6_Y17_N42
\RAM|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~658_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~787_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~787_combout\ & ((\RAM|ram~373_q\))) # (\RAM|ram~787_combout\ & (\RAM|ram~381_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~787_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~787_combout\ & ((\RAM|ram~389_q\))) # (\RAM|ram~787_combout\ & (\RAM|ram~397_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~381_q\,
	datab => \RAM|ALT_INV_ram~397_q\,
	datac => \RAM|ALT_INV_ram~389_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~787_combout\,
	datag => \RAM|ALT_INV_ram~373_q\,
	combout => \RAM|ram~658_combout\);

-- Location: LABCELL_X7_Y17_N57
\RAM|ram~61feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~61feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~61feeder_combout\);

-- Location: FF_X7_Y17_N58
\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~61feeder_combout\,
	ena => \RAM|ram~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

-- Location: FF_X5_Y17_N44
\RAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~77_q\);

-- Location: LABCELL_X5_Y17_N57
\RAM|ram~69feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~69feeder_combout\ = \CPU|bancoRegistradores|registrador~17_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~69feeder_combout\);

-- Location: FF_X5_Y17_N58
\RAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~69feeder_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~69_q\);

-- Location: FF_X5_Y17_N31
\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

-- Location: FF_X4_Y17_N43
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: LABCELL_X5_Y16_N39
\RAM|ram~37feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~37feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~37feeder_combout\);

-- Location: FF_X5_Y16_N40
\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~37feeder_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

-- Location: FF_X4_Y17_N13
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~809_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: LABCELL_X5_Y17_N30
\RAM|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~775_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~21_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~29_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~37_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~45_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~45_q\,
	datab => \RAM|ALT_INV_ram~29_q\,
	datac => \RAM|ALT_INV_ram~37_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~21_q\,
	combout => \RAM|ram~775_combout\);

-- Location: LABCELL_X2_Y18_N45
\RAM|ram~53feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~53feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~53feeder_combout\);

-- Location: FF_X2_Y18_N46
\RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~53feeder_combout\,
	ena => \RAM|ram~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~53_q\);

-- Location: LABCELL_X5_Y17_N42
\RAM|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~646_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~775_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~775_combout\ & ((\RAM|ram~53_q\))) # (\RAM|ram~775_combout\ & (\RAM|ram~61_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~775_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~775_combout\ & ((\RAM|ram~69_q\))) # (\RAM|ram~775_combout\ & (\RAM|ram~77_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~61_q\,
	datab => \RAM|ALT_INV_ram~77_q\,
	datac => \RAM|ALT_INV_ram~69_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~775_combout\,
	datag => \RAM|ALT_INV_ram~53_q\,
	combout => \RAM|ram~646_combout\);

-- Location: LABCELL_X7_Y21_N51
\RAM|ram~125feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~125feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~125feeder_combout\);

-- Location: FF_X7_Y21_N53
\RAM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~125feeder_combout\,
	ena => \RAM|ram~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~125_q\);

-- Location: FF_X7_Y21_N14
\RAM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~141_q\);

-- Location: FF_X6_Y19_N22
\RAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~133_q\);

-- Location: LABCELL_X2_Y19_N15
\RAM|ram~93feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~93feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~93feeder_combout\);

-- Location: FF_X2_Y19_N17
\RAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~93feeder_combout\,
	ena => \RAM|ram~811_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~93_q\);

-- Location: LABCELL_X2_Y19_N21
\RAM|ram~101feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~101feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~101feeder_combout\);

-- Location: FF_X2_Y19_N22
\RAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~101feeder_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~101_q\);

-- Location: FF_X6_Y19_N32
\RAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~109_q\);

-- Location: MLABCELL_X4_Y21_N45
\RAM|ram~85feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~85feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~85feeder_combout\);

-- Location: FF_X4_Y21_N46
\RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~85feeder_combout\,
	ena => \RAM|ram~813_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~85_q\);

-- Location: LABCELL_X6_Y19_N30
\RAM|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~779_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~85_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~93_q\))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (\RAM|ram~101_q\ & ((!\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\) # (\RAM|ram~109_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~93_q\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~101_q\,
	datad => \RAM|ALT_INV_ram~109_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~85_q\,
	combout => \RAM|ram~779_combout\);

-- Location: LABCELL_X7_Y21_N54
\RAM|ram~117feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~117feeder_combout\ = ( \CPU|bancoRegistradores|registrador~17_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	combout => \RAM|ram~117feeder_combout\);

-- Location: FF_X7_Y21_N56
\RAM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~117feeder_combout\,
	ena => \RAM|ram~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~117_q\);

-- Location: LABCELL_X7_Y21_N12
\RAM|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~650_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~779_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~779_combout\ & ((\RAM|ram~117_q\))) # (\RAM|ram~779_combout\ & (\RAM|ram~125_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~779_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~779_combout\ & ((\RAM|ram~133_q\))) # (\RAM|ram~779_combout\ & (\RAM|ram~141_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~125_q\,
	datab => \RAM|ALT_INV_ram~141_q\,
	datac => \RAM|ALT_INV_ram~133_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~779_combout\,
	datag => \RAM|ALT_INV_ram~117_q\,
	combout => \RAM|ram~650_combout\);

-- Location: LABCELL_X6_Y21_N3
\RAM|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~662_combout\ = ( \RAM|ram~646_combout\ & ( \RAM|ram~650_combout\ & ( (!\ROM|memROM~9_combout\) # ((!\ROM|memROM~6_combout\ & (\RAM|ram~654_combout\)) # (\ROM|memROM~6_combout\ & ((\RAM|ram~658_combout\)))) ) ) ) # ( !\RAM|ram~646_combout\ & ( 
-- \RAM|ram~650_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|ram~654_combout\ & (\ROM|memROM~9_combout\))) # (\ROM|memROM~6_combout\ & (((!\ROM|memROM~9_combout\) # (\RAM|ram~658_combout\)))) ) ) ) # ( \RAM|ram~646_combout\ & ( !\RAM|ram~650_combout\ & ( 
-- (!\ROM|memROM~6_combout\ & (((!\ROM|memROM~9_combout\)) # (\RAM|ram~654_combout\))) # (\ROM|memROM~6_combout\ & (((\ROM|memROM~9_combout\ & \RAM|ram~658_combout\)))) ) ) ) # ( !\RAM|ram~646_combout\ & ( !\RAM|ram~650_combout\ & ( (\ROM|memROM~9_combout\ & 
-- ((!\ROM|memROM~6_combout\ & (\RAM|ram~654_combout\)) # (\ROM|memROM~6_combout\ & ((\RAM|ram~658_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~654_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_ram~658_combout\,
	datae => \RAM|ALT_INV_ram~646_combout\,
	dataf => \RAM|ALT_INV_ram~650_combout\,
	combout => \RAM|ram~662_combout\);

-- Location: LABCELL_X5_Y20_N45
\CPU|MUX_CPU|saida_MUX[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[6]~9_combout\ = ( \RAM|ram~662_combout\ & ( \CPU|MUX_CPU|saida_MUX[6]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	dataf => \RAM|ALT_INV_ram~662_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[6]~9_combout\);

-- Location: LABCELL_X1_Y19_N42
\RAM|ram~316feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~316feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~316feeder_combout\);

-- Location: FF_X1_Y19_N43
\RAM|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~316feeder_combout\,
	ena => \RAM|ram~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~316_q\);

-- Location: FF_X4_Y19_N19
\RAM|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~332_q\);

-- Location: LABCELL_X2_Y21_N39
\RAM|ram~324feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~324feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~324feeder_combout\);

-- Location: FF_X2_Y21_N40
\RAM|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~324feeder_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~324_q\);

-- Location: FF_X4_Y19_N5
\RAM|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~815_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~284_q\);

-- Location: FF_X4_Y19_N31
\RAM|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~300_q\);

-- Location: LABCELL_X2_Y21_N51
\RAM|ram~292feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~292feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~292feeder_combout\);

-- Location: FF_X2_Y21_N52
\RAM|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~292feeder_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~292_q\);

-- Location: FF_X4_Y21_N14
\RAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~817_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~276_q\);

-- Location: MLABCELL_X4_Y19_N30
\RAM|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~703_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~276_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~284_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~292_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~300_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~284_q\,
	datab => \RAM|ALT_INV_ram~300_q\,
	datac => \RAM|ALT_INV_ram~292_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~276_q\,
	combout => \RAM|ram~703_combout\);

-- Location: LABCELL_X2_Y21_N30
\RAM|ram~308feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~308feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~308feeder_combout\);

-- Location: FF_X2_Y21_N31
\RAM|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~308feeder_combout\,
	ena => \RAM|ram~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~308_q\);

-- Location: MLABCELL_X4_Y19_N18
\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~703_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~703_combout\ & ((\RAM|ram~308_q\))) # (\RAM|ram~703_combout\ & (\RAM|ram~316_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~703_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~703_combout\ & ((\RAM|ram~324_q\))) # (\RAM|ram~703_combout\ & (\RAM|ram~332_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~316_q\,
	datab => \RAM|ALT_INV_ram~332_q\,
	datac => \RAM|ALT_INV_ram~324_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~703_combout\,
	datag => \RAM|ALT_INV_ram~308_q\,
	combout => \RAM|ram~569_combout\);

-- Location: FF_X5_Y19_N26
\RAM|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~396_q\);

-- Location: LABCELL_X7_Y19_N15
\RAM|ram~380feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~380feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~380feeder_combout\);

-- Location: FF_X7_Y19_N16
\RAM|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~380feeder_combout\,
	ena => \RAM|ram~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~380_q\);

-- Location: LABCELL_X7_Y19_N39
\RAM|ram~388feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~388feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~388feeder_combout\);

-- Location: FF_X7_Y19_N40
\RAM|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~388feeder_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~388_q\);

-- Location: LABCELL_X5_Y19_N48
\RAM|ram~348feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~348feeder_combout\ = \CPU|bancoRegistradores|registrador~16_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~348feeder_combout\);

-- Location: FF_X5_Y19_N50
\RAM|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~348feeder_combout\,
	ena => \RAM|ram~819_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~348_q\);

-- Location: FF_X5_Y19_N31
\RAM|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~364_q\);

-- Location: FF_X6_Y16_N46
\RAM|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~356_q\);

-- Location: FF_X6_Y16_N4
\RAM|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~821_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~340_q\);

-- Location: LABCELL_X5_Y19_N30
\RAM|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~707_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~340_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~348_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~356_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~364_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~348_q\,
	datab => \RAM|ALT_INV_ram~364_q\,
	datac => \RAM|ALT_INV_ram~356_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~340_q\,
	combout => \RAM|ram~707_combout\);

-- Location: FF_X4_Y17_N37
\RAM|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~372_q\);

-- Location: LABCELL_X5_Y19_N24
\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~707_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~707_combout\ & ((\RAM|ram~372_q\))) # (\RAM|ram~707_combout\ & (\RAM|ram~380_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~707_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~707_combout\ & ((\RAM|ram~388_q\))) # (\RAM|ram~707_combout\ & (\RAM|ram~396_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~396_q\,
	datab => \RAM|ALT_INV_ram~380_q\,
	datac => \RAM|ALT_INV_ram~388_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~707_combout\,
	datag => \RAM|ALT_INV_ram~372_q\,
	combout => \RAM|ram~573_combout\);

-- Location: FF_X4_Y20_N1
\RAM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~124_q\);

-- Location: FF_X6_Y19_N14
\RAM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~140_q\);

-- Location: LABCELL_X6_Y19_N51
\RAM|ram~132feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~132feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~132feeder_combout\);

-- Location: FF_X6_Y19_N53
\RAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~132feeder_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~132_q\);

-- Location: LABCELL_X2_Y19_N39
\RAM|ram~92feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~92feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~92feeder_combout\);

-- Location: FF_X2_Y19_N41
\RAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~92feeder_combout\,
	ena => \RAM|ram~811_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~92_q\);

-- Location: FF_X6_Y19_N26
\RAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~108_q\);

-- Location: LABCELL_X2_Y19_N45
\RAM|ram~100feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~100feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~100feeder_combout\);

-- Location: FF_X2_Y19_N47
\RAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~100feeder_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~100_q\);

-- Location: FF_X4_Y21_N52
\RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~813_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~84_q\);

-- Location: LABCELL_X6_Y19_N24
\RAM|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~699_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~84_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~92_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~100_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~108_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~92_q\,
	datab => \RAM|ALT_INV_ram~108_q\,
	datac => \RAM|ALT_INV_ram~100_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~84_q\,
	combout => \RAM|ram~699_combout\);

-- Location: LABCELL_X1_Y19_N3
\RAM|ram~116feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~116feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~116feeder_combout\);

-- Location: FF_X1_Y19_N4
\RAM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~116feeder_combout\,
	ena => \RAM|ram~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~116_q\);

-- Location: LABCELL_X6_Y19_N12
\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~699_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~699_combout\ & ((\RAM|ram~116_q\))) # (\RAM|ram~699_combout\ & (\RAM|ram~124_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~699_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~699_combout\ & ((\RAM|ram~132_q\))) # (\RAM|ram~699_combout\ & (\RAM|ram~140_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~124_q\,
	datab => \RAM|ALT_INV_ram~140_q\,
	datac => \RAM|ALT_INV_ram~132_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~699_combout\,
	datag => \RAM|ALT_INV_ram~116_q\,
	combout => \RAM|ram~565_combout\);

-- Location: FF_X5_Y17_N20
\RAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~76_q\);

-- Location: LABCELL_X7_Y17_N51
\RAM|ram~60feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~60feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~60feeder_combout\);

-- Location: FF_X7_Y17_N52
\RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~60feeder_combout\,
	ena => \RAM|ram~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

-- Location: LABCELL_X5_Y17_N3
\RAM|ram~68feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~68feeder_combout\ = \CPU|bancoRegistradores|registrador~16_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~68feeder_combout\);

-- Location: FF_X5_Y17_N5
\RAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~68feeder_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~68_q\);

-- Location: FF_X4_Y17_N31
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: FF_X5_Y17_N7
\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

-- Location: FF_X5_Y16_N47
\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

-- Location: FF_X4_Y17_N25
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~16_q\,
	sload => VCC,
	ena => \RAM|ram~809_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: LABCELL_X5_Y17_N6
\RAM|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~695_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~20_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~28_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~36_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~44_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datab => \RAM|ALT_INV_ram~44_q\,
	datac => \RAM|ALT_INV_ram~36_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~20_q\,
	combout => \RAM|ram~695_combout\);

-- Location: LABCELL_X2_Y20_N24
\RAM|ram~52feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~52feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \RAM|ram~52feeder_combout\);

-- Location: FF_X2_Y20_N25
\RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~52feeder_combout\,
	ena => \RAM|ram~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~52_q\);

-- Location: LABCELL_X5_Y17_N18
\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~695_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~695_combout\ & ((\RAM|ram~52_q\))) # (\RAM|ram~695_combout\ & (\RAM|ram~60_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~695_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~695_combout\ & ((\RAM|ram~68_q\))) # (\RAM|ram~695_combout\ & (\RAM|ram~76_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~76_q\,
	datab => \RAM|ALT_INV_ram~60_q\,
	datac => \RAM|ALT_INV_ram~68_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~695_combout\,
	datag => \RAM|ALT_INV_ram~52_q\,
	combout => \RAM|ram~561_combout\);

-- Location: MLABCELL_X4_Y19_N12
\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( \RAM|ram~565_combout\ & ( \RAM|ram~561_combout\ & ( (!\ROM|memROM~9_combout\) # ((!\ROM|memROM~6_combout\ & (\RAM|ram~569_combout\)) # (\ROM|memROM~6_combout\ & ((\RAM|ram~573_combout\)))) ) ) ) # ( !\RAM|ram~565_combout\ & ( 
-- \RAM|ram~561_combout\ & ( (!\ROM|memROM~6_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM|ram~569_combout\)))) # (\ROM|memROM~6_combout\ & (\ROM|memROM~9_combout\ & ((\RAM|ram~573_combout\)))) ) ) ) # ( \RAM|ram~565_combout\ & ( !\RAM|ram~561_combout\ & ( 
-- (!\ROM|memROM~6_combout\ & (\ROM|memROM~9_combout\ & (\RAM|ram~569_combout\))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~9_combout\) # ((\RAM|ram~573_combout\)))) ) ) ) # ( !\RAM|ram~565_combout\ & ( !\RAM|ram~561_combout\ & ( (\ROM|memROM~9_combout\ & 
-- ((!\ROM|memROM~6_combout\ & (\RAM|ram~569_combout\)) # (\ROM|memROM~6_combout\ & ((\RAM|ram~573_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~9_combout\,
	datac => \RAM|ALT_INV_ram~569_combout\,
	datad => \RAM|ALT_INV_ram~573_combout\,
	datae => \RAM|ALT_INV_ram~565_combout\,
	dataf => \RAM|ALT_INV_ram~561_combout\,
	combout => \RAM|ram~577_combout\);

-- Location: MLABCELL_X4_Y19_N36
\CPU|MUX_CPU|saida_MUX[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[5]~8_combout\ = ( \CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( \RAM|ram~577_combout\ ) ) # ( !\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( \RAM|ram~577_combout\ & ( \CPU|MUX_CPU|saida_MUX[7]~1_combout\ ) ) ) # ( 
-- \CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( !\RAM|ram~577_combout\ & ( \CPU|MUX_CPU|saida_MUX[7]~1_combout\ ) ) ) # ( !\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( !\RAM|ram~577_combout\ & ( \CPU|MUX_CPU|saida_MUX[7]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[7]~1_combout\,
	datae => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	dataf => \RAM|ALT_INV_ram~577_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[5]~8_combout\);

-- Location: FF_X6_Y19_N37
\RAM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~139_q\);

-- Location: FF_X7_Y20_N49
\RAM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~123_q\);

-- Location: FF_X6_Y19_N5
\RAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~131_q\);

-- Location: FF_X6_Y19_N7
\RAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~107_q\);

-- Location: LABCELL_X2_Y19_N54
\RAM|ram~99feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~99feeder_combout\ = ( \CPU|bancoRegistradores|registrador~15_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \RAM|ram~99feeder_combout\);

-- Location: FF_X2_Y19_N56
\RAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~99feeder_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~99_q\);

-- Location: LABCELL_X2_Y19_N48
\RAM|ram~91feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~91feeder_combout\ = ( \CPU|bancoRegistradores|registrador~15_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \RAM|ram~91feeder_combout\);

-- Location: FF_X2_Y19_N50
\RAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~91feeder_combout\,
	ena => \RAM|ram~811_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~91_q\);

-- Location: FF_X4_Y21_N28
\RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~813_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~83_q\);

-- Location: LABCELL_X6_Y19_N6
\RAM|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~763_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (\RAM|ram~83_q\ & ((!\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\) # (\RAM|ram~91_q\))))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\RAM|ram~99_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~107_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~107_q\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~99_q\,
	datad => \RAM|ALT_INV_ram~91_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~83_q\,
	combout => \RAM|ram~763_combout\);

-- Location: FF_X5_Y18_N20
\RAM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~115_q\);

-- Location: LABCELL_X6_Y19_N36
\RAM|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~633_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~763_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~763_combout\ & ((\RAM|ram~115_q\))) # (\RAM|ram~763_combout\ & (\RAM|ram~123_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~763_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~763_combout\ & ((\RAM|ram~131_q\))) # (\RAM|ram~763_combout\ & (\RAM|ram~139_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~139_q\,
	datab => \RAM|ALT_INV_ram~123_q\,
	datac => \RAM|ALT_INV_ram~131_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~763_combout\,
	datag => \RAM|ALT_INV_ram~115_q\,
	combout => \RAM|ram~633_combout\);

-- Location: FF_X5_Y17_N38
\RAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~75_q\);

-- Location: LABCELL_X7_Y17_N12
\RAM|ram~59feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~59feeder_combout\ = ( \CPU|bancoRegistradores|registrador~15_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \RAM|ram~59feeder_combout\);

-- Location: FF_X7_Y17_N13
\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~59feeder_combout\,
	ena => \RAM|ram~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

-- Location: FF_X5_Y17_N56
\RAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~67_q\);

-- Location: FF_X5_Y17_N25
\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

-- Location: MLABCELL_X4_Y17_N33
\RAM|ram~27feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~27feeder_combout\ = ( \CPU|bancoRegistradores|registrador~15_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \RAM|ram~27feeder_combout\);

-- Location: FF_X4_Y17_N34
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~27feeder_combout\,
	ena => \RAM|ram~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: FF_X5_Y16_N38
\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

-- Location: FF_X4_Y17_N28
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~809_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: LABCELL_X5_Y17_N24
\RAM|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~759_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~19_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~27_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~35_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~43_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~43_q\,
	datab => \RAM|ALT_INV_ram~27_q\,
	datac => \RAM|ALT_INV_ram~35_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~19_q\,
	combout => \RAM|ram~759_combout\);

-- Location: FF_X2_Y17_N25
\RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~51_q\);

-- Location: LABCELL_X5_Y17_N36
\RAM|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~629_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~759_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~759_combout\ & ((\RAM|ram~51_q\))) # (\RAM|ram~759_combout\ & (\RAM|ram~59_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~759_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~759_combout\ & ((\RAM|ram~67_q\))) # (\RAM|ram~759_combout\ & (\RAM|ram~75_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~75_q\,
	datab => \RAM|ALT_INV_ram~59_q\,
	datac => \RAM|ALT_INV_ram~67_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~759_combout\,
	datag => \RAM|ALT_INV_ram~51_q\,
	combout => \RAM|ram~629_combout\);

-- Location: FF_X7_Y19_N26
\RAM|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~379_q\);

-- Location: FF_X7_Y19_N1
\RAM|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~395_q\);

-- Location: FF_X7_Y19_N31
\RAM|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~387_q\);

-- Location: FF_X5_Y19_N13
\RAM|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~363_q\);

-- Location: LABCELL_X5_Y19_N0
\RAM|ram~347feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~347feeder_combout\ = \CPU|bancoRegistradores|registrador~15_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \RAM|ram~347feeder_combout\);

-- Location: FF_X5_Y19_N1
\RAM|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~347feeder_combout\,
	ena => \RAM|ram~819_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~347_q\);

-- Location: FF_X6_Y16_N58
\RAM|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~355_q\);

-- Location: FF_X6_Y16_N40
\RAM|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~821_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~339_q\);

-- Location: LABCELL_X7_Y19_N42
\RAM|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~771_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~339_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~347_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~355_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~363_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~363_q\,
	datab => \RAM|ALT_INV_ram~347_q\,
	datac => \RAM|ALT_INV_ram~355_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~339_q\,
	combout => \RAM|ram~771_combout\);

-- Location: MLABCELL_X4_Y17_N18
\RAM|ram~371feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~371feeder_combout\ = ( \CPU|bancoRegistradores|registrador~15_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \RAM|ram~371feeder_combout\);

-- Location: FF_X4_Y17_N19
\RAM|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~371feeder_combout\,
	ena => \RAM|ram~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~371_q\);

-- Location: LABCELL_X7_Y19_N0
\RAM|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~641_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~771_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~771_combout\ & ((\RAM|ram~371_q\))) # (\RAM|ram~771_combout\ & (\RAM|ram~379_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~771_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~771_combout\ & ((\RAM|ram~387_q\))) # (\RAM|ram~771_combout\ & (\RAM|ram~395_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~379_q\,
	datab => \RAM|ALT_INV_ram~395_q\,
	datac => \RAM|ALT_INV_ram~387_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~771_combout\,
	datag => \RAM|ALT_INV_ram~371_q\,
	combout => \RAM|ram~641_combout\);

-- Location: FF_X6_Y21_N49
\RAM|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~331_q\);

-- Location: FF_X6_Y21_N1
\RAM|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~315_q\);

-- Location: LABCELL_X2_Y21_N9
\RAM|ram~323feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~323feeder_combout\ = ( \CPU|bancoRegistradores|registrador~15_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \RAM|ram~323feeder_combout\);

-- Location: FF_X2_Y21_N10
\RAM|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~323feeder_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~323_q\);

-- Location: FF_X6_Y21_N25
\RAM|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~299_q\);

-- Location: FF_X4_Y19_N25
\RAM|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~815_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~283_q\);

-- Location: LABCELL_X2_Y21_N57
\RAM|ram~291feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~291feeder_combout\ = ( \CPU|bancoRegistradores|registrador~15_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \RAM|ram~291feeder_combout\);

-- Location: FF_X2_Y21_N58
\RAM|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~291feeder_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~291_q\);

-- Location: FF_X4_Y21_N16
\RAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~15_q\,
	sload => VCC,
	ena => \RAM|ram~817_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~275_q\);

-- Location: LABCELL_X5_Y21_N15
\RAM|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~767_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~275_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~283_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~291_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~299_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~299_q\,
	datab => \RAM|ALT_INV_ram~283_q\,
	datac => \RAM|ALT_INV_ram~291_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~275_q\,
	combout => \RAM|ram~767_combout\);

-- Location: LABCELL_X1_Y21_N54
\RAM|ram~307feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~307feeder_combout\ = ( \CPU|bancoRegistradores|registrador~15_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \RAM|ram~307feeder_combout\);

-- Location: FF_X1_Y21_N55
\RAM|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~307feeder_combout\,
	ena => \RAM|ram~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~307_q\);

-- Location: LABCELL_X5_Y21_N3
\RAM|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~637_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~767_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~767_combout\ & ((\RAM|ram~307_q\))) # (\RAM|ram~767_combout\ & (\RAM|ram~315_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~767_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~767_combout\ & ((\RAM|ram~323_q\))) # (\RAM|ram~767_combout\ & (\RAM|ram~331_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~331_q\,
	datab => \RAM|ALT_INV_ram~315_q\,
	datac => \RAM|ALT_INV_ram~323_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~767_combout\,
	datag => \RAM|ALT_INV_ram~307_q\,
	combout => \RAM|ram~637_combout\);

-- Location: LABCELL_X6_Y19_N0
\RAM|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~645_combout\ = ( \RAM|ram~641_combout\ & ( \RAM|ram~637_combout\ & ( ((!\ROM|memROM~6_combout\ & ((\RAM|ram~629_combout\))) # (\ROM|memROM~6_combout\ & (\RAM|ram~633_combout\))) # (\ROM|memROM~9_combout\) ) ) ) # ( !\RAM|ram~641_combout\ & ( 
-- \RAM|ram~637_combout\ & ( (!\ROM|memROM~6_combout\ & (((\ROM|memROM~9_combout\) # (\RAM|ram~629_combout\)))) # (\ROM|memROM~6_combout\ & (\RAM|ram~633_combout\ & ((!\ROM|memROM~9_combout\)))) ) ) ) # ( \RAM|ram~641_combout\ & ( !\RAM|ram~637_combout\ & ( 
-- (!\ROM|memROM~6_combout\ & (((\RAM|ram~629_combout\ & !\ROM|memROM~9_combout\)))) # (\ROM|memROM~6_combout\ & (((\ROM|memROM~9_combout\)) # (\RAM|ram~633_combout\))) ) ) ) # ( !\RAM|ram~641_combout\ & ( !\RAM|ram~637_combout\ & ( (!\ROM|memROM~9_combout\ 
-- & ((!\ROM|memROM~6_combout\ & ((\RAM|ram~629_combout\))) # (\ROM|memROM~6_combout\ & (\RAM|ram~633_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010011001100011101110011000001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~633_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~629_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM|ALT_INV_ram~641_combout\,
	dataf => \RAM|ALT_INV_ram~637_combout\,
	combout => \RAM|ram~645_combout\);

-- Location: LABCELL_X5_Y20_N42
\CPU|MUX_CPU|saida_MUX[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[4]~7_combout\ = ( \RAM|ram~645_combout\ & ( \CPU|MUX_CPU|saida_MUX[6]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	dataf => \RAM|ALT_INV_ram~645_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[4]~7_combout\);

-- Location: MLABCELL_X4_Y18_N24
\RAM|ram~58feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~58feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~58feeder_combout\);

-- Location: FF_X4_Y18_N26
\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~58feeder_combout\,
	ena => \RAM|ram~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

-- Location: FF_X4_Y18_N14
\RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~74_q\);

-- Location: FF_X5_Y17_N4
\RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~66_q\);

-- Location: FF_X4_Y18_N19
\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

-- Location: LABCELL_X5_Y16_N24
\RAM|ram~34feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~34feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~34feeder_combout\);

-- Location: FF_X5_Y16_N26
\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~34feeder_combout\,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

-- Location: FF_X4_Y17_N59
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: FF_X4_Y17_N52
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~809_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: MLABCELL_X4_Y18_N18
\RAM|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~711_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~18_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\) # (\RAM|ram~26_q\))))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\RAM|ram~34_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~42_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_ram~42_q\,
	datac => \RAM|ALT_INV_ram~34_q\,
	datad => \RAM|ALT_INV_ram~26_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~18_q\,
	combout => \RAM|ram~711_combout\);

-- Location: LABCELL_X2_Y18_N24
\RAM|ram~50feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~50feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~50feeder_combout\);

-- Location: FF_X2_Y18_N26
\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~50feeder_combout\,
	ena => \RAM|ram~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

-- Location: MLABCELL_X4_Y18_N12
\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~711_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~711_combout\ & ((\RAM|ram~50_q\))) # (\RAM|ram~711_combout\ & (\RAM|ram~58_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~711_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~711_combout\ & ((\RAM|ram~66_q\))) # (\RAM|ram~711_combout\ & (\RAM|ram~74_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~58_q\,
	datab => \RAM|ALT_INV_ram~74_q\,
	datac => \RAM|ALT_INV_ram~66_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~711_combout\,
	datag => \RAM|ALT_INV_ram~50_q\,
	combout => \RAM|ram~578_combout\);

-- Location: FF_X4_Y20_N26
\RAM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~138_q\);

-- Location: FF_X5_Y18_N4
\RAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~130_q\);

-- Location: FF_X4_Y20_N44
\RAM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~122_q\);

-- Location: LABCELL_X2_Y19_N24
\RAM|ram~90feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~90feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~90feeder_combout\);

-- Location: FF_X2_Y19_N25
\RAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~90feeder_combout\,
	ena => \RAM|ram~811_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~90_q\);

-- Location: FF_X4_Y20_N32
\RAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~106_q\);

-- Location: LABCELL_X2_Y19_N6
\RAM|ram~98feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~98feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~98feeder_combout\);

-- Location: FF_X2_Y19_N7
\RAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~98feeder_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~98_q\);

-- Location: MLABCELL_X4_Y21_N0
\RAM|ram~82feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~82feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~82feeder_combout\);

-- Location: FF_X4_Y21_N2
\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~82feeder_combout\,
	ena => \RAM|ram~813_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

-- Location: MLABCELL_X4_Y20_N30
\RAM|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~715_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~82_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~90_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~98_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~106_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~90_q\,
	datab => \RAM|ALT_INV_ram~106_q\,
	datac => \RAM|ALT_INV_ram~98_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~82_q\,
	combout => \RAM|ram~715_combout\);

-- Location: LABCELL_X7_Y20_N54
\RAM|ram~114feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~114feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~114feeder_combout\);

-- Location: FF_X7_Y20_N55
\RAM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~114feeder_combout\,
	ena => \RAM|ram~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~114_q\);

-- Location: MLABCELL_X4_Y20_N24
\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~715_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~715_combout\ & (\RAM|ram~114_q\)) # (\RAM|ram~715_combout\ & ((\RAM|ram~122_q\)))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( (!\ROM|memROM~4_combout\ & ((((\RAM|ram~715_combout\))))) # (\ROM|memROM~4_combout\ & (((!\RAM|ram~715_combout\ & ((\RAM|ram~130_q\))) # (\RAM|ram~715_combout\ & (\RAM|ram~138_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~138_q\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \RAM|ALT_INV_ram~130_q\,
	datad => \RAM|ALT_INV_ram~122_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~715_combout\,
	datag => \RAM|ALT_INV_ram~114_q\,
	combout => \RAM|ram~582_combout\);

-- Location: FF_X6_Y17_N20
\RAM|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~378_q\);

-- Location: FF_X6_Y17_N14
\RAM|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~394_q\);

-- Location: LABCELL_X7_Y19_N54
\RAM|ram~386feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~386feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~386feeder_combout\);

-- Location: FF_X7_Y19_N55
\RAM|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~386feeder_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~386_q\);

-- Location: FF_X6_Y17_N26
\RAM|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~362_q\);

-- Location: LABCELL_X5_Y19_N3
\RAM|ram~346feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~346feeder_combout\ = \CPU|bancoRegistradores|registrador~14_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~346feeder_combout\);

-- Location: FF_X5_Y19_N4
\RAM|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~346feeder_combout\,
	ena => \RAM|ram~819_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~346_q\);

-- Location: LABCELL_X6_Y16_N6
\RAM|ram~354feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~354feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~354feeder_combout\);

-- Location: FF_X6_Y16_N7
\RAM|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~354feeder_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~354_q\);

-- Location: LABCELL_X6_Y16_N48
\RAM|ram~338feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~338feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~338feeder_combout\);

-- Location: FF_X6_Y16_N49
\RAM|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~338feeder_combout\,
	ena => \RAM|ram~821_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~338_q\);

-- Location: LABCELL_X6_Y17_N24
\RAM|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~723_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~338_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~346_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~354_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~362_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~362_q\,
	datab => \RAM|ALT_INV_ram~346_q\,
	datac => \RAM|ALT_INV_ram~354_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~338_q\,
	combout => \RAM|ram~723_combout\);

-- Location: FF_X4_Y17_N22
\RAM|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~370_q\);

-- Location: LABCELL_X6_Y17_N12
\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~723_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~723_combout\ & ((\RAM|ram~370_q\))) # (\RAM|ram~723_combout\ & (\RAM|ram~378_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~723_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~723_combout\ & ((\RAM|ram~386_q\))) # (\RAM|ram~723_combout\ & (\RAM|ram~394_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~378_q\,
	datab => \RAM|ALT_INV_ram~394_q\,
	datac => \RAM|ALT_INV_ram~386_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~723_combout\,
	datag => \RAM|ALT_INV_ram~370_q\,
	combout => \RAM|ram~590_combout\);

-- Location: FF_X5_Y21_N11
\RAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~314_q\);

-- Location: LABCELL_X2_Y21_N36
\RAM|ram~322feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~322feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~322feeder_combout\);

-- Location: FF_X2_Y21_N37
\RAM|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~322feeder_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~322_q\);

-- Location: FF_X5_Y21_N49
\RAM|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~330_q\);

-- Location: FF_X5_Y21_N31
\RAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~298_q\);

-- Location: LABCELL_X2_Y21_N42
\RAM|ram~290feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~290feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~290feeder_combout\);

-- Location: FF_X2_Y21_N43
\RAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~290feeder_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~290_q\);

-- Location: MLABCELL_X4_Y21_N18
\RAM|ram~282feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~282feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~282feeder_combout\);

-- Location: FF_X4_Y21_N19
\RAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~282feeder_combout\,
	ena => \RAM|ram~815_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~282_q\);

-- Location: MLABCELL_X4_Y21_N6
\RAM|ram~274feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~274feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~274feeder_combout\);

-- Location: FF_X4_Y21_N7
\RAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~274feeder_combout\,
	ena => \RAM|ram~817_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~274_q\);

-- Location: LABCELL_X5_Y21_N30
\RAM|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~719_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~274_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\) # (\RAM|ram~282_q\))))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\RAM|ram~290_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~298_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_ram~298_q\,
	datac => \RAM|ALT_INV_ram~290_q\,
	datad => \RAM|ALT_INV_ram~282_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~274_q\,
	combout => \RAM|ram~719_combout\);

-- Location: LABCELL_X2_Y21_N0
\RAM|ram~306feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~306feeder_combout\ = ( \CPU|bancoRegistradores|registrador~14_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	combout => \RAM|ram~306feeder_combout\);

-- Location: FF_X2_Y21_N1
\RAM|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~306feeder_combout\,
	ena => \RAM|ram~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~306_q\);

-- Location: LABCELL_X5_Y21_N48
\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~4_combout\ & ((((\RAM|ram~719_combout\))))) # (\ROM|memROM~4_combout\ & (((!\RAM|ram~719_combout\ & ((\RAM|ram~306_q\))) # (\RAM|ram~719_combout\ & (\RAM|ram~314_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( (!\ROM|memROM~4_combout\ & ((((\RAM|ram~719_combout\))))) # (\ROM|memROM~4_combout\ & (((!\RAM|ram~719_combout\ & (\RAM|ram~322_q\)) # (\RAM|ram~719_combout\ & ((\RAM|ram~330_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \RAM|ALT_INV_ram~314_q\,
	datac => \RAM|ALT_INV_ram~322_q\,
	datad => \RAM|ALT_INV_ram~330_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~719_combout\,
	datag => \RAM|ALT_INV_ram~306_q\,
	combout => \RAM|ram~586_combout\);

-- Location: LABCELL_X5_Y20_N30
\RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~594_combout\ = ( \RAM|ram~590_combout\ & ( \RAM|ram~586_combout\ & ( ((!\ROM|memROM~6_combout\ & (\RAM|ram~578_combout\)) # (\ROM|memROM~6_combout\ & ((\RAM|ram~582_combout\)))) # (\ROM|memROM~9_combout\) ) ) ) # ( !\RAM|ram~590_combout\ & ( 
-- \RAM|ram~586_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~6_combout\ & (\RAM|ram~578_combout\)) # (\ROM|memROM~6_combout\ & ((\RAM|ram~582_combout\))))) # (\ROM|memROM~9_combout\ & (!\ROM|memROM~6_combout\)) ) ) ) # ( \RAM|ram~590_combout\ & ( 
-- !\RAM|ram~586_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~6_combout\ & (\RAM|ram~578_combout\)) # (\ROM|memROM~6_combout\ & ((\RAM|ram~582_combout\))))) # (\ROM|memROM~9_combout\ & (\ROM|memROM~6_combout\)) ) ) ) # ( !\RAM|ram~590_combout\ & ( 
-- !\RAM|ram~586_combout\ & ( (!\ROM|memROM~9_combout\ & ((!\ROM|memROM~6_combout\ & (\RAM|ram~578_combout\)) # (\ROM|memROM~6_combout\ & ((\RAM|ram~582_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~578_combout\,
	datad => \RAM|ALT_INV_ram~582_combout\,
	datae => \RAM|ALT_INV_ram~590_combout\,
	dataf => \RAM|ALT_INV_ram~586_combout\,
	combout => \RAM|ram~594_combout\);

-- Location: LABCELL_X5_Y20_N54
\CPU|MUX_CPU|saida_MUX[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[3]~6_combout\ = ( \RAM|ram~594_combout\ & ( ((\CPU|DECODER|Equal11~3_combout\ & \ROM|memROM~6_combout\)) # (\CPU|MUX_CPU|saida_MUX[6]~0_combout\) ) ) # ( !\RAM|ram~594_combout\ & ( (\CPU|DECODER|Equal11~3_combout\ & 
-- \ROM|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|DECODER|ALT_INV_Equal11~3_combout\,
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \RAM|ALT_INV_ram~594_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[3]~6_combout\);

-- Location: LABCELL_X5_Y20_N0
\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( (!\CPU|DECODER|saida~0_combout\) # ((!\CPU|DECODER|Equal11~6_combout\ & ((\CPU|DECODER|Equal11~5_combout\) # (\CPU|DECODER|saida~2_combout\)))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~2_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal11~5_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

-- Location: LABCELL_X5_Y20_N3
\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( \CPU|bancoRegistradores|registrador~11_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[0]~3_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( 
-- \CPU|ULA|Add0~34_cout\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( \CPU|bancoRegistradores|registrador~11_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[0]~3_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~34_cout\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[0]~3_combout\,
	datad => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	dataf => \CPU|DECODER|ALT_INV_saida[4]~4_combout\,
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

-- Location: MLABCELL_X4_Y20_N54
\CPU|ULA|Saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Saida[0]~1_combout\ = ( \CPU|DECODER|saida~0_combout\ & ( (\CPU|bancoRegistradores|registrador~11_q\ & ((!\CPU|DECODER|Equal11~3_combout\ & ((\RAM|ram~560_combout\))) # (\CPU|DECODER|Equal11~3_combout\ & (\ROM|memROM~1_combout\)))) ) ) # ( 
-- !\CPU|DECODER|saida~0_combout\ & ( (!\CPU|DECODER|Equal11~3_combout\ & ((\RAM|ram~560_combout\))) # (\CPU|DECODER|Equal11~3_combout\ & (\ROM|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000011000100010000001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	datac => \RAM|ALT_INV_ram~560_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal11~3_combout\,
	dataf => \CPU|DECODER|ALT_INV_saida~0_combout\,
	combout => \CPU|ULA|Saida[0]~1_combout\);

-- Location: FF_X5_Y20_N5
\CPU|bancoRegistradores|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \CPU|ULA|Saida[0]~1_combout\,
	sload => \CPU|DECODER|saida[4]~5_combout\,
	ena => \CPU|DECODER|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|bancoRegistradores|registrador~11_q\);

-- Location: FF_X4_Y18_N2
\RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~71_q\);

-- Location: MLABCELL_X4_Y18_N27
\RAM|ram~55feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~55feeder_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~55feeder_combout\);

-- Location: FF_X4_Y18_N28
\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~55feeder_combout\,
	ena => \RAM|ram~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

-- Location: FF_X5_Y17_N59
\RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~63_q\);

-- Location: FF_X5_Y16_N52
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: FF_X5_Y16_N34
\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

-- Location: FF_X4_Y18_N32
\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

-- Location: FF_X5_Y16_N5
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~809_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: MLABCELL_X4_Y18_N30
\RAM|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~679_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~15_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~23_q\))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\RAM|ram~31_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\) # (\RAM|ram~39_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000010100101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_ram~23_q\,
	datac => \RAM|ALT_INV_ram~31_q\,
	datad => \RAM|ALT_INV_ram~39_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~15_q\,
	combout => \RAM|ram~679_combout\);

-- Location: LABCELL_X2_Y20_N33
\RAM|ram~47feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~47feeder_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~47feeder_combout\);

-- Location: FF_X2_Y20_N34
\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~47feeder_combout\,
	ena => \RAM|ram~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

-- Location: MLABCELL_X4_Y18_N0
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~679_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~679_combout\ & ((\RAM|ram~47_q\))) # (\RAM|ram~679_combout\ & (\RAM|ram~55_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~679_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~679_combout\ & ((\RAM|ram~63_q\))) # (\RAM|ram~679_combout\ & (\RAM|ram~71_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~71_q\,
	datab => \RAM|ALT_INV_ram~55_q\,
	datac => \RAM|ALT_INV_ram~63_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~679_combout\,
	datag => \RAM|ALT_INV_ram~47_q\,
	combout => \RAM|ram~544_combout\);

-- Location: LABCELL_X1_Y19_N30
\RAM|ram~311feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~311feeder_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~311feeder_combout\);

-- Location: FF_X1_Y19_N31
\RAM|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~311feeder_combout\,
	ena => \RAM|ram~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~311_q\);

-- Location: FF_X4_Y19_N49
\RAM|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~327_q\);

-- Location: LABCELL_X2_Y20_N6
\RAM|ram~319feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~319feeder_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~319feeder_combout\);

-- Location: FF_X2_Y20_N7
\RAM|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~319feeder_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~319_q\);

-- Location: FF_X4_Y19_N43
\RAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~295_q\);

-- Location: LABCELL_X2_Y21_N21
\RAM|ram~287feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~287feeder_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~287feeder_combout\);

-- Location: FF_X2_Y21_N22
\RAM|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~287feeder_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~287_q\);

-- Location: FF_X4_Y19_N41
\RAM|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~815_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~279_q\);

-- Location: FF_X4_Y21_N10
\RAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~817_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~271_q\);

-- Location: MLABCELL_X4_Y19_N42
\RAM|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~687_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (\RAM|ram~271_q\ & ((!\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\) # (\RAM|ram~279_q\))))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\RAM|ram~287_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~295_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000111111000111010001110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~295_q\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~287_q\,
	datad => \RAM|ALT_INV_ram~279_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~271_q\,
	combout => \RAM|ram~687_combout\);

-- Location: LABCELL_X2_Y20_N12
\RAM|ram~303feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~303feeder_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~303feeder_combout\);

-- Location: FF_X2_Y20_N14
\RAM|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~303feeder_combout\,
	ena => \RAM|ram~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~303_q\);

-- Location: MLABCELL_X4_Y19_N48
\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~687_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~687_combout\ & ((\RAM|ram~303_q\))) # (\RAM|ram~687_combout\ & (\RAM|ram~311_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~687_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~687_combout\ & ((\RAM|ram~319_q\))) # (\RAM|ram~687_combout\ & (\RAM|ram~327_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~311_q\,
	datab => \RAM|ALT_INV_ram~327_q\,
	datac => \RAM|ALT_INV_ram~319_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~687_combout\,
	datag => \RAM|ALT_INV_ram~303_q\,
	combout => \RAM|ram~552_combout\);

-- Location: FF_X4_Y20_N38
\RAM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~135_q\);

-- Location: MLABCELL_X4_Y20_N57
\RAM|ram~119feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~119feeder_combout\ = \CPU|bancoRegistradores|registrador~11_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~119feeder_combout\);

-- Location: FF_X4_Y20_N59
\RAM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~119feeder_combout\,
	ena => \RAM|ram~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~119_q\);

-- Location: FF_X1_Y20_N34
\RAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~127_q\);

-- Location: FF_X4_Y20_N13
\RAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~103_q\);

-- Location: FF_X2_Y19_N58
\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

-- Location: FF_X2_Y19_N53
\RAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~811_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~87_q\);

-- Location: FF_X4_Y21_N4
\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~813_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

-- Location: MLABCELL_X4_Y20_N12
\RAM|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~683_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~79_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\) # (\RAM|ram~87_q\))))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\RAM|ram~95_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~103_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_ram~103_q\,
	datac => \RAM|ALT_INV_ram~95_q\,
	datad => \RAM|ALT_INV_ram~87_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~79_q\,
	combout => \RAM|ram~683_combout\);

-- Location: FF_X7_Y20_N5
\RAM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~111_q\);

-- Location: MLABCELL_X4_Y20_N36
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~683_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~683_combout\ & ((\RAM|ram~111_q\))) # (\RAM|ram~683_combout\ & (\RAM|ram~119_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~683_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~683_combout\ & ((\RAM|ram~127_q\))) # (\RAM|ram~683_combout\ & (\RAM|ram~135_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~135_q\,
	datab => \RAM|ALT_INV_ram~119_q\,
	datac => \RAM|ALT_INV_ram~127_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~683_combout\,
	datag => \RAM|ALT_INV_ram~111_q\,
	combout => \RAM|ram~548_combout\);

-- Location: FF_X5_Y19_N56
\RAM|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~391_q\);

-- Location: FF_X6_Y17_N4
\RAM|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~375_q\);

-- Location: LABCELL_X7_Y19_N57
\RAM|ram~383feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~383feeder_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~383feeder_combout\);

-- Location: FF_X7_Y19_N58
\RAM|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~383feeder_combout\,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~383_q\);

-- Location: FF_X5_Y19_N2
\RAM|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~819_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~343_q\);

-- Location: FF_X5_Y19_N19
\RAM|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~359_q\);

-- Location: LABCELL_X6_Y16_N9
\RAM|ram~351feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~351feeder_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~351feeder_combout\);

-- Location: FF_X6_Y16_N10
\RAM|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~351feeder_combout\,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~351_q\);

-- Location: LABCELL_X6_Y16_N51
\RAM|ram~335feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~335feeder_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \RAM|ram~335feeder_combout\);

-- Location: FF_X6_Y16_N52
\RAM|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~335feeder_combout\,
	ena => \RAM|ram~821_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~335_q\);

-- Location: LABCELL_X5_Y19_N18
\RAM|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~691_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~335_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~343_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~351_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~359_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~343_q\,
	datab => \RAM|ALT_INV_ram~359_q\,
	datac => \RAM|ALT_INV_ram~351_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~335_q\,
	combout => \RAM|ram~691_combout\);

-- Location: FF_X4_Y17_N11
\RAM|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \RAM|ram~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~367_q\);

-- Location: LABCELL_X5_Y19_N54
\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~691_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~691_combout\ & ((\RAM|ram~367_q\))) # (\RAM|ram~691_combout\ & (\RAM|ram~375_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~691_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~691_combout\ & ((\RAM|ram~383_q\))) # (\RAM|ram~691_combout\ & (\RAM|ram~391_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~391_q\,
	datab => \RAM|ALT_INV_ram~375_q\,
	datac => \RAM|ALT_INV_ram~383_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~691_combout\,
	datag => \RAM|ALT_INV_ram~367_q\,
	combout => \RAM|ram~556_combout\);

-- Location: MLABCELL_X4_Y20_N3
\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \RAM|ram~548_combout\ & ( \RAM|ram~556_combout\ & ( ((!\ROM|memROM~9_combout\ & (\RAM|ram~544_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~552_combout\)))) # (\ROM|memROM~6_combout\) ) ) ) # ( !\RAM|ram~548_combout\ & ( 
-- \RAM|ram~556_combout\ & ( (!\ROM|memROM~9_combout\ & (\RAM|ram~544_combout\ & ((!\ROM|memROM~6_combout\)))) # (\ROM|memROM~9_combout\ & (((\ROM|memROM~6_combout\) # (\RAM|ram~552_combout\)))) ) ) ) # ( \RAM|ram~548_combout\ & ( !\RAM|ram~556_combout\ & ( 
-- (!\ROM|memROM~9_combout\ & (((\ROM|memROM~6_combout\)) # (\RAM|ram~544_combout\))) # (\ROM|memROM~9_combout\ & (((\RAM|ram~552_combout\ & !\ROM|memROM~6_combout\)))) ) ) ) # ( !\RAM|ram~548_combout\ & ( !\RAM|ram~556_combout\ & ( (!\ROM|memROM~6_combout\ 
-- & ((!\ROM|memROM~9_combout\ & (\RAM|ram~544_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~552_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000001001111010101000100111010101010010011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \RAM|ALT_INV_ram~544_combout\,
	datac => \RAM|ALT_INV_ram~552_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \RAM|ALT_INV_ram~548_combout\,
	dataf => \RAM|ALT_INV_ram~556_combout\,
	combout => \RAM|ram~560_combout\);

-- Location: LABCELL_X5_Y20_N57
\CPU|MUX_CPU|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[0]~3_combout\ = ( \RAM|ram~560_combout\ & ( (!\CPU|DECODER|Equal11~3_combout\) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~560_combout\ & ( (\CPU|DECODER|Equal11~3_combout\ & \ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal11~3_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \RAM|ALT_INV_ram~560_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[0]~3_combout\);

-- Location: LABCELL_X5_Y20_N6
\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( \CPU|bancoRegistradores|registrador~12_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[1]~4_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~6\ 
-- ))
-- \CPU|ULA|Add0~10\ = CARRY(( \CPU|bancoRegistradores|registrador~12_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[1]~4_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[1]~4_combout\,
	datad => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	dataf => \CPU|DECODER|ALT_INV_saida[4]~4_combout\,
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

-- Location: MLABCELL_X4_Y20_N45
\CPU|ULA|Saida[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Saida[1]~4_combout\ = ( \ROM|memROM~2_combout\ & ( \RAM|ram~611_combout\ & ( (!\CPU|bancoRegistradores|registrador~12_q\ & (!\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|Equal11~3_combout\) # (\CPU|MUX_CPU|saida_MUX[6]~0_combout\)))) # 
-- (\CPU|bancoRegistradores|registrador~12_q\ & (((\CPU|DECODER|Equal11~3_combout\)) # (\CPU|MUX_CPU|saida_MUX[6]~0_combout\))) ) ) ) # ( !\ROM|memROM~2_combout\ & ( \RAM|ram~611_combout\ & ( (\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & 
-- ((!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~12_q\))) ) ) ) # ( \ROM|memROM~2_combout\ & ( !\RAM|ram~611_combout\ & ( (\CPU|DECODER|Equal11~3_combout\ & ((!\CPU|DECODER|saida~0_combout\) # 
-- (\CPU|bancoRegistradores|registrador~12_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111010100110001001100010011000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	datab => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \CPU|DECODER|ALT_INV_Equal11~3_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~611_combout\,
	combout => \CPU|ULA|Saida[1]~4_combout\);

-- Location: FF_X5_Y20_N8
\CPU|bancoRegistradores|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \CPU|ULA|Saida[1]~4_combout\,
	sload => \CPU|DECODER|saida[4]~5_combout\,
	ena => \CPU|DECODER|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|bancoRegistradores|registrador~12_q\);

-- Location: FF_X6_Y19_N56
\RAM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~136_q\);

-- Location: FF_X4_Y20_N58
\RAM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~120_q\);

-- Location: LABCELL_X6_Y19_N48
\RAM|ram~128feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~128feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~128feeder_combout\);

-- Location: FF_X6_Y19_N50
\RAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~128feeder_combout\,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~128_q\);

-- Location: FF_X6_Y19_N43
\RAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~104_q\);

-- Location: LABCELL_X2_Y19_N27
\RAM|ram~88feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~88feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~88feeder_combout\);

-- Location: FF_X2_Y19_N29
\RAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~88feeder_combout\,
	ena => \RAM|ram~811_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~88_q\);

-- Location: LABCELL_X2_Y19_N9
\RAM|ram~96feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~96feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~96feeder_combout\);

-- Location: FF_X2_Y19_N10
\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~96feeder_combout\,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

-- Location: MLABCELL_X4_Y21_N24
\RAM|ram~80feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~80feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~80feeder_combout\);

-- Location: FF_X4_Y21_N25
\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~80feeder_combout\,
	ena => \RAM|ram~813_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

-- Location: LABCELL_X6_Y19_N42
\RAM|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~731_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~80_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~88_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~96_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~104_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~104_q\,
	datab => \RAM|ALT_INV_ram~88_q\,
	datac => \RAM|ALT_INV_ram~96_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~80_q\,
	combout => \RAM|ram~731_combout\);

-- Location: LABCELL_X7_Y21_N6
\RAM|ram~112feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~112feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~112feeder_combout\);

-- Location: FF_X7_Y21_N7
\RAM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~112feeder_combout\,
	ena => \RAM|ram~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~112_q\);

-- Location: LABCELL_X6_Y19_N54
\RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~599_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~731_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~731_combout\ & ((\RAM|ram~112_q\))) # (\RAM|ram~731_combout\ & (\RAM|ram~120_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~731_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~731_combout\ & ((\RAM|ram~128_q\))) # (\RAM|ram~731_combout\ & (\RAM|ram~136_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~136_q\,
	datab => \RAM|ALT_INV_ram~120_q\,
	datac => \RAM|ALT_INV_ram~128_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~731_combout\,
	datag => \RAM|ALT_INV_ram~112_q\,
	combout => \RAM|ram~599_combout\);

-- Location: FF_X7_Y19_N19
\RAM|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~376_q\);

-- Location: FF_X6_Y20_N19
\RAM|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~392_q\);

-- Location: FF_X7_Y19_N49
\RAM|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~384_q\);

-- Location: LABCELL_X5_Y19_N51
\RAM|ram~344feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~344feeder_combout\ = \CPU|bancoRegistradores|registrador~12_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~344feeder_combout\);

-- Location: FF_X5_Y19_N53
\RAM|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~344feeder_combout\,
	ena => \RAM|ram~819_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~344_q\);

-- Location: FF_X5_Y19_N38
\RAM|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~360_q\);

-- Location: FF_X6_Y16_N31
\RAM|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~352_q\);

-- Location: FF_X6_Y16_N37
\RAM|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~821_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~336_q\);

-- Location: LABCELL_X5_Y19_N36
\RAM|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~739_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~336_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~344_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~352_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~360_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~344_q\,
	datab => \RAM|ALT_INV_ram~360_q\,
	datac => \RAM|ALT_INV_ram~352_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~336_q\,
	combout => \RAM|ram~739_combout\);

-- Location: MLABCELL_X4_Y17_N39
\RAM|ram~368feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~368feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~368feeder_combout\);

-- Location: FF_X4_Y17_N40
\RAM|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~368feeder_combout\,
	ena => \RAM|ram~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~368_q\);

-- Location: LABCELL_X6_Y20_N18
\RAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~607_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~739_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~739_combout\ & ((\RAM|ram~368_q\))) # (\RAM|ram~739_combout\ & (\RAM|ram~376_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~739_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~739_combout\ & ((\RAM|ram~384_q\))) # (\RAM|ram~739_combout\ & (\RAM|ram~392_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~376_q\,
	datab => \RAM|ALT_INV_ram~392_q\,
	datac => \RAM|ALT_INV_ram~384_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~739_combout\,
	datag => \RAM|ALT_INV_ram~368_q\,
	combout => \RAM|ram~607_combout\);

-- Location: LABCELL_X6_Y21_N6
\RAM|ram~312feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~312feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~312feeder_combout\);

-- Location: FF_X6_Y21_N8
\RAM|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~312feeder_combout\,
	ena => \RAM|ram~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~312_q\);

-- Location: FF_X6_Y20_N55
\RAM|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~328_q\);

-- Location: FF_X2_Y20_N1
\RAM|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~320_q\);

-- Location: FF_X5_Y22_N23
\RAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~296_q\);

-- Location: LABCELL_X5_Y22_N39
\RAM|ram~280feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~280feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~280feeder_combout\);

-- Location: FF_X5_Y22_N41
\RAM|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~280feeder_combout\,
	ena => \RAM|ram~815_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~280_q\);

-- Location: LABCELL_X5_Y22_N54
\RAM|ram~288feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~288feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~288feeder_combout\);

-- Location: FF_X5_Y22_N56
\RAM|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~288feeder_combout\,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~288_q\);

-- Location: MLABCELL_X4_Y21_N33
\RAM|ram~272feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~272feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~272feeder_combout\);

-- Location: FF_X4_Y21_N34
\RAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~272feeder_combout\,
	ena => \RAM|ram~817_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~272_q\);

-- Location: LABCELL_X5_Y22_N21
\RAM|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~735_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~272_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~280_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~288_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~296_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~296_q\,
	datab => \RAM|ALT_INV_ram~280_q\,
	datac => \RAM|ALT_INV_ram~288_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~272_q\,
	combout => \RAM|ram~735_combout\);

-- Location: FF_X6_Y20_N14
\RAM|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~304_q\);

-- Location: LABCELL_X6_Y20_N54
\RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~603_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~735_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~735_combout\ & ((\RAM|ram~304_q\))) # (\RAM|ram~735_combout\ & (\RAM|ram~312_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~735_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~735_combout\ & ((\RAM|ram~320_q\))) # (\RAM|ram~735_combout\ & (\RAM|ram~328_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~312_q\,
	datab => \RAM|ALT_INV_ram~328_q\,
	datac => \RAM|ALT_INV_ram~320_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~735_combout\,
	datag => \RAM|ALT_INV_ram~304_q\,
	combout => \RAM|ram~603_combout\);

-- Location: FF_X5_Y17_N50
\RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~72_q\);

-- Location: FF_X4_Y18_N52
\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

-- Location: FF_X5_Y17_N2
\RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~64_q\);

-- Location: MLABCELL_X4_Y17_N54
\RAM|ram~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~24feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~24feeder_combout\);

-- Location: FF_X4_Y17_N55
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~24feeder_combout\,
	ena => \RAM|ram~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: FF_X5_Y16_N28
\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

-- Location: FF_X5_Y17_N13
\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

-- Location: MLABCELL_X4_Y17_N48
\RAM|ram~16feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~16feeder_combout\ = ( \CPU|bancoRegistradores|registrador~12_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~12_q\,
	combout => \RAM|ram~16feeder_combout\);

-- Location: FF_X4_Y17_N49
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~16feeder_combout\,
	ena => \RAM|ram~809_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: LABCELL_X5_Y17_N12
\RAM|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~727_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~16_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~24_q\))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (\RAM|ram~32_q\ & ((!\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\) # (\RAM|ram~40_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001110100011101000011000011111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \RAM|ALT_INV_ram~32_q\,
	datad => \RAM|ALT_INV_ram~40_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~16_q\,
	combout => \RAM|ram~727_combout\);

-- Location: FF_X2_Y20_N22
\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \RAM|ram~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

-- Location: LABCELL_X5_Y17_N48
\RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~595_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~727_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~727_combout\ & ((\RAM|ram~48_q\))) # (\RAM|ram~727_combout\ & (\RAM|ram~56_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~727_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~727_combout\ & ((\RAM|ram~64_q\))) # (\RAM|ram~727_combout\ & (\RAM|ram~72_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~72_q\,
	datab => \RAM|ALT_INV_ram~56_q\,
	datac => \RAM|ALT_INV_ram~64_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~727_combout\,
	datag => \RAM|ALT_INV_ram~48_q\,
	combout => \RAM|ram~595_combout\);

-- Location: LABCELL_X6_Y20_N48
\RAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~611_combout\ = ( \RAM|ram~603_combout\ & ( \RAM|ram~595_combout\ & ( (!\ROM|memROM~6_combout\) # ((!\ROM|memROM~9_combout\ & (\RAM|ram~599_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~607_combout\)))) ) ) ) # ( !\RAM|ram~603_combout\ & ( 
-- \RAM|ram~595_combout\ & ( (!\ROM|memROM~6_combout\ & (((!\ROM|memROM~9_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~9_combout\ & (\RAM|ram~599_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~607_combout\))))) ) ) ) # ( \RAM|ram~603_combout\ & 
-- ( !\RAM|ram~595_combout\ & ( (!\ROM|memROM~6_combout\ & (((\ROM|memROM~9_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~9_combout\ & (\RAM|ram~599_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~607_combout\))))) ) ) ) # ( 
-- !\RAM|ram~603_combout\ & ( !\RAM|ram~595_combout\ & ( (\ROM|memROM~6_combout\ & ((!\ROM|memROM~9_combout\ & (\RAM|ram~599_combout\)) # (\ROM|memROM~9_combout\ & ((\RAM|ram~607_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~599_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~607_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM|ALT_INV_ram~603_combout\,
	dataf => \RAM|ALT_INV_ram~595_combout\,
	combout => \RAM|ram~611_combout\);

-- Location: LABCELL_X6_Y20_N3
\CPU|MUX_CPU|saida_MUX[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[1]~4_combout\ = ( \RAM|ram~611_combout\ & ( ((\CPU|DECODER|Equal11~3_combout\ & \ROM|memROM~2_combout\)) # (\CPU|MUX_CPU|saida_MUX[6]~0_combout\) ) ) # ( !\RAM|ram~611_combout\ & ( (\CPU|DECODER|Equal11~3_combout\ & 
-- \ROM|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_Equal11~3_combout\,
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~611_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[1]~4_combout\);

-- Location: LABCELL_X5_Y20_N9
\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( \CPU|bancoRegistradores|registrador~13_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[2]~5_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~10\ 
-- ))
-- \CPU|ULA|Add0~14\ = CARRY(( \CPU|bancoRegistradores|registrador~13_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[2]~5_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[2]~5_combout\,
	datad => \CPU|bancoRegistradores|ALT_INV_registrador~13_q\,
	dataf => \CPU|DECODER|ALT_INV_saida[4]~4_combout\,
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

-- Location: MLABCELL_X4_Y18_N36
\CPU|ULA|Saida[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Saida[2]~0_combout\ = ( \CPU|DECODER|Equal11~3_combout\ & ( \RAM|ram~543_combout\ & ( (!\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & (\ROM|memROM~4_combout\ & ((!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~13_q\)))) # 
-- (\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ((!\CPU|DECODER|saida~0_combout\) # ((\CPU|bancoRegistradores|registrador~13_q\)))) ) ) ) # ( !\CPU|DECODER|Equal11~3_combout\ & ( \RAM|ram~543_combout\ & ( (\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & 
-- ((!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~13_q\))) ) ) ) # ( \CPU|DECODER|Equal11~3_combout\ & ( !\RAM|ram~543_combout\ & ( (\ROM|memROM~4_combout\ & ((!\CPU|DECODER|saida~0_combout\) # 
-- (\CPU|bancoRegistradores|registrador~13_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100111101000101010001010100010111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datac => \CPU|bancoRegistradores|ALT_INV_registrador~13_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|DECODER|ALT_INV_Equal11~3_combout\,
	dataf => \RAM|ALT_INV_ram~543_combout\,
	combout => \CPU|ULA|Saida[2]~0_combout\);

-- Location: FF_X5_Y20_N11
\CPU|bancoRegistradores|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \CPU|ULA|Saida[2]~0_combout\,
	sload => \CPU|DECODER|saida[4]~5_combout\,
	ena => \CPU|DECODER|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|bancoRegistradores|registrador~13_q\);

-- Location: FF_X4_Y18_N10
\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~791_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

-- Location: FF_X4_Y18_N55
\RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~73_q\);

-- Location: LABCELL_X5_Y17_N54
\RAM|ram~65feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~65feeder_combout\ = ( \CPU|bancoRegistradores|registrador~13_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~13_q\,
	combout => \RAM|ram~65feeder_combout\);

-- Location: FF_X5_Y17_N55
\RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~65feeder_combout\,
	ena => \RAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~65_q\);

-- Location: FF_X4_Y18_N43
\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

-- Location: FF_X5_Y16_N44
\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

-- Location: LABCELL_X5_Y16_N48
\RAM|ram~25feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~25feeder_combout\ = ( \CPU|bancoRegistradores|registrador~13_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~13_q\,
	combout => \RAM|ram~25feeder_combout\);

-- Location: FF_X5_Y16_N50
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~25feeder_combout\,
	ena => \RAM|ram~807_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: FF_X4_Y17_N17
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~809_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: MLABCELL_X4_Y18_N42
\RAM|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~663_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & (((\RAM|ram~17_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\) # (\RAM|ram~25_q\))))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & (((\RAM|ram~33_q\ & ((!\ROM|memROM~4_combout\)))))) # (\ROM|memROM~1_combout\ & ((((\ROM|memROM~4_combout\))) # (\RAM|ram~41_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \RAM|ALT_INV_ram~41_q\,
	datac => \RAM|ALT_INV_ram~33_q\,
	datad => \RAM|ALT_INV_ram~25_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~17_q\,
	combout => \RAM|ram~663_combout\);

-- Location: LABCELL_X2_Y18_N57
\RAM|ram~49feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~49feeder_combout\ = ( \CPU|bancoRegistradores|registrador~13_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~13_q\,
	combout => \RAM|ram~49feeder_combout\);

-- Location: FF_X2_Y18_N58
\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~49feeder_combout\,
	ena => \RAM|ram~793_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

-- Location: MLABCELL_X4_Y18_N54
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~663_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~663_combout\ & ((\RAM|ram~49_q\))) # (\RAM|ram~663_combout\ & (\RAM|ram~57_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~663_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~663_combout\ & ((\RAM|ram~65_q\))) # (\RAM|ram~663_combout\ & (\RAM|ram~73_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~57_q\,
	datab => \RAM|ALT_INV_ram~73_q\,
	datac => \RAM|ALT_INV_ram~65_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~663_combout\,
	datag => \RAM|ALT_INV_ram~49_q\,
	combout => \RAM|ram~527_combout\);

-- Location: FF_X5_Y19_N7
\RAM|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~393_q\);

-- Location: FF_X7_Y19_N13
\RAM|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~803_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~377_q\);

-- Location: FF_X7_Y19_N10
\RAM|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~385_q\);

-- Location: FF_X5_Y19_N5
\RAM|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~819_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~345_q\);

-- Location: FF_X5_Y19_N43
\RAM|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~361_q\);

-- Location: FF_X6_Y16_N44
\RAM|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~353_q\);

-- Location: FF_X6_Y16_N1
\RAM|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~821_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~337_q\);

-- Location: LABCELL_X5_Y19_N42
\RAM|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~675_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~337_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~345_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~353_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~361_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~345_q\,
	datab => \RAM|ALT_INV_ram~361_q\,
	datac => \RAM|ALT_INV_ram~353_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~337_q\,
	combout => \RAM|ram~675_combout\);

-- Location: FF_X4_Y17_N4
\RAM|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~805_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~369_q\);

-- Location: LABCELL_X5_Y19_N6
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~675_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~675_combout\ & ((\RAM|ram~369_q\))) # (\RAM|ram~675_combout\ & (\RAM|ram~377_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~675_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~675_combout\ & ((\RAM|ram~385_q\))) # (\RAM|ram~675_combout\ & (\RAM|ram~393_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~393_q\,
	datab => \RAM|ALT_INV_ram~377_q\,
	datac => \RAM|ALT_INV_ram~385_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~675_combout\,
	datag => \RAM|ALT_INV_ram~369_q\,
	combout => \RAM|ram~539_combout\);

-- Location: FF_X4_Y19_N56
\RAM|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~329_q\);

-- Location: FF_X1_Y19_N53
\RAM|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~799_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~313_q\);

-- Location: LABCELL_X2_Y20_N51
\RAM|ram~321feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~321feeder_combout\ = ( \CPU|bancoRegistradores|registrador~13_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~13_q\,
	combout => \RAM|ram~321feeder_combout\);

-- Location: FF_X2_Y20_N52
\RAM|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~321feeder_combout\,
	ena => \RAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~321_q\);

-- Location: FF_X4_Y19_N2
\RAM|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~815_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~281_q\);

-- Location: FF_X4_Y19_N7
\RAM|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~297_q\);

-- Location: FF_X2_Y21_N13
\RAM|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~289_q\);

-- Location: MLABCELL_X4_Y21_N30
\RAM|ram~273feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~273feeder_combout\ = ( \CPU|bancoRegistradores|registrador~13_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~13_q\,
	combout => \RAM|ram~273feeder_combout\);

-- Location: FF_X4_Y21_N31
\RAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~273feeder_combout\,
	ena => \RAM|ram~817_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~273_q\);

-- Location: MLABCELL_X4_Y19_N6
\RAM|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~671_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~273_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~281_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~289_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~297_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~281_q\,
	datab => \RAM|ALT_INV_ram~297_q\,
	datac => \RAM|ALT_INV_ram~289_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~273_q\,
	combout => \RAM|ram~671_combout\);

-- Location: FF_X2_Y21_N4
\RAM|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~801_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~305_q\);

-- Location: MLABCELL_X4_Y19_N54
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~671_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~671_combout\ & ((\RAM|ram~305_q\))) # (\RAM|ram~671_combout\ & (\RAM|ram~313_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~671_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~671_combout\ & ((\RAM|ram~321_q\))) # (\RAM|ram~671_combout\ & (\RAM|ram~329_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~329_q\,
	datab => \RAM|ALT_INV_ram~313_q\,
	datac => \RAM|ALT_INV_ram~321_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~671_combout\,
	datag => \RAM|ALT_INV_ram~305_q\,
	combout => \RAM|ram~535_combout\);

-- Location: FF_X4_Y20_N5
\RAM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~795_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~121_q\);

-- Location: FF_X5_Y18_N25
\RAM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~137_q\);

-- Location: FF_X5_Y18_N50
\RAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~129_q\);

-- Location: FF_X4_Y20_N20
\RAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~105_q\);

-- Location: FF_X2_Y19_N1
\RAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~811_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~89_q\);

-- Location: FF_X2_Y19_N31
\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

-- Location: MLABCELL_X4_Y21_N48
\RAM|ram~81feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~81feeder_combout\ = ( \CPU|bancoRegistradores|registrador~13_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~13_q\,
	combout => \RAM|ram~81feeder_combout\);

-- Location: FF_X4_Y21_N49
\RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|ram~81feeder_combout\,
	ena => \RAM|ram~813_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~81_q\);

-- Location: MLABCELL_X4_Y20_N18
\RAM|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~667_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~1_combout\ & (((\RAM|ram~81_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~89_q\)))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- ((!\ROM|memROM~1_combout\ & (((\RAM|ram~97_q\ & !\ROM|memROM~4_combout\)))) # (\ROM|memROM~1_combout\ & (((\ROM|memROM~4_combout\)) # (\RAM|ram~105_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100110011000011110101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~105_q\,
	datab => \RAM|ALT_INV_ram~89_q\,
	datac => \RAM|ALT_INV_ram~97_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~81_q\,
	combout => \RAM|ram~667_combout\);

-- Location: FF_X5_Y18_N56
\RAM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~13_q\,
	sload => VCC,
	ena => \RAM|ram~797_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~113_q\);

-- Location: LABCELL_X5_Y18_N24
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( !\ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~667_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~667_combout\ & ((\RAM|ram~113_q\))) # (\RAM|ram~667_combout\ & (\RAM|ram~121_q\))))) ) ) # ( 
-- \ROM|memROM~2_combout\ & ( ((!\ROM|memROM~4_combout\ & (((\RAM|ram~667_combout\)))) # (\ROM|memROM~4_combout\ & ((!\RAM|ram~667_combout\ & ((\RAM|ram~129_q\))) # (\RAM|ram~667_combout\ & (\RAM|ram~137_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~121_q\,
	datab => \RAM|ALT_INV_ram~137_q\,
	datac => \RAM|ALT_INV_ram~129_q\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~667_combout\,
	datag => \RAM|ALT_INV_ram~113_q\,
	combout => \RAM|ram~531_combout\);

-- Location: MLABCELL_X4_Y18_N6
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \RAM|ram~535_combout\ & ( \RAM|ram~531_combout\ & ( (!\ROM|memROM~6_combout\ & (((\ROM|memROM~9_combout\)) # (\RAM|ram~527_combout\))) # (\ROM|memROM~6_combout\ & (((!\ROM|memROM~9_combout\) # (\RAM|ram~539_combout\)))) ) ) ) # ( 
-- !\RAM|ram~535_combout\ & ( \RAM|ram~531_combout\ & ( (!\ROM|memROM~6_combout\ & (\RAM|ram~527_combout\ & ((!\ROM|memROM~9_combout\)))) # (\ROM|memROM~6_combout\ & (((!\ROM|memROM~9_combout\) # (\RAM|ram~539_combout\)))) ) ) ) # ( \RAM|ram~535_combout\ & ( 
-- !\RAM|ram~531_combout\ & ( (!\ROM|memROM~6_combout\ & (((\ROM|memROM~9_combout\)) # (\RAM|ram~527_combout\))) # (\ROM|memROM~6_combout\ & (((\RAM|ram~539_combout\ & \ROM|memROM~9_combout\)))) ) ) ) # ( !\RAM|ram~535_combout\ & ( !\RAM|ram~531_combout\ & ( 
-- (!\ROM|memROM~6_combout\ & (\RAM|ram~527_combout\ & ((!\ROM|memROM~9_combout\)))) # (\ROM|memROM~6_combout\ & (((\RAM|ram~539_combout\ & \ROM|memROM~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datab => \ROM|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~539_combout\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \RAM|ALT_INV_ram~535_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: MLABCELL_X4_Y18_N48
\CPU|MUX_CPU|saida_MUX[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_CPU|saida_MUX[2]~5_combout\ = ( \CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( \RAM|ram~543_combout\ ) ) # ( !\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( \RAM|ram~543_combout\ & ( (\CPU|DECODER|Equal11~3_combout\ & \ROM|memROM~4_combout\) ) ) ) # ( 
-- \CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( !\RAM|ram~543_combout\ & ( (\CPU|DECODER|Equal11~3_combout\ & \ROM|memROM~4_combout\) ) ) ) # ( !\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( !\RAM|ram~543_combout\ & ( (\CPU|DECODER|Equal11~3_combout\ & 
-- \ROM|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECODER|ALT_INV_Equal11~3_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	datae => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	dataf => \RAM|ALT_INV_ram~543_combout\,
	combout => \CPU|MUX_CPU|saida_MUX[2]~5_combout\);

-- Location: LABCELL_X5_Y20_N12
\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( \CPU|bancoRegistradores|registrador~14_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[3]~6_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~14\ 
-- ))
-- \CPU|ULA|Add0~18\ = CARRY(( \CPU|bancoRegistradores|registrador~14_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[3]~6_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101011110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[4]~4_combout\,
	datad => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	dataf => \CPU|MUX_CPU|ALT_INV_saida_MUX[3]~6_combout\,
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

-- Location: MLABCELL_X4_Y20_N51
\CPU|ULA|Saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Saida[3]~3_combout\ = ( \CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( \RAM|ram~594_combout\ & ( (!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~14_q\) ) ) ) # ( !\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( \RAM|ram~594_combout\ & 
-- ( (\ROM|memROM~6_combout\ & (\CPU|DECODER|Equal11~3_combout\ & ((!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~14_q\)))) ) ) ) # ( \CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( !\RAM|ram~594_combout\ & ( (\ROM|memROM~6_combout\ & 
-- (\CPU|DECODER|Equal11~3_combout\ & ((!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~14_q\)))) ) ) ) # ( !\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( !\RAM|ram~594_combout\ & ( (\ROM|memROM~6_combout\ & (\CPU|DECODER|Equal11~3_combout\ 
-- & ((!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~14_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000100010100000000010001011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datac => \CPU|bancoRegistradores|ALT_INV_registrador~14_q\,
	datad => \CPU|DECODER|ALT_INV_Equal11~3_combout\,
	datae => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	dataf => \RAM|ALT_INV_ram~594_combout\,
	combout => \CPU|ULA|Saida[3]~3_combout\);

-- Location: FF_X5_Y20_N14
\CPU|bancoRegistradores|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \CPU|ULA|Saida[3]~3_combout\,
	sload => \CPU|DECODER|saida[4]~5_combout\,
	ena => \CPU|DECODER|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|bancoRegistradores|registrador~14_q\);

-- Location: LABCELL_X5_Y20_N15
\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( \CPU|bancoRegistradores|registrador~15_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[4]~7_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~18\ 
-- ))
-- \CPU|ULA|Add0~22\ = CARRY(( \CPU|bancoRegistradores|registrador~15_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[4]~7_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101011110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[4]~4_combout\,
	datad => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	dataf => \CPU|MUX_CPU|ALT_INV_saida_MUX[4]~7_combout\,
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

-- Location: LABCELL_X6_Y19_N18
\CPU|ULA|Saida[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Saida[4]~6_combout\ = ( \RAM|ram~645_combout\ & ( \CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ( (!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~15_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datae => \RAM|ALT_INV_ram~645_combout\,
	dataf => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	combout => \CPU|ULA|Saida[4]~6_combout\);

-- Location: FF_X5_Y20_N17
\CPU|bancoRegistradores|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \CPU|ULA|Saida[4]~6_combout\,
	sload => \CPU|DECODER|saida[4]~5_combout\,
	ena => \CPU|DECODER|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|bancoRegistradores|registrador~15_q\);

-- Location: LABCELL_X5_Y20_N18
\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( \CPU|bancoRegistradores|registrador~16_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[5]~8_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~22\ 
-- ))
-- \CPU|ULA|Add0~26\ = CARRY(( \CPU|bancoRegistradores|registrador~16_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[5]~8_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101011110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[4]~4_combout\,
	datad => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	dataf => \CPU|MUX_CPU|ALT_INV_saida_MUX[5]~8_combout\,
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

-- Location: MLABCELL_X4_Y19_N3
\CPU|ULA|Saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Saida[5]~2_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ & ( \RAM|ram~577_combout\ & ( (\CPU|MUX_CPU|saida_MUX[6]~0_combout\) # (\CPU|MUX_CPU|saida_MUX[7]~1_combout\) ) ) ) # ( !\CPU|bancoRegistradores|registrador~16_q\ & ( 
-- \RAM|ram~577_combout\ & ( (!\CPU|DECODER|saida~0_combout\ & ((\CPU|MUX_CPU|saida_MUX[6]~0_combout\) # (\CPU|MUX_CPU|saida_MUX[7]~1_combout\))) ) ) ) # ( \CPU|bancoRegistradores|registrador~16_q\ & ( !\RAM|ram~577_combout\ & ( 
-- \CPU|MUX_CPU|saida_MUX[7]~1_combout\ ) ) ) # ( !\CPU|bancoRegistradores|registrador~16_q\ & ( !\RAM|ram~577_combout\ & ( (\CPU|MUX_CPU|saida_MUX[7]~1_combout\ & !\CPU|DECODER|saida~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010101010101010101010000111100000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_CPU|ALT_INV_saida_MUX[7]~1_combout\,
	datac => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datad => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	datae => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	dataf => \RAM|ALT_INV_ram~577_combout\,
	combout => \CPU|ULA|Saida[5]~2_combout\);

-- Location: FF_X5_Y20_N20
\CPU|bancoRegistradores|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \CPU|ULA|Saida[5]~2_combout\,
	sload => \CPU|DECODER|saida[4]~5_combout\,
	ena => \CPU|DECODER|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|bancoRegistradores|registrador~16_q\);

-- Location: LABCELL_X5_Y20_N21
\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( \CPU|bancoRegistradores|registrador~17_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[6]~9_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~26\ 
-- ))
-- \CPU|ULA|Add0~30\ = CARRY(( \CPU|bancoRegistradores|registrador~17_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[6]~9_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101011110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[4]~4_combout\,
	datad => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	dataf => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~9_combout\,
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\,
	cout => \CPU|ULA|Add0~30\);

-- Location: LABCELL_X6_Y21_N12
\CPU|ULA|Saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Saida[6]~7_combout\ = ( \RAM|ram~662_combout\ & ( (\CPU|MUX_CPU|saida_MUX[6]~0_combout\ & ((!\CPU|DECODER|saida~0_combout\) # (\CPU|bancoRegistradores|registrador~17_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000010100000000000000000000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|bancoRegistradores|ALT_INV_registrador~17_q\,
	datac => \CPU|MUX_CPU|ALT_INV_saida_MUX[6]~0_combout\,
	datad => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datae => \RAM|ALT_INV_ram~662_combout\,
	combout => \CPU|ULA|Saida[6]~7_combout\);

-- Location: FF_X5_Y20_N23
\CPU|bancoRegistradores|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \CPU|ULA|Saida[6]~7_combout\,
	sload => \CPU|DECODER|saida[4]~5_combout\,
	ena => \CPU|DECODER|saida[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|bancoRegistradores|registrador~17_q\);

-- Location: LABCELL_X5_Y20_N24
\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( \CPU|bancoRegistradores|registrador~18_q\ ) + ( !\CPU|MUX_CPU|saida_MUX[7]~2_combout\ $ (((\CPU|DECODER|saida~0_combout\ & ((\CPU|DECODER|saida[4]~4_combout\) # (\CPU|DECODER|Equal11~6_combout\))))) ) + ( \CPU|ULA|Add0~30\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101011110101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECODER|ALT_INV_saida~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~6_combout\,
	datac => \CPU|DECODER|ALT_INV_saida[4]~4_combout\,
	datad => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	dataf => \CPU|MUX_CPU|ALT_INV_saida_MUX[7]~2_combout\,
	cin => \CPU|ULA|Add0~30\,
	sumout => \CPU|ULA|Add0~1_sumout\);

-- Location: LABCELL_X7_Y20_N42
\CPU|FlipFlop|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlipFlop|DOUT~4_combout\ = ( \ROM|memROM~16_combout\ & ( (!\ROM|memROM~15_combout\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|FlipFlop|DOUT~4_combout\);

-- Location: LABCELL_X5_Y20_N36
\CPU|FlipFlop|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlipFlop|DOUT~1_combout\ = ( !\CPU|ULA|Add0~9_sumout\ & ( !\CPU|ULA|Add0~21_sumout\ & ( (\CPU|FlipFlop|DOUT~4_combout\ & (!\CPU|ULA|Add0~13_sumout\ & (!\CPU|ULA|Add0~5_sumout\ & !\CPU|ULA|Add0~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FlipFlop|ALT_INV_DOUT~4_combout\,
	datab => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	datac => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	datad => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	datae => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	dataf => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	combout => \CPU|FlipFlop|DOUT~1_combout\);

-- Location: LABCELL_X5_Y20_N51
\CPU|FlipFlop|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlipFlop|DOUT~2_combout\ = ( !\CPU|ULA|Add0~25_sumout\ & ( !\CPU|ULA|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	dataf => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	combout => \CPU|FlipFlop|DOUT~2_combout\);

-- Location: LABCELL_X5_Y20_N48
\CPU|FlipFlop|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FlipFlop|DOUT~3_combout\ = ( \CPU|FlipFlop|DOUT~2_combout\ & ( ((!\CPU|ULA|Add0~1_sumout\ & \CPU|FlipFlop|DOUT~1_combout\)) # (\CPU|FlipFlop|DOUT~0_combout\) ) ) # ( !\CPU|FlipFlop|DOUT~2_combout\ & ( \CPU|FlipFlop|DOUT~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|FlipFlop|ALT_INV_DOUT~0_combout\,
	datac => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	datad => \CPU|FlipFlop|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|FlipFlop|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FlipFlop|DOUT~3_combout\);

-- Location: FF_X5_Y20_N49
\CPU|FlipFlop|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|FlipFlop|DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FlipFlop|DOUT~q\);

-- Location: LABCELL_X7_Y20_N0
\CPU|MUX_ENDERECO|saida_MUX[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ = ( \ROM|memROM~16_combout\ & ( (!\ROM|memROM~15_combout\ & (!\ROM|memROM~14_combout\ & \ROM|memROM~11_combout\)) ) ) # ( !\ROM|memROM~16_combout\ & ( (\ROM|memROM~15_combout\ & (\ROM|memROM~14_combout\ & 
-- ((!\ROM|memROM~11_combout\) # (\CPU|FlipFlop|DOUT~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001000000001010000000000101000000010000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \CPU|FlipFlop|ALT_INV_DOUT~q\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~16_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\);

-- Location: FF_X10_Y18_N1
\CPU|RAM_END|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~25_sumout\,
	sload => VCC,
	ena => \rtl~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~76_q\);

-- Location: FF_X10_Y18_N32
\CPU|RAM_END|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~25_sumout\,
	sload => VCC,
	ena => \rtl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~58_q\);

-- Location: FF_X7_Y18_N37
\CPU|RAM_END|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~25_sumout\,
	sload => VCC,
	ena => \rtl~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~67_q\);

-- Location: FF_X10_Y19_N14
\CPU|RAM_END|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~25_sumout\,
	sload => VCC,
	ena => \rtl~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~40_q\);

-- Location: MLABCELL_X9_Y19_N21
\CPU|RAM_END|ram~31feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~31feeder_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|RAM_END|ram~31feeder_combout\);

-- Location: FF_X9_Y19_N22
\CPU|RAM_END|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~31feeder_combout\,
	ena => \rtl~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~31_q\);

-- Location: LABCELL_X10_Y19_N33
\CPU|RAM_END|ram~22feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~22feeder_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|RAM_END|ram~22feeder_combout\);

-- Location: FF_X10_Y19_N34
\CPU|RAM_END|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|RAM_END|ram~22feeder_combout\,
	ena => \rtl~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~22_q\);

-- Location: FF_X10_Y19_N40
\CPU|RAM_END|ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~25_sumout\,
	sload => VCC,
	ena => \rtl~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~13_q\);

-- Location: LABCELL_X10_Y19_N12
\CPU|RAM_END|ram~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~121_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~13_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # (\CPU|MUX_END|saida_MUX[0]~2_combout\ & 
-- ((((\CPU|MUX_END|saida_MUX[2]~0_combout\) # (\CPU|RAM_END|ram~22_q\))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( (!\CPU|MUX_END|saida_MUX[0]~2_combout\ & (((\CPU|RAM_END|ram~31_q\ & ((!\CPU|MUX_END|saida_MUX[2]~0_combout\)))))) # 
-- (\CPU|MUX_END|saida_MUX[0]~2_combout\ & ((((\CPU|MUX_END|saida_MUX[2]~0_combout\))) # (\CPU|RAM_END|ram~40_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_END|ALT_INV_saida_MUX[0]~2_combout\,
	datab => \CPU|RAM_END|ALT_INV_ram~40_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~31_q\,
	datad => \CPU|RAM_END|ALT_INV_ram~22_q\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~13_q\,
	combout => \CPU|RAM_END|ram~121_combout\);

-- Location: FF_X10_Y18_N37
\CPU|RAM_END|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|incrementaPC|Add0~25_sumout\,
	sload => VCC,
	ena => \rtl~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|RAM_END|ram~49_q\);

-- Location: LABCELL_X10_Y18_N0
\CPU|RAM_END|ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|RAM_END|ram~85_combout\ = ( !\CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~121_combout\)))) # (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~121_combout\ & 
-- ((\CPU|RAM_END|ram~49_q\))) # (\CPU|RAM_END|ram~121_combout\ & (\CPU|RAM_END|ram~58_q\))))) ) ) # ( \CPU|MUX_END|saida_MUX[1]~1_combout\ & ( ((!\CPU|MUX_END|saida_MUX[2]~0_combout\ & (((\CPU|RAM_END|ram~121_combout\)))) # 
-- (\CPU|MUX_END|saida_MUX[2]~0_combout\ & ((!\CPU|RAM_END|ram~121_combout\ & ((\CPU|RAM_END|ram~67_q\))) # (\CPU|RAM_END|ram~121_combout\ & (\CPU|RAM_END|ram~76_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|RAM_END|ALT_INV_ram~76_q\,
	datab => \CPU|RAM_END|ALT_INV_ram~58_q\,
	datac => \CPU|RAM_END|ALT_INV_ram~67_q\,
	datad => \CPU|MUX_END|ALT_INV_saida_MUX[2]~0_combout\,
	datae => \CPU|MUX_END|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|RAM_END|ALT_INV_ram~121_combout\,
	datag => \CPU|RAM_END|ALT_INV_ram~49_q\,
	combout => \CPU|RAM_END|ram~85_combout\);

-- Location: LABCELL_X6_Y18_N15
\CPU|MUX_ENDERECO|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX_ENDERECO|saida_MUX[0]~1_combout\ = ( \ROM|memROM~1_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\ & (((\CPU|incrementaPC|Add0~25_sumout\)) # (\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\))) # (\CPU|DECODER|Equal11~0_combout\ & 
-- (((\CPU|RAM_END|ram~85_combout\)))) ) ) # ( !\ROM|memROM~1_combout\ & ( (!\CPU|DECODER|Equal11~0_combout\ & (!\CPU|MUX_ENDERECO|saida_MUX[4]~0_combout\ & (\CPU|incrementaPC|Add0~25_sumout\))) # (\CPU|DECODER|Equal11~0_combout\ & 
-- (((\CPU|RAM_END|ram~85_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|MUX_ENDERECO|ALT_INV_saida_MUX[4]~0_combout\,
	datab => \CPU|DECODER|ALT_INV_Equal11~0_combout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \CPU|RAM_END|ALT_INV_ram~85_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \CPU|MUX_ENDERECO|saida_MUX[0]~1_combout\);

-- Location: FF_X6_Y18_N17
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \CPU|MUX_ENDERECO|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LABCELL_X5_Y18_N33
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \ROM|memROM~0_combout\ & ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2)))) ) ) ) # ( \ROM|memROM~0_combout\ & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & 
-- \CPU|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010000000000000000000000000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X10_Y19_N6
\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = ( !\CPU|incrementaPC|Add0~9_sumout\ & ( (!\CPU|incrementaPC|Add0~21_sumout\ & (!\CPU|incrementaPC|Add0~1_sumout\ & (!\CPU|incrementaPC|Add0~5_sumout\ & \CPU|incrementaPC|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	datab => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	datac => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \ROM|memROM~19_combout\);

-- Location: LABCELL_X7_Y19_N21
\DecoderEnderecos|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderEnderecos|Equal7~0_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ & ( \ROM|memROM~19_combout\ & ( (\ROM|memROM~15_combout\ & \ROM|memROM~11_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~13_sumout\ & ( \ROM|memROM~19_combout\ & ( 
-- (\ROM|memROM~15_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~8_combout\)) ) ) ) # ( \CPU|incrementaPC|Add0~13_sumout\ & ( !\ROM|memROM~19_combout\ & ( (\ROM|memROM~15_combout\ & \ROM|memROM~11_combout\) ) ) ) # ( !\CPU|incrementaPC|Add0~13_sumout\ & 
-- ( !\ROM|memROM~19_combout\ & ( (\ROM|memROM~15_combout\ & \ROM|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010000000100000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	datae => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	dataf => \ROM|ALT_INV_memROM~19_combout\,
	combout => \DecoderEnderecos|Equal7~0_combout\);

-- Location: LABCELL_X7_Y18_N12
\DecoderEnderecos|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderEnderecos|Equal7~1_combout\ = ( !\ROM|memROM~2_combout\ & ( \DecoderEnderecos|Equal7~0_combout\ & ( (!\ROM|memROM~14_combout\ & (!\ROM|memROM~4_combout\ & (!\ROM|memROM~1_combout\ & \ROM|memROM~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \DecoderEnderecos|ALT_INV_Equal7~0_combout\,
	combout => \DecoderEnderecos|Equal7~1_combout\);

-- Location: FF_X1_Y18_N17
\Registrador_LEDs|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~11_q\,
	sload => VCC,
	ena => \DecoderEnderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_LEDs|DOUT\(0));

-- Location: FF_X1_Y18_N34
\Registrador_LEDs|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~12_q\,
	sload => VCC,
	ena => \DecoderEnderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_LEDs|DOUT\(1));

-- Location: LABCELL_X1_Y18_N0
\Registrador_LEDs|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador_LEDs|DOUT[2]~feeder_combout\ = ( \CPU|bancoRegistradores|registrador~13_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~13_q\,
	combout => \Registrador_LEDs|DOUT[2]~feeder_combout\);

-- Location: FF_X1_Y18_N2
\Registrador_LEDs|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Registrador_LEDs|DOUT[2]~feeder_combout\,
	ena => \DecoderEnderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_LEDs|DOUT\(2));

-- Location: FF_X1_Y18_N43
\Registrador_LEDs|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~14_q\,
	sload => VCC,
	ena => \DecoderEnderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_LEDs|DOUT\(3));

-- Location: LABCELL_X1_Y19_N24
\Registrador_LEDs|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador_LEDs|DOUT[4]~feeder_combout\ = ( \CPU|bancoRegistradores|registrador~15_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~15_q\,
	combout => \Registrador_LEDs|DOUT[4]~feeder_combout\);

-- Location: FF_X1_Y19_N26
\Registrador_LEDs|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Registrador_LEDs|DOUT[4]~feeder_combout\,
	ena => \DecoderEnderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_LEDs|DOUT\(4));

-- Location: LABCELL_X1_Y19_N9
\Registrador_LEDs|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador_LEDs|DOUT[5]~feeder_combout\ = ( \CPU|bancoRegistradores|registrador~16_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~16_q\,
	combout => \Registrador_LEDs|DOUT[5]~feeder_combout\);

-- Location: FF_X1_Y19_N10
\Registrador_LEDs|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Registrador_LEDs|DOUT[5]~feeder_combout\,
	ena => \DecoderEnderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_LEDs|DOUT\(5));

-- Location: FF_X1_Y19_N16
\Registrador_LEDs|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \CPU|bancoRegistradores|registrador~17_q\,
	sload => VCC,
	ena => \DecoderEnderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_LEDs|DOUT\(6));

-- Location: LABCELL_X1_Y19_N57
\Registrador_LEDs|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador_LEDs|DOUT[7]~feeder_combout\ = ( \CPU|bancoRegistradores|registrador~18_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~18_q\,
	combout => \Registrador_LEDs|DOUT[7]~feeder_combout\);

-- Location: FF_X1_Y19_N59
\Registrador_LEDs|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Registrador_LEDs|DOUT[7]~feeder_combout\,
	ena => \DecoderEnderecos|Equal7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador_LEDs|DOUT\(7));

-- Location: FF_X1_Y20_N13
\FlipFlopLed8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FlipFlopLed8|DOUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FlipFlopLed8|DOUT~q\);

-- Location: LABCELL_X1_Y20_N12
\FlipFlopLed8|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlipFlopLed8|DOUT~feeder_combout\ = ( \FlipFlopLed8|DOUT~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FlipFlopLed8|ALT_INV_DOUT~q\,
	combout => \FlipFlopLed8|DOUT~feeder_combout\);

-- Location: FF_X1_Y20_N14
\FlipFlopLed8|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FlipFlopLed8|DOUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FlipFlopLed8|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X7_Y20_N12
\DecoderEnderecos|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderEnderecos|Equal7~2_combout\ = ( \ROM|memROM~8_combout\ & ( (\ROM|memROM~15_combout\ & (!\ROM|memROM~14_combout\ & (!\ROM|memROM~17_combout\ & \ROM|memROM~11_combout\))) ) ) # ( !\ROM|memROM~8_combout\ & ( (\ROM|memROM~15_combout\ & 
-- (!\ROM|memROM~14_combout\ & \ROM|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	dataf => \ROM|ALT_INV_memROM~8_combout\,
	combout => \DecoderEnderecos|Equal7~2_combout\);

-- Location: LABCELL_X7_Y20_N33
\FlipFlopLed9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlipFlopLed9|DOUT~0_combout\ = ( !\ROM|memROM~4_combout\ & ( (\ROM|memROM~2_combout\ & (!\ROM|memROM~1_combout\ & (\DecoderEnderecos|Equal7~2_combout\ & \ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \DecoderEnderecos|ALT_INV_Equal7~2_combout\,
	datad => \ROM|ALT_INV_memROM~10_combout\,
	dataf => \ROM|ALT_INV_memROM~4_combout\,
	combout => \FlipFlopLed9|DOUT~0_combout\);

-- Location: LABCELL_X7_Y20_N30
\FlipFlopLed9|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlipFlopLed9|DOUT~1_combout\ = ( \CPU|bancoRegistradores|registrador~11_q\ & ( (\FlipFlopLed9|DOUT~q\) # (\FlipFlopLed9|DOUT~0_combout\) ) ) # ( !\CPU|bancoRegistradores|registrador~11_q\ & ( (!\FlipFlopLed9|DOUT~0_combout\ & \FlipFlopLed9|DOUT~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FlipFlopLed9|ALT_INV_DOUT~0_combout\,
	datad => \FlipFlopLed9|ALT_INV_DOUT~q\,
	dataf => \CPU|bancoRegistradores|ALT_INV_registrador~11_q\,
	combout => \FlipFlopLed9|DOUT~1_combout\);

-- Location: FF_X7_Y20_N31
\FlipFlopLed9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \FlipFlopLed9|DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FlipFlopLed9|DOUT~q\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X35_Y36_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


