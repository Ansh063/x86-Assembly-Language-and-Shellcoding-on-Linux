

global _start 

section .text 

HelloWorldProcedure: 

	; print Hello World using syscall 
	
	mov eax, 0x4
	mov ebx, 1
	mov ecx, message
	mov edx, mlen

	int 0x80
	ret ; signifies end of procedure 

_start : 
	
	mov ecx, 0x10
	
PrintHelloWorld: 
	
	; as soon as the call command hit the address of the next instruction is pushed on the stack and the
	; ret instruction pop that value from the stack back into the eip register so that the CPU knows that this is the 
	; next instruction to execute 

	push ecx
	call HelloWorldProcedure
	pop ecx
	loop PrintHelloWorld 

	mov eax, 0x1
	mov ebx, 0x0
	int 0x80 

section .data 

	message: db "Hello World !"
	mlen equ $-message 
	
