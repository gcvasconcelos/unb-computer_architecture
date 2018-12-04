-- Quartus II VHDL Template
-- Binary Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clk_div is
	port
	(
		clk	  : in std_logic;
		clk64   : out std_logic
	);

end entity;

architecture rtl of clk_div is
begin
	process (clk)
		variable cnt: std_logic_vector(15 downto 0) := X"0000";
	begin
		if (rising_edge(clk)) then		   
			cnt := cnt + 1;
		end if;
		clk64 <= cnt(0);
	end process;
end rtl;
