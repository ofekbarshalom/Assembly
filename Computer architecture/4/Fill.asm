// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

(LOOP)
	@8191 // The number of registers for the screen
	D=A

	@R1
	M=D

	@KBD
	D=M

	@PRESSLOOP // if a key is pressed send to the prees loop
	D;JGT 

	@NOPRESSLOOP //if a key is not pressed send to the not pressed loop
	0;JMP

(PRESSLOOP) // sends to the print loop with -1 to make the screen black 
	@R0
	M=-1

	@PRINTLOOP
	0;JMP

(NOPRESSLOOP) // sends to the print loop with 0 to make the screen white 
	@R0
	M=0
	
	@PRINTLOOP
	0;JMP

(PRINTLOOP) // colors the screen in the color he got from the loops on top
	@R1
	D=M

	@POINTER
	M=D

	@SCREEN
	D=A

	@POINTER
	M=M+D

	@R0
	D=M

	@POINTER
	A=M
	M=D

	@R1
	D=M-1
	M=D

	@PRINTLOOP
	D;JGE

@LOOP
0;JMP // infinte loop