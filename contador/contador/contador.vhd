library ieee;
use ieee.std_logic_1164.all;

entity contador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
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
	SW : in std_logic_vector(9 downto 0);
	FPGA_RESET_N : in std_logic
  );
end entity;


architecture arquitetura of contador is

	--Sinais de PortMap da ROM, Processador e RAM
	signal Saida_ROM : std_logic_vector (12 downto 0);
	signal EntradaDados : std_logic_vector (7 downto 0);
	signal EntradaROM : std_logic_vector(8 downto 0);
	signal Endereco : std_logic_vector(8 downto 0);
	signal Habilita_Escrita : std_logic;
	signal CLK : std_logic;
	signal Habilita_Leitura : std_logic;
	signal DadoAcumulador : std_logic_vector(7 downto 0);
	signal EnderecoRAM : std_logic_vector(5 downto 0);
	
	--Sinais auxiliares do DataAddress e decodificadores de endereço
	signal EnderecoSignif : std_logic_vector(2 downto 0);
	signal SaidaDecodSignif : std_logic_vector(7 downto 0);
	signal EnderecoMenosSignif : std_logic_vector(2 downto 0);
	signal SaidaDecodMenosSignif : std_logic_vector(7 downto 0);
	
	--Vetores que guardam partes do LEDR
	signal Led0 : std_logic_vector(7 downto 0);
	signal Led1 : std_logic_vector(0 downto 0);
	signal Led2 : std_logic_vector(0 downto 0);
	
	--Bits que habilitam leitura ou escrita dos periféricos
	signal HabLed0 : std_logic;
	signal HabLed1 : std_logic;
	signal HabLed2 : std_logic;
	signal HabHex0 : std_logic;
	signal HabHex1 : std_logic;
	signal HabHex2 : std_logic;
	signal HabHex3 : std_logic;
	signal HabHex4 : std_logic;
	signal HabHex5 : std_logic;
	signal HabSW0 : std_logic;
	signal HabSW1 : std_logic;
	signal HabSW2 : std_logic;
	signal HabKEY0 : std_logic;
	signal HabKEY1 : std_logic;
	signal HabKEY2 : std_logic;
	signal HabKEY3 : std_logic;
	signal HabRESET : std_logic;
	
	--Sinais auxiliares do acumulador
	signal Bit0Acum : std_logic_vector(0 downto 0);
	signal BitsHexAcum : std_logic_vector(3 downto 0);
	
	--Sinais de transição do top level (Registrador para decodificador, 
	   --decodificador para hexa, chaves para buffer, etc.)
	signal RegHex0Decod : std_logic_vector(3 downto 0);
	signal RegHex1Decod : std_logic_vector(3 downto 0);
	signal RegHex2Decod : std_logic_vector(3 downto 0);
	signal RegHex3Decod : std_logic_vector(3 downto 0);
	signal RegHex4Decod : std_logic_vector(3 downto 0);
	signal RegHex5Decod : std_logic_vector(3 downto 0);
	signal DecodHex0 : std_logic_vector(6 downto 0);
	signal DecodHex1 : std_logic_vector(6 downto 0);
	signal DecodHex2 : std_logic_vector(6 downto 0);
	signal DecodHex3 : std_logic_vector(6 downto 0);
	signal DecodHex4 : std_logic_vector(6 downto 0);
	signal DecodHex5 : std_logic_vector(6 downto 0);
	signal SW0Buffer : std_logic_vector(7 downto 0);
	signal SW1Buffer : std_logic;
	signal SW2Buffer : std_logic;
	signal KEY0Edge : std_logic;
	signal EdgeFFKEY0 : std_logic;
	signal SaidaRegKEY0 : std_logic;
	signal RstFFKey0 : std_logic;
	signal KEY1Edge : std_logic;
	signal EdgeFFKEY1 : std_logic;
	signal SaidaRegKEY1 : std_logic;
	signal RstFFKey1 : std_logic;
	signal KEY2Buffer : std_logic;
	signal KEY3Buffer : std_logic;
	signal RESETBuffer : std_logic;


begin

CLK <= CLOCK_50;

-- Instanciando os componentes:

--Separando RAM e ROM do processador

ROM1 : entity work.memoriaROM port map (Endereco => EntradaROM, Dado => Saida_ROM);

RAM1 : entity work.memoriaRAM  generic map (dataWidth => larguraDados, addrWidth => 6)
    	 port map (addr => EnderecoRAM, we => Habilita_Escrita, re => Habilita_Leitura, dado_in => DadoAcumulador, dado_out => EntradaDados, clk => CLK, habilita =>SaidaDecodSignif(0));
		 
PROC : entity work.processador port map (CLOCK_50 => CLK, Instruction_IN => Saida_ROM, Data_IN => EntradaDados, ROM_Adress => EntradaROM, Data_Address => Endereco, Data_OUT => DadoAcumulador, Rd => Habilita_Leitura, Wr => Habilita_Escrita);

