
global _start

section .text

_start: 

	; push the first null dword 
	xor eax, eax
	push eax
	
	; push the string in reveres order
	; /bin/sh 
	
	push 0x68732f2f
	push 0x6e69622f

	mov ebx, esp
	push eax
	
	mov edx, esp 
	
	push ebx
	mov ecx, esp 
	

	mov al, 11
	int 0x80  	
