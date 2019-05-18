; Taken from Assembly Language Step-By-Step - Programming with Linux 3rd edition
; Look at page 142 (Chapter 5)

SECTION .data; Section containing initialized data

EatMsg: db "Eat at Joe's!", 10
EatLen: equ $ - EatMsg

SECTION .bss; Section containing uninitialized data

SECTION .text; Section containing code

global _start; Linker needs this to find the entry point!

_start:
	nop; This no-op keeps gdb happy (see text)
	mov eax,4       ; Specify sys_write syscall
	mov ebx,1       ; Specify File Descriptor 1: Standard Output
	mov ecx,EatMsg  ; Pass offset of the message
	mov edx,EatLen  ; Pass the length of the message<Paste>
	int 80H; Make syscall to output the text to stdout

	mov eax,1       ; Specify Exit syscall
	mov ebx,0       ; Return a code of zero
	int 80H; Make syscall to terminate the program
