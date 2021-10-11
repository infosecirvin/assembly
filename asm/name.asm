section .text
    global _start
_start:
    mov edx,9
    mov ecx,name
    mov ebx,1
    mov eax,4
    int 0x80

    mov [name], dword 'Ivy'

    mov edx,4
    mov ecx,name
    mov ebx,1
    mov eax,4
    int 0x80

    mov eax,1
    int 0x80

section .data
name db 'Two Face '
