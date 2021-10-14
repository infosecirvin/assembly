%include 'asm.s'

section .text
  global main

main:
  call read_hex
  mov ecx,eax
  call read_hex
  sub eax,ecx
  jnz l1

  mov eax,1
  call print_eax
  jmp l2

l1:
  mov eax,0
  call print_eax

l2:
  mov eax,1
  int 80h
