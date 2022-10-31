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

-- DATE "09/19/2022 08:33:25"

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

ENTITY 	aula5atv2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	EntradaB_ULA : OUT std_logic_vector(7 DOWNTO 0);
	Palavra_Controle : OUT std_logic_vector(8 DOWNTO 0)
	);
END aula5atv2;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EntradaB_ULA[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra_Controle[8]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aula5atv2 IS
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
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_EntradaB_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Palavra_Controle : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \incrementaPC|Add0~18\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_wirecell_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \DECO|Equal3~0_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \DECO|saida[4]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \DECO|saida[5]~3_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add1~30\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \DECO|saida~1_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \FlagEq|DOUT[0]~1_combout\ : std_logic;
SIGNAL \FlagEq|DOUT[0]~0_combout\ : std_logic;
SIGNAL \FlagEq|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DESV|saida~0_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \DECO|saida[1]~0_combout\ : std_logic;
SIGNAL \DECO|saida[6]~4_combout\ : std_logic;
SIGNAL \DECO|saida~5_combout\ : std_logic;
SIGNAL \DECO|Equal2~0_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \FlagEq|DOUT\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DECO|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FlagEq|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \FlagEq|ALT_INV_DOUT[0]~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \FlagEq|ALT_INV_DOUT\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DECO|ALT_INV_saida[6]~4_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
EntradaB_ULA <= ww_EntradaB_ULA;
Palavra_Controle <= ww_Palavra_Controle;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DECO|ALT_INV_saida[4]~2_combout\ <= NOT \DECO|saida[4]~2_combout\;
\DECO|ALT_INV_saida~1_combout\ <= NOT \DECO|saida~1_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\DECO|ALT_INV_Equal3~0_combout\ <= NOT \DECO|Equal3~0_combout\;
\MUX1|ALT_INV_saida_MUX[7]~8_combout\ <= NOT \MUX1|saida_MUX[7]~8_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\MUX1|ALT_INV_saida_MUX[6]~7_combout\ <= NOT \MUX1|saida_MUX[6]~7_combout\;
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\MUX1|ALT_INV_saida_MUX[5]~6_combout\ <= NOT \MUX1|saida_MUX[5]~6_combout\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\MUX1|ALT_INV_saida_MUX[4]~5_combout\ <= NOT \MUX1|saida_MUX[4]~5_combout\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\MUX1|ALT_INV_saida_MUX[3]~4_combout\ <= NOT \MUX1|saida_MUX[3]~4_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\MUX1|ALT_INV_saida_MUX[2]~3_combout\ <= NOT \MUX1|saida_MUX[2]~3_combout\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\MUX1|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \MUX1|saida_MUX[1]~2_combout\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \MUX1|saida_MUX[0]~1_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\MUX1|ALT_INV_saida_MUX[3]~0_combout\ <= NOT \MUX1|saida_MUX[3]~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\FlagEq|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \FlagEq|DOUT[0]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \PC|DOUT[1]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \PC|DOUT[0]~DUPLICATE_q\;
\FlagEq|ALT_INV_DOUT[0]~1_combout\ <= NOT \FlagEq|DOUT[0]~1_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\MUX1|ALT_INV_saida_MUX[3]~9_combout\ <= NOT \MUX1|saida_MUX[3]~9_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\FlagEq|ALT_INV_DOUT\(0) <= NOT \FlagEq|DOUT\(0);
\DECO|ALT_INV_saida[6]~4_combout\ <= NOT \DECO|saida[6]~4_combout\;

-- Location: IOOBUF_X14_Y0_N36
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X16_Y0_N93
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X14_Y0_N19
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X11_Y0_N19
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X10_Y0_N76
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X10_Y0_N42
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X16_Y0_N76
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X10_Y0_N93
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X14_Y0_N2
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X18_Y0_N53
\EntradaB_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(0));

-- Location: IOOBUF_X18_Y0_N36
\EntradaB_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(1));

-- Location: IOOBUF_X19_Y0_N36
\EntradaB_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[2]~3_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(2));

-- Location: IOOBUF_X14_Y0_N53
\EntradaB_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[3]~4_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(3));

-- Location: IOOBUF_X16_Y0_N59
\EntradaB_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[4]~5_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(4));

