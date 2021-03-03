; Author:  Johnny Palacio
; Date:    3/3/2021

.586
.MODEL FLAT

.STACK  4096            ; reserve 4096-byte stack

.DATA                   ; reserve storage for 
wordOp WORD -100
.CODE                           ; start of main program code
main    PROC
        ;Question One
        add ax, wordOp
        ;Question Two
        sub dl, ch
        ;Question Three
        inc ebx
        ;Question Four
        dec al
        ;Question Five
        neg eax
        ;Question Six
        mov ebx, 0FFFFFF75h
        mov ecx, 000001A2h
        add ebx, ecx
        ;Question Seven
        mov ebx, 0FFFFFF75h
        mov ecx, 000001A2h
        sub ebx, ecx
        ;Question Eight
        mov cx, 031Ah
        inc cx
        ;Question Nine
        mov eax, 00000001
        dec eax
        ;Question Ten
        mov ebx, 0FFFFFFFFh
        neg ebx
        mov   eax, 0            ; exit with return code 0
        ret
main    ENDP

END                             ; end of source code
