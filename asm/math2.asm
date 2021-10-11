section .text
	global _start

_start:
  mov ecx,3
  inc ecx
  inc ecx
  dec ecx

	inc byte [value]
	mov ecx,[value]

	dec byte [value]
	mov ecx,[value]

	mov eax,1
	int 0x80

section .data
value db 7
