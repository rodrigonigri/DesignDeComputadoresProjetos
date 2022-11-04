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
			tmp(10) := "010100000000000";	-- STA R0, @0      	#Armazenando 0 em unidade, dezena, centena, ...
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
			tmp(22) := "010000000000110";	-- LDI R0, $6
			tmp(23) := "010100000001001";	-- STA R0, @9
			tmp(24) := "010000000000010";	-- LDI R0, $2
			tmp(25) := "010100000010001";	-- STA R0, @17
			tmp(26) := "010000000000100";	-- LDI R0, $4
			tmp(27) := "010100000010010";	-- STA R0, @18
			tmp(28) := "010000000001001";	-- LDI R0, $9
			tmp(29) := "010100000001011";	-- STA R0, @11
			tmp(30) := "010100000001100";	-- STA R0, @12
			tmp(31) := "010100000001101";	-- STA R0, @13
			tmp(32) := "010100000001110";	-- STA R0, @14
			tmp(33) := "010100000001111";	-- STA R0, @15
			tmp(34) := "010100000010000";	-- STA R0, @16
			tmp(35) := "000101101100000";	-- LDA R1, @352   	#Início do LOOP Carrega valor de KEY0
			tmp(36) := "100001000000110";	-- CEQ R1, @6
			tmp(37) := "011100000100111";	-- JEQ @DISPLAY    	#Se não apertou, pula incremento
			tmp(38) := "100100000110011";	-- JSR @INCREMENTO
			tmp(39) := "100100001110111";	-- JSR @WRITEDISPLAY   	#Escrever no display
			tmp(40) := "000101101100001";	-- LDA R1, @353    	#Carrega valor de KEY1
			tmp(41) := "100001000000110";	-- CEQ R1, @6
			tmp(42) := "011100000101100";	-- JEQ @LIMIT
			tmp(43) := "100100010000100";	-- JSR @SETUPLIMIT
			tmp(44) := "100100010100110";	-- JSR @VERIFYLIMIT  	#Verificação de limite sempre acontece
			tmp(45) := "000101101100100";	-- LDA R1, @356    	#Desvia para rotina de reset
			tmp(46) := "101101000000111";	-- AND R1, @7
			tmp(47) := "100001000000110";	-- CEQ R1, @6
			tmp(48) := "011100000110010";	-- JEQ @FIM
			tmp(49) := "100100011000001";	-- JSR @RESET
			tmp(50) := "011000000100011";	-- JMP @LOOP
			tmp(51) := "010110111111111";	-- STA R2, @511 	#Rotina de Incremento Limpar KEY0
			tmp(52) := "000111000001010";	-- LDA R3, @10  	#Carrega flag de inibir a contagem
			tmp(53) := "100011000000110";	-- CEQ R3, @6   	# vê se flag == 0 
			tmp(54) := "011100000111000";	-- JEQ @UNIDADE 	# se não for para inibir contagem (flag==0), jump para unidade
			tmp(55) := "011000001110110";	-- JMP @RETINC  
			tmp(56) := "000111000000000";	-- LDA R3, @0    	#---Bloco que verifica unidade
			tmp(57) := "001011000000111";	-- SOMA R3, @7     	# incrementa 1     
			tmp(58) := "100011000001000";	-- CEQ R3, @8  	#Compara unidade com 10
			tmp(59) := "011100000111110";	-- JEQ @UNIDADEOVERFLOW
			tmp(60) := "010111000000000";	-- STA R3, @0
			tmp(61) := "011000001110110";	-- JMP @RETINC
			tmp(62) := "010011000000000";	-- LDI R3, $0
			tmp(63) := "010111000000000";	-- STA R3, @0  	#---
			tmp(64) := "000111000000001";	-- LDA R3, @1  	#---Bloco que verifica dezena
			tmp(65) := "001011000000111";	-- SOMA R3, @7
			tmp(66) := "100011000001001";	-- CEQ R3, @9
			tmp(67) := "011100001000110";	-- JEQ @DEZENAOVERFLOW
			tmp(68) := "010111000000001";	-- STA R3, @1
			tmp(69) := "011000001110110";	-- JMP @RETINC
			tmp(70) := "010011000000000";	-- LDI R3, $0
			tmp(71) := "010111000000001";	-- STA R3, @1  	#---
			tmp(72) := "000111000000010";	-- LDA R3, @2  	#---Bloco que verifica centena
			tmp(73) := "001011000000111";	-- SOMA R3, @7
			tmp(74) := "100011000001000";	-- CEQ R3, @8
			tmp(75) := "011100001001110";	-- JEQ @CENTENAOVERFLOW
			tmp(76) := "010111000000010";	-- STA R3, @2
			tmp(77) := "011000001110110";	-- JMP @RETINC
			tmp(78) := "010011000000000";	-- LDI R3, $0
			tmp(79) := "010111000000010";	-- STA R3, @2  	#---
			tmp(80) := "000111000000011";	-- LDA R3, @3  	#---Bloco que verifica milhar
			tmp(81) := "001011000000111";	-- SOMA R3, @7
			tmp(82) := "100011000001001";	-- CEQ R3, @9
			tmp(83) := "011100001010110";	-- JEQ @MILHAROVERFLOW
			tmp(84) := "010111000000011";	-- STA R3, @3
			tmp(85) := "011000001110110";	-- JMP @RETINC
			tmp(86) := "010011000000000";	-- LDI R3, $0
			tmp(87) := "010111000000011";	-- STA R3, @3  	#---
			tmp(88) := "000111000000100";	-- LDA R3, @4  	#---Bloco que verifica dezena de milhar
			tmp(89) := "001011000000111";	-- SOMA R3, @7
			tmp(90) := "100011000010010";	-- CEQ R3, @18
			tmp(91) := "011100001100110";	-- JEQ @HORAQUATRO
			tmp(92) := "100011000001000";	-- CEQ R3, @8
			tmp(93) := "011100001100000";	-- JEQ @DEZMILHAROVERFLOW
			tmp(94) := "010111000000100";	-- STA R3, @4
			tmp(95) := "011000001110110";	-- JMP @RETINC
			tmp(96) := "010011000000000";	-- LDI R3, $0
			tmp(97) := "010111000000100";	-- STA R3, @4  	#---
			tmp(98) := "000111000000101";	-- LDA R3, @5  	#---Bloco que verifica centena de milhar
			tmp(99) := "001011000000111";	-- SOMA R3, @7
			tmp(100) := "010111000000101";	-- STA R3, @5
			tmp(101) := "011000001110110";	-- JMP @RETINC
			tmp(102) := "010111000000100";	-- STA R3, @4 
			tmp(103) := "000111000000101";	-- LDA R3, @5
			tmp(104) := "100011000010001";	-- CEQ R3, @17
			tmp(105) := "011100001101011";	-- JEQ @FIMDODIA
			tmp(106) := "011000001110110";	-- JMP @RETINC
			tmp(107) := "010011000000000";	-- LDI R3, $0
			tmp(108) := "010111000000000";	-- STA R3, @0
			tmp(109) := "010111000000001";	-- STA R3, @1
			tmp(110) := "010111000000010";	-- STA R3, @2
			tmp(111) := "010111000000011";	-- STA R3, @3
			tmp(112) := "010111000000100";	-- STA R3, @4
			tmp(113) := "010111000000101";	-- STA R3, @5
			tmp(114) := "011000001110110";	-- JMP @RETINC
			tmp(115) := "010011000000001";	-- LDI R3, $1    	#Se é passou de 9 em centena de milhar, overflow!
			tmp(116) := "010111100000001";	-- STA R3, @257
			tmp(117) := "010111000001010";	-- STA R3, @10 	#---
			tmp(118) := "101000000000000";	-- RET
			tmp(119) := "000111000000000";	-- LDA R3, @0 	#Rotina que escreve os valores nos hexas correspondentes
			tmp(120) := "010111100100000";	-- STA R3, @288
			tmp(121) := "000111000000001";	-- LDA R3, @1
			tmp(122) := "010111100100001";	-- STA R3, @289
			tmp(123) := "000111000000010";	-- LDA R3, @2
			tmp(124) := "010111100100010";	-- STA R3, @290
			tmp(125) := "000111000000011";	-- LDA R3, @3
			tmp(126) := "010111100100011";	-- STA R3, @291
			tmp(127) := "000111000000100";	-- LDA R3, @4
			tmp(128) := "010111100100100";	-- STA R3, @292
			tmp(129) := "000111000000101";	-- LDA R3, @5
			tmp(130) := "010111100100101";	-- STA R3, @293
			tmp(131) := "101000000000000";	-- RET
			tmp(132) := "010110111111110";	-- STA R2, @510 	#Rotina que define os limites
			tmp(133) := "000111101000000";	-- LDA R3, @320    
			tmp(134) := "010111000001011";	-- STA R3, @11 	#Define limite de unidade
			tmp(135) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(136) := "100011000000110";	-- CEQ R3, @6
			tmp(137) := "011100010000111";	-- JEQ @WAIT1
			tmp(138) := "010111111111110";	-- STA R3, @510
			tmp(139) := "000111101000000";	-- LDA R3, @320
			tmp(140) := "010111000001100";	-- STA R3, @12 	#Define limite de dezena
			tmp(141) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(142) := "100011000000110";	-- CEQ R3, @6
			tmp(143) := "011100010001101";	-- JEQ @WAIT2
			tmp(144) := "010111111111110";	-- STA R3, @510
			tmp(145) := "000111101000000";	-- LDA R3, @320
			tmp(146) := "010111000001101";	-- STA R3, @13 	#Define limite de centena
			tmp(147) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(148) := "100011000000110";	-- CEQ R3, @6
			tmp(149) := "011100010010011";	-- JEQ @WAIT3
			tmp(150) := "010111111111110";	-- STA R3, @510
			tmp(151) := "000111101000000";	-- LDA R3, @320
			tmp(152) := "010111000001110";	-- STA R3, @14 	#Define limite de milhar
			tmp(153) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(154) := "100011000000110";	-- CEQ R3, @6
			tmp(155) := "011100010011001";	-- JEQ @WAIT4
			tmp(156) := "010111111111110";	-- STA R3, @510
			tmp(157) := "000111101000000";	-- LDA R3, @320
			tmp(158) := "010111000001111";	-- STA R3, @15 	#Define limite de dezena de milhar
			tmp(159) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
			tmp(160) := "100011000000110";	-- CEQ R3, @6
			tmp(161) := "011100010011111";	-- JEQ @WAIT5
			tmp(162) := "010111111111110";	-- STA R3, @510
			tmp(163) := "000111101000000";	-- LDA R3, @320
			tmp(164) := "010111000010000";	-- STA R3, @16 	#Define limite de centena de milhar
			tmp(165) := "101000000000000";	-- RET
			tmp(166) := "000111000000000";	-- LDA R3, @0  	#Rotina que verifica limite
			tmp(167) := "100011000001011";	-- CEQ R3, @11 	#Compara unidade com seu limite
			tmp(168) := "011100010101010";	-- JEQ @VERIFY1
			tmp(169) := "011000011000000";	-- JMP @RETVER
			tmp(170) := "000111000000001";	-- LDA R3, @1
			tmp(171) := "100011000001100";	-- CEQ R3, @12 	#Compara dezena com seu limite
			tmp(172) := "011100010101110";	-- JEQ @VERIFY2
			tmp(173) := "011000011000000";	-- JMP @RETVER
			tmp(174) := "000111000000010";	-- LDA R3, @2
			tmp(175) := "100011000001101";	-- CEQ R3, @13 	#Compara centena com seu limite
			tmp(176) := "011100010110010";	-- JEQ @VERIFY3
			tmp(177) := "011000011000000";	-- JMP @RETVER
			tmp(178) := "000111000000011";	-- LDA R3, @3
			tmp(179) := "100011000001110";	-- CEQ R3, @14 	#Compara milhar com seu limite
			tmp(180) := "011100010110110";	-- JEQ @VERIFY4
			tmp(181) := "011000011000000";	-- JMP @RETVER
			tmp(182) := "000111000000100";	-- LDA R3, @4
			tmp(183) := "100011000001111";	-- CEQ R3, @15 	#Compara dezena de milhar com seu limite
			tmp(184) := "011100010111010";	-- JEQ @VERIFY5
			tmp(185) := "011000011000000";	-- JMP @RETVER
			tmp(186) := "000111000000101";	-- LDA R3, @5
			tmp(187) := "100011000010000";	-- CEQ R3, @16 	#Compara centena de milhar com seu limite
			tmp(188) := "011100010111110";	-- JEQ @LIMITEATINGIDO
			tmp(189) := "011000011000000";	-- JMP @RETVER
			tmp(190) := "010011000000001";	-- LDI R3, $1   	#Todo os valores iguais ao limite
			tmp(191) := "010111100000010";	-- STA R3, @258
			tmp(192) := "101000000000000";	-- RET
			tmp(193) := "010011000000000";	-- LDI R3, $0    	#Rotina de Reset
			tmp(194) := "010111000000000";	-- STA R3, @0
			tmp(195) := "010111000000001";	-- STA R3, @1
			tmp(196) := "010111000000010";	-- STA R3, @2
			tmp(197) := "010111000000011";	-- STA R3, @3
			tmp(198) := "010111000000100";	-- STA R3, @4
			tmp(199) := "010111000000101";	-- STA R3, @5
			tmp(200) := "010111000001010";	-- STA R3, @10
			tmp(201) := "010111100000001";	-- STA R3, @257
			tmp(202) := "010111100000010";	-- STA R3, @258
			tmp(203) := "101000000000000";	-- RET



        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;