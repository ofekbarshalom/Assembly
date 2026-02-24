something:
	addi $sp,$sp,-12
	sw $ra,8($sp)
	sw $a0,4($sp)
	sw $a1,0($sp)
	
	addi $t0, $0,1
	ble $a0,$t0,stop
	ble $a1,$t0,stop
	
	addi $a0,$a0,-1
	addi $a1,$a1,-2
	jal something
	addi $v0,$v0,3
	
	j end
	
stop:
	lw $a0, 4($sp)
	lw $a1, 0($sp)
	bge $a0,$a1,set_a
	move $v0,$a1
	j end
set_a:
	move $v0, $a0
end:
	lw $a1,0($sp)
	lw $a0,4($sp)
	lw $ra,8($sp)
	addi $sp,$sp,12
	jr $ra
	