.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 'First sentence $'
MSG2 DB 'Second sentence $'
.CODE

MAIN PROC
    
      MOV AX,@DATA ;Data segment
      MOV DS,AX  
      
      LEA DX,MSG1
      MOV AH,9
      INT 21H
      
      MOV AH,2
      MOV DL,0AH
      INT 21H
      MOV DL,0DH
      INT 21H
      
      LEA DX,MSG2
      MOV AH,9
      INT 21H
      
      
      MOV AH,4CH
      INT 21H
      MAIN ENDP
END MAIN