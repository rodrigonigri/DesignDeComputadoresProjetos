library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;



entity ROMMIPS IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
       memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port (
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) );
end entity;



architecture assincrona OF ROMMIPS IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);
  function initMemory
          return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
    begin
        -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
        -- Inicializa os endereços:
          tmp(0)  := "10101101010010010000000000001001";   -- Testando jogar Rt (endereço 9, guarda 10) no endereço 20 da memória
			 tmp(1)  := "10001101010010100000000000001001";   -- Testando jogar em Rt (endereço 10, guarda 11) o que está no endereço 20 da memória

         return tmp;
      end initMemory;



     signal memROM : blocoMemoria := initMemory;
        
      -- Utiliza uma quantidade menor de endereços locais:
        signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);



 begin
      EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
        Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
  end architecture;