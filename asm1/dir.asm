section .text
    global _start
_start:
    mov edx,1
    mov ecx,choice
    mov ebx,1
    mov eax,4
    int 0x80

    mov eax, 1
    int 0x80

section .data
choice DB 0x79
