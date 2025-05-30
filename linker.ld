/* linker outputs a 32-bit ELF binary for x86 */
OUTPUT_FORMAT(elf32-i386)

ENTRY(main)

SECTIONS {
    /* Set the starting memory address for the kernel */
    . = 0x1000;

    /* Code section: put all executable instructions here */
    .text : {
        *(.text)
    }

    /* Data section: initialized global and static variables */
    .data : {
        *(.data)
    }

    /* BSS section: uninitialized global/static variables (auto-zeroed) */
    .bss : {
        *(.bss)
    }
}
