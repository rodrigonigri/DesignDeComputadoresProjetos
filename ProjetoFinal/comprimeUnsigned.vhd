library ieee;
use ieee.std_logic_1164.all;

entity comprimeUnsigned is
    generic
    (
        larguraDados   : natural  :=    32;
		  larguraPalavra	  : natural  :=    8
    );
    port
    (
        -- Input ports
        Sinal_IN : in  std_logic_vector(larguraDados-1 downto 0);
        -- Output ports
        Sinal_OUT: out std_logic_vector(larguraDados-1 downto 0)
    );
end entity;

architecture comportamento of comprimeUnsigned is
begin

    Sinal_OUT <= (larguraDados-1 downto larguraPalavra => '0' ) & Sinal_IN(larguraPalavra-1 downto 0);

end architecture;