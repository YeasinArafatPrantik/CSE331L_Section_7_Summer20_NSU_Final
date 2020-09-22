.MODEL SMALL
.STACK 100H
.CODE


.DATA
PROMPT DB
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA DS ,AX
    LEA DS,PROMPT_1
    MOV AH,9
    INT 21H
    MOV AH,1
    INT 21H
    MOV BL,AL
    LEA DX_PROMPT_2
    MOV AH,9
    INT 21H
    TEWAT BL,01H
    JNE@ODD
    MOV AH,2
    MOV DL,\"E"\
    INT 21H
    JMP@EXIT
    @ODD:
    MOV AH,2
    MOV DL,\"O"\
     INT 21H
     
    
   
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    