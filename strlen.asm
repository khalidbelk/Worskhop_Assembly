BITS 64

SECTION .text
global my_strlen

;my_strlen(str)
;my_strlen(rdi)

my_strlen:
	xor rax, rax
	;your code starts here ^_^

loop:


stop:
	ret
