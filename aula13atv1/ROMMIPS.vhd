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
          tmp(0)  := "00000000100101010111110000000000";   -- Desta posicao para baixo, é necessário acertar os valores

          return tmp;
      end initMemory;

      signal memROM : blocoMemoria := initMemory;

  begin
      Dado <= memROM (to_integer(unsigned(Endereco)));
  end architecture;