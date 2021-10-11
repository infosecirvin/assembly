section .text
    global _start

_start:
    mov ecx, len
    mov esi, s1
    mov edi, s2
    cld
    rep movsb

    mov edx,20
    mov ecx,s2
    mov ebx,1
    mov eax,4
    int 0x80

    mov eax,1
    int 0x80

section .data
s1 db 'Hello, world!', 0
len equ $-s1

section .bss
s2 resb 20
