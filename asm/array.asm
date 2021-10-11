section .text
    global _start
_start:
    mov eax,3       ; Number of bytes to be summed
    mov ebx,0       ; Where the product is stored
    mov ecx,x       ; point to the array

top:
    add ebx, [ecx]  ; Add the direct content of ecx with ebx
    add ecx,1       ; move pointer to the next element
    dec eax         ; decrement counter
    jnz top         ; if counter != 0, loop again

done:
    add ebx,'0'
    mov [sum],ebx ; store the value of ebx into location of sum

display:
    mov edx,1     ; message length
    mov ecx,sum   ; sum to be printed
    mov ebx,1     ; stdout
    mov eax,4     ; sys_write
    int 80h

    mov eax,1     ;sys_exit
    int 80h

section .data
global x
x:
    db 2
    db 4
    db 3

sum:
    db 0
