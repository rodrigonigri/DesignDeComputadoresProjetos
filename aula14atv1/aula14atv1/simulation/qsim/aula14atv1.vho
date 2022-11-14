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

-- DATE "11/08/2022 10:23:15"

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
	ValorRs : OUT std_logic_vector(31 DOWNTO 0);
	ValorRt : OUT std_logic_vector(31 DOWNTO 0)
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
SIGNAL ww_ValorRs : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ValorRt : std_logic_vector(31 DOWNTO 0);
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
SIGNAL \ValorRs[0]~output_o\ : std_logic;
SIGNAL \ValorRs[1]~output_o\ : std_logic;
SIGNAL \ValorRs[2]~output_o\ : std_logic;
SIGNAL \ValorRs[3]~output_o\ : std_logic;
SIGNAL \ValorRs[4]~output_o\ : std_logic;
SIGNAL \ValorRs[5]~output_o\ : std_logic;
SIGNAL \ValorRs[6]~output_o\ : std_logic;
SIGNAL \ValorRs[7]~output_o\ : std_logic;
SIGNAL \ValorRs[8]~output_o\ : std_logic;
SIGNAL \ValorRs[9]~output_o\ : std_logic;
SIGNAL \ValorRs[10]~output_o\ : std_logic;
SIGNAL \ValorRs[11]~output_o\ : std_logic;
SIGNAL \ValorRs[12]~output_o\ : std_logic;
SIGNAL \ValorRs[13]~output_o\ : std_logic;
SIGNAL \ValorRs[14]~output_o\ : std_logic;
SIGNAL \ValorRs[15]~output_o\ : std_logic;
SIGNAL \ValorRs[16]~output_o\ : std_logic;
SIGNAL \ValorRs[17]~output_o\ : std_logic;
SIGNAL \ValorRs[18]~output_o\ : std_logic;
SIGNAL \ValorRs[19]~output_o\ : std_logic;
SIGNAL \ValorRs[20]~output_o\ : std_logic;
SIGNAL \ValorRs[21]~output_o\ : std_logic;
SIGNAL \ValorRs[22]~output_o\ : std_logic;
SIGNAL \ValorRs[23]~output_o\ : std_logic;
SIGNAL \ValorRs[24]~output_o\ : std_logic;
SIGNAL \ValorRs[25]~output_o\ : std_logic;
SIGNAL \ValorRs[26]~output_o\ : std_logic;
SIGNAL \ValorRs[27]~output_o\ : std_logic;
SIGNAL \ValorRs[28]~output_o\ : std_logic;
SIGNAL \ValorRs[29]~output_o\ : std_logic;
SIGNAL \ValorRs[30]~output_o\ : std_logic;
SIGNAL \ValorRs[31]~output_o\ : std_logic;
SIGNAL \ValorRt[0]~output_o\ : std_logic;
SIGNAL \ValorRt[1]~output_o\ : std_logic;
SIGNAL \ValorRt[2]~output_o\ : std_logic;
SIGNAL \ValorRt[3]~output_o\ : std_logic;
SIGNAL \ValorRt[4]~output_o\ : std_logic;
SIGNAL \ValorRt[5]~output_o\ : std_logic;
SIGNAL \ValorRt[6]~output_o\ : std_logic;
SIGNAL \ValorRt[7]~output_o\ : std_logic;
SIGNAL \ValorRt[8]~output_o\ : std_logic;
SIGNAL \ValorRt[9]~output_o\ : std_logic;
SIGNAL \ValorRt[10]~output_o\ : std_logic;
SIGNAL \ValorRt[11]~output_o\ : std_logic;
SIGNAL \ValorRt[12]~output_o\ : std_logic;
SIGNAL \ValorRt[13]~output_o\ : std_logic;
SIGNAL \ValorRt[14]~output_o\ : std_logic;
SIGNAL \ValorRt[15]~output_o\ : std_logic;
SIGNAL \ValorRt[16]~output_o\ : std_logic;
SIGNAL \ValorRt[17]~output_o\ : std_logic;
SIGNAL \ValorRt[18]~output_o\ : std_logic;
SIGNAL \ValorRt[19]~output_o\ : std_logic;
SIGNAL \ValorRt[20]~output_o\ : std_logic;
SIGNAL \ValorRt[21]~output_o\ : std_logic;
SIGNAL \ValorRt[22]~output_o\ : std_logic;
SIGNAL \ValorRt[23]~output_o\ : std_logic;
SIGNAL \ValorRt[24]~output_o\ : std_logic;
SIGNAL \ValorRt[25]~output_o\ : std_logic;
SIGNAL \ValorRt[26]~output_o\ : std_logic;
SIGNAL \ValorRt[27]~output_o\ : std_logic;
SIGNAL \ValorRt[28]~output_o\ : std_logic;
SIGNAL \ValorRt[29]~output_o\ : std_logic;
SIGNAL \ValorRt[30]~output_o\ : std_logic;
SIGNAL \ValorRt[31]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Somador|Add0~1_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~1_sumout\ : std_logic;
SIGNAL \Somador|Add0~2\ : std_logic;
SIGNAL \Somador|Add0~5_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~2\ : std_logic;
SIGNAL \SomadorDist|Add0~5_sumout\ : std_logic;
SIGNAL \Somador|Add0~6\ : std_logic;
SIGNAL \Somador|Add0~9_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~6\ : std_logic;
SIGNAL \SomadorDist|Add0~9_sumout\ : std_logic;
SIGNAL \Somador|Add0~10\ : std_logic;
SIGNAL \Somador|Add0~13_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~10\ : std_logic;
SIGNAL \SomadorDist|Add0~13_sumout\ : std_logic;
SIGNAL \Somador|Add0~14\ : std_logic;
SIGNAL \Somador|Add0~18\ : std_logic;
SIGNAL \Somador|Add0~21_sumout\ : std_logic;
SIGNAL \Somador|Add0~17_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~14\ : std_logic;
SIGNAL \SomadorDist|Add0~18\ : std_logic;
SIGNAL \SomadorDist|Add0~21_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \SomadorDist|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \UnidadeControle|saida[4]~0_combout\ : std_logic;
SIGNAL \RAM|ram~130_combout\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|dado_out[28]~60_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~1090_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~386_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1091_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~322_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1092_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~130_q\ : std_logic;
SIGNAL \BANCOREG|Equal0~0_combout\ : std_logic;
SIGNAL \UnidadeControle|Equal2~0_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~1093_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~66_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1087_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[28]~28_combout\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|dado_out[27]~59_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~385_q\ : std_logic;
SIGNAL \BANCOREG|registrador~321_q\ : std_logic;
SIGNAL \BANCOREG|registrador~129_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1126_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~65_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1086_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[27]~27_combout\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|dado_out[26]~58_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~384_q\ : std_logic;
SIGNAL \BANCOREG|registrador~320_q\ : std_logic;
SIGNAL \BANCOREG|registrador~128_q\ : std_logic;
SIGNAL \BANCOREG|registrador~64_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1085_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[26]~26_combout\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|dado_out[25]~57_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~383_q\ : std_logic;
SIGNAL \BANCOREG|registrador~319_q\ : std_logic;
SIGNAL \BANCOREG|registrador~127_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1125_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~63_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1084_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[25]~25_combout\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|dado_out[24]~56_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~382_q\ : std_logic;
SIGNAL \BANCOREG|registrador~318_q\ : std_logic;
SIGNAL \BANCOREG|registrador~126_q\ : std_logic;
SIGNAL \BANCOREG|registrador~62_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1083_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[24]~24_combout\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|dado_out[23]~55_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~381_q\ : std_logic;
SIGNAL \BANCOREG|registrador~317_q\ : std_logic;
SIGNAL \BANCOREG|registrador~125_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1124_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~61_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1082_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[23]~23_combout\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|dado_out[22]~54_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~380_q\ : std_logic;
SIGNAL \BANCOREG|registrador~316_q\ : std_logic;
SIGNAL \BANCOREG|registrador~124_q\ : std_logic;
SIGNAL \BANCOREG|registrador~60_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1081_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[22]~22_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|dado_out[21]~53_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~379_q\ : std_logic;
SIGNAL \BANCOREG|registrador~315_q\ : std_logic;
SIGNAL \BANCOREG|registrador~123_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1123_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~59_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1080_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[21]~21_combout\ : std_logic;
SIGNAL \RAM|ram~54_q\ : std_logic;
SIGNAL \RAM|dado_out[20]~52_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~378_q\ : std_logic;
SIGNAL \BANCOREG|registrador~314_q\ : std_logic;
SIGNAL \BANCOREG|registrador~122_q\ : std_logic;
SIGNAL \BANCOREG|registrador~58_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1079_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[20]~20_combout\ : std_logic;
SIGNAL \RAM|ram~53_q\ : std_logic;
SIGNAL \RAM|dado_out[19]~51_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~377_q\ : std_logic;
SIGNAL \BANCOREG|registrador~313_q\ : std_logic;
SIGNAL \BANCOREG|registrador~121_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1122_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~57_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1078_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[19]~19_combout\ : std_logic;
SIGNAL \RAM|ram~52_q\ : std_logic;
SIGNAL \RAM|dado_out[18]~50_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~376_q\ : std_logic;
SIGNAL \BANCOREG|registrador~312_q\ : std_logic;
SIGNAL \BANCOREG|registrador~120_q\ : std_logic;
SIGNAL \BANCOREG|registrador~56_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1077_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[18]~18_combout\ : std_logic;
SIGNAL \RAM|ram~51_q\ : std_logic;
SIGNAL \RAM|dado_out[17]~49_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~375_q\ : std_logic;
SIGNAL \BANCOREG|registrador~311_q\ : std_logic;
SIGNAL \BANCOREG|registrador~119_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1121_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~55_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1076_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[17]~17_combout\ : std_logic;
SIGNAL \RAM|ram~50_q\ : std_logic;
SIGNAL \RAM|dado_out[16]~48_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~374_q\ : std_logic;
SIGNAL \BANCOREG|registrador~310_q\ : std_logic;
SIGNAL \BANCOREG|registrador~118_q\ : std_logic;
SIGNAL \BANCOREG|registrador~54_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1075_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[16]~16_combout\ : std_logic;
SIGNAL \RAM|ram~49_q\ : std_logic;
SIGNAL \RAM|dado_out[15]~47_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~373_q\ : std_logic;
SIGNAL \BANCOREG|registrador~309_q\ : std_logic;
SIGNAL \BANCOREG|registrador~117_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1120_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~53_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1074_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[15]~15_combout\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|dado_out[14]~46_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~372_q\ : std_logic;
SIGNAL \BANCOREG|registrador~308_q\ : std_logic;
SIGNAL \BANCOREG|registrador~116_q\ : std_logic;
SIGNAL \BANCOREG|registrador~52_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1073_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[14]~14_combout\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|dado_out[13]~45_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~371_q\ : std_logic;
SIGNAL \BANCOREG|registrador~307_q\ : std_logic;
SIGNAL \BANCOREG|registrador~115_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1119_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~51_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1072_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[13]~13_combout\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|dado_out[12]~44_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~370_q\ : std_logic;
SIGNAL \BANCOREG|registrador~306_q\ : std_logic;
SIGNAL \BANCOREG|registrador~114_q\ : std_logic;
SIGNAL \BANCOREG|registrador~50_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1071_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[12]~12_combout\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|dado_out[11]~43_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~369_q\ : std_logic;
SIGNAL \BANCOREG|registrador~305_q\ : std_logic;
SIGNAL \BANCOREG|registrador~113_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1118_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~49_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1070_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[11]~11_combout\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|dado_out[10]~42_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~368_q\ : std_logic;
SIGNAL \BANCOREG|registrador~304_q\ : std_logic;
SIGNAL \BANCOREG|registrador~112_q\ : std_logic;
SIGNAL \BANCOREG|registrador~48_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1069_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[10]~10_combout\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|dado_out[9]~41_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~367_q\ : std_logic;
SIGNAL \BANCOREG|registrador~303_q\ : std_logic;
SIGNAL \BANCOREG|registrador~111_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1117_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~47_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1068_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[9]~9_combout\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|dado_out[8]~40_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~366_q\ : std_logic;
SIGNAL \BANCOREG|registrador~302_q\ : std_logic;
SIGNAL \BANCOREG|registrador~110_q\ : std_logic;
SIGNAL \BANCOREG|registrador~46_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1067_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[8]~8_combout\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|dado_out[7]~39_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~365_q\ : std_logic;
SIGNAL \BANCOREG|registrador~301_q\ : std_logic;
SIGNAL \BANCOREG|registrador~109_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1116_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~45_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1066_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|dado_out[6]~38_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~364_q\ : std_logic;
SIGNAL \BANCOREG|registrador~300_q\ : std_logic;
SIGNAL \BANCOREG|registrador~108_q\ : std_logic;
SIGNAL \BANCOREG|registrador~44_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1065_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|dado_out[5]~37_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~363_q\ : std_logic;
SIGNAL \BANCOREG|registrador~299_q\ : std_logic;
SIGNAL \BANCOREG|registrador~107_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1115_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~43_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1064_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|dado_out[4]~36_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~362_q\ : std_logic;
SIGNAL \BANCOREG|registrador~298_q\ : std_logic;
SIGNAL \BANCOREG|registrador~106_q\ : std_logic;
SIGNAL \BANCOREG|registrador~42_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1063_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|dado_out[3]~35_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~1113_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~361_q\ : std_logic;
SIGNAL \BANCOREG|registrador~297_q\ : std_logic;
SIGNAL \BANCOREG|registrador~105_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1114_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~41_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1062_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[3]~3_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|dado_out[2]~34_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~40_q\ : std_logic;
SIGNAL \BANCOREG|registrador~296_q\ : std_logic;
SIGNAL \BANCOREG|registrador~360_q\ : std_logic;
SIGNAL \BANCOREG|registrador~104_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1098_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|dado_out[1]~33_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~1112_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~39_q\ : std_logic;
SIGNAL \BANCOREG|registrador~295_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1111_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~359_q\ : std_logic;
SIGNAL \BANCOREG|registrador~103_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1102_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|dado_out[0]~32_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~38_q\ : std_logic;
SIGNAL \BANCOREG|registrador~294_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1110_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~358_q\ : std_logic;
SIGNAL \BANCOREG|registrador~102_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1106_combout\ : std_logic;
SIGNAL \ULA|Add1~130_cout\ : std_logic;
SIGNAL \ULA|Add1~78\ : std_logic;
SIGNAL \ULA|Add1~82\ : std_logic;
SIGNAL \ULA|Add1~58\ : std_logic;
SIGNAL \ULA|Add1~62\ : std_logic;
SIGNAL \ULA|Add1~66\ : std_logic;
SIGNAL \ULA|Add1~70\ : std_logic;
SIGNAL \ULA|Add1~74\ : std_logic;
SIGNAL \ULA|Add1~38\ : std_logic;
SIGNAL \ULA|Add1~106\ : std_logic;
SIGNAL \ULA|Add1~110\ : std_logic;
SIGNAL \ULA|Add1~114\ : std_logic;
SIGNAL \ULA|Add1~118\ : std_logic;
SIGNAL \ULA|Add1~122\ : std_logic;
SIGNAL \ULA|Add1~42\ : std_logic;
SIGNAL \ULA|Add1~46\ : std_logic;
SIGNAL \ULA|Add1~50\ : std_logic;
SIGNAL \ULA|Add1~54\ : std_logic;
SIGNAL \ULA|Add1~126\ : std_logic;
SIGNAL \ULA|Add1~18\ : std_logic;
SIGNAL \ULA|Add1~86\ : std_logic;
SIGNAL \ULA|Add1~90\ : std_logic;
SIGNAL \ULA|Add1~94\ : std_logic;
SIGNAL \ULA|Add1~98\ : std_logic;
SIGNAL \ULA|Add1~22\ : std_logic;
SIGNAL \ULA|Add1~26\ : std_logic;
SIGNAL \ULA|Add1~30\ : std_logic;
SIGNAL \ULA|Add1~34\ : std_logic;
SIGNAL \ULA|Add1~102\ : std_logic;
SIGNAL \ULA|Add1~1_sumout\ : std_logic;
SIGNAL \RAM|ram~63_q\ : std_logic;
SIGNAL \RAM|dado_out[29]~61_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~387_q\ : std_logic;
SIGNAL \BANCOREG|registrador~323_q\ : std_logic;
SIGNAL \BANCOREG|registrador~131_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1127_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~67_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1088_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[29]~29_combout\ : std_logic;
SIGNAL \ULA|Add1~2\ : std_logic;
SIGNAL \ULA|Add1~5_sumout\ : std_logic;
SIGNAL \RAM|ram~64_q\ : std_logic;
SIGNAL \RAM|dado_out[30]~62_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~388_q\ : std_logic;
SIGNAL \BANCOREG|registrador~324_q\ : std_logic;
SIGNAL \BANCOREG|registrador~132_q\ : std_logic;
SIGNAL \BANCOREG|registrador~68_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1089_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[30]~30_combout\ : std_logic;
SIGNAL \ULA|Add1~6\ : std_logic;
SIGNAL \ULA|Add1~9_sumout\ : std_logic;
SIGNAL \ULA|Add1~85_sumout\ : std_logic;
SIGNAL \ULA|Add1~89_sumout\ : std_logic;
SIGNAL \ULA|Add1~93_sumout\ : std_logic;
SIGNAL \ULA|Add1~97_sumout\ : std_logic;
SIGNAL \ULA|Add1~101_sumout\ : std_logic;
SIGNAL \ULA|Add1~105_sumout\ : std_logic;
SIGNAL \ULA|Add1~109_sumout\ : std_logic;
SIGNAL \ULA|Add1~113_sumout\ : std_logic;
SIGNAL \ULA|Add1~117_sumout\ : std_logic;
SIGNAL \ULA|Add1~121_sumout\ : std_logic;
SIGNAL \ULA|Add1~125_sumout\ : std_logic;
SIGNAL \MUXBeqPC|saida_MUX[31]~1_combout\ : std_logic;
SIGNAL \MUXBeqPC|saida_MUX[31]~2_combout\ : std_logic;
SIGNAL \ULA|Add1~37_sumout\ : std_logic;
SIGNAL \ULA|Add1~41_sumout\ : std_logic;
SIGNAL \ULA|Add1~45_sumout\ : std_logic;
SIGNAL \ULA|Add1~53_sumout\ : std_logic;
SIGNAL \ULA|Add1~73_sumout\ : std_logic;
SIGNAL \ULA|Add1~77_sumout\ : std_logic;
SIGNAL \ULA|Add1~81_sumout\ : std_logic;
SIGNAL \MUXBeqPC|saida_MUX[31]~5_combout\ : std_logic;
SIGNAL \ULA|Add1~49_sumout\ : std_logic;
SIGNAL \ULA|Add1~57_sumout\ : std_logic;
SIGNAL \ULA|Add1~61_sumout\ : std_logic;
SIGNAL \ULA|Add1~65_sumout\ : std_logic;
SIGNAL \ULA|Add1~69_sumout\ : std_logic;
SIGNAL \MUXBeqPC|saida_MUX[31]~6_combout\ : std_logic;
SIGNAL \MUXBeqPC|saida_MUX[31]~0_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[31]~31_combout\ : std_logic;
SIGNAL \RAM|ram~65_q\ : std_logic;
SIGNAL \RAM|dado_out[31]~63_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~1128_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~69_q\ : std_logic;
SIGNAL \BANCOREG|registrador~325_q\ : std_logic;
SIGNAL \BANCOREG|registrador~389_q\ : std_logic;
SIGNAL \BANCOREG|registrador~133_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1094_combout\ : std_logic;
SIGNAL \ULA|Add1~10\ : std_logic;
SIGNAL \ULA|Add1~13_sumout\ : std_logic;
SIGNAL \ULA|Add1~17_sumout\ : std_logic;
SIGNAL \ULA|Add1~21_sumout\ : std_logic;
SIGNAL \ULA|Add1~25_sumout\ : std_logic;
SIGNAL \ULA|Add1~29_sumout\ : std_logic;
SIGNAL \ULA|Add1~33_sumout\ : std_logic;
SIGNAL \MUXBeqPC|saida_MUX[31]~4_combout\ : std_logic;
SIGNAL \MUXBeqPC|saida_MUX[31]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \RAM|ram~98_combout\ : std_logic;
SIGNAL \RAM|ram~99_combout\ : std_logic;
SIGNAL \RAM|ram~100_combout\ : std_logic;
SIGNAL \RAM|ram~101_combout\ : std_logic;
SIGNAL \RAM|ram~102_combout\ : std_logic;
SIGNAL \RAM|ram~103_combout\ : std_logic;
SIGNAL \RAM|ram~104_combout\ : std_logic;
SIGNAL \RAM|ram~105_combout\ : std_logic;
SIGNAL \RAM|ram~106_combout\ : std_logic;
SIGNAL \RAM|ram~107_combout\ : std_logic;
SIGNAL \RAM|ram~108_combout\ : std_logic;
SIGNAL \RAM|ram~109_combout\ : std_logic;
SIGNAL \RAM|ram~110_combout\ : std_logic;
SIGNAL \RAM|ram~111_combout\ : std_logic;
SIGNAL \RAM|ram~112_combout\ : std_logic;
SIGNAL \RAM|ram~113_combout\ : std_logic;
SIGNAL \RAM|ram~114_combout\ : std_logic;
SIGNAL \RAM|ram~115_combout\ : std_logic;
SIGNAL \RAM|ram~116_combout\ : std_logic;
SIGNAL \RAM|ram~117_combout\ : std_logic;
SIGNAL \RAM|ram~118_combout\ : std_logic;
SIGNAL \RAM|ram~119_combout\ : std_logic;
SIGNAL \RAM|ram~120_combout\ : std_logic;
SIGNAL \RAM|ram~121_combout\ : std_logic;
SIGNAL \RAM|ram~122_combout\ : std_logic;
SIGNAL \RAM|ram~123_combout\ : std_logic;
SIGNAL \RAM|ram~124_combout\ : std_logic;
SIGNAL \RAM|ram~125_combout\ : std_logic;
SIGNAL \RAM|ram~126_combout\ : std_logic;
SIGNAL \RAM|ram~127_combout\ : std_logic;
SIGNAL \RAM|ram~128_combout\ : std_logic;
SIGNAL \RAM|ram~129_combout\ : std_logic;
SIGNAL \Somador|Add0~22\ : std_logic;
SIGNAL \Somador|Add0~25_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~22\ : std_logic;
SIGNAL \SomadorDist|Add0~25_sumout\ : std_logic;
SIGNAL \Somador|Add0~26\ : std_logic;
SIGNAL \Somador|Add0~29_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~26\ : std_logic;
SIGNAL \SomadorDist|Add0~29_sumout\ : std_logic;
SIGNAL \Somador|Add0~30\ : std_logic;
SIGNAL \Somador|Add0~33_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~30\ : std_logic;
SIGNAL \SomadorDist|Add0~33_sumout\ : std_logic;
SIGNAL \Somador|Add0~34\ : std_logic;
SIGNAL \Somador|Add0~37_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~34\ : std_logic;
SIGNAL \SomadorDist|Add0~37_sumout\ : std_logic;
SIGNAL \Somador|Add0~38\ : std_logic;
SIGNAL \Somador|Add0~41_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~38\ : std_logic;
SIGNAL \SomadorDist|Add0~41_sumout\ : std_logic;
SIGNAL \Somador|Add0~42\ : std_logic;
SIGNAL \Somador|Add0~45_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~42\ : std_logic;
SIGNAL \SomadorDist|Add0~45_sumout\ : std_logic;
SIGNAL \Somador|Add0~46\ : std_logic;
SIGNAL \Somador|Add0~49_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~46\ : std_logic;
SIGNAL \SomadorDist|Add0~49_sumout\ : std_logic;
SIGNAL \Somador|Add0~50\ : std_logic;
SIGNAL \Somador|Add0~53_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~50\ : std_logic;
SIGNAL \SomadorDist|Add0~53_sumout\ : std_logic;
SIGNAL \Somador|Add0~54\ : std_logic;
SIGNAL \Somador|Add0~57_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~54\ : std_logic;
SIGNAL \SomadorDist|Add0~57_sumout\ : std_logic;
SIGNAL \Somador|Add0~58\ : std_logic;
SIGNAL \Somador|Add0~61_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~58\ : std_logic;
SIGNAL \SomadorDist|Add0~61_sumout\ : std_logic;
SIGNAL \Somador|Add0~62\ : std_logic;
SIGNAL \Somador|Add0~65_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~62\ : std_logic;
SIGNAL \SomadorDist|Add0~65_sumout\ : std_logic;
SIGNAL \Somador|Add0~66\ : std_logic;
SIGNAL \Somador|Add0~69_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~66\ : std_logic;
SIGNAL \SomadorDist|Add0~69_sumout\ : std_logic;
SIGNAL \Somador|Add0~70\ : std_logic;
SIGNAL \Somador|Add0~73_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~70\ : std_logic;
SIGNAL \SomadorDist|Add0~73_sumout\ : std_logic;
SIGNAL \Somador|Add0~74\ : std_logic;
SIGNAL \Somador|Add0~77_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~74\ : std_logic;
SIGNAL \SomadorDist|Add0~77_sumout\ : std_logic;
SIGNAL \Somador|Add0~78\ : std_logic;
SIGNAL \Somador|Add0~81_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~78\ : std_logic;
SIGNAL \SomadorDist|Add0~81_sumout\ : std_logic;
SIGNAL \Somador|Add0~82\ : std_logic;
SIGNAL \Somador|Add0~85_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~82\ : std_logic;
SIGNAL \SomadorDist|Add0~85_sumout\ : std_logic;
SIGNAL \Somador|Add0~86\ : std_logic;
SIGNAL \Somador|Add0~89_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~86\ : std_logic;
SIGNAL \SomadorDist|Add0~89_sumout\ : std_logic;
SIGNAL \Somador|Add0~90\ : std_logic;
SIGNAL \Somador|Add0~93_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~90\ : std_logic;
SIGNAL \SomadorDist|Add0~93_sumout\ : std_logic;
SIGNAL \Somador|Add0~94\ : std_logic;
SIGNAL \Somador|Add0~97_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~94\ : std_logic;
SIGNAL \SomadorDist|Add0~97_sumout\ : std_logic;
SIGNAL \Somador|Add0~98\ : std_logic;
SIGNAL \Somador|Add0~101_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~98\ : std_logic;
SIGNAL \SomadorDist|Add0~101_sumout\ : std_logic;
SIGNAL \Somador|Add0~102\ : std_logic;
SIGNAL \Somador|Add0~105_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~102\ : std_logic;
SIGNAL \SomadorDist|Add0~105_sumout\ : std_logic;
SIGNAL \Somador|Add0~106\ : std_logic;
SIGNAL \Somador|Add0~109_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~106\ : std_logic;
SIGNAL \SomadorDist|Add0~109_sumout\ : std_logic;
SIGNAL \Somador|Add0~110\ : std_logic;
SIGNAL \Somador|Add0~113_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~110\ : std_logic;
SIGNAL \SomadorDist|Add0~113_sumout\ : std_logic;
SIGNAL \Somador|Add0~114\ : std_logic;
SIGNAL \Somador|Add0~117_sumout\ : std_logic;
SIGNAL \SomadorDist|Add0~114\ : std_logic;
SIGNAL \SomadorDist|Add0~117_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Somador|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \BANCOREG|ALT_INV_registrador~115_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~371_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[12]~12_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~114_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~370_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[11]~11_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~113_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~369_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[10]~10_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~112_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~368_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[9]~9_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~111_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~367_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[8]~8_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~110_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~366_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[7]~7_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~109_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~365_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[6]~6_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~108_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~364_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[5]~5_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~107_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~363_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[4]~4_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~106_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~362_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[3]~3_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~105_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~361_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~104_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~360_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~103_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~359_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~102_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~358_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \Somador|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \UnidadeControle|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \UnidadeControle|ALT_INV_saida[4]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \MUXBeqPC|ALT_INV_saida_MUX[31]~2_combout\ : std_logic;
SIGNAL \MUXBeqPC|ALT_INV_saida_MUX[31]~1_combout\ : std_logic;
SIGNAL \MUXBeqPC|ALT_INV_saida_MUX[31]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~133_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~389_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[30]~30_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~132_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~388_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[29]~29_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~131_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~387_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[28]~28_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~130_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~386_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[27]~27_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~129_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~385_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[26]~26_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~128_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~384_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[25]~25_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~127_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~383_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[24]~24_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~126_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~382_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[23]~23_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~125_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~381_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[22]~22_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~124_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~380_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[21]~21_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~123_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~379_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[20]~20_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~122_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~378_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[19]~19_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~121_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~377_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[18]~18_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~120_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~376_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[17]~17_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~119_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~375_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[16]~16_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~118_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~374_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[15]~15_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~117_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~373_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[14]~14_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~116_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~372_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[13]~13_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MUXBeqPC|ALT_INV_saida_MUX[31]~6_combout\ : std_logic;
SIGNAL \MUXBeqPC|ALT_INV_saida_MUX[31]~5_combout\ : std_logic;
SIGNAL \MUXBeqPC|ALT_INV_saida_MUX[31]~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[31]~63_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[29]~61_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[27]~59_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[25]~57_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[23]~55_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[21]~53_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[19]~51_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[17]~49_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[15]~47_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[13]~45_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[11]~43_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[9]~41_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~39_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~37_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~35_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~33_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~32_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
DadoLido <= ww_DadoLido;
DadoEscrito <= ww_DadoEscrito;
ValorRs <= ww_ValorRs;
ValorRt <= ww_ValorRt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Somador|ALT_INV_Add0~105_sumout\ <= NOT \Somador|Add0~105_sumout\;
\Somador|ALT_INV_Add0~101_sumout\ <= NOT \Somador|Add0~101_sumout\;
\Somador|ALT_INV_Add0~97_sumout\ <= NOT \Somador|Add0~97_sumout\;
\Somador|ALT_INV_Add0~93_sumout\ <= NOT \Somador|Add0~93_sumout\;
\Somador|ALT_INV_Add0~89_sumout\ <= NOT \Somador|Add0~89_sumout\;
\Somador|ALT_INV_Add0~85_sumout\ <= NOT \Somador|Add0~85_sumout\;
\Somador|ALT_INV_Add0~81_sumout\ <= NOT \Somador|Add0~81_sumout\;
\Somador|ALT_INV_Add0~77_sumout\ <= NOT \Somador|Add0~77_sumout\;
\Somador|ALT_INV_Add0~73_sumout\ <= NOT \Somador|Add0~73_sumout\;
\Somador|ALT_INV_Add0~69_sumout\ <= NOT \Somador|Add0~69_sumout\;
\Somador|ALT_INV_Add0~65_sumout\ <= NOT \Somador|Add0~65_sumout\;
\Somador|ALT_INV_Add0~61_sumout\ <= NOT \Somador|Add0~61_sumout\;
\Somador|ALT_INV_Add0~57_sumout\ <= NOT \Somador|Add0~57_sumout\;
\Somador|ALT_INV_Add0~53_sumout\ <= NOT \Somador|Add0~53_sumout\;
\Somador|ALT_INV_Add0~49_sumout\ <= NOT \Somador|Add0~49_sumout\;
\Somador|ALT_INV_Add0~45_sumout\ <= NOT \Somador|Add0~45_sumout\;
\Somador|ALT_INV_Add0~41_sumout\ <= NOT \Somador|Add0~41_sumout\;
\Somador|ALT_INV_Add0~37_sumout\ <= NOT \Somador|Add0~37_sumout\;
\Somador|ALT_INV_Add0~33_sumout\ <= NOT \Somador|Add0~33_sumout\;
\Somador|ALT_INV_Add0~29_sumout\ <= NOT \Somador|Add0~29_sumout\;
\Somador|ALT_INV_Add0~25_sumout\ <= NOT \Somador|Add0~25_sumout\;
\Somador|ALT_INV_Add0~21_sumout\ <= NOT \Somador|Add0~21_sumout\;
\Somador|ALT_INV_Add0~17_sumout\ <= NOT \Somador|Add0~17_sumout\;
\Somador|ALT_INV_Add0~13_sumout\ <= NOT \Somador|Add0~13_sumout\;
\Somador|ALT_INV_Add0~9_sumout\ <= NOT \Somador|Add0~9_sumout\;
\Somador|ALT_INV_Add0~5_sumout\ <= NOT \Somador|Add0~5_sumout\;
\ULA|ALT_INV_Add1~125_sumout\ <= NOT \ULA|Add1~125_sumout\;
\ULA|ALT_INV_Add1~121_sumout\ <= NOT \ULA|Add1~121_sumout\;
\ULA|ALT_INV_Add1~117_sumout\ <= NOT \ULA|Add1~117_sumout\;
\ULA|ALT_INV_Add1~113_sumout\ <= NOT \ULA|Add1~113_sumout\;
\ULA|ALT_INV_Add1~109_sumout\ <= NOT \ULA|Add1~109_sumout\;
\ULA|ALT_INV_Add1~105_sumout\ <= NOT \ULA|Add1~105_sumout\;
\ULA|ALT_INV_Add1~101_sumout\ <= NOT \ULA|Add1~101_sumout\;
\ULA|ALT_INV_Add1~97_sumout\ <= NOT \ULA|Add1~97_sumout\;
\ULA|ALT_INV_Add1~93_sumout\ <= NOT \ULA|Add1~93_sumout\;
\ULA|ALT_INV_Add1~89_sumout\ <= NOT \ULA|Add1~89_sumout\;
\ULA|ALT_INV_Add1~85_sumout\ <= NOT \ULA|Add1~85_sumout\;
\ULA|ALT_INV_Add1~81_sumout\ <= NOT \ULA|Add1~81_sumout\;
\ULA|ALT_INV_Add1~77_sumout\ <= NOT \ULA|Add1~77_sumout\;
\ULA|ALT_INV_Add1~73_sumout\ <= NOT \ULA|Add1~73_sumout\;
\ULA|ALT_INV_Add1~69_sumout\ <= NOT \ULA|Add1~69_sumout\;
\ULA|ALT_INV_Add1~65_sumout\ <= NOT \ULA|Add1~65_sumout\;
\ULA|ALT_INV_Add1~61_sumout\ <= NOT \ULA|Add1~61_sumout\;
\ULA|ALT_INV_Add1~57_sumout\ <= NOT \ULA|Add1~57_sumout\;
\ULA|ALT_INV_Add1~53_sumout\ <= NOT \ULA|Add1~53_sumout\;
\ULA|ALT_INV_Add1~49_sumout\ <= NOT \ULA|Add1~49_sumout\;
\ULA|ALT_INV_Add1~45_sumout\ <= NOT \ULA|Add1~45_sumout\;
\ULA|ALT_INV_Add1~41_sumout\ <= NOT \ULA|Add1~41_sumout\;
\ULA|ALT_INV_Add1~37_sumout\ <= NOT \ULA|Add1~37_sumout\;
\ULA|ALT_INV_Add1~33_sumout\ <= NOT \ULA|Add1~33_sumout\;
\ULA|ALT_INV_Add1~29_sumout\ <= NOT \ULA|Add1~29_sumout\;
\ULA|ALT_INV_Add1~25_sumout\ <= NOT \ULA|Add1~25_sumout\;
\ULA|ALT_INV_Add1~21_sumout\ <= NOT \ULA|Add1~21_sumout\;
\ULA|ALT_INV_Add1~17_sumout\ <= NOT \ULA|Add1~17_sumout\;
\ULA|ALT_INV_Add1~13_sumout\ <= NOT \ULA|Add1~13_sumout\;
\ULA|ALT_INV_Add1~9_sumout\ <= NOT \ULA|Add1~9_sumout\;
\ULA|ALT_INV_Add1~5_sumout\ <= NOT \ULA|Add1~5_sumout\;
\ULA|ALT_INV_Add1~1_sumout\ <= NOT \ULA|Add1~1_sumout\;
\Somador|ALT_INV_Add0~1_sumout\ <= NOT \Somador|Add0~1_sumout\;
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
\BANCOREG|ALT_INV_registrador~115_q\ <= NOT \BANCOREG|registrador~115_q\;
\BANCOREG|ALT_INV_registrador~307_q\ <= NOT \BANCOREG|registrador~307_q\;
\BANCOREG|ALT_INV_registrador~371_q\ <= NOT \BANCOREG|registrador~371_q\;
\BANCOREG|ALT_INV_saidaB[12]~12_combout\ <= NOT \BANCOREG|saidaB[12]~12_combout\;
\BANCOREG|ALT_INV_registrador~1071_combout\ <= NOT \BANCOREG|registrador~1071_combout\;
\BANCOREG|ALT_INV_registrador~50_q\ <= NOT \BANCOREG|registrador~50_q\;
\BANCOREG|ALT_INV_registrador~114_q\ <= NOT \BANCOREG|registrador~114_q\;
\BANCOREG|ALT_INV_registrador~306_q\ <= NOT \BANCOREG|registrador~306_q\;
\BANCOREG|ALT_INV_registrador~370_q\ <= NOT \BANCOREG|registrador~370_q\;
\BANCOREG|ALT_INV_saidaB[11]~11_combout\ <= NOT \BANCOREG|saidaB[11]~11_combout\;
\BANCOREG|ALT_INV_registrador~1070_combout\ <= NOT \BANCOREG|registrador~1070_combout\;
\BANCOREG|ALT_INV_registrador~49_q\ <= NOT \BANCOREG|registrador~49_q\;
\BANCOREG|ALT_INV_registrador~113_q\ <= NOT \BANCOREG|registrador~113_q\;
\BANCOREG|ALT_INV_registrador~305_q\ <= NOT \BANCOREG|registrador~305_q\;
\BANCOREG|ALT_INV_registrador~369_q\ <= NOT \BANCOREG|registrador~369_q\;
\BANCOREG|ALT_INV_saidaB[10]~10_combout\ <= NOT \BANCOREG|saidaB[10]~10_combout\;
\BANCOREG|ALT_INV_registrador~1069_combout\ <= NOT \BANCOREG|registrador~1069_combout\;
\BANCOREG|ALT_INV_registrador~48_q\ <= NOT \BANCOREG|registrador~48_q\;
\BANCOREG|ALT_INV_registrador~112_q\ <= NOT \BANCOREG|registrador~112_q\;
\BANCOREG|ALT_INV_registrador~304_q\ <= NOT \BANCOREG|registrador~304_q\;
\BANCOREG|ALT_INV_registrador~368_q\ <= NOT \BANCOREG|registrador~368_q\;
\BANCOREG|ALT_INV_saidaB[9]~9_combout\ <= NOT \BANCOREG|saidaB[9]~9_combout\;
\BANCOREG|ALT_INV_registrador~1068_combout\ <= NOT \BANCOREG|registrador~1068_combout\;
\BANCOREG|ALT_INV_registrador~47_q\ <= NOT \BANCOREG|registrador~47_q\;
\BANCOREG|ALT_INV_registrador~111_q\ <= NOT \BANCOREG|registrador~111_q\;
\BANCOREG|ALT_INV_registrador~303_q\ <= NOT \BANCOREG|registrador~303_q\;
\BANCOREG|ALT_INV_registrador~367_q\ <= NOT \BANCOREG|registrador~367_q\;
\BANCOREG|ALT_INV_saidaB[8]~8_combout\ <= NOT \BANCOREG|saidaB[8]~8_combout\;
\BANCOREG|ALT_INV_registrador~1067_combout\ <= NOT \BANCOREG|registrador~1067_combout\;
\BANCOREG|ALT_INV_registrador~46_q\ <= NOT \BANCOREG|registrador~46_q\;
\BANCOREG|ALT_INV_registrador~110_q\ <= NOT \BANCOREG|registrador~110_q\;
\BANCOREG|ALT_INV_registrador~302_q\ <= NOT \BANCOREG|registrador~302_q\;
\BANCOREG|ALT_INV_registrador~366_q\ <= NOT \BANCOREG|registrador~366_q\;
\BANCOREG|ALT_INV_saidaB[7]~7_combout\ <= NOT \BANCOREG|saidaB[7]~7_combout\;
\BANCOREG|ALT_INV_registrador~1066_combout\ <= NOT \BANCOREG|registrador~1066_combout\;
\BANCOREG|ALT_INV_registrador~45_q\ <= NOT \BANCOREG|registrador~45_q\;
\BANCOREG|ALT_INV_registrador~109_q\ <= NOT \BANCOREG|registrador~109_q\;
\BANCOREG|ALT_INV_registrador~301_q\ <= NOT \BANCOREG|registrador~301_q\;
\BANCOREG|ALT_INV_registrador~365_q\ <= NOT \BANCOREG|registrador~365_q\;
\BANCOREG|ALT_INV_saidaB[6]~6_combout\ <= NOT \BANCOREG|saidaB[6]~6_combout\;
\BANCOREG|ALT_INV_registrador~1065_combout\ <= NOT \BANCOREG|registrador~1065_combout\;
\BANCOREG|ALT_INV_registrador~44_q\ <= NOT \BANCOREG|registrador~44_q\;
\BANCOREG|ALT_INV_registrador~108_q\ <= NOT \BANCOREG|registrador~108_q\;
\BANCOREG|ALT_INV_registrador~300_q\ <= NOT \BANCOREG|registrador~300_q\;
\BANCOREG|ALT_INV_registrador~364_q\ <= NOT \BANCOREG|registrador~364_q\;
\BANCOREG|ALT_INV_saidaB[5]~5_combout\ <= NOT \BANCOREG|saidaB[5]~5_combout\;
\BANCOREG|ALT_INV_registrador~1064_combout\ <= NOT \BANCOREG|registrador~1064_combout\;
\BANCOREG|ALT_INV_registrador~43_q\ <= NOT \BANCOREG|registrador~43_q\;
\BANCOREG|ALT_INV_registrador~107_q\ <= NOT \BANCOREG|registrador~107_q\;
\BANCOREG|ALT_INV_registrador~299_q\ <= NOT \BANCOREG|registrador~299_q\;
\BANCOREG|ALT_INV_registrador~363_q\ <= NOT \BANCOREG|registrador~363_q\;
\BANCOREG|ALT_INV_saidaB[4]~4_combout\ <= NOT \BANCOREG|saidaB[4]~4_combout\;
\BANCOREG|ALT_INV_registrador~1063_combout\ <= NOT \BANCOREG|registrador~1063_combout\;
\BANCOREG|ALT_INV_registrador~42_q\ <= NOT \BANCOREG|registrador~42_q\;
\BANCOREG|ALT_INV_registrador~106_q\ <= NOT \BANCOREG|registrador~106_q\;
\BANCOREG|ALT_INV_registrador~298_q\ <= NOT \BANCOREG|registrador~298_q\;
\BANCOREG|ALT_INV_registrador~362_q\ <= NOT \BANCOREG|registrador~362_q\;
\BANCOREG|ALT_INV_saidaB[3]~3_combout\ <= NOT \BANCOREG|saidaB[3]~3_combout\;
\BANCOREG|ALT_INV_registrador~1062_combout\ <= NOT \BANCOREG|registrador~1062_combout\;
\BANCOREG|ALT_INV_registrador~41_q\ <= NOT \BANCOREG|registrador~41_q\;
\BANCOREG|ALT_INV_registrador~105_q\ <= NOT \BANCOREG|registrador~105_q\;
\BANCOREG|ALT_INV_registrador~297_q\ <= NOT \BANCOREG|registrador~297_q\;
\BANCOREG|ALT_INV_registrador~361_q\ <= NOT \BANCOREG|registrador~361_q\;
\BANCOREG|ALT_INV_registrador~40_q\ <= NOT \BANCOREG|registrador~40_q\;
\BANCOREG|ALT_INV_registrador~104_q\ <= NOT \BANCOREG|registrador~104_q\;
\BANCOREG|ALT_INV_registrador~296_q\ <= NOT \BANCOREG|registrador~296_q\;
\BANCOREG|ALT_INV_registrador~360_q\ <= NOT \BANCOREG|registrador~360_q\;
\BANCOREG|ALT_INV_registrador~39_q\ <= NOT \BANCOREG|registrador~39_q\;
\BANCOREG|ALT_INV_registrador~103_q\ <= NOT \BANCOREG|registrador~103_q\;
\BANCOREG|ALT_INV_registrador~295_q\ <= NOT \BANCOREG|registrador~295_q\;
\BANCOREG|ALT_INV_registrador~359_q\ <= NOT \BANCOREG|registrador~359_q\;
\BANCOREG|ALT_INV_registrador~38_q\ <= NOT \BANCOREG|registrador~38_q\;
\BANCOREG|ALT_INV_registrador~102_q\ <= NOT \BANCOREG|registrador~102_q\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\BANCOREG|ALT_INV_registrador~294_q\ <= NOT \BANCOREG|registrador~294_q\;
\BANCOREG|ALT_INV_registrador~358_q\ <= NOT \BANCOREG|registrador~358_q\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\BANCOREG|ALT_INV_registrador~1106_combout\ <= NOT \BANCOREG|registrador~1106_combout\;
\BANCOREG|ALT_INV_registrador~1102_combout\ <= NOT \BANCOREG|registrador~1102_combout\;
\BANCOREG|ALT_INV_registrador~1098_combout\ <= NOT \BANCOREG|registrador~1098_combout\;
\BANCOREG|ALT_INV_registrador~1094_combout\ <= NOT \BANCOREG|registrador~1094_combout\;
\Somador|ALT_INV_Add0~117_sumout\ <= NOT \Somador|Add0~117_sumout\;
\Somador|ALT_INV_Add0~113_sumout\ <= NOT \Somador|Add0~113_sumout\;
\Somador|ALT_INV_Add0~109_sumout\ <= NOT \Somador|Add0~109_sumout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\UnidadeControle|ALT_INV_Equal2~0_combout\ <= NOT \UnidadeControle|Equal2~0_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\UnidadeControle|ALT_INV_saida[4]~0_combout\ <= NOT \UnidadeControle|saida[4]~0_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\MUXBeqPC|ALT_INV_saida_MUX[31]~2_combout\ <= NOT \MUXBeqPC|saida_MUX[31]~2_combout\;
\MUXBeqPC|ALT_INV_saida_MUX[31]~1_combout\ <= NOT \MUXBeqPC|saida_MUX[31]~1_combout\;
\MUXBeqPC|ALT_INV_saida_MUX[31]~0_combout\ <= NOT \MUXBeqPC|saida_MUX[31]~0_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\BANCOREG|ALT_INV_registrador~69_q\ <= NOT \BANCOREG|registrador~69_q\;
\BANCOREG|ALT_INV_registrador~133_q\ <= NOT \BANCOREG|registrador~133_q\;
\BANCOREG|ALT_INV_registrador~325_q\ <= NOT \BANCOREG|registrador~325_q\;
\BANCOREG|ALT_INV_registrador~389_q\ <= NOT \BANCOREG|registrador~389_q\;
\BANCOREG|ALT_INV_saidaB[30]~30_combout\ <= NOT \BANCOREG|saidaB[30]~30_combout\;
\BANCOREG|ALT_INV_registrador~1089_combout\ <= NOT \BANCOREG|registrador~1089_combout\;
\BANCOREG|ALT_INV_registrador~68_q\ <= NOT \BANCOREG|registrador~68_q\;
\BANCOREG|ALT_INV_registrador~132_q\ <= NOT \BANCOREG|registrador~132_q\;
\BANCOREG|ALT_INV_registrador~324_q\ <= NOT \BANCOREG|registrador~324_q\;
\BANCOREG|ALT_INV_registrador~388_q\ <= NOT \BANCOREG|registrador~388_q\;
\BANCOREG|ALT_INV_saidaB[29]~29_combout\ <= NOT \BANCOREG|saidaB[29]~29_combout\;
\BANCOREG|ALT_INV_registrador~1088_combout\ <= NOT \BANCOREG|registrador~1088_combout\;
\BANCOREG|ALT_INV_registrador~67_q\ <= NOT \BANCOREG|registrador~67_q\;
\BANCOREG|ALT_INV_registrador~131_q\ <= NOT \BANCOREG|registrador~131_q\;
\BANCOREG|ALT_INV_registrador~323_q\ <= NOT \BANCOREG|registrador~323_q\;
\BANCOREG|ALT_INV_registrador~387_q\ <= NOT \BANCOREG|registrador~387_q\;
\BANCOREG|ALT_INV_saidaB[28]~28_combout\ <= NOT \BANCOREG|saidaB[28]~28_combout\;
\BANCOREG|ALT_INV_registrador~1087_combout\ <= NOT \BANCOREG|registrador~1087_combout\;
\BANCOREG|ALT_INV_registrador~66_q\ <= NOT \BANCOREG|registrador~66_q\;
\BANCOREG|ALT_INV_registrador~130_q\ <= NOT \BANCOREG|registrador~130_q\;
\BANCOREG|ALT_INV_registrador~322_q\ <= NOT \BANCOREG|registrador~322_q\;
\BANCOREG|ALT_INV_registrador~386_q\ <= NOT \BANCOREG|registrador~386_q\;
\BANCOREG|ALT_INV_saidaB[27]~27_combout\ <= NOT \BANCOREG|saidaB[27]~27_combout\;
\BANCOREG|ALT_INV_registrador~1086_combout\ <= NOT \BANCOREG|registrador~1086_combout\;
\BANCOREG|ALT_INV_registrador~65_q\ <= NOT \BANCOREG|registrador~65_q\;
\BANCOREG|ALT_INV_registrador~129_q\ <= NOT \BANCOREG|registrador~129_q\;
\BANCOREG|ALT_INV_registrador~321_q\ <= NOT \BANCOREG|registrador~321_q\;
\BANCOREG|ALT_INV_registrador~385_q\ <= NOT \BANCOREG|registrador~385_q\;
\BANCOREG|ALT_INV_saidaB[26]~26_combout\ <= NOT \BANCOREG|saidaB[26]~26_combout\;
\BANCOREG|ALT_INV_registrador~1085_combout\ <= NOT \BANCOREG|registrador~1085_combout\;
\BANCOREG|ALT_INV_registrador~64_q\ <= NOT \BANCOREG|registrador~64_q\;
\BANCOREG|ALT_INV_registrador~128_q\ <= NOT \BANCOREG|registrador~128_q\;
\BANCOREG|ALT_INV_registrador~320_q\ <= NOT \BANCOREG|registrador~320_q\;
\BANCOREG|ALT_INV_registrador~384_q\ <= NOT \BANCOREG|registrador~384_q\;
\BANCOREG|ALT_INV_saidaB[25]~25_combout\ <= NOT \BANCOREG|saidaB[25]~25_combout\;
\BANCOREG|ALT_INV_registrador~1084_combout\ <= NOT \BANCOREG|registrador~1084_combout\;
\BANCOREG|ALT_INV_registrador~63_q\ <= NOT \BANCOREG|registrador~63_q\;
\BANCOREG|ALT_INV_registrador~127_q\ <= NOT \BANCOREG|registrador~127_q\;
\BANCOREG|ALT_INV_registrador~319_q\ <= NOT \BANCOREG|registrador~319_q\;
\BANCOREG|ALT_INV_registrador~383_q\ <= NOT \BANCOREG|registrador~383_q\;
\BANCOREG|ALT_INV_saidaB[24]~24_combout\ <= NOT \BANCOREG|saidaB[24]~24_combout\;
\BANCOREG|ALT_INV_registrador~1083_combout\ <= NOT \BANCOREG|registrador~1083_combout\;
\BANCOREG|ALT_INV_registrador~62_q\ <= NOT \BANCOREG|registrador~62_q\;
\BANCOREG|ALT_INV_registrador~126_q\ <= NOT \BANCOREG|registrador~126_q\;
\BANCOREG|ALT_INV_registrador~318_q\ <= NOT \BANCOREG|registrador~318_q\;
\BANCOREG|ALT_INV_registrador~382_q\ <= NOT \BANCOREG|registrador~382_q\;
\BANCOREG|ALT_INV_saidaB[23]~23_combout\ <= NOT \BANCOREG|saidaB[23]~23_combout\;
\BANCOREG|ALT_INV_registrador~1082_combout\ <= NOT \BANCOREG|registrador~1082_combout\;
\BANCOREG|ALT_INV_registrador~61_q\ <= NOT \BANCOREG|registrador~61_q\;
\BANCOREG|ALT_INV_registrador~125_q\ <= NOT \BANCOREG|registrador~125_q\;
\BANCOREG|ALT_INV_registrador~317_q\ <= NOT \BANCOREG|registrador~317_q\;
\BANCOREG|ALT_INV_registrador~381_q\ <= NOT \BANCOREG|registrador~381_q\;
\BANCOREG|ALT_INV_saidaB[22]~22_combout\ <= NOT \BANCOREG|saidaB[22]~22_combout\;
\BANCOREG|ALT_INV_registrador~1081_combout\ <= NOT \BANCOREG|registrador~1081_combout\;
\BANCOREG|ALT_INV_registrador~60_q\ <= NOT \BANCOREG|registrador~60_q\;
\BANCOREG|ALT_INV_registrador~124_q\ <= NOT \BANCOREG|registrador~124_q\;
\BANCOREG|ALT_INV_registrador~316_q\ <= NOT \BANCOREG|registrador~316_q\;
\BANCOREG|ALT_INV_registrador~380_q\ <= NOT \BANCOREG|registrador~380_q\;
\BANCOREG|ALT_INV_saidaB[21]~21_combout\ <= NOT \BANCOREG|saidaB[21]~21_combout\;
\BANCOREG|ALT_INV_registrador~1080_combout\ <= NOT \BANCOREG|registrador~1080_combout\;
\BANCOREG|ALT_INV_registrador~59_q\ <= NOT \BANCOREG|registrador~59_q\;
\BANCOREG|ALT_INV_registrador~123_q\ <= NOT \BANCOREG|registrador~123_q\;
\BANCOREG|ALT_INV_registrador~315_q\ <= NOT \BANCOREG|registrador~315_q\;
\BANCOREG|ALT_INV_registrador~379_q\ <= NOT \BANCOREG|registrador~379_q\;
\BANCOREG|ALT_INV_saidaB[20]~20_combout\ <= NOT \BANCOREG|saidaB[20]~20_combout\;
\BANCOREG|ALT_INV_registrador~1079_combout\ <= NOT \BANCOREG|registrador~1079_combout\;
\BANCOREG|ALT_INV_registrador~58_q\ <= NOT \BANCOREG|registrador~58_q\;
\BANCOREG|ALT_INV_registrador~122_q\ <= NOT \BANCOREG|registrador~122_q\;
\BANCOREG|ALT_INV_registrador~314_q\ <= NOT \BANCOREG|registrador~314_q\;
\BANCOREG|ALT_INV_registrador~378_q\ <= NOT \BANCOREG|registrador~378_q\;
\BANCOREG|ALT_INV_saidaB[19]~19_combout\ <= NOT \BANCOREG|saidaB[19]~19_combout\;
\BANCOREG|ALT_INV_registrador~1078_combout\ <= NOT \BANCOREG|registrador~1078_combout\;
\BANCOREG|ALT_INV_registrador~57_q\ <= NOT \BANCOREG|registrador~57_q\;
\BANCOREG|ALT_INV_registrador~121_q\ <= NOT \BANCOREG|registrador~121_q\;
\BANCOREG|ALT_INV_registrador~313_q\ <= NOT \BANCOREG|registrador~313_q\;
\BANCOREG|ALT_INV_registrador~377_q\ <= NOT \BANCOREG|registrador~377_q\;
\BANCOREG|ALT_INV_saidaB[18]~18_combout\ <= NOT \BANCOREG|saidaB[18]~18_combout\;
\BANCOREG|ALT_INV_registrador~1077_combout\ <= NOT \BANCOREG|registrador~1077_combout\;
\BANCOREG|ALT_INV_registrador~56_q\ <= NOT \BANCOREG|registrador~56_q\;
\BANCOREG|ALT_INV_registrador~120_q\ <= NOT \BANCOREG|registrador~120_q\;
\BANCOREG|ALT_INV_registrador~312_q\ <= NOT \BANCOREG|registrador~312_q\;
\BANCOREG|ALT_INV_registrador~376_q\ <= NOT \BANCOREG|registrador~376_q\;
\BANCOREG|ALT_INV_saidaB[17]~17_combout\ <= NOT \BANCOREG|saidaB[17]~17_combout\;
\BANCOREG|ALT_INV_registrador~1076_combout\ <= NOT \BANCOREG|registrador~1076_combout\;
\BANCOREG|ALT_INV_registrador~55_q\ <= NOT \BANCOREG|registrador~55_q\;
\BANCOREG|ALT_INV_registrador~119_q\ <= NOT \BANCOREG|registrador~119_q\;
\BANCOREG|ALT_INV_registrador~311_q\ <= NOT \BANCOREG|registrador~311_q\;
\BANCOREG|ALT_INV_registrador~375_q\ <= NOT \BANCOREG|registrador~375_q\;
\BANCOREG|ALT_INV_saidaB[16]~16_combout\ <= NOT \BANCOREG|saidaB[16]~16_combout\;
\BANCOREG|ALT_INV_registrador~1075_combout\ <= NOT \BANCOREG|registrador~1075_combout\;
\BANCOREG|ALT_INV_registrador~54_q\ <= NOT \BANCOREG|registrador~54_q\;
\BANCOREG|ALT_INV_registrador~118_q\ <= NOT \BANCOREG|registrador~118_q\;
\BANCOREG|ALT_INV_registrador~310_q\ <= NOT \BANCOREG|registrador~310_q\;
\BANCOREG|ALT_INV_registrador~374_q\ <= NOT \BANCOREG|registrador~374_q\;
\BANCOREG|ALT_INV_saidaB[15]~15_combout\ <= NOT \BANCOREG|saidaB[15]~15_combout\;
\BANCOREG|ALT_INV_registrador~1074_combout\ <= NOT \BANCOREG|registrador~1074_combout\;
\BANCOREG|ALT_INV_registrador~53_q\ <= NOT \BANCOREG|registrador~53_q\;
\BANCOREG|ALT_INV_registrador~117_q\ <= NOT \BANCOREG|registrador~117_q\;
\BANCOREG|ALT_INV_registrador~309_q\ <= NOT \BANCOREG|registrador~309_q\;
\BANCOREG|ALT_INV_registrador~373_q\ <= NOT \BANCOREG|registrador~373_q\;
\BANCOREG|ALT_INV_saidaB[14]~14_combout\ <= NOT \BANCOREG|saidaB[14]~14_combout\;
\BANCOREG|ALT_INV_registrador~1073_combout\ <= NOT \BANCOREG|registrador~1073_combout\;
\BANCOREG|ALT_INV_registrador~52_q\ <= NOT \BANCOREG|registrador~52_q\;
\BANCOREG|ALT_INV_registrador~116_q\ <= NOT \BANCOREG|registrador~116_q\;
\BANCOREG|ALT_INV_registrador~308_q\ <= NOT \BANCOREG|registrador~308_q\;
\BANCOREG|ALT_INV_registrador~372_q\ <= NOT \BANCOREG|registrador~372_q\;
\BANCOREG|ALT_INV_saidaB[13]~13_combout\ <= NOT \BANCOREG|saidaB[13]~13_combout\;
\BANCOREG|ALT_INV_registrador~1072_combout\ <= NOT \BANCOREG|registrador~1072_combout\;
\BANCOREG|ALT_INV_registrador~51_q\ <= NOT \BANCOREG|registrador~51_q\;
\BANCOREG|ALT_INV_Equal0~0_combout\ <= NOT \BANCOREG|Equal0~0_combout\;
\MUXBeqPC|ALT_INV_saida_MUX[31]~6_combout\ <= NOT \MUXBeqPC|saida_MUX[31]~6_combout\;
\MUXBeqPC|ALT_INV_saida_MUX[31]~5_combout\ <= NOT \MUXBeqPC|saida_MUX[31]~5_combout\;
\MUXBeqPC|ALT_INV_saida_MUX[31]~4_combout\ <= NOT \MUXBeqPC|saida_MUX[31]~4_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\RAM|ALT_INV_dado_out[31]~63_combout\ <= NOT \RAM|dado_out[31]~63_combout\;
\RAM|ALT_INV_dado_out[29]~61_combout\ <= NOT \RAM|dado_out[29]~61_combout\;
\RAM|ALT_INV_dado_out[27]~59_combout\ <= NOT \RAM|dado_out[27]~59_combout\;
\RAM|ALT_INV_dado_out[25]~57_combout\ <= NOT \RAM|dado_out[25]~57_combout\;
\RAM|ALT_INV_dado_out[23]~55_combout\ <= NOT \RAM|dado_out[23]~55_combout\;
\RAM|ALT_INV_dado_out[21]~53_combout\ <= NOT \RAM|dado_out[21]~53_combout\;
\RAM|ALT_INV_dado_out[19]~51_combout\ <= NOT \RAM|dado_out[19]~51_combout\;
\RAM|ALT_INV_dado_out[17]~49_combout\ <= NOT \RAM|dado_out[17]~49_combout\;
\RAM|ALT_INV_dado_out[15]~47_combout\ <= NOT \RAM|dado_out[15]~47_combout\;
\RAM|ALT_INV_dado_out[13]~45_combout\ <= NOT \RAM|dado_out[13]~45_combout\;
\RAM|ALT_INV_dado_out[11]~43_combout\ <= NOT \RAM|dado_out[11]~43_combout\;
\RAM|ALT_INV_dado_out[9]~41_combout\ <= NOT \RAM|dado_out[9]~41_combout\;
\RAM|ALT_INV_dado_out[7]~39_combout\ <= NOT \RAM|dado_out[7]~39_combout\;
\RAM|ALT_INV_dado_out[5]~37_combout\ <= NOT \RAM|dado_out[5]~37_combout\;
\RAM|ALT_INV_dado_out[3]~35_combout\ <= NOT \RAM|dado_out[3]~35_combout\;
\RAM|ALT_INV_dado_out[1]~33_combout\ <= NOT \RAM|dado_out[1]~33_combout\;
\RAM|ALT_INV_dado_out[0]~32_combout\ <= NOT \RAM|dado_out[0]~32_combout\;
\RAM|ALT_INV_ram~65_q\ <= NOT \RAM|ram~65_q\;
\RAM|ALT_INV_ram~64_q\ <= NOT \RAM|ram~64_q\;
\RAM|ALT_INV_ram~63_q\ <= NOT \RAM|ram~63_q\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~54_q\ <= NOT \RAM|ram~54_q\;
\RAM|ALT_INV_ram~53_q\ <= NOT \RAM|ram~53_q\;
\RAM|ALT_INV_ram~52_q\ <= NOT \RAM|ram~52_q\;
\RAM|ALT_INV_ram~51_q\ <= NOT \RAM|ram~51_q\;
\RAM|ALT_INV_ram~50_q\ <= NOT \RAM|ram~50_q\;
\RAM|ALT_INV_ram~49_q\ <= NOT \RAM|ram~49_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;

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

