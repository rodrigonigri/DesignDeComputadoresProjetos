library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(6 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant lw  : std_logic_vector(5 downto 0) := "100011";
  constant sw  : std_logic_vector(5 downto 0) := "101011";
  constant beq : std_logic_vector(5 downto 0) := "000100";
  

  begin
  -- primeiro bit da saida: selMuxBeqPc4
  -- segundo bit da saida: habEscritaReg
  -- terceiro bit da saida: selMuxRtImed
  -- quarto bit da saida: operacao
  -- quinto bit da saida: BEQ
  -- sexto bit da saida: habLeituraMEM
  -- setimo bit da saida: habEscritaMEM
  
  saida <= "1111010" when opcode = lw else
			  "1011001" when opcode = sw else
			  "0000100" when opcode = beq else
			  "0000000"; -- nop
			  
end architecture;