-- Location: IOOBUF_X10_Y0_N59
\EntradaB_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[5]~6_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(5));

-- Location: IOOBUF_X18_Y0_N2
\EntradaB_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[6]~7_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(6));

-- Location: IOOBUF_X18_Y0_N19
\EntradaB_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX1|saida_MUX[7]~8_combout\,
	devoe => ww_devoe,
	o => ww_EntradaB_ULA(7));

-- Location: IOOBUF_X12_Y0_N36
\Palavra_Controle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(0));

-- Location: IOOBUF_X12_Y0_N19
\Palavra_Controle[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(1));

-- Location: IOOBUF_X12_Y0_N53
\Palavra_Controle[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(2));

-- Location: IOOBUF_X10_Y45_N36
\Palavra_Controle[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(3));

-- Location: IOOBUF_X11_Y0_N2
\Palavra_Controle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(4));

-- Location: IOOBUF_X16_Y0_N42
\Palavra_Controle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida[5]~3_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(5));

-- Location: IOOBUF_X11_Y0_N53
\Palavra_Controle[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|ALT_INV_saida[6]~4_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(6));

-- Location: IOOBUF_X12_Y0_N2
\Palavra_Controle[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida~5_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(7));

-- Location: IOOBUF_X11_Y0_N36
\Palavra_Controle[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_Palavra_Controle(8));

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: MLABCELL_X13_Y1_N30
\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

-- Location: MLABCELL_X13_Y1_N33
\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

-- Location: FF_X13_Y1_N31
\PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y1_N39
\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

-- Location: MLABCELL_X13_Y1_N42
\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~17_sumout\,
	cout => \incrementaPC|Add0~18\);

-- Location: LABCELL_X12_Y1_N27
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X13_Y1_N44
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X13_Y1_N45
\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~18\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

-- Location: FF_X13_Y1_N47
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X13_Y1_N48
\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

-- Location: FF_X13_Y1_N50
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: MLABCELL_X13_Y1_N51
\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

-- Location: FF_X13_Y1_N52
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: MLABCELL_X13_Y1_N54
\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~33_sumout\);

-- Location: FF_X13_Y1_N53
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X13_Y1_N56
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~14_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y1_N18
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( !\PC|DOUT\(6) & ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(4) & (!\PC|DOUT[8]~DUPLICATE_q\ & !\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~7_combout\);

-- Location: LABCELL_X12_Y1_N51
\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \PC|DOUT[1]~DUPLICATE_q\ & ( \ROM1|memROM~7_combout\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT[2]~DUPLICATE_q\ $ (!\PC|DOUT\(3)))) ) ) ) # ( !\PC|DOUT[1]~DUPLICATE_q\ & ( \ROM1|memROM~7_combout\ & ( (\PC|DOUT\(0) & 
-- (\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~14_combout\);

-- Location: FF_X13_Y1_N55
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~14_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: MLABCELL_X13_Y1_N24
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	dataf => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~1_combout\);

-- Location: LABCELL_X14_Y1_N39
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(0) & !\PC|DOUT\(1)) ) ) # ( !\PC|DOUT\(2) & ( (!\PC|DOUT\(1) & (!\PC|DOUT[3]~DUPLICATE_q\ $ (\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X14_Y1_N33
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~9_combout\ & ( (!\ROM1|memROM~1_combout\) # (\PC|DOUT\(8)) ) ) # ( !\ROM1|memROM~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: LABCELL_X14_Y1_N36
\ROM1|memROM~10_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_wirecell_combout\ = ( !\ROM1|memROM~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~10_wirecell_combout\);

-- Location: FF_X13_Y1_N38
\PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~10_wirecell_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y1_N15
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( !\PC|DOUT[1]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(0) & !\PC|DOUT[2]~DUPLICATE_q\)) # (\PC|DOUT\(3) & (!\PC|DOUT\(0) & \PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~11_combout\);

