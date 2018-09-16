.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
     INT 21H
     
     MOV CH, AL
     
     ADD BL,CH
     
     MOV AH,2
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     MOV AH,2
     SUB BL,48
     MOV DL,BL
     INT 21H
     
     
     MOV AH,4CH
     INT 21H
     MAIN ENDP
END MAIN