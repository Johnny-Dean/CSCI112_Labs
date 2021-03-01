; Example assembly language program -- adds 158 to number in memory
; Author:  R. Detmer
; Date:    6/2013

.586
.MODEL FLAT

.STACK  4096            ; reserve 4096-byte stack

.DATA                   ; reserve storage for data
 dval DWORD -1 ; initialize dval with -1
 bval BYTE -10 ; initalize bval as byte size with -10
 tval DWORD -1 ; initialize tval as double word with -1

.CODE                           ; start of main program code
main    PROC

        ; Question One
        mov eax, 000001A2h
        mov eax, 100    
        
        ; Question Two
        mov eax, 1234ABh
        mov AH, 0

        ; Question Three
        mov edx, 0FF754C2Eh 
        mov edx, dval    
        
        ; Question Four
        mov ecx, 00003A4Ch 
        mov dval, -100     
        mov dval, ecx     

        ; Question Five
        mov ebx, 00000000h 
        mov ebx, 128

        ; Question Six
        mov ecx, 1A2B3C4Dh 
        mov CL, bval 

        ; Question Seven 
        mov eax, 1A2B3C4Dh 
        xchg tval, eax 

        ; Question Eight
        mov dx, 0FF75h
        xchg dl, dh

        ; Question Nine
        mov eax, 12BC9A78h
        mov edx, 56DE34F0h
        xchg eax, edx

        ; Question Ten
        mov ebx, 12345678h
        mov edx, 9ABCDEF0h
        xchg bx, dx

      
        mov   eax, 0            ; exit with return code 0
        ret
main    ENDP

END                             ; end of source code