\ValorRs[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[0]~output_o\);

\ValorRs[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \ValorRs[1]~output_o\);

\ValorRs[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[2]~output_o\);

\ValorRs[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \ValorRs[3]~output_o\);

\ValorRs[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[4]~output_o\);

\ValorRs[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[5]~output_o\);

\ValorRs[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[6]~output_o\);

\ValorRs[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[7]~output_o\);

\ValorRs[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[8]~output_o\);

\ValorRs[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[9]~output_o\);

\ValorRs[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[10]~output_o\);

\ValorRs[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[11]~output_o\);

\ValorRs[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[12]~output_o\);

\ValorRs[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[13]~output_o\);

\ValorRs[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[14]~output_o\);

\ValorRs[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[15]~output_o\);

\ValorRs[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[16]~output_o\);

\ValorRs[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[17]~output_o\);

\ValorRs[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[18]~output_o\);

\ValorRs[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[19]~output_o\);

\ValorRs[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[20]~output_o\);

\ValorRs[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[21]~output_o\);

\ValorRs[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[22]~output_o\);

\ValorRs[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[23]~output_o\);

\ValorRs[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[24]~output_o\);

\ValorRs[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[25]~output_o\);

\ValorRs[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[26]~output_o\);

\ValorRs[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[27]~output_o\);

