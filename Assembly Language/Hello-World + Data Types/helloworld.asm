; this is used for comments 
; helloword.asm
; Author : Ansh Goyal 
; To create a text section used section .text 
; initialized data is to be stored in section .data 
; variable is message  
; db is used to create a bit of stream for allocation of data can be 1 or many 
; We have to give the entry point of exam using _start


global _start 

section .text 

_start: 
	; Print Hello world on the screen 

	mov eax, 0x4
	mov ebx, 0x1 
	mov ecx, message
	mov edx, mlen 
	int 0x80

	; To exit the program gracefully 
	
	mov eax, 0x1
	mov ebx, 0x5
	int 0x80 ; 


section.data 

	message: db "Hello World!"
	mlen  equ $-message


