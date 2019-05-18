.PHONY: all clean build

all: build

build:
	nasm -f elf32 -g -F stabs eatsyscall.asm
	ld -m elf_i386 eatsyscall.o -o eatsyscall.exe
	objdump -d eatsyscall.exe

clean:
	rm -f eatsyscall.exe eatsyscall.o
