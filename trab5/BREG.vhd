library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity BREG is
	generic (WSIZE : natural := 32);
	port (
		clk, wren, rst : in std_logic;
		radd1, radd2, wadd : in std_logic_vector(4 downto 0);
		wdata : in std_logic_vector(WSIZE-1 downto 0);
		r1, r2 : out std_logic_vector(WSIZE-1 downto 0)
	);
end BREG;

architecture BREG_arch of BREG is
	type regs_array is array(31 downto 0) of std_logic_vector(31 downto 0);
	signal regs : regs_array := (others => (others => '0'));
begin
	r1 <= regs(to_integer(unsigned(radd1)));
	r2	<= regs(to_integer(unsigned(radd2)));
	process (clk, wren, rst)
	begin
		if rising_edge(clk) then
			if (wren = '1') then
				if (wadd /= "00000") then
					regs(to_integer(unsigned(wadd))) <= wdata;
				end if;
			end if;
			if (rst = '1') then
				regs <= (others => (others => '0'));
			end if;
		end if;
	end process;
end architecture;