--Componentes de escrita (LEDS e HEXA)

DECO1 : entity work.Decodificador3x8 port map (entrada => EnderecoSignif, saida=> SaidaDecodSignif);

DECO2 : entity work.Decodificador3x8 port map (entrada => EnderecoMenosSignif, saida=> SaidaDecodMenosSignif);

REGLEDR : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map (DIN => DadoAcumulador, DOUT => Led0, ENABLE => HabLed0, CLK => CLK);
			 
REGLED1 : entity work.registradorGenerico   generic map (larguraDados => 1)
          port map (DIN => Bit0Acum, DOUT => Led1, ENABLE => HabLed1, CLK => CLK);
			 
REGLED2 : entity work.registradorGenerico   generic map (larguraDados => 1)
          port map (DIN => Bit0Acum, DOUT => Led2, ENABLE => HabLed2, CLK => CLK);

REGHEX0 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => BitsHexAcum, DOUT => RegHex0Decod, ENABLE => HabHex0, CLK => CLK);
			 
REGHEX1 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => BitsHexAcum, DOUT => RegHex1Decod, ENABLE => HabHex1, CLK => CLK);

REGHEX2 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => BitsHexAcum, DOUT => RegHex2Decod, ENABLE => HabHex2, CLK => CLK);

REGHEX3 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => BitsHexAcum, DOUT => RegHex3Decod, ENABLE => HabHex3, CLK => CLK);
			 
REGHEX4 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => BitsHexAcum, DOUT => RegHex4Decod, ENABLE => HabHex4, CLK => CLK);
			 
REGHEX5 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => BitsHexAcum, DOUT => RegHex5Decod, ENABLE => HabHex5, CLK => CLK);
			 
DECOHEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => RegHex0Decod,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex0);
					  
DECOHEX1 :  entity work.conversorHex7Seg
        port map(dadoHex => RegHex1Decod,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex1);
					  
DECOHEX2 :  entity work.conversorHex7Seg
        port map(dadoHex => RegHex2Decod,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex2);
DECOHEX3 :  entity work.conversorHex7Seg
        port map(dadoHex => RegHex3Decod,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex3);
					  
DECOHEX4 :  entity work.conversorHex7Seg
        port map(dadoHex => RegHex4Decod,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex4);
					  
DECOHEX5 :  entity work.conversorHex7Seg
        port map(dadoHex => RegHex5Decod,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => DecodHex5);

--Componentesde leitura (chaves e botões)

BUFSW0 :  entity work.buffer_3_state_8portas
        port map(entrada => SW0Buffer, habilita => HabSW0, saida => EntradaDados);

BUFSW1 :  entity work.buffer_3_state_1porta
        port map(entrada => SW1Buffer, habilita => HabSW1, saida => EntradaDados(0));
		  
BUFSW2 :  entity work.buffer_3_state_1porta
        port map(entrada => SW2Buffer, habilita => HabSW2, saida => EntradaDados(0));
		  
--Para o key0, o caminho é KEY0 => edgeDetector => CLK de um FLIPFLOP => bufferKey0
	  
EDGEKEY0 : entity work.edgeDetector(bordaSubida)
		  port map (clk => CLK, entrada => KEY0Edge, saida => EdgeFFKEY0);

FFKEY0 : entity work.flipflopGenerico
		  port map (clk => EdgeFFKEY0, reset => RstFFKey0, d => '1', q=> SaidaRegKEY0);
		  
BUFKEY0 :  entity work.buffer_3_state_1porta
        port map(entrada => SaidaRegKEY0, habilita => HabKEY0, saida => EntradaDados(0));
		  
--Para o key1, o caminho é KEY1 => edgeDetector => CLK de um FLIPFLOP => bufferKey1

EDGEKEY1 : entity work.edgeDetector(bordaSubida)
		  port map (clk => CLK, entrada => KEY1Edge, saida => EdgeFFKEY1);

FFKEY1 : entity work.flipflopGenerico
		  port map (clk => EdgeFFKEY1, reset => RstFFKey1, d => '1', q=> SaidaRegKEY1);
		  
BUFKEY1 :  entity work.buffer_3_state_1porta
        port map(entrada => SaidaRegKEY1, habilita => HabKEY1, saida => EntradaDados(0));
		  
--BUFKEY1 :  entity work.buffer_3_state_1porta
        --port map(entrada => KEY1Buffer, habilita => HabKEY1, saida => EntradaDados(0));
		  
----
		  
BUFKEY2 :  entity work.buffer_3_state_1porta
        port map(entrada => KEY2Buffer, habilita => HabKEY2, saida => EntradaDados(0));
		
