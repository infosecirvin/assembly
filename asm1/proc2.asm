section .text
    global _start
_start:
    call display
    mov eax,1
    int 80h
display:
    mov ecx,256
next:
    push ecx
    mov eax,4
    mov ebx,1
    mov ecx,achar
    mov edx,1
    int 80h

    pop ecx
    inc byte [achar]
    loop next
    ret

section .data
achar db '0'
