.MODEL SMALL
.STACK 100H
.CODE


MAIN PROC
   MOV  AX.@DATA
   MOV DX.AX
   
   LEA DX. PROMPT_1
   MOV AX. 9
   INT 21H
   MOV AH. 1
   INT 21H
   MOV BL.AL
    MOV  AH. 2
     MOV DL. ODH
     INT 21H
      MOV DL. OAH
      INT 21H
      LEA DX.PROMPT_2
      MOV AH. 9
      INT 21H
      SUB BL.20H
       MOV  AH.2
        MOV  DL.BL
        INT 21H
        
   
   
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    