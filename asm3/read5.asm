%include 'asm.s'

section .text
  global main

main:
  call read_hex
  mov ecx,1

lb1:
  add ecx,ecx
  dec eax
  jnz lb1

  mov eax,ecx
  call print_eax
  mov eax,1
  int 80h
