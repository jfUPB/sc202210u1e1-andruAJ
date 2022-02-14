//AndresJuanGiraldoVargas
//000393367


(CICLO)
@SCREEN
D=A
@0
M=D

(TECLADO)

@KBD 
D=M 
@70
D=D-A
@FILL
D;JEQ
@CLEAN
D;JEQ
//Mantiene el ciclo en caso de que no se hunda nada
@TECLADO
0;JMP

(FILL)
@1
M=-1
@CHANGE
0;JMP

(CLEAN)
@1
M=0
@CHANGE
0;JMP

(CHANGE)
@1
D=M
@0
A=M
M=D
@0
D=M+1
@KBD
D=A-D
@0
M=M+1
A=M
@CHANGE
D;JGT

@CICLO
0;JMP