// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.


// @R2
// M=0; // reset the value of R2 to zero 
// // check for zero in the Program
@R2
M=0

@R0
D=M
@SetZero
D;JEQ

@R1
D=M
@SetZero
D;JEQ


(Add)
    @R1
    D=M
    @R2
    M=M+D
    @R0     // Retrive  R0 value 
    D=M
    D=D-1     // decrease The value of R0
    M=D ;   //store it back into R0 
    @End
    D;JEQ
    @Add
    0;JEQ
    
(End)
0;JEQ
(SetZero)
@End
0;JEQ
