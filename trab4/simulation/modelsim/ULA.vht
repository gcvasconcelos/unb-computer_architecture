-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/07/2018 19:52:22"
                                                            
-- Vhdl Test Bench template for design  :  ULA
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

library ieee ; 
use ieee.std_logic_1164.all ; 
use ieee.numeric_std.all;

ENTITY ULA_tb IS
END ULA_tb;

ARCHITECTURE ULA_tb_arch OF ULA_tb IS
	-- constants                                                 
	-- signals                                                   
	SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL B : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL ovfl : STD_LOGIC;
	SIGNAL Z : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL zero : STD_LOGIC;
	
	COMPONENT ULA
		PORT (
			A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			ovfl : OUT STD_LOGIC;
			Z : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			zero : OUT STD_LOGIC
		);
	END COMPONENT;
	BEGIN
		i1 : ULA
		PORT MAP (
		-- list connections between master ports and signals
			A => A,
			B => B,
			opcode => opcode,
			ovfl => ovfl,
			Z => Z,
			zero => zero
		);
		init : PROCESS                                               
		-- variable declarations                                     
		BEGIN                                                        
			  -- code that executes only once                      
		WAIT;                                                       
		END PROCESS init;                                           
		always : PROCESS                                              
		-- optional sensitivity list                                  
		-- (        )                                                 
		-- variable declarations 
			variable tmp_opcode : std_logic_vector(3 downto 0);
		BEGIN                                                         
		-- code executes for every event on sensitivity list
			-- test all opcodes
			for i in 0 to 15 loop
				A <= X"00000003"; B <= X"00000002"; opcode <= std_logic_vector(to_unsigned(i,4));
				wait for 4 ps;
			end loop;
			
			-- test add (negative, zero, overflow)
			A <= X"FFFFFFFF"; B <= X"FFFFFFFF"; opcode <= "0010";
			wait for 4 ps;
			A <= X"FFFFFFFF"; B <= X"00000001"; opcode <= "0010";
			wait for 4 ps;
			A <= X"80000000"; B <= X"80000000"; opcode <= "0010";
			wait for 4 ps;

			-- test sub (negative, zero, overflow)
			A <= X"00000000"; B <= X"00000001"; opcode <= "0100";
			wait for 4 ps;
			A <= X"FFFFFFFF"; B <= X"FFFFFFFF"; opcode <= "0100";
			wait for 4 ps;
			A <= X"7FFFFFFF"; B <= X"80000000"; opcode <= "0100";
			wait for 4 ps;
			
		WAIT;                                                        
		END PROCESS always;                                          
END ULA_tb_arch;
