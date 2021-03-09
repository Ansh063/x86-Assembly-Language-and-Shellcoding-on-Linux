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


section .data 
	
	var1: db 0xAA
	var2: db 0xBB, 0xCC, 0xDD
	var3: dw 0xEE
	var4: dd 0xAABBCCDD
	var5: dd 0x112233
	var6: TIMES 6 db 0xFF 
	
	message: db "Hello World!"
	mlen  equ $-message

section .bss

	var7: resb 100
	var8: resw 20  


