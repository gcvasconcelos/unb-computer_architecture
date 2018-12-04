library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity ULA is
	generic (WSIZE : natural := 32);
	port (
		opcode : in std_logic_vector(3 downto 0);
		A, B : in std_logic_vector(WSIZE-1 downto 0);
		Z : out std_logic_vector(WSIZE-1 downto 0);
		zero, ovfl : out std_logic
	);
end ULA;

architecture ULA_arch of ULA is
	signal tmp : std_logic_vector(31 downto 0);
	begin			
		process (A, B, opcode, tmp)
		variable count : std_logic_vector(31 downto 0);
		variable tmp_shft : std_logic_vector(31 downto 0);
		begin		
			case (opcode) is
				when "0000" => tmp <= A and B;
				when "0001" => tmp <= A or B;
				when "0010" => tmp <= A + B;
				when "0011" => tmp <= std_logic_vector(unsigned(A) + unsigned(B));
				when "0100" => tmp <= A - B;
				when "0101" => tmp <= std_logic_vector(unsigned(A) - unsigned(B));
				when "0110" => 
					if A < B then
						tmp <= ( 0 => '1', others => '0' );
					else 
						tmp <= ( others => '0' );
					end if;
				when "0111" => 
					if (unsigned(A) < unsigned(B)) then
						tmp <= ( 0 => '1', others => '0' );
					else 
						tmp <= ( others => '0' );
					end if;
				when "1000" => tmp <= A nor B ;
				when "1001" => tmp <= A xor B;
				when "1010" => tmp <= std_logic_vector(shift_left(unsigned(B), to_integer(unsigned(A))));
				when "1011" => tmp <= std_logic_vector(shift_right(unsigned(B), to_integer(unsigned(A))));
				when "1100" => tmp <= std_logic_vector(shift_right(signed(B), to_integer(unsigned(A))));
				when "1101" => 
					tmp_shft := A;
					count := X"00000000";
				 	for i in 0 to 31 loop
						if (tmp_shft(31) = '1') then
							exit;
						end if ;
						tmp_shft := std_logic_vector(shift_left(unsigned(tmp_shft), 1));
						count := count + X"00000001";
					end loop ;
					tmp <= count;
				when "1110" =>
					tmp_shft := tmp;
					count := X"00000000";
					for i in 0 to 31 loop
						if (tmp_shft(31) = '0') then
							exit;
						end if ;
						tmp_shft := std_logic_vector(shift_left(unsigned(tmp_shft), 1));
						count := count + X"00000001";
					end loop ;
					tmp <= count;
				when others => tmp <= (others => '0');
			end case;
			
			-- checks overflow
			if (opcode = "0010") then
				ovfl <= ((A(31) xnor B(31)) and (A(31) xor tmp(31)));
			elsif (opcode = "0100") then
				ovfl <= B(31) and tmp(31);
			else 
				ovfl <= '0';	
			end if;

			-- checks 0 flag
			if ( tmp = 0 ) then
				zero <= '1';
			else 
				zero <= '0';
			end if;
			
			-- gives result
			Z <= tmp;		
		end process;
end architecture ULA_arch;