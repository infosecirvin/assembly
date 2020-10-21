%include 'asm.s'
section .text
  global main:
main:
 call read_hex
 add eax,100j
 call print_eax
 mov eax,1
 int 80h
