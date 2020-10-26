%include 'asm.s'

section .text
  global main

main:
  call read_hex
  mov ecx,eax
  mov esi,0
l1:
  mov eax,ecx
  mul eax
  add esi,eax
  loop l1

  mov eax,esi
  call print_eax
  mov eax,1
  int 80h
