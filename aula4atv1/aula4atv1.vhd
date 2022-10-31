library ieee;
use ieee.std_logic_1164.all;

entity aula4atv1 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 KEY: in std_logic_vector(3 downto 0);
   OUT_EQUATION: out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture arquitetura of aula4atv1 is

-- Faltam alguns sinais:
--  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
--  signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
--  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
--  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
--  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
--  signal Sinais_Controle : std_logic_vector (3 downto 0);
--  signal Endereco : std_logic_vector (2 downto 0);
--  signal proxPC : std_logic_vector (2 downto 0);
--  signal Chave_Operacao_ULA : std_logic;
--  signal CLK : std_logic;
--  signal SelMUX : std_logic;
--  signal Habilita_A : std_logic;
--  signal Reset_A : std_logic;
--  signal Operacao_ULA : std_logic;

	signal Saida_ROM : std_logic_vector (12 downto 0);
	signal Opcode : std_logic_vector (3 downto 0);
	signal Habilita_RAM : std_logic;
	signal Endereco_Imediato : std_logic_vector (larguraDados-1 downto 0);
	signal RAM_MUX : std_logic_vector (larguraDados-1 downto 0);
	signal MUX_ULA : std_logic_vector (larguraDados-1 downto 0);
	signal ULA_Registrador : std_logic_vector (larguraDados-1 downto 0);
	signal Saida_Registrador : std_logic_vector (larguraDados-1 downto 0);
	signal Sinais_Controle : std_logic_vector (5 downto 0);
	signal Endereco : std_logic_vector (8 downto 0);
	signal proxPC : std_logic_vector (8 downto 0);
	signal CLK : std_logic;
	signal SelMUX : std_logic;
	signal Habilita_A : std_logic;
	signal Operacao_ULA : std_logic_vector (1 downto 0);
	signal Habilita_Leitura : std_logic;
	signal Habilita_Escrita : std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => RAM_MUX,
                 entradaB_MUX =>  Endereco_Imediato,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_ULA);

DECO : entity work.decoderInstru port map (opcode => Opcode, saida => Sinais_Controle);
					  
-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => ULA_Registrador, DOUT => Saida_Registrador, ENABLE => Habilita_A, CLK => CLK);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => Endereco, ENABLE => '1', CLK => CLK);

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => Saida_Registrador, entradaB => MUX_ULA, saida => ULA_Registrador, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM port map (Endereco => Endereco, Dado => Saida_ROM);

RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 8)
          port map (addr => Endereco_Imediato, we => Habilita_Escrita, re => Habilita_Leitura, dado_in => Saida_Registrador, dado_out => RAM_MUX, clk => CLK, habilita =>Habilita_RAM);
			 
selMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Operacao_ULA <= Sinais_Controle(3 downto 2);
Habilita_Leitura <= Sinais_Controle(1);
Habilita_Escrita <= Sinais_Controle(0);

Opcode <= Saida_ROM(12 downto 9);
Habilita_RAM <= Saida_ROM(8);
Endereco_Imediato <= Saida_ROM(7 downto 0);

OUT_EQUATION <= Saida_Registrador;

end architecture;