\ValorRs[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[28]~output_o\);

\ValorRs[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[29]~output_o\);

\ValorRs[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[30]~output_o\);

\ValorRs[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ValorRs[31]~output_o\);

\ValorRt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => \ValorRt[0]~output_o\);

\ValorRt[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => \ValorRt[1]~output_o\);

\ValorRt[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => \ValorRt[2]~output_o\);

\ValorRt[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => \ValorRt[3]~output_o\);

\ValorRt[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => \ValorRt[4]~output_o\);

\ValorRt[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => \ValorRt[5]~output_o\);

\ValorRt[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => \ValorRt[6]~output_o\);

\ValorRt[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => \ValorRt[7]~output_o\);

\ValorRt[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => \ValorRt[8]~output_o\);

\ValorRt[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => \ValorRt[9]~output_o\);

\ValorRt[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => \ValorRt[10]~output_o\);

\ValorRt[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => \ValorRt[11]~output_o\);

\ValorRt[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => \ValorRt[12]~output_o\);

\ValorRt[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => \ValorRt[13]~output_o\);

\ValorRt[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => \ValorRt[14]~output_o\);

\ValorRt[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => \ValorRt[15]~output_o\);

\ValorRt[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => \ValorRt[16]~output_o\);

