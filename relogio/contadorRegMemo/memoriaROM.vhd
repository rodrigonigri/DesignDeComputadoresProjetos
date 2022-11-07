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
tmp(28) := "010000000001000";	-- LDI R0, $8
tmp(29) := "010100000010011";	-- STA R0, @19
tmp(30) := "010000010000000";	-- LDI R0, $128
tmp(31) := "010100000010100";	-- STA R0, @20
tmp(32) := "010000000001001";	-- LDI R0, $9
tmp(33) := "010100000001011";	-- STA R0, @11
tmp(34) := "010100000001100";	-- STA R0, @12
tmp(35) := "010100000001101";	-- STA R0, @13
tmp(36) := "010100000001110";	-- STA R0, @14
tmp(37) := "010100000001111";	-- STA R0, @15
tmp(38) := "010100000010000";	-- STA R0, @16
tmp(39) := "000101101100000";	-- LDA R1, @352   	#Início do LOOP Carrega valor de KEY0
tmp(40) := "100001000000110";	-- CEQ R1, @6
tmp(41) := "011100000101111";	-- JEQ @DISPLAY    	#Se não apertou, pula incremento
tmp(42) := "100100000111110";	-- JSR @INCREMENTO
tmp(43) := "000101101100010";	-- LDA R1, @354   	#Carrega valor de KEY2
tmp(44) := "100001000000110";	-- CEQ R1, @6
tmp(45) := "011100000101111";	-- JEQ @DISPLAY    	#Se não apertou, pula
tmp(46) := "100100000111011";	-- JSR @DESLIGAALARME
tmp(47) := "100100010000010";	-- JSR @WRITEDISPLAY   	#Escrever no display
tmp(48) := "000101101100001";	-- LDA R1, @353    	#Carrega valor de KEY1
tmp(49) := "100001000000110";	-- CEQ R1, @6
tmp(50) := "011100000110100";	-- JEQ @LIMIT
tmp(51) := "100100011000011";	-- JSR @SETUPLIMIT
tmp(52) := "100100011100101";	-- JSR @VERIFYLIMIT  	#Verificação de limite sempre acontece
tmp(53) := "000101101100100";	-- LDA R1, @356    	#Desvia para rotina de reset
tmp(54) := "101101000000111";	-- AND R1, @7
tmp(55) := "100001000000110";	-- CEQ R1, @6
tmp(56) := "011100000111010";	-- JEQ @FIM
tmp(57) := "100100100000000";	-- JSR @RESET
tmp(58) := "011000000100111";	-- JMP @LOOP
tmp(59) := "010001000000000";	-- LDI R1, $0
tmp(60) := "010101100000010";	-- STA R1, @258
tmp(61) := "101000000000000";	-- RET
tmp(62) := "010110111111111";	-- STA R2, @511 	#Rotina de Incremento Limpar KEY0
tmp(63) := "000111000001010";	-- LDA R3, @10  	#Carrega flag de inibir a contagem
tmp(64) := "100011000000110";	-- CEQ R3, @6   	# vê se flag == 0 
tmp(65) := "011100001000011";	-- JEQ @UNIDADE 	# se não for para inibir contagem (flag==0), jump para unidade
tmp(66) := "011000010000001";	-- JMP @RETINC  
tmp(67) := "000111000000000";	-- LDA R3, @0    	#---Bloco que verifica unidade
tmp(68) := "001011000000111";	-- SOMA R3, @7     	# incrementa 1     
tmp(69) := "100011000001000";	-- CEQ R3, @8  	#Compara unidade com 10
tmp(70) := "011100001001001";	-- JEQ @UNIDADEOVERFLOW
tmp(71) := "010111000000000";	-- STA R3, @0
tmp(72) := "011000010000001";	-- JMP @RETINC
tmp(73) := "010011000000000";	-- LDI R3, $0
tmp(74) := "010111000000000";	-- STA R3, @0  	#---
tmp(75) := "000111000000001";	-- LDA R3, @1  	#---Bloco que verifica dezena
tmp(76) := "001011000000111";	-- SOMA R3, @7
tmp(77) := "100011000001001";	-- CEQ R3, @9
tmp(78) := "011100001010001";	-- JEQ @DEZENAOVERFLOW
tmp(79) := "010111000000001";	-- STA R3, @1
tmp(80) := "011000010000001";	-- JMP @RETINC
tmp(81) := "010011000000000";	-- LDI R3, $0
tmp(82) := "010111000000001";	-- STA R3, @1  	#---
tmp(83) := "000111000000010";	-- LDA R3, @2  	#---Bloco que verifica centena
tmp(84) := "001011000000111";	-- SOMA R3, @7
tmp(85) := "100011000001000";	-- CEQ R3, @8
tmp(86) := "011100001011001";	-- JEQ @CENTENAOVERFLOW
tmp(87) := "010111000000010";	-- STA R3, @2
tmp(88) := "011000010000001";	-- JMP @RETINC
tmp(89) := "010011000000000";	-- LDI R3, $0
tmp(90) := "010111000000010";	-- STA R3, @2  	#---
tmp(91) := "000111000000011";	-- LDA R3, @3  	#---Bloco que verifica milhar
tmp(92) := "001011000000111";	-- SOMA R3, @7
tmp(93) := "100011000001001";	-- CEQ R3, @9
tmp(94) := "011100001100001";	-- JEQ @MILHAROVERFLOW
tmp(95) := "010111000000011";	-- STA R3, @3
tmp(96) := "011000010000001";	-- JMP @RETINC
tmp(97) := "010011000000000";	-- LDI R3, $0
tmp(98) := "010111000000011";	-- STA R3, @3  	#---
tmp(99) := "000111000000100";	-- LDA R3, @4  	#---Bloco que verifica dezena de milhar
tmp(100) := "001011000000111";	-- SOMA R3, @7
tmp(101) := "100011000010010";	-- CEQ R3, @18
tmp(102) := "011100001110001";	-- JEQ @HORAQUATRO
tmp(103) := "100011000001000";	-- CEQ R3, @8
tmp(104) := "011100001101011";	-- JEQ @DEZMILHAROVERFLOW
tmp(105) := "010111000000100";	-- STA R3, @4
tmp(106) := "011000010000001";	-- JMP @RETINC
tmp(107) := "010011000000000";	-- LDI R3, $0
tmp(108) := "010111000000100";	-- STA R3, @4  	#---
tmp(109) := "000111000000101";	-- LDA R3, @5  	#---Bloco que verifica centena de milhar
tmp(110) := "001011000000111";	-- SOMA R3, @7
tmp(111) := "010111000000101";	-- STA R3, @5
tmp(112) := "011000010000001";	-- JMP @RETINC
tmp(113) := "010111000000100";	-- STA R3, @4 
tmp(114) := "000111000000101";	-- LDA R3, @5
tmp(115) := "100011000010001";	-- CEQ R3, @17
tmp(116) := "011100001110110";	-- JEQ @FIMDODIA
tmp(117) := "011000010000001";	-- JMP @RETINC
tmp(118) := "010011000000000";	-- LDI R3, $0
tmp(119) := "010111000000000";	-- STA R3, @0
tmp(120) := "010111000000001";	-- STA R3, @1
tmp(121) := "010111000000010";	-- STA R3, @2
tmp(122) := "010111000000011";	-- STA R3, @3
tmp(123) := "010111000000100";	-- STA R3, @4
tmp(124) := "010111000000101";	-- STA R3, @5
tmp(125) := "011000010000001";	-- JMP @RETINC
tmp(126) := "010011000000001";	-- LDI R3, $1    	#Se é passou de 9 em centena de milhar, overflow!
tmp(127) := "010111100000001";	-- STA R3, @257
tmp(128) := "010111000001010";	-- STA R3, @10
tmp(129) := "101000000000000";	-- RET
tmp(130) := "000111101000000";	-- LDA R3, @320
tmp(131) := "100011000010100";	-- CEQ R3, @20                      	#Compara o valor da chave SW9 com 128
tmp(132) := "011100010110100";	-- JEQ @VINTEQUATRO                	#Se for igua a 0, pula para VINTEQUATRO, caso contrario, lógica AM/PM
tmp(133) := "000111000000101";	-- LDA R3, @5
tmp(134) := "100011000010001";	-- CEQ R3, @17                     	#Compara a dezena da hora com o valor 2
tmp(135) := "011100010010011";	-- JEQ @PM                         	#Se for igual a 2, vai para a rotina PM
tmp(136) := "000111000000101";	-- LDA R3, @5
tmp(137) := "100011000000111";	-- CEQ R3, @7                     	#Compara a dezena da hora com o valor 1
tmp(138) := "011100010001100";	-- JEQ @EHUM                         	#Se for igual a 1, vai para a rotina AM
tmp(139) := "011000010110100";	-- JMP @VINTEQUATRO                	#Se for 0, vai para o VINTEQUATRO
tmp(140) := "000111000000100";	-- LDA R3, @4
tmp(141) := "100011000000110";	-- CEQ R3, @6
tmp(142) := "011100010110100";	-- JEQ @VINTEQUATRO                	#Se a dezena da hora for igual a zero, pula para VINTEQUATRO
tmp(143) := "100011000000111";	-- CEQ R3, @7
tmp(144) := "011100010110100";	-- JEQ @VINTEQUATRO                	#Se a dezena da hora for igual a 1, pula para VINTEQUATRO
tmp(145) := "100011000010001";	-- CEQ R3, @17
tmp(146) := "011100010110100";	-- JEQ @VINTEQUATRO                	#Se a dezena da hora for igual a 2, pula para VINTEQUATRO
tmp(147) := "010011000000001";	-- LDI R3, $1                   	# TRANSFORMA DE 24H PARA AM/PM E FAZ O DISPLAY!
tmp(148) := "010111100000001";	-- STA R3, @257                    	#Acende o LED
tmp(149) := "000111000000000";	-- LDA R3, @0                      	#Rotina que escreve os valores nos hexas correspondentes
tmp(150) := "010111100100000";	-- STA R3, @288
tmp(151) := "000111000000001";	-- LDA R3, @1
tmp(152) := "010111100100001";	-- STA R3, @289
tmp(153) := "000111000000010";	-- LDA R3, @2
tmp(154) := "010111100100010";	-- STA R3, @290
tmp(155) := "000111000000011";	-- LDA R3, @3
tmp(156) := "010111100100011";	-- STA R3, @291
tmp(157) := "000111000000100";	-- LDA R3, @4
tmp(158) := "100011000000110";	-- CEQ R3, @6                      	# compara com 0
tmp(159) := "011100010100110";	-- JEQ @CARREGAOITO
tmp(160) := "000111000000100";	-- LDA R3, @4
tmp(161) := "100011000000111";	-- CEQ R3, @7                      	# compara com 1
tmp(162) := "011100010101011";	-- JEQ @CARREGANOVE
tmp(163) := "001111000010001";	-- SUB R3, @17                     	#Subtrai 2 da unidade da hora
tmp(164) := "010111100100100";	-- STA R3, @292
tmp(165) := "011000010110000";	-- JMP @SUBTRAIUM
tmp(166) := "010011000001000";	-- LDI R3, $8
tmp(167) := "010111100100100";	-- STA R3, @292
tmp(168) := "000111000000110";	-- LDA R3, @6 
tmp(169) := "010111100100101";	-- STA R3, @293
tmp(170) := "011000011000010";	-- JMP @FIMDISPLAY
tmp(171) := "010011000001001";	-- LDI R3, $9
tmp(172) := "010111100100100";	-- STA R3, @292
tmp(173) := "000111000000110";	-- LDA R3, @6 
tmp(174) := "010111100100101";	-- STA R3, @293
tmp(175) := "011000011000010";	-- JMP @FIMDISPLAY
tmp(176) := "000111000000101";	-- LDA R3, @5
tmp(177) := "001111000000111";	-- SUB R3, @7                      	#Subtrai 1 da dezena da hora
tmp(178) := "010111100100101";	-- STA R3, @293
tmp(179) := "011000011000010";	-- JMP @FIMDISPLAY
tmp(180) := "010011000000000";	-- LDI R3, $0
tmp(181) := "010111100000001";	-- STA R3, @257                    	#Apaga o LED
tmp(182) := "000111000000000";	-- LDA R3, @0                      	#Rotina que escreve os valores nos hexas correspondentes
tmp(183) := "010111100100000";	-- STA R3, @288
tmp(184) := "000111000000001";	-- LDA R3, @1
tmp(185) := "010111100100001";	-- STA R3, @289
tmp(186) := "000111000000010";	-- LDA R3, @2
tmp(187) := "010111100100010";	-- STA R3, @290
tmp(188) := "000111000000011";	-- LDA R3, @3
tmp(189) := "010111100100011";	-- STA R3, @291
tmp(190) := "000111000000100";	-- LDA R3, @4
tmp(191) := "010111100100100";	-- STA R3, @292
tmp(192) := "000111000000101";	-- LDA R3, @5
tmp(193) := "010111100100101";	-- STA R3, @293
tmp(194) := "101000000000000";	-- RET
tmp(195) := "010110111111110";	-- STA R2, @510 	#Rotina que define os limites
tmp(196) := "000111101000000";	-- LDA R3, @320    
tmp(197) := "010111000001011";	-- STA R3, @11 	#Define limite de unidade
tmp(198) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(199) := "100011000000110";	-- CEQ R3, @6
tmp(200) := "011100011000110";	-- JEQ @WAIT1
tmp(201) := "010111111111110";	-- STA R3, @510
tmp(202) := "000111101000000";	-- LDA R3, @320
tmp(203) := "010111000001100";	-- STA R3, @12 	#Define limite de dezena
tmp(204) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(205) := "100011000000110";	-- CEQ R3, @6
tmp(206) := "011100011001100";	-- JEQ @WAIT2
tmp(207) := "010111111111110";	-- STA R3, @510
tmp(208) := "000111101000000";	-- LDA R3, @320
tmp(209) := "010111000001101";	-- STA R3, @13 	#Define limite de centena
tmp(210) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(211) := "100011000000110";	-- CEQ R3, @6
tmp(212) := "011100011010010";	-- JEQ @WAIT3
tmp(213) := "010111111111110";	-- STA R3, @510
tmp(214) := "000111101000000";	-- LDA R3, @320
tmp(215) := "010111000001110";	-- STA R3, @14 	#Define limite de milhar
tmp(216) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(217) := "100011000000110";	-- CEQ R3, @6
tmp(218) := "011100011011000";	-- JEQ @WAIT4
tmp(219) := "010111111111110";	-- STA R3, @510
tmp(220) := "000111101000000";	-- LDA R3, @320
tmp(221) := "010111000001111";	-- STA R3, @15 	#Define limite de dezena de milhar
tmp(222) := "000111101100001";	-- LDA R3, @353  	#Espera o usuário clicar KEY1
tmp(223) := "100011000000110";	-- CEQ R3, @6
tmp(224) := "011100011011110";	-- JEQ @WAIT5
tmp(225) := "010111111111110";	-- STA R3, @510
tmp(226) := "000111101000000";	-- LDA R3, @320
tmp(227) := "010111000010000";	-- STA R3, @16 	#Define limite de centena de milhar
tmp(228) := "101000000000000";	-- RET
tmp(229) := "000111000000000";	-- LDA R3, @0  	#Rotina que verifica limite
tmp(230) := "100011000001011";	-- CEQ R3, @11 	#Compara unidade com seu limite
tmp(231) := "011100011101001";	-- JEQ @VERIFY1
tmp(232) := "011000011111111";	-- JMP @RETVER
tmp(233) := "000111000000001";	-- LDA R3, @1
tmp(234) := "100011000001100";	-- CEQ R3, @12 	#Compara dezena com seu limite
tmp(235) := "011100011101101";	-- JEQ @VERIFY2
tmp(236) := "011000011111111";	-- JMP @RETVER
tmp(237) := "000111000000010";	-- LDA R3, @2
tmp(238) := "100011000001101";	-- CEQ R3, @13 	#Compara centena com seu limite
tmp(239) := "011100011110001";	-- JEQ @VERIFY3
tmp(240) := "011000011111111";	-- JMP @RETVER
tmp(241) := "000111000000011";	-- LDA R3, @3
tmp(242) := "100011000001110";	-- CEQ R3, @14 	#Compara milhar com seu limite
tmp(243) := "011100011110101";	-- JEQ @VERIFY4
tmp(244) := "011000011111111";	-- JMP @RETVER
tmp(245) := "000111000000100";	-- LDA R3, @4
tmp(246) := "100011000001111";	-- CEQ R3, @15 	#Compara dezena de milhar com seu limite
tmp(247) := "011100011111001";	-- JEQ @VERIFY5
tmp(248) := "011000011111111";	-- JMP @RETVER
tmp(249) := "000111000000101";	-- LDA R3, @5
tmp(250) := "100011000010000";	-- CEQ R3, @16 	#Compara centena de milhar com seu limite
tmp(251) := "011100011111101";	-- JEQ @LIMITEATINGIDO
tmp(252) := "011000011111111";	-- JMP @RETVER
tmp(253) := "010011000000001";	-- LDI R3, $1   	#Todo os valores iguais ao limite
tmp(254) := "010111100000010";	-- STA R3, @258
tmp(255) := "101000000000000";	-- RET
tmp(256) := "010011000000000";	-- LDI R3, $0    	#Rotina de Reset
tmp(257) := "010111000000000";	-- STA R3, @0
tmp(258) := "010111000000001";	-- STA R3, @1
tmp(259) := "010111000000010";	-- STA R3, @2
tmp(260) := "010111000000011";	-- STA R3, @3
tmp(261) := "010111000000100";	-- STA R3, @4
tmp(262) := "010111000000101";	-- STA R3, @5
tmp(263) := "010111000001010";	-- STA R3, @10
tmp(264) := "010111100000001";	-- STA R3, @257
tmp(265) := "010111100000010";	-- STA R3, @258
tmp(266) := "101000000000000";	-- RET


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;