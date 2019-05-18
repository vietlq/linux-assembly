SECTION .data ; Section containing initialised data

EatMsg: db "Eat at Felix's!", 10
EatLen: equ $ - EatMsg

SECTION .bss  ; Section containing uninitialised data

SECTION .text ; Section containing code

global _start ; Linker needs this to find the entry point!

_start:
	nop             ; This keeps GDB happy
	mov rax, 1      ; Specify sys_write syscall per https://filippo.io/linux-syscall-table/
	mov rdi, 1      ; Specify file descriptor 1 - STDOUT
	mov rsi, EatMsg ; Pass offset of the message
	mov rdx, EatLen ; Pass the length of the message
	syscall         ; Make syscall to output the text to STDOUT
	
	mov rax, 60     ; Specify exit syscall per https://filippo.io/linux-syscall-table/
	mov rdi, 0      ; Specify exit code 0
	syscall         ; Invoke the syscall specified to exit(0)