\ValorRt[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => \ValorRt[17]~output_o\);

\ValorRt[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => \ValorRt[18]~output_o\);

\ValorRt[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => \ValorRt[19]~output_o\);

\ValorRt[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => \ValorRt[20]~output_o\);

\ValorRt[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => \ValorRt[21]~output_o\);

\ValorRt[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => \ValorRt[22]~output_o\);

\ValorRt[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => \ValorRt[23]~output_o\);

\ValorRt[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => \ValorRt[24]~output_o\);

\ValorRt[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => \ValorRt[25]~output_o\);

\ValorRt[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => \ValorRt[26]~output_o\);

\ValorRt[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => \ValorRt[27]~output_o\);

\ValorRt[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => \ValorRt[28]~output_o\);

\ValorRt[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => \ValorRt[29]~output_o\);

\ValorRt[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => \ValorRt[30]~output_o\);

\ValorRt[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => \ValorRt[31]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\Somador|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \Somador|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \Somador|Add0~1_sumout\,
	cout => \Somador|Add0~2\);

\SomadorDist|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~1_sumout\ = SUM(( \ROM|memROM~7_combout\ ) + ( \Somador|Add0~1_sumout\ ) + ( !VCC ))
-- \SomadorDist|Add0~2\ = CARRY(( \ROM|memROM~7_combout\ ) + ( \Somador|Add0~1_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \Somador|ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \SomadorDist|Add0~1_sumout\,
	cout => \SomadorDist|Add0~2\);

\Somador|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~5_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \Somador|Add0~2\ ))
-- \Somador|Add0~6\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \Somador|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \Somador|Add0~2\,
	sumout => \Somador|Add0~5_sumout\,
	cout => \Somador|Add0~6\);

\SomadorDist|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~5_sumout\ = SUM(( \ROM|memROM~7_combout\ ) + ( \Somador|Add0~5_sumout\ ) + ( \SomadorDist|Add0~2\ ))
-- \SomadorDist|Add0~6\ = CARRY(( \ROM|memROM~7_combout\ ) + ( \Somador|Add0~5_sumout\ ) + ( \SomadorDist|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \Somador|ALT_INV_Add0~5_sumout\,
	cin => \SomadorDist|Add0~2\,
	sumout => \SomadorDist|Add0~5_sumout\,
	cout => \SomadorDist|Add0~6\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~5_sumout\,
	asdata => \Somador|Add0~5_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\Somador|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \Somador|Add0~6\ ))
-- \Somador|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \Somador|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \Somador|Add0~6\,
	sumout => \Somador|Add0~9_sumout\,
	cout => \Somador|Add0~10\);

\SomadorDist|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~9_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~9_sumout\ ) + ( \SomadorDist|Add0~6\ ))
-- \SomadorDist|Add0~10\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~9_sumout\ ) + ( \SomadorDist|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~9_sumout\,
	cin => \SomadorDist|Add0~6\,
	sumout => \SomadorDist|Add0~9_sumout\,
	cout => \SomadorDist|Add0~10\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~9_sumout\,
	asdata => \Somador|Add0~9_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\Somador|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \Somador|Add0~10\ ))
-- \Somador|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \Somador|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \Somador|Add0~10\,
	sumout => \Somador|Add0~13_sumout\,
	cout => \Somador|Add0~14\);

\SomadorDist|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~13_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~13_sumout\ ) + ( \SomadorDist|Add0~10\ ))
-- \SomadorDist|Add0~14\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~13_sumout\ ) + ( \SomadorDist|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~13_sumout\,
	cin => \SomadorDist|Add0~10\,
	sumout => \SomadorDist|Add0~13_sumout\,
	cout => \SomadorDist|Add0~14\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~13_sumout\,
	asdata => \Somador|Add0~13_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\Somador|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~17_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \Somador|Add0~14\ ))
-- \Somador|Add0~18\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \Somador|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \Somador|Add0~14\,
	sumout => \Somador|Add0~17_sumout\,
	cout => \Somador|Add0~18\);

\Somador|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~18\ ))
-- \Somador|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \Somador|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \Somador|Add0~18\,
	sumout => \Somador|Add0~21_sumout\,
	cout => \Somador|Add0~22\);

\SomadorDist|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~17_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~17_sumout\ ) + ( \SomadorDist|Add0~14\ ))
-- \SomadorDist|Add0~18\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~17_sumout\ ) + ( \SomadorDist|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~17_sumout\,
	cin => \SomadorDist|Add0~14\,
	sumout => \SomadorDist|Add0~17_sumout\,
	cout => \SomadorDist|Add0~18\);

\SomadorDist|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~21_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~21_sumout\ ) + ( \SomadorDist|Add0~18\ ))
-- \SomadorDist|Add0~22\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~21_sumout\ ) + ( \SomadorDist|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~21_sumout\,
	cin => \SomadorDist|Add0~18\,
	sumout => \SomadorDist|Add0~21_sumout\,
	cout => \SomadorDist|Add0~22\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~21_sumout\,
	asdata => \Somador|Add0~21_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (\PC|DOUT\(2) & (\PC|DOUT\(3) & \ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~8_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~17_sumout\,
	asdata => \Somador|Add0~17_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000011000000000000001100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & \ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(2) $ (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000100100000000000010010000000000001001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ((!\ROM|memROM~3_combout\) # (\PC|DOUT\(7))) # (\PC|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT\(6) & ( !\PC|DOUT\(7) & ( (\PC|DOUT\(2) & (!\PC|DOUT\(3) & (!\PC|DOUT\(4) & !\PC|DOUT\(5)))) ) ) )

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
	combout => \ROM|memROM~1_combout\);

\UnidadeControle|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UnidadeControle|saida[4]~0_combout\ = (!\PC|DOUT\(6) & (!\PC|DOUT\(7) & (!\ROM|memROM~3_combout\ & \ROM|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \ROM|ALT_INV_memROM~3_combout\,
	datad => \ROM|ALT_INV_memROM~5_combout\,
	combout => \UnidadeControle|saida[4]~0_combout\);

\RAM|ram~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~130_combout\ = (\ROM|memROM~1_combout\ & (!\ROM|memROM~7_combout\ & \UnidadeControle|saida[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	combout => \RAM|ram~130_combout\);

\RAM|ram~62\ : dffeas
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
	q => \RAM|ram~62_q\);

\RAM|dado_out[28]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[28]~60_combout\ = ( \RAM|ram~62_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~62_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~62_q\,
	combout => \RAM|dado_out[28]~60_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( \PC|DOUT\(4) & ( \PC|DOUT\(5) ) ) # ( !\PC|DOUT\(4) & ( \PC|DOUT\(5) ) ) # ( \PC|DOUT\(4) & ( !\PC|DOUT\(5) ) ) # ( !\PC|DOUT\(4) & ( !\PC|DOUT\(5) & ( (((\PC|DOUT\(2) & !\PC|DOUT\(3))) # (\PC|DOUT\(7))) # (\PC|DOUT\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~2_combout\);

\BANCOREG|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1090_combout\ = (\ROM|memROM~0_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & \UnidadeControle|saida[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	combout => \BANCOREG|registrador~1090_combout\);

\BANCOREG|registrador~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[28]~60_combout\,
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~386_q\);

\BANCOREG|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1091_combout\ = (\ROM|memROM~0_combout\ & (!\ROM|memROM~1_combout\ & (\ROM|memROM~2_combout\ & \UnidadeControle|saida[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	combout => \BANCOREG|registrador~1091_combout\);

\BANCOREG|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[28]~60_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~322_q\);

\BANCOREG|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1092_combout\ = (!\ROM|memROM~0_combout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~2_combout\ & \UnidadeControle|saida[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~2_combout\,
	datad => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	combout => \BANCOREG|registrador~1092_combout\);

\BANCOREG|registrador~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[28]~60_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~130_q\);

\BANCOREG|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|Equal0~0_combout\ = (((\PC|DOUT\(6)) # (\PC|DOUT\(7))) # (\PC|DOUT\(4))) # (\PC|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(5),
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT\(7),
	datad => \PC|ALT_INV_DOUT\(6),
	combout => \BANCOREG|Equal0~0_combout\);

\UnidadeControle|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UnidadeControle|Equal2~0_combout\ = (!\ROM|memROM~1_combout\ & \UnidadeControle|saida[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	combout => \UnidadeControle|Equal2~0_combout\);

\BANCOREG|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1093_combout\ = (\BANCOREG|Equal0~0_combout\ & \UnidadeControle|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal0~0_combout\,
	datab => \UnidadeControle|ALT_INV_Equal2~0_combout\,
	combout => \BANCOREG|registrador~1093_combout\);

\BANCOREG|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[28]~60_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~66_q\);

\BANCOREG|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1087_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~66_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~130_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~130_q\,
	datac => \BANCOREG|ALT_INV_registrador~66_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1087_combout\);

\BANCOREG|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[28]~28_combout\ = ( \BANCOREG|registrador~1087_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1087_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~386_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~322_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~386_q\,
	datab => \BANCOREG|ALT_INV_registrador~322_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1087_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[28]~28_combout\);

\RAM|ram~61\ : dffeas
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
	q => \RAM|ram~61_q\);

\RAM|dado_out[27]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[27]~59_combout\ = ( \RAM|ram~61_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~61_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~61_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~385_q\);

\BANCOREG|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[27]~59_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~321_q\);

\BANCOREG|registrador~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[27]~59_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~129_q\);

\BANCOREG|registrador~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1126_combout\ = !\RAM|dado_out[27]~59_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[27]~59_combout\,
	combout => \BANCOREG|registrador~1126_combout\);

\BANCOREG|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1126_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~65_q\);

\BANCOREG|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1086_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~65_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~129_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~129_q\,
	datac => \BANCOREG|ALT_INV_registrador~65_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1086_combout\);

\BANCOREG|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[27]~27_combout\ = ( \BANCOREG|registrador~1086_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1086_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~385_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~321_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~385_q\,
	datab => \BANCOREG|ALT_INV_registrador~321_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1086_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[27]~27_combout\);

\RAM|ram~60\ : dffeas
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
	q => \RAM|ram~60_q\);

\RAM|dado_out[26]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[26]~58_combout\ = ( \RAM|ram~60_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~60_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~60_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~384_q\);

\BANCOREG|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[26]~58_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~320_q\);

\BANCOREG|registrador~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[26]~58_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~128_q\);

\BANCOREG|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[26]~58_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~64_q\);

\BANCOREG|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1085_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~64_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~128_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~128_q\,
	datac => \BANCOREG|ALT_INV_registrador~64_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1085_combout\);

\BANCOREG|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[26]~26_combout\ = ( \BANCOREG|registrador~1085_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1085_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~384_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~320_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~384_q\,
	datab => \BANCOREG|ALT_INV_registrador~320_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1085_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[26]~26_combout\);

\RAM|ram~59\ : dffeas
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
	q => \RAM|ram~59_q\);

