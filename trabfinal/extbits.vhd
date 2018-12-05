library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity extbits is
	generic (
		IN_SIZE : natural := 5;
		OUT_SIZE : natural := 32	
		);
	port (
		input : in std_logic_vector(IN_SIZE-1 downto 0);
		output: out std_logic_vector(OUT_SIZE-1 downto 0)
		);
end entity;
		
architecture wires of extbits is
signal tmp : std_logic_vector(OUT_SIZE-1 downto 0);
begin
	
	tmp(IN_SIZE-1 downto 0) <= input;
	
	tmp(OUT_SIZE-1 downto IN_SIZE) <= (others => '0');
	
	output <= tmp;
												
end wires;