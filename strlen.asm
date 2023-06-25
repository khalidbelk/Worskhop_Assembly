BITS 64

SECTION .text
global my_strlen

; my_strlen(str) 		First parameter (str)
; my_strlen(rdi)		goes to the RDI register

my_strlen:
	xor rax, rax        ; set RAX register (used as counter) to 0
    jmp loop            ; jump to the loop

loop:
	cmp BYTE [rdi], 0   ; compare if the char is equal to 0 (end of string)
	je stop             ; if yes jump to stop
	inc rdi             ; go to the next char
	inc rax             ; increment the counter by 1
	jmp loop            ; re-jump to the loop

stop:
	ret                 ; return (end of the function, will return RAX / the counter)


; WARNING - THIS IS FOR EDUCATIONAL PURPOSES ONLY, I am not responsible or liable for any misuse
; or unauthorized copying of this code for any purpose.