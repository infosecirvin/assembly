section .data
    userMsg db 'Please enter a number: '
    lenUserMsg equ $-userMsg
    dispMsg db 'You entered: '
    lenDispMsg equ $-dispMsg

section .bss ; Uninitialized data
    num resb 5

section .text
    global _start

_start:
    mov eax,4 ; User's input
    mov ebx,1
    mov ecx,userMsg
    mov edx,lenUserMsg
    int 80h

    mov eax,3 ; Read and store user input
    mov ebx,2
    mov ecx,num
    mov edx,5 ; 5 bytes (numberic)
    int 80h

    mov eax,4 ; Output 'You entered'
    mov ebx,1
    mov ecx,dispMsg
    mov edx,lenDispMsg
    int 80h

    mov eax,4 ; Output the number entered
    mov ebx,1
    mov ecx,num
    mov edx,5
    int 80h

    mov eax,1 ; Exit
    mov ebx,0
    int 80h
