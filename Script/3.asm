.MODEL SMALL
.STACK 100H
.CODE


.DATA
PROMPT DB
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    LEA DX,PROMPT
    MOV AH,9
    INT 21H
    MOV CX,26
    MOV AH,2
    MOV DL,122
    @LOOP:
    INT 21H
    DEC DL
    DEC DX
    JNZ@LOOP
    
        
   
   
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    