%include 'asm.s'

section .text
  global main

main:
  call read_hex
  mov esi,eax
  mov edx,0

loop:
  call read_hex
  cmp eax,edx
  jbe eax_is_smaller
  mov edx,eax
eax_is_smaller:
  dec esi
  jnz loop

  mov eax,edx
  call print_eax
  mov eax,1
  int 80h
