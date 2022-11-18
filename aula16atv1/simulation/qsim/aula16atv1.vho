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

-- DATE "11/18/2022 17:01:14"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULAMIPS IS
    PORT (
	entradaA : IN std_logic_vector(31 DOWNTO 0);
	entradaB : IN std_logic_vector(31 DOWNTO 0);
	selecao : IN std_logic_vector(1 DOWNTO 0);
	inverteB : IN std_logic;
	saidaFlag : BUFFER std_logic;
	saida : BUFFER std_logic_vector(31 DOWNTO 0);
	overflow : BUFFER std_logic
	);
END ULAMIPS;

ARCHITECTURE structure OF ULAMIPS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_selecao : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_inverteB : std_logic;
SIGNAL ww_saidaFlag : std_logic;
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \saidaFlag~output_o\ : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \saida[16]~output_o\ : std_logic;
SIGNAL \saida[17]~output_o\ : std_logic;
SIGNAL \saida[18]~output_o\ : std_logic;
SIGNAL \saida[19]~output_o\ : std_logic;
SIGNAL \saida[20]~output_o\ : std_logic;
SIGNAL \saida[21]~output_o\ : std_logic;
SIGNAL \saida[22]~output_o\ : std_logic;
SIGNAL \saida[23]~output_o\ : std_logic;
SIGNAL \saida[24]~output_o\ : std_logic;
SIGNAL \saida[25]~output_o\ : std_logic;
SIGNAL \saida[26]~output_o\ : std_logic;
SIGNAL \saida[27]~output_o\ : std_logic;
SIGNAL \saida[28]~output_o\ : std_logic;
SIGNAL \saida[29]~output_o\ : std_logic;
SIGNAL \saida[30]~output_o\ : std_logic;
SIGNAL \saida[31]~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \selecao[0]~input_o\ : std_logic;
SIGNAL \selecao[1]~input_o\ : std_logic;
SIGNAL \inverteB~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \entradaA[31]~input_o\ : std_logic;
SIGNAL \entradaB[31]~input_o\ : std_logic;
SIGNAL \ULA1BIT_31|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \ULA1BIT_1|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \ULA1BIT_2|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \ULA1BIT_3|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \ULA1BIT_4|SOMADOR|Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_4|SOMADOR|Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_4|SOMADOR|Cout~1_combout\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \ULA1BIT_5|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \ULA1BIT_6|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_6|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \ULA1BIT_7|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[8]~input_o\ : std_logic;
SIGNAL \entradaB[8]~input_o\ : std_logic;
SIGNAL \ULA1BIT_8|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[9]~input_o\ : std_logic;
SIGNAL \entradaB[9]~input_o\ : std_logic;
SIGNAL \ULA1BIT_9|SOMADOR|Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_9|SOMADOR|Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_9|SOMADOR|Cout~1_combout\ : std_logic;
SIGNAL \entradaA[10]~input_o\ : std_logic;
SIGNAL \entradaB[10]~input_o\ : std_logic;
SIGNAL \ULA1BIT_10|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[11]~input_o\ : std_logic;
SIGNAL \entradaB[11]~input_o\ : std_logic;
SIGNAL \ULA1BIT_11|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_11|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \entradaA[12]~input_o\ : std_logic;
SIGNAL \entradaB[12]~input_o\ : std_logic;
SIGNAL \ULA1BIT_12|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[13]~input_o\ : std_logic;
SIGNAL \entradaB[13]~input_o\ : std_logic;
SIGNAL \ULA1BIT_13|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[14]~input_o\ : std_logic;
SIGNAL \entradaB[14]~input_o\ : std_logic;
SIGNAL \ULA1BIT_14|SOMADOR|Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_14|SOMADOR|Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_14|SOMADOR|Cout~1_combout\ : std_logic;
SIGNAL \entradaA[15]~input_o\ : std_logic;
SIGNAL \entradaB[15]~input_o\ : std_logic;
SIGNAL \ULA1BIT_15|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[16]~input_o\ : std_logic;
SIGNAL \entradaB[16]~input_o\ : std_logic;
SIGNAL \ULA1BIT_16|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_16|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \entradaA[17]~input_o\ : std_logic;
SIGNAL \entradaB[17]~input_o\ : std_logic;
SIGNAL \ULA1BIT_17|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[18]~input_o\ : std_logic;
SIGNAL \entradaB[18]~input_o\ : std_logic;
SIGNAL \ULA1BIT_18|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[19]~input_o\ : std_logic;
SIGNAL \entradaB[19]~input_o\ : std_logic;
SIGNAL \ULA1BIT_19|SOMADOR|Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_19|SOMADOR|Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_19|SOMADOR|Cout~1_combout\ : std_logic;
SIGNAL \entradaA[20]~input_o\ : std_logic;
SIGNAL \entradaB[20]~input_o\ : std_logic;
SIGNAL \ULA1BIT_20|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[21]~input_o\ : std_logic;
SIGNAL \entradaB[21]~input_o\ : std_logic;
SIGNAL \ULA1BIT_21|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_21|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \entradaA[22]~input_o\ : std_logic;
SIGNAL \entradaB[22]~input_o\ : std_logic;
SIGNAL \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[23]~input_o\ : std_logic;
SIGNAL \entradaB[23]~input_o\ : std_logic;
SIGNAL \ULA1BIT_23|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[24]~input_o\ : std_logic;
SIGNAL \entradaB[24]~input_o\ : std_logic;
SIGNAL \ULA1BIT_24|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_24|SOMADOR|Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_24|SOMADOR|Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_24|SOMADOR|Cout~1_combout\ : std_logic;
SIGNAL \entradaA[25]~input_o\ : std_logic;
SIGNAL \entradaB[25]~input_o\ : std_logic;
SIGNAL \ULA1BIT_25|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[26]~input_o\ : std_logic;
SIGNAL \entradaB[26]~input_o\ : std_logic;
SIGNAL \ULA1BIT_26|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_26|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \entradaA[27]~input_o\ : std_logic;
SIGNAL \entradaB[27]~input_o\ : std_logic;
SIGNAL \ULA1BIT_27|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[28]~input_o\ : std_logic;
SIGNAL \entradaB[28]~input_o\ : std_logic;
SIGNAL \ULA1BIT_28|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[29]~input_o\ : std_logic;
SIGNAL \entradaB[29]~input_o\ : std_logic;
SIGNAL \ULA1BIT_29|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_29|SOMADOR|Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_29|SOMADOR|Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_29|SOMADOR|Cout~1_combout\ : std_logic;
SIGNAL \entradaA[30]~input_o\ : std_logic;
SIGNAL \entradaB[30]~input_o\ : std_logic;
SIGNAL \ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_31|Overflow~0_combout\ : std_logic;
SIGNAL \ULA1BIT_0|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_0|SOMADOR|Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_1|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_2|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_2|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_3|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_3|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_4|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_4|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_5|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_5|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_6|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_7|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_7|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_8|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_8|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_9|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_9|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_10|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_10|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_11|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_12|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_12|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_13|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_13|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_14|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_14|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_15|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_15|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_16|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_17|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_17|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_18|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_18|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_19|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_19|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_20|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_20|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_21|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_22|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_22|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_23|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_23|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_24|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_25|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_25|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_26|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_27|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_28|SOMADOR|Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_1|MUX4X1|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1BIT_28|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_28|MUX4X1|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1BIT_28|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_29|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_30|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_30|SOMADOR|Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_31|MUX4X1|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_29|SOMADOR|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_29|SOMADOR|ALT_INV_Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_29|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_28|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_27|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_26|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_26|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_25|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_24|SOMADOR|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \ULA1BIT_24|SOMADOR|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_24|SOMADOR|ALT_INV_Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_24|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_23|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_22|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_21|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_21|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_20|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_19|SOMADOR|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \ULA1BIT_19|SOMADOR|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_19|SOMADOR|ALT_INV_Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_18|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_17|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_16|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_16|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_15|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_14|SOMADOR|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \ULA1BIT_14|SOMADOR|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_14|SOMADOR|ALT_INV_Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_13|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_12|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_11|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_11|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_10|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_9|SOMADOR|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \ULA1BIT_9|SOMADOR|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_9|SOMADOR|ALT_INV_Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_8|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_7|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_6|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_6|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_5|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_4|SOMADOR|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \ULA1BIT_4|SOMADOR|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_4|SOMADOR|ALT_INV_Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_3|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_2|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_1|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_31|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ALT_INV_entradaB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inverteB~input_o\ : std_logic;
SIGNAL \ALT_INV_selecao[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_selecao[0]~input_o\ : std_logic;
SIGNAL \ULA1BIT_30|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_28|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_28|MUX4X1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_1|MUX4X1|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1BIT_28|SOMADOR|ALT_INV_Soma~0_combout\ : std_logic;
SIGNAL \ULA1BIT_25|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_23|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_22|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_20|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_19|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_18|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_17|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_15|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_14|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_13|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_12|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_10|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_9|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_8|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_7|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_5|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_4|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_3|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_2|SOMADOR|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \ULA1BIT_0|SOMADOR|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ULA1BIT_31|ALT_INV_Overflow~0_combout\ : std_logic;
SIGNAL \ULA1BIT_30|MUX2x1|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1BIT_29|SOMADOR|ALT_INV_Cout~1_combout\ : std_logic;

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_selecao <= selecao;
ww_inverteB <= inverteB;
saidaFlag <= ww_saidaFlag;
saida <= ww_saida;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA1BIT_29|SOMADOR|ALT_INV_Cout~0_combout\ <= NOT \ULA1BIT_29|SOMADOR|Cout~0_combout\;
\ULA1BIT_29|SOMADOR|ALT_INV_Soma~0_combout\ <= NOT \ULA1BIT_29|SOMADOR|Soma~0_combout\;
\ULA1BIT_29|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_29|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_28|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_28|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_27|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_27|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_26|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_26|SOMADOR|Cout~combout\;
\ULA1BIT_26|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_26|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_25|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_25|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_24|SOMADOR|ALT_INV_Cout~1_combout\ <= NOT \ULA1BIT_24|SOMADOR|Cout~1_combout\;
\ULA1BIT_24|SOMADOR|ALT_INV_Cout~0_combout\ <= NOT \ULA1BIT_24|SOMADOR|Cout~0_combout\;
\ULA1BIT_24|SOMADOR|ALT_INV_Soma~0_combout\ <= NOT \ULA1BIT_24|SOMADOR|Soma~0_combout\;
\ULA1BIT_24|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_24|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_23|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_23|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_22|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_21|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_21|SOMADOR|Cout~combout\;
\ULA1BIT_21|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_21|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_20|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_20|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_19|SOMADOR|ALT_INV_Cout~1_combout\ <= NOT \ULA1BIT_19|SOMADOR|Cout~1_combout\;
\ULA1BIT_19|SOMADOR|ALT_INV_Cout~0_combout\ <= NOT \ULA1BIT_19|SOMADOR|Cout~0_combout\;
\ULA1BIT_19|SOMADOR|ALT_INV_Soma~0_combout\ <= NOT \ULA1BIT_19|SOMADOR|Soma~0_combout\;
\ULA1BIT_18|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_18|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_17|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_17|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_16|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_16|SOMADOR|Cout~combout\;
\ULA1BIT_16|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_16|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_15|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_15|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_14|SOMADOR|ALT_INV_Cout~1_combout\ <= NOT \ULA1BIT_14|SOMADOR|Cout~1_combout\;
\ULA1BIT_14|SOMADOR|ALT_INV_Cout~0_combout\ <= NOT \ULA1BIT_14|SOMADOR|Cout~0_combout\;
\ULA1BIT_14|SOMADOR|ALT_INV_Soma~0_combout\ <= NOT \ULA1BIT_14|SOMADOR|Soma~0_combout\;
\ULA1BIT_13|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_13|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_12|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_12|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_11|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_11|SOMADOR|Cout~combout\;
\ULA1BIT_11|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_11|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_10|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_10|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_9|SOMADOR|ALT_INV_Cout~1_combout\ <= NOT \ULA1BIT_9|SOMADOR|Cout~1_combout\;
\ULA1BIT_9|SOMADOR|ALT_INV_Cout~0_combout\ <= NOT \ULA1BIT_9|SOMADOR|Cout~0_combout\;
\ULA1BIT_9|SOMADOR|ALT_INV_Soma~0_combout\ <= NOT \ULA1BIT_9|SOMADOR|Soma~0_combout\;
\ULA1BIT_8|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_8|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_7|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_7|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_6|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_6|SOMADOR|Cout~combout\;
\ULA1BIT_6|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_6|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_5|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_5|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_4|SOMADOR|ALT_INV_Cout~1_combout\ <= NOT \ULA1BIT_4|SOMADOR|Cout~1_combout\;
\ULA1BIT_4|SOMADOR|ALT_INV_Cout~0_combout\ <= NOT \ULA1BIT_4|SOMADOR|Cout~0_combout\;
\ULA1BIT_4|SOMADOR|ALT_INV_Soma~0_combout\ <= NOT \ULA1BIT_4|SOMADOR|Soma~0_combout\;
\ULA1BIT_3|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_3|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_2|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_2|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_1|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_1|SOMADOR|Cout~combout\;
\ULA1BIT_31|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_31|MUX2x1|saida_MUX~0_combout\;
\ALT_INV_entradaB[30]~input_o\ <= NOT \entradaB[30]~input_o\;
\ALT_INV_entradaA[30]~input_o\ <= NOT \entradaA[30]~input_o\;
\ALT_INV_entradaB[29]~input_o\ <= NOT \entradaB[29]~input_o\;
\ALT_INV_entradaA[29]~input_o\ <= NOT \entradaA[29]~input_o\;
\ALT_INV_entradaB[28]~input_o\ <= NOT \entradaB[28]~input_o\;
\ALT_INV_entradaA[28]~input_o\ <= NOT \entradaA[28]~input_o\;
\ALT_INV_entradaB[27]~input_o\ <= NOT \entradaB[27]~input_o\;
\ALT_INV_entradaA[27]~input_o\ <= NOT \entradaA[27]~input_o\;
\ALT_INV_entradaB[26]~input_o\ <= NOT \entradaB[26]~input_o\;
\ALT_INV_entradaA[26]~input_o\ <= NOT \entradaA[26]~input_o\;
\ALT_INV_entradaB[25]~input_o\ <= NOT \entradaB[25]~input_o\;
\ALT_INV_entradaA[25]~input_o\ <= NOT \entradaA[25]~input_o\;
\ALT_INV_entradaB[24]~input_o\ <= NOT \entradaB[24]~input_o\;
\ALT_INV_entradaA[24]~input_o\ <= NOT \entradaA[24]~input_o\;
\ALT_INV_entradaB[23]~input_o\ <= NOT \entradaB[23]~input_o\;
\ALT_INV_entradaA[23]~input_o\ <= NOT \entradaA[23]~input_o\;
\ALT_INV_entradaB[22]~input_o\ <= NOT \entradaB[22]~input_o\;
\ALT_INV_entradaA[22]~input_o\ <= NOT \entradaA[22]~input_o\;
\ALT_INV_entradaB[21]~input_o\ <= NOT \entradaB[21]~input_o\;
\ALT_INV_entradaA[21]~input_o\ <= NOT \entradaA[21]~input_o\;
\ALT_INV_entradaB[20]~input_o\ <= NOT \entradaB[20]~input_o\;
\ALT_INV_entradaA[20]~input_o\ <= NOT \entradaA[20]~input_o\;
\ALT_INV_entradaB[19]~input_o\ <= NOT \entradaB[19]~input_o\;
\ALT_INV_entradaA[19]~input_o\ <= NOT \entradaA[19]~input_o\;
\ALT_INV_entradaB[18]~input_o\ <= NOT \entradaB[18]~input_o\;
\ALT_INV_entradaA[18]~input_o\ <= NOT \entradaA[18]~input_o\;
\ALT_INV_entradaB[17]~input_o\ <= NOT \entradaB[17]~input_o\;
\ALT_INV_entradaA[17]~input_o\ <= NOT \entradaA[17]~input_o\;
\ALT_INV_entradaB[16]~input_o\ <= NOT \entradaB[16]~input_o\;
\ALT_INV_entradaA[16]~input_o\ <= NOT \entradaA[16]~input_o\;
\ALT_INV_entradaB[15]~input_o\ <= NOT \entradaB[15]~input_o\;
\ALT_INV_entradaA[15]~input_o\ <= NOT \entradaA[15]~input_o\;
\ALT_INV_entradaB[14]~input_o\ <= NOT \entradaB[14]~input_o\;
\ALT_INV_entradaA[14]~input_o\ <= NOT \entradaA[14]~input_o\;
\ALT_INV_entradaB[13]~input_o\ <= NOT \entradaB[13]~input_o\;
\ALT_INV_entradaA[13]~input_o\ <= NOT \entradaA[13]~input_o\;
\ALT_INV_entradaB[12]~input_o\ <= NOT \entradaB[12]~input_o\;
\ALT_INV_entradaA[12]~input_o\ <= NOT \entradaA[12]~input_o\;
\ALT_INV_entradaB[11]~input_o\ <= NOT \entradaB[11]~input_o\;
\ALT_INV_entradaA[11]~input_o\ <= NOT \entradaA[11]~input_o\;
\ALT_INV_entradaB[10]~input_o\ <= NOT \entradaB[10]~input_o\;
\ALT_INV_entradaA[10]~input_o\ <= NOT \entradaA[10]~input_o\;
\ALT_INV_entradaB[9]~input_o\ <= NOT \entradaB[9]~input_o\;
\ALT_INV_entradaA[9]~input_o\ <= NOT \entradaA[9]~input_o\;
\ALT_INV_entradaB[8]~input_o\ <= NOT \entradaB[8]~input_o\;
\ALT_INV_entradaA[8]~input_o\ <= NOT \entradaA[8]~input_o\;
\ALT_INV_entradaB[7]~input_o\ <= NOT \entradaB[7]~input_o\;
\ALT_INV_entradaA[7]~input_o\ <= NOT \entradaA[7]~input_o\;
\ALT_INV_entradaB[6]~input_o\ <= NOT \entradaB[6]~input_o\;
\ALT_INV_entradaA[6]~input_o\ <= NOT \entradaA[6]~input_o\;
\ALT_INV_entradaB[5]~input_o\ <= NOT \entradaB[5]~input_o\;
\ALT_INV_entradaA[5]~input_o\ <= NOT \entradaA[5]~input_o\;
\ALT_INV_entradaB[4]~input_o\ <= NOT \entradaB[4]~input_o\;
\ALT_INV_entradaA[4]~input_o\ <= NOT \entradaA[4]~input_o\;
\ALT_INV_entradaB[3]~input_o\ <= NOT \entradaB[3]~input_o\;
\ALT_INV_entradaA[3]~input_o\ <= NOT \entradaA[3]~input_o\;
\ALT_INV_entradaB[2]~input_o\ <= NOT \entradaB[2]~input_o\;
\ALT_INV_entradaA[2]~input_o\ <= NOT \entradaA[2]~input_o\;
\ALT_INV_entradaB[1]~input_o\ <= NOT \entradaB[1]~input_o\;
\ALT_INV_entradaA[1]~input_o\ <= NOT \entradaA[1]~input_o\;
\ALT_INV_entradaB[31]~input_o\ <= NOT \entradaB[31]~input_o\;
\ALT_INV_entradaA[31]~input_o\ <= NOT \entradaA[31]~input_o\;
\ALT_INV_entradaB[0]~input_o\ <= NOT \entradaB[0]~input_o\;
\ALT_INV_entradaA[0]~input_o\ <= NOT \entradaA[0]~input_o\;
\ALT_INV_inverteB~input_o\ <= NOT \inverteB~input_o\;
\ALT_INV_selecao[1]~input_o\ <= NOT \selecao[1]~input_o\;
\ALT_INV_selecao[0]~input_o\ <= NOT \selecao[0]~input_o\;
\ULA1BIT_30|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_30|SOMADOR|Cout~combout\;
\ULA1BIT_28|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_28|SOMADOR|Cout~combout\;
\ULA1BIT_28|MUX4X1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_28|MUX4X1|saida_MUX~0_combout\;
\ULA1BIT_1|MUX4X1|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA1BIT_1|MUX4X1|saida_MUX~1_combout\;
\ULA1BIT_28|SOMADOR|ALT_INV_Soma~0_combout\ <= NOT \ULA1BIT_28|SOMADOR|Soma~0_combout\;
\ULA1BIT_25|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_25|SOMADOR|Cout~combout\;
\ULA1BIT_23|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_23|SOMADOR|Cout~combout\;
\ULA1BIT_22|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_22|SOMADOR|Cout~combout\;
\ULA1BIT_20|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_20|SOMADOR|Cout~combout\;
\ULA1BIT_19|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_19|SOMADOR|Cout~combout\;
\ULA1BIT_18|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_18|SOMADOR|Cout~combout\;
\ULA1BIT_17|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_17|SOMADOR|Cout~combout\;
\ULA1BIT_15|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_15|SOMADOR|Cout~combout\;
\ULA1BIT_14|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_14|SOMADOR|Cout~combout\;
\ULA1BIT_13|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_13|SOMADOR|Cout~combout\;
\ULA1BIT_12|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_12|SOMADOR|Cout~combout\;
\ULA1BIT_10|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_10|SOMADOR|Cout~combout\;
\ULA1BIT_9|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_9|SOMADOR|Cout~combout\;
\ULA1BIT_8|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_8|SOMADOR|Cout~combout\;
\ULA1BIT_7|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_7|SOMADOR|Cout~combout\;
\ULA1BIT_5|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_5|SOMADOR|Cout~combout\;
\ULA1BIT_4|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_4|SOMADOR|Cout~combout\;
\ULA1BIT_3|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_3|SOMADOR|Cout~combout\;
\ULA1BIT_2|SOMADOR|ALT_INV_Cout~combout\ <= NOT \ULA1BIT_2|SOMADOR|Cout~combout\;
\ULA1BIT_0|SOMADOR|ALT_INV_Cout~0_combout\ <= NOT \ULA1BIT_0|SOMADOR|Cout~0_combout\;
\ULA1BIT_31|ALT_INV_Overflow~0_combout\ <= NOT \ULA1BIT_31|Overflow~0_combout\;
\ULA1BIT_30|MUX2x1|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1BIT_30|MUX2x1|saida_MUX~0_combout\;
\ULA1BIT_29|SOMADOR|ALT_INV_Cout~1_combout\ <= NOT \ULA1BIT_29|SOMADOR|Cout~1_combout\;

\saidaFlag~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saidaFlag~output_o\);

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_0|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_1|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_2|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_3|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_4|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_5|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_6|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_7|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_8|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_9|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_10|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_11|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_12|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_13|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_14|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_15|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_16|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

\saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_17|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

\saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_18|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

\saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_19|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

\saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_20|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

\saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_21|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

\saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_22|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

\saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_23|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

\saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_24|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

\saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_25|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

\saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_26|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

\saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_27|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

\saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_28|MUX4X1|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

\saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_29|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

\saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_30|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

\saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_31|MUX4X1|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1BIT_31|Overflow~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

\selecao[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(0),
	o => \selecao[0]~input_o\);

\selecao[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selecao(1),
	o => \selecao[1]~input_o\);

\inverteB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inverteB,
	o => \inverteB~input_o\);

\entradaA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

\entradaB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

\entradaA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(31),
	o => \entradaA[31]~input_o\);

\entradaB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(31),
	o => \entradaB[31]~input_o\);

\ULA1BIT_31|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_31|MUX2x1|saida_MUX~0_combout\ = !\entradaB[31]~input_o\ $ (!\inverteB~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[31]~input_o\,
	datab => \ALT_INV_inverteB~input_o\,
	combout => \ULA1BIT_31|MUX2x1|saida_MUX~0_combout\);

\entradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

\entradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

\ULA1BIT_1|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_1|SOMADOR|Cout~combout\ = ( \entradaB[0]~input_o\ & ( (!\entradaA[1]~input_o\ & (\entradaA[0]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[1]~input_o\)))) # (\entradaA[1]~input_o\ & ((!\inverteB~input_o\ $ (!\entradaB[1]~input_o\)) # 
-- (\entradaA[0]~input_o\))) ) ) # ( !\entradaB[0]~input_o\ & ( (!\entradaB[1]~input_o\ & (\inverteB~input_o\)) # (\entradaB[1]~input_o\ & ((\entradaA[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000100100111101101010011010100110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[1]~input_o\,
	datac => \ALT_INV_entradaB[1]~input_o\,
	datad => \ALT_INV_entradaA[0]~input_o\,
	datae => \ALT_INV_entradaB[0]~input_o\,
	combout => \ULA1BIT_1|SOMADOR|Cout~combout\);

\entradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

\entradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

\ULA1BIT_2|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_2|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[2]~input_o\,
	combout => \ULA1BIT_2|MUX2x1|saida_MUX~0_combout\);

\entradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

\entradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

\ULA1BIT_3|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_3|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA1BIT_3|MUX2x1|saida_MUX~0_combout\);

\entradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

\entradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

\ULA1BIT_4|SOMADOR|Soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_4|SOMADOR|Soma~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[4]~input_o\ $ (\entradaB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[4]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA1BIT_4|SOMADOR|Soma~0_combout\);

\ULA1BIT_4|SOMADOR|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_4|SOMADOR|Cout~0_combout\ = ( \ULA1BIT_3|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_4|SOMADOR|Soma~0_combout\ & ( ((!\ULA1BIT_1|SOMADOR|Cout~combout\ & (\entradaA[2]~input_o\ & \ULA1BIT_2|MUX2x1|saida_MUX~0_combout\)) # 
-- (\ULA1BIT_1|SOMADOR|Cout~combout\ & ((\ULA1BIT_2|MUX2x1|saida_MUX~0_combout\) # (\entradaA[2]~input_o\)))) # (\entradaA[3]~input_o\) ) ) ) # ( !\ULA1BIT_3|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_4|SOMADOR|Soma~0_combout\ & ( (\entradaA[3]~input_o\ & 
-- ((!\ULA1BIT_1|SOMADOR|Cout~combout\ & (\entradaA[2]~input_o\ & \ULA1BIT_2|MUX2x1|saida_MUX~0_combout\)) # (\ULA1BIT_1|SOMADOR|Cout~combout\ & ((\ULA1BIT_2|MUX2x1|saida_MUX~0_combout\) # (\entradaA[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_1|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	datac => \ULA1BIT_2|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	datae => \ULA1BIT_3|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1BIT_4|SOMADOR|ALT_INV_Soma~0_combout\,
	combout => \ULA1BIT_4|SOMADOR|Cout~0_combout\);

\ULA1BIT_4|SOMADOR|Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_4|SOMADOR|Cout~1_combout\ = (\entradaA[4]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[4]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA1BIT_4|SOMADOR|Cout~1_combout\);

\entradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

\entradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

\ULA1BIT_5|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_5|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[5]~input_o\,
	combout => \ULA1BIT_5|MUX2x1|saida_MUX~0_combout\);

\entradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

\entradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

\ULA1BIT_6|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_6|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[6]~input_o\,
	combout => \ULA1BIT_6|MUX2x1|saida_MUX~0_combout\);

\ULA1BIT_6|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_6|SOMADOR|Cout~combout\ = ( !\entradaA[6]~input_o\ & ( \ULA1BIT_6|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[5]~input_o\ & ((!\ULA1BIT_5|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_4|SOMADOR|Cout~0_combout\ & 
-- !\ULA1BIT_4|SOMADOR|Cout~1_combout\)))) # (\entradaA[5]~input_o\ & (!\ULA1BIT_4|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_4|SOMADOR|Cout~1_combout\ & !\ULA1BIT_5|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( \entradaA[6]~input_o\ & ( 
-- !\ULA1BIT_6|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[5]~input_o\ & ((!\ULA1BIT_5|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_4|SOMADOR|Cout~0_combout\ & !\ULA1BIT_4|SOMADOR|Cout~1_combout\)))) # (\entradaA[5]~input_o\ & 
-- (!\ULA1BIT_4|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_4|SOMADOR|Cout~1_combout\ & !\ULA1BIT_5|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( !\entradaA[6]~input_o\ & ( !\ULA1BIT_6|MUX2x1|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_4|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_4|SOMADOR|ALT_INV_Cout~1_combout\,
	datac => \ALT_INV_entradaA[5]~input_o\,
	datad => \ULA1BIT_5|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_entradaA[6]~input_o\,
	dataf => \ULA1BIT_6|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_6|SOMADOR|Cout~combout\);

\entradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

\entradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

\ULA1BIT_7|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_7|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[7]~input_o\,
	combout => \ULA1BIT_7|MUX2x1|saida_MUX~0_combout\);

\entradaA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(8),
	o => \entradaA[8]~input_o\);

\entradaB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(8),
	o => \entradaB[8]~input_o\);

\ULA1BIT_8|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_8|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[8]~input_o\,
	combout => \ULA1BIT_8|MUX2x1|saida_MUX~0_combout\);

\entradaA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(9),
	o => \entradaA[9]~input_o\);

\entradaB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(9),
	o => \entradaB[9]~input_o\);

\ULA1BIT_9|SOMADOR|Soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_9|SOMADOR|Soma~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[9]~input_o\ $ (\entradaB[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA1BIT_9|SOMADOR|Soma~0_combout\);

\ULA1BIT_9|SOMADOR|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_9|SOMADOR|Cout~0_combout\ = ( \ULA1BIT_8|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_9|SOMADOR|Soma~0_combout\ & ( ((!\ULA1BIT_6|SOMADOR|Cout~combout\ & ((\ULA1BIT_7|MUX2x1|saida_MUX~0_combout\) # (\entradaA[7]~input_o\))) # 
-- (\ULA1BIT_6|SOMADOR|Cout~combout\ & (\entradaA[7]~input_o\ & \ULA1BIT_7|MUX2x1|saida_MUX~0_combout\))) # (\entradaA[8]~input_o\) ) ) ) # ( !\ULA1BIT_8|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_9|SOMADOR|Soma~0_combout\ & ( (\entradaA[8]~input_o\ & 
-- ((!\ULA1BIT_6|SOMADOR|Cout~combout\ & ((\ULA1BIT_7|MUX2x1|saida_MUX~0_combout\) # (\entradaA[7]~input_o\))) # (\ULA1BIT_6|SOMADOR|Cout~combout\ & (\entradaA[7]~input_o\ & \ULA1BIT_7|MUX2x1|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_6|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[7]~input_o\,
	datac => \ULA1BIT_7|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[8]~input_o\,
	datae => \ULA1BIT_8|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1BIT_9|SOMADOR|ALT_INV_Soma~0_combout\,
	combout => \ULA1BIT_9|SOMADOR|Cout~0_combout\);

\ULA1BIT_9|SOMADOR|Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_9|SOMADOR|Cout~1_combout\ = (\entradaA[9]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA1BIT_9|SOMADOR|Cout~1_combout\);

\entradaA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(10),
	o => \entradaA[10]~input_o\);

\entradaB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(10),
	o => \entradaB[10]~input_o\);

\ULA1BIT_10|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_10|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[10]~input_o\,
	combout => \ULA1BIT_10|MUX2x1|saida_MUX~0_combout\);

\entradaA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(11),
	o => \entradaA[11]~input_o\);

\entradaB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(11),
	o => \entradaB[11]~input_o\);

\ULA1BIT_11|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_11|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[11]~input_o\,
	combout => \ULA1BIT_11|MUX2x1|saida_MUX~0_combout\);

\ULA1BIT_11|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_11|SOMADOR|Cout~combout\ = ( !\entradaA[11]~input_o\ & ( \ULA1BIT_11|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[10]~input_o\ & ((!\ULA1BIT_10|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_9|SOMADOR|Cout~0_combout\ & 
-- !\ULA1BIT_9|SOMADOR|Cout~1_combout\)))) # (\entradaA[10]~input_o\ & (!\ULA1BIT_9|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_9|SOMADOR|Cout~1_combout\ & !\ULA1BIT_10|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( \entradaA[11]~input_o\ & ( 
-- !\ULA1BIT_11|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[10]~input_o\ & ((!\ULA1BIT_10|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_9|SOMADOR|Cout~0_combout\ & !\ULA1BIT_9|SOMADOR|Cout~1_combout\)))) # (\entradaA[10]~input_o\ & 
-- (!\ULA1BIT_9|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_9|SOMADOR|Cout~1_combout\ & !\ULA1BIT_10|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( !\entradaA[11]~input_o\ & ( !\ULA1BIT_11|MUX2x1|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_9|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_9|SOMADOR|ALT_INV_Cout~1_combout\,
	datac => \ALT_INV_entradaA[10]~input_o\,
	datad => \ULA1BIT_10|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_entradaA[11]~input_o\,
	dataf => \ULA1BIT_11|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_11|SOMADOR|Cout~combout\);

\entradaA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(12),
	o => \entradaA[12]~input_o\);

\entradaB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(12),
	o => \entradaB[12]~input_o\);

