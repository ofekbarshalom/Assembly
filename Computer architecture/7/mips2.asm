main:
	xor $s0, $0, $0 # sum=0a
	addi $s1, $0, 1 # i=1
	addi $s2, $0, 11 # stop condition
	ori $t1, $0, 1 # A[0]=1
	ori $t2, $0, 1 # B[0]=1
	ori $t3, $0, 1 # C[0]=1
	li $t4, -1 # get the next element in B by mult by -1
	addi $t5, $0, 4 # get the next element in C by mult by 4
	ori $t6, $0, 0 # saving A[i]*B[i]*C[i]
LOOP:
	beq $s2, $s1, end # end loop condition	 			 	 	
	mul $t6, $t1, $t2 # t6 = A[i]*B[i]
	mul $t6, $t6, $t3 # t6 = t6 * C[i]
	add $s0, $s0, $t6 # sum = sum + t6
	addi $t1, $t1, 2  # A[i+1] = A[i]+2
	mul $t2, $t2, $t5 # A[i+1] = A[i]*4
	mul $t3, $t3, $t4 # A[i+1] = A[i]*-1
	addi $s1, $s1, 1  # i=i+1
	j LOOP # jump back to LOOP
end:		 	 			 	 			 	 			 	 			 	 			 	 	