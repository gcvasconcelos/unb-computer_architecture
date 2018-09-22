.data
word:	.word 0xFAFEF1F0

TAB: 	.asciiz "\t"
NL: 	.asciiz	"\n"
Label:	.asciiz "Teste"
l_ok:	.asciiz	" OK"
l_fail:	.asciiz	" FAIL"

.text

teste1:	la $t0, word	# Le palavra da memoria com Lw e compara com constante
	lw $t1, 0($t0)
	li $t2, 0xFAFEF1F0
	li $a1, 1
	beq $t1, $t2, t1_ok
	jal FAIL
	j teste2
t1_ok:	jal OK

teste2:	la $t0, word	# Le byte da memoria com lb e compara com constante
	lb $t1, 0($t0)  # Verifica extensao de sinal
	li $t2, 0xFFFFFFF0
	li $a1, 2
	beq $t1, $t2, t2_ok
	jal FAIL
	j teste3
t2_ok:	jal OK

teste3:	la $t0, word	# Le byte da memoria com lbu e compara com constante
	lbu $t1, 0($t0) # Verifica leitura sem sinal
	li $t2, 0x0F0
	li $a1, 3
	beq $t1, $t2, t3_ok
	jal FAIL
	j teste4
t3_ok:	jal OK

teste4:	la $t0, word	# Le meia palavra da memoria com lh e compara com constante
	lh $t1, 0($t0)  # Testa extensao de sinal
	li $t2, 0xFFFFF1F0
	li $a1, 4
	beq $t1, $t2, t4_ok
	jal FAIL
	j teste5
t4_ok:	jal OK

teste5:	la $t0, word	# Le meia palavra da memoria com lhu e compara com constante
	lhu $t1, 0($t0)	# Testa leitura sem sinal
	li $t2, 0x0F1F0
	li $a1, 5
	beq $t1, $t2, t5_ok
	jal FAIL
	j teste6
t5_ok:	jal OK

teste6:	lui $t1, 9	# testando LUI e SLL
	li $t2, 9
	sll $t2, $t2, 16
	li $a1, 6
	beq $t1, $t2, t6_ok
	jal FAIL
	j teste7 
t6_ok:	jal OK

teste7:	la $t0, word	# Altera valor na memoria, testa SW
	lw $t1, 0($t0)
	li $t2, 0xFAFEF1F0
	sw $t2, 0($t0) 
	lw $t3, 0($t0)
	li $a1, 7
	beq $t1, $t3, t7_ok
	jal FAIL
	j teste8
t7_ok:	jal OK

teste8:	la $t0, word	# Altera 1o byte na palavra, testa SB
	li $t1, 0xFAFEFFF0
	sw $t1, 0($t0)
	li $t1, 0xFAFEF1F0
	li $t2, 0xF1
	sb $t2, 1($t0)
	lw $t3, 0($t0)
	li $a1, 8
	beq $t1, $t3, t8_ok
	jal FAIL 
	j teste9
t8_ok:	jal  OK 

teste9:	la $t0, word	# Altera 16 bits superiores com LH
	li $t1, 0xFF00F1F0
	sw $t1, 0($t0)
	li $t1, 0xFAFEF1F0
	li $t2, 0xFAFE
	sh $t2, 2($t0)
	lw $t3, 0($t0)
	li $a1, 9
	beq $t1, $t3, t9_ok
	jal FAIL 
t9_ok:	jal OK 

teste10:		# Testa blez salto falha
	li $t1, 1
	li $a1, 10
	blez  $t1, t10_fail
	jal OK 
	j teste11
t10_fail:	
	jal FAIL 
	
teste11:		# Testa blez salto ocorre
	li $t1, -1
	li $a1, 11
	blez  $t1, t11_ok
	jal FAIL
	j teste12
t11_ok:	
	jal OK 
	
teste12:		# Testa bgtz salto falha
	li $t1, -5
	li $a1, 12
	bgtz  $t1, t12_nok
	jal OK
	j teste13
t12_nok:
	jal FAIL
	
teste13:		# Testa bgtz salto ocorre
	li $t1, 5
	li $a1, 13
	bgtz  $t1, t13_ok
	jal FAIL
	j teste14
t13_ok:
	jal OK 
	
	add $t1, $zero, $zero
	li  $a1, 14
teste14:		# Testa bgtz salto ocorre da primeira vez
	addi $t1, $t1, 5
	slti $t2, $t1, 8
	beq  $t2, 1, teste14
	beq  $t1, 5, t14_fail
	jal OK 
	j teste15
t14_fail:
	jal FAIL 
	
teste15:		# Testa SLTiu 
	li $t1, -1
	sltiu $t2,$t1,8
	li $a1, 15
	bne  $t2, 1, t15_ok
	jal FAIL 
	j teste16
t15_ok:
	jal OK 
	
teste16:
	li $t1, 5	# Testa ANDi
	andi $t1, 3
	li $a1, 16
	beq  $t1, 1, t16_ok
	jal FAIL 
	j teste17