\ULA1BIT_12|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_12|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[12]~input_o\,
	combout => \ULA1BIT_12|MUX2x1|saida_MUX~0_combout\);

\entradaA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(13),
	o => \entradaA[13]~input_o\);

\entradaB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(13),
	o => \entradaB[13]~input_o\);

\ULA1BIT_13|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_13|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[13]~input_o\,
	combout => \ULA1BIT_13|MUX2x1|saida_MUX~0_combout\);

\entradaA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(14),
	o => \entradaA[14]~input_o\);

\entradaB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(14),
	o => \entradaB[14]~input_o\);

\ULA1BIT_14|SOMADOR|Soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_14|SOMADOR|Soma~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[14]~input_o\ $ (\entradaB[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[14]~input_o\,
	datac => \ALT_INV_entradaB[14]~input_o\,
	combout => \ULA1BIT_14|SOMADOR|Soma~0_combout\);

\ULA1BIT_14|SOMADOR|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_14|SOMADOR|Cout~0_combout\ = ( \ULA1BIT_13|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_14|SOMADOR|Soma~0_combout\ & ( ((!\ULA1BIT_11|SOMADOR|Cout~combout\ & ((\ULA1BIT_12|MUX2x1|saida_MUX~0_combout\) # (\entradaA[12]~input_o\))) # 
-- (\ULA1BIT_11|SOMADOR|Cout~combout\ & (\entradaA[12]~input_o\ & \ULA1BIT_12|MUX2x1|saida_MUX~0_combout\))) # (\entradaA[13]~input_o\) ) ) ) # ( !\ULA1BIT_13|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_14|SOMADOR|Soma~0_combout\ & ( (\entradaA[13]~input_o\ & 
-- ((!\ULA1BIT_11|SOMADOR|Cout~combout\ & ((\ULA1BIT_12|MUX2x1|saida_MUX~0_combout\) # (\entradaA[12]~input_o\))) # (\ULA1BIT_11|SOMADOR|Cout~combout\ & (\entradaA[12]~input_o\ & \ULA1BIT_12|MUX2x1|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_11|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[12]~input_o\,
	datac => \ULA1BIT_12|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[13]~input_o\,
	datae => \ULA1BIT_13|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1BIT_14|SOMADOR|ALT_INV_Soma~0_combout\,
	combout => \ULA1BIT_14|SOMADOR|Cout~0_combout\);

\ULA1BIT_14|SOMADOR|Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_14|SOMADOR|Cout~1_combout\ = (\entradaA[14]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[14]~input_o\,
	datac => \ALT_INV_entradaB[14]~input_o\,
	combout => \ULA1BIT_14|SOMADOR|Cout~1_combout\);

\entradaA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(15),
	o => \entradaA[15]~input_o\);

\entradaB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(15),
	o => \entradaB[15]~input_o\);

\ULA1BIT_15|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_15|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[15]~input_o\,
	combout => \ULA1BIT_15|MUX2x1|saida_MUX~0_combout\);

\entradaA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(16),
	o => \entradaA[16]~input_o\);

\entradaB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(16),
	o => \entradaB[16]~input_o\);

\ULA1BIT_16|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_16|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[16]~input_o\,
	combout => \ULA1BIT_16|MUX2x1|saida_MUX~0_combout\);

\ULA1BIT_16|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_16|SOMADOR|Cout~combout\ = ( !\entradaA[16]~input_o\ & ( \ULA1BIT_16|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[15]~input_o\ & ((!\ULA1BIT_15|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_14|SOMADOR|Cout~0_combout\ & 
-- !\ULA1BIT_14|SOMADOR|Cout~1_combout\)))) # (\entradaA[15]~input_o\ & (!\ULA1BIT_14|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_14|SOMADOR|Cout~1_combout\ & !\ULA1BIT_15|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( \entradaA[16]~input_o\ & ( 
-- !\ULA1BIT_16|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[15]~input_o\ & ((!\ULA1BIT_15|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_14|SOMADOR|Cout~0_combout\ & !\ULA1BIT_14|SOMADOR|Cout~1_combout\)))) # (\entradaA[15]~input_o\ & 
-- (!\ULA1BIT_14|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_14|SOMADOR|Cout~1_combout\ & !\ULA1BIT_15|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( !\entradaA[16]~input_o\ & ( !\ULA1BIT_16|MUX2x1|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_14|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_14|SOMADOR|ALT_INV_Cout~1_combout\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ULA1BIT_15|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_entradaA[16]~input_o\,
	dataf => \ULA1BIT_16|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_16|SOMADOR|Cout~combout\);

\entradaA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(17),
	o => \entradaA[17]~input_o\);

\entradaB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(17),
	o => \entradaB[17]~input_o\);

\ULA1BIT_17|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_17|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[17]~input_o\,
	combout => \ULA1BIT_17|MUX2x1|saida_MUX~0_combout\);

\entradaA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(18),
	o => \entradaA[18]~input_o\);

\entradaB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(18),
	o => \entradaB[18]~input_o\);

\ULA1BIT_18|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_18|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[18]~input_o\,
	combout => \ULA1BIT_18|MUX2x1|saida_MUX~0_combout\);

\entradaA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(19),
	o => \entradaA[19]~input_o\);

\entradaB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(19),
	o => \entradaB[19]~input_o\);

\ULA1BIT_19|SOMADOR|Soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_19|SOMADOR|Soma~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[19]~input_o\ $ (\entradaB[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[19]~input_o\,
	datac => \ALT_INV_entradaB[19]~input_o\,
	combout => \ULA1BIT_19|SOMADOR|Soma~0_combout\);

\ULA1BIT_19|SOMADOR|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_19|SOMADOR|Cout~0_combout\ = ( \ULA1BIT_18|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_19|SOMADOR|Soma~0_combout\ & ( ((!\ULA1BIT_16|SOMADOR|Cout~combout\ & ((\ULA1BIT_17|MUX2x1|saida_MUX~0_combout\) # (\entradaA[17]~input_o\))) # 
-- (\ULA1BIT_16|SOMADOR|Cout~combout\ & (\entradaA[17]~input_o\ & \ULA1BIT_17|MUX2x1|saida_MUX~0_combout\))) # (\entradaA[18]~input_o\) ) ) ) # ( !\ULA1BIT_18|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_19|SOMADOR|Soma~0_combout\ & ( (\entradaA[18]~input_o\ & 
-- ((!\ULA1BIT_16|SOMADOR|Cout~combout\ & ((\ULA1BIT_17|MUX2x1|saida_MUX~0_combout\) # (\entradaA[17]~input_o\))) # (\ULA1BIT_16|SOMADOR|Cout~combout\ & (\entradaA[17]~input_o\ & \ULA1BIT_17|MUX2x1|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_16|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[17]~input_o\,
	datac => \ULA1BIT_17|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[18]~input_o\,
	datae => \ULA1BIT_18|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1BIT_19|SOMADOR|ALT_INV_Soma~0_combout\,
	combout => \ULA1BIT_19|SOMADOR|Cout~0_combout\);

\ULA1BIT_19|SOMADOR|Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_19|SOMADOR|Cout~1_combout\ = (\entradaA[19]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[19]~input_o\,
	datac => \ALT_INV_entradaB[19]~input_o\,
	combout => \ULA1BIT_19|SOMADOR|Cout~1_combout\);

\entradaA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(20),
	o => \entradaA[20]~input_o\);

\entradaB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(20),
	o => \entradaB[20]~input_o\);

\ULA1BIT_20|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_20|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[20]~input_o\,
	combout => \ULA1BIT_20|MUX2x1|saida_MUX~0_combout\);

\entradaA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(21),
	o => \entradaA[21]~input_o\);

\entradaB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(21),
	o => \entradaB[21]~input_o\);

\ULA1BIT_21|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_21|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[21]~input_o\,
	combout => \ULA1BIT_21|MUX2x1|saida_MUX~0_combout\);

\ULA1BIT_21|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_21|SOMADOR|Cout~combout\ = ( !\entradaA[21]~input_o\ & ( \ULA1BIT_21|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[20]~input_o\ & ((!\ULA1BIT_20|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_19|SOMADOR|Cout~0_combout\ & 
-- !\ULA1BIT_19|SOMADOR|Cout~1_combout\)))) # (\entradaA[20]~input_o\ & (!\ULA1BIT_19|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_19|SOMADOR|Cout~1_combout\ & !\ULA1BIT_20|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( \entradaA[21]~input_o\ & ( 
-- !\ULA1BIT_21|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[20]~input_o\ & ((!\ULA1BIT_20|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_19|SOMADOR|Cout~0_combout\ & !\ULA1BIT_19|SOMADOR|Cout~1_combout\)))) # (\entradaA[20]~input_o\ & 
-- (!\ULA1BIT_19|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_19|SOMADOR|Cout~1_combout\ & !\ULA1BIT_20|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( !\entradaA[21]~input_o\ & ( !\ULA1BIT_21|MUX2x1|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_19|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_19|SOMADOR|ALT_INV_Cout~1_combout\,
	datac => \ALT_INV_entradaA[20]~input_o\,
	datad => \ULA1BIT_20|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_entradaA[21]~input_o\,
	dataf => \ULA1BIT_21|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_21|SOMADOR|Cout~combout\);

\entradaA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(22),
	o => \entradaA[22]~input_o\);

\entradaB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(22),
	o => \entradaB[22]~input_o\);

\ULA1BIT_22|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[22]~input_o\,
	combout => \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\);

\entradaA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(23),
	o => \entradaA[23]~input_o\);

\entradaB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(23),
	o => \entradaB[23]~input_o\);

\ULA1BIT_23|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_23|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[23]~input_o\,
	combout => \ULA1BIT_23|MUX2x1|saida_MUX~0_combout\);

\entradaA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(24),
	o => \entradaA[24]~input_o\);

\entradaB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(24),
	o => \entradaB[24]~input_o\);

\ULA1BIT_24|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_24|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[24]~input_o\,
	combout => \ULA1BIT_24|MUX2x1|saida_MUX~0_combout\);

\ULA1BIT_24|SOMADOR|Soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_24|SOMADOR|Soma~0_combout\ = !\entradaA[24]~input_o\ $ (!\ULA1BIT_24|MUX2x1|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA1BIT_24|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_24|SOMADOR|Soma~0_combout\);

