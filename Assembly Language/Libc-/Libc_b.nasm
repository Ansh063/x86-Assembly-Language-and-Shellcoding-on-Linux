
; Program of Helloworld written using syscalls now using libc function calls 

extern printf
extern exit

global main 

section .text
main;
	
	push message 
	; push the message onto stack 
	
	call printf  
	; call the printf : printf only take the address of string 	

	add esp, 0x4 ; adjust the stack
	
	mov eax, 0xa
	call exit

section .data 
	
	message: db "Hello World !! ", 0xA, 0x00
	mlen	equ 	$-message
	
	
	
	
	

