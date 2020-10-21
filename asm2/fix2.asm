%include 'asm.s'
section .text
  global main:
main:
  call read_hex
  mov ebx,eax
  call read_hex
  mov ecx,eax
  call read_hex

  mult ecx
  add eax,ebx

  mov eax,1
  int 80h
