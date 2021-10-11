section .text
	global _start

_start:
	mov edx,len
	mov ecx,msg
	mov ebx,1
	mov eax,4
	int 80h

	mov edx,9
	mov ecx,s2
	mov ebx,1
	mov eax,4
	int 80h

	mov eax,1
	int 80h

section .data
msg db 'Displaying 9 stars', 0xa
len equ $ - msg
s2 times 9 db '*'
