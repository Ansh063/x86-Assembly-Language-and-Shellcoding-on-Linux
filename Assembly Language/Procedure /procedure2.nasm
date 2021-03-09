

global _start

section .text

HelloWorldProc:

	; prologue : Storing the current frame pointer on the stack  moving the value of esp into ebp

	push ebp
	mov ebp, esp

	; Print hello world using syscall 
 
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message 
	mov edx, mlen 
	
 	int 0x80

	; Epilogue : moving the value of ebp into esp and pop ebp  
	; There two instruction can be written as leave also  	
	
	; mov esp, ebp
	; pop ebp
	
	leave 	
	ret    ; signifies end of the procedure 

_start:

	mov ecx, 0x10
	
PrintHelloWorld: 
	
	; Preserve register and flags  
	
	pushad
	pushfd

	call HelloWorldProc

	; restore register and flags  

	popad
	popfd

	loop PrintHelloWorld

	mov eax, 1
	mov ebx, 10
	int 0x80

section .data 

	message: db "Hello World !"
	mlen	equ 	$-message 
	  

