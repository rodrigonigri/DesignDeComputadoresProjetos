library ieee;
use ieee.std_logic_1164.all;

entity aula13atv1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
   CLOCK_50 : in std_logic;
	KEY: in std_logic_vector(3 downto 0);
	ControleBanco: in std_logic;
	ControleULA: in std_logic;
	
	PC_OUT: out std_logic_vector(31 downto 0);
	SaidaULA : out std_logic_vector(31 downto 0)
  );
end entity;


architecture arquitetura of aula13atv1 is
	
	signal CLK : std_logic;
	signal SaidaPC : std_logic_vector (31 downto 0);
	signal Soma_PC : std_logic_vector (31 downto 0);
	signal SaidaROM : std_logic_vector (31 downto 0);
	signal Banco_A : std_logic_vector (31 downto 0);
	signal Banco_B : std_logic_vector (31 downto 0);
	signal ULA_Banco : std_logic_vector (31 downto 0);	
	
	signal Rs,Rt,Rd : std_logic_vector (4 downto 0);
	

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
			port map(CLK => CLOCK_50,
						enderecoA => Rs,
						enderecoB => Rt,
						enderecoC => Rd,
						dadoEscritaC => ULA_Banco,
						escreveC => ControleBanco,
						saidaA => Banco_A,
						saidaB => Banco_B);
						
-- ULA:
ULA : entity work.ULASomaSub generic map (larguraDados => larguraDados)
			port map(entradaA => Banco_A,
						entradaB => Banco_B,
						seletor => ControleULA,
						saida => ULA_Banco);

-- ROM:
ROM : entity work.ROMMIPS
			port map(Endereco => SaidaPC,
						Dado => SaidaROM);

-- PC:
PC : entity work.registradorGenerico generic map (larguraDados => larguraDados)
			port map(DIN => Soma_PC,
						DOUT => SaidaPC,
						ENABLE => '1',
						CLK => CLOCK_50);
						
-- SOMADOR:
Somador : entity work.somaConstante generic map (larguraDados => larguraDados)
			port map(entrada => SaidaPC,
						saida => Soma_PC);

						
-- Sinais de controle
Rs <= SaidaROM(25 downto 21);
Rt <= SaidaROM(20 downto 16);
Rd <= SaidaROM(15 downto 11);




PC_OUT <= SaidaPC;
SaidaULA <= ULA_Banco;


end architecture;