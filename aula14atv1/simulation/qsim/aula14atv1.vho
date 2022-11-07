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

-- DATE "11/07/2022 19:29:53"

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

ENTITY 	aula14atv1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0);
	DadoLido : OUT std_logic_vector(31 DOWNTO 0);
	DadoEscrito : OUT std_logic_vector(31 DOWNTO 0);
	SaidaULA : OUT std_logic_vector(31 DOWNTO 0)
	);
END aula14atv1;

ARCHITECTURE structure OF aula14atv1 IS
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
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DadoLido : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DadoEscrito : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SaidaULA : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \DadoLido[0]~output_o\ : std_logic;
SIGNAL \DadoLido[1]~output_o\ : std_logic;
SIGNAL \DadoLido[2]~output_o\ : std_logic;
SIGNAL \DadoLido[3]~output_o\ : std_logic;
SIGNAL \DadoLido[4]~output_o\ : std_logic;
SIGNAL \DadoLido[5]~output_o\ : std_logic;
SIGNAL \DadoLido[6]~output_o\ : std_logic;
SIGNAL \DadoLido[7]~output_o\ : std_logic;
SIGNAL \DadoLido[8]~output_o\ : std_logic;
SIGNAL \DadoLido[9]~output_o\ : std_logic;
SIGNAL \DadoLido[10]~output_o\ : std_logic;
SIGNAL \DadoLido[11]~output_o\ : std_logic;
SIGNAL \DadoLido[12]~output_o\ : std_logic;
SIGNAL \DadoLido[13]~output_o\ : std_logic;
SIGNAL \DadoLido[14]~output_o\ : std_logic;
SIGNAL \DadoLido[15]~output_o\ : std_logic;
SIGNAL \DadoLido[16]~output_o\ : std_logic;
SIGNAL \DadoLido[17]~output_o\ : std_logic;
SIGNAL \DadoLido[18]~output_o\ : std_logic;
SIGNAL \DadoLido[19]~output_o\ : std_logic;
SIGNAL \DadoLido[20]~output_o\ : std_logic;
SIGNAL \DadoLido[21]~output_o\ : std_logic;
SIGNAL \DadoLido[22]~output_o\ : std_logic;
SIGNAL \DadoLido[23]~output_o\ : std_logic;
SIGNAL \DadoLido[24]~output_o\ : std_logic;
SIGNAL \DadoLido[25]~output_o\ : std_logic;
SIGNAL \DadoLido[26]~output_o\ : std_logic;
SIGNAL \DadoLido[27]~output_o\ : std_logic;
SIGNAL \DadoLido[28]~output_o\ : std_logic;
SIGNAL \DadoLido[29]~output_o\ : std_logic;
SIGNAL \DadoLido[30]~output_o\ : std_logic;
SIGNAL \DadoLido[31]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUT[31]~output_o\ : std_logic;
SIGNAL \DadoEscrito[0]~output_o\ : std_logic;
SIGNAL \DadoEscrito[1]~output_o\ : std_logic;
SIGNAL \DadoEscrito[2]~output_o\ : std_logic;
SIGNAL \DadoEscrito[3]~output_o\ : std_logic;
SIGNAL \DadoEscrito[4]~output_o\ : std_logic;
SIGNAL \DadoEscrito[5]~output_o\ : std_logic;
SIGNAL \DadoEscrito[6]~output_o\ : std_logic;
SIGNAL \DadoEscrito[7]~output_o\ : std_logic;
SIGNAL \DadoEscrito[8]~output_o\ : std_logic;
SIGNAL \DadoEscrito[9]~output_o\ : std_logic;
SIGNAL \DadoEscrito[10]~output_o\ : std_logic;
SIGNAL \DadoEscrito[11]~output_o\ : std_logic;
SIGNAL \DadoEscrito[12]~output_o\ : std_logic;
SIGNAL \DadoEscrito[13]~output_o\ : std_logic;
SIGNAL \DadoEscrito[14]~output_o\ : std_logic;
SIGNAL \DadoEscrito[15]~output_o\ : std_logic;
SIGNAL \DadoEscrito[16]~output_o\ : std_logic;
SIGNAL \DadoEscrito[17]~output_o\ : std_logic;
SIGNAL \DadoEscrito[18]~output_o\ : std_logic;
SIGNAL \DadoEscrito[19]~output_o\ : std_logic;
SIGNAL \DadoEscrito[20]~output_o\ : std_logic;
SIGNAL \DadoEscrito[21]~output_o\ : std_logic;
SIGNAL \DadoEscrito[22]~output_o\ : std_logic;
SIGNAL \DadoEscrito[23]~output_o\ : std_logic;
SIGNAL \DadoEscrito[24]~output_o\ : std_logic;
SIGNAL \DadoEscrito[25]~output_o\ : std_logic;
SIGNAL \DadoEscrito[26]~output_o\ : std_logic;
SIGNAL \DadoEscrito[27]~output_o\ : std_logic;
SIGNAL \DadoEscrito[28]~output_o\ : std_logic;
SIGNAL \DadoEscrito[29]~output_o\ : std_logic;
SIGNAL \DadoEscrito[30]~output_o\ : std_logic;
SIGNAL \DadoEscrito[31]~output_o\ : std_logic;
SIGNAL \SaidaULA[0]~output_o\ : std_logic;
SIGNAL \SaidaULA[1]~output_o\ : std_logic;
SIGNAL \SaidaULA[2]~output_o\ : std_logic;
SIGNAL \SaidaULA[3]~output_o\ : std_logic;
SIGNAL \SaidaULA[4]~output_o\ : std_logic;
SIGNAL \SaidaULA[5]~output_o\ : std_logic;
SIGNAL \SaidaULA[6]~output_o\ : std_logic;
SIGNAL \SaidaULA[7]~output_o\ : std_logic;
SIGNAL \SaidaULA[8]~output_o\ : std_logic;
SIGNAL \SaidaULA[9]~output_o\ : std_logic;
SIGNAL \SaidaULA[10]~output_o\ : std_logic;
SIGNAL \SaidaULA[11]~output_o\ : std_logic;
SIGNAL \SaidaULA[12]~output_o\ : std_logic;
SIGNAL \SaidaULA[13]~output_o\ : std_logic;
SIGNAL \SaidaULA[14]~output_o\ : std_logic;
SIGNAL \SaidaULA[15]~output_o\ : std_logic;
SIGNAL \SaidaULA[16]~output_o\ : std_logic;
SIGNAL \SaidaULA[17]~output_o\ : std_logic;
SIGNAL \SaidaULA[18]~output_o\ : std_logic;
SIGNAL \SaidaULA[19]~output_o\ : std_logic;
SIGNAL \SaidaULA[20]~output_o\ : std_logic;
SIGNAL \SaidaULA[21]~output_o\ : std_logic;
SIGNAL \SaidaULA[22]~output_o\ : std_logic;
SIGNAL \SaidaULA[23]~output_o\ : std_logic;
SIGNAL \SaidaULA[24]~output_o\ : std_logic;
SIGNAL \SaidaULA[25]~output_o\ : std_logic;
SIGNAL \SaidaULA[26]~output_o\ : std_logic;
SIGNAL \SaidaULA[27]~output_o\ : std_logic;
SIGNAL \SaidaULA[28]~output_o\ : std_logic;
SIGNAL \SaidaULA[29]~output_o\ : std_logic;
SIGNAL \SaidaULA[30]~output_o\ : std_logic;
SIGNAL \SaidaULA[31]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \Somador|Add0~1_sumout\ : std_logic;
SIGNAL \Somador|Add0~2\ : std_logic;
SIGNAL \Somador|Add0~5_sumout\ : std_logic;
SIGNAL \Somador|Add0~6\ : std_logic;
SIGNAL \Somador|Add0~9_sumout\ : std_logic;
SIGNAL \Somador|Add0~10\ : std_logic;
SIGNAL \Somador|Add0~13_sumout\ : std_logic;
SIGNAL \Somador|Add0~14\ : std_logic;
SIGNAL \Somador|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \RAM|ram~130_combout\ : std_logic;
SIGNAL \RAM|ram~66_q\ : std_logic;
SIGNAL \RAM|ram~131_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \UnidadeControle|Equal2~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~32_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~358_q\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \RAM|ram~98_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|dado_out[1]~33_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~359_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~67_q\ : std_logic;
SIGNAL \RAM|ram~99_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|dado_out[2]~34_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~360_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~68_q\ : std_logic;
SIGNAL \RAM|ram~100_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|dado_out[3]~35_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~361_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~69_q\ : std_logic;
SIGNAL \RAM|ram~101_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|dado_out[4]~36_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~362_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~70_q\ : std_logic;
SIGNAL \RAM|ram~102_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|dado_out[5]~37_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~363_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~71_q\ : std_logic;
SIGNAL \RAM|ram~103_combout\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|dado_out[6]~38_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~364_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~72_q\ : std_logic;
SIGNAL \RAM|ram~104_combout\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|dado_out[7]~39_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~365_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~73_q\ : std_logic;
SIGNAL \RAM|ram~105_combout\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|dado_out[8]~40_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~366_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[8]~8_combout\ : std_logic;
SIGNAL \RAM|ram~74_q\ : std_logic;
SIGNAL \RAM|ram~106_combout\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|dado_out[9]~41_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~367_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[9]~9_combout\ : std_logic;
SIGNAL \RAM|ram~75_q\ : std_logic;
SIGNAL \RAM|ram~107_combout\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|dado_out[10]~42_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~368_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[10]~10_combout\ : std_logic;
SIGNAL \RAM|ram~76_q\ : std_logic;
SIGNAL \RAM|ram~108_combout\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|dado_out[11]~43_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~369_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[11]~11_combout\ : std_logic;
SIGNAL \RAM|ram~77_q\ : std_logic;
SIGNAL \RAM|ram~109_combout\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|dado_out[12]~44_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~370_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[12]~12_combout\ : std_logic;
SIGNAL \RAM|ram~78_q\ : std_logic;
SIGNAL \RAM|ram~110_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|dado_out[13]~45_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~371_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[13]~13_combout\ : std_logic;
SIGNAL \RAM|ram~79_q\ : std_logic;
SIGNAL \RAM|ram~111_combout\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|dado_out[14]~46_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~372_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[14]~14_combout\ : std_logic;
SIGNAL \RAM|ram~80_q\ : std_logic;
SIGNAL \RAM|ram~112_combout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|dado_out[15]~47_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~373_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[15]~15_combout\ : std_logic;
SIGNAL \RAM|ram~81_q\ : std_logic;
SIGNAL \RAM|ram~113_combout\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|dado_out[16]~48_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~374_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[16]~16_combout\ : std_logic;
SIGNAL \RAM|ram~82_q\ : std_logic;
SIGNAL \RAM|ram~114_combout\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|dado_out[17]~49_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~375_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[17]~17_combout\ : std_logic;
SIGNAL \RAM|ram~83_q\ : std_logic;
SIGNAL \RAM|ram~115_combout\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|dado_out[18]~50_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~376_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[18]~18_combout\ : std_logic;
SIGNAL \RAM|ram~84_q\ : std_logic;
SIGNAL \RAM|ram~116_combout\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|dado_out[19]~51_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~377_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[19]~19_combout\ : std_logic;
SIGNAL \RAM|ram~85_q\ : std_logic;
SIGNAL \RAM|ram~117_combout\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|dado_out[20]~52_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~378_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[20]~20_combout\ : std_logic;
SIGNAL \RAM|ram~86_q\ : std_logic;
SIGNAL \RAM|ram~118_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|dado_out[21]~53_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~379_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[21]~21_combout\ : std_logic;
SIGNAL \RAM|ram~87_q\ : std_logic;
SIGNAL \RAM|ram~119_combout\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|dado_out[22]~54_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~380_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[22]~22_combout\ : std_logic;
SIGNAL \RAM|ram~88_q\ : std_logic;
SIGNAL \RAM|ram~120_combout\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|dado_out[23]~55_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~381_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[23]~23_combout\ : std_logic;
SIGNAL \RAM|ram~89_q\ : std_logic;
SIGNAL \RAM|ram~121_combout\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|dado_out[24]~56_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~382_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[24]~24_combout\ : std_logic;
SIGNAL \RAM|ram~90_q\ : std_logic;
SIGNAL \RAM|ram~122_combout\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|dado_out[25]~57_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~383_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[25]~25_combout\ : std_logic;
SIGNAL \RAM|ram~91_q\ : std_logic;
SIGNAL \RAM|ram~123_combout\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|dado_out[26]~58_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~384_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[26]~26_combout\ : std_logic;
SIGNAL \RAM|ram~92_q\ : std_logic;
SIGNAL \RAM|ram~124_combout\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|dado_out[27]~59_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~385_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[27]~27_combout\ : std_logic;
SIGNAL \RAM|ram~93_q\ : std_logic;
SIGNAL \RAM|ram~125_combout\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|dado_out[28]~60_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~386_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[28]~28_combout\ : std_logic;
SIGNAL \RAM|ram~94_q\ : std_logic;
SIGNAL \RAM|ram~126_combout\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|dado_out[29]~61_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~387_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[29]~29_combout\ : std_logic;
SIGNAL \RAM|ram~95_q\ : std_logic;
SIGNAL \RAM|ram~127_combout\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|dado_out[30]~62_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~388_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[30]~30_combout\ : std_logic;
SIGNAL \RAM|ram~96_q\ : std_logic;
SIGNAL \RAM|ram~128_combout\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|dado_out[31]~63_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~389_q\ : std_logic;
SIGNAL \BANCOREG|saidaB[31]~31_combout\ : std_logic;
SIGNAL \RAM|ram~97_q\ : std_logic;
SIGNAL \RAM|ram~129_combout\ : std_logic;
SIGNAL \Somador|Add0~18\ : std_logic;
SIGNAL \Somador|Add0~21_sumout\ : std_logic;
SIGNAL \Somador|Add0~22\ : std_logic;
SIGNAL \Somador|Add0~25_sumout\ : std_logic;
SIGNAL \Somador|Add0~26\ : std_logic;
SIGNAL \Somador|Add0~29_sumout\ : std_logic;
SIGNAL \Somador|Add0~30\ : std_logic;
SIGNAL \Somador|Add0~33_sumout\ : std_logic;
SIGNAL \Somador|Add0~34\ : std_logic;
SIGNAL \Somador|Add0~37_sumout\ : std_logic;
SIGNAL \Somador|Add0~38\ : std_logic;
SIGNAL \Somador|Add0~41_sumout\ : std_logic;
SIGNAL \Somador|Add0~42\ : std_logic;
SIGNAL \Somador|Add0~45_sumout\ : std_logic;
SIGNAL \Somador|Add0~46\ : std_logic;
SIGNAL \Somador|Add0~49_sumout\ : std_logic;
SIGNAL \Somador|Add0~50\ : std_logic;
SIGNAL \Somador|Add0~53_sumout\ : std_logic;
SIGNAL \Somador|Add0~54\ : std_logic;
SIGNAL \Somador|Add0~57_sumout\ : std_logic;
SIGNAL \Somador|Add0~58\ : std_logic;
SIGNAL \Somador|Add0~61_sumout\ : std_logic;
SIGNAL \Somador|Add0~62\ : std_logic;
SIGNAL \Somador|Add0~65_sumout\ : std_logic;
SIGNAL \Somador|Add0~66\ : std_logic;
SIGNAL \Somador|Add0~69_sumout\ : std_logic;
SIGNAL \Somador|Add0~70\ : std_logic;
SIGNAL \Somador|Add0~73_sumout\ : std_logic;
SIGNAL \Somador|Add0~74\ : std_logic;
SIGNAL \Somador|Add0~77_sumout\ : std_logic;
SIGNAL \Somador|Add0~78\ : std_logic;
SIGNAL \Somador|Add0~81_sumout\ : std_logic;
SIGNAL \Somador|Add0~82\ : std_logic;
SIGNAL \Somador|Add0~85_sumout\ : std_logic;
SIGNAL \Somador|Add0~86\ : std_logic;
SIGNAL \Somador|Add0~89_sumout\ : std_logic;
SIGNAL \Somador|Add0~90\ : std_logic;
SIGNAL \Somador|Add0~93_sumout\ : std_logic;
SIGNAL \Somador|Add0~94\ : std_logic;
SIGNAL \Somador|Add0~97_sumout\ : std_logic;
SIGNAL \Somador|Add0~98\ : std_logic;
SIGNAL \Somador|Add0~101_sumout\ : std_logic;
SIGNAL \Somador|Add0~102\ : std_logic;
SIGNAL \Somador|Add0~105_sumout\ : std_logic;
SIGNAL \Somador|Add0~106\ : std_logic;
SIGNAL \Somador|Add0~109_sumout\ : std_logic;
SIGNAL \Somador|Add0~110\ : std_logic;
SIGNAL \Somador|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \UnidadeControle|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~389_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~388_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~387_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~386_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~385_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~384_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~383_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~382_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~381_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~380_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~379_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~378_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~377_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~376_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~375_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~374_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~373_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~372_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~371_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~370_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~369_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~368_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~367_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~366_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~365_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~364_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~363_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~362_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~361_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~360_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~359_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~358_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
DadoLido <= ww_DadoLido;
DadoEscrito <= ww_DadoEscrito;
SaidaULA <= ww_SaidaULA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~97_q\ <= NOT \RAM|ram~97_q\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~96_q\ <= NOT \RAM|ram~96_q\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~95_q\ <= NOT \RAM|ram~95_q\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~94_q\ <= NOT \RAM|ram~94_q\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~93_q\ <= NOT \RAM|ram~93_q\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~92_q\ <= NOT \RAM|ram~92_q\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~91_q\ <= NOT \RAM|ram~91_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~90_q\ <= NOT \RAM|ram~90_q\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~89_q\ <= NOT \RAM|ram~89_q\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~88_q\ <= NOT \RAM|ram~88_q\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~87_q\ <= NOT \RAM|ram~87_q\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\RAM|ALT_INV_ram~86_q\ <= NOT \RAM|ram~86_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\RAM|ALT_INV_ram~85_q\ <= NOT \RAM|ram~85_q\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\RAM|ALT_INV_ram~84_q\ <= NOT \RAM|ram~84_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\RAM|ALT_INV_ram~83_q\ <= NOT \RAM|ram~83_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~82_q\ <= NOT \RAM|ram~82_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~81_q\ <= NOT \RAM|ram~81_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~80_q\ <= NOT \RAM|ram~80_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~79_q\ <= NOT \RAM|ram~79_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~78_q\ <= NOT \RAM|ram~78_q\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~77_q\ <= NOT \RAM|ram~77_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~76_q\ <= NOT \RAM|ram~76_q\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~75_q\ <= NOT \RAM|ram~75_q\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~74_q\ <= NOT \RAM|ram~74_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~73_q\ <= NOT \RAM|ram~73_q\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~72_q\ <= NOT \RAM|ram~72_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~71_q\ <= NOT \RAM|ram~71_q\;
\ULA|ALT_INV_Add0~1_sumout\ <= NOT \ULA|Add0~1_sumout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~70_q\ <= NOT \RAM|ram~70_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~69_q\ <= NOT \RAM|ram~69_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~68_q\ <= NOT \RAM|ram~68_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~67_q\ <= NOT \RAM|ram~67_q\;
\UnidadeControle|ALT_INV_Equal2~0_combout\ <= NOT \UnidadeControle|Equal2~0_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~66_q\ <= NOT \RAM|ram~66_q\;
\BANCOREG|ALT_INV_registrador~389_q\ <= NOT \BANCOREG|registrador~389_q\;
\BANCOREG|ALT_INV_registrador~388_q\ <= NOT \BANCOREG|registrador~388_q\;
\BANCOREG|ALT_INV_registrador~387_q\ <= NOT \BANCOREG|registrador~387_q\;
\BANCOREG|ALT_INV_registrador~386_q\ <= NOT \BANCOREG|registrador~386_q\;
\BANCOREG|ALT_INV_registrador~385_q\ <= NOT \BANCOREG|registrador~385_q\;
\BANCOREG|ALT_INV_registrador~384_q\ <= NOT \BANCOREG|registrador~384_q\;
\BANCOREG|ALT_INV_registrador~383_q\ <= NOT \BANCOREG|registrador~383_q\;
\BANCOREG|ALT_INV_registrador~382_q\ <= NOT \BANCOREG|registrador~382_q\;
\BANCOREG|ALT_INV_registrador~381_q\ <= NOT \BANCOREG|registrador~381_q\;
\BANCOREG|ALT_INV_registrador~380_q\ <= NOT \BANCOREG|registrador~380_q\;
\BANCOREG|ALT_INV_registrador~379_q\ <= NOT \BANCOREG|registrador~379_q\;
\BANCOREG|ALT_INV_registrador~378_q\ <= NOT \BANCOREG|registrador~378_q\;
\BANCOREG|ALT_INV_registrador~377_q\ <= NOT \BANCOREG|registrador~377_q\;
\BANCOREG|ALT_INV_registrador~376_q\ <= NOT \BANCOREG|registrador~376_q\;
\BANCOREG|ALT_INV_registrador~375_q\ <= NOT \BANCOREG|registrador~375_q\;
\BANCOREG|ALT_INV_registrador~374_q\ <= NOT \BANCOREG|registrador~374_q\;
\BANCOREG|ALT_INV_registrador~373_q\ <= NOT \BANCOREG|registrador~373_q\;
\BANCOREG|ALT_INV_registrador~372_q\ <= NOT \BANCOREG|registrador~372_q\;
\BANCOREG|ALT_INV_registrador~371_q\ <= NOT \BANCOREG|registrador~371_q\;
\BANCOREG|ALT_INV_registrador~370_q\ <= NOT \BANCOREG|registrador~370_q\;
\BANCOREG|ALT_INV_registrador~369_q\ <= NOT \BANCOREG|registrador~369_q\;
\BANCOREG|ALT_INV_registrador~368_q\ <= NOT \BANCOREG|registrador~368_q\;
\BANCOREG|ALT_INV_registrador~367_q\ <= NOT \BANCOREG|registrador~367_q\;
\BANCOREG|ALT_INV_registrador~366_q\ <= NOT \BANCOREG|registrador~366_q\;
\BANCOREG|ALT_INV_registrador~365_q\ <= NOT \BANCOREG|registrador~365_q\;
\BANCOREG|ALT_INV_registrador~364_q\ <= NOT \BANCOREG|registrador~364_q\;
\BANCOREG|ALT_INV_registrador~363_q\ <= NOT \BANCOREG|registrador~363_q\;
\BANCOREG|ALT_INV_registrador~362_q\ <= NOT \BANCOREG|registrador~362_q\;
\BANCOREG|ALT_INV_registrador~361_q\ <= NOT \BANCOREG|registrador~361_q\;
\BANCOREG|ALT_INV_registrador~360_q\ <= NOT \BANCOREG|registrador~360_q\;
\BANCOREG|ALT_INV_registrador~359_q\ <= NOT \BANCOREG|registrador~359_q\;
\BANCOREG|ALT_INV_registrador~358_q\ <= NOT \BANCOREG|registrador~358_q\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);

