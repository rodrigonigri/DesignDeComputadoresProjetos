library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity aula14atv1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
   CLOCK_50 : in std_logic;
	KEY: in std_logic_vector(3 downto 0);
	PC_OUT: out std_logic_vector(31 downto 0);
	DadoLido : out std_logic_vector(31 downto 0);
	DadoEscrito : out std_logic_vector(31 downto 0);
	ValorRs : out std_logic_vector(31 downto 0);
	ValorRt : out std_logic_vector(31 downto 0)
  );
end entity;


architecture arquitetura of aula14atv1 is
	
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
	signal ULA_RAM : std_logic_vector (31 downto 0);
	signal flagEq : std_logic;
	signal seletorFlagBeq, selMuxBeqPc4, selMuxRtImed: std_logic;
	signal BEQ : std_logic;
	
	signal Rs,Rt, Rd : std_logic_vector (4 downto 0);
	
	signal opcode : std_logic_vector (5 downto 0);
	signal SaidaUnidadeControle : std_logic_vector (6 downto 0);
	signal habEscritaReg, Operacao, habLeituraMEM, habEscritaMEM : std_logic;
	
	signal Imediato : std_logic_vector (15 downto 0);
	signal ImediatoExt : std_logic_vector (31 downto 0);
	
	signal RAM_Banco : std_logic_vector (31 downto 0);
	
	
	

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
						enderecoC => Rt,
						dadoEscritaC => RAM_Banco,
						escreveC => habEscritaReg,
						saidaA => Banco_A,
						saidaB => Banco_B);
						
-- ULA:
ULA : entity work.ULASomaSub generic map (larguraDados => larguraDados)
			port map(entradaA => Banco_A,
						entradaB => MuxULA,
						seletor => Operacao,
						saidaFlag => flagEq,
						saida => ULA_RAM);

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
                 saida => SaidaUnidadeControle);
					  
-- RAM
RAM : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 32)
          port map (addr => ULA_RAM, we => habEscritaMEM, re => habLeituraMEM, dado_in => Banco_B, dado_out => RAM_Banco, clk => CLK, habilita =>'1');

-- ESTENDE SINAL
EstendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (estendeSinal_IN => Imediato, estendeSinal_OUT =>  ImediatoExt);

MUXBeqPC :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => SaidaMuxVerBeq,
                 entradaB_MUX =>  Soma_PC,
                 seletor_MUX => selMuxBeqPc4,
                 saida_MUX => MuxPC);

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
						
-- Sinais de controle
Rs <= SaidaROM(25 downto 21);
Rt <= SaidaROM(20 downto 16);
Rd <= SaidaROM(15 downto 11);

-- ImedExtShift <= ImediatoExt sll 2;
ImedExtShift <= std_logic_vector(shift_left(unsigned(ImediatoExt), 2));  

opcode <= SaidaROM(31 downto 26);

-- Adicionar BEQ e os dois seletores MUX
selMuxBeqPc4 <= SaidaUnidadeControle(6);
habEscritaReg <= SaidaUnidadeControle(5);
selMuxRtImed <= SaidaUnidadeControle(4);
Operacao <= SaidaUnidadeControle(3);
BEQ <= SaidaUnidadeControle(2);
habLeituraMEM <= SaidaUnidadeControle(1);
habEscritaMEM <= SaidaUnidadeControle(0);

seletorFlagBeq <= flagEq AND BEQ;
Imediato <= SaidaROM(15 downto 0);

PC_OUT <= SaidaPC;
DadoLido <= RAM_Banco;
DadoEscrito <= Banco_B;
--SaidaULA <= ULA_RAM;
ValorRs <= Banco_A ;
ValorRt <= Banco_B ;

end architecture;