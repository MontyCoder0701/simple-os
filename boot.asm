[org 0x7c00]; tell assembler that code will be loaded at memory address 0x7C00

mov ah, 0x0e ; BIOS "teletype" service
mov si, msg ; pointer to message string

.loop:
    lodsb ; load next byte from [SI] into AL, and increment SI
    or al, al ; if AL is zero (end of string), exit loop
    jz .halt
    int 0x10 ; BIOS interrupt to print character in AL
    jmp .loop

.halt:
    cli
    hlt

msg db 'Hello from Bootloader!', 0 ; Message string

times 510 - ($ - $$) db 0 ; pad boot sector to 512 bytes
dw 0xaa55 ; magic number so BIOS knows it's bootable
