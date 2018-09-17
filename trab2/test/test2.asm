# A[12] = h + A[8]

.data
	array: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 , 11, 12, 13
	h: .word 10
.text

	main:
		la $s0, array # Le ṕrimeira posição do array
		lw $t0, 32($s0) # le array[8] do array
		
		lw $t4, h # le o valor armazenado em h
		
		add $t1, $t0, $t4 # soma h + array[8]
		
		sw $t1, 48($s0) # guarda o valor array[12]
		
		lw $a0, 48($s0) # le array[12]
		li $v0, 1 # comando para printar o valor em $a0
		syscall # chamad do sistema para executar o comando em $v0