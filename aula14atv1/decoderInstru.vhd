library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant lw  : std_logic_vector(5 downto 0) := "100011";
  constant sw  : std_logic_vector(5 downto 0) := "101011";
  constant beq : std_logic_vector(5 downto 0) := "000100";
  

  begin
  
  -- primeiro bit da saida: habEscritaReg
  -- segundo bit da saida: operacao
  -- terceiro bit da saida: habLeituraMEM
  -- quarto bit da saida: habEscritaMEM
  
  saida <= "1110" when opcode = lw else
			  "0101" when opcode = sw else
			  "0100" when opcode = beq else
			  "0000"; -- nop
			  
end architecture;