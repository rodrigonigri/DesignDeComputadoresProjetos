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
tmp(37) := "011100000101011";	-- JEQ @DISPLAY    	#Se não apertou, pula incremento
tmp(38) := "100100000111010";	-- JSR @INCREMENTO
tmp(39) := "000101101100010";	-- LDA R1, @354   	#Carrega valor de KEY2
tmp(40) := "100001000000110";	-- CEQ R1, @6
tmp(41) := "011100000101011";	-- JEQ @DISPLAY    	#Se não apertou, pula
tmp(42) := "100100000110111";	-- JSR @DESLIGAALARME
tmp(43) := "100100001111110";	-- JSR @WRITEDISPLAY   	#Escrever no display
tmp(44) := "000101101100001";	-- LDA R1, @353    	#Carrega valor de KEY1
tmp(45) := "100001000000110";	-- CEQ R1, @6
tmp(46) := "011100000110000";	-- JEQ @LIMIT
tmp(47) := "100100010001011";	-- JSR @SETUPLIMIT
tmp(48) := "100100010101101";	-- JSR @VERIFYLIMIT  	#Verificação de limite sempre acontece
tmp(49) := "000101101100100";	-- LDA R1, @356    	#Desvia para rotina de reset
tmp(50) := "101101000000111";	-- AND R1, @7
tmp(51) := "100001000000110";	-- CEQ R1, @6
tmp(52) := "011100000110110";	-- JEQ @FIM
tmp(53) := "100100011001000";	-- JSR @RESET
tmp(54) := "011000000100011";	-- JMP @LOOP
tmp(55) := "010001000000000";	-- LDI R1, $0
tmp(56) := "010101100000010";	-- STA R1, @258
tmp(57) := "101000000000000";	-- RET
tmp(58) := "010110111111111";	-- STA R2, @511 	#Rotina de Incremento Limpar KEY0
tmp(59) := "000111000001010";	-- LDA R3, @10  	#Carrega flag de inibir a contagem
tmp(60) := "100011000000110";	-- CEQ R3, @6   	# vê se flag == 0 
tmp(61) := "011100000111111";	-- JEQ @UNIDADE 	# se não for para inibir contagem (flag==0), jump para unidade
tmp(62) := "011000001111101";	-- JMP @RETINC  
tmp(63) := "000111000000000";	-- LDA R3, @0    	#---Bloco que verifica unidade
tmp(64) := "001011000000111";	-- SOMA R3, @7     	# incrementa 1     
tmp(65) := "100011000001000";	-- CEQ R3, @8  	#Compara unidade com 10
tmp(66) := "011100001000101";	-- JEQ @UNIDADEOVERFLOW
tmp(67) := "010111000000000";	-- STA R3, @0
tmp(68) := "011000001111101";	-- JMP @RETINC
tmp(69) := "010011000000000";	-- LDI R3, $0
tmp(70) := "010111000000000";	-- STA R3, @0  	#---
tmp(71) := "000111000000001";	-- LDA R3, @1  	#---Bloco que verifica dezena
tmp(72) := "001011000000111";	-- SOMA R3, @7
tmp(73) := "100011000001001";	-- CEQ R3, @9
tmp(74) := "011100001001101";	-- JEQ @DEZENAOVERFLOW
tmp(75) := "010111000000001";	-- STA R3, @1
tmp(76) := "011000001111101";	-- JMP @RETINC
tmp(77) := "010011000000000";	-- LDI R3, $0
tmp(78) := "010111000000001";	-- STA R3, @1  	#---
tmp(79) := "000111000000010";	-- LDA R3, @2  	#---Bloco que verifica centena
tmp(80) := "001011000000111";	-- SOMA R3, @7
tmp(81) := "100011000001000";	-- CEQ R3, @8
tmp(82) := "011100001010101";	-- JEQ @CENTENAOVERFLOW
tmp(83) := "010111000000010";	-- STA R3, @2
tmp(84) := "011000001111101";	-- JMP @RETINC
tmp(85) := "010011000000000";	-- LDI R3, $0
tmp(86) := "010111000000010";	-- STA R3, @2  	#---
tmp(87) := "000111000000011";	-- LDA R3, @3  	#---Bloco que verifica milhar
tmp(88) := "001011000000111";	-- SOMA R3, @7
tmp(89) := "100011000001001";	-- CEQ R3, @9
tmp(90) := "011100001011101";	-- JEQ @MILHAROVERFLOW
tmp(91) := "010111000000011";	-- STA R3, @3
tmp(92) := "011000001111101";	-- JMP @RETINC
tmp(93) := "010011000000000";	-- LDI R3, $0
tmp(94) := "010111000000011";	-- STA R3, @3  	#---
tmp(95) := "000111000000100";	-- LDA R3, @4  	#---Bloco que verifica dezena de milhar
tmp(96) := "001011000000111";	-- SOMA R3, @7
tmp(97) := "100011000010010";	-- CEQ R3, @18
tmp(98) := "011100001101101";	-- JEQ @HORAQUATRO
tmp(99) := "100011000001000";	-- CEQ R3, @8
tmp(100) := "011100001100111";	-- JEQ @DEZMILHAROVERFLOW
tmp(101) := "010111000000100";	-- STA R3, @4
tmp(102) := "011000001111101";	-- JMP @RETINC
tmp(103) := "010011000000000";	-- LDI R3, $0
tmp(104) := "010111000000100";	-- STA R3, @4  	#---
tmp(105) := "000111000000101";	-- LDA R3, @5  	#---Bloco que verifica centena de milhar
tmp(106) := "001011000000111";	-- SOMA R3, @7
tmp(107) := "010111000000101";	-- STA R3, @5
tmp(108) := "011000001111101";	-- JMP @RETINC
tmp(109) := "010111000000100";	-- STA R3, @4 
tmp(110) := "000111000000101";	-- LDA R3, @5
tmp(111) := "100011000010001";	-- CEQ R3, @17
tmp(112) := "011100001110010";	-- JEQ @FIMDODIA
tmp(113) := "011000001111101";	-- JMP @RETINC
tmp(114) := "010011000000000";	-- LDI R3, $0
tmp(115) := "010111000000000";	-- STA R3, @0
tmp(116) := "010111000000001";	-- STA R3, @1
tmp(117) := "010111000000010";	-- STA R3, @2
tmp(118) := "010111000000011";	-- STA R3, @3
tmp(119) := "010111000000100";	-- STA R3, @4
tmp(120) := "010111000000101";	-- STA R3, @5
tmp(121) := "011000001111101";	-- JMP @RETINC
tmp(122) := "010011000000001";	-- LDI R3, $1    	#Se é passou de 9 em centena de milhar, overflow!
tmp(123) := "010111100000001";	-- STA R3, @257
tmp(124) := "010111000001010";	-- STA R3, @10 	#---
tmp(125) := "101000000000000";	-- RET
tmp(126) := "000111000000000";	-- LDA R3, @0 	#Rotina que escreve os valores nos hexas correspondentes
tmp(127) := "010111100100000";	-- STA R3, @288
tmp(128) := "000111000000001";	-- LDA R3, @1
tmp(129) := "010111100100001";	-- STA R3, @289
tmp(130) := "000111000000010";	-- LDA R3, @2
tmp(131) := "010111100100010";	-- STA R3, @290
tmp(132) := "000111000000011";	-- LDA R3, @3
tmp(133) := "010111100100011";	-- STA R3, @291
tmp(134) := "000111000000100";	-- LDA R3, @4
tmp(135) := "010111100100100";	-- STA R3, @292
tmp(136) := "000111000000101";	-- LDA R3, @5
tmp(137) := "010111100100101";	-- STA R3, @293
tmp(138) := "101000000000000";	-- RET
tmp(139) := "010110111111110";	-- STA R2, @510 	#Rotina que define os limites
tmp(140) := "000111101000000";	-- LDA R3, @320    
tmp(141) := "010111000001011";	-- STA R3, @11 	#Define limite de unidade
tmp(142) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(143) := "100011000000110";	-- CEQ R3, @6
tmp(144) := "011100010001110";	-- JEQ @WAIT1
tmp(145) := "010111111111110";	-- STA R3, @510
tmp(146) := "000111101000000";	-- LDA R3, @320
tmp(147) := "010111000001100";	-- STA R3, @12 	#Define limite de dezena
tmp(148) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(149) := "100011000000110";	-- CEQ R3, @6
tmp(150) := "011100010010100";	-- JEQ @WAIT2
tmp(151) := "010111111111110";	-- STA R3, @510
tmp(152) := "000111101000000";	-- LDA R3, @320
tmp(153) := "010111000001101";	-- STA R3, @13 	#Define limite de centena
tmp(154) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(155) := "100011000000110";	-- CEQ R3, @6
tmp(156) := "011100010011010";	-- JEQ @WAIT3
tmp(157) := "010111111111110";	-- STA R3, @510
tmp(158) := "000111101000000";	-- LDA R3, @320
tmp(159) := "010111000001110";	-- STA R3, @14 	#Define limite de milhar
tmp(160) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(161) := "100011000000110";	-- CEQ R3, @6
tmp(162) := "011100010100000";	-- JEQ @WAIT4
tmp(163) := "010111111111110";	-- STA R3, @510
tmp(164) := "000111101000000";	-- LDA R3, @320
tmp(165) := "010111000001111";	-- STA R3, @15 	#Define limite de dezena de milhar
tmp(166) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(167) := "100011000000110";	-- CEQ R3, @6
tmp(168) := "011100010100110";	-- JEQ @WAIT5
tmp(169) := "010111111111110";	-- STA R3, @510
tmp(170) := "000111101000000";	-- LDA R3, @320
tmp(171) := "010111000010000";	-- STA R3, @16 	#Define limite de centena de milhar
tmp(172) := "101000000000000";	-- RET
tmp(173) := "000111000000000";	-- LDA R3, @0  	#Rotina que verifica limite
tmp(174) := "100011000001011";	-- CEQ R3, @11 	#Compara unidade com seu limite
tmp(175) := "011100010110001";	-- JEQ @VERIFY1
tmp(176) := "011000011000111";	-- JMP @RETVER
tmp(177) := "000111000000001";	-- LDA R3, @1
tmp(178) := "100011000001100";	-- CEQ R3, @12 	#Compara dezena com seu limite
tmp(179) := "011100010110101";	-- JEQ @VERIFY2
tmp(180) := "011000011000111";	-- JMP @RETVER
tmp(181) := "000111000000010";	-- LDA R3, @2
tmp(182) := "100011000001101";	-- CEQ R3, @13 	#Compara centena com seu limite
tmp(183) := "011100010111001";	-- JEQ @VERIFY3
tmp(184) := "011000011000111";	-- JMP @RETVER
tmp(185) := "000111000000011";	-- LDA R3, @3
tmp(186) := "100011000001110";	-- CEQ R3, @14 	#Compara milhar com seu limite
tmp(187) := "011100010111101";	-- JEQ @VERIFY4
tmp(188) := "011000011000111";	-- JMP @RETVER
tmp(189) := "000111000000100";	-- LDA R3, @4
tmp(190) := "100011000001111";	-- CEQ R3, @15 	#Compara dezena de milhar com seu limite
tmp(191) := "011100011000001";	-- JEQ @VERIFY5
tmp(192) := "011000011000111";	-- JMP @RETVER
tmp(193) := "000111000000101";	-- LDA R3, @5
tmp(194) := "100011000010000";	-- CEQ R3, @16 	#Compara centena de milhar com seu limite
tmp(195) := "011100011000101";	-- JEQ @LIMITEATINGIDO
tmp(196) := "011000011000111";	-- JMP @RETVER
tmp(197) := "010011000000001";	-- LDI R3, $1   	#Todo os valores iguais ao limite
tmp(198) := "010111100000010";	-- STA R3, @258
tmp(199) := "101000000000000";	-- RET
tmp(200) := "010011000000000";	-- LDI R3, $0    	#Rotina de Reset
tmp(201) := "010111000000000";	-- STA R3, @0
tmp(202) := "010111000000001";	-- STA R3, @1
tmp(203) := "010111000000010";	-- STA R3, @2
tmp(204) := "010111000000011";	-- STA R3, @3
tmp(205) := "010111000000100";	-- STA R3, @4
tmp(206) := "010111000000101";	-- STA R3, @5
tmp(207) := "010111000001010";	-- STA R3, @10
tmp(208) := "010111100000001";	-- STA R3, @257
tmp(209) := "010111100000010";	-- STA R3, @258
tmp(210) := "101000000000000";	-- RET



        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;