

global _start 
section .text
_start: 

	; we just want to load the value 1 so we just load al with 1 but the remaining 34 null bits turn out to be zero 
	; so we need to put indirectly zero to eax registers 
	
	xor eax, eax 
	mov al, 1
	xor ebx, ebx
	mov bl, 10
	int 0x80

