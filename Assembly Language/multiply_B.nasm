

global _start 

section .text
_start:
	
	; mul by default multiply into eax register 
	; unsigned r/m8 multiplication 
	; mul bl : multiply bl into al 

	mov eax, 0x0
	mov al, 0x10
	mov bl, 0x2
	mul bl

	mov al, 0xFF
	mul bl 
	
	; unsigned r/m16 multiplication 

	mov eax, 0x0
	mov ebx, 0x0
	mov ax, 0x1122
	mov bx, 0x0002
	mul bx 

	mov ax, 0x1122
	mov bx, 0x1122
	mul bx
  