\ULA1BIT_24|SOMADOR|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_24|SOMADOR|Cout~0_combout\ = ( \ULA1BIT_23|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_24|SOMADOR|Soma~0_combout\ & ( ((!\ULA1BIT_21|SOMADOR|Cout~combout\ & ((\ULA1BIT_22|MUX2x1|saida_MUX~0_combout\) # (\entradaA[22]~input_o\))) # 
-- (\ULA1BIT_21|SOMADOR|Cout~combout\ & (\entradaA[22]~input_o\ & \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\))) # (\entradaA[23]~input_o\) ) ) ) # ( !\ULA1BIT_23|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_24|SOMADOR|Soma~0_combout\ & ( (\entradaA[23]~input_o\ & 
-- ((!\ULA1BIT_21|SOMADOR|Cout~combout\ & ((\ULA1BIT_22|MUX2x1|saida_MUX~0_combout\) # (\entradaA[22]~input_o\))) # (\ULA1BIT_21|SOMADOR|Cout~combout\ & (\entradaA[22]~input_o\ & \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_21|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[22]~input_o\,
	datac => \ULA1BIT_22|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[23]~input_o\,
	datae => \ULA1BIT_23|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1BIT_24|SOMADOR|ALT_INV_Soma~0_combout\,
	combout => \ULA1BIT_24|SOMADOR|Cout~0_combout\);

\ULA1BIT_24|SOMADOR|Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_24|SOMADOR|Cout~1_combout\ = (\entradaA[24]~input_o\ & \ULA1BIT_24|MUX2x1|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA1BIT_24|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_24|SOMADOR|Cout~1_combout\);

\entradaA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(25),
	o => \entradaA[25]~input_o\);

\entradaB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(25),
	o => \entradaB[25]~input_o\);

\ULA1BIT_25|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_25|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[25]~input_o\,
	combout => \ULA1BIT_25|MUX2x1|saida_MUX~0_combout\);

\entradaA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(26),
	o => \entradaA[26]~input_o\);

\entradaB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(26),
	o => \entradaB[26]~input_o\);

\ULA1BIT_26|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_26|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[26]~input_o\,
	combout => \ULA1BIT_26|MUX2x1|saida_MUX~0_combout\);

\ULA1BIT_26|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_26|SOMADOR|Cout~combout\ = ( !\entradaA[26]~input_o\ & ( \ULA1BIT_26|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[25]~input_o\ & ((!\ULA1BIT_25|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_24|SOMADOR|Cout~0_combout\ & 
-- !\ULA1BIT_24|SOMADOR|Cout~1_combout\)))) # (\entradaA[25]~input_o\ & (!\ULA1BIT_24|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_24|SOMADOR|Cout~1_combout\ & !\ULA1BIT_25|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( \entradaA[26]~input_o\ & ( 
-- !\ULA1BIT_26|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[25]~input_o\ & ((!\ULA1BIT_25|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_24|SOMADOR|Cout~0_combout\ & !\ULA1BIT_24|SOMADOR|Cout~1_combout\)))) # (\entradaA[25]~input_o\ & 
-- (!\ULA1BIT_24|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_24|SOMADOR|Cout~1_combout\ & !\ULA1BIT_25|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( !\entradaA[26]~input_o\ & ( !\ULA1BIT_26|MUX2x1|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_24|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_24|SOMADOR|ALT_INV_Cout~1_combout\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ULA1BIT_25|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_entradaA[26]~input_o\,
	dataf => \ULA1BIT_26|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_26|SOMADOR|Cout~combout\);

\entradaA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(27),
	o => \entradaA[27]~input_o\);

\entradaB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(27),
	o => \entradaB[27]~input_o\);

\ULA1BIT_27|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_27|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[27]~input_o\,
	combout => \ULA1BIT_27|MUX2x1|saida_MUX~0_combout\);

\entradaA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(28),
	o => \entradaA[28]~input_o\);

\entradaB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(28),
	o => \entradaB[28]~input_o\);

\ULA1BIT_28|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_28|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[28]~input_o\,
	combout => \ULA1BIT_28|MUX2x1|saida_MUX~0_combout\);

\entradaA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(29),
	o => \entradaA[29]~input_o\);

\entradaB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(29),
	o => \entradaB[29]~input_o\);

\ULA1BIT_29|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_29|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[29]~input_o\,
	combout => \ULA1BIT_29|MUX2x1|saida_MUX~0_combout\);

\ULA1BIT_29|SOMADOR|Soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_29|SOMADOR|Soma~0_combout\ = !\entradaA[29]~input_o\ $ (!\ULA1BIT_29|MUX2x1|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[29]~input_o\,
	datab => \ULA1BIT_29|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_29|SOMADOR|Soma~0_combout\);

\ULA1BIT_29|SOMADOR|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_29|SOMADOR|Cout~0_combout\ = ( \ULA1BIT_28|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_29|SOMADOR|Soma~0_combout\ & ( ((!\ULA1BIT_26|SOMADOR|Cout~combout\ & ((\ULA1BIT_27|MUX2x1|saida_MUX~0_combout\) # (\entradaA[27]~input_o\))) # 
-- (\ULA1BIT_26|SOMADOR|Cout~combout\ & (\entradaA[27]~input_o\ & \ULA1BIT_27|MUX2x1|saida_MUX~0_combout\))) # (\entradaA[28]~input_o\) ) ) ) # ( !\ULA1BIT_28|MUX2x1|saida_MUX~0_combout\ & ( \ULA1BIT_29|SOMADOR|Soma~0_combout\ & ( (\entradaA[28]~input_o\ & 
-- ((!\ULA1BIT_26|SOMADOR|Cout~combout\ & ((\ULA1BIT_27|MUX2x1|saida_MUX~0_combout\) # (\entradaA[27]~input_o\))) # (\ULA1BIT_26|SOMADOR|Cout~combout\ & (\entradaA[27]~input_o\ & \ULA1BIT_27|MUX2x1|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_26|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[27]~input_o\,
	datac => \ULA1BIT_27|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[28]~input_o\,
	datae => \ULA1BIT_28|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA1BIT_29|SOMADOR|ALT_INV_Soma~0_combout\,
	combout => \ULA1BIT_29|SOMADOR|Cout~0_combout\);

\ULA1BIT_29|SOMADOR|Cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_29|SOMADOR|Cout~1_combout\ = (\entradaA[29]~input_o\ & \ULA1BIT_29|MUX2x1|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[29]~input_o\,
	datab => \ULA1BIT_29|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_29|SOMADOR|Cout~1_combout\);

\entradaA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(30),
	o => \entradaA[30]~input_o\);

\entradaB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(30),
	o => \entradaB[30]~input_o\);

\ULA1BIT_30|MUX2x1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[30]~input_o\,
	combout => \ULA1BIT_30|MUX2x1|saida_MUX~0_combout\);

\ULA1BIT_31|Overflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_31|Overflow~0_combout\ = ( \entradaA[30]~input_o\ & ( \ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ & ( (\entradaA[31]~input_o\ & \ULA1BIT_31|MUX2x1|saida_MUX~0_combout\) ) ) ) # ( !\entradaA[30]~input_o\ & ( \ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ & ( 
-- (!\entradaA[31]~input_o\ & (\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\ & (!\ULA1BIT_29|SOMADOR|Cout~0_combout\ & !\ULA1BIT_29|SOMADOR|Cout~1_combout\))) # (\entradaA[31]~input_o\ & (((!\ULA1BIT_29|SOMADOR|Cout~0_combout\ & 
-- !\ULA1BIT_29|SOMADOR|Cout~1_combout\)) # (\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( \entradaA[30]~input_o\ & ( !\ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ & ( (!\entradaA[31]~input_o\ & (\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\ & 
-- (!\ULA1BIT_29|SOMADOR|Cout~0_combout\ & !\ULA1BIT_29|SOMADOR|Cout~1_combout\))) # (\entradaA[31]~input_o\ & (((!\ULA1BIT_29|SOMADOR|Cout~0_combout\ & !\ULA1BIT_29|SOMADOR|Cout~1_combout\)) # (\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\entradaA[30]~input_o\ & ( !\ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ & ( (\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\) # (\entradaA[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011100010001000101110001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ULA1BIT_31|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1BIT_29|SOMADOR|ALT_INV_Cout~0_combout\,
	datad => \ULA1BIT_29|SOMADOR|ALT_INV_Cout~1_combout\,
	datae => \ALT_INV_entradaA[30]~input_o\,
	dataf => \ULA1BIT_30|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_31|Overflow~0_combout\);