-- Location: MLABCELL_X13_Y1_N9
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~11_combout\ & !\PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: FF_X13_Y1_N40
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~12_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y1_N18
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT[0]~DUPLICATE_q\ & (\PC|DOUT\(2) & !\PC|DOUT\(1))) # (\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(2) & \PC|DOUT\(1))) ) ) # ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\PC|DOUT\(2) & ((!\PC|DOUT\(1)))) # 
-- (\PC|DOUT\(2) & (\PC|DOUT[0]~DUPLICATE_q\ & \PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000101111100000000010100001010010100000000101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X14_Y1_N57
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \PC|DOUT\(2) & ( (\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(1) & !\PC|DOUT\(3))) ) ) # ( !\PC|DOUT\(2) & ( (\PC|DOUT[0]~DUPLICATE_q\ & (!\PC|DOUT\(1) $ (\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X14_Y1_N6
\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(8) & \ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~13_combout\);

-- Location: LABCELL_X14_Y1_N45
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \PC|DOUT\(1) & ( \PC|DOUT[0]~DUPLICATE_q\ & ( !\PC|DOUT[3]~DUPLICATE_q\ $ (\PC|DOUT\(2)) ) ) ) # ( !\PC|DOUT\(1) & ( \PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT[3]~DUPLICATE_q\ & \PC|DOUT\(2)) ) ) ) # ( \PC|DOUT\(1) & ( 
-- !\PC|DOUT[0]~DUPLICATE_q\ ) ) # ( !\PC|DOUT\(1) & ( !\PC|DOUT[0]~DUPLICATE_q\ & ( (\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111111111111111100000000010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(1),
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: LABCELL_X12_Y1_N21
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC|DOUT[2]~DUPLICATE_q\ & ( \PC|DOUT\(3) & ( (\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(0)) ) ) ) # ( \PC|DOUT[2]~DUPLICATE_q\ & ( !\PC|DOUT\(3) & ( (\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

