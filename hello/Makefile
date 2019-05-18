.PHONY: all clean build

all: build

build:
	nasm -f elf64 hello.asm
	ld hello.o -o hello.exe
	objdump -d hello.exe

clean:
	rm -f hello.o hello.exe