\DadoLido[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~98_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[0]~output_o\);

\DadoLido[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~99_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[1]~output_o\);

\DadoLido[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~100_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[2]~output_o\);

\DadoLido[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~101_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[3]~output_o\);

\DadoLido[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~102_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[4]~output_o\);

\DadoLido[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~103_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[5]~output_o\);

\DadoLido[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~104_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[6]~output_o\);

\DadoLido[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~105_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[7]~output_o\);

\DadoLido[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~106_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[8]~output_o\);

\DadoLido[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~107_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[9]~output_o\);

\DadoLido[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~108_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[10]~output_o\);

\DadoLido[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~109_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[11]~output_o\);

\DadoLido[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~110_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[12]~output_o\);

\DadoLido[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~111_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[13]~output_o\);

\DadoLido[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~112_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[14]~output_o\);

\DadoLido[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~113_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[15]~output_o\);

\DadoLido[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~114_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[16]~output_o\);

\DadoLido[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~115_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[17]~output_o\);

\DadoLido[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~116_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[18]~output_o\);

\DadoLido[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~117_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[19]~output_o\);

\DadoLido[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~118_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[20]~output_o\);

\DadoLido[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~119_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[21]~output_o\);

\DadoLido[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~120_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[22]~output_o\);

\DadoLido[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~121_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[23]~output_o\);

