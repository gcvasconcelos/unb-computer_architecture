-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity mips_tb is
end entity;

architecture tb of mips_tb is

signal clk 		: std_logic := '0';
signal clk_rom : std_logic := '0';
signal rst 		: std_logic := '1';
signal data		: std_logic_vector(31 downto 0);
signal dbg		: std_logic_vector(1 downto 0) := "00";

begin

rst 	<= '0' after 200 ps;

dbg	<= "01" after 1000 ps, "10" after 1800 ps;

genclk: 	process (clk) begin
				clk <= not clk after 100 ps;
			end process;
			
genrclk:	process (clk_rom) begin
				clk_rom <= not clk_rom after 10 ps;
			end process;
		  
uut: 	mips_multi
		port map (	
			clk 		=> clk,
			clk_rom 	=> clk_rom,
			rst 		=> rst,
			debug		=> dbg,
			data 		=> data
		);
end architecture;
				