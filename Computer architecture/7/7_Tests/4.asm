sum:
	addi $sp,$s0,-4
	sw $ra,0($sp)
	bge $a1,$a0,else
	li $t0,0
	
	loop:
		bgt $t0,$a2,end
		add $a0,$a0,$t0
		addi $t0,$t0,1
	j loop
	
	else:
		jal func2
		move $v0,$a0
		jr $ra
end:
	move $v0,$a0
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra
func2:
	li $t0,2
	mul $t1,$a2,$t0
	sub $v0,$t1,$a0
	jr $ra