\DadoLido[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~122_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[24]~output_o\);

\DadoLido[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~123_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[25]~output_o\);

\DadoLido[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~124_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[26]~output_o\);

\DadoLido[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~125_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[27]~output_o\);

\DadoLido[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~126_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[28]~output_o\);

\DadoLido[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~127_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[29]~output_o\);

\DadoLido[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~128_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[30]~output_o\);

\DadoLido[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~129_combout\,
	oe => \UnidadeControle|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \DadoLido[31]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

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
	o => \PC_OUT[2]~output_o\);

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
	o => \PC_OUT[3]~output_o\);

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
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

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
	o => \PC_OUT[8]~output_o\);

\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => \PC_OUT[9]~output_o\);

\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => \PC_OUT[10]~output_o\);

\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => \PC_OUT[11]~output_o\);

\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PC_OUT[12]~output_o\);

\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => \PC_OUT[13]~output_o\);

\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => \PC_OUT[14]~output_o\);

\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => \PC_OUT[15]~output_o\);

\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => \PC_OUT[16]~output_o\);

\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => \PC_OUT[17]~output_o\);

\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => \PC_OUT[18]~output_o\);

\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => \PC_OUT[19]~output_o\);

\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => \PC_OUT[20]~output_o\);

\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => \PC_OUT[21]~output_o\);

\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => \PC_OUT[22]~output_o\);

\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => \PC_OUT[23]~output_o\);

\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => \PC_OUT[24]~output_o\);

\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => \PC_OUT[25]~output_o\);

