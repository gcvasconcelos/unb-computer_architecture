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
-- Generated on "11/29/2018 00:01:20"
                                                            
-- Vhdl Test Bench template for design  :  mips_multi
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_multi_tb IS
END mips_multi_tb;

ARCHITECTURE mips_multi_arch OF mips_multi_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_rom : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL debug : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rst : STD_LOGIC;

COMPONENT mips_multi
	PORT (
	clk : IN STD_LOGIC;
	clk_rom : IN STD_LOGIC;
	data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	debug : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;

BEGIN
	i1 : mips_multi
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_rom => clk_rom,
	data => data,
	debug => debug,
	rst => rst
	);
	
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
			rst <= '1'; debug <= "00";
			wait for 30 ps;
			rst <= '0';
WAIT;                                                       
END PROCESS init;    

clkgen : PROCESS                                                                               
BEGIN                                                 
			for i in 0 to 500 loop
			clk_rom <= '1';
			wait for 1 ps;
			clk_rom <= '0';
			wait for 1 ps;
			end loop;			
wait;			
END PROCESS clkgen; 
                                       
always : PROCESS                                                                               
BEGIN                                                 
			for i in 0 to 50 loop
			clk <= '1';
			wait for 10 ps;
			clk <= '0';
			wait for 10 ps;
			end loop;				
wait;			
END PROCESS always;   
                                       
END mips_multi_arch;
