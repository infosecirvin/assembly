%include 'asm.s'

section .text
  global main

main:
  call read_hex
  mov ecx,eax
  call read_hex
  mov edx,eax
  call read_hex
  mov esi,eax
  call read_hex
  add eax,ecx
  add edx,esi
  sub eax,edx

  jnz g1

  mov eax,1
  call print_eax
  jmp g2

g1:
  mov eax,0
  call print_eax
g2:
  mov eax,1
  int 80h