\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => \PC_OUT[26]~output_o\);

\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => \PC_OUT[27]~output_o\);

\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => \PC_OUT[28]~output_o\);

\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => \PC_OUT[29]~output_o\);

\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => \PC_OUT[30]~output_o\);

\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => \PC_OUT[31]~output_o\);

\DadoEscrito[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[0]~output_o\);

\DadoEscrito[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[1]~output_o\);

\DadoEscrito[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[2]~output_o\);

\DadoEscrito[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[3]~output_o\);

\DadoEscrito[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[4]~output_o\);

\DadoEscrito[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[5]~output_o\);

\DadoEscrito[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[6]~output_o\);

\DadoEscrito[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[7]~output_o\);

\DadoEscrito[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[8]~output_o\);

\DadoEscrito[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[9]~output_o\);

\DadoEscrito[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[10]~output_o\);

\DadoEscrito[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[11]~output_o\);

\DadoEscrito[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[12]~output_o\);

\DadoEscrito[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[13]~output_o\);

\DadoEscrito[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[14]~output_o\);

\DadoEscrito[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[15]~output_o\);

\DadoEscrito[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[16]~output_o\);

\DadoEscrito[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[17]~output_o\);

\DadoEscrito[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[18]~output_o\);

\DadoEscrito[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[19]~output_o\);

\DadoEscrito[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[20]~output_o\);

\DadoEscrito[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[21]~output_o\);

\DadoEscrito[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[22]~output_o\);

\DadoEscrito[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[23]~output_o\);

\DadoEscrito[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[24]~output_o\);

\DadoEscrito[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[25]~output_o\);

\DadoEscrito[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[26]~output_o\);

\DadoEscrito[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[27]~output_o\);

\DadoEscrito[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[28]~output_o\);

\DadoEscrito[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[29]~output_o\);

\DadoEscrito[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[30]~output_o\);

\DadoEscrito[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => \DadoEscrito[31]~output_o\);

\SaidaULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[0]~output_o\);

\SaidaULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[1]~output_o\);

\SaidaULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[2]~output_o\);

\SaidaULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[3]~output_o\);

\SaidaULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[4]~output_o\);

\SaidaULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[5]~output_o\);

\SaidaULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[6]~output_o\);

\SaidaULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[7]~output_o\);

\SaidaULA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[8]~output_o\);

\SaidaULA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[9]~output_o\);

\SaidaULA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[10]~output_o\);

\SaidaULA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[11]~output_o\);

\SaidaULA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[12]~output_o\);

\SaidaULA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[13]~output_o\);

\SaidaULA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[14]~output_o\);

\SaidaULA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[15]~output_o\);

\SaidaULA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[16]~output_o\);

\SaidaULA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[17]~output_o\);

\SaidaULA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[18]~output_o\);

\SaidaULA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[19]~output_o\);

\SaidaULA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[20]~output_o\);

\SaidaULA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[21]~output_o\);

\SaidaULA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[22]~output_o\);

\SaidaULA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[23]~output_o\);

\SaidaULA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[24]~output_o\);

\SaidaULA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[25]~output_o\);

\SaidaULA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[26]~output_o\);

\SaidaULA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[27]~output_o\);

\SaidaULA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[28]~output_o\);

\SaidaULA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[29]~output_o\);

\SaidaULA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~121_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[30]~output_o\);

\SaidaULA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~125_sumout\,
	devoe => ww_devoe,
	o => \SaidaULA[31]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = !\PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\Somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~1_sumout\ = SUM(( \PC|DOUT\(3) ) + ( \PC|DOUT\(2) ) + ( !VCC ))
-- \Somador|Add0~2\ = CARRY(( \PC|DOUT\(3) ) + ( \PC|DOUT\(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	dataf => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \Somador|Add0~1_sumout\,
	cout => \Somador|Add0~2\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\Somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~5_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \Somador|Add0~2\ ))
-- \Somador|Add0~6\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \Somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \Somador|Add0~2\,
	sumout => \Somador|Add0~5_sumout\,
	cout => \Somador|Add0~6\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\Somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \Somador|Add0~6\ ))
-- \Somador|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \Somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \Somador|Add0~6\,
	sumout => \Somador|Add0~9_sumout\,
	cout => \Somador|Add0~10\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\Somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~13_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \Somador|Add0~10\ ))
-- \Somador|Add0~14\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \Somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \Somador|Add0~10\,
	sumout => \Somador|Add0~13_sumout\,
	cout => \Somador|Add0~14\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\Somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~14\ ))
-- \Somador|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \Somador|Add0~14\,
	sumout => \Somador|Add0~17_sumout\,
	cout => \Somador|Add0~18\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & !\PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(6),
	datae => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~0_combout\);

\BANCOREG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[0]~0_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & !\BANCOREG|registrador~358_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~358_q\,
	combout => \BANCOREG|saidaB[0]~0_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

\RAM|ram~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~130_combout\ = (\ROM|memROM~1_combout\ & \ULA|Add0~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \RAM|ram~130_combout\);

\RAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[0]~0_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~66_q\);

\RAM|ram~131\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~131_combout\ = (\ROM|memROM~1_combout\ & !\ULA|Add0~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ULA|ALT_INV_Add0~1_sumout\,
	combout => \RAM|ram~131_combout\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[0]~0_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\UnidadeControle|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UnidadeControle|Equal2~0_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(6),
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \UnidadeControle|Equal2~0_combout\);

\RAM|dado_out[0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~32_combout\ = (\UnidadeControle|Equal2~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((!\RAM|ram~34_q\))) # (\ULA|Add0~1_sumout\ & (!\RAM|ram~66_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100000000001110010000000000111001000000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~66_q\,
	datac => \RAM|ALT_INV_ram~34_q\,
	datad => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	combout => \RAM|dado_out[0]~32_combout\);

\BANCOREG|registrador~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[0]~32_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~358_q\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( (\ROM|memROM~0_combout\ & !\BANCOREG|registrador~358_q\) ) + ( (!\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( (\ROM|memROM~0_combout\ & !\BANCOREG|registrador~358_q\) ) + ( (!\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~358_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\RAM|ram~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~98_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~34_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~66_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~66_q\,
	datac => \RAM|ALT_INV_ram~34_q\,
	combout => \RAM|ram~98_combout\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[1]~1_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|dado_out[1]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~33_combout\ = (\UnidadeControle|Equal2~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((!\RAM|ram~35_q\))) # (\ULA|Add0~1_sumout\ & (!\RAM|ram~67_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~67_q\,
	datad => \RAM|ALT_INV_ram~35_q\,
	combout => \RAM|dado_out[1]~33_combout\);

\BANCOREG|registrador~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[1]~33_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~359_q\);

\BANCOREG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[1]~1_combout\ = (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (!\BANCOREG|registrador~359_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~359_q\,
	combout => \BANCOREG|saidaB[1]~1_combout\);

\RAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[1]~1_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~67_q\);

\RAM|ram~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~99_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~35_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~67_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~67_q\,
	datac => \RAM|ALT_INV_ram~35_q\,
	combout => \RAM|ram~99_combout\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[2]~2_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|dado_out[2]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~34_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~36_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~68_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~68_q\,
	datad => \RAM|ALT_INV_ram~36_q\,
	combout => \RAM|dado_out[2]~34_combout\);

\BANCOREG|registrador~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[2]~34_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~360_q\);

\BANCOREG|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[2]~2_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~360_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~360_q\,
	combout => \BANCOREG|saidaB[2]~2_combout\);

\RAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[2]~2_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~68_q\);

\RAM|ram~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~100_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~36_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~68_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~68_q\,
	datac => \RAM|ALT_INV_ram~36_q\,
	combout => \RAM|ram~100_combout\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[3]~3_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|dado_out[3]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~35_combout\ = (\UnidadeControle|Equal2~0_combout\ & ((!\ULA|Add0~1_sumout\ & ((!\RAM|ram~37_q\))) # (\ULA|Add0~1_sumout\ & (!\RAM|ram~69_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000110010000100000011001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~69_q\,
	datad => \RAM|ALT_INV_ram~37_q\,
	combout => \RAM|dado_out[3]~35_combout\);

\BANCOREG|registrador~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[3]~35_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~361_q\);

\BANCOREG|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[3]~3_combout\ = (\ROM|memROM~0_combout\ & ((!\PC|DOUT\(2)) # (!\BANCOREG|registrador~361_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100100011001000110010001100100011001000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~361_q\,
	combout => \BANCOREG|saidaB[3]~3_combout\);

\RAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[3]~3_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~69_q\);

