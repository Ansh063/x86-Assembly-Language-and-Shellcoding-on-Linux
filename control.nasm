

global _start 

section .text
_start: 

	jmp Begin

NeverExecute : 
	
	mov eax, 0x10
	xor ebx, ebx
Begin: 
	
	mov eax, 0x5

PrintHW: 
	
	; Note We are using eax in both the Begin and in writing the hello world this will overwriting our counter 
	; to maintain state : there are multiple ways but the simplest one is stack 
	; we push the value of eax in stack and after printing hello world we pop back eax and decrement it by one

	push eax
	
	; Print Hello world using write syscall 

	mov eax, 0x4 
	mov ebx, 1
	mov ecx, message 
	mov edx, mlen 
	int 0x80

	pop eax
	dec eax
	jnz PrintHW

	mov eax, 0x1
	mov ebx, 0xa
	int 0x80 
	
section .data 
	
	message: db "Hello World ! "
	mlen equ $-message  
	
   
