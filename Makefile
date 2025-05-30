all: os-image

boot.o: boot.asm
	nasm -f bin boot.asm -o boot.o

kernel.o: kernel.c
	gcc -m32 -ffreestanding -c kernel.c -o kernel.o

kernel.bin: kernel.o linker.ld
	ld -m elf_i386 -T linker.ld -o kernel.bin kernel.o

os-image: boot.o kernel.bin
	cat boot.o kernel.bin > os-image.bin

run: os-image
	qemu-system-i386 -drive file=os-image.bin,format=raw,if=floppy

clean:
	rm -f *.o *.bin