-- Location: MLABCELL_X13_Y2_N57
\MUX1|saida_MUX[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~9_combout\ = ( \ROM1|memROM~2_combout\ ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~7_combout\) # ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111111101011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \MUX1|saida_MUX[3]~9_combout\);

-- Location: MLABCELL_X13_Y2_N0
\MUX1|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~0_combout\ = ( \ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( (((\ROM1|memROM~0_combout\) # (\ROM1|memROM~4_combout\)) # (\PC|DOUT\(8))) # (\ROM1|memROM~3_combout\) ) 
-- ) ) # ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~2_combout\ & ( !\ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~3_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \MUX1|saida_MUX[3]~0_combout\);

-- Location: LABCELL_X12_Y1_N42
\DECO|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|Equal3~0_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~0_combout\ & (!\PC|DOUT\(8) & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DECO|Equal3~0_combout\);

-- Location: LABCELL_X12_Y1_N54
\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( !\ROM1|memROM~12_combout\ & ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~6_combout\ & (\ROM1|memROM~14_combout\ & \DECO|Equal3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \DECO|ALT_INV_Equal3~0_combout\,
	datae => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~161_combout\);

-- Location: FF_X14_Y2_N53
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X14_Y2_N51
\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~6_combout\ & \RAM1|ram~21_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~21_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~153_combout\);

-- Location: LABCELL_X14_Y2_N3
\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( \RAM1|ram~153_combout\ & ( (\ROM1|memROM~10_combout\ & !\ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM1|ALT_INV_ram~153_combout\,
	combout => \RAM1|ram~154_combout\);

-- Location: LABCELL_X14_Y2_N36
\MUX1|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~5_combout\ = (\MUX1|saida_MUX[3]~0_combout\ & \RAM1|ram~154_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	combout => \MUX1|saida_MUX[4]~5_combout\);

-- Location: LABCELL_X14_Y1_N12
\DECO|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida[4]~2_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~7_combout\ & \ROM1|memROM~13_combout\) ) ) # ( !\ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~7_combout\ & (((\ROM1|memROM~13_combout\)))) # (\ROM1|memROM~7_combout\ & 
-- (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~3_combout\ $ (\ROM1|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101100001010010010110000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECO|saida[4]~2_combout\);

-- Location: LABCELL_X14_Y2_N54
\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \ULA1|Add1~1_sumout\ & ( (!\DECO|saida[4]~2_combout\) # (\MUX1|saida_MUX[4]~5_combout\) ) ) # ( !\ULA1|Add1~1_sumout\ & ( (\MUX1|saida_MUX[4]~5_combout\ & \DECO|saida[4]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1|ALT_INV_saida_MUX[4]~5_combout\,
	datad => \DECO|ALT_INV_saida[4]~2_combout\,
	dataf => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

-- Location: LABCELL_X14_Y1_N0
\DECO|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida[5]~3_combout\ = ( \ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~7_combout\) # ((\ROM1|memROM~3_combout\ & !\ROM1|memROM~2_combout\)) ) ) # ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~2_combout\ & 
-- (!\ROM1|memROM~3_combout\ $ (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000000010000010000000010111011101010101011101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \DECO|saida[5]~3_combout\);

-- Location: FF_X14_Y2_N56
\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[4]~4_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

-- Location: LABCELL_X14_Y2_N12
\MUX1|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~4_combout\ = ( \MUX1|saida_MUX[3]~0_combout\ & ( \RAM1|ram~152_combout\ ) ) # ( !\MUX1|saida_MUX[3]~0_combout\ & ( \ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~152_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	combout => \MUX1|saida_MUX[3]~4_combout\);

-- Location: LABCELL_X14_Y2_N27
\MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~2_combout\ = ( \RAM1|ram~148_combout\ & ( (\MUX1|saida_MUX[3]~0_combout\) # (\ROM1|memROM~8_combout\) ) ) # ( !\RAM1|ram~148_combout\ & ( (\ROM1|memROM~8_combout\ & !\MUX1|saida_MUX[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~148_combout\,
	combout => \MUX1|saida_MUX[1]~2_combout\);

-- Location: FF_X14_Y2_N1
\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[1]~1_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

-- Location: LABCELL_X14_Y2_N45
\MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~1_combout\ = ( \MUX1|saida_MUX[3]~0_combout\ & ( \RAM1|ram~146_combout\ ) ) # ( !\MUX1|saida_MUX[3]~0_combout\ & ( \ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~146_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	combout => \MUX1|saida_MUX[0]~1_combout\);

-- Location: LABCELL_X12_Y2_N12
\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~16_combout\);

-- Location: MLABCELL_X13_Y2_N12
\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

-- Location: MLABCELL_X13_Y2_N15
\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\MUX1|saida_MUX[3]~0_combout\ & (((!\ROM1|memROM~16_combout\)) # (\PC|DOUT\(8)))) # (\MUX1|saida_MUX[3]~0_combout\ & (((!\RAM1|ram~146_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\MUX1|saida_MUX[3]~0_combout\ & (((!\ROM1|memROM~16_combout\)) # (\PC|DOUT\(8)))) # (\MUX1|saida_MUX[3]~0_combout\ & (((!\RAM1|ram~146_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~146_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

-- Location: LABCELL_X14_Y2_N6
\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add1~17_sumout\ & ( (!\DECO|saida[4]~2_combout\) # (\MUX1|saida_MUX[0]~1_combout\) ) ) # ( !\ULA1|Add1~17_sumout\ & ( (\DECO|saida[4]~2_combout\ & \MUX1|saida_MUX[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECO|ALT_INV_saida[4]~2_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	dataf => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

-- Location: FF_X14_Y2_N8
\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

-- Location: FF_X13_Y2_N44
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: MLABCELL_X13_Y2_N42
\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~17_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~17_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~145_combout\);

-- Location: MLABCELL_X13_Y2_N45
\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( \RAM1|ram~145_combout\ & ( (!\ROM1|memROM~12_combout\ & \ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM1|ALT_INV_ram~145_combout\,
	combout => \RAM1|ram~146_combout\);

-- Location: MLABCELL_X13_Y2_N18
\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\ROM1|memROM~13_combout\ & ((!\MUX1|saida_MUX[3]~9_combout\ & ((!\ROM1|memROM~8_combout\))) # (\MUX1|saida_MUX[3]~9_combout\ & (!\RAM1|ram~148_combout\)))) # (\ROM1|memROM~13_combout\ & (((!\RAM1|ram~148_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\ROM1|memROM~13_combout\ & ((!\MUX1|saida_MUX[3]~9_combout\ & ((!\ROM1|memROM~8_combout\))) # (\MUX1|saida_MUX[3]~9_combout\ & (!\RAM1|ram~148_combout\)))) # (\ROM1|memROM~13_combout\ & (((!\RAM1|ram~148_combout\)))) ) + ( 
-- \REGA|DOUT\(1) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111100001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~9_combout\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

-- Location: LABCELL_X14_Y2_N0
\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add1~21_sumout\ & ( (!\DECO|saida[4]~2_combout\) # (\MUX1|saida_MUX[1]~2_combout\) ) ) # ( !\ULA1|Add1~21_sumout\ & ( (\MUX1|saida_MUX[1]~2_combout\ & \DECO|saida[4]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	datad => \DECO|ALT_INV_saida[4]~2_combout\,
	dataf => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

-- Location: FF_X14_Y2_N2
\REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[1]~1_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X13_Y1_N5
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: MLABCELL_X13_Y1_N3
\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~12_combout\ & \RAM1|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~147_combout\);

-- Location: MLABCELL_X13_Y2_N54
\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( \RAM1|ram~147_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~147_combout\,
	combout => \RAM1|ram~148_combout\);

-- Location: MLABCELL_X13_Y2_N21
\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\ROM1|memROM~13_combout\ & ((!\MUX1|saida_MUX[3]~9_combout\ & ((\ROM1|memROM~10_combout\))) # (\MUX1|saida_MUX[3]~9_combout\ & (!\RAM1|ram~150_combout\)))) # (\ROM1|memROM~13_combout\ & (((!\RAM1|ram~150_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\ROM1|memROM~13_combout\ & ((!\MUX1|saida_MUX[3]~9_combout\ & ((\ROM1|memROM~10_combout\))) # (\MUX1|saida_MUX[3]~9_combout\ & (!\RAM1|ram~150_combout\)))) # (\ROM1|memROM~13_combout\ & (((!\RAM1|ram~150_combout\)))) ) + ( 
-- \REGA|DOUT\(2) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~9_combout\,
	datac => \RAM1|ALT_INV_ram~150_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

-- Location: LABCELL_X14_Y2_N18
\MUX1|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~3_combout\ = (!\MUX1|saida_MUX[3]~0_combout\ & ((!\ROM1|memROM~10_combout\))) # (\MUX1|saida_MUX[3]~0_combout\ & (\RAM1|ram~150_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000011110011110000001111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datac => \RAM1|ALT_INV_ram~150_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \MUX1|saida_MUX[2]~3_combout\);

-- Location: LABCELL_X14_Y2_N21
\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \MUX1|saida_MUX[2]~3_combout\ & ( (\ULA1|Add1~25_sumout\) # (\DECO|saida[4]~2_combout\) ) ) # ( !\MUX1|saida_MUX[2]~3_combout\ & ( (!\DECO|saida[4]~2_combout\ & \ULA1|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[4]~2_combout\,
	datad => \ULA1|ALT_INV_Add1~25_sumout\,
	dataf => \MUX1|ALT_INV_saida_MUX[2]~3_combout\,
	combout => \ULA1|saida[2]~2_combout\);

-- Location: FF_X14_Y2_N22
\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[2]~2_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

-- Location: FF_X13_Y1_N29
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: MLABCELL_X13_Y1_N27
\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~149_combout\);

-- Location: MLABCELL_X13_Y1_N12
\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( \RAM1|ram~149_combout\ & ( (\ROM1|memROM~10_combout\ & !\ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM1|ALT_INV_ram~149_combout\,
	combout => \RAM1|ram~150_combout\);

-- Location: MLABCELL_X13_Y2_N24
\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\ROM1|memROM~13_combout\ & ((!\MUX1|saida_MUX[3]~9_combout\ & (!\ROM1|memROM~12_combout\)) # (\MUX1|saida_MUX[3]~9_combout\ & ((!\RAM1|ram~152_combout\))))) # (\ROM1|memROM~13_combout\ & (((!\RAM1|ram~152_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add1~26\ ))
-- \ULA1|Add1~30\ = CARRY(( (!\ROM1|memROM~13_combout\ & ((!\MUX1|saida_MUX[3]~9_combout\ & (!\ROM1|memROM~12_combout\)) # (\MUX1|saida_MUX[3]~9_combout\ & ((!\RAM1|ram~152_combout\))))) # (\ROM1|memROM~13_combout\ & (((!\RAM1|ram~152_combout\)))) ) + ( 
-- \REGA|DOUT\(3) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~9_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~152_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\,
	cout => \ULA1|Add1~30\);

-- Location: LABCELL_X14_Y2_N15
\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~29_sumout\ & ( (!\DECO|saida[4]~2_combout\) # (\MUX1|saida_MUX[3]~4_combout\) ) ) # ( !\ULA1|Add1~29_sumout\ & ( (\MUX1|saida_MUX[3]~4_combout\ & \DECO|saida[4]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datad => \DECO|ALT_INV_saida[4]~2_combout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

-- Location: FF_X14_Y2_N16
\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[3]~3_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

-- Location: FF_X14_Y1_N25
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X14_Y1_N15
\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~12_combout\ & \RAM1|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~151_combout\);

-- Location: LABCELL_X14_Y1_N3
\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( \RAM1|ram~151_combout\ & ( (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~151_combout\,
	combout => \RAM1|ram~152_combout\);

-- Location: MLABCELL_X13_Y2_N27
\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\RAM1|ram~154_combout\) # ((!\ROM1|memROM~13_combout\ & !\MUX1|saida_MUX[3]~9_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~30\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\RAM1|ram~154_combout\) # ((!\ROM1|memROM~13_combout\ & !\MUX1|saida_MUX[3]~9_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~9_combout\,
	datac => \REGA|ALT_INV_DOUT\(4),
	datad => \RAM1|ALT_INV_ram~154_combout\,
	cin => \ULA1|Add1~30\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

-- Location: LABCELL_X12_Y1_N33
\DECO|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida~1_combout\ = ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~13_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~7_combout\ & \ROM1|memROM~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \DECO|saida~1_combout\);

-- Location: LABCELL_X14_Y2_N30
\MUX1|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~7_combout\ = ( \RAM1|ram~158_combout\ & ( \MUX1|saida_MUX[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~158_combout\,
	combout => \MUX1|saida_MUX[6]~7_combout\);

-- Location: LABCELL_X14_Y2_N42
\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\DECO|saida[4]~2_combout\) # (\MUX1|saida_MUX[6]~7_combout\) ) ) # ( !\ULA1|Add1~9_sumout\ & ( (\MUX1|saida_MUX[6]~7_combout\ & \DECO|saida[4]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|ALT_INV_saida_MUX[6]~7_combout\,
	datac => \DECO|ALT_INV_saida[4]~2_combout\,
	dataf => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

-- Location: FF_X14_Y2_N43
\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[6]~6_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

-- Location: FF_X14_Y2_N35
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X14_Y2_N33
\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( !\ROM1|memROM~8_combout\ & ( (!\ROM1|memROM~6_combout\ & \RAM1|ram~23_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~23_q\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~157_combout\);

-- Location: LABCELL_X14_Y2_N9
\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( \RAM1|ram~157_combout\ & ( (\ROM1|memROM~10_combout\ & !\ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM1|ALT_INV_ram~157_combout\,
	combout => \RAM1|ram~158_combout\);

-- Location: LABCELL_X14_Y1_N54
\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~15_combout\);

-- Location: LABCELL_X14_Y1_N30
\MUX1|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~6_combout\ = ( \RAM1|ram~156_combout\ & ( \MUX1|saida_MUX[3]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	dataf => \RAM1|ALT_INV_ram~156_combout\,
	combout => \MUX1|saida_MUX[5]~6_combout\);

-- Location: FF_X14_Y1_N23
\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

-- Location: MLABCELL_X13_Y2_N30
\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( \REGA|DOUT\(5) ) + ( (!\RAM1|ram~156_combout\) # ((!\MUX1|saida_MUX[3]~9_combout\ & ((!\ROM1|memROM~15_combout\) # (\PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( \REGA|DOUT\(5) ) + ( (!\RAM1|ram~156_combout\) # ((!\MUX1|saida_MUX[3]~9_combout\ & ((!\ROM1|memROM~15_combout\) # (\PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~9_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \REGA|ALT_INV_DOUT\(5),
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

-- Location: LABCELL_X14_Y1_N21
\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\DECO|saida[4]~2_combout\) # (\MUX1|saida_MUX[5]~6_combout\) ) ) # ( !\ULA1|Add1~5_sumout\ & ( (\DECO|saida[4]~2_combout\ & \MUX1|saida_MUX[5]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECO|ALT_INV_saida[4]~2_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[5]~6_combout\,
	dataf => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

-- Location: FF_X14_Y1_N22
\REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X14_Y1_N29
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X14_Y1_N51
\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~12_combout\ & \RAM1|ram~22_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM1|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM1|ram~155_combout\);

-- Location: LABCELL_X14_Y1_N9
\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( \RAM1|ram~155_combout\ & ( (!\ROM1|memROM~8_combout\ & !\ROM1|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~155_combout\,
	combout => \RAM1|ram~156_combout\);

-- Location: MLABCELL_X13_Y2_N33
\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( \REGA|DOUT\(6) ) + ( (!\RAM1|ram~158_combout\) # ((!\MUX1|saida_MUX[3]~9_combout\ & ((!\ROM1|memROM~15_combout\) # (\PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( \REGA|DOUT\(6) ) + ( (!\RAM1|ram~158_combout\) # ((!\MUX1|saida_MUX[3]~9_combout\ & ((!\ROM1|memROM~15_combout\) # (\PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~9_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \REGA|ALT_INV_DOUT\(6),
	dataf => \ROM1|ALT_INV_memROM~15_combout\,
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

-- Location: LABCELL_X14_Y2_N48
\MUX1|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~8_combout\ = (\MUX1|saida_MUX[3]~0_combout\ & \RAM1|ram~160_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX1|saida_MUX[7]~8_combout\);

-- Location: LABCELL_X14_Y2_N24
\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\DECO|saida[4]~2_combout\) # (\MUX1|saida_MUX[7]~8_combout\) ) ) # ( !\ULA1|Add1~13_sumout\ & ( (\MUX1|saida_MUX[7]~8_combout\ & \DECO|saida[4]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MUX1|ALT_INV_saida_MUX[7]~8_combout\,
	datad => \DECO|ALT_INV_saida[4]~2_combout\,
	dataf => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

-- Location: FF_X14_Y2_N26
\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \ULA1|saida[7]~7_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

-- Location: FF_X14_Y2_N41
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X14_Y2_N39
\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( !\ROM1|memROM~12_combout\ & ( (\ROM1|memROM~10_combout\ & \RAM1|ram~24_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM1|ALT_INV_ram~24_q\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~159_combout\);

-- Location: LABCELL_X14_Y2_N57
\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( \RAM1|ram~159_combout\ & ( (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~159_combout\,
	combout => \RAM1|ram~160_combout\);

-- Location: MLABCELL_X13_Y2_N36
\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\RAM1|ram~160_combout\) # ((!\MUX1|saida_MUX[3]~9_combout\ & ((!\ROM1|memROM~15_combout\) # (\PC|DOUT[8]~DUPLICATE_q\)))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~9_combout\,
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\);

-- Location: FF_X13_Y2_N50
\FlagEq|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FlagEq|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FlagEq|DOUT\(0));

-- Location: MLABCELL_X13_Y2_N6
\FlagEq|DOUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagEq|DOUT[0]~1_combout\ = ( \ULA1|Add1~25_sumout\ & ( \ULA1|Add1~29_sumout\ & ( (\FlagEq|DOUT\(0) & !\DECO|saida~1_combout\) ) ) ) # ( !\ULA1|Add1~25_sumout\ & ( \ULA1|Add1~29_sumout\ & ( (\FlagEq|DOUT\(0) & !\DECO|saida~1_combout\) ) ) ) # ( 
-- \ULA1|Add1~25_sumout\ & ( !\ULA1|Add1~29_sumout\ & ( (\FlagEq|DOUT\(0) & !\DECO|saida~1_combout\) ) ) ) # ( !\ULA1|Add1~25_sumout\ & ( !\ULA1|Add1~29_sumout\ & ( (!\DECO|saida~1_combout\ & (\FlagEq|DOUT\(0))) # (\DECO|saida~1_combout\ & 
-- (((!\ULA1|Add1~21_sumout\ & !\ULA1|Add1~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FlagEq|ALT_INV_DOUT\(0),
	datab => \DECO|ALT_INV_saida~1_combout\,
	datac => \ULA1|ALT_INV_Add1~21_sumout\,
	datad => \ULA1|ALT_INV_Add1~17_sumout\,
	datae => \ULA1|ALT_INV_Add1~25_sumout\,
	dataf => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \FlagEq|DOUT[0]~1_combout\);

-- Location: MLABCELL_X13_Y2_N48
\FlagEq|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlagEq|DOUT[0]~0_combout\ = ( \ULA1|Add1~13_sumout\ & ( \FlagEq|DOUT[0]~1_combout\ & ( !\DECO|saida~1_combout\ ) ) ) # ( !\ULA1|Add1~13_sumout\ & ( \FlagEq|DOUT[0]~1_combout\ & ( (!\DECO|saida~1_combout\) # ((!\ULA1|Add1~1_sumout\ & 
-- (!\ULA1|Add1~9_sumout\ & !\ULA1|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011101100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \DECO|ALT_INV_saida~1_combout\,
	datac => \ULA1|ALT_INV_Add1~9_sumout\,
	datad => \ULA1|ALT_INV_Add1~5_sumout\,
	datae => \ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \FlagEq|ALT_INV_DOUT[0]~1_combout\,
	combout => \FlagEq|DOUT[0]~0_combout\);

-- Location: FF_X13_Y2_N49
\FlagEq|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \FlagEq|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FlagEq|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y1_N27
\DESV|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DESV|saida~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~13_combout\ & ( (\ROM1|memROM~0_combout\ & (\FlagEq|DOUT[0]~DUPLICATE_q\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~7_combout\))) ) ) ) # ( !\ROM1|memROM~3_combout\ & ( 
-- !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \FlagEq|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \DESV|saida~0_combout\);

-- Location: FF_X13_Y1_N35
\PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y1_N0
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~7_combout\ & ( (\PC|DOUT[1]~DUPLICATE_q\ & (\PC|DOUT\(3) & (\PC|DOUT[0]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

-- Location: FF_X13_Y1_N34
\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

-- Location: MLABCELL_X13_Y1_N36
\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

-- Location: FF_X13_Y1_N37
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~10_wirecell_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: FF_X13_Y1_N41
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~12_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X13_Y1_N6
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \PC|DOUT[0]~DUPLICATE_q\ & ( (!\PC|DOUT\(3) & (!\PC|DOUT[1]~DUPLICATE_q\ $ (\PC|DOUT[2]~DUPLICATE_q\))) # (\PC|DOUT\(3) & (\PC|DOUT[1]~DUPLICATE_q\ & !\PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (!\PC|DOUT\(3) & (!\PC|DOUT[1]~DUPLICATE_q\ & \PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011000011001100001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: MLABCELL_X13_Y1_N21
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~5_combout\ & !\PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~6_combout\);

-- Location: FF_X13_Y1_N32
\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

-- Location: FF_X13_Y1_N46
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X13_Y1_N49
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \DESV|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y1_N48
\DECO|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida[1]~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\ROM1|memROM~7_combout\ & (((\ROM1|memROM~13_combout\)))) # (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~3_combout\))) ) ) # ( !\ROM1|memROM~0_combout\ & ( 
-- (!\ROM1|memROM~7_combout\ & (((\ROM1|memROM~13_combout\)))) # (\ROM1|memROM~7_combout\ & (\ROM1|memROM~3_combout\ & (!\ROM1|memROM~2_combout\ $ (!\ROM1|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100010010000011110001001000001111001000100000111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~13_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \DECO|saida[1]~0_combout\);

-- Location: LABCELL_X12_Y1_N39
\DECO|saida[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida[6]~4_combout\ = ( \ROM1|memROM~13_combout\ ) # ( !\ROM1|memROM~13_combout\ & ( ((!\ROM1|memROM~7_combout\) # ((\ROM1|memROM~2_combout\) # (\ROM1|memROM~3_combout\))) # (\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \DECO|saida[6]~4_combout\);

-- Location: LABCELL_X12_Y1_N0
\DECO|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida~5_combout\ = ( !\ROM1|memROM~2_combout\ & ( \ROM1|memROM~1_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~3_combout\ & !\PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \PC|ALT_INV_DOUT\(8),
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \DECO|saida~5_combout\);

-- Location: LABCELL_X12_Y1_N36
\DECO|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|Equal2~0_combout\ = ( !\ROM1|memROM~13_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~7_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \DECO|Equal2~0_combout\);

-- Location: IOIBUF_X43_Y45_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X0_Y20_N55
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);
END structure;


