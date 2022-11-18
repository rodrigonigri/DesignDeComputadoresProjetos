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
        -- Inicializa os endereços:
          tmp(0)  := "00010001001010100000000000000011";   -- BEQ R(9), R(10), 3
			 tmp(1)  := "10101101001010010000000000000000";   -- SW R(9), 0(10)
			 tmp(2)  := "10001101001010100000000000000000";   -- LW R(10), 0(10)
			 tmp(3)  := "00010001001010101111111111111100";	  -- BEQ R(9), R(10), -4

         return tmp;
      end initMemory;



     signal memROM : blocoMemoria := initMemory;
        
      -- Utiliza uma quantidade menor de endereços locais:
        signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);



 begin
      EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
        Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
  end architecture;