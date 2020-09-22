.MODEL SMALL
.STACK 100H
.CODE


MAIN PROC
   .DATA
   PROMPT_1 DB
   PROMPT_2 DB ODH,OAH
   ILLEGAL DB ODH,OAH
   COUN DB?
   .CODE
    MAIN PROC
    
     MOV AX, @DATA
     MOV DS,AX
     LEA DX, PROMT_1
     MOV AH,9
     INT 21H
     JMP @START
     @START_1
     LEA DX,ILLEGAL
     MOV AH,9
     INT 21H
     @START:
     XOR BX,BX
     MOV COUNT,30H
     @START_2:
     MOV AH,1
     INT 21H
     CMP AL,ODH
     JNE @SKIP
     CMP COUNT ,30H
     JBE @START_1
     JMP @END
     @SKIP:
     CMP AL,\"A"\
     JB @DECIMAL
     CMP AL,\"F"\
     JA @START_1
     ADD AL,09H
     JMP @OK
     @DECIMAL:
     CMP AL,39H
     JB@STARTT_1
     CMP AL,39H
     JA@START_1
     @OK:
     INC COUNT
     AND AL,OFH
     MOV CL,4
     SHL,CL
     MOVV CX,4
     @LOOP_1
     SHL AL,1
     RCL BX,1
     LOOP@LOOP_1
     CMP COUNT,34H
     JE @END 
     JMP@START_2
     @END 
     LEA DX,PROMPT_2
     MOV AH,9
     INT 21H
     MOV CX,16
     MOV AH,2
     @LOOP_2
     SHL BX,1
     JC@ONE
     MOV DL,30H
     JMP @DISPLAY
     @ONE
     MOV DL,31H
     @DISPLAY
     INT 21H
     LOOP@LOOP_2
     
        
   
   
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    