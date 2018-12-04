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
-- Generated on "11/13/2018 17:06:11"
                                                            
-- Vhdl Test Bench template for design  :  BREG
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;

ENTITY BREG_tb IS
END BREG_tb;
ARCHITECTURE BREG_tb_arch OF BREG_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '1';
SIGNAL r1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL r2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL radd1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL radd2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL wadd : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL wdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL wren : STD_LOGIC;
COMPONENT BREG
	PORT (
	clk : IN STD_LOGIC;
	r1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	r2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	radd1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	radd2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	rst : IN STD_LOGIC;
	wadd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	wren : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BREG
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	r1 => r1,
	r2 => r2,
	radd1 => radd1,
	radd2 => radd2,
	rst => rst,
	wadd => wadd,
	wdata => wdata,
	wren => wren
	);
always : PROCESS                                                                                   
BEGIN
	-- writes all regs
	wren 	<= '1';
	rst 	<= '0';
	radd1 <= (others => '0');
	radd2 <= (others => '0');
	for i in 0 to 31 loop
		clk <= not clk;
		wait for 5 ps;
		clk <= not clk;
		wadd 	<= std_LOGIC_VECTOR(to_unsigned(i, 5));
		wdata <= std_LOGIC_VECTOR(to_unsigned(i, 32));
		wait for 5 ps;
	end loop;
	
	-- read all regs
	wren	<= '0';
	wadd 	<= (others => '0');
	wdata <= (others => '0');
	clk   <= '0';
	for i in 0 to 10 loop
		radd1 <= std_LOGIC_VECTOR(to_unsigned(i, 5));
		wait for 10 ps;
		assert r1 = std_LOGIC_VECTOR(to_unsigned(i, 32));
	end loop;
	radd1 <= (others => '0');
	for i in 11 to 20 loop
		radd2 <= std_LOGIC_VECTOR(to_unsigned(i, 5));
		wait for 10 ps;
		assert r2 = std_LOGIC_VECTOR(to_unsigned(i, 32));
	end loop;
	for i in 21 to 31 loop	
		radd1 <= std_LOGIC_VECTOR(to_unsigned(i, 5));
		radd2 <= std_LOGIC_VECTOR(to_unsigned(i, 5));
		wait for 10 ps;
		assert r1 = std_LOGIC_VECTOR(to_unsigned(i, 32));
		assert r2 = std_LOGIC_VECTOR(to_unsigned(i, 32));
	end loop;
	
	-- test sync reset
	clk <= not clk;
	rst <= '1';
	for i in 0 to 31 loop
		radd1 <= std_LOGIC_VECTOR(to_unsigned(i, 5));
		wait for 10 ps;
		assert r1 = "00000000000000000000000000000000";
	end loop;
	
	-- test zero reg
	wren <= '1';
	clk <= '0';
	clk <= not clk;
	wadd 	<= (others => '0');
	wdata <= (0 => '1', others => '0');
	wait for 10 ps;
	
	radd1 <= (others => '0');
	wait for 10 ps;
	assert r1 = "00000000000000000000000000000000";
	
	-- writes and reads in same cycle
	wren <= '1';
	clk <= '0';
	clk <= not clk;
	wadd 	<= (0 => '1', others => '0');
	wdata <= (0 => '1', others => '0');
	radd1 <= (0 => '1', others => '0');
	wait for 10 ps;
	assert r1 = "00000000000000000000000000000000";

WAIT;                                                        
END PROCESS always;                                          
END BREG_tb_arch;
