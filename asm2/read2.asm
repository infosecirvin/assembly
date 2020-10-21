%include 'asm.s'
section .text
  global main:

main:
  call read_hex
  mul eax
  mov esi,eax

  call read_hex
  mul eax
  sub esi,eax
  mov eax,esi

  call print_eax
  mov eax,1
  int 80h
