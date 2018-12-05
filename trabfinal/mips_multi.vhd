-- Quartus II VHDL Template
-- Basic Shift Register

library ieee;
use ieee.std_logic_1164.all;
use work.mips_pkg.all;

entity multiciclo is
	port 
	(
		clk		: in std_logic;
		clk_rom	: in std_logic;
		rst	   : in std_logic;
		debug		: in std_logic_vector(1 downto 0);
		data  	: out std_logic_vector(WORD_SIZE-1 downto 0)
	);
end entity;

architecture rtl of multiciclo is

--=======================================================================
-- Convencoes:
--        _v - sufixo para std_logic_vector
--	       _s - sufixo para std_logic
--
--=======================================================================


signal 	pcin_v 		: std_logic_vector(WORD_SIZE-1 downto 0) := (others => '0');		-- entrada PC
signal 
			pcout_v,  		-- saida PC
			pccond_v,		-- PC somado ao offset
			pcbranch_v,		-- Saida primeiro mux PC
			pcjump_v,  		-- Endereco de Jump
			regdata_v,		-- entrada de dados BREG
			memout_v,		-- saida da memoria
			rdmout_v,		-- saida do registrador de dados da memoria
			rULA_out_v,		-- registrador na saida da ula
			memadd_v,		-- endereco da memoria
			datadd_v,		-- endereco de dado na memoria
			pc_add_v,
			regAin_v,		-- saida A do BREG
			regBin_v,		-- saida B do BREG
			regA_v,			-- saida A do BREG
			regB_v,			-- saida B do BREG
			aluA_v,			-- entrada A da ULA
			aluB_v,			-- entrada B da ULA
			alu_out_v,		-- saida ULA
			instruction_v,	-- saida do reg de instrucoes
			imm32_x4_v,	   -- imediato extendido e multiplicado por 4
			imm32_v			-- imediato extendido a 32 bits
			: std_logic_vector(WORD_SIZE-1 downto 0);
			
signal addsht2_v 			: std_logic_vector(WORD_SIZE-1 downto 0);
signal rset_s, clock_s 	: std_logic;
signal iwreg_v 			: std_logic_vector(4 downto 0);  -- indice registador escrito
signal alu_sel_v			: std_logic_vector(3 downto 0);  -- indice registador escrito
signal sel_aluB_v 		: std_logic_vector(1 downto 0);	-- seleciona entrada B da ula
signal alu_op_v			: std_logic_vector(2 downto 0);	-- codigo op ula
signal org_pc_v			: std_logic_vector(1 downto 0);	-- selecao entrada do PC

signal   shamt_ext_v		: std_logic_vector(WORD_SIZE-1 downto 0);
signal   reg_shamt_sel_v 	: std_logic_vector(WORD_SIZE-1 downto 0);

signal 	byte_out_v 	   : std_logic_vector(7 downto 0);
signal 	half_out_v   	: std_logic_vector(15 downto 0);

signal 	byte_ext_v 	   : std_logic_vector(31 downto 0);
signal 	half_ext_v   	: std_logic_vector(31 downto 0);

signal 	mdr_mux_sel_v 	: std_logic_vector(1 downto 0);
signal 	mdr_in_v 	   : std_logic_vector(31 downto 0);

signal 	
			branch_s,		-- beq ou bne
			is_beq_s,    	-- beq
			is_bne_s,		-- bne
			ir_wr_s,			-- escreve instrucao no ir
			jump_s,			-- instrucao jump
			mem_read_s,		-- leitura memoria
			mem_reg_s,		-- controle dado breg
			mem_wr_s,		-- escrita na memoria
			--ovfl_s,			-- overflow da ULA
			sel_aluA_s, 	-- seleciona entrada A da ula
			pc_wr_s,			-- escreve pc
			reg_dst_s,		-- controle endereco reg
			reg_wr_s,		-- escreve breg
			sel_end_mem_s,	-- seleciona endereco memoria
			zero_s,			-- sinal zero da ula
			shamt_sel_s,	-- controle do mux do primeiro mux da ula A
			logic_ext_s,	-- extensão lógica com 0s ------<
			is_unsigned_s  -- verifica se load é unsigned ou não
			: std_logic;
			