BUFKEY3 :  entity work.buffer_3_state_1porta
        port map(entrada => KEY3Buffer, habilita => HabKEY3, saida => EntradaDados(0));
		  
BUFRESET :  entity work.buffer_3_state_1porta
        port map(entrada => RESETBuffer, habilita => HabRESET, saida => EntradaDados(0));

--Instanciando os sinais auxiliares

EnderecoSignif <= Endereco(8 downto 6);
EnderecoMenosSignif <= Endereco(2 downto 0);
EnderecoRAM <= Endereco(5 downto 0);
Bit0Acum <= (0 => DadoAcumulador(0));
BitsHexAcum <= DadoAcumulador(3 downto 0);

--Lógica do endereçamento dos periféricos (habilitas)

HabLed0 <= SaidaDecodSignif(4) AND Habilita_Escrita AND SaidaDecodMenosSignif(0) AND NOT(Endereco(5));
HabLed1 <= SaidaDecodSignif(4) AND Habilita_Escrita AND SaidaDecodMenosSignif(1) AND NOT(Endereco(5));
HabLed2 <= SaidaDecodSignif(4) AND Habilita_Escrita AND SaidaDecodMenosSignif(2) AND NOT(Endereco(5));

HabHex0 <= SaidaDecodSignif(4) AND Habilita_Escrita AND SaidaDecodMenosSignif(0) AND Endereco(5);
HabHex1 <= SaidaDecodSignif(4) AND Habilita_Escrita AND SaidaDecodMenosSignif(1) AND Endereco(5);
HabHex2 <= SaidaDecodSignif(4) AND Habilita_Escrita AND SaidaDecodMenosSignif(2) AND Endereco(5);
HabHex3 <= SaidaDecodSignif(4) AND Habilita_Escrita AND SaidaDecodMenosSignif(3) AND Endereco(5);
HabHex4 <= SaidaDecodSignif(4) AND Habilita_Escrita AND SaidaDecodMenosSignif(4) AND Endereco(5);
HabHex5 <= SaidaDecodSignif(4) AND Habilita_Escrita AND SaidaDecodMenosSignif(5) AND Endereco(5);

HabSW0 <= SaidaDecodSignif(5) AND Habilita_Leitura AND SaidaDecodMenosSignif(0) AND NOT(Endereco(5));
HabSW1 <= SaidaDecodSignif(5) AND Habilita_Leitura AND SaidaDecodMenosSignif(1) AND NOT(Endereco(5));
HabSW2 <= SaidaDecodSignif(5) AND Habilita_Leitura AND SaidaDecodMenosSignif(2) AND NOT(Endereco(5));

HabKEY0 <= SaidaDecodSignif(5) AND Habilita_Leitura AND SaidaDecodMenosSignif(0) AND Endereco(5);
HabKEY1 <= SaidaDecodSignif(5) AND Habilita_Leitura AND SaidaDecodMenosSignif(1) AND Endereco(5);
HabKEY2 <= SaidaDecodSignif(5) AND Habilita_Leitura AND SaidaDecodMenosSignif(2) AND Endereco(5);
HabKEY3 <= SaidaDecodSignif(5) AND Habilita_Leitura AND SaidaDecodMenosSignif(3) AND Endereco(5);
HabRESET <= SaidaDecodSignif(5) AND Habilita_Leitura AND SaidaDecodMenosSignif(4) AND Endereco(5);

RstFFKey0 <= Endereco(0) AND Endereco(1) AND Endereco(2) AND Endereco(3) AND Endereco(4) AND Endereco(5) AND Endereco(6) AND Endereco(7) AND Endereco(8) AND Habilita_Escrita;
RstFFKey1 <= NOT(Endereco(0)) AND Endereco(1) AND Endereco(2) AND Endereco(3) AND Endereco(4) AND Endereco(5) AND Endereco(6) AND Endereco(7) AND Endereco(8) AND Habilita_Escrita;

--Instanciando OUT a partir dos sinais auxiliares
LEDR(7 downto 0) <= Led0;
LEDR(8) <= Led1(0);
LEDR(9) <= Led2(0);
HEX0 <= DecodHex0;
HEX1 <= DecodHex1;
HEX2 <= DecodHex2;
HEX3 <= DecodHex3;
HEX4 <= DecodHex4;
HEX5 <= DecodHex5;


--Instanciando sinais a partir do IN
SW0Buffer <= SW(7 downto 0);
SW1Buffer <= SW(8);
SW2Buffer <= SW(9);
KEY0Edge <= NOT(KEY(0));
KEY1Edge <= NOT(KEY(1));
KEY2Buffer <= NOT(KEY(2));
KEY3Buffer <= NOT(KEY(3));
RESETBuffer <= NOT(FPGA_RESET_N);


end architecture;