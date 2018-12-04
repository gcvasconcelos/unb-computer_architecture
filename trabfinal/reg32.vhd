-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;

entity reg32 is
	generic (
		SIZE : natural := 32);
	port 
	(
		clk		: in std_logic;
		enable	: in std_logic;
		sr_in	   : in std_logic_vector(SIZE-1 downto 0);
		sr_out	: out std_logic_vector(SIZE-1 downto 0)
	);
end entity;

architecture rtl of reg32 is
begin
	process (clk)
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				sr_out <= sr_in;
			end if;
		end if;
	end process;
end rtl;
