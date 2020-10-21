%include 'asm.s'

section .text
global main:

main:
  call read_hex
  mov edx,eax
  call read_hex
  add eax,edx
  add eax,eax
  inc eax

  call print_eax
  mov eax,1
  int 80h
