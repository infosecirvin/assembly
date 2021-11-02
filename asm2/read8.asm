%include 'asm.s'

section .text
global main

main:
  call read_hex
  mov esi,eax
  call read_hex
  mov edi,eax

  mov eax,esi
  cdq
  idiv edi

  call print_eax

mov eax,1
int 80h
