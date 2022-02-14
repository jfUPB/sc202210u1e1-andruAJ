//AndresJuanGiraldoVargas
//000393367
//andres.giraldov@upb.edu.co

(CICLO)
@SCREEN
D=A
@0
M=D

(TECLADO)

@KBD                   
D=M                   //D=M 
@70                   //A=70
D=D-A                 //D=D-A
@FILL
D;JEQ                 //if (D=0) {FILL;}
@KBD                  
D=M                   //D=M
@67                   //A=67
D=D-A                 //D=D-A
@CLEAN
D;JEQ                //if (D=0) {CLEAN;}
//Mantiene el ciclo en caso de que no se hunda nada
@TECLADO             
0;JMP               //Esta parte sería el condicional del ciclo while que encerraía a la función

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
