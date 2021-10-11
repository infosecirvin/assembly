section .text
    global _start
_start:
    mov ecx,'4'
    sub ecx,'0'
    mov edx,'5'
    sub edx,'0'

    call sum
    mov [res],eax
    mov ecx,msg
    mov edx,len
    mov ebx,1
    mov eax,4
    int 80h

    mov ecx,res
    mov edx,1
    mov ebx,1
    mov eax,4
    int 80h

    mov eax,1
    int 80h

sum:
    mov eax,ecx
    add eax,edx
    add eax,'0'
    ret

section .data
msg db "The sum is ", 0xa,0xd
len equ $-msg

segment .bss
res resb 1
