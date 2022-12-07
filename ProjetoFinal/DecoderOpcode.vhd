library ieee;
use ieee.std_logic_1164.all;

entity DecoderOpcode is
  port ( opcode : in std_logic_vector(5 downto 0);
         operacaoOpcode : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of DecoderOpcode is

  constant lw  : std_logic_vector(5 downto 0) := "100011";
  constant sw  : std_logic_vector(5 downto 0) := "101011";
  constant beq : std_logic_vector(5 downto 0) := "000100";
  constant bne : std_logic_vector(5 downto 0) := "000101";
  constant jmp : std_logic_vector(5 downto 0) := "000010";
  constant andi : std_logic_vector(5 downto 0) := "001100";
  constant ori : std_logic_vector(5 downto 0) := "001101";
  constant addi : std_logic_vector(5 downto 0) := "001000";
  constant slti : std_logic_vector(5 downto 0) := "001010";

  

  begin

  operacaoOpcode <= "010" when opcode = lw else
						  "010" when opcode = sw else 
						  "110" when opcode = beq else 
						  "110" when opcode = bne else 
						  "000" when opcode = jmp else
						  "000" when opcode = andi else
						  "001" when opcode = ori else
						  "010" when opcode = addi else
						  "111" when opcode = slti else
						  "000";
  
			  
end architecture;