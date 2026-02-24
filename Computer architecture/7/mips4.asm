# a = $a0
# b = $a1
# c = $a2
# result in $v0
sum:
	bge $a0, $a1, else          # if a<b go to else
	li $t0, 0                   # $t0 = 0 (i=0)
	
	Loop:
		bgt $t0, $a2, end   # if i>c end loop
		add $a0, $a0,$t0    # a += i
		addi $t0, $t0, 1    # i++
	j Loop
	
	else:
		move $a3, $a0       # move $a0 to $a3 for backup
		move $a1, $a2       # set $a1 as $a2 (c) for func2 
		jal func2           # send to func2
		move $a0, $v0       # get result from func2
		j end
	end:
		move $v0, $a0       # return a
		jr $ra              
	
# a = $a0
# c = $a1
# result in $v0

func2:
	li $t0, 2 
	mul $t1, $a1, $t0 # t1 = 2*c
	sub $v0, $t1, $a0 # result = 2*c-a
	jr $ra 