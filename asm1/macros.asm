%macro write_string 2
    mov eax,4
    mov ebx,1
    mov ecx,%1
    mov edx,%2
    int 80h
%endmacro

section .text
global _start

_start:
write_string msg1,len1
write_string msg2,len2
write_string msg3,len3
mov eax,1
int 80h

section .data
msg1 db 'Hello, world!', 0xa,0xd
len1 equ $-msg1

msg2 db 'I am using macros.', 0xa,0xd
len2 equ $-msg2

msg3 db 'This makes life easier :) ',0xa,0xd
len3 equ $-msg3
