library ieee;
use IEEE.std_logic_1164.all;

entity demux2 is
	generic (
		W_SIZE 	: natural := 32
			);
	port(
		
	in0 : in std_logic_vector(W_SIZE-1 downto 0);
	sel: in std_logic;
	out0, out1: out std_logic_vector(15 downto 0)
	);
end demux2;

architecture rtl of demux2 is
begin
	
	out1 <= 	in0(15 downto 0) when (sel = '1') else
				(others => '0');
	out0 <= 	in0(15 downto 0) 	when (sel = '0') else
				(others => '0');

end rtl;