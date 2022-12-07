library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity ProjetoFinal is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
   CLOCK_50 : in std_logic;
	KEY: in std_logic_vector(3 downto 0);
	LEDR  : out std_logic_vector(9 downto 0);
	HEX0  : out std_logic_vector(6 downto 0);
	HEX1  : out std_logic_vector(6 downto 0);
	HEX2  : out std_logic_vector(6 downto 0);
	HEX3  : out std_logic_vector(6 downto 0);
	HEX4  : out std_logic_vector(6 downto 0);
	HEX5  : out std_logic_vector(6 downto 0);
	SW : in std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of ProjetoFinal is
	
	signal CLK : std_logic;
	signal SaidaPC : std_logic_vector (31 downto 0);
	signal Soma_PC : std_logic_vector (31 downto 0);
	signal MuxPC : std_logic_vector (31 downto 0);
	signal MuxULA : std_logic_vector (31 downto 0);
	signal Distancia : std_logic_vector (31 downto 0);
	signal SaidaMuxVerBeq : std_logic_vector (31 downto 0);
	signal ImedExtShift : std_logic_vector (31 downto 0);
	signal SaidaROM : std_logic_vector (31 downto 0);
	signal Banco_A : std_logic_vector (31 downto 0);
	signal Banco_B : std_logic_vector (31 downto 0);
	signal Saida_ULA : std_logic_vector (31 downto 0);
	signal flagEq : std_logic;
	signal seletorFlagBeq, selMuxBeqPc4, selMuxRtImed: std_logic;
	signal BEQ : std_logic;
	signal Rs,Rt, Rd : std_logic_vector (4 downto 0);
	signal opcode : std_logic_vector (5 downto 0);
	signal SaidaUnidadeControle : std_logic_vector (21 downto 0);
	signal habEscritaReg, habLeituraMEM, habEscritaMEM : std_logic;
	signal operacao : std_logic_vector(2 downto 0);
	signal Imediato : std_logic_vector (15 downto 0);
	signal ImediatoExt : std_logic_vector (31 downto 0);
	signal ImediatoJ : std_logic_vector(25 downto 0);
	signal ImediatoShiftado : std_logic_vector(27 downto 0);
	signal entrada1_ProxPC_Mux : std_logic_vector(31 downto 0);
	signal PC4_bits_sign : std_logic_vector(3 downto 0);
	signal RAM_Mux : std_logic_vector (31 downto 0);
	signal Mux_Banco : std_logic_vector (31 downto 0);
	signal muxRtRd : std_logic_vector (1 downto 0);
	signal opcodeSaidaDecoder : std_logic_vector (5 downto 0);
	signal muxUlaMem : std_logic_vector (1 downto 0);
	signal tipoR : std_logic;
	signal funct : std_logic_vector (5 downto 0);
	signal mux_endereco3_banco : std_logic_vector(4 downto 0);
	signal saidaMUXHEX : std_logic_vector (31 downto 0);
	signal DecodHex0 : std_logic_vector(6 downto 0);
	signal DecodHex1 : std_logic_vector(6 downto 0);
	signal DecodHex2 : std_logic_vector(6 downto 0);
	signal DecodHex3 : std_logic_vector(6 downto 0);
	signal DecodHex4 : std_logic_vector(6 downto 0);
	signal DecodHex5 : std_logic_vector(6 downto 0);
	signal BNE : std_logic;
	signal saidaMuxFlag : std_logic;
	signal UpperImediato : std_logic_vector (31 downto 0);
	signal JR : std_logic;
	signal ORI_ANDI : std_logic;
	signal LBU : std_logic;
	signal SaidaMuxBeqPc : std_logic_vector (31 downto 0);
	signal ByteUnsigned : std_logic_vector (31 downto 0);
	signal SaidaMuxRam : std_logic_vector (31 downto 0);
	signal EntradaEscrita : std_logic_vector (31 downto 0);
	signal StoreByteUnsigned : std_logic_vector (31 downto 0);
	signal SB : std_logic;


begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
			port map (CLK => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- Banco Registradores:
BANCOREG : entity work.bancoReg generic map (larguraDados => larguraDados)
			port map(CLK => CLK,
						enderecoA => Rs,
						enderecoB => Rt,
						enderecoC => mux_endereco3_banco,
						dadoEscritaC => Mux_Banco,
						escreveC => habEscritaReg,
						saidaA => Banco_A,
						saidaB => Banco_B);
						
-- ULA:
ULA : entity work.ULAMIPS generic map (larguraDados => larguraDados)
			port map(entradaA => Banco_A,
						entradaB => MuxULA,
						operacao => operacao,
						saidaFlag => flagEq,
						saida =>Saida_ULA);

MUXSaidaFlagEq :  entity work.muxGenerico2x1bit
			port map( entradaA_MUX => NOT(flagEq),
						 entradaB_MUX => flagEq, 
						 seletor_MUX => BEQ,
						 saida_MUX => saidaMuxFlag);

-- UNIDADE DE CONTROLE ULA
UNIDADECONTROLEULA : entity work.UnidadeControleULA
			port map (opcode => opcodeSaidaDecoder,
						 tipoR => tipoR,
						 funct => funct,
						 operacao => operacao);


-- ROM:
ROM : entity work.ROMMIPS
			port map(Endereco => SaidaPC,
						Dado => SaidaROM);

-- PC:
PC : entity work.registradorGenerico generic map (larguraDados => larguraDados)
			port map(DIN => MuxPC,
						DOUT => SaidaPC,
						ENABLE => '1',
						CLK => CLK);
						
-- SOMADOR:
Somador : entity work.somaConstante generic map (larguraDados => larguraDados)
			port map(entrada => SaidaPC,
						saida => Soma_PC);

						
-- UNIDADE DE CONTROLE DE FLUXO DE DADOS
UnidadeControle : entity work.decoderInstru
        port map( opcode => opcode,
						funct => funct,
                 saida => SaidaUnidadeControle);
					  
-- RAM
RAM : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 32)
          port map (addr => Saida_ULA, 
						  we => habEscritaMEM, 
						  re => habLeituraMEM, 
						  dado_in => EntradaEscrita, 
						  dado_out => RAM_Mux, 
						  clk => CLK, 
						  habilita =>'1');

						  
MUXSB : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
			port map( entradaA_MUX => Banco_B,
                 entradaB_MUX =>  StoreByteUnsigned,
                 seletor_MUX => SB,
                 saida_MUX => EntradaEscrita);
					  
ComprimeSB : entity work.comprimeUnsigned
          port map (Sinal_IN => Banco_B, Sinal_OUT =>  StoreByteUnsigned);

-- ESTENDE SINAL
EstendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (estendeSinal_IN => Imediato,
						  controle => ORI_ANDI,
						  estendeSinal_OUT =>  ImediatoExt);
			 
EstendeLUI : entity work.estendeLUI   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (estendeSinal_IN => Imediato, estendeSinal_OUT =>  UpperImediato);
			 
ComprimeLBU : entity work.comprimeUnsigned
          port map (Sinal_IN => RAM_Mux, Sinal_OUT =>  ByteUnsigned);

MUXBeqPC :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => SaidaMuxVerBeq,
                 entradaB_MUX =>  entrada1_ProxPC_Mux,
                 seletor_MUX => selMuxBeqPc4,
                 saida_MUX => SaidaMuxBeqPc);
					  
MUXJR :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => SaidaMuxBeqPc,
                 entradaB_MUX =>  Banco_A,
                 seletor_MUX => JR,
                 saida_MUX => MuxPC);
					  
MuxUlaRamBanco :  entity work.muxGenerico4x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_ULA,
                 entradaB_MUX =>  SaidaMuxRam,
					  entradaC_MUX =>  Soma_PC,
					  entradaD_MUX =>  UpperImediato,
                 seletor_MUX => muxUlaMem,
                 saida_MUX => Mux_Banco);
MUXLBU :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => RAM_Mux,
                 entradaB_MUX =>  ByteUnsigned,
                 seletor_MUX => LBU,
                 saida_MUX => SaidaMuxRam);
					  
MuxRdRt :  entity work.muxGenerico4x1 generic map (larguraDados => 5)
        port map( entradaA_MUX => Rt,
                 entradaB_MUX =>  Rd,
					  entradaC_MUX =>  "11111",
					  entradaD_MUX =>  "00000",
                 seletor_MUX => muxRtRd,
                 saida_MUX => mux_endereco3_banco);

MUXFlagBeq :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Soma_PC,
                 entradaB_MUX =>  Distancia,
                 seletor_MUX => seletorFlagBeq,
                 saida_MUX => SaidaMuxVerBeq);
					  
