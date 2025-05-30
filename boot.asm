[org 0x7c00]
mov ah, 0x0e
mov si, msg
.loop:
    lodsb
    or al, al
    jz .halt
    int 0x10
    jmp .loop
.halt:
    cli
    hlt

msg db 'Hello from Bootloader!', 0

times 510 - ($ - $$) db 0
dw 0xaa55
