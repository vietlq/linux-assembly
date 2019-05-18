.PHONY: all clean build

all: build

build:
	nasm -f elf64 -g eatsyscall.asm
	ld eatsyscall.o -o eatsyscall.exe
	objdump -d eatsyscall.exe

clean:
	rm -f eatsyscall.exe eatsyscall.o
