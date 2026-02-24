something:
	addi $sp, $sp, -12 # Allocates 12 bytes of space on the stack.
	sw $ra, 8($sp) # Save return address on the top of the stack
	sw $a0, 4($sp) # Save 'a' on the stack
	sw $a1, 0($sp) # Save 'b' on the stack
	
	# Stop condition
	ble $a0, 1, stop_condition # If a<=1 go to stop_condition
	ble $a1, 1, stop_condition # If b<=1 go to stop_condition
	
	# Recursive case 
	addi $a0, $a0, -1 # a=a-1
	addi $a1, $a1, -2 # b=b-1
	jal something     # Recursive call to the function
	addi $v0, $v0, 3  # add 3 to the result of the function call
	
	j end
	
stop_condition:
	lw $a0, 4($sp) # get 'a' from the stack
	lw $a1, 0($sp) # get 'b' from the stack
	bge $a0, $a1, set_a # If a>=b go to set_a
	move $v0, $a1 # else set v0 to b
	j end # jump to end
set_a:
	move $v0, $a0
end:
	lw $ra, 8($sp) # get the return address from the stack
	lw $a0, 4($sp) # get 'a' from the stack
	lw $a1, 0($sp) # get 'b' from the stack
	addi $sp, $sp, 12 # get the stack pointer
	jr $ra # return to caller