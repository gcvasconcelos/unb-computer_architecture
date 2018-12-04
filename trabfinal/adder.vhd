-- Quartus II VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_pkg.all;

entity adder is 
	generic (
		DATA_WIDTH : natural := WORD_SIZE
	);
	port (
		a	   : in std_logic_vector ((DATA_WIDTH-1) downto 0);
		b	   : in std_logic_vector ((DATA_WIDTH-1) downto 0);
		res 	: out std_logic_vector ((DATA_WIDTH-1) downto 0)
	);
end entity;

architecture rtl of adder is
begin
	res <= a + b;
end rtl;