\RAM|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~101_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~37_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~69_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~69_q\,
	datac => \RAM|ALT_INV_ram~37_q\,
	combout => \RAM|ram~101_combout\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[4]~4_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|dado_out[4]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~36_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~38_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~70_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~70_q\,
	datad => \RAM|ALT_INV_ram~38_q\,
	combout => \RAM|dado_out[4]~36_combout\);

\BANCOREG|registrador~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[4]~36_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~362_q\);

\BANCOREG|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[4]~4_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~362_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~362_q\,
	combout => \BANCOREG|saidaB[4]~4_combout\);

\RAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[4]~4_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~70_q\);

\RAM|ram~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~102_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~38_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~70_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~70_q\,
	datac => \RAM|ALT_INV_ram~38_q\,
	combout => \RAM|ram~102_combout\);

\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[5]~5_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

\RAM|dado_out[5]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~37_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~39_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~71_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~71_q\,
	datad => \RAM|ALT_INV_ram~39_q\,
	combout => \RAM|dado_out[5]~37_combout\);

\BANCOREG|registrador~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[5]~37_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~363_q\);

\BANCOREG|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[5]~5_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~363_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~363_q\,
	combout => \BANCOREG|saidaB[5]~5_combout\);

\RAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[5]~5_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~71_q\);

\RAM|ram~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~103_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~39_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~71_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~71_q\,
	datac => \RAM|ALT_INV_ram~39_q\,
	combout => \RAM|ram~103_combout\);

\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[6]~6_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

\RAM|dado_out[6]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~38_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~40_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~72_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~72_q\,
	datad => \RAM|ALT_INV_ram~40_q\,
	combout => \RAM|dado_out[6]~38_combout\);

\BANCOREG|registrador~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[6]~38_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~364_q\);

\BANCOREG|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[6]~6_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~364_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~364_q\,
	combout => \BANCOREG|saidaB[6]~6_combout\);

\RAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[6]~6_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~72_q\);

\RAM|ram~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~104_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~40_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~72_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~72_q\,
	datac => \RAM|ALT_INV_ram~40_q\,
	combout => \RAM|ram~104_combout\);

\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[7]~7_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

\RAM|dado_out[7]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~39_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~41_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~73_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~73_q\,
	datad => \RAM|ALT_INV_ram~41_q\,
	combout => \RAM|dado_out[7]~39_combout\);

\BANCOREG|registrador~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[7]~39_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~365_q\);

\BANCOREG|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[7]~7_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~365_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~365_q\,
	combout => \BANCOREG|saidaB[7]~7_combout\);

\RAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[7]~7_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~73_q\);

\RAM|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~105_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~41_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~73_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~73_q\,
	datac => \RAM|ALT_INV_ram~41_q\,
	combout => \RAM|ram~105_combout\);

\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[8]~8_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

\RAM|dado_out[8]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[8]~40_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~42_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~74_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~74_q\,
	datad => \RAM|ALT_INV_ram~42_q\,
	combout => \RAM|dado_out[8]~40_combout\);

\BANCOREG|registrador~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[8]~40_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~366_q\);

\BANCOREG|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[8]~8_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~366_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~366_q\,
	combout => \BANCOREG|saidaB[8]~8_combout\);

\RAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[8]~8_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~74_q\);

\RAM|ram~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~106_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~42_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~74_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~74_q\,
	datac => \RAM|ALT_INV_ram~42_q\,
	combout => \RAM|ram~106_combout\);

\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[9]~9_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

\RAM|dado_out[9]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[9]~41_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~43_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~75_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~75_q\,
	datad => \RAM|ALT_INV_ram~43_q\,
	combout => \RAM|dado_out[9]~41_combout\);

\BANCOREG|registrador~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[9]~41_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~367_q\);

\BANCOREG|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[9]~9_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~367_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~367_q\,
	combout => \BANCOREG|saidaB[9]~9_combout\);

\RAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[9]~9_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~75_q\);

\RAM|ram~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~107_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~43_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~75_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~75_q\,
	datac => \RAM|ALT_INV_ram~43_q\,
	combout => \RAM|ram~107_combout\);

\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[10]~10_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

\RAM|dado_out[10]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[10]~42_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~44_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~76_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~76_q\,
	datad => \RAM|ALT_INV_ram~44_q\,
	combout => \RAM|dado_out[10]~42_combout\);

\BANCOREG|registrador~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[10]~42_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~368_q\);

\BANCOREG|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[10]~10_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~368_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~368_q\,
	combout => \BANCOREG|saidaB[10]~10_combout\);

\RAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[10]~10_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~76_q\);

\RAM|ram~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~108_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~44_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~76_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~76_q\,
	datac => \RAM|ALT_INV_ram~44_q\,
	combout => \RAM|ram~108_combout\);

\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[11]~11_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

\RAM|dado_out[11]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[11]~43_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~45_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~77_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~77_q\,
	datad => \RAM|ALT_INV_ram~45_q\,
	combout => \RAM|dado_out[11]~43_combout\);

\BANCOREG|registrador~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[11]~43_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~369_q\);

\BANCOREG|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[11]~11_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~369_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~369_q\,
	combout => \BANCOREG|saidaB[11]~11_combout\);

\RAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[11]~11_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~77_q\);

\RAM|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~109_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~45_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~77_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~77_q\,
	datac => \RAM|ALT_INV_ram~45_q\,
	combout => \RAM|ram~109_combout\);

\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[12]~12_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

\RAM|dado_out[12]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[12]~44_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~46_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~78_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~78_q\,
	datad => \RAM|ALT_INV_ram~46_q\,
	combout => \RAM|dado_out[12]~44_combout\);

\BANCOREG|registrador~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[12]~44_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~370_q\);

\BANCOREG|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[12]~12_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~370_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~370_q\,
	combout => \BANCOREG|saidaB[12]~12_combout\);

\RAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[12]~12_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~78_q\);

\RAM|ram~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~110_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~46_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~78_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~78_q\,
	datac => \RAM|ALT_INV_ram~46_q\,
	combout => \RAM|ram~110_combout\);

\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[13]~13_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

\RAM|dado_out[13]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[13]~45_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~47_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~79_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~79_q\,
	datad => \RAM|ALT_INV_ram~47_q\,
	combout => \RAM|dado_out[13]~45_combout\);

\BANCOREG|registrador~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[13]~45_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~371_q\);

\BANCOREG|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[13]~13_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~371_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~371_q\,
	combout => \BANCOREG|saidaB[13]~13_combout\);

\RAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[13]~13_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~79_q\);

\RAM|ram~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~111_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~47_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~79_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~79_q\,
	datac => \RAM|ALT_INV_ram~47_q\,
	combout => \RAM|ram~111_combout\);

\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[14]~14_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

\RAM|dado_out[14]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[14]~46_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~48_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~80_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~80_q\,
	datad => \RAM|ALT_INV_ram~48_q\,
	combout => \RAM|dado_out[14]~46_combout\);

\BANCOREG|registrador~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[14]~46_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~372_q\);

\BANCOREG|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[14]~14_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~372_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~372_q\,
	combout => \BANCOREG|saidaB[14]~14_combout\);

\RAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[14]~14_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~80_q\);

\RAM|ram~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~112_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~48_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~80_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~80_q\,
	datac => \RAM|ALT_INV_ram~48_q\,
	combout => \RAM|ram~112_combout\);

\RAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[15]~15_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~49_q\);

\RAM|dado_out[15]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[15]~47_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~49_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~81_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~81_q\,
	datad => \RAM|ALT_INV_ram~49_q\,
	combout => \RAM|dado_out[15]~47_combout\);

\BANCOREG|registrador~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[15]~47_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~373_q\);

\BANCOREG|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[15]~15_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~373_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~373_q\,
	combout => \BANCOREG|saidaB[15]~15_combout\);

\RAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[15]~15_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~81_q\);

\RAM|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~113_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~49_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~81_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~81_q\,
	datac => \RAM|ALT_INV_ram~49_q\,
	combout => \RAM|ram~113_combout\);

\RAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[16]~16_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~50_q\);

\RAM|dado_out[16]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[16]~48_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~50_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~82_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~82_q\,
	datad => \RAM|ALT_INV_ram~50_q\,
	combout => \RAM|dado_out[16]~48_combout\);

\BANCOREG|registrador~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[16]~48_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~374_q\);

\BANCOREG|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[16]~16_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~374_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~374_q\,
	combout => \BANCOREG|saidaB[16]~16_combout\);

\RAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[16]~16_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~82_q\);

\RAM|ram~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~114_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~50_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~82_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~82_q\,
	datac => \RAM|ALT_INV_ram~50_q\,
	combout => \RAM|ram~114_combout\);

\RAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[17]~17_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~51_q\);

\RAM|dado_out[17]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[17]~49_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~51_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~83_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~83_q\,
	datad => \RAM|ALT_INV_ram~51_q\,
	combout => \RAM|dado_out[17]~49_combout\);

