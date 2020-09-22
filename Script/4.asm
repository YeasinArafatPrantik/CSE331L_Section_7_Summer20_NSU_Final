.MODEL SMALL
.STACK 100H
.CODE


.DATA
PROMPT DB
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA DX ,PROMPT_1
    MPOV AH,9
    INT21H
    MOV AL,38H
    MOV BL,AL
    MOV AH,2
    MOV DL,AL
    INT 21H
    LEA DX,PROMPT_2
    MOV AH,9
    INT21H
    ABD BL,OFH
    MOV CL,2
    SHR,BL,CL
    OR BL,CL
    OR BL,30H
    MOV AH,2
    MOV DL,BL
    INT 21H
    
   
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    