\ULA1BIT_0|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_0|MUX4X1|saida_MUX~0_combout\ = ( \entradaB[0]~input_o\ & ( \ULA1BIT_31|Overflow~0_combout\ & ( (!\inverteB~input_o\ & ((!\selecao[1]~input_o\ $ (!\entradaA[0]~input_o\)) # (\selecao[0]~input_o\))) # (\inverteB~input_o\ & ((!\entradaA[0]~input_o\ 
-- & ((\selecao[1]~input_o\))) # (\entradaA[0]~input_o\ & (\selecao[0]~input_o\)))) ) ) ) # ( !\entradaB[0]~input_o\ & ( \ULA1BIT_31|Overflow~0_combout\ & ( (!\selecao[0]~input_o\ & (\entradaA[0]~input_o\ & ((\inverteB~input_o\) # (\selecao[1]~input_o\)))) # 
-- (\selecao[0]~input_o\ & (((\entradaA[0]~input_o\) # (\inverteB~input_o\)) # (\selecao[1]~input_o\))) ) ) ) # ( \entradaB[0]~input_o\ & ( !\ULA1BIT_31|Overflow~0_combout\ & ( (!\selecao[0]~input_o\ & ((!\selecao[1]~input_o\ & (!\inverteB~input_o\ & 
-- \entradaA[0]~input_o\)) # (\selecao[1]~input_o\ & ((!\entradaA[0]~input_o\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((!\inverteB~input_o\) # (\entradaA[0]~input_o\)))) ) ) ) # ( !\entradaB[0]~input_o\ & ( !\ULA1BIT_31|Overflow~0_combout\ & 
-- ( (!\selecao[0]~input_o\ & (\entradaA[0]~input_o\ & ((\inverteB~input_o\) # (\selecao[1]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((\entradaA[0]~input_o\) # (\inverteB~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001101110011000101100010000010101011111110111001111010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaA[0]~input_o\,
	datae => \ALT_INV_entradaB[0]~input_o\,
	dataf => \ULA1BIT_31|ALT_INV_Overflow~0_combout\,
	combout => \ULA1BIT_0|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_0|SOMADOR|Cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_0|SOMADOR|Cout~0_combout\ = (!\entradaB[0]~input_o\ & (\inverteB~input_o\)) # (\entradaB[0]~input_o\ & ((\entradaA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[0]~input_o\,
	datac => \ALT_INV_entradaB[0]~input_o\,
	combout => \ULA1BIT_0|SOMADOR|Cout~0_combout\);

\ULA1BIT_1|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_1|MUX4X1|saida_MUX~0_combout\ = ( \entradaB[1]~input_o\ & ( \ULA1BIT_0|SOMADOR|Cout~0_combout\ & ( (!\selecao[0]~input_o\ & ((!\inverteB~input_o\ & ((\entradaA[1]~input_o\))) # (\inverteB~input_o\ & (\selecao[1]~input_o\ & 
-- !\entradaA[1]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((!\inverteB~input_o\) # (\entradaA[1]~input_o\)))) ) ) ) # ( !\entradaB[1]~input_o\ & ( \ULA1BIT_0|SOMADOR|Cout~0_combout\ & ( (!\selecao[0]~input_o\ & ((!\inverteB~input_o\ & 
-- (\selecao[1]~input_o\ & !\entradaA[1]~input_o\)) # (\inverteB~input_o\ & ((\entradaA[1]~input_o\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((\entradaA[1]~input_o\) # (\inverteB~input_o\)))) ) ) ) # ( \entradaB[1]~input_o\ & ( 
-- !\ULA1BIT_0|SOMADOR|Cout~0_combout\ & ( (!\inverteB~input_o\ & (!\selecao[1]~input_o\ $ (((!\selecao[0]~input_o\ & !\entradaA[1]~input_o\))))) # (\inverteB~input_o\ & (\entradaA[1]~input_o\ & (!\selecao[0]~input_o\ $ (!\selecao[1]~input_o\)))) ) ) ) # ( 
-- !\entradaB[1]~input_o\ & ( !\ULA1BIT_0|SOMADOR|Cout~0_combout\ & ( (!\inverteB~input_o\ & (\entradaA[1]~input_o\ & (!\selecao[0]~input_o\ $ (!\selecao[1]~input_o\)))) # (\inverteB~input_o\ & (!\selecao[1]~input_o\ $ (((!\selecao[0]~input_o\ & 
-- !\entradaA[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100011000001100011000100100010011100100001011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaA[1]~input_o\,
	datae => \ALT_INV_entradaB[1]~input_o\,
	dataf => \ULA1BIT_0|SOMADOR|ALT_INV_Cout~0_combout\,
	combout => \ULA1BIT_1|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_2|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_2|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_2|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[2]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_1|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) # ( !\ULA1BIT_2|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_1|SOMADOR|Cout~combout\ $ (!\entradaA[2]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((\entradaA[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_1|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[2]~input_o\,
	datae => \ULA1BIT_2|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_2|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_2|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_2|SOMADOR|Cout~combout\ = (!\ULA1BIT_1|SOMADOR|Cout~combout\ & (\entradaA[2]~input_o\ & \ULA1BIT_2|MUX2x1|saida_MUX~0_combout\)) # (\ULA1BIT_1|SOMADOR|Cout~combout\ & ((\ULA1BIT_2|MUX2x1|saida_MUX~0_combout\) # (\entradaA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_1|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	datac => \ULA1BIT_2|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_2|SOMADOR|Cout~combout\);

\ULA1BIT_3|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_3|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_3|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[3]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_2|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) # ( !\ULA1BIT_3|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_2|SOMADOR|Cout~combout\ $ (!\entradaA[3]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((\entradaA[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_2|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	datae => \ULA1BIT_3|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_3|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_3|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_3|SOMADOR|Cout~combout\ = (!\ULA1BIT_2|SOMADOR|Cout~combout\ & (\entradaA[3]~input_o\ & \ULA1BIT_3|MUX2x1|saida_MUX~0_combout\)) # (\ULA1BIT_2|SOMADOR|Cout~combout\ & ((\ULA1BIT_3|MUX2x1|saida_MUX~0_combout\) # (\entradaA[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_2|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[3]~input_o\,
	datac => \ULA1BIT_3|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_3|SOMADOR|Cout~combout\);

\ULA1BIT_4|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_4|MUX4X1|saida_MUX~0_combout\ = ( \entradaA[4]~input_o\ & ( \entradaB[4]~input_o\ & ( (!\selecao[0]~input_o\ & (!\inverteB~input_o\ $ (((\selecao[1]~input_o\ & !\ULA1BIT_3|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) ) # ( !\entradaA[4]~input_o\ & ( \entradaB[4]~input_o\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\inverteB~input_o\ $ (\ULA1BIT_3|SOMADOR|Cout~combout\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- (!\inverteB~input_o\))) ) ) ) # ( \entradaA[4]~input_o\ & ( !\entradaB[4]~input_o\ & ( (!\selecao[0]~input_o\ & (!\inverteB~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_3|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) ) 
-- ) ) # ( !\entradaA[4]~input_o\ & ( !\entradaB[4]~input_o\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\inverteB~input_o\ $ (!\ULA1BIT_3|SOMADOR|Cout~combout\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & (\inverteB~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100011011000100111001100000010000101100011011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ULA1BIT_3|SOMADOR|ALT_INV_Cout~combout\,
	datae => \ALT_INV_entradaA[4]~input_o\,
	dataf => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA1BIT_4|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_4|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_4|SOMADOR|Cout~combout\ = (!\ULA1BIT_4|SOMADOR|Cout~0_combout\ & !\ULA1BIT_4|SOMADOR|Cout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_4|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_4|SOMADOR|ALT_INV_Cout~1_combout\,
	combout => \ULA1BIT_4|SOMADOR|Cout~combout\);

\ULA1BIT_5|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_5|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_5|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[5]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_4|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) # ( !\ULA1BIT_5|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_4|SOMADOR|Cout~combout\ $ (\entradaA[5]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((\entradaA[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_4|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[5]~input_o\,
	datae => \ULA1BIT_5|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_5|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_5|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_5|SOMADOR|Cout~combout\ = (!\ULA1BIT_4|SOMADOR|Cout~combout\ & ((\ULA1BIT_5|MUX2x1|saida_MUX~0_combout\) # (\entradaA[5]~input_o\))) # (\ULA1BIT_4|SOMADOR|Cout~combout\ & (\entradaA[5]~input_o\ & \ULA1BIT_5|MUX2x1|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_4|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[5]~input_o\,
	datac => \ULA1BIT_5|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_5|SOMADOR|Cout~combout\);

\ULA1BIT_6|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_6|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_6|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[6]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_5|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) # ( !\ULA1BIT_6|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_5|SOMADOR|Cout~combout\ $ (!\entradaA[6]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((\entradaA[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_5|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[6]~input_o\,
	datae => \ULA1BIT_6|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_6|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_7|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_7|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_7|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[7]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_6|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) # ( !\ULA1BIT_7|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_6|SOMADOR|Cout~combout\ $ (\entradaA[7]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((\entradaA[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_6|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[7]~input_o\,
	datae => \ULA1BIT_7|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_7|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_7|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_7|SOMADOR|Cout~combout\ = (!\ULA1BIT_6|SOMADOR|Cout~combout\ & ((\ULA1BIT_7|MUX2x1|saida_MUX~0_combout\) # (\entradaA[7]~input_o\))) # (\ULA1BIT_6|SOMADOR|Cout~combout\ & (\entradaA[7]~input_o\ & \ULA1BIT_7|MUX2x1|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_6|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[7]~input_o\,
	datac => \ULA1BIT_7|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_7|SOMADOR|Cout~combout\);

\ULA1BIT_8|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_8|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_8|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[8]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_7|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) # ( !\ULA1BIT_8|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_7|SOMADOR|Cout~combout\ $ (!\entradaA[8]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((\entradaA[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_7|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[8]~input_o\,
	datae => \ULA1BIT_8|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_8|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_8|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_8|SOMADOR|Cout~combout\ = (!\ULA1BIT_7|SOMADOR|Cout~combout\ & (\entradaA[8]~input_o\ & \ULA1BIT_8|MUX2x1|saida_MUX~0_combout\)) # (\ULA1BIT_7|SOMADOR|Cout~combout\ & ((\ULA1BIT_8|MUX2x1|saida_MUX~0_combout\) # (\entradaA[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_7|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[8]~input_o\,
	datac => \ULA1BIT_8|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_8|SOMADOR|Cout~combout\);

\ULA1BIT_9|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_9|MUX4X1|saida_MUX~0_combout\ = ( \entradaA[9]~input_o\ & ( \entradaB[9]~input_o\ & ( (!\selecao[0]~input_o\ & (!\inverteB~input_o\ $ (((\selecao[1]~input_o\ & !\ULA1BIT_8|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) ) # ( !\entradaA[9]~input_o\ & ( \entradaB[9]~input_o\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\inverteB~input_o\ $ (\ULA1BIT_8|SOMADOR|Cout~combout\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- (!\inverteB~input_o\))) ) ) ) # ( \entradaA[9]~input_o\ & ( !\entradaB[9]~input_o\ & ( (!\selecao[0]~input_o\ & (!\inverteB~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_8|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) ) 
-- ) ) # ( !\entradaA[9]~input_o\ & ( !\entradaB[9]~input_o\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\inverteB~input_o\ $ (!\ULA1BIT_8|SOMADOR|Cout~combout\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & (\inverteB~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100011011000100111001100000010000101100011011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ULA1BIT_8|SOMADOR|ALT_INV_Cout~combout\,
	datae => \ALT_INV_entradaA[9]~input_o\,
	dataf => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA1BIT_9|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_9|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_9|SOMADOR|Cout~combout\ = (!\ULA1BIT_9|SOMADOR|Cout~0_combout\ & !\ULA1BIT_9|SOMADOR|Cout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_9|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_9|SOMADOR|ALT_INV_Cout~1_combout\,
	combout => \ULA1BIT_9|SOMADOR|Cout~combout\);

\ULA1BIT_10|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_10|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_10|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[10]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_9|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_10|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_9|SOMADOR|Cout~combout\ $ (\entradaA[10]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_9|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[10]~input_o\,
	datae => \ULA1BIT_10|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_10|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_10|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_10|SOMADOR|Cout~combout\ = (!\ULA1BIT_9|SOMADOR|Cout~combout\ & ((\ULA1BIT_10|MUX2x1|saida_MUX~0_combout\) # (\entradaA[10]~input_o\))) # (\ULA1BIT_9|SOMADOR|Cout~combout\ & (\entradaA[10]~input_o\ & \ULA1BIT_10|MUX2x1|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_9|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[10]~input_o\,
	datac => \ULA1BIT_10|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_10|SOMADOR|Cout~combout\);

\ULA1BIT_11|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_11|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_11|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[11]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_10|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_11|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_10|SOMADOR|Cout~combout\ $ (!\entradaA[11]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_10|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[11]~input_o\,
	datae => \ULA1BIT_11|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_11|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_12|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_12|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_12|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[12]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_11|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_12|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_11|SOMADOR|Cout~combout\ $ (\entradaA[12]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_11|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[12]~input_o\,
	datae => \ULA1BIT_12|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_12|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_12|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_12|SOMADOR|Cout~combout\ = (!\ULA1BIT_11|SOMADOR|Cout~combout\ & ((\ULA1BIT_12|MUX2x1|saida_MUX~0_combout\) # (\entradaA[12]~input_o\))) # (\ULA1BIT_11|SOMADOR|Cout~combout\ & (\entradaA[12]~input_o\ & \ULA1BIT_12|MUX2x1|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_11|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[12]~input_o\,
	datac => \ULA1BIT_12|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_12|SOMADOR|Cout~combout\);

\ULA1BIT_13|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_13|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_13|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[13]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_12|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_13|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_12|SOMADOR|Cout~combout\ $ (!\entradaA[13]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_12|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[13]~input_o\,
	datae => \ULA1BIT_13|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_13|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_13|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_13|SOMADOR|Cout~combout\ = (!\ULA1BIT_12|SOMADOR|Cout~combout\ & (\entradaA[13]~input_o\ & \ULA1BIT_13|MUX2x1|saida_MUX~0_combout\)) # (\ULA1BIT_12|SOMADOR|Cout~combout\ & ((\ULA1BIT_13|MUX2x1|saida_MUX~0_combout\) # (\entradaA[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_12|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[13]~input_o\,
	datac => \ULA1BIT_13|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_13|SOMADOR|Cout~combout\);

\ULA1BIT_14|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_14|MUX4X1|saida_MUX~0_combout\ = ( \entradaA[14]~input_o\ & ( \entradaB[14]~input_o\ & ( (!\selecao[0]~input_o\ & (!\inverteB~input_o\ $ (((\selecao[1]~input_o\ & !\ULA1BIT_13|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) ) # ( !\entradaA[14]~input_o\ & ( \entradaB[14]~input_o\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\inverteB~input_o\ $ (\ULA1BIT_13|SOMADOR|Cout~combout\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- (!\inverteB~input_o\))) ) ) ) # ( \entradaA[14]~input_o\ & ( !\entradaB[14]~input_o\ & ( (!\selecao[0]~input_o\ & (!\inverteB~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_13|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) ) # ( !\entradaA[14]~input_o\ & ( !\entradaB[14]~input_o\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\inverteB~input_o\ $ (!\ULA1BIT_13|SOMADOR|Cout~combout\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & (\inverteB~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100011011000100111001100000010000101100011011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ULA1BIT_13|SOMADOR|ALT_INV_Cout~combout\,
	datae => \ALT_INV_entradaA[14]~input_o\,
	dataf => \ALT_INV_entradaB[14]~input_o\,
	combout => \ULA1BIT_14|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_14|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_14|SOMADOR|Cout~combout\ = (!\ULA1BIT_14|SOMADOR|Cout~0_combout\ & !\ULA1BIT_14|SOMADOR|Cout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_14|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_14|SOMADOR|ALT_INV_Cout~1_combout\,
	combout => \ULA1BIT_14|SOMADOR|Cout~combout\);

\ULA1BIT_15|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_15|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_15|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[15]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_14|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_15|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_14|SOMADOR|Cout~combout\ $ (\entradaA[15]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_14|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[15]~input_o\,
	datae => \ULA1BIT_15|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_15|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_15|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_15|SOMADOR|Cout~combout\ = (!\ULA1BIT_14|SOMADOR|Cout~combout\ & ((\ULA1BIT_15|MUX2x1|saida_MUX~0_combout\) # (\entradaA[15]~input_o\))) # (\ULA1BIT_14|SOMADOR|Cout~combout\ & (\entradaA[15]~input_o\ & \ULA1BIT_15|MUX2x1|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_14|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[15]~input_o\,
	datac => \ULA1BIT_15|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_15|SOMADOR|Cout~combout\);

\ULA1BIT_16|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_16|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_16|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[16]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_15|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_16|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_15|SOMADOR|Cout~combout\ $ (!\entradaA[16]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_15|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[16]~input_o\,
	datae => \ULA1BIT_16|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_16|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_17|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_17|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_17|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[17]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_16|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_17|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_16|SOMADOR|Cout~combout\ $ (\entradaA[17]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_16|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[17]~input_o\,
	datae => \ULA1BIT_17|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_17|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_17|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_17|SOMADOR|Cout~combout\ = (!\ULA1BIT_16|SOMADOR|Cout~combout\ & ((\ULA1BIT_17|MUX2x1|saida_MUX~0_combout\) # (\entradaA[17]~input_o\))) # (\ULA1BIT_16|SOMADOR|Cout~combout\ & (\entradaA[17]~input_o\ & \ULA1BIT_17|MUX2x1|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_16|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[17]~input_o\,
	datac => \ULA1BIT_17|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_17|SOMADOR|Cout~combout\);

\ULA1BIT_18|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_18|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_18|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[18]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_17|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_18|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_17|SOMADOR|Cout~combout\ $ (!\entradaA[18]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[18]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_17|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[18]~input_o\,
	datae => \ULA1BIT_18|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_18|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_18|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_18|SOMADOR|Cout~combout\ = (!\ULA1BIT_17|SOMADOR|Cout~combout\ & (\entradaA[18]~input_o\ & \ULA1BIT_18|MUX2x1|saida_MUX~0_combout\)) # (\ULA1BIT_17|SOMADOR|Cout~combout\ & ((\ULA1BIT_18|MUX2x1|saida_MUX~0_combout\) # (\entradaA[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_17|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[18]~input_o\,
	datac => \ULA1BIT_18|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_18|SOMADOR|Cout~combout\);

\ULA1BIT_19|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_19|MUX4X1|saida_MUX~0_combout\ = ( \entradaA[19]~input_o\ & ( \entradaB[19]~input_o\ & ( (!\selecao[0]~input_o\ & (!\inverteB~input_o\ $ (((\selecao[1]~input_o\ & !\ULA1BIT_18|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) ) # ( !\entradaA[19]~input_o\ & ( \entradaB[19]~input_o\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\inverteB~input_o\ $ (\ULA1BIT_18|SOMADOR|Cout~combout\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- (!\inverteB~input_o\))) ) ) ) # ( \entradaA[19]~input_o\ & ( !\entradaB[19]~input_o\ & ( (!\selecao[0]~input_o\ & (!\inverteB~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_18|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) ) # ( !\entradaA[19]~input_o\ & ( !\entradaB[19]~input_o\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\inverteB~input_o\ $ (!\ULA1BIT_18|SOMADOR|Cout~combout\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & (\inverteB~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100100011011000100111001100000010000101100011011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ULA1BIT_18|SOMADOR|ALT_INV_Cout~combout\,
	datae => \ALT_INV_entradaA[19]~input_o\,
	dataf => \ALT_INV_entradaB[19]~input_o\,
	combout => \ULA1BIT_19|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_19|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_19|SOMADOR|Cout~combout\ = (!\ULA1BIT_19|SOMADOR|Cout~0_combout\ & !\ULA1BIT_19|SOMADOR|Cout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_19|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_19|SOMADOR|ALT_INV_Cout~1_combout\,
	combout => \ULA1BIT_19|SOMADOR|Cout~combout\);

\ULA1BIT_20|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_20|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_20|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[20]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_19|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_20|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_19|SOMADOR|Cout~combout\ $ (\entradaA[20]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_19|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[20]~input_o\,
	datae => \ULA1BIT_20|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_20|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_20|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_20|SOMADOR|Cout~combout\ = (!\ULA1BIT_19|SOMADOR|Cout~combout\ & ((\ULA1BIT_20|MUX2x1|saida_MUX~0_combout\) # (\entradaA[20]~input_o\))) # (\ULA1BIT_19|SOMADOR|Cout~combout\ & (\entradaA[20]~input_o\ & \ULA1BIT_20|MUX2x1|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_19|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[20]~input_o\,
	datac => \ULA1BIT_20|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_20|SOMADOR|Cout~combout\);

\ULA1BIT_21|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_21|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_21|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[21]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_20|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_21|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_20|SOMADOR|Cout~combout\ $ (!\entradaA[21]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_20|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[21]~input_o\,
	datae => \ULA1BIT_21|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_21|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_22|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_22|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[22]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_21|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_22|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_21|SOMADOR|Cout~combout\ $ (\entradaA[22]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_21|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[22]~input_o\,
	datae => \ULA1BIT_22|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_22|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_22|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_22|SOMADOR|Cout~combout\ = (!\ULA1BIT_21|SOMADOR|Cout~combout\ & ((\ULA1BIT_22|MUX2x1|saida_MUX~0_combout\) # (\entradaA[22]~input_o\))) # (\ULA1BIT_21|SOMADOR|Cout~combout\ & (\entradaA[22]~input_o\ & \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_21|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[22]~input_o\,
	datac => \ULA1BIT_22|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_22|SOMADOR|Cout~combout\);

\ULA1BIT_23|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_23|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_23|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[23]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_22|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_23|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_22|SOMADOR|Cout~combout\ $ (!\entradaA[23]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_22|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[23]~input_o\,
	datae => \ULA1BIT_23|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_23|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_23|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_23|SOMADOR|Cout~combout\ = ( \ULA1BIT_23|MUX2x1|saida_MUX~0_combout\ & ( ((!\ULA1BIT_21|SOMADOR|Cout~combout\ & ((\ULA1BIT_22|MUX2x1|saida_MUX~0_combout\) # (\entradaA[22]~input_o\))) # (\ULA1BIT_21|SOMADOR|Cout~combout\ & (\entradaA[22]~input_o\ 
-- & \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\))) # (\entradaA[23]~input_o\) ) ) # ( !\ULA1BIT_23|MUX2x1|saida_MUX~0_combout\ & ( (\entradaA[23]~input_o\ & ((!\ULA1BIT_21|SOMADOR|Cout~combout\ & ((\ULA1BIT_22|MUX2x1|saida_MUX~0_combout\) # 
-- (\entradaA[22]~input_o\))) # (\ULA1BIT_21|SOMADOR|Cout~combout\ & (\entradaA[22]~input_o\ & \ULA1BIT_22|MUX2x1|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_21|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[22]~input_o\,
	datac => \ULA1BIT_22|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[23]~input_o\,
	datae => \ULA1BIT_23|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_23|SOMADOR|Cout~combout\);

\ULA1BIT_24|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_24|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_24|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[24]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_23|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_24|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_23|SOMADOR|Cout~combout\ $ (!\entradaA[24]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[24]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_23|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[24]~input_o\,
	datae => \ULA1BIT_24|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_24|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_25|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_25|MUX4X1|saida_MUX~0_combout\ = ( \entradaA[25]~input_o\ & ( \ULA1BIT_25|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[1]~input_o\) # ((!\selecao[0]~input_o\ & ((\ULA1BIT_24|SOMADOR|Cout~1_combout\) # (\ULA1BIT_24|SOMADOR|Cout~0_combout\)))) ) ) ) 
-- # ( !\entradaA[25]~input_o\ & ( \ULA1BIT_25|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_24|SOMADOR|Cout~0_combout\ & !\ULA1BIT_24|SOMADOR|Cout~1_combout\))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) ) # ( \entradaA[25]~input_o\ & ( !\ULA1BIT_25|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_24|SOMADOR|Cout~0_combout\ & !\ULA1BIT_24|SOMADOR|Cout~1_combout\))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) ) # ( !\entradaA[25]~input_o\ & ( !\ULA1BIT_25|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & ((\ULA1BIT_24|SOMADOR|Cout~1_combout\) # (\ULA1BIT_24|SOMADOR|Cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_24|SOMADOR|ALT_INV_Cout~0_combout\,
	datad => \ULA1BIT_24|SOMADOR|ALT_INV_Cout~1_combout\,
	datae => \ALT_INV_entradaA[25]~input_o\,
	dataf => \ULA1BIT_25|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_25|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_25|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_25|SOMADOR|Cout~combout\ = (!\entradaA[25]~input_o\ & ((!\ULA1BIT_25|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_24|SOMADOR|Cout~0_combout\ & !\ULA1BIT_24|SOMADOR|Cout~1_combout\)))) # (\entradaA[25]~input_o\ & 
-- (!\ULA1BIT_24|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_24|SOMADOR|Cout~1_combout\ & !\ULA1BIT_25|MUX2x1|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_24|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_24|SOMADOR|ALT_INV_Cout~1_combout\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ULA1BIT_25|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_25|SOMADOR|Cout~combout\);

\ULA1BIT_26|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_26|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_26|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[26]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_25|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_26|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_25|SOMADOR|Cout~combout\ $ (\entradaA[26]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_25|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[26]~input_o\,
	datae => \ULA1BIT_26|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_26|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_27|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_27|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_27|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[27]~input_o\ $ (((!\selecao[1]~input_o\) # (!\ULA1BIT_26|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_27|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_26|SOMADOR|Cout~combout\ $ (\entradaA[27]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110010001101110110000100000010001100100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_26|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[27]~input_o\,
	datae => \ULA1BIT_27|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_27|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_28|SOMADOR|Soma~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_28|SOMADOR|Soma~0_combout\ = !\entradaA[28]~input_o\ $ (!\ULA1BIT_28|MUX2x1|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[28]~input_o\,
	datab => \ULA1BIT_28|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_28|SOMADOR|Soma~0_combout\);

\ULA1BIT_1|MUX4X1|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_1|MUX4X1|saida_MUX~1_combout\ = (!\selecao[0]~input_o\ & \selecao[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	combout => \ULA1BIT_1|MUX4X1|saida_MUX~1_combout\);

\ULA1BIT_28|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_28|MUX4X1|saida_MUX~0_combout\ = (!\selecao[1]~input_o\ & ((!\selecao[0]~input_o\ & (\entradaA[28]~input_o\ & \ULA1BIT_28|MUX2x1|saida_MUX~0_combout\)) # (\selecao[0]~input_o\ & ((\ULA1BIT_28|MUX2x1|saida_MUX~0_combout\) # 
-- (\entradaA[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ALT_INV_entradaA[28]~input_o\,
	datad => \ULA1BIT_28|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_28|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_28|MUX4X1|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_28|MUX4X1|saida_MUX~1_combout\ = ( \ULA1BIT_1|MUX4X1|saida_MUX~1_combout\ & ( \ULA1BIT_28|MUX4X1|saida_MUX~0_combout\ ) ) # ( !\ULA1BIT_1|MUX4X1|saida_MUX~1_combout\ & ( \ULA1BIT_28|MUX4X1|saida_MUX~0_combout\ ) ) # ( 
-- \ULA1BIT_1|MUX4X1|saida_MUX~1_combout\ & ( !\ULA1BIT_28|MUX4X1|saida_MUX~0_combout\ & ( !\ULA1BIT_28|SOMADOR|Soma~0_combout\ $ (((!\ULA1BIT_26|SOMADOR|Cout~combout\ & (!\entradaA[27]~input_o\ & !\ULA1BIT_27|MUX2x1|saida_MUX~0_combout\)) # 
-- (\ULA1BIT_26|SOMADOR|Cout~combout\ & ((!\entradaA[27]~input_o\) # (!\ULA1BIT_27|MUX2x1|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_26|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[27]~input_o\,
	datac => \ULA1BIT_27|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1BIT_28|SOMADOR|ALT_INV_Soma~0_combout\,
	datae => \ULA1BIT_1|MUX4X1|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA1BIT_28|MUX4X1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_28|MUX4X1|saida_MUX~1_combout\);

\ULA1BIT_28|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_28|SOMADOR|Cout~combout\ = ( \ULA1BIT_28|MUX2x1|saida_MUX~0_combout\ & ( ((!\ULA1BIT_26|SOMADOR|Cout~combout\ & ((\ULA1BIT_27|MUX2x1|saida_MUX~0_combout\) # (\entradaA[27]~input_o\))) # (\ULA1BIT_26|SOMADOR|Cout~combout\ & (\entradaA[27]~input_o\ 
-- & \ULA1BIT_27|MUX2x1|saida_MUX~0_combout\))) # (\entradaA[28]~input_o\) ) ) # ( !\ULA1BIT_28|MUX2x1|saida_MUX~0_combout\ & ( (\entradaA[28]~input_o\ & ((!\ULA1BIT_26|SOMADOR|Cout~combout\ & ((\ULA1BIT_27|MUX2x1|saida_MUX~0_combout\) # 
-- (\entradaA[27]~input_o\))) # (\ULA1BIT_26|SOMADOR|Cout~combout\ & (\entradaA[27]~input_o\ & \ULA1BIT_27|MUX2x1|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_26|SOMADOR|ALT_INV_Cout~combout\,
	datab => \ALT_INV_entradaA[27]~input_o\,
	datac => \ULA1BIT_27|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[28]~input_o\,
	datae => \ULA1BIT_28|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_28|SOMADOR|Cout~combout\);

\ULA1BIT_29|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_29|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_29|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (!\entradaA[29]~input_o\ $ (((!\selecao[1]~input_o\) # (\ULA1BIT_28|SOMADOR|Cout~combout\))))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) # ( !\ULA1BIT_29|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_28|SOMADOR|Cout~combout\ $ (!\entradaA[29]~input_o\)))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & 
-- ((\entradaA[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000000010011001000110010011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_28|SOMADOR|ALT_INV_Cout~combout\,
	datad => \ALT_INV_entradaA[29]~input_o\,
	datae => \ULA1BIT_29|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_29|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_30|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_30|MUX4X1|saida_MUX~0_combout\ = ( \entradaA[30]~input_o\ & ( \ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[1]~input_o\) # ((!\selecao[0]~input_o\ & ((\ULA1BIT_29|SOMADOR|Cout~1_combout\) # (\ULA1BIT_29|SOMADOR|Cout~0_combout\)))) ) ) ) 
-- # ( !\entradaA[30]~input_o\ & ( \ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_29|SOMADOR|Cout~0_combout\ & !\ULA1BIT_29|SOMADOR|Cout~1_combout\))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\)) 
-- ) ) ) # ( \entradaA[30]~input_o\ & ( !\ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & (!\ULA1BIT_29|SOMADOR|Cout~0_combout\ & !\ULA1BIT_29|SOMADOR|Cout~1_combout\))) # (\selecao[0]~input_o\ & 
-- (!\selecao[1]~input_o\)) ) ) ) # ( !\entradaA[30]~input_o\ & ( !\ULA1BIT_30|MUX2x1|saida_MUX~0_combout\ & ( (!\selecao[0]~input_o\ & (\selecao[1]~input_o\ & ((\ULA1BIT_29|SOMADOR|Cout~1_combout\) # (\ULA1BIT_29|SOMADOR|Cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010011001000100010001100100010001001100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ULA1BIT_29|SOMADOR|ALT_INV_Cout~0_combout\,
	datad => \ULA1BIT_29|SOMADOR|ALT_INV_Cout~1_combout\,
	datae => \ALT_INV_entradaA[30]~input_o\,
	dataf => \ULA1BIT_30|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_30|MUX4X1|saida_MUX~0_combout\);

\ULA1BIT_30|SOMADOR|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_30|SOMADOR|Cout~combout\ = (!\entradaA[30]~input_o\ & ((!\ULA1BIT_30|MUX2x1|saida_MUX~0_combout\) # ((!\ULA1BIT_29|SOMADOR|Cout~0_combout\ & !\ULA1BIT_29|SOMADOR|Cout~1_combout\)))) # (\entradaA[30]~input_o\ & 
-- (!\ULA1BIT_29|SOMADOR|Cout~0_combout\ & (!\ULA1BIT_29|SOMADOR|Cout~1_combout\ & !\ULA1BIT_30|MUX2x1|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1BIT_29|SOMADOR|ALT_INV_Cout~0_combout\,
	datab => \ULA1BIT_29|SOMADOR|ALT_INV_Cout~1_combout\,
	datac => \ALT_INV_entradaA[30]~input_o\,
	datad => \ULA1BIT_30|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA1BIT_30|SOMADOR|Cout~combout\);

\ULA1BIT_31|MUX4X1|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1BIT_31|MUX4X1|saida_MUX~0_combout\ = ( \ULA1BIT_30|SOMADOR|Cout~combout\ & ( (!\entradaA[31]~input_o\ & (\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\ & (!\selecao[0]~input_o\ $ (!\selecao[1]~input_o\)))) # (\entradaA[31]~input_o\ & (!\selecao[1]~input_o\ 
-- $ (((!\selecao[0]~input_o\ & !\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\))))) ) ) # ( !\ULA1BIT_30|SOMADOR|Cout~combout\ & ( (!\selecao[0]~input_o\ & ((!\entradaA[31]~input_o\ & (\selecao[1]~input_o\ & !\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\)) # 
-- (\entradaA[31]~input_o\ & ((\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\))))) # (\selecao[0]~input_o\ & (!\selecao[1]~input_o\ & ((\ULA1BIT_31|MUX2x1|saida_MUX~0_combout\) # (\entradaA[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_selecao[0]~input_o\,
	datab => \ALT_INV_selecao[1]~input_o\,
	datac => \ALT_INV_entradaA[31]~input_o\,
	datad => \ULA1BIT_31|MUX2x1|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA1BIT_30|SOMADOR|ALT_INV_Cout~combout\,
	combout => \ULA1BIT_31|MUX4X1|saida_MUX~0_combout\);

ww_saidaFlag <= \saidaFlag~output_o\;

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;

ww_saida(16) <= \saida[16]~output_o\;

ww_saida(17) <= \saida[17]~output_o\;

ww_saida(18) <= \saida[18]~output_o\;

ww_saida(19) <= \saida[19]~output_o\;

ww_saida(20) <= \saida[20]~output_o\;

ww_saida(21) <= \saida[21]~output_o\;

ww_saida(22) <= \saida[22]~output_o\;

ww_saida(23) <= \saida[23]~output_o\;

ww_saida(24) <= \saida[24]~output_o\;

ww_saida(25) <= \saida[25]~output_o\;

ww_saida(26) <= \saida[26]~output_o\;

ww_saida(27) <= \saida[27]~output_o\;

ww_saida(28) <= \saida[28]~output_o\;

ww_saida(29) <= \saida[29]~output_o\;

ww_saida(30) <= \saida[30]~output_o\;

ww_saida(31) <= \saida[31]~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;


