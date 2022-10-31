library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( JMP : in std_logic;
			JEQ : in std_logic;
			JSR : in std_logic;
			RET : in std_logic;
			flag : in std_logic_vector(0 downto 0);
         saida : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of logicaDesvio is
	signal bit0 : std_logic;
	signal bit1 : std_logic;
  begin
  bit0<= JMP OR (JEQ AND flag(0)) OR JSR;
  bit1<= RET;
saida <= bit1 & bit0;
end architecture;