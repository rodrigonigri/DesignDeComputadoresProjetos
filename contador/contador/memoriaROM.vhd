library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
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

			tmp(0) := "0100000000000";	-- LDI $0    	#Início do Setup
			tmp(1) := "0101100100000";	-- STA @288    	#Zerando hexas
			tmp(2) := "0101100100001";	-- STA @289
			tmp(3) := "0101100100010";	-- STA @290
			tmp(4) := "0101100100011";	-- STA @291
			tmp(5) := "0101100100100";	-- STA @292
			tmp(6) := "0101100100101";	-- STA @293
			tmp(7) := "0101100000000";	-- STA @256    	#Zerando leds
			tmp(8) := "0101100000001";	-- STA @257
			tmp(9) := "0101100000010";	-- STA @258
			tmp(10) := "0101000000000";	-- STA @0  	#Armazenando 0 em unidade, dezena, centena, ...
			tmp(11) := "0101000000001";	-- STA @1
			tmp(12) := "0101000000010";	-- STA @2
			tmp(13) := "0101000000011";	-- STA @3
			tmp(14) := "0101000000100";	-- STA @4
			tmp(15) := "0101000000101";	-- STA @5
			tmp(16) := "0101000000110";	-- STA @6  	#Constante de comparação
			tmp(17) := "0101000001010";	-- STA @10 	#Flag de inibir contagem
			tmp(18) := "0100000000001";	-- LDI $1
			tmp(19) := "0101000000111";	-- STA @7  	#Constante de incrementos
			tmp(20) := "0100000001010";	-- LDI $10
			tmp(21) := "0101000001000";	-- STA @8  	#Constante de limite do display
			tmp(22) := "0100000001001";	-- LDI $9
			tmp(23) := "0101000001011";	-- STA @11
			tmp(24) := "0101000001100";	-- STA @12
			tmp(25) := "0101000001101";	-- STA @13
			tmp(26) := "0101000001110";	-- STA @14
			tmp(27) := "0101000001111";	-- STA @15
			tmp(28) := "0101000010000";	-- STA @16
			tmp(29) := "0001101100000";	-- LDA @352   	#Carrega valor de KEY0
			tmp(30) := "1000000000110";	-- CEQ @6
			tmp(31) := "0111000100001";	-- JEQ @DISPLAY    	#Se não apertou, pula incremento
			tmp(32) := "1001000101101";	-- JSR @INCREMENTO
			tmp(33) := "1001001100100";	-- JSR @WRITEDISPLAY   	#Escrever no display
			tmp(34) := "0001101100001";	-- LDA @353    	#Carrega valor de KEY1
			tmp(35) := "1000000000110";	-- CEQ @6
			tmp(36) := "0111000100110";	-- JEQ @LIMIT
			tmp(37) := "1001001110001";	-- JSR @SETUPLIMIT
			tmp(38) := "1001010010011";	-- JSR @VERIFYLIMIT
			tmp(39) := "0001101100100";	-- LDA @356
			tmp(40) := "1011000000111";	-- AND @7
			tmp(41) := "1000000000110";	-- CEQ @6
			tmp(42) := "0111000101100";	-- JEQ @FIM
			tmp(43) := "1001010101111";	-- JSR @RESET
			tmp(44) := "0110000011101";	-- JMP @LOOP
			tmp(45) := "0101111111111";	-- STA @511 	#Limpar KEY0
			tmp(46) := "0001000001010";	-- LDA @10  	#Carrega flag
			tmp(47) := "1000000000110";	-- CEQ @6
			tmp(48) := "0111000110010";	-- JEQ @UNIDADE
			tmp(49) := "0110001100011";	-- JMP @RETINC
			tmp(50) := "0001000000000";	-- LDA @0    	#---Bloco que verifica unidade
			tmp(51) := "0010000000111";	-- SOMA @7
			tmp(52) := "1000000001000";	-- CEQ @8  	#Compara unidade com 10
			tmp(53) := "0111000111000";	-- JEQ @UNIDADEOVERFLOW
			tmp(54) := "0101000000000";	-- STA @0
			tmp(55) := "0110001100011";	-- JMP @RETINC
			tmp(56) := "0100000000000";	-- LDI $0
			tmp(57) := "0101000000000";	-- STA @0  	#---
			tmp(58) := "0001000000001";	-- LDA @1  	#---Bloco que verifica dezena
			tmp(59) := "0010000000111";	-- SOMA @7
			tmp(60) := "1000000001000";	-- CEQ @8
			tmp(61) := "0111001000000";	-- JEQ @DEZENAOVERFLOW
			tmp(62) := "0101000000001";	-- STA @1
			tmp(63) := "0110001100011";	-- JMP @RETINC
			tmp(64) := "0100000000000";	-- LDI $0
			tmp(65) := "0101000000001";	-- STA @1  	#---
			tmp(66) := "0001000000010";	-- LDA @2  	#---Bloco que verifica centena
			tmp(67) := "0010000000111";	-- SOMA @7
			tmp(68) := "1000000001000";	-- CEQ @8
			tmp(69) := "0111001001000";	-- JEQ @CENTENAOVERFLOW
			tmp(70) := "0101000000010";	-- STA @2
			tmp(71) := "0110001100011";	-- JMP @RETINC
			tmp(72) := "0100000000000";	-- LDI $0
			tmp(73) := "0101000000010";	-- STA @2  	#---
			tmp(74) := "0001000000011";	-- LDA @3  	#---Bloco que verifica milhar
			tmp(75) := "0010000000111";	-- SOMA @7
			tmp(76) := "1000000001000";	-- CEQ @8
			tmp(77) := "0111001010000";	-- JEQ @MILHAROVERFLOW
			tmp(78) := "0101000000011";	-- STA @3
			tmp(79) := "0110001100011";	-- JMP @RETINC
			tmp(80) := "0100000000000";	-- LDI $0
			tmp(81) := "0101000000011";	-- STA @3  	#---
			tmp(82) := "0001000000100";	-- LDA @4  	#---Bloco que verifica dezena de milhar
			tmp(83) := "0010000000111";	-- SOMA @7
			tmp(84) := "1000000001000";	-- CEQ @8
			tmp(85) := "0111001011000";	-- JEQ @DEZMILHAROVERFLOW
			tmp(86) := "0101000000100";	-- STA @4
			tmp(87) := "0110001100011";	-- JMP @RETINC
			tmp(88) := "0100000000000";	-- LDI $0
			tmp(89) := "0101000000100";	-- STA @4  	#---
			tmp(90) := "0001000000101";	-- LDA @5  	#---Bloco que verifica centena de milhar
			tmp(91) := "0010000000111";	-- SOMA @7
			tmp(92) := "1000000001000";	-- CEQ @8
			tmp(93) := "0111001100000";	-- JEQ @CENMILHAROVERFLOW
			tmp(94) := "0101000000101";	-- STA @5
			tmp(95) := "0110001100011";	-- JMP @RETINC
			tmp(96) := "0100000000001";	-- LDI $1
			tmp(97) := "0101100000001";	-- STA @257
			tmp(98) := "0101000001010";	-- STA @10 	#---
			tmp(99) := "1010000000000";	-- RET
			tmp(100) := "0001000000000";	-- LDA @0
			tmp(101) := "0101100100000";	-- STA @288
			tmp(102) := "0001000000001";	-- LDA @1
			tmp(103) := "0101100100001";	-- STA @289
			tmp(104) := "0001000000010";	-- LDA @2
			tmp(105) := "0101100100010";	-- STA @290
			tmp(106) := "0001000000011";	-- LDA @3
			tmp(107) := "0101100100011";	-- STA @291
			tmp(108) := "0001000000100";	-- LDA @4
			tmp(109) := "0101100100100";	-- STA @292
			tmp(110) := "0001000000101";	-- LDA @5
			tmp(111) := "0101100100101";	-- STA @293
			tmp(112) := "1010000000000";	-- RET
			tmp(113) := "0101111111110";	-- STA @510
			tmp(114) := "0001101000000";	-- LDA @320
			tmp(115) := "0101000001011";	-- STA @11
			tmp(116) := "0001101100001";	-- LDA @353
			tmp(117) := "1000000000110";	-- CEQ @6
			tmp(118) := "0111001110100";	-- JEQ @WAIT1
			tmp(119) := "0101111111110";	-- STA @510
			tmp(120) := "0001101000000";	-- LDA @320
			tmp(121) := "0101000001100";	-- STA @12
			tmp(122) := "0001101100001";	-- LDA @353
			tmp(123) := "1000000000110";	-- CEQ @6
			tmp(124) := "0111001111010";	-- JEQ @WAIT2
			tmp(125) := "0101111111110";	-- STA @510
			tmp(126) := "0001101000000";	-- LDA @320
			tmp(127) := "0101000001101";	-- STA @13
			tmp(128) := "0001101100001";	-- LDA @353
			tmp(129) := "1000000000110";	-- CEQ @6
			tmp(130) := "0111010000000";	-- JEQ @WAIT3
			tmp(131) := "0101111111110";	-- STA @510
			tmp(132) := "0001101000000";	-- LDA @320
			tmp(133) := "0101000001110";	-- STA @14
			tmp(134) := "0001101100001";	-- LDA @353
			tmp(135) := "1000000000110";	-- CEQ @6
			tmp(136) := "0111010000110";	-- JEQ @WAIT4
			tmp(137) := "0101111111110";	-- STA @510
			tmp(138) := "0001101000000";	-- LDA @320
			tmp(139) := "0101000001111";	-- STA @15
			tmp(140) := "0001101100001";	-- LDA @353
			tmp(141) := "1000000000110";	-- CEQ @6
			tmp(142) := "0111010001100";	-- JEQ @WAIT5
			tmp(143) := "0101111111110";	-- STA @510
			tmp(144) := "0001101000000";	-- LDA @320
			tmp(145) := "0101000010000";	-- STA @16
			tmp(146) := "1010000000000";	-- RET
			tmp(147) := "0001000000000";	-- LDA @0
			tmp(148) := "1000000001011";	-- CEQ @11
			tmp(149) := "0111010010111";	-- JEQ @VERIFY1
			tmp(150) := "0110010101110";	-- JMP @RETVER
			tmp(151) := "0001000000001";	-- LDA @1
			tmp(152) := "1000000001100";	-- CEQ @12
			tmp(153) := "0111010011011";	-- JEQ @VERIFY2
			tmp(154) := "0110010101110";	-- JMP @RETVER
			tmp(155) := "0001000000010";	-- LDA @2
			tmp(156) := "1000000001101";	-- CEQ @13
			tmp(157) := "0111010011111";	-- JEQ @VERIFY3
			tmp(158) := "0110010101110";	-- JMP @RETVER
			tmp(159) := "0001000000011";	-- LDA @3
			tmp(160) := "1000000001110";	-- CEQ @14
			tmp(161) := "0111010100011";	-- JEQ @VERIFY4
			tmp(162) := "0110010101110";	-- JMP @RETVER
			tmp(163) := "0001000000100";	-- LDA @4
			tmp(164) := "1000000001111";	-- CEQ @15
			tmp(165) := "0111010100111";	-- JEQ @VERIFY5
			tmp(166) := "0110010101110";	-- JMP @RETVER
			tmp(167) := "0001000000101";	-- LDA @5
			tmp(168) := "1000000010000";	-- CEQ @16
			tmp(169) := "0111010101011";	-- JEQ @LIMITEATINGIDO
			tmp(170) := "0110010101110";	-- JMP @RETVER
			tmp(171) := "0100000000001";	-- LDI $1
			tmp(172) := "0101000001010";	-- STA @10
			tmp(173) := "0101100000010";	-- STA @258
			tmp(174) := "1010000000000";	-- RET
			tmp(175) := "0100000000000";	-- LDI $0
			tmp(176) := "0101000000000";	-- STA @0
			tmp(177) := "0101000000001";	-- STA @1
			tmp(178) := "0101000000010";	-- STA @2
			tmp(179) := "0101000000011";	-- STA @3
			tmp(180) := "0101000000100";	-- STA @4
			tmp(181) := "0101000000101";	-- STA @5
			tmp(182) := "0101000001010";	-- STA @10
			tmp(183) := "0101100000001";	-- STA @257
			tmp(184) := "0101100000010";	-- STA @258
			tmp(185) := "1010000000000";	-- RET


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;