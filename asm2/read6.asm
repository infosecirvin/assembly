%include 'asm.s'

section .text
  global main

main:
  call read_hex
  mov ecx,eax
  call read_hex
  sub eax,ecx
  jc b1

s1:
  mov eax,0
  call print_eax
  jmp c1

b1:
  mov eax,1
  call print_eax

c1:
  mov eax,1
  int 80h