alias    func_field_v 	: std_logic_vector(5 downto 0)  is instruction_v(5 downto 0);
alias    rs_field_v	 	: std_logic_vector(4 downto 0)  is instruction_v(25 downto 21);
alias    rt_field_v	 	: std_logic_vector(4 downto 0)  is instruction_v(20 downto 16);
alias    rd_field_v	 	: std_logic_vector(4 downto 0)  is instruction_v(15 downto 11);
alias    imm16_field_v	: std_logic_vector(15 downto 0) is instruction_v(15 downto 0);
alias 	imm26_field_v  : std_logic_vector(25 downto 0) is instruction_v(25 downto 0);
alias 	sht_field_v		: std_logic_vector(4 downto 0)  is instruction_v(10 downto 6);
alias    op_field_v		: std_logic_vector(5 downto 0)  is instruction_v(31 downto 26);

alias 	byte0_mem_v 	: std_logic_vector(7 downto 0)  is memout_v(7 downto 0);
alias 	byte1_mem_v 	: std_logic_vector(7 downto 0)  is memout_v(15 downto 8);
alias 	byte2_mem_v 	: std_logic_vector(7 downto 0)  is memout_v(23 downto 16);
alias 	byte3_mem_v 	: std_logic_vector(7 downto 0)  is memout_v(31 downto 24);

alias 	half0_mem_v 	: std_logic_vector(15 downto 0)  is memout_v(15 downto 0);
alias 	half1_mem_v 	: std_logic_vector(15 downto 0)  is memout_v(31 downto 16);

	
begin

data 			<=  pcout_v when debug = "00" else
					 alu_out_v when debug = "01" else
					 instruction_v when debug = "10" else
					 memout_v;

pcjump_v 	<= pcout_v(31 downto 28) & imm26_field_v & "00";

pc_wr_s 		<= jump_s or (zero_s and is_beq_s) or ((not zero_s) and is_bne_s);

imm32_x4_v 	<= imm32_v(29 downto 0) & "00";

datadd_v		<= X"000000" & '1' & rULA_out_v(8 downto 2);

pc_add_v		<= X"000000" & pcout_v(9 downto 2);

--=======================================================================
-- PC - Contador de programa
--=======================================================================
pc:	reg 
		generic map (SIZE => 32)
		port map (sr_in => pcin_v, sr_out => pcout_v, rst => rst, clk => clk, enable => pc_wr_s);

--=======================================================================
-- mux para enderecamento da memoria
--=======================================================================		
mux_mem: mux_2
		port map (
			in0 	=> pc_add_v,
			in1 	=> datadd_v,
			sel 	=> sel_end_mem_s,
			m_out => memadd_v
			);
		
--=======================================================================
-- Memoria do MIPS
--=======================================================================		
mem:  mips_mem
		port map (address => memadd_v(7 downto 0), data => regB_v, wren => mem_wr_s, clk => clk_rom, Q => memout_v );
	
--=======================================================================
-- RI - registrador de instruções
--=======================================================================	
ir:	reg
		generic map (SIZE => 32)
		port map (sr_in => memout_v, sr_out => instruction_v, rst => '0', clk => clk, enable => ir_wr_s );

--=======================================================================
-- RDM - registrador de dados da memoria
--=======================================================================
rdm:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => mdr_in_v, clk => clk, sr_out => rdmout_v);
	
--=======================================================================
-- Mux para enderecamento do registrador a ser escrito
--=======================================================================
mux_reg_add: mux_2 
		generic map (SIZE => 5)
		port map (in0 => rt_field_v,
					 in1 => rd_field_v,
					 sel => reg_dst_s,
					 m_out => iwreg_v);
					 
--=======================================================================
-- Mux de selecao de dado para escrita no banco de registradores
--=======================================================================					 
breg_data_mux: mux_2 
		generic map (SIZE => 32)
		port map (in0 => rULA_out_v,
					 in1 => rdmout_v,
					 sel => mem_reg_s,
					 m_out => regdata_v);
		
--=======================================================================
-- Banco de registradores
--=======================================================================		
bcoreg: breg 
		port map (
			clk		=> clk,
			enable	=> reg_wr_s,
			idxA		=> rs_field_v,
			idxB		=> rt_field_v,
			idxwr		=> iwreg_v,
			data_in	=> regdata_v,
			regA 		=> regAin_v,
			regB 		=> regBin_v
			);
			
--=======================================================================
-- Registrador A
--=======================================================================			
rgA:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => regAin_v, clk => clk, sr_out => regA_v);

--=======================================================================
-- Registrador B
--=======================================================================
rgB:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => regBin_v, clk => clk, sr_out => regB_v);
		
--=======================================================================
-- Modulo de extensao de sinal: 16 para 32 bits
--=======================================================================
sgnx:	extsgn
		port map (
			input => imm16_field_v, logic_ext => logic_ext_s, output => imm32_v
		);

--=======================================================================
-- Modulo de extensao de bits: 5 para 32 bits
--=======================================================================
bitx: extbits
		port map(
			input => sht_field_v, output => shamt_ext_v
		);
		
