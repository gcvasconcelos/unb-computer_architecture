library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity byte_mem_sel is
	port(
		store_ctl :  in std_logic_vector(1 downto 0); -- sw, sh or sb
		byte_add  :  in std_logic_vector(1 downto 0); -- a1 e a0
		byteena	 :  out std_logic_vector(3 downto 0)
	);
end entity;

architecture wires of byte_mem_sel is
	signal byte_mask : std_logic_vector(3 downto 0);
begin
	byteena <= byte_mask;
	
	process (store_ctl, byte_add, byte_mask)
	begin
		case store_ctl is 
		when "00" =>
			byte_mask <= "1111";
		when "01" =>
			if (byte_add(1) = '1') then 
				byte_mask <= "1100";
			else
				byte_mask <= "0011";
			end if;
		when "10" =>
			if (byte_add = "00") then
				byte_mask <= "0001";
			elsif	(byte_add = "01") then
				byte_mask <= "0010";
			elsif	(byte_add = "10") then
				byte_mask <= "0100";
			else
				byte_mask <= "1000";
			end if;
		when others =>
			byte_mask <= "0000";
		end case;

	end process;
	
end wires;