\RAM|dado_out[25]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[25]~57_combout\ = ( \RAM|ram~59_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~59_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~59_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~383_q\);

\BANCOREG|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[25]~57_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~319_q\);

\BANCOREG|registrador~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[25]~57_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~127_q\);

\BANCOREG|registrador~1125\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1125_combout\ = !\RAM|dado_out[25]~57_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[25]~57_combout\,
	combout => \BANCOREG|registrador~1125_combout\);

\BANCOREG|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1125_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~63_q\);

\BANCOREG|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1084_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~63_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~127_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~127_q\,
	datac => \BANCOREG|ALT_INV_registrador~63_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1084_combout\);

\BANCOREG|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[25]~25_combout\ = ( \BANCOREG|registrador~1084_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1084_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~383_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~319_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~383_q\,
	datab => \BANCOREG|ALT_INV_registrador~319_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1084_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[25]~25_combout\);

\RAM|ram~58\ : dffeas
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
	q => \RAM|ram~58_q\);

\RAM|dado_out[24]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[24]~56_combout\ = ( \RAM|ram~58_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~58_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~58_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~382_q\);

\BANCOREG|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[24]~56_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~318_q\);

\BANCOREG|registrador~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[24]~56_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~126_q\);

\BANCOREG|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[24]~56_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~62_q\);

\BANCOREG|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1083_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~62_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~126_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~126_q\,
	datac => \BANCOREG|ALT_INV_registrador~62_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1083_combout\);

\BANCOREG|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[24]~24_combout\ = ( \BANCOREG|registrador~1083_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1083_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~382_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~318_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~382_q\,
	datab => \BANCOREG|ALT_INV_registrador~318_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1083_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[24]~24_combout\);

\RAM|ram~57\ : dffeas
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
	q => \RAM|ram~57_q\);

\RAM|dado_out[23]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[23]~55_combout\ = ( \RAM|ram~57_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~57_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~57_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~381_q\);

\BANCOREG|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[23]~55_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~317_q\);

\BANCOREG|registrador~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[23]~55_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~125_q\);

\BANCOREG|registrador~1124\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1124_combout\ = !\RAM|dado_out[23]~55_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[23]~55_combout\,
	combout => \BANCOREG|registrador~1124_combout\);

\BANCOREG|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1124_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~61_q\);

\BANCOREG|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1082_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~61_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~125_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~125_q\,
	datac => \BANCOREG|ALT_INV_registrador~61_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1082_combout\);

\BANCOREG|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[23]~23_combout\ = ( \BANCOREG|registrador~1082_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1082_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~381_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~317_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~381_q\,
	datab => \BANCOREG|ALT_INV_registrador~317_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1082_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[23]~23_combout\);

\RAM|ram~56\ : dffeas
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
	q => \RAM|ram~56_q\);

\RAM|dado_out[22]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[22]~54_combout\ = ( \RAM|ram~56_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~56_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~56_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~380_q\);

\BANCOREG|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[22]~54_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~316_q\);

\BANCOREG|registrador~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[22]~54_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~124_q\);

\BANCOREG|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[22]~54_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~60_q\);

\BANCOREG|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1081_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~60_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~124_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~124_q\,
	datac => \BANCOREG|ALT_INV_registrador~60_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1081_combout\);

\BANCOREG|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[22]~22_combout\ = ( \BANCOREG|registrador~1081_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1081_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~380_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~316_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~380_q\,
	datab => \BANCOREG|ALT_INV_registrador~316_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1081_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[22]~22_combout\);

\RAM|ram~55\ : dffeas
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
	q => \RAM|ram~55_q\);

\RAM|dado_out[21]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[21]~53_combout\ = ( \RAM|ram~55_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~55_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~55_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~379_q\);

\BANCOREG|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[21]~53_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~315_q\);

\BANCOREG|registrador~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[21]~53_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~123_q\);

\BANCOREG|registrador~1123\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1123_combout\ = !\RAM|dado_out[21]~53_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[21]~53_combout\,
	combout => \BANCOREG|registrador~1123_combout\);

\BANCOREG|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1123_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~59_q\);

\BANCOREG|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1080_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~59_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~123_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~123_q\,
	datac => \BANCOREG|ALT_INV_registrador~59_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1080_combout\);

\BANCOREG|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[21]~21_combout\ = ( \BANCOREG|registrador~1080_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1080_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~379_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~315_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~379_q\,
	datab => \BANCOREG|ALT_INV_registrador~315_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1080_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[21]~21_combout\);

\RAM|ram~54\ : dffeas
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
	q => \RAM|ram~54_q\);

\RAM|dado_out[20]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[20]~52_combout\ = ( \RAM|ram~54_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~54_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~54_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~378_q\);

\BANCOREG|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[20]~52_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~314_q\);

\BANCOREG|registrador~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[20]~52_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~122_q\);

\BANCOREG|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[20]~52_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~58_q\);

\BANCOREG|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1079_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~58_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~122_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~122_q\,
	datac => \BANCOREG|ALT_INV_registrador~58_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1079_combout\);

\BANCOREG|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[20]~20_combout\ = ( \BANCOREG|registrador~1079_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1079_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~378_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~314_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~378_q\,
	datab => \BANCOREG|ALT_INV_registrador~314_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1079_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[20]~20_combout\);

\RAM|ram~53\ : dffeas
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
	q => \RAM|ram~53_q\);

\RAM|dado_out[19]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[19]~51_combout\ = ( \RAM|ram~53_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~53_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~53_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~377_q\);

\BANCOREG|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[19]~51_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~313_q\);

\BANCOREG|registrador~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[19]~51_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~121_q\);

\BANCOREG|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1122_combout\ = !\RAM|dado_out[19]~51_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[19]~51_combout\,
	combout => \BANCOREG|registrador~1122_combout\);

\BANCOREG|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1122_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~57_q\);

\BANCOREG|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1078_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~57_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~121_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~121_q\,
	datac => \BANCOREG|ALT_INV_registrador~57_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1078_combout\);

\BANCOREG|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[19]~19_combout\ = ( \BANCOREG|registrador~1078_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1078_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~377_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~313_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~377_q\,
	datab => \BANCOREG|ALT_INV_registrador~313_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1078_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[19]~19_combout\);

\RAM|ram~52\ : dffeas
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
	q => \RAM|ram~52_q\);

\RAM|dado_out[18]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[18]~50_combout\ = ( \RAM|ram~52_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~52_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~52_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~376_q\);

\BANCOREG|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[18]~50_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~312_q\);

\BANCOREG|registrador~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[18]~50_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~120_q\);

\BANCOREG|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[18]~50_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~56_q\);

\BANCOREG|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1077_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~56_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~120_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~120_q\,
	datac => \BANCOREG|ALT_INV_registrador~56_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1077_combout\);

\BANCOREG|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[18]~18_combout\ = ( \BANCOREG|registrador~1077_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1077_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~376_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~312_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~376_q\,
	datab => \BANCOREG|ALT_INV_registrador~312_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1077_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[18]~18_combout\);

\RAM|ram~51\ : dffeas
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
	q => \RAM|ram~51_q\);

\RAM|dado_out[17]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[17]~49_combout\ = ( \RAM|ram~51_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~51_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~51_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~375_q\);

\BANCOREG|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[17]~49_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~311_q\);

\BANCOREG|registrador~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[17]~49_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~119_q\);

\BANCOREG|registrador~1121\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1121_combout\ = !\RAM|dado_out[17]~49_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[17]~49_combout\,
	combout => \BANCOREG|registrador~1121_combout\);

\BANCOREG|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1121_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~55_q\);

\BANCOREG|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1076_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~55_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~119_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~119_q\,
	datac => \BANCOREG|ALT_INV_registrador~55_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1076_combout\);

\BANCOREG|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[17]~17_combout\ = ( \BANCOREG|registrador~1076_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1076_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~375_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~311_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~375_q\,
	datab => \BANCOREG|ALT_INV_registrador~311_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1076_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[17]~17_combout\);

\RAM|ram~50\ : dffeas
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
	q => \RAM|ram~50_q\);

\RAM|dado_out[16]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[16]~48_combout\ = ( \RAM|ram~50_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~50_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~50_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~374_q\);

\BANCOREG|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[16]~48_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~310_q\);

\BANCOREG|registrador~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[16]~48_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~118_q\);

\BANCOREG|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[16]~48_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~54_q\);

\BANCOREG|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1075_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~54_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~118_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~118_q\,
	datac => \BANCOREG|ALT_INV_registrador~54_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1075_combout\);

\BANCOREG|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[16]~16_combout\ = ( \BANCOREG|registrador~1075_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1075_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~374_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~310_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~374_q\,
	datab => \BANCOREG|ALT_INV_registrador~310_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1075_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[16]~16_combout\);

\RAM|ram~49\ : dffeas
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
	q => \RAM|ram~49_q\);

\RAM|dado_out[15]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[15]~47_combout\ = ( \RAM|ram~49_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~49_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~49_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~373_q\);

\BANCOREG|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[15]~47_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~309_q\);

\BANCOREG|registrador~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[15]~47_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~117_q\);

\BANCOREG|registrador~1120\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1120_combout\ = !\RAM|dado_out[15]~47_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[15]~47_combout\,
	combout => \BANCOREG|registrador~1120_combout\);

\BANCOREG|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1120_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~53_q\);

\BANCOREG|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1074_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~53_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~117_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~117_q\,
	datac => \BANCOREG|ALT_INV_registrador~53_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1074_combout\);

\BANCOREG|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[15]~15_combout\ = ( \BANCOREG|registrador~1074_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1074_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~373_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~309_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~373_q\,
	datab => \BANCOREG|ALT_INV_registrador~309_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1074_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[15]~15_combout\);

\RAM|ram~48\ : dffeas
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
	q => \RAM|ram~48_q\);

\RAM|dado_out[14]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[14]~46_combout\ = ( \RAM|ram~48_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~48_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~48_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~372_q\);

\BANCOREG|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[14]~46_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~308_q\);

\BANCOREG|registrador~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[14]~46_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~116_q\);

\BANCOREG|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[14]~46_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~52_q\);

\BANCOREG|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1073_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~52_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~116_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~116_q\,
	datac => \BANCOREG|ALT_INV_registrador~52_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1073_combout\);

\BANCOREG|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[14]~14_combout\ = ( \BANCOREG|registrador~1073_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1073_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~372_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~308_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~372_q\,
	datab => \BANCOREG|ALT_INV_registrador~308_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1073_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[14]~14_combout\);

\RAM|ram~47\ : dffeas
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
	q => \RAM|ram~47_q\);

\RAM|dado_out[13]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[13]~45_combout\ = ( \RAM|ram~47_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~47_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~47_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~371_q\);

\BANCOREG|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[13]~45_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~307_q\);

\BANCOREG|registrador~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[13]~45_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~115_q\);

\BANCOREG|registrador~1119\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1119_combout\ = !\RAM|dado_out[13]~45_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[13]~45_combout\,
	combout => \BANCOREG|registrador~1119_combout\);

\BANCOREG|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1119_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~51_q\);

\BANCOREG|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1072_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~51_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~115_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~115_q\,
	datac => \BANCOREG|ALT_INV_registrador~51_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1072_combout\);

\BANCOREG|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[13]~13_combout\ = ( \BANCOREG|registrador~1072_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1072_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~371_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~307_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~371_q\,
	datab => \BANCOREG|ALT_INV_registrador~307_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1072_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[13]~13_combout\);

\RAM|ram~46\ : dffeas
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
	q => \RAM|ram~46_q\);

\RAM|dado_out[12]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[12]~44_combout\ = ( \RAM|ram~46_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~46_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~46_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~370_q\);

\BANCOREG|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[12]~44_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~306_q\);

\BANCOREG|registrador~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[12]~44_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~114_q\);

\BANCOREG|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[12]~44_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~50_q\);

\BANCOREG|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1071_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~50_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~114_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~114_q\,
	datac => \BANCOREG|ALT_INV_registrador~50_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1071_combout\);

\BANCOREG|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[12]~12_combout\ = ( \BANCOREG|registrador~1071_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1071_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~370_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~306_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~370_q\,
	datab => \BANCOREG|ALT_INV_registrador~306_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1071_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[12]~12_combout\);

\RAM|ram~45\ : dffeas
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
	q => \RAM|ram~45_q\);

\RAM|dado_out[11]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[11]~43_combout\ = ( \RAM|ram~45_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~45_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~45_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~369_q\);

\BANCOREG|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[11]~43_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~305_q\);

\BANCOREG|registrador~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[11]~43_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~113_q\);

\BANCOREG|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1118_combout\ = !\RAM|dado_out[11]~43_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[11]~43_combout\,
	combout => \BANCOREG|registrador~1118_combout\);

\BANCOREG|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1118_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~49_q\);

\BANCOREG|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1070_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~49_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~113_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~113_q\,
	datac => \BANCOREG|ALT_INV_registrador~49_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1070_combout\);

\BANCOREG|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[11]~11_combout\ = ( \BANCOREG|registrador~1070_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1070_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~369_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~305_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~369_q\,
	datab => \BANCOREG|ALT_INV_registrador~305_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1070_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[11]~11_combout\);

\RAM|ram~44\ : dffeas
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
	q => \RAM|ram~44_q\);

\RAM|dado_out[10]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[10]~42_combout\ = ( \RAM|ram~44_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~44_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~44_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~368_q\);

\BANCOREG|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[10]~42_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~304_q\);

\BANCOREG|registrador~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[10]~42_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~112_q\);

\BANCOREG|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[10]~42_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~48_q\);

\BANCOREG|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1069_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~48_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~112_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~112_q\,
	datac => \BANCOREG|ALT_INV_registrador~48_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1069_combout\);

\BANCOREG|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[10]~10_combout\ = ( \BANCOREG|registrador~1069_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1069_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~368_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~304_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~368_q\,
	datab => \BANCOREG|ALT_INV_registrador~304_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1069_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[10]~10_combout\);

\RAM|ram~43\ : dffeas
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
	q => \RAM|ram~43_q\);

\RAM|dado_out[9]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[9]~41_combout\ = ( \RAM|ram~43_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~43_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~43_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~367_q\);

\BANCOREG|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[9]~41_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~303_q\);

\BANCOREG|registrador~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[9]~41_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~111_q\);

\BANCOREG|registrador~1117\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1117_combout\ = !\RAM|dado_out[9]~41_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[9]~41_combout\,
	combout => \BANCOREG|registrador~1117_combout\);

\BANCOREG|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1117_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~47_q\);

\BANCOREG|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1068_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~47_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~111_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~111_q\,
	datac => \BANCOREG|ALT_INV_registrador~47_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1068_combout\);

\BANCOREG|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[9]~9_combout\ = ( \BANCOREG|registrador~1068_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1068_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~367_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~303_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~367_q\,
	datab => \BANCOREG|ALT_INV_registrador~303_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1068_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[9]~9_combout\);

\RAM|ram~42\ : dffeas
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
	q => \RAM|ram~42_q\);

\RAM|dado_out[8]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[8]~40_combout\ = ( \RAM|ram~42_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~42_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~42_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~366_q\);

\BANCOREG|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[8]~40_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~302_q\);

\BANCOREG|registrador~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[8]~40_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~110_q\);

\BANCOREG|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[8]~40_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~46_q\);

\BANCOREG|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1067_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~46_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~110_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~110_q\,
	datac => \BANCOREG|ALT_INV_registrador~46_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1067_combout\);

\BANCOREG|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[8]~8_combout\ = ( \BANCOREG|registrador~1067_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1067_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~366_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~302_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~366_q\,
	datab => \BANCOREG|ALT_INV_registrador~302_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1067_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[8]~8_combout\);

\RAM|ram~41\ : dffeas
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
	q => \RAM|ram~41_q\);

\RAM|dado_out[7]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~39_combout\ = ( \RAM|ram~41_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~41_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~41_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~365_q\);

\BANCOREG|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[7]~39_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~301_q\);

\BANCOREG|registrador~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[7]~39_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~109_q\);

\BANCOREG|registrador~1116\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1116_combout\ = !\RAM|dado_out[7]~39_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[7]~39_combout\,
	combout => \BANCOREG|registrador~1116_combout\);

\BANCOREG|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1116_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~45_q\);

\BANCOREG|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1066_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~45_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~109_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~109_q\,
	datac => \BANCOREG|ALT_INV_registrador~45_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1066_combout\);

\BANCOREG|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[7]~7_combout\ = ( \BANCOREG|registrador~1066_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1066_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~365_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~301_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~365_q\,
	datab => \BANCOREG|ALT_INV_registrador~301_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1066_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[7]~7_combout\);

\RAM|ram~40\ : dffeas
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
	q => \RAM|ram~40_q\);

\RAM|dado_out[6]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~38_combout\ = ( \RAM|ram~40_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~40_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~40_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~364_q\);

\BANCOREG|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[6]~38_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~300_q\);

\BANCOREG|registrador~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[6]~38_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~108_q\);

\BANCOREG|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[6]~38_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~44_q\);

\BANCOREG|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1065_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~44_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~108_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~108_q\,
	datac => \BANCOREG|ALT_INV_registrador~44_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1065_combout\);

\BANCOREG|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[6]~6_combout\ = ( \BANCOREG|registrador~1065_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1065_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~364_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~300_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~364_q\,
	datab => \BANCOREG|ALT_INV_registrador~300_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1065_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[6]~6_combout\);

\RAM|ram~39\ : dffeas
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
	q => \RAM|ram~39_q\);

\RAM|dado_out[5]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~37_combout\ = ( \RAM|ram~39_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~39_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~39_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~363_q\);

\BANCOREG|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[5]~37_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~299_q\);

\BANCOREG|registrador~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[5]~37_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~107_q\);

\BANCOREG|registrador~1115\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1115_combout\ = !\RAM|dado_out[5]~37_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[5]~37_combout\,
	combout => \BANCOREG|registrador~1115_combout\);

\BANCOREG|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1115_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~43_q\);

\BANCOREG|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1064_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~43_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~107_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~107_q\,
	datac => \BANCOREG|ALT_INV_registrador~43_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1064_combout\);

\BANCOREG|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[5]~5_combout\ = ( \BANCOREG|registrador~1064_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1064_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~363_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~299_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~363_q\,
	datab => \BANCOREG|ALT_INV_registrador~299_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1064_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[5]~5_combout\);

\RAM|ram~38\ : dffeas
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
	q => \RAM|ram~38_q\);

\RAM|dado_out[4]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~36_combout\ = ( \RAM|ram~38_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~38_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~38_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~362_q\);

\BANCOREG|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[4]~36_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~298_q\);

\BANCOREG|registrador~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[4]~36_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~106_q\);

\BANCOREG|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[4]~36_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~42_q\);

\BANCOREG|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1063_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~42_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~106_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~106_q\,
	datac => \BANCOREG|ALT_INV_registrador~42_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1063_combout\);

\BANCOREG|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[4]~4_combout\ = ( \BANCOREG|registrador~1063_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1063_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~362_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~298_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~362_q\,
	datab => \BANCOREG|ALT_INV_registrador~298_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1063_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[4]~4_combout\);

\RAM|ram~37\ : dffeas
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
	q => \RAM|ram~37_q\);

