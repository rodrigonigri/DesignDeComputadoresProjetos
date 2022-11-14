library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(14 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant lw  : std_logic_vector(5 downto 0) := "100011";
  constant sw  : std_logic_vector(5 downto 0) := "101011";
  constant beq : std_logic_vector(5 downto 0) := "000100";
  constant jmp : std_logic_vector(5 downto 0) := "000010";
  constant op_r : std_logic_vector(5 downto 0) := "000000"; 
  

  begin
  -- primeiro bit da saida: selMuxBeqPc4
  -- segundo bit da saida: Mux(Rt/Rd)
  -- terceiro bit da saida: habEscritaReg
  -- quarto bit da saida: selMuxRtImed
  -- quinto ao décimo bit da saida: opcode
  -- decimo primeiro bit da saida: tipoR
  -- decimo segundo bit da saida: mux(ULA/mem)
  -- decimo terceiro bit da saida: BEQ
  -- decimo quarto bit da saida: habLeituraMEM
  -- decimo quinto bit da saida: habEscritaMEM
  
  saida <= "0011" & opcode & "01010" when opcode = lw else
			  "0001" & opcode & "00001" when opcode = sw else
			  "0000" & opcode & "00100" when opcode = beq else
			  "1000" & opcode & "00000" when opcode = jmp else
			  "0110" & opcode & "10000" when opcode = op_r else
			  "000000000000000"; -- nop
			  
end architecture;