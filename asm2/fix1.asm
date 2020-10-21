%include 'asm.s'
section .text
  global main:
main:
  call read_hex
  mov esi,al
  call read_hex
  add eax,esi
  call print_eax
  mov eax,1
  int 80h