\RAM|dado_out[3]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~35_combout\ = ( \RAM|ram~37_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~37_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~37_q\,
	combout => \RAM|dado_out[3]~35_combout\);

\BANCOREG|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1113_combout\ = !\RAM|dado_out[3]~35_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[3]~35_combout\,
	combout => \BANCOREG|registrador~1113_combout\);

\BANCOREG|registrador~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1113_combout\,
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~361_q\);

\BANCOREG|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[3]~35_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~297_q\);

\BANCOREG|registrador~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[3]~35_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~105_q\);

\BANCOREG|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1114_combout\ = !\RAM|dado_out[3]~35_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[3]~35_combout\,
	combout => \BANCOREG|registrador~1114_combout\);

\BANCOREG|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1114_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~41_q\);

\BANCOREG|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1062_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~41_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~105_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~105_q\,
	datac => \BANCOREG|ALT_INV_registrador~41_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1062_combout\);

\BANCOREG|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[3]~3_combout\ = ( \BANCOREG|registrador~1062_combout\ & ( !\BANCOREG|Equal0~0_combout\ ) ) # ( !\BANCOREG|registrador~1062_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & ((!\ROM|memROM~2_combout\ & 
-- (!\BANCOREG|registrador~361_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~297_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000011111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~361_q\,
	datab => \BANCOREG|ALT_INV_registrador~297_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1062_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[3]~3_combout\);

\BANCOREG|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[2]~2_combout\ = (!\BANCOREG|Equal0~0_combout\ & \BANCOREG|registrador~1098_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal0~0_combout\,
	datab => \BANCOREG|ALT_INV_registrador~1098_combout\,
	combout => \BANCOREG|saidaB[2]~2_combout\);

\RAM|ram~36\ : dffeas
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
	q => \RAM|ram~36_q\);

\RAM|dado_out[2]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~34_combout\ = ( \RAM|ram~36_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~36_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~36_q\,
	combout => \RAM|dado_out[2]~34_combout\);

\BANCOREG|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[2]~34_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~40_q\);

\BANCOREG|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[2]~34_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~296_q\);

\BANCOREG|registrador~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[2]~34_combout\,
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~360_q\);

\BANCOREG|registrador~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[2]~34_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~104_q\);

\BANCOREG|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1098_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~0_combout\ & (\BANCOREG|registrador~104_q\)) # (\ROM|memROM~0_combout\ & (((\BANCOREG|registrador~360_q\)))))) # (\ROM|memROM~1_combout\ & 
-- (\ROM|memROM~0_combout\)) ) ) # ( \ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~0_combout\ & (\BANCOREG|registrador~40_q\)) # (\ROM|memROM~0_combout\ & (((\BANCOREG|registrador~296_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001100100011001000010000010101000111011001110110000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~40_q\,
	datad => \BANCOREG|ALT_INV_registrador~296_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~360_q\,
	datag => \BANCOREG|ALT_INV_registrador~104_q\,
	combout => \BANCOREG|registrador~1098_combout\);

\BANCOREG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[1]~1_combout\ = (!\BANCOREG|Equal0~0_combout\ & \BANCOREG|registrador~1102_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal0~0_combout\,
	datab => \BANCOREG|ALT_INV_registrador~1102_combout\,
	combout => \BANCOREG|saidaB[1]~1_combout\);

\RAM|ram~35\ : dffeas
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
	q => \RAM|ram~35_q\);

\RAM|dado_out[1]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~33_combout\ = ( \RAM|ram~35_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~35_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~35_q\,
	combout => \RAM|dado_out[1]~33_combout\);

\BANCOREG|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1112_combout\ = !\RAM|dado_out[1]~33_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[1]~33_combout\,
	combout => \BANCOREG|registrador~1112_combout\);

\BANCOREG|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1112_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~39_q\);

\BANCOREG|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[1]~33_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~295_q\);

\BANCOREG|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1111_combout\ = !\RAM|dado_out[1]~33_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[1]~33_combout\,
	combout => \BANCOREG|registrador~1111_combout\);

\BANCOREG|registrador~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1111_combout\,
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~359_q\);

\BANCOREG|registrador~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[1]~33_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~103_q\);

\BANCOREG|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1102_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~0_combout\ & (\BANCOREG|registrador~103_q\)) # (\ROM|memROM~0_combout\ & (((!\BANCOREG|registrador~359_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & 
-- ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~0_combout\ & (!\BANCOREG|registrador~39_q\)) # (\ROM|memROM~0_combout\ & (((\BANCOREG|registrador~295_q\)))))) # (\ROM|memROM~1_combout\ & (\ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010101000101010100100011011001100001000000010001001000110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~39_q\,
	datad => \BANCOREG|ALT_INV_registrador~295_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~359_q\,
	datag => \BANCOREG|ALT_INV_registrador~103_q\,
	combout => \BANCOREG|registrador~1102_combout\);

\BANCOREG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[0]~0_combout\ = (!\BANCOREG|Equal0~0_combout\ & \BANCOREG|registrador~1106_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal0~0_combout\,
	datab => \BANCOREG|ALT_INV_registrador~1106_combout\,
	combout => \BANCOREG|saidaB[0]~0_combout\);

\RAM|ram~34\ : dffeas
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
	q => \RAM|ram~34_q\);

\RAM|dado_out[0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~32_combout\ = ( \RAM|ram~34_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~34_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~34_q\,
	combout => \RAM|dado_out[0]~32_combout\);

\BANCOREG|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[0]~32_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~38_q\);

\BANCOREG|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[0]~32_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~294_q\);

\BANCOREG|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1110_combout\ = !\RAM|dado_out[0]~32_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[0]~32_combout\,
	combout => \BANCOREG|registrador~1110_combout\);

\BANCOREG|registrador~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1110_combout\,
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~358_q\);

\BANCOREG|registrador~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[0]~32_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~102_q\);

\BANCOREG|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1106_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~0_combout\ & (\BANCOREG|registrador~102_q\)) # (\ROM|memROM~0_combout\ & (((!\BANCOREG|registrador~358_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & 
-- ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~0_combout\ & (\BANCOREG|registrador~38_q\)) # (\ROM|memROM~0_combout\ & (((\BANCOREG|registrador~294_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010101000101010000010000010101000001000000010000000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~38_q\,
	datad => \BANCOREG|ALT_INV_registrador~294_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~358_q\,
	datag => \BANCOREG|ALT_INV_registrador~102_q\,
	combout => \BANCOREG|registrador~1106_combout\);

\ULA|Add1~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~130_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA|Add1~130_cout\);

\ULA|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~77_sumout\ = SUM(( GND ) + ( (!\UnidadeControle|saida[4]~0_combout\ & (((!\BANCOREG|registrador~1106_combout\)) # (\BANCOREG|Equal0~0_combout\))) # (\UnidadeControle|saida[4]~0_combout\ & (((!\ROM|memROM~7_combout\)))) ) + ( \ULA|Add1~130_cout\ 
-- ))
-- \ULA|Add1~78\ = CARRY(( GND ) + ( (!\UnidadeControle|saida[4]~0_combout\ & (((!\BANCOREG|registrador~1106_combout\)) # (\BANCOREG|Equal0~0_combout\))) # (\UnidadeControle|saida[4]~0_combout\ & (((!\ROM|memROM~7_combout\)))) ) + ( \ULA|Add1~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datab => \BANCOREG|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1106_combout\,
	cin => \ULA|Add1~130_cout\,
	sumout => \ULA|Add1~77_sumout\,
	cout => \ULA|Add1~78\);

\ULA|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~81_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( (!\UnidadeControle|saida[4]~0_combout\ & (((!\BANCOREG|registrador~1102_combout\)) # (\BANCOREG|Equal0~0_combout\))) # (\UnidadeControle|saida[4]~0_combout\ & (((!\ROM|memROM~7_combout\)))) ) + ( 
-- \ULA|Add1~78\ ))
-- \ULA|Add1~82\ = CARRY(( \ROM|memROM~0_combout\ ) + ( (!\UnidadeControle|saida[4]~0_combout\ & (((!\BANCOREG|registrador~1102_combout\)) # (\BANCOREG|Equal0~0_combout\))) # (\UnidadeControle|saida[4]~0_combout\ & (((!\ROM|memROM~7_combout\)))) ) + ( 
-- \ULA|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datab => \BANCOREG|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1102_combout\,
	cin => \ULA|Add1~78\,
	sumout => \ULA|Add1~81_sumout\,
	cout => \ULA|Add1~82\);

\ULA|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~57_sumout\ = SUM(( GND ) + ( (!\UnidadeControle|saida[4]~0_combout\ & (((!\BANCOREG|registrador~1098_combout\)) # (\BANCOREG|Equal0~0_combout\))) # (\UnidadeControle|saida[4]~0_combout\ & (((!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~82\ ))
-- \ULA|Add1~58\ = CARRY(( GND ) + ( (!\UnidadeControle|saida[4]~0_combout\ & (((!\BANCOREG|registrador~1098_combout\)) # (\BANCOREG|Equal0~0_combout\))) # (\UnidadeControle|saida[4]~0_combout\ & (((!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datab => \BANCOREG|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1098_combout\,
	cin => \ULA|Add1~82\,
	sumout => \ULA|Add1~57_sumout\,
	cout => \ULA|Add1~58\);

\ULA|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~61_sumout\ = SUM(( \ROM|memROM~0_combout\ ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[3]~3_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[3]~3_combout\))) # (\ROM|memROM~6_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~58\ ))
-- \ULA|Add1~62\ = CARRY(( \ROM|memROM~0_combout\ ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[3]~3_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[3]~3_combout\))) # (\ROM|memROM~6_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110001101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \BANCOREG|ALT_INV_saidaB[3]~3_combout\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \ULA|Add1~58\,
	sumout => \ULA|Add1~61_sumout\,
	cout => \ULA|Add1~62\);

\ULA|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~65_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[4]~4_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[4]~4_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~62\ ))
-- \ULA|Add1~66\ = CARRY(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[4]~4_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[4]~4_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) ) + ( 
-- \ULA|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \BANCOREG|ALT_INV_saidaB[4]~4_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \ULA|Add1~62\,
	sumout => \ULA|Add1~65_sumout\,
	cout => \ULA|Add1~66\);

\ULA|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~69_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[5]~5_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[5]~5_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~66\ ))
-- \ULA|Add1~70\ = CARRY(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[5]~5_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[5]~5_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) ) + ( 
-- \ULA|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \BANCOREG|ALT_INV_saidaB[5]~5_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \ULA|Add1~66\,
	sumout => \ULA|Add1~69_sumout\,
	cout => \ULA|Add1~70\);

\ULA|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~73_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[6]~6_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[6]~6_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~70\ ))
-- \ULA|Add1~74\ = CARRY(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[6]~6_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[6]~6_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) ) + ( 
-- \ULA|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \BANCOREG|ALT_INV_saidaB[6]~6_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \ULA|Add1~70\,
	sumout => \ULA|Add1~73_sumout\,
	cout => \ULA|Add1~74\);

\ULA|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~37_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[7]~7_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[7]~7_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~74\ ))
-- \ULA|Add1~38\ = CARRY(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[7]~7_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[7]~7_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) ) + ( 
-- \ULA|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \BANCOREG|ALT_INV_saidaB[7]~7_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \ULA|Add1~74\,
	sumout => \ULA|Add1~37_sumout\,
	cout => \ULA|Add1~38\);

\ULA|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~105_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[8]~8_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[8]~8_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~38\ ))
-- \ULA|Add1~106\ = CARRY(( GND ) + ( (!\ROM|memROM~4_combout\ & (((!\BANCOREG|saidaB[8]~8_combout\)))) # (\ROM|memROM~4_combout\ & ((!\ROM|memROM~6_combout\ & ((!\BANCOREG|saidaB[8]~8_combout\))) # (\ROM|memROM~6_combout\ & (!\ROM|memROM~8_combout\)))) ) + 
-- ( \ULA|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \BANCOREG|ALT_INV_saidaB[8]~8_combout\,
	dataf => \ROM|ALT_INV_memROM~6_combout\,
	cin => \ULA|Add1~38\,
	sumout => \ULA|Add1~105_sumout\,
	cout => \ULA|Add1~106\);

\ULA|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~109_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[9]~9_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[9]~9_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~106\ ))
-- \ULA|Add1~110\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[9]~9_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[9]~9_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) + 
-- ( \ULA|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[9]~9_combout\,
	cin => \ULA|Add1~106\,
	sumout => \ULA|Add1~109_sumout\,
	cout => \ULA|Add1~110\);

\ULA|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~113_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[10]~10_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[10]~10_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~110\ ))
-- \ULA|Add1~114\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[10]~10_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[10]~10_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[10]~10_combout\,
	cin => \ULA|Add1~110\,
	sumout => \ULA|Add1~113_sumout\,
	cout => \ULA|Add1~114\);

\ULA|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~117_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[11]~11_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[11]~11_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~114\ ))
-- \ULA|Add1~118\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[11]~11_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[11]~11_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[11]~11_combout\,
	cin => \ULA|Add1~114\,
	sumout => \ULA|Add1~117_sumout\,
	cout => \ULA|Add1~118\);

\ULA|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~121_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[12]~12_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[12]~12_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~118\ ))
-- \ULA|Add1~122\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[12]~12_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[12]~12_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[12]~12_combout\,
	cin => \ULA|Add1~118\,
	sumout => \ULA|Add1~121_sumout\,
	cout => \ULA|Add1~122\);

\ULA|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~41_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[13]~13_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[13]~13_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~122\ ))
-- \ULA|Add1~42\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[13]~13_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[13]~13_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[13]~13_combout\,
	cin => \ULA|Add1~122\,
	sumout => \ULA|Add1~41_sumout\,
	cout => \ULA|Add1~42\);

\ULA|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~45_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[14]~14_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[14]~14_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~42\ ))
-- \ULA|Add1~46\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[14]~14_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[14]~14_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[14]~14_combout\,
	cin => \ULA|Add1~42\,
	sumout => \ULA|Add1~45_sumout\,
	cout => \ULA|Add1~46\);

\ULA|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~49_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[15]~15_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[15]~15_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~46\ ))
-- \ULA|Add1~50\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[15]~15_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[15]~15_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[15]~15_combout\,
	cin => \ULA|Add1~46\,
	sumout => \ULA|Add1~49_sumout\,
	cout => \ULA|Add1~50\);

\ULA|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~53_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[16]~16_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[16]~16_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~50\ ))
-- \ULA|Add1~54\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[16]~16_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[16]~16_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[16]~16_combout\,
	cin => \ULA|Add1~50\,
	sumout => \ULA|Add1~53_sumout\,
	cout => \ULA|Add1~54\);

\ULA|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~125_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[17]~17_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[17]~17_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~54\ ))
-- \ULA|Add1~126\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[17]~17_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[17]~17_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[17]~17_combout\,
	cin => \ULA|Add1~54\,
	sumout => \ULA|Add1~125_sumout\,
	cout => \ULA|Add1~126\);

\ULA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~17_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[18]~18_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[18]~18_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~126\ ))
-- \ULA|Add1~18\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[18]~18_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[18]~18_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[18]~18_combout\,
	cin => \ULA|Add1~126\,
	sumout => \ULA|Add1~17_sumout\,
	cout => \ULA|Add1~18\);

\ULA|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~85_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[19]~19_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[19]~19_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~18\ ))
-- \ULA|Add1~86\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[19]~19_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[19]~19_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[19]~19_combout\,
	cin => \ULA|Add1~18\,
	sumout => \ULA|Add1~85_sumout\,
	cout => \ULA|Add1~86\);

\ULA|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~89_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[20]~20_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[20]~20_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~86\ ))
-- \ULA|Add1~90\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[20]~20_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[20]~20_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[20]~20_combout\,
	cin => \ULA|Add1~86\,
	sumout => \ULA|Add1~89_sumout\,
	cout => \ULA|Add1~90\);

\ULA|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~93_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[21]~21_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[21]~21_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~90\ ))
-- \ULA|Add1~94\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[21]~21_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[21]~21_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[21]~21_combout\,
	cin => \ULA|Add1~90\,
	sumout => \ULA|Add1~93_sumout\,
	cout => \ULA|Add1~94\);

\ULA|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~97_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[22]~22_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[22]~22_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~94\ ))
-- \ULA|Add1~98\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[22]~22_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[22]~22_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[22]~22_combout\,
	cin => \ULA|Add1~94\,
	sumout => \ULA|Add1~97_sumout\,
	cout => \ULA|Add1~98\);

\ULA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~21_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[23]~23_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[23]~23_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~98\ ))
-- \ULA|Add1~22\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[23]~23_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[23]~23_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[23]~23_combout\,
	cin => \ULA|Add1~98\,
	sumout => \ULA|Add1~21_sumout\,
	cout => \ULA|Add1~22\);

\ULA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~25_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[24]~24_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[24]~24_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~22\ ))
-- \ULA|Add1~26\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[24]~24_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[24]~24_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[24]~24_combout\,
	cin => \ULA|Add1~22\,
	sumout => \ULA|Add1~25_sumout\,
	cout => \ULA|Add1~26\);

\ULA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~29_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[25]~25_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[25]~25_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~26\ ))
-- \ULA|Add1~30\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[25]~25_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[25]~25_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[25]~25_combout\,
	cin => \ULA|Add1~26\,
	sumout => \ULA|Add1~29_sumout\,
	cout => \ULA|Add1~30\);

\ULA|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~33_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[26]~26_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[26]~26_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~30\ ))
-- \ULA|Add1~34\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[26]~26_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[26]~26_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[26]~26_combout\,
	cin => \ULA|Add1~30\,
	sumout => \ULA|Add1~33_sumout\,
	cout => \ULA|Add1~34\);

\ULA|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~101_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[27]~27_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[27]~27_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~34\ ))
-- \ULA|Add1~102\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[27]~27_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[27]~27_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) 
-- ) + ( \ULA|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[27]~27_combout\,
	cin => \ULA|Add1~34\,
	sumout => \ULA|Add1~101_sumout\,
	cout => \ULA|Add1~102\);

\ULA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~1_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[28]~28_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[28]~28_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~102\ ))
-- \ULA|Add1~2\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[28]~28_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[28]~28_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[28]~28_combout\,
	cin => \ULA|Add1~102\,
	sumout => \ULA|Add1~1_sumout\,
	cout => \ULA|Add1~2\);

\RAM|ram~63\ : dffeas
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
	q => \RAM|ram~63_q\);

\RAM|dado_out[29]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[29]~61_combout\ = ( \RAM|ram~63_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~63_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~63_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~387_q\);

\BANCOREG|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[29]~61_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~323_q\);

\BANCOREG|registrador~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[29]~61_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~131_q\);

\BANCOREG|registrador~1127\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1127_combout\ = !\RAM|dado_out[29]~61_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[29]~61_combout\,
	combout => \BANCOREG|registrador~1127_combout\);

\BANCOREG|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1127_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~67_q\);

\BANCOREG|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1088_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (!\BANCOREG|registrador~67_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~131_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111100000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~131_q\,
	datac => \BANCOREG|ALT_INV_registrador~67_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1088_combout\);