\BANCOREG|registrador~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[17]~49_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~375_q\);

\BANCOREG|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[17]~17_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~375_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~375_q\,
	combout => \BANCOREG|saidaB[17]~17_combout\);

\RAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[17]~17_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~83_q\);

\RAM|ram~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~115_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~51_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~83_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~83_q\,
	datac => \RAM|ALT_INV_ram~51_q\,
	combout => \RAM|ram~115_combout\);

\RAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[18]~18_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~52_q\);

\RAM|dado_out[18]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[18]~50_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~52_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~84_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~84_q\,
	datad => \RAM|ALT_INV_ram~52_q\,
	combout => \RAM|dado_out[18]~50_combout\);

\BANCOREG|registrador~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[18]~50_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~376_q\);

\BANCOREG|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[18]~18_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~376_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~376_q\,
	combout => \BANCOREG|saidaB[18]~18_combout\);

\RAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[18]~18_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~84_q\);

\RAM|ram~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~116_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~52_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~84_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~84_q\,
	datac => \RAM|ALT_INV_ram~52_q\,
	combout => \RAM|ram~116_combout\);

\RAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[19]~19_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~53_q\);

\RAM|dado_out[19]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[19]~51_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~53_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~85_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~85_q\,
	datad => \RAM|ALT_INV_ram~53_q\,
	combout => \RAM|dado_out[19]~51_combout\);

\BANCOREG|registrador~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[19]~51_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~377_q\);

\BANCOREG|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[19]~19_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~377_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~377_q\,
	combout => \BANCOREG|saidaB[19]~19_combout\);

\RAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[19]~19_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~85_q\);

\RAM|ram~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~117_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~53_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~85_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~85_q\,
	datac => \RAM|ALT_INV_ram~53_q\,
	combout => \RAM|ram~117_combout\);

\RAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[20]~20_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~54_q\);

\RAM|dado_out[20]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[20]~52_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~54_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~86_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~86_q\,
	datad => \RAM|ALT_INV_ram~54_q\,
	combout => \RAM|dado_out[20]~52_combout\);

\BANCOREG|registrador~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[20]~52_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~378_q\);

\BANCOREG|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[20]~20_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~378_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~378_q\,
	combout => \BANCOREG|saidaB[20]~20_combout\);

\RAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[20]~20_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~86_q\);

\RAM|ram~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~118_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~54_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~86_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~86_q\,
	datac => \RAM|ALT_INV_ram~54_q\,
	combout => \RAM|ram~118_combout\);

\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[21]~21_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

\RAM|dado_out[21]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[21]~53_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~55_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~87_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~87_q\,
	datad => \RAM|ALT_INV_ram~55_q\,
	combout => \RAM|dado_out[21]~53_combout\);

\BANCOREG|registrador~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[21]~53_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~379_q\);

\BANCOREG|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[21]~21_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~379_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~379_q\,
	combout => \BANCOREG|saidaB[21]~21_combout\);

\RAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[21]~21_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~87_q\);

\RAM|ram~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~119_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~55_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~87_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~87_q\,
	datac => \RAM|ALT_INV_ram~55_q\,
	combout => \RAM|ram~119_combout\);

\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[22]~22_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

\RAM|dado_out[22]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[22]~54_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~56_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~88_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~88_q\,
	datad => \RAM|ALT_INV_ram~56_q\,
	combout => \RAM|dado_out[22]~54_combout\);

\BANCOREG|registrador~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[22]~54_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~380_q\);

\BANCOREG|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[22]~22_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~380_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~380_q\,
	combout => \BANCOREG|saidaB[22]~22_combout\);

\RAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[22]~22_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~88_q\);

\RAM|ram~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~120_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~56_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~88_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~88_q\,
	datac => \RAM|ALT_INV_ram~56_q\,
	combout => \RAM|ram~120_combout\);

\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[23]~23_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

\RAM|dado_out[23]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[23]~55_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~57_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~89_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~89_q\,
	datad => \RAM|ALT_INV_ram~57_q\,
	combout => \RAM|dado_out[23]~55_combout\);

\BANCOREG|registrador~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[23]~55_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~381_q\);

\BANCOREG|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[23]~23_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~381_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~381_q\,
	combout => \BANCOREG|saidaB[23]~23_combout\);

\RAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[23]~23_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~89_q\);

\RAM|ram~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~121_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~57_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~89_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~89_q\,
	datac => \RAM|ALT_INV_ram~57_q\,
	combout => \RAM|ram~121_combout\);

\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[24]~24_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

\RAM|dado_out[24]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[24]~56_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~58_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~90_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~90_q\,
	datad => \RAM|ALT_INV_ram~58_q\,
	combout => \RAM|dado_out[24]~56_combout\);

\BANCOREG|registrador~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[24]~56_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~382_q\);

\BANCOREG|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[24]~24_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~382_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~382_q\,
	combout => \BANCOREG|saidaB[24]~24_combout\);

\RAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[24]~24_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~90_q\);

\RAM|ram~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~122_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~58_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~90_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~90_q\,
	datac => \RAM|ALT_INV_ram~58_q\,
	combout => \RAM|ram~122_combout\);

\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[25]~25_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

\RAM|dado_out[25]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[25]~57_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~59_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~91_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~91_q\,
	datad => \RAM|ALT_INV_ram~59_q\,
	combout => \RAM|dado_out[25]~57_combout\);

\BANCOREG|registrador~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[25]~57_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~383_q\);

\BANCOREG|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[25]~25_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~383_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~383_q\,
	combout => \BANCOREG|saidaB[25]~25_combout\);

\RAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[25]~25_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~91_q\);

\RAM|ram~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~123_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~59_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~91_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~91_q\,
	datac => \RAM|ALT_INV_ram~59_q\,
	combout => \RAM|ram~123_combout\);

\RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[26]~26_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

\RAM|dado_out[26]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[26]~58_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~60_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~92_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~92_q\,
	datad => \RAM|ALT_INV_ram~60_q\,
	combout => \RAM|dado_out[26]~58_combout\);

\BANCOREG|registrador~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[26]~58_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~384_q\);

\BANCOREG|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[26]~26_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~384_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~384_q\,
	combout => \BANCOREG|saidaB[26]~26_combout\);

\RAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[26]~26_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~92_q\);

\RAM|ram~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~124_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~60_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~92_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~92_q\,
	datac => \RAM|ALT_INV_ram~60_q\,
	combout => \RAM|ram~124_combout\);

\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[27]~27_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

\RAM|dado_out[27]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[27]~59_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~61_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~93_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~93_q\,
	datad => \RAM|ALT_INV_ram~61_q\,
	combout => \RAM|dado_out[27]~59_combout\);

\BANCOREG|registrador~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[27]~59_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~385_q\);

\BANCOREG|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[27]~27_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~385_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~385_q\,
	combout => \BANCOREG|saidaB[27]~27_combout\);

\RAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[27]~27_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~93_q\);

\RAM|ram~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~125_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~61_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~93_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~93_q\,
	datac => \RAM|ALT_INV_ram~61_q\,
	combout => \RAM|ram~125_combout\);

\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[28]~28_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

\RAM|dado_out[28]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[28]~60_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~62_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~94_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~94_q\,
	datad => \RAM|ALT_INV_ram~62_q\,
	combout => \RAM|dado_out[28]~60_combout\);

\BANCOREG|registrador~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[28]~60_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~386_q\);

\BANCOREG|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[28]~28_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~386_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~386_q\,
	combout => \BANCOREG|saidaB[28]~28_combout\);

\RAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[28]~28_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~94_q\);

\RAM|ram~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~126_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~62_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~94_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~94_q\,
	datac => \RAM|ALT_INV_ram~62_q\,
	combout => \RAM|ram~126_combout\);

\RAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[29]~29_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~63_q\);

\RAM|dado_out[29]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[29]~61_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~63_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~95_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~95_q\,
	datad => \RAM|ALT_INV_ram~63_q\,
	combout => \RAM|dado_out[29]~61_combout\);

\BANCOREG|registrador~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[29]~61_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~387_q\);

\BANCOREG|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[29]~29_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~387_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~387_q\,
	combout => \BANCOREG|saidaB[29]~29_combout\);

\RAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[29]~29_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~95_q\);

\RAM|ram~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~127_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~63_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~95_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~95_q\,
	datac => \RAM|ALT_INV_ram~63_q\,
	combout => \RAM|ram~127_combout\);

\RAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[30]~30_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~64_q\);

\RAM|dado_out[30]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[30]~62_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~64_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~96_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~96_q\,
	datad => \RAM|ALT_INV_ram~64_q\,
	combout => \RAM|dado_out[30]~62_combout\);

\BANCOREG|registrador~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[30]~62_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~388_q\);

