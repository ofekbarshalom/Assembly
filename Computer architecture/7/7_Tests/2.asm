main:
	addi $s0, $0,0  #sum
	addi $t0, $0,1  #A
	addi $t1, $0,1  #B
	addi $t2, $0,1  #C
	addi $t3, $0,11 #stopCon
	addi $t4, $0,1  #i
loop:
	beq $t3,$t4,end
	mul $t5,$t0,$t1
	mul $t6,$t5,$t2
	add $s0,$t6,$s0
	addi $t0,$t0,2
	mul $t1,$t1,4
	mul $t2,$t2,-1
	addi $t4,$t4,1
	j loop	
end: