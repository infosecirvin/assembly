section .text
    global _start
_start:
    sub ah, ah
    mov al, '9'
    sub al, '3'
    aas
    or al, 30h
    mov [res], ax

    mov edx, len ; message length
    mov ecx, msg ; message to write
    mov ebx, 1   ; stdout
    mov eax, 4   ; sys_write
    int 80h

    mov edx, 1   ; message length
    mov ecx, res ; result from earlier math
    mov ebx, 1
    mov eax, 4
    int 80h

    mov eax, 1
    int 80h

section .data
msg db 'The Result is: ', 0xa
len equ $-msg

section .bss
res resb 1