--=======================================================================
-- Mux para selecao da entrada do mux de cima da ULA
--=======================================================================		
mux_A: mux_2
		port map (
			in0 	=> regA_v, 
			in1 	=> shamt_ext_v,
			sel 	=> shamt_sel_s,
			m_out => reg_shamt_sel_v
		);

--=======================================================================
-- Mux para selecao da entrada de cima da ula
--=======================================================================		
mux_ulaA: mux_2
		port map (
			in0 	=> pcout_v, 
			in1 	=> reg_shamt_sel_v,
			sel 	=> sel_aluA_s,
			m_out => aluA_v
		);
		
--=======================================================================
-- Mux para selecao da entrada de baixo da ULA
--=======================================================================				
mux_ulaB: mux_4
		port map (
			in0 	=> regB_v, 
			in1 	=> INC_PC,
			in2	=> imm32_v,
			in3	=> imm32_x4_v,
			sel 	=> sel_aluB_v,
			m_out => aluB_v
		);	

--=======================================================================
-- Modulo de controle da ULA
--=======================================================================		
actr: alu_ctr
			port map (
				op_alu 	=> alu_op_v,
				funct	 	=> func_field_v,
				mux_a_ctr => shamt_sel_s,
				alu_ctr	=> alu_sel_v
			);

--=======================================================================
-- ULA
--=======================================================================		
alu:	ulamips 
		port map (
			aluctl => alu_sel_v,
			A 		 => aluA_v,
			B		 => aluB_v,
			aluout => alu_out_v,
			zero	 => zero_s
			--ovfl 	 => ovfl_s
		);
		
--=======================================================================
-- Registrador que armazena a saida da ULA
--=======================================================================			
regULA:	regbuf 
		generic map (SIZE => 32)
		port map (sr_in => alu_out_v, clk => clk, sr_out => rULA_out_v);		
		
--=======================================================================
-- Mux para selecao da entrada do PC
--=======================================================================		
mux_pc: mux_3
		port map (
			in0 	=> alu_out_v,
			in1 	=> rULA_out_v,
			in2   => pcjump_v,
			sel 	=> org_pc_v,
			m_out => pcin_v
			);
			
--=======================================================================
-- Unidade de Controle do MIPS
--=======================================================================		
ctr_mips: mips_control
		port map (	
			clk 		=> clk,
			rst 		=> rst,
			opcode 	=> op_field_v,	
			wr_ir		=> ir_wr_s,
			wr_pc		=> jump_s,
			wr_mem	=> mem_wr_s,
			is_beq	=> is_beq_s,
			is_bne	=> is_bne_s,
			s_datareg => mem_reg_s,
			op_alu	=> alu_op_v,
			s_mem_add => sel_end_mem_s,
			s_PCin	=> org_pc_v,
			s_aluAin => sel_aluA_s,
			s_aluBin => sel_aluB_v,
			wr_breg	=> reg_wr_s,
			s_reg_add => reg_dst_s,
			logic_ext => logic_ext_s,
			is_unsigned_s => is_unsigned_s,
			mdr_mux_sel_v => mdr_mux_sel_v
		);
--=======================================================================
-- Mux para seleção de byte
--=======================================================================
mux_byte: mux8_4
	port map(
		in0 => byte0_mem_v, 
		in1 => byte1_mem_v,  
		in2 => byte2_mem_v,  
		in3 => byte3_mem_v, 
		sel => rULA_out_v(1 downto 0),
		m_out => byte_out_v
	);
	
--=======================================================================
-- Mux para seleção de byte
--=======================================================================
sgnext8: extsgn8
	port map(
		input => byte_out_v,
		logic_ext => is_unsigned_s,
		output => byte_ext_v
	);
	
--=======================================================================
-- Mux para seleção de halfword
--=======================================================================

mux_half: mux16_2
	port map(
		in0		=> half0_mem_v,
		in1	   => half1_mem_v,
		sel		=> rULA_out_v(1),
		m_out		=> half_out_v
	);

--=======================================================================
-- Mux para seleção de byte
--=======================================================================
sgnext16: extsgn
	port map(
		input => half_out_v,
		logic_ext => is_unsigned_s,
		output => half_ext_v
	);
	
--=======================================================================
-- Mux para seleção de qual operação de load usar
--=======================================================================
mux_mdr: mux_3
	port map(
		in0		=> memout_v,
		in1	   => half_ext_v,
		in2		=> byte_ext_v,
		sel		=> mdr_mux_sel_v,
		m_out		=> mdr_in_v
	);
	
end architecture;

