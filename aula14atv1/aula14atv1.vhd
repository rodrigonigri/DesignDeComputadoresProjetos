library ieee;
use ieee.std_logic_1164.all;

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
	SaidaULA : out std_logic_vector(31 downto 0)
  );
end entity;


architecture arquitetura of aula14atv1 is
	
	signal CLK : std_logic;
	signal SaidaPC : std_logic_vector (31 downto 0);
	signal Soma_PC : std_logic_vector (31 downto 0);
	signal SaidaROM : std_logic_vector (31 downto 0);
	signal Banco_A : std_logic_vector (31 downto 0);
	signal Banco_B : std_logic_vector (31 downto 0);
	signal ULA_RAM : std_logic_vector (31 downto 0);	
	
	signal Rs,Rt, Rd : std_logic_vector (4 downto 0);
	
	signal opcode : std_logic_vector (5 downto 0);
	signal SaidaUnidadeControle : std_logic_vector (3 downto 0);
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
						entradaB => ImediatoExt,
						seletor => Operacao,
						saida => ULA_RAM);

-- ROM:
ROM : entity work.ROMMIPS
			port map(Endereco => SaidaPC,
						Dado => SaidaROM);

-- PC:
PC : entity work.registradorGenerico generic map (larguraDados => larguraDados)
			port map(DIN => Soma_PC,
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
			 
-- Sinais de controle
Rs <= SaidaROM(25 downto 21);
Rt <= SaidaROM(20 downto 16);
Rd <= SaidaROM(15 downto 11);

opcode <= SaidaROM(31 downto 26);
habEscritaReg <= SaidaUnidadeControle(3);
Operacao <= SaidaUnidadeControle(2);
habLeituraMEM <= SaidaUnidadeControle(1);
habEscritaMEM <= SaidaUnidadeControle(0);

Imediato <= SaidaROM(15 downto 0);

PC_OUT <= SaidaPC;
DadoLido <= RAM_Banco;
DadoEscrito <= Banco_B;
SaidaULA <= ULA_RAM;

end architecture;