library ieee;
use ieee.std_logic_1164.all;

entity logicaDesvio is
  port ( JMP : in std_logic;
			JEQ : in std_logic;
			flag : in std_logic_vector(0 downto 0);
         saida : out std_logic
  );
end entity;

architecture comportamento of logicaDesvio is

  begin
saida <= '1' when JMP = '1' else
         '1' when (JEQ = '1' and flag = "1") else
         '0'; 
end architecture;