\BANCOREG|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[29]~29_combout\ = ( \BANCOREG|registrador~1088_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1088_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~387_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~323_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~387_q\,
	datab => \BANCOREG|ALT_INV_registrador~323_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1088_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[29]~29_combout\);

\ULA|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~5_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[29]~29_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[29]~29_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~2\ ))
-- \ULA|Add1~6\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[29]~29_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[29]~29_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[29]~29_combout\,
	cin => \ULA|Add1~2\,
	sumout => \ULA|Add1~5_sumout\,
	cout => \ULA|Add1~6\);

\RAM|ram~64\ : dffeas
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
	q => \RAM|ram~64_q\);

\RAM|dado_out[30]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[30]~62_combout\ = ( \RAM|ram~64_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~64_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~64_q\,
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
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~388_q\);

\BANCOREG|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[30]~62_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~324_q\);

\BANCOREG|registrador~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[30]~62_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~132_q\);

\BANCOREG|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[30]~62_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~68_q\);

\BANCOREG|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1089_combout\ = ( \ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( !\ROM|memROM~2_combout\ & ( \ROM|memROM~0_combout\ & ( \ROM|memROM~1_combout\ ) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~68_q\ & !\ROM|memROM~1_combout\) ) ) ) # ( !\ROM|memROM~2_combout\ & ( !\ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~132_q\ & !\ROM|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~132_q\,
	datac => \BANCOREG|ALT_INV_registrador~68_q\,
	datad => \ROM|ALT_INV_memROM~1_combout\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1089_combout\);

\BANCOREG|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[30]~30_combout\ = ( \BANCOREG|registrador~1089_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\BANCOREG|registrador~1089_combout\ & ( !\BANCOREG|Equal0~0_combout\ & ( (\ROM|memROM~0_combout\ & 
-- ((!\ROM|memROM~2_combout\ & (\BANCOREG|registrador~388_q\)) # (\ROM|memROM~2_combout\ & ((\BANCOREG|registrador~324_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~388_q\,
	datab => \BANCOREG|ALT_INV_registrador~324_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \ROM|ALT_INV_memROM~2_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1089_combout\,
	dataf => \BANCOREG|ALT_INV_Equal0~0_combout\,
	combout => \BANCOREG|saidaB[30]~30_combout\);

\ULA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~9_sumout\ = SUM(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[30]~30_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[30]~30_combout\))) # (\ROM|memROM~4_combout\ & 
-- (!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~6\ ))
-- \ULA|Add1~10\ = CARRY(( GND ) + ( (!\ROM|memROM~6_combout\ & (((!\BANCOREG|saidaB[30]~30_combout\)))) # (\ROM|memROM~6_combout\ & ((!\ROM|memROM~4_combout\ & ((!\BANCOREG|saidaB[30]~30_combout\))) # (\ROM|memROM~4_combout\ & (!\ROM|memROM~8_combout\)))) ) 
-- + ( \ULA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	dataf => \BANCOREG|ALT_INV_saidaB[30]~30_combout\,
	cin => \ULA|Add1~6\,
	sumout => \ULA|Add1~9_sumout\,
	cout => \ULA|Add1~10\);

\MUXBeqPC|saida_MUX[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBeqPC|saida_MUX[31]~1_combout\ = ( !\ULA|Add1~121_sumout\ & ( !\ULA|Add1~125_sumout\ & ( (!\ULA|Add1~105_sumout\ & (!\ULA|Add1~109_sumout\ & (!\ULA|Add1~113_sumout\ & !\ULA|Add1~117_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~105_sumout\,
	datab => \ULA|ALT_INV_Add1~109_sumout\,
	datac => \ULA|ALT_INV_Add1~113_sumout\,
	datad => \ULA|ALT_INV_Add1~117_sumout\,
	datae => \ULA|ALT_INV_Add1~121_sumout\,
	dataf => \ULA|ALT_INV_Add1~125_sumout\,
	combout => \MUXBeqPC|saida_MUX[31]~1_combout\);

\MUXBeqPC|saida_MUX[31]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBeqPC|saida_MUX[31]~2_combout\ = ( !\ULA|Add1~101_sumout\ & ( \MUXBeqPC|saida_MUX[31]~1_combout\ & ( (!\ULA|Add1~85_sumout\ & (!\ULA|Add1~89_sumout\ & (!\ULA|Add1~93_sumout\ & !\ULA|Add1~97_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~85_sumout\,
	datab => \ULA|ALT_INV_Add1~89_sumout\,
	datac => \ULA|ALT_INV_Add1~93_sumout\,
	datad => \ULA|ALT_INV_Add1~97_sumout\,
	datae => \ULA|ALT_INV_Add1~101_sumout\,
	dataf => \MUXBeqPC|ALT_INV_saida_MUX[31]~1_combout\,
	combout => \MUXBeqPC|saida_MUX[31]~2_combout\);

\MUXBeqPC|saida_MUX[31]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBeqPC|saida_MUX[31]~5_combout\ = ( !\ULA|Add1~77_sumout\ & ( !\ULA|Add1~81_sumout\ & ( (!\ULA|Add1~73_sumout\ & (!\ROM|memROM~1_combout\ & (!\ROM|memROM~4_combout\ & !\ROM|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~73_sumout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~4_combout\,
	datad => \ROM|ALT_INV_memROM~6_combout\,
	datae => \ULA|ALT_INV_Add1~77_sumout\,
	dataf => \ULA|ALT_INV_Add1~81_sumout\,
	combout => \MUXBeqPC|saida_MUX[31]~5_combout\);

\MUXBeqPC|saida_MUX[31]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBeqPC|saida_MUX[31]~6_combout\ = ( !\ULA|Add1~69_sumout\ & ( (!\ULA|Add1~49_sumout\ & (!\ULA|Add1~57_sumout\ & (!\ULA|Add1~61_sumout\ & !\ULA|Add1~65_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~49_sumout\,
	datab => \ULA|ALT_INV_Add1~57_sumout\,
	datac => \ULA|ALT_INV_Add1~61_sumout\,
	datad => \ULA|ALT_INV_Add1~65_sumout\,
	datae => \ULA|ALT_INV_Add1~69_sumout\,
	combout => \MUXBeqPC|saida_MUX[31]~6_combout\);

\MUXBeqPC|saida_MUX[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBeqPC|saida_MUX[31]~0_combout\ = ( \MUXBeqPC|saida_MUX[31]~5_combout\ & ( \MUXBeqPC|saida_MUX[31]~6_combout\ & ( (!\ULA|Add1~37_sumout\ & (!\ULA|Add1~41_sumout\ & (!\ULA|Add1~45_sumout\ & !\ULA|Add1~53_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~37_sumout\,
	datab => \ULA|ALT_INV_Add1~41_sumout\,
	datac => \ULA|ALT_INV_Add1~45_sumout\,
	datad => \ULA|ALT_INV_Add1~53_sumout\,
	datae => \MUXBeqPC|ALT_INV_saida_MUX[31]~5_combout\,
	dataf => \MUXBeqPC|ALT_INV_saida_MUX[31]~6_combout\,
	combout => \MUXBeqPC|saida_MUX[31]~0_combout\);

\BANCOREG|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[31]~31_combout\ = (!\BANCOREG|Equal0~0_combout\ & \BANCOREG|registrador~1094_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal0~0_combout\,
	datab => \BANCOREG|ALT_INV_registrador~1094_combout\,
	combout => \BANCOREG|saidaB[31]~31_combout\);

\RAM|ram~65\ : dffeas
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
	q => \RAM|ram~65_q\);

\RAM|dado_out[31]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[31]~63_combout\ = ( \RAM|ram~65_q\ & ( ((!\ROM|memROM~7_combout\) # (!\UnidadeControle|saida[4]~0_combout\)) # (\ROM|memROM~1_combout\) ) ) # ( !\RAM|ram~65_q\ & ( (!\UnidadeControle|saida[4]~0_combout\) # (\ROM|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111011111110111110101111101011111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	datac => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datae => \RAM|ALT_INV_ram~65_q\,
	combout => \RAM|dado_out[31]~63_combout\);

\BANCOREG|registrador~1128\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1128_combout\ = !\RAM|dado_out[31]~63_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out[31]~63_combout\,
	combout => \BANCOREG|registrador~1128_combout\);

\BANCOREG|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \BANCOREG|registrador~1128_combout\,
	ena => \BANCOREG|registrador~1093_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~69_q\);

\BANCOREG|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[31]~63_combout\,
	ena => \BANCOREG|registrador~1091_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~325_q\);

\BANCOREG|registrador~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[31]~63_combout\,
	ena => \BANCOREG|registrador~1090_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~389_q\);

\BANCOREG|registrador~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \RAM|dado_out[31]~63_combout\,
	ena => \BANCOREG|registrador~1092_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~133_q\);

\BANCOREG|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1094_combout\ = ( !\ROM|memROM~2_combout\ & ( (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~0_combout\ & (\BANCOREG|registrador~133_q\)) # (\ROM|memROM~0_combout\ & (((\BANCOREG|registrador~389_q\)))))) ) ) # ( \ROM|memROM~2_combout\ & ( 
-- (!\ROM|memROM~1_combout\ & ((!\ROM|memROM~0_combout\ & (!\BANCOREG|registrador~69_q\)) # (\ROM|memROM~0_combout\ & (((\BANCOREG|registrador~325_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000001000100000001010001000101010001010101000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~69_q\,
	datad => \BANCOREG|ALT_INV_registrador~325_q\,
	datae => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~389_q\,
	datag => \BANCOREG|ALT_INV_registrador~133_q\,
	combout => \BANCOREG|registrador~1094_combout\);

\ULA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add1~13_sumout\ = SUM(( GND ) + ( (!\UnidadeControle|saida[4]~0_combout\ & (((!\BANCOREG|registrador~1094_combout\)) # (\BANCOREG|Equal0~0_combout\))) # (\UnidadeControle|saida[4]~0_combout\ & (((!\ROM|memROM~8_combout\)))) ) + ( \ULA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011000110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datab => \BANCOREG|ALT_INV_Equal0~0_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1094_combout\,
	cin => \ULA|Add1~10\,
	sumout => \ULA|Add1~13_sumout\);

\MUXBeqPC|saida_MUX[31]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBeqPC|saida_MUX[31]~4_combout\ = ( !\ULA|Add1~29_sumout\ & ( !\ULA|Add1~33_sumout\ & ( (!\ULA|Add1~13_sumout\ & (!\ULA|Add1~17_sumout\ & (!\ULA|Add1~21_sumout\ & !\ULA|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~13_sumout\,
	datab => \ULA|ALT_INV_Add1~17_sumout\,
	datac => \ULA|ALT_INV_Add1~21_sumout\,
	datad => \ULA|ALT_INV_Add1~25_sumout\,
	datae => \ULA|ALT_INV_Add1~29_sumout\,
	dataf => \ULA|ALT_INV_Add1~33_sumout\,
	combout => \MUXBeqPC|saida_MUX[31]~4_combout\);

\MUXBeqPC|saida_MUX[31]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUXBeqPC|saida_MUX[31]~3_combout\ = ( \MUXBeqPC|saida_MUX[31]~0_combout\ & ( \MUXBeqPC|saida_MUX[31]~4_combout\ & ( (((!\MUXBeqPC|saida_MUX[31]~2_combout\) # (\ULA|Add1~9_sumout\)) # (\ULA|Add1~5_sumout\)) # (\ULA|Add1~1_sumout\) ) ) ) # ( 
-- !\MUXBeqPC|saida_MUX[31]~0_combout\ & ( \MUXBeqPC|saida_MUX[31]~4_combout\ ) ) # ( \MUXBeqPC|saida_MUX[31]~0_combout\ & ( !\MUXBeqPC|saida_MUX[31]~4_combout\ ) ) # ( !\MUXBeqPC|saida_MUX[31]~0_combout\ & ( !\MUXBeqPC|saida_MUX[31]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ALT_INV_Add1~1_sumout\,
	datab => \ULA|ALT_INV_Add1~5_sumout\,
	datac => \ULA|ALT_INV_Add1~9_sumout\,
	datad => \MUXBeqPC|ALT_INV_saida_MUX[31]~2_combout\,
	datae => \MUXBeqPC|ALT_INV_saida_MUX[31]~0_combout\,
	dataf => \MUXBeqPC|ALT_INV_saida_MUX[31]~4_combout\,
	combout => \MUXBeqPC|saida_MUX[31]~3_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~1_sumout\,
	asdata => \Somador|Add0~1_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \ROM|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ROM|ALT_INV_memROM~0_combout\,
	combout => \ROM|memROM~7_combout\);

\RAM|ram~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~98_combout\ = (\RAM|ram~34_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~34_q\,
	combout => \RAM|ram~98_combout\);

\RAM|ram~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~99_combout\ = (\RAM|ram~35_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~35_q\,
	combout => \RAM|ram~99_combout\);

\RAM|ram~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~100_combout\ = (\RAM|ram~36_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~36_q\,
	combout => \RAM|ram~100_combout\);

\RAM|ram~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~101_combout\ = (\RAM|ram~37_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~37_q\,
	combout => \RAM|ram~101_combout\);

\RAM|ram~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~102_combout\ = (\RAM|ram~38_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~38_q\,
	combout => \RAM|ram~102_combout\);

\RAM|ram~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~103_combout\ = (\RAM|ram~39_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~39_q\,
	combout => \RAM|ram~103_combout\);

\RAM|ram~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~104_combout\ = (\RAM|ram~40_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~40_q\,
	combout => \RAM|ram~104_combout\);

\RAM|ram~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~105_combout\ = (\RAM|ram~41_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~41_q\,
	combout => \RAM|ram~105_combout\);

\RAM|ram~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~106_combout\ = (\RAM|ram~42_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~42_q\,
	combout => \RAM|ram~106_combout\);

\RAM|ram~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~107_combout\ = (\RAM|ram~43_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~43_q\,
	combout => \RAM|ram~107_combout\);

\RAM|ram~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~108_combout\ = (\RAM|ram~44_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~44_q\,
	combout => \RAM|ram~108_combout\);

\RAM|ram~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~109_combout\ = (\RAM|ram~45_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~45_q\,
	combout => \RAM|ram~109_combout\);

\RAM|ram~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~110_combout\ = (\RAM|ram~46_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~46_q\,
	combout => \RAM|ram~110_combout\);

\RAM|ram~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~111_combout\ = (\RAM|ram~47_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~47_q\,
	combout => \RAM|ram~111_combout\);

\RAM|ram~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~112_combout\ = (\RAM|ram~48_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~48_q\,
	combout => \RAM|ram~112_combout\);

\RAM|ram~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~113_combout\ = (\RAM|ram~49_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~49_q\,
	combout => \RAM|ram~113_combout\);

\RAM|ram~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~114_combout\ = (\RAM|ram~50_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~50_q\,
	combout => \RAM|ram~114_combout\);

\RAM|ram~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~115_combout\ = (\RAM|ram~51_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~51_q\,
	combout => \RAM|ram~115_combout\);

\RAM|ram~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~116_combout\ = (\RAM|ram~52_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~52_q\,
	combout => \RAM|ram~116_combout\);

\RAM|ram~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~117_combout\ = (\RAM|ram~53_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~53_q\,
	combout => \RAM|ram~117_combout\);

\RAM|ram~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~118_combout\ = (\RAM|ram~54_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~54_q\,
	combout => \RAM|ram~118_combout\);

\RAM|ram~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~119_combout\ = (\RAM|ram~55_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~55_q\,
	combout => \RAM|ram~119_combout\);

\RAM|ram~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~120_combout\ = (\RAM|ram~56_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~56_q\,
	combout => \RAM|ram~120_combout\);

\RAM|ram~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~121_combout\ = (\RAM|ram~57_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~57_q\,
	combout => \RAM|ram~121_combout\);

\RAM|ram~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~122_combout\ = (\RAM|ram~58_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~58_q\,
	combout => \RAM|ram~122_combout\);

\RAM|ram~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~123_combout\ = (\RAM|ram~59_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~59_q\,
	combout => \RAM|ram~123_combout\);

\RAM|ram~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~124_combout\ = (\RAM|ram~60_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~60_q\,
	combout => \RAM|ram~124_combout\);

\RAM|ram~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~125_combout\ = (\RAM|ram~61_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~61_q\,
	combout => \RAM|ram~125_combout\);

\RAM|ram~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~126_combout\ = (\RAM|ram~62_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~62_q\,
	combout => \RAM|ram~126_combout\);

\RAM|ram~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~127_combout\ = (\RAM|ram~63_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~63_q\,
	combout => \RAM|ram~127_combout\);

\RAM|ram~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~128_combout\ = (\RAM|ram~64_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~64_q\,
	combout => \RAM|ram~128_combout\);

\RAM|ram~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~129_combout\ = (\RAM|ram~65_q\ & ((!\UnidadeControle|saida[4]~0_combout\ & ((!\ULA|Add1~77_sumout\))) # (\UnidadeControle|saida[4]~0_combout\ & (!\ROM|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000000000111000100000000011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \UnidadeControle|ALT_INV_saida[4]~0_combout\,
	datac => \ULA|ALT_INV_Add1~77_sumout\,
	datad => \RAM|ALT_INV_ram~65_q\,
	combout => \RAM|ram~129_combout\);

\Somador|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~25_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \Somador|Add0~22\ ))
-- \Somador|Add0~26\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \Somador|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \Somador|Add0~22\,
	sumout => \Somador|Add0~25_sumout\,
	cout => \Somador|Add0~26\);

\SomadorDist|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~25_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~25_sumout\ ) + ( \SomadorDist|Add0~22\ ))
-- \SomadorDist|Add0~26\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~25_sumout\ ) + ( \SomadorDist|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~25_sumout\,
	cin => \SomadorDist|Add0~22\,
	sumout => \SomadorDist|Add0~25_sumout\,
	cout => \SomadorDist|Add0~26\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~25_sumout\,
	asdata => \Somador|Add0~25_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\Somador|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~29_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \Somador|Add0~26\ ))
-- \Somador|Add0~30\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \Somador|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \Somador|Add0~26\,
	sumout => \Somador|Add0~29_sumout\,
	cout => \Somador|Add0~30\);

\SomadorDist|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~29_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~29_sumout\ ) + ( \SomadorDist|Add0~26\ ))
-- \SomadorDist|Add0~30\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~29_sumout\ ) + ( \SomadorDist|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~29_sumout\,
	cin => \SomadorDist|Add0~26\,
	sumout => \SomadorDist|Add0~29_sumout\,
	cout => \SomadorDist|Add0~30\);

\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~29_sumout\,
	asdata => \Somador|Add0~29_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

\Somador|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~33_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~30\ ))
-- \Somador|Add0~34\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \Somador|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \Somador|Add0~30\,
	sumout => \Somador|Add0~33_sumout\,
	cout => \Somador|Add0~34\);

\SomadorDist|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~33_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~33_sumout\ ) + ( \SomadorDist|Add0~30\ ))
-- \SomadorDist|Add0~34\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~33_sumout\ ) + ( \SomadorDist|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~33_sumout\,
	cin => \SomadorDist|Add0~30\,
	sumout => \SomadorDist|Add0~33_sumout\,
	cout => \SomadorDist|Add0~34\);

\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~33_sumout\,
	asdata => \Somador|Add0~33_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

\Somador|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~37_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~34\ ))
-- \Somador|Add0~38\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \Somador|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \Somador|Add0~34\,
	sumout => \Somador|Add0~37_sumout\,
	cout => \Somador|Add0~38\);

\SomadorDist|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~37_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~37_sumout\ ) + ( \SomadorDist|Add0~34\ ))
-- \SomadorDist|Add0~38\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~37_sumout\ ) + ( \SomadorDist|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~37_sumout\,
	cin => \SomadorDist|Add0~34\,
	sumout => \SomadorDist|Add0~37_sumout\,
	cout => \SomadorDist|Add0~38\);

\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~37_sumout\,
	asdata => \Somador|Add0~37_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

\Somador|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~41_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \Somador|Add0~38\ ))
-- \Somador|Add0~42\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \Somador|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(12),
	cin => \Somador|Add0~38\,
	sumout => \Somador|Add0~41_sumout\,
	cout => \Somador|Add0~42\);

\SomadorDist|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~41_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~41_sumout\ ) + ( \SomadorDist|Add0~38\ ))
-- \SomadorDist|Add0~42\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~41_sumout\ ) + ( \SomadorDist|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~41_sumout\,
	cin => \SomadorDist|Add0~38\,
	sumout => \SomadorDist|Add0~41_sumout\,
	cout => \SomadorDist|Add0~42\);

\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~41_sumout\,
	asdata => \Somador|Add0~41_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

\Somador|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~45_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \Somador|Add0~42\ ))
-- \Somador|Add0~46\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \Somador|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \Somador|Add0~42\,
	sumout => \Somador|Add0~45_sumout\,
	cout => \Somador|Add0~46\);

\SomadorDist|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~45_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~45_sumout\ ) + ( \SomadorDist|Add0~42\ ))
-- \SomadorDist|Add0~46\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~45_sumout\ ) + ( \SomadorDist|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~45_sumout\,
	cin => \SomadorDist|Add0~42\,
	sumout => \SomadorDist|Add0~45_sumout\,
	cout => \SomadorDist|Add0~46\);

\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~45_sumout\,
	asdata => \Somador|Add0~45_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

\Somador|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~49_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \Somador|Add0~46\ ))
-- \Somador|Add0~50\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \Somador|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(14),
	cin => \Somador|Add0~46\,
	sumout => \Somador|Add0~49_sumout\,
	cout => \Somador|Add0~50\);

\SomadorDist|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~49_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~49_sumout\ ) + ( \SomadorDist|Add0~46\ ))
-- \SomadorDist|Add0~50\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~49_sumout\ ) + ( \SomadorDist|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~49_sumout\,
	cin => \SomadorDist|Add0~46\,
	sumout => \SomadorDist|Add0~49_sumout\,
	cout => \SomadorDist|Add0~50\);