MUXRtImed :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Banco_B,
                 entradaB_MUX =>  ImediatoExt,
                 seletor_MUX => selMuxRtImed,
                 saida_MUX => MuxULA);

SomadorDist : entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => Soma_PC, entradaB =>  ImedExtShift, saida => Distancia);
		  
		  
MUXHEX : entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => SaidaPC,
                 entradaB_MUX => Saida_ULA,
                 seletor_MUX => SW(0),
                 saida_MUX => saidaMUXHEX);
		  
DECOHEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => saidaMUXHEX(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex0);
					  
DECOHEX1 :  entity work.conversorHex7Seg
        port map(dadoHex => saidaMUXHEX(7 downto 4),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex1);
					  
DECOHEX2 :  entity work.conversorHex7Seg
        port map(dadoHex => saidaMUXHEX(11 downto 8),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex2);
DECOHEX3 :  entity work.conversorHex7Seg
        port map(dadoHex => saidaMUXHEX(15 downto 12),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex3);
					  
DECOHEX4 :  entity work.conversorHex7Seg
        port map(dadoHex => saidaMUXHEX(19 downto 16),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex4);
					  
DECOHEX5 :  entity work.conversorHex7Seg
        port map(dadoHex => saidaMUXHEX(23 downto 20),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex5);
						

--Atribuindo Valores para PINS da Placa						
LEDR(3 downto 0) <= saidaMUXHEX(27 downto 24);
LEDR(7 downto 4) <= saidaMUXHEX(31 downto 28);
HEX0 <= DecodHex0;
HEX1 <= DecodHex1;
HEX2 <= DecodHex2;
HEX3 <= DecodHex3;
HEX4 <= DecodHex4;
HEX5 <= DecodHex5;
						
-- Sinais de controle
Rs <= SaidaROM(25 downto 21);
Rt <= SaidaROM(20 downto 16);
Rd <= SaidaROM(15 downto 11);

ImedExtShift <= std_logic_vector(shift_left(unsigned(ImediatoExt), 2));  

ImediatoJ <= SaidaROM(25 downto 0); 
PC4_bits_sign <= Soma_PC(31 downto 28);
entrada1_ProxPC_Mux <= PC4_bits_sign & ImediatoJ & "00";

opcode <= SaidaROM(31 downto 26);

-- SEPARANDO O SINAL DA SAIDA DA UNIDADE DE CONTROLE 
  -- primeiro bit da saida: JR
  -- segundo bit da saida: selMuxBeqPc4
  -- terceiro bit da saida: Mux(Rt/Rd)[0]
  -- quarto bit da saida: Mux(Rt/Rd)[1]
  -- quinto bit da saida: ORI_ANDI
  -- sexto bit da saida: habEscritaReg
  -- sétimo bit da saida: selMuxRtImed
  -- oitavo ao décimo terceiro bit da saida: opcode
  -- decimo quarto bit da saida: tipoR
  -- decimo quinto bit da saida: SB
  -- decimo sexto bit da saida: mux(ULA/mem)[0]
  -- decimo sétimo bit da saida: mux(ULA/mem)[1]
  -- decimo oitavoo bit da saida: BEQ
  -- decimo nono bit da saida: BNE
  -- vigésimo bit da saída: LBU
  -- vigésimo primeiro bit da saida: habLeituraMEM
  -- vigésimo segundo bit da saida: habEscritaMEM

JR <= SaidaUnidadeControle(21);
selMuxBeqPc4 <= SaidaUnidadeControle(20);
muxRtRd <= SaidaUnidadeControle(19 downto 18);
ORI_ANDI <= SaidaUnidadeControle(17);
habEscritaReg <= SaidaUnidadeControle(16);
selMuxRtImed <= SaidaUnidadeControle(15);
opcodeSaidaDecoder <= SaidaUnidadeControle(14 downto 9);
tipoR <= SaidaUnidadeControle(8);
SB <= SaidaUnidadeControle(7);
muxUlaMem <= SaidaUnidadeControle(6 downto 5);
BEQ <= SaidaUnidadeControle(4);
BNE <= SaidaUnidadeControle(3);
LBU <= SaidaUnidadeControle(2);
habLeituraMEM <= SaidaUnidadeControle(1);
habEscritaMEM <= SaidaUnidadeControle(0);

seletorFlagBeq <= saidaMuxFlag AND (BEQ OR BNE);
Imediato <= SaidaROM(15 downto 0);

funct <= SaidaROM(5 downto 0);


end architecture;