\BANCOREG|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[30]~30_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~388_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~388_q\,
	combout => \BANCOREG|saidaB[30]~30_combout\);

\RAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[30]~30_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~96_q\);

\RAM|ram~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~128_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~64_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~96_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~96_q\,
	datac => \RAM|ALT_INV_ram~64_q\,
	combout => \RAM|ram~128_combout\);

\RAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[31]~31_combout\,
	ena => \RAM|ram~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~65_q\);

\RAM|dado_out[31]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[31]~63_combout\ = (!\UnidadeControle|Equal2~0_combout\) # ((!\ULA|Add0~1_sumout\ & ((\RAM|ram~65_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~97_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111101111110011011110111111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	datac => \RAM|ALT_INV_ram~97_q\,
	datad => \RAM|ALT_INV_ram~65_q\,
	combout => \RAM|dado_out[31]~63_combout\);

\BANCOREG|registrador~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[31]~63_combout\,
	ena => \UnidadeControle|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~389_q\);

\BANCOREG|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[31]~31_combout\ = (\PC|DOUT\(2) & (\ROM|memROM~0_combout\ & \BANCOREG|registrador~389_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~389_q\,
	combout => \BANCOREG|saidaB[31]~31_combout\);

\RAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|saidaB[31]~31_combout\,
	ena => \RAM|ram~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~97_q\);

\RAM|ram~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~129_combout\ = (!\ULA|Add0~1_sumout\ & ((\RAM|ram~65_q\))) # (\ULA|Add0~1_sumout\ & (\RAM|ram~97_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add0~1_sumout\,
	datab => \RAM|ALT_INV_ram~97_q\,
	datac => \RAM|ALT_INV_ram~65_q\,
	combout => \RAM|ram~129_combout\);

\Somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~21_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \Somador|Add0~18\ ))
-- \Somador|Add0~22\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \Somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \Somador|Add0~18\,
	sumout => \Somador|Add0~21_sumout\,
	cout => \Somador|Add0~22\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\Somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~25_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \Somador|Add0~22\ ))
-- \Somador|Add0~26\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \Somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \Somador|Add0~22\,
	sumout => \Somador|Add0~25_sumout\,
	cout => \Somador|Add0~26\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\Somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~29_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~26\ ))
-- \Somador|Add0~30\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \Somador|Add0~26\,
	sumout => \Somador|Add0~29_sumout\,
	cout => \Somador|Add0~30\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\Somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~33_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~30\ ))
-- \Somador|Add0~34\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \Somador|Add0~30\,
	sumout => \Somador|Add0~33_sumout\,
	cout => \Somador|Add0~34\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\Somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~37_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \Somador|Add0~34\ ))
-- \Somador|Add0~38\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \Somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \Somador|Add0~34\,
	sumout => \Somador|Add0~37_sumout\,
	cout => \Somador|Add0~38\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\Somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~41_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \Somador|Add0~38\ ))
-- \Somador|Add0~42\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \Somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \Somador|Add0~38\,
	sumout => \Somador|Add0~41_sumout\,
	cout => \Somador|Add0~42\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\Somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~45_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \Somador|Add0~42\ ))
-- \Somador|Add0~46\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \Somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \Somador|Add0~42\,
	sumout => \Somador|Add0~45_sumout\,
	cout => \Somador|Add0~46\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\Somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~49_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \Somador|Add0~46\ ))
-- \Somador|Add0~50\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \Somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \Somador|Add0~46\,
	sumout => \Somador|Add0~49_sumout\,
	cout => \Somador|Add0~50\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\Somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~53_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \Somador|Add0~50\ ))
-- \Somador|Add0~54\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \Somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \Somador|Add0~50\,
	sumout => \Somador|Add0~53_sumout\,
	cout => \Somador|Add0~54\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\Somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~57_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \Somador|Add0~54\ ))
-- \Somador|Add0~58\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \Somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \Somador|Add0~54\,
	sumout => \Somador|Add0~57_sumout\,
	cout => \Somador|Add0~58\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\Somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~61_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \Somador|Add0~58\ ))
-- \Somador|Add0~62\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \Somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \Somador|Add0~58\,
	sumout => \Somador|Add0~61_sumout\,
	cout => \Somador|Add0~62\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\Somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~65_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \Somador|Add0~62\ ))
-- \Somador|Add0~66\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \Somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \Somador|Add0~62\,
	sumout => \Somador|Add0~65_sumout\,
	cout => \Somador|Add0~66\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\Somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~69_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \Somador|Add0~66\ ))
-- \Somador|Add0~70\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \Somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \Somador|Add0~66\,
	sumout => \Somador|Add0~69_sumout\,
	cout => \Somador|Add0~70\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\Somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~73_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \Somador|Add0~70\ ))
-- \Somador|Add0~74\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \Somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \Somador|Add0~70\,
	sumout => \Somador|Add0~73_sumout\,
	cout => \Somador|Add0~74\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\Somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~77_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~74\ ))
-- \Somador|Add0~78\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \Somador|Add0~74\,
	sumout => \Somador|Add0~77_sumout\,
	cout => \Somador|Add0~78\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\Somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~81_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~78\ ))
-- \Somador|Add0~82\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \Somador|Add0~78\,
	sumout => \Somador|Add0~81_sumout\,
	cout => \Somador|Add0~82\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\Somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~85_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \Somador|Add0~82\ ))
-- \Somador|Add0~86\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \Somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \Somador|Add0~82\,
	sumout => \Somador|Add0~85_sumout\,
	cout => \Somador|Add0~86\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\Somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~89_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~86\ ))
-- \Somador|Add0~90\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \Somador|Add0~86\,
	sumout => \Somador|Add0~89_sumout\,
	cout => \Somador|Add0~90\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\Somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~93_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \Somador|Add0~90\ ))
-- \Somador|Add0~94\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \Somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \Somador|Add0~90\,
	sumout => \Somador|Add0~93_sumout\,
	cout => \Somador|Add0~94\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\Somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~97_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \Somador|Add0~94\ ))
-- \Somador|Add0~98\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \Somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \Somador|Add0~94\,
	sumout => \Somador|Add0~97_sumout\,
	cout => \Somador|Add0~98\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\Somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~101_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \Somador|Add0~98\ ))
-- \Somador|Add0~102\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \Somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \Somador|Add0~98\,
	sumout => \Somador|Add0~101_sumout\,
	cout => \Somador|Add0~102\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\Somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~105_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~102\ ))
-- \Somador|Add0~106\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \Somador|Add0~102\,
	sumout => \Somador|Add0~105_sumout\,
	cout => \Somador|Add0~106\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\Somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~109_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~106\ ))
