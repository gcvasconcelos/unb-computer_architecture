library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.mips_pkg.all;

--
-- Modulo para mapear enderecos de instrucoes e de dados para 
-- a memoria multi-ciclo. Com memoria de 256 palavras, temos:
-- * instrucoes[9 - 2]
-- * dados[9 - 2], com o bit mais 
-- significativo em 1, para comecar memoria de dados em 0x80.


entity mem_addr is
	generic (
		SIZE : natural := 32 );
	port (
	 	in0, in1	: in std_logic_vector(SIZE-1 downto 0);
		sel		: in std_logic;
		m_out		: out std_logic_vector(IMEM_ADDR-1 downto 0));
end entity;

architecture rtl of mem_addr is 
begin
	m_out <= in0(IMEM_ADDR+1 downto 2) when (sel = '0') else '1' & in1(IMEM_ADDR downto 2);
end architecture;