library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 15;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);
  
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  constant ANDD  : std_logic_vector(3 downto 0) := "1011";
  
  

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
			tmp(0) := "010000000000000";	-- LDI R0, $0    	#Início do Setup
			tmp(1) := "010100100100000";	-- STA R0, @288    	#Zerando hexas
			tmp(2) := "010100100100001";	-- STA R0, @289
			tmp(3) := "010100100100010";	-- STA R0, @290
			tmp(4) := "010100100100011";	-- STA R0, @291
			tmp(5) := "010100100100100";	-- STA R0, @292
			tmp(6) := "010100100100101";	-- STA R0, @293
			tmp(7) := "010100100000000";	-- STA R0, @256    	#Zerando leds
			tmp(8) := "010100100000001";	-- STA R0, @257
			tmp(9) := "010100100000010";	-- STA R0, @258
			tmp(10) := "010100000000000";	-- STA R0, @0  	#Armazenando 0 em unidade, dezena, centena, ...
			tmp(11) := "010100000000001";	-- STA R0, @1
			tmp(12) := "010100000000010";	-- STA R0, @2
			tmp(13) := "010100000000011";	-- STA R0, @3
			tmp(14) := "010100000000100";	-- STA R0, @4
			tmp(15) := "010100000000101";	-- STA R0, @5
			tmp(16) := "010100000000110";	-- STA R0, @6  	#Constante de comparação
			tmp(17) := "010100000001010";	-- STA R0, @10 	#Flag de inibir contagem
			tmp(18) := "010000000000001";	-- LDI R0, $1
			tmp(19) := "010100000000111";	-- STA R0, @7  	#Constante de incrementos
			tmp(20) := "010000000001010";	-- LDI R0, $10
			tmp(21) := "010100000001000";	-- STA R0, @8  	#Constante de limite do display
			tmp(22) := "010000000001001";	-- LDI R0, $9
			tmp(23) := "010100000001011";	-- STA R0, @11
			tmp(24) := "010100000001100";	-- STA R0, @12
			tmp(25) := "010100000001101";	-- STA R0, @13
			tmp(26) := "010100000001110";	-- STA R0, @14
			tmp(27) := "010100000001111";	-- STA R0, @15
			tmp(28) := "010100000010000";	-- STA R0, @16
			tmp(29) := "000101101100000";	-- LDA R1, @352   	#Início do LOOP Carrega valor de KEY0
			tmp(30) := "100001000000110";	-- CEQ R1, @6
			tmp(31) := "011100000100001";	-- JEQ @DISPLAY    	#Se não apertou, pula incremento
			tmp(32) := "100100000101101";	-- JSR @INCREMENTO
			tmp(33) := "100100001100100";	-- JSR @WRITEDISPLAY   	#Escrever no display
			tmp(34) := "000101101100001";	-- LDA R1, @353    	#Carrega valor de KEY1
			tmp(35) := "100001000000110";	-- CEQ R1, @6
			tmp(36) := "011100000100110";	-- JEQ @LIMIT
			tmp(37) := "100100001110001";	-- JSR @SETUPLIMIT
			tmp(38) := "100100010010011";	-- JSR @VERIFYLIMIT  	#Verificação de limite sempre acontece
			tmp(39) := "000101101100100";	-- LDA R1, @356    	#Desvia para rotina de reset
			tmp(40) := "101101000000111";	-- AND R1, @7
			tmp(41) := "100001000000110";	-- CEQ R1, @6
			tmp(42) := "011100000101100";	-- JEQ @FIM
			tmp(43) := "100100010101111";	-- JSR @RESET
			tmp(44) := "011000000011101";	-- JMP @LOOP
			tmp(45) := "010110111111111";	-- STA R2, @511 	#Rotina de Incremento Limpar KEY0
			tmp(46) := "000111000001010";	-- LDA R3, @10  	#Carrega flag
			tmp(47) := "100011000000110";	-- CEQ R3, @6
			tmp(48) := "011100000110010";	-- JEQ @UNIDADE
			tmp(49) := "011000001100011";	-- JMP @RETINC
			tmp(50) := "000111000000000";	-- LDA R3, @0    	#---Bloco que verifica unidade
			tmp(51) := "001011000000111";	-- SOMA R3, @7
			tmp(52) := "100011000001000";	-- CEQ R3, @8  	#Compara unidade com 10
			tmp(53) := "011100000111000";	-- JEQ @UNIDADEOVERFLOW
			tmp(54) := "010111000000000";	-- STA R3, @0
			tmp(55) := "011000001100011";	-- JMP @RETINC
			tmp(56) := "010011000000000";	-- LDI R3, $0
			tmp(57) := "010111000000000";	-- STA R3, @0  	#---
			tmp(58) := "000111000000001";	-- LDA R3, @1  	#---Bloco que verifica dezena
			tmp(59) := "001011000000111";	-- SOMA R3, @7
			tmp(60) := "100011000001000";	-- CEQ R3, @8
			tmp(61) := "011100001000000";	-- JEQ @DEZENAOVERFLOW
			tmp(62) := "010111000000001";	-- STA R3, @1
			tmp(63) := "011000001100011";	-- JMP @RETINC
			tmp(64) := "010011000000000";	-- LDI R3, $0
			tmp(65) := "010111000000001";	-- STA R3, @1  	#---
			tmp(66) := "000111000000010";	-- LDA R3, @2  	#---Bloco que verifica centena
			tmp(67) := "001011000000111";	-- SOMA R3, @7
			tmp(68) := "100011000001000";	-- CEQ R3, @8
			tmp(69) := "011100001001000";	-- JEQ @CENTENAOVERFLOW
			tmp(70) := "010111000000010";	-- STA R3, @2
			tmp(71) := "011000001100011";	-- JMP @RETINC
			tmp(72) := "010011000000000";	-- LDI R3, $0
			tmp(73) := "010111000000010";	-- STA R3, @2  	#---
			tmp(74) := "000111000000011";	-- LDA R3, @3  	#---Bloco que verifica milhar
			tmp(75) := "001011000000111";	-- SOMA R3, @7
			tmp(76) := "100011000001000";	-- CEQ R3, @8
			tmp(77) := "011100001010000";	-- JEQ @MILHAROVERFLOW
			tmp(78) := "010111000000011";	-- STA R3, @3
			tmp(79) := "011000001100011";	-- JMP @RETINC
			tmp(80) := "010011000000000";	-- LDI R3, $0
			tmp(81) := "010111000000011";	-- STA R3, @3  	#---
			tmp(82) := "000111000000100";	-- LDA R3, @4  	#---Bloco que verifica dezena de milhar
			tmp(83) := "001011000000111";	-- SOMA R3, @7
			tmp(84) := "100011000001000";	-- CEQ R3, @8
			tmp(85) := "011100001011000";	-- JEQ @DEZMILHAROVERFLOW
			tmp(86) := "010111000000100";	-- STA R3, @4
			tmp(87) := "011000001100011";	-- JMP @RETINC
			tmp(88) := "010011000000000";	-- LDI R3, $0
			tmp(89) := "010111000000100";	-- STA R3, @4  	#---
			tmp(90) := "000111000000101";	-- LDA R3, @5  	#---Bloco que verifica centena de milhar
			tmp(91) := "001011000000111";	-- SOMA R3, @7
			tmp(92) := "100011000001000";	-- CEQ R3, @8
			tmp(93) := "011100001100000";	-- JEQ @CENMILHAROVERFLOW
			tmp(94) := "010111000000101";	-- STA R3, @5
			tmp(95) := "011000001100011";	-- JMP @RETINC
			tmp(96) := "010011000000001";	-- LDI R3, $1    	#Se é passou de 9 em centena de milhar, overflow!
			tmp(97) := "010111100000001";	-- STA R3, @257
			tmp(98) := "010111000001010";	-- STA R3, @10 	#---
			tmp(99) := "101000000000000";	-- RET
			tmp(100) := "000111000000000";	-- LDA R3, @0 	#Rotina que escreve os valores nos hexas correspondentes
			tmp(101) := "010111100100000";	-- STA R3, @288
			tmp(102) := "000111000000001";	-- LDA R3, @1
			tmp(103) := "010111100100001";	-- STA R3, @289
			tmp(104) := "000111000000010";	-- LDA R3, @2
			tmp(105) := "010111100100010";	-- STA R3, @290
			tmp(106) := "000111000000011";	-- LDA R3, @3
			tmp(107) := "010111100100011";	-- STA R3, @291
			tmp(108) := "000111000000100";	-- LDA R3, @4
			tmp(109) := "010111100100100";	-- STA R3, @292
			tmp(110) := "000111000000101";	-- LDA R3, @5
			tmp(111) := "010111100100101";	-- STA R3, @293
			tmp(112) := "101000000000000";	-- RET
			tmp(113) := "010110111111110";	-- STA R2, @510 	#Rotina que define os limites
			tmp(114) := "000111101000000";	-- LDA R3, @320    
			tmp(115) := "010111000001011";	-- STA R3, @11 	#Define limite de unidade
			tmp(116) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(117) := "100011000000110";	-- CEQ R3, @6
			tmp(118) := "011100001110100";	-- JEQ @WAIT1
			tmp(119) := "010111111111110";	-- STA R3, @510
			tmp(120) := "000111101000000";	-- LDA R3, @320
			tmp(121) := "010111000001100";	-- STA R3, @12 	#Define limite de dezena
			tmp(122) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(123) := "100011000000110";	-- CEQ R3, @6
			tmp(124) := "011100001111010";	-- JEQ @WAIT2
			tmp(125) := "010111111111110";	-- STA R3, @510
			tmp(126) := "000111101000000";	-- LDA R3, @320
			tmp(127) := "010111000001101";	-- STA R3, @13 	#Define limite de centena
			tmp(128) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(129) := "100011000000110";	-- CEQ R3, @6
			tmp(130) := "011100010000000";	-- JEQ @WAIT3
			tmp(131) := "010111111111110";	-- STA R3, @510
			tmp(132) := "000111101000000";	-- LDA R3, @320
			tmp(133) := "010111000001110";	-- STA R3, @14 	#Define limite de milhar
			tmp(134) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(135) := "100011000000110";	-- CEQ R3, @6
			tmp(136) := "011100010000110";	-- JEQ @WAIT4
			tmp(137) := "010111111111110";	-- STA R3, @510
			tmp(138) := "000111101000000";	-- LDA R3, @320
			tmp(139) := "010111000001111";	-- STA R3, @15 	#Define limite de dezena de milhar
			tmp(140) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(141) := "100011000000110";	-- CEQ R3, @6
			tmp(142) := "011100010001100";	-- JEQ @WAIT5
			tmp(143) := "010111111111110";	-- STA R3, @510
			tmp(144) := "000111101000000";	-- LDA R3, @320
			tmp(145) := "010111000010000";	-- STA R3, @16 	#Define limite de centena de milhar
			tmp(146) := "101000000000000";	-- RET
			tmp(147) := "000111000000000";	-- LDA R3, @0  	#Rotina que verifica limite
			tmp(148) := "100011000001011";	-- CEQ R3, @11 	#Compara unidade com seu limite
			tmp(149) := "011100010010111";	-- JEQ @VERIFY1
			tmp(150) := "011000010101110";	-- JMP @RETVER
			tmp(151) := "000111000000001";	-- LDA R3, @1
			tmp(152) := "100011000001100";	-- CEQ R3, @12 	#Compara dezena com seu limite
			tmp(153) := "011100010011011";	-- JEQ @VERIFY2
			tmp(154) := "011000010101110";	-- JMP @RETVER
			tmp(155) := "000111000000010";	-- LDA R3, @2
			tmp(156) := "100011000001101";	-- CEQ R3, @13 	#Compara centena com seu limite
			tmp(157) := "011100010011111";	-- JEQ @VERIFY3
			tmp(158) := "011000010101110";	-- JMP @RETVER
			tmp(159) := "000111000000011";	-- LDA R3, @3
			tmp(160) := "100011000001110";	-- CEQ R3, @14 	#Compara milhar com seu limite
			tmp(161) := "011100010100011";	-- JEQ @VERIFY4
			tmp(162) := "011000010101110";	-- JMP @RETVER
			tmp(163) := "000111000000100";	-- LDA R3, @4
			tmp(164) := "100011000001111";	-- CEQ R3, @15 	#Compara dezena de milhar com seu limite
			tmp(165) := "011100010100111";	-- JEQ @VERIFY5
			tmp(166) := "011000010101110";	-- JMP @RETVER
			tmp(167) := "000111000000101";	-- LDA R3, @5
			tmp(168) := "100011000010000";	-- CEQ R3, @16 	#Compara centena de milhar com seu limite
			tmp(169) := "011100010101011";	-- JEQ @LIMITEATINGIDO
			tmp(170) := "011000010101110";	-- JMP @RETVER
			tmp(171) := "010011000000001";	-- LDI R3, $1   	#Todo os valores iguais ao limite
			tmp(172) := "010111000001010";	-- STA R3, @10
			tmp(173) := "010111100000010";	-- STA R3, @258
			tmp(174) := "101000000000000";	-- RET
			tmp(175) := "010011000000000";	-- LDI R3, $0    	#Rotina de Reset
			tmp(176) := "010111000000000";	-- STA R3, @0
			tmp(177) := "010111000000001";	-- STA R3, @1
			tmp(178) := "010111000000010";	-- STA R3, @2
			tmp(179) := "010111000000011";	-- STA R3, @3
			tmp(180) := "010111000000100";	-- STA R3, @4
			tmp(181) := "010111000000101";	-- STA R3, @5
			tmp(182) := "010111000001010";	-- STA R3, @10
			tmp(183) := "010111100000001";	-- STA R3, @257
			tmp(184) := "010111100000010";	-- STA R3, @258
			tmp(185) := "101000000000000";	-- RET


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;