-- \Somador|Add0~110\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \Somador|Add0~106\,
	sumout => \Somador|Add0~109_sumout\,
	cout => \Somador|Add0~110\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\Somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~113_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \Somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \Somador|Add0~110\,
	sumout => \Somador|Add0~113_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Somador|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( (\ROM|memROM~0_combout\ & !\BANCOREG|registrador~359_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( (\ROM|memROM~0_combout\ & !\BANCOREG|registrador~359_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~359_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~360_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~360_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~360_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( (\ROM|memROM~0_combout\ & !\BANCOREG|registrador~361_q\) ) + ( (!\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( (\ROM|memROM~0_combout\ & !\BANCOREG|registrador~361_q\) ) + ( (!\ROM|memROM~1_combout\) # (\ROM|memROM~0_combout\) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~361_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~362_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~362_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~362_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~363_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~363_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~363_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~364_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~364_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~364_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~365_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~365_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~365_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~366_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~366_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~366_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~367_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~367_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~367_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~368_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~368_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~368_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~369_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~369_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~369_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~370_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~370_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~370_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~371_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~371_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~371_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~372_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~372_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~372_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~373_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~373_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~373_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~374_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~374_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~374_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~375_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~375_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~375_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~376_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~376_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~376_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~377_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~377_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~377_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~378_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~378_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~378_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~379_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~379_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~379_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~380_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~380_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~380_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~381_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~381_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~381_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~382_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~382_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~382_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~383_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~383_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~383_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~384_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~384_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~384_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~385_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~385_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~385_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~386_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~386_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~386_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~387_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~387_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~387_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~388_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~388_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~388_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~389_q\) ) + ( (!\ROM|memROM~0_combout\ & !\ROM|memROM~1_combout\) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011111111100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \BANCOREG|ALT_INV_registrador~389_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_PC_OUT(9) <= \PC_OUT[9]~output_o\;

ww_PC_OUT(10) <= \PC_OUT[10]~output_o\;

ww_PC_OUT(11) <= \PC_OUT[11]~output_o\;

ww_PC_OUT(12) <= \PC_OUT[12]~output_o\;

ww_PC_OUT(13) <= \PC_OUT[13]~output_o\;

ww_PC_OUT(14) <= \PC_OUT[14]~output_o\;

ww_PC_OUT(15) <= \PC_OUT[15]~output_o\;

ww_PC_OUT(16) <= \PC_OUT[16]~output_o\;

ww_PC_OUT(17) <= \PC_OUT[17]~output_o\;

ww_PC_OUT(18) <= \PC_OUT[18]~output_o\;

ww_PC_OUT(19) <= \PC_OUT[19]~output_o\;

ww_PC_OUT(20) <= \PC_OUT[20]~output_o\;

ww_PC_OUT(21) <= \PC_OUT[21]~output_o\;

ww_PC_OUT(22) <= \PC_OUT[22]~output_o\;

ww_PC_OUT(23) <= \PC_OUT[23]~output_o\;

ww_PC_OUT(24) <= \PC_OUT[24]~output_o\;

ww_PC_OUT(25) <= \PC_OUT[25]~output_o\;

ww_PC_OUT(26) <= \PC_OUT[26]~output_o\;

ww_PC_OUT(27) <= \PC_OUT[27]~output_o\;

ww_PC_OUT(28) <= \PC_OUT[28]~output_o\;

ww_PC_OUT(29) <= \PC_OUT[29]~output_o\;

ww_PC_OUT(30) <= \PC_OUT[30]~output_o\;

ww_PC_OUT(31) <= \PC_OUT[31]~output_o\;

ww_DadoLido(0) <= \DadoLido[0]~output_o\;

ww_DadoLido(1) <= \DadoLido[1]~output_o\;

ww_DadoLido(2) <= \DadoLido[2]~output_o\;

ww_DadoLido(3) <= \DadoLido[3]~output_o\;

ww_DadoLido(4) <= \DadoLido[4]~output_o\;

ww_DadoLido(5) <= \DadoLido[5]~output_o\;

ww_DadoLido(6) <= \DadoLido[6]~output_o\;

ww_DadoLido(7) <= \DadoLido[7]~output_o\;

ww_DadoLido(8) <= \DadoLido[8]~output_o\;

ww_DadoLido(9) <= \DadoLido[9]~output_o\;

ww_DadoLido(10) <= \DadoLido[10]~output_o\;

ww_DadoLido(11) <= \DadoLido[11]~output_o\;

ww_DadoLido(12) <= \DadoLido[12]~output_o\;

ww_DadoLido(13) <= \DadoLido[13]~output_o\;

ww_DadoLido(14) <= \DadoLido[14]~output_o\;

ww_DadoLido(15) <= \DadoLido[15]~output_o\;

ww_DadoLido(16) <= \DadoLido[16]~output_o\;

ww_DadoLido(17) <= \DadoLido[17]~output_o\;

ww_DadoLido(18) <= \DadoLido[18]~output_o\;

ww_DadoLido(19) <= \DadoLido[19]~output_o\;

ww_DadoLido(20) <= \DadoLido[20]~output_o\;

ww_DadoLido(21) <= \DadoLido[21]~output_o\;

ww_DadoLido(22) <= \DadoLido[22]~output_o\;

ww_DadoLido(23) <= \DadoLido[23]~output_o\;

ww_DadoLido(24) <= \DadoLido[24]~output_o\;

ww_DadoLido(25) <= \DadoLido[25]~output_o\;

ww_DadoLido(26) <= \DadoLido[26]~output_o\;

ww_DadoLido(27) <= \DadoLido[27]~output_o\;

ww_DadoLido(28) <= \DadoLido[28]~output_o\;

ww_DadoLido(29) <= \DadoLido[29]~output_o\;

ww_DadoLido(30) <= \DadoLido[30]~output_o\;

ww_DadoLido(31) <= \DadoLido[31]~output_o\;

ww_DadoEscrito(0) <= \DadoEscrito[0]~output_o\;

ww_DadoEscrito(1) <= \DadoEscrito[1]~output_o\;

ww_DadoEscrito(2) <= \DadoEscrito[2]~output_o\;

ww_DadoEscrito(3) <= \DadoEscrito[3]~output_o\;

ww_DadoEscrito(4) <= \DadoEscrito[4]~output_o\;

ww_DadoEscrito(5) <= \DadoEscrito[5]~output_o\;

ww_DadoEscrito(6) <= \DadoEscrito[6]~output_o\;

ww_DadoEscrito(7) <= \DadoEscrito[7]~output_o\;

ww_DadoEscrito(8) <= \DadoEscrito[8]~output_o\;

ww_DadoEscrito(9) <= \DadoEscrito[9]~output_o\;

ww_DadoEscrito(10) <= \DadoEscrito[10]~output_o\;

ww_DadoEscrito(11) <= \DadoEscrito[11]~output_o\;

ww_DadoEscrito(12) <= \DadoEscrito[12]~output_o\;

ww_DadoEscrito(13) <= \DadoEscrito[13]~output_o\;

ww_DadoEscrito(14) <= \DadoEscrito[14]~output_o\;

ww_DadoEscrito(15) <= \DadoEscrito[15]~output_o\;

ww_DadoEscrito(16) <= \DadoEscrito[16]~output_o\;

ww_DadoEscrito(17) <= \DadoEscrito[17]~output_o\;

ww_DadoEscrito(18) <= \DadoEscrito[18]~output_o\;

ww_DadoEscrito(19) <= \DadoEscrito[19]~output_o\;

ww_DadoEscrito(20) <= \DadoEscrito[20]~output_o\;

ww_DadoEscrito(21) <= \DadoEscrito[21]~output_o\;

ww_DadoEscrito(22) <= \DadoEscrito[22]~output_o\;

ww_DadoEscrito(23) <= \DadoEscrito[23]~output_o\;

ww_DadoEscrito(24) <= \DadoEscrito[24]~output_o\;

ww_DadoEscrito(25) <= \DadoEscrito[25]~output_o\;

ww_DadoEscrito(26) <= \DadoEscrito[26]~output_o\;

ww_DadoEscrito(27) <= \DadoEscrito[27]~output_o\;

ww_DadoEscrito(28) <= \DadoEscrito[28]~output_o\;

ww_DadoEscrito(29) <= \DadoEscrito[29]~output_o\;

ww_DadoEscrito(30) <= \DadoEscrito[30]~output_o\;

ww_DadoEscrito(31) <= \DadoEscrito[31]~output_o\;

ww_SaidaULA(0) <= \SaidaULA[0]~output_o\;

ww_SaidaULA(1) <= \SaidaULA[1]~output_o\;

ww_SaidaULA(2) <= \SaidaULA[2]~output_o\;

ww_SaidaULA(3) <= \SaidaULA[3]~output_o\;

ww_SaidaULA(4) <= \SaidaULA[4]~output_o\;

ww_SaidaULA(5) <= \SaidaULA[5]~output_o\;

ww_SaidaULA(6) <= \SaidaULA[6]~output_o\;

ww_SaidaULA(7) <= \SaidaULA[7]~output_o\;

ww_SaidaULA(8) <= \SaidaULA[8]~output_o\;

ww_SaidaULA(9) <= \SaidaULA[9]~output_o\;

ww_SaidaULA(10) <= \SaidaULA[10]~output_o\;

ww_SaidaULA(11) <= \SaidaULA[11]~output_o\;

ww_SaidaULA(12) <= \SaidaULA[12]~output_o\;

ww_SaidaULA(13) <= \SaidaULA[13]~output_o\;

ww_SaidaULA(14) <= \SaidaULA[14]~output_o\;

ww_SaidaULA(15) <= \SaidaULA[15]~output_o\;

ww_SaidaULA(16) <= \SaidaULA[16]~output_o\;

ww_SaidaULA(17) <= \SaidaULA[17]~output_o\;

ww_SaidaULA(18) <= \SaidaULA[18]~output_o\;

ww_SaidaULA(19) <= \SaidaULA[19]~output_o\;

ww_SaidaULA(20) <= \SaidaULA[20]~output_o\;

ww_SaidaULA(21) <= \SaidaULA[21]~output_o\;

ww_SaidaULA(22) <= \SaidaULA[22]~output_o\;

ww_SaidaULA(23) <= \SaidaULA[23]~output_o\;

ww_SaidaULA(24) <= \SaidaULA[24]~output_o\;

ww_SaidaULA(25) <= \SaidaULA[25]~output_o\;

ww_SaidaULA(26) <= \SaidaULA[26]~output_o\;

ww_SaidaULA(27) <= \SaidaULA[27]~output_o\;

ww_SaidaULA(28) <= \SaidaULA[28]~output_o\;

ww_SaidaULA(29) <= \SaidaULA[29]~output_o\;

ww_SaidaULA(30) <= \SaidaULA[30]~output_o\;

ww_SaidaULA(31) <= \SaidaULA[31]~output_o\;
END structure;


