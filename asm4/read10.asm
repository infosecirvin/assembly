%include 'asm.s'

section .text
  global main

main:
mov ecx,8

l1:
  mov eax,ecx
  mul ecx
  mov esi,eax
  mul ecx
  mov edi,eax
  mov eax,esi
  mov esi,18d
  mul esi
  sub edi,eax
  mov eax,ecx
  mov ebx,101d
  mul ebx
  add edi,eax
  sub edi,168d
  cmp edi,0
  jnz skip_print
  mov eax,ecx
  call print_eax
skip_print:
  loop l1

  mov eax,1
  int 80h
