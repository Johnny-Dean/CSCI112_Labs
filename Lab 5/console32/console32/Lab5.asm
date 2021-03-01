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
       
        mov eax, 000001A2h ; initialize before state
        mov eax, 100       ; exectuing instruction

        mov edx, 0FF754C2Eh ; initialize edx 

        mov edx, dval       ; move -1 into edx

        mov exc, 00003A4Ch ; initialize before state
        mov dval, -100     ; move -100 into our dval

        mov dval, exc      ; move exc into dval

        mov ebx, 00000000h ; fill ebx

        mov ebx, 128 ; move ebx to 128

        mov exc, 1A2B3C4Dh ; initalize before change

        mov cl, bval ; move bval into our c low

        mov eax, 1A2B3C4Dh ; initalize before change
        
        xchg tval, eax 

        mov dx, 0FF75j

        xchg dl, dh

        mov eax, 12BC9A78h
        mov edx, 56DE34F0h

        xchg eax, edx

        mov EBX 12345678h
        mov edx, 56DE34F0

        xchg eax, edx

        mov ebx, 12345678
        mov edx, 56DE34F0

        xchg bx, dx

        mov   eax, 0            ; exit with return code 0
        ret
main    ENDP

END                             ; end of source code
