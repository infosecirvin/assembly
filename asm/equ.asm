section .text
    global _start

_start:
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg1
    mov edx, len1
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg2
    mov edx, len2
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg3
    mov edx, len3
    int 0x80

    mov eax,SYS_EXIT
    int 0x80

section .data
SYS_EXIT equ 1
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1

msg1 db 'Hello, World!',0xA,0xD
len1 equ $ - msg1

msg2 db 'Welcome to ', 0xA,0xD
len2 equ $ - msg2

msg3 db 'Assembly programming :)'
len3 equ $- msg3
