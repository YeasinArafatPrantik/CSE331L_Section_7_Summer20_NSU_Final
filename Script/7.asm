.MODEL SMALL
.STACK 100H
.CODE


.DATA
PROMPT DB
.CODE
DATA SEGMENT
    NUM1 DB?
    NUM2 DB?
    MSG1 DB 10,13
    MSG2 DB 10,13
    MSG3 DB 10,13
ENDS
CODE SEGMEBT
ASUUME :DS DATA CS: CODE
START:
MOV AX, DATA
MOV DS,AX
LEA DX,MSG1
MOV AH,9
INT 21H
MOV AH,1
INT V21H
MOV NUM2,AL
LEA DX,MSG3
MOV AH,9
INT 21H
MOV AL,NUM1
CMP AL,NUM2
JG SECOND
FIRST: MOV AH,2
MOV DL,NUM1
INT 21H
JMP EXIT SECOND:
MOV AH,2
MOV DL,NUM2
INT 21H


   
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    