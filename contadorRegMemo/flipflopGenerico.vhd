library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflopGenerico is
     Port ( clk     : in  STD_LOGIC;
				  reset: in std_logic;
              d : in  STD_LOGIC;
              q   : out STD_LOGIC);
end entity;

architecture bordaSubidaReset of flipflopGenerico is
begin
  process(reset, clk)
  begin
		  if(reset='1') then
				q <= '0';
		  else
        if (rising_edge(clk)) then
					q <= d; 
				end if;
		   end if;
  end process;
end  architecture bordaSubidaReset;