t16_ok:
	jal OK 
	
teste17:		# Teste ORi
	li $t1, 4
	ori $t1,1
	li $a1, 17
	beq  $t1, 5, t17_ok
	jal FAIL 
	j teste18
t17_ok:
	jal OK 
	
teste18:		# Testa XORi
	li $t1, 7
	xori $t1,1
	li $a1, 18
	beq  $t1, 6, t18_ok
	jal FAIL 
	j teste19
t18_ok:
	jal OK 

teste19:
	li $t1, 0	# Testa JAL
	li $a1, 19
	jal t19
	bnez $t1 t19_ok 
	jal FAIL 
	j teste20
t19:	li $t1, 1
	jr $ra	
t19_ok:	jal OK 

teste20:
	li $t1, -2	# Testa ADD
	li $t2, 3
	add $t3, $t1, $t2
	li $a1, 20
	beq  $t3, 1, t20_ok
	jal FAIL
	j teste21
t20_ok:
	jal OK 
	
teste21:		# Testa ADDu
	li $t1, -2
	li $t2, 3
	addu $t3, $t1, $t2
	li $a1, 21
	beq  $t3, 1, t21_ok
	jal FAIL 
	j teste22
t21_ok:
	jal OK 
	
teste22:		# Testa SUB
	li $t1, -2
	li $t2, 3
	sub $t3, $t1, $t2
	li $a1, 22
	beq  $t3, -5, t22_ok
	jal FAIL 
	j teste23
t22_ok:
	jal OK 
	
teste23:		# Testa MULT
	li $t1, 0xF
	li $t2, 0x20000000
	mult $t1, $t2
	li $a1, 23
	mflo $t1
	mfhi $t2
	beq  $t1, 0xE0000000, t23_1
	jal FAIL 
	j teste24
t23_1:	beq  $t2, 0x1, t23_ok
	jal FAIL 
	j teste24
t23_ok:	jal OK 

teste24:		# Testa DIV
	li $t1, 0xF
	li $t2, 0x20000000
	div $t2, $t1
	li $a1, 24
	mflo $t1
	mfhi $t2
	beq  $t1, 0x02222222, t24_1
	jal FAIL 
	j teste25
t24_1:	beq  $t2, 0x2, t24_ok
	jal FAIL 
	j teste25
t24_ok:	jal OK 

teste25:		# Testa AND
	li $t1, 5
	li $t2, 3
	and $t3, $t1, $t2
	li $a1, 25
	beq  $t3, 1, t25_ok
	jal FAIL 
	j teste26
t25_ok:
	jal OK 
	
teste26:		# Testa OR
	li $t1, 4
	li $t2, 1
	or $t3, $t1, $t2
	li $a1, 26
	beq  $t3, 5, t26_ok
	jal FAIL
	j teste27
t26_ok:
	jal OK 
	
teste27:		# Testa XOR
	li $t1, 7
	li $t2, 1
	xor $t3, $t1, $t2
	li $a1, 27
	beq  $t3, 6, t27_ok
	jal FAIL 
	j teste28
t27_ok:
	jal OK 

teste28:		# Testa NOR
	li $t1, 0xFF0FF0FF
	li $t2, 0x0F0F000F
	nor $t3, $t1, $t2
	li $a1, 28
	beq  $t3, 0x00F00F00, t28_ok
	jal FAIL 
	j teste29
t28_ok:
	jal OK 
	
teste29:		# Testa SLT
	li $t1, -1
	li $t2, 8
	slt $t3,$t1,$t2
	li $a1, 29
	beq  $t3, 1, t29_ok
	jal FAIL
	j teste30
t29_ok:
	jal OK
	
teste30:		# Testa SRL
	li $t1, -1
	srl $t2,$t1,2
	li $a1, 30
	beq  $t2, 0x3FFFFFFF, t30_ok
	jal FAIL 
	j teste31
t30_ok:
	jal OK
	
teste31:		# Testa SRA
	li $t1, -1
	sra $t2,$t1,2
	li $a1, 31
	beq  $t2, 0xFFFFFFFF, t31_ok
	jal FAIL 
	j end
t31_ok:
	jal OK
	
end:	li $v0, 10	# colocando 10 em v0 e chamando
	syscall		# syscall encerra o programa


OK:	# $a1 eh o numero do teste
	la $a0, Label
	li $v0, 4
	syscall
	add $a0, $zero, $a1
	li $v0, 1
	syscall
	la $a0, l_ok
	li $v0, 4
	syscall
	la $a0, NL
	syscall
	jr $ra

FAIL:   # $a1 eh o numero do teste
	la $a0, Label
	li $v0, 4
	syscall

	add $a0, $zero, $a1
	li $v0, 1
	syscall

	la $a0, l_fail
	li $v0, 4
	syscall
	la $a0, NL
	syscall
	jr $ra