\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~49_sumout\,
	asdata => \Somador|Add0~49_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

\Somador|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~53_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \Somador|Add0~50\ ))
-- \Somador|Add0~54\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \Somador|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(15),
	cin => \Somador|Add0~50\,
	sumout => \Somador|Add0~53_sumout\,
	cout => \Somador|Add0~54\);

\SomadorDist|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~53_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~53_sumout\ ) + ( \SomadorDist|Add0~50\ ))
-- \SomadorDist|Add0~54\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~53_sumout\ ) + ( \SomadorDist|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~53_sumout\,
	cin => \SomadorDist|Add0~50\,
	sumout => \SomadorDist|Add0~53_sumout\,
	cout => \SomadorDist|Add0~54\);

\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~53_sumout\,
	asdata => \Somador|Add0~53_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

\Somador|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~57_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \Somador|Add0~54\ ))
-- \Somador|Add0~58\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \Somador|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \Somador|Add0~54\,
	sumout => \Somador|Add0~57_sumout\,
	cout => \Somador|Add0~58\);

\SomadorDist|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~57_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~57_sumout\ ) + ( \SomadorDist|Add0~54\ ))
-- \SomadorDist|Add0~58\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~57_sumout\ ) + ( \SomadorDist|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~57_sumout\,
	cin => \SomadorDist|Add0~54\,
	sumout => \SomadorDist|Add0~57_sumout\,
	cout => \SomadorDist|Add0~58\);

\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~57_sumout\,
	asdata => \Somador|Add0~57_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

\Somador|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~61_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \Somador|Add0~58\ ))
-- \Somador|Add0~62\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \Somador|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \Somador|Add0~58\,
	sumout => \Somador|Add0~61_sumout\,
	cout => \Somador|Add0~62\);

\SomadorDist|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~61_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~61_sumout\ ) + ( \SomadorDist|Add0~58\ ))
-- \SomadorDist|Add0~62\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~61_sumout\ ) + ( \SomadorDist|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~61_sumout\,
	cin => \SomadorDist|Add0~58\,
	sumout => \SomadorDist|Add0~61_sumout\,
	cout => \SomadorDist|Add0~62\);

\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~61_sumout\,
	asdata => \Somador|Add0~61_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

\Somador|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~65_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \Somador|Add0~62\ ))
-- \Somador|Add0~66\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \Somador|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(18),
	cin => \Somador|Add0~62\,
	sumout => \Somador|Add0~65_sumout\,
	cout => \Somador|Add0~66\);

\SomadorDist|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~65_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~65_sumout\ ) + ( \SomadorDist|Add0~62\ ))
-- \SomadorDist|Add0~66\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~65_sumout\ ) + ( \SomadorDist|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~65_sumout\,
	cin => \SomadorDist|Add0~62\,
	sumout => \SomadorDist|Add0~65_sumout\,
	cout => \SomadorDist|Add0~66\);

\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~65_sumout\,
	asdata => \Somador|Add0~65_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

\Somador|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~69_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \Somador|Add0~66\ ))
-- \Somador|Add0~70\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \Somador|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \Somador|Add0~66\,
	sumout => \Somador|Add0~69_sumout\,
	cout => \Somador|Add0~70\);

\SomadorDist|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~69_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~69_sumout\ ) + ( \SomadorDist|Add0~66\ ))
-- \SomadorDist|Add0~70\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~69_sumout\ ) + ( \SomadorDist|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~69_sumout\,
	cin => \SomadorDist|Add0~66\,
	sumout => \SomadorDist|Add0~69_sumout\,
	cout => \SomadorDist|Add0~70\);

\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~69_sumout\,
	asdata => \Somador|Add0~69_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

\Somador|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~73_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \Somador|Add0~70\ ))
-- \Somador|Add0~74\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \Somador|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \Somador|Add0~70\,
	sumout => \Somador|Add0~73_sumout\,
	cout => \Somador|Add0~74\);

\SomadorDist|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~73_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~73_sumout\ ) + ( \SomadorDist|Add0~70\ ))
-- \SomadorDist|Add0~74\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~73_sumout\ ) + ( \SomadorDist|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~73_sumout\,
	cin => \SomadorDist|Add0~70\,
	sumout => \SomadorDist|Add0~73_sumout\,
	cout => \SomadorDist|Add0~74\);

\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~73_sumout\,
	asdata => \Somador|Add0~73_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

\Somador|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~77_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \Somador|Add0~74\ ))
-- \Somador|Add0~78\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \Somador|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(21),
	cin => \Somador|Add0~74\,
	sumout => \Somador|Add0~77_sumout\,
	cout => \Somador|Add0~78\);

\SomadorDist|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~77_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~77_sumout\ ) + ( \SomadorDist|Add0~74\ ))
-- \SomadorDist|Add0~78\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~77_sumout\ ) + ( \SomadorDist|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~77_sumout\,
	cin => \SomadorDist|Add0~74\,
	sumout => \SomadorDist|Add0~77_sumout\,
	cout => \SomadorDist|Add0~78\);

\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~77_sumout\,
	asdata => \Somador|Add0~77_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

\Somador|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~81_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~78\ ))
-- \Somador|Add0~82\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \Somador|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \Somador|Add0~78\,
	sumout => \Somador|Add0~81_sumout\,
	cout => \Somador|Add0~82\);

\SomadorDist|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~81_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~81_sumout\ ) + ( \SomadorDist|Add0~78\ ))
-- \SomadorDist|Add0~82\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~81_sumout\ ) + ( \SomadorDist|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~81_sumout\,
	cin => \SomadorDist|Add0~78\,
	sumout => \SomadorDist|Add0~81_sumout\,
	cout => \SomadorDist|Add0~82\);

\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~81_sumout\,
	asdata => \Somador|Add0~81_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

\Somador|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~85_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~82\ ))
-- \Somador|Add0~86\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \Somador|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(23),
	cin => \Somador|Add0~82\,
	sumout => \Somador|Add0~85_sumout\,
	cout => \Somador|Add0~86\);

\SomadorDist|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~85_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~85_sumout\ ) + ( \SomadorDist|Add0~82\ ))
-- \SomadorDist|Add0~86\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~85_sumout\ ) + ( \SomadorDist|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~85_sumout\,
	cin => \SomadorDist|Add0~82\,
	sumout => \SomadorDist|Add0~85_sumout\,
	cout => \SomadorDist|Add0~86\);

\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~85_sumout\,
	asdata => \Somador|Add0~85_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

\Somador|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~89_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \Somador|Add0~86\ ))
-- \Somador|Add0~90\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \Somador|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(24),
	cin => \Somador|Add0~86\,
	sumout => \Somador|Add0~89_sumout\,
	cout => \Somador|Add0~90\);

\SomadorDist|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~89_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~89_sumout\ ) + ( \SomadorDist|Add0~86\ ))
-- \SomadorDist|Add0~90\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~89_sumout\ ) + ( \SomadorDist|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~89_sumout\,
	cin => \SomadorDist|Add0~86\,
	sumout => \SomadorDist|Add0~89_sumout\,
	cout => \SomadorDist|Add0~90\);

\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~89_sumout\,
	asdata => \Somador|Add0~89_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

\Somador|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~93_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~90\ ))
-- \Somador|Add0~94\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \Somador|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(25),
	cin => \Somador|Add0~90\,
	sumout => \Somador|Add0~93_sumout\,
	cout => \Somador|Add0~94\);

\SomadorDist|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~93_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~93_sumout\ ) + ( \SomadorDist|Add0~90\ ))
-- \SomadorDist|Add0~94\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~93_sumout\ ) + ( \SomadorDist|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~93_sumout\,
	cin => \SomadorDist|Add0~90\,
	sumout => \SomadorDist|Add0~93_sumout\,
	cout => \SomadorDist|Add0~94\);

\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~93_sumout\,
	asdata => \Somador|Add0~93_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

\Somador|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~97_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \Somador|Add0~94\ ))
-- \Somador|Add0~98\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \Somador|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \Somador|Add0~94\,
	sumout => \Somador|Add0~97_sumout\,
	cout => \Somador|Add0~98\);

\SomadorDist|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~97_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~97_sumout\ ) + ( \SomadorDist|Add0~94\ ))
-- \SomadorDist|Add0~98\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~97_sumout\ ) + ( \SomadorDist|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~97_sumout\,
	cin => \SomadorDist|Add0~94\,
	sumout => \SomadorDist|Add0~97_sumout\,
	cout => \SomadorDist|Add0~98\);

\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~97_sumout\,
	asdata => \Somador|Add0~97_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

\Somador|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~101_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \Somador|Add0~98\ ))
-- \Somador|Add0~102\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \Somador|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(27),
	cin => \Somador|Add0~98\,
	sumout => \Somador|Add0~101_sumout\,
	cout => \Somador|Add0~102\);

\SomadorDist|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~101_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~101_sumout\ ) + ( \SomadorDist|Add0~98\ ))
-- \SomadorDist|Add0~102\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~101_sumout\ ) + ( \SomadorDist|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~101_sumout\,
	cin => \SomadorDist|Add0~98\,
	sumout => \SomadorDist|Add0~101_sumout\,
	cout => \SomadorDist|Add0~102\);

\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~101_sumout\,
	asdata => \Somador|Add0~101_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

\Somador|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~105_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \Somador|Add0~102\ ))
-- \Somador|Add0~106\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \Somador|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(28),
	cin => \Somador|Add0~102\,
	sumout => \Somador|Add0~105_sumout\,
	cout => \Somador|Add0~106\);

\SomadorDist|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~105_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~105_sumout\ ) + ( \SomadorDist|Add0~102\ ))
-- \SomadorDist|Add0~106\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~105_sumout\ ) + ( \SomadorDist|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~105_sumout\,
	cin => \SomadorDist|Add0~102\,
	sumout => \SomadorDist|Add0~105_sumout\,
	cout => \SomadorDist|Add0~106\);

\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~105_sumout\,
	asdata => \Somador|Add0~105_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

\Somador|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~109_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~106\ ))
-- \Somador|Add0~110\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \Somador|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \Somador|Add0~106\,
	sumout => \Somador|Add0~109_sumout\,
	cout => \Somador|Add0~110\);

\SomadorDist|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~109_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~109_sumout\ ) + ( \SomadorDist|Add0~106\ ))
-- \SomadorDist|Add0~110\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~109_sumout\ ) + ( \SomadorDist|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~109_sumout\,
	cin => \SomadorDist|Add0~106\,
	sumout => \SomadorDist|Add0~109_sumout\,
	cout => \SomadorDist|Add0~110\);

\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~109_sumout\,
	asdata => \Somador|Add0~109_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

\Somador|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~113_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~110\ ))
-- \Somador|Add0~114\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \Somador|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(30),
	cin => \Somador|Add0~110\,
	sumout => \Somador|Add0~113_sumout\,
	cout => \Somador|Add0~114\);

\SomadorDist|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~113_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~113_sumout\ ) + ( \SomadorDist|Add0~110\ ))
-- \SomadorDist|Add0~114\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~113_sumout\ ) + ( \SomadorDist|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~113_sumout\,
	cin => \SomadorDist|Add0~110\,
	sumout => \SomadorDist|Add0~113_sumout\,
	cout => \SomadorDist|Add0~114\);

\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~113_sumout\,
	asdata => \Somador|Add0~113_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

\Somador|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~117_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \Somador|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(31),
	cin => \Somador|Add0~114\,
	sumout => \Somador|Add0~117_sumout\);

\SomadorDist|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \SomadorDist|Add0~117_sumout\ = SUM(( \ROM|memROM~8_combout\ ) + ( \Somador|Add0~117_sumout\ ) + ( \SomadorDist|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \Somador|ALT_INV_Add0~117_sumout\,
	cin => \SomadorDist|Add0~114\,
	sumout => \SomadorDist|Add0~117_sumout\);

\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \SomadorDist|Add0~117_sumout\,
	asdata => \Somador|Add0~117_sumout\,
	sload => \MUXBeqPC|saida_MUX[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

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

ww_ValorRs(0) <= \ValorRs[0]~output_o\;

ww_ValorRs(1) <= \ValorRs[1]~output_o\;

ww_ValorRs(2) <= \ValorRs[2]~output_o\;

ww_ValorRs(3) <= \ValorRs[3]~output_o\;

ww_ValorRs(4) <= \ValorRs[4]~output_o\;

ww_ValorRs(5) <= \ValorRs[5]~output_o\;

ww_ValorRs(6) <= \ValorRs[6]~output_o\;

ww_ValorRs(7) <= \ValorRs[7]~output_o\;

ww_ValorRs(8) <= \ValorRs[8]~output_o\;

ww_ValorRs(9) <= \ValorRs[9]~output_o\;

ww_ValorRs(10) <= \ValorRs[10]~output_o\;

ww_ValorRs(11) <= \ValorRs[11]~output_o\;

ww_ValorRs(12) <= \ValorRs[12]~output_o\;

ww_ValorRs(13) <= \ValorRs[13]~output_o\;

ww_ValorRs(14) <= \ValorRs[14]~output_o\;

ww_ValorRs(15) <= \ValorRs[15]~output_o\;

ww_ValorRs(16) <= \ValorRs[16]~output_o\;

ww_ValorRs(17) <= \ValorRs[17]~output_o\;

ww_ValorRs(18) <= \ValorRs[18]~output_o\;

ww_ValorRs(19) <= \ValorRs[19]~output_o\;

ww_ValorRs(20) <= \ValorRs[20]~output_o\;

ww_ValorRs(21) <= \ValorRs[21]~output_o\;

ww_ValorRs(22) <= \ValorRs[22]~output_o\;

ww_ValorRs(23) <= \ValorRs[23]~output_o\;

ww_ValorRs(24) <= \ValorRs[24]~output_o\;

ww_ValorRs(25) <= \ValorRs[25]~output_o\;

ww_ValorRs(26) <= \ValorRs[26]~output_o\;

ww_ValorRs(27) <= \ValorRs[27]~output_o\;

ww_ValorRs(28) <= \ValorRs[28]~output_o\;

ww_ValorRs(29) <= \ValorRs[29]~output_o\;

ww_ValorRs(30) <= \ValorRs[30]~output_o\;

ww_ValorRs(31) <= \ValorRs[31]~output_o\;

ww_ValorRt(0) <= \ValorRt[0]~output_o\;

ww_ValorRt(1) <= \ValorRt[1]~output_o\;

ww_ValorRt(2) <= \ValorRt[2]~output_o\;

ww_ValorRt(3) <= \ValorRt[3]~output_o\;

ww_ValorRt(4) <= \ValorRt[4]~output_o\;

ww_ValorRt(5) <= \ValorRt[5]~output_o\;

ww_ValorRt(6) <= \ValorRt[6]~output_o\;

ww_ValorRt(7) <= \ValorRt[7]~output_o\;

ww_ValorRt(8) <= \ValorRt[8]~output_o\;

ww_ValorRt(9) <= \ValorRt[9]~output_o\;

ww_ValorRt(10) <= \ValorRt[10]~output_o\;

ww_ValorRt(11) <= \ValorRt[11]~output_o\;

ww_ValorRt(12) <= \ValorRt[12]~output_o\;

ww_ValorRt(13) <= \ValorRt[13]~output_o\;

ww_ValorRt(14) <= \ValorRt[14]~output_o\;

ww_ValorRt(15) <= \ValorRt[15]~output_o\;

ww_ValorRt(16) <= \ValorRt[16]~output_o\;

ww_ValorRt(17) <= \ValorRt[17]~output_o\;

ww_ValorRt(18) <= \ValorRt[18]~output_o\;

ww_ValorRt(19) <= \ValorRt[19]~output_o\;

ww_ValorRt(20) <= \ValorRt[20]~output_o\;

ww_ValorRt(21) <= \ValorRt[21]~output_o\;

ww_ValorRt(22) <= \ValorRt[22]~output_o\;

ww_ValorRt(23) <= \ValorRt[23]~output_o\;

ww_ValorRt(24) <= \ValorRt[24]~output_o\;

ww_ValorRt(25) <= \ValorRt[25]~output_o\;

ww_ValorRt(26) <= \ValorRt[26]~output_o\;

ww_ValorRt(27) <= \ValorRt[27]~output_o\;

ww_ValorRt(28) <= \ValorRt[28]~output_o\;

ww_ValorRt(29) <= \ValorRt[29]~output_o\;

ww_ValorRt(30) <= \ValorRt[30]~output_o\;

ww_ValorRt(31) <= \ValorRt[31]~output_o\;
END structure;


