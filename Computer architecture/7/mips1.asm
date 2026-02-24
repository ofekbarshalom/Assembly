li $s6, 324161421 # Load the ID into $s6

andi $t0, $s6, 0xF # Extract the LSB of the ID

# Shift the LSB in $t0 left by 28 positions to make it the MSB, and store in $t3
sll $t3, $t0, 28 