

global _start
 
section .text

_start: 

	; print Hello world on screen 
	; now  remove all instruction which cause null character 

	xor eax, eax
	mov al, 0x4
	
	xor ebx, ebx
	mov bl, 0x1

	mov ecx, message 

	xor edx, edx
	mov dl, 13

	int 0x80	

	; exiting gracefully 

	xor eax, eax
	mov al, 0x1
	
	xor ebx, ebx
	int 0x80
	
	; 0xA create a next line 
	
	message: db "Hello World!", 0xA 

