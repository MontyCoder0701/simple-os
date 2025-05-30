# Simple x86 Bootloader + Kernel OS

This is a minimal operating system written from scratch. It includes:

- A bootloader in x86 assembly (`boot.asm`)
- A simple kernel in C (`kernel.c`)
- A `Makefile` to build and run everything using QEMU

## Requirements

To build and run this OS, you need:

- [nasm](https://www.nasm.us/) — assembler for x86
- [gcc](https://gcc.gnu.org/) — C compiler with 32-bit support
- [ld](https://sourceware.org/binutils/) — linker
- [qemu](https://www.qemu.org/) — emulator for testing
- [make](https://www.gnu.org/software/make/) — build tool

Install them on Ubuntu or WSL:

```bash
sudo apt update
sudo apt install build-essential nasm qemu make
```

## How To Run

After cloning or extracting the project, run:

```bash
make
make run
```

To clean up all generated files:

```bash
make clean
```
