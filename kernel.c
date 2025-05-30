void main() {
    const char *str = "Hello from Kernel!";
    char *video_memory = (char *)0xb8000; // direct access to VGA text memory
    
    for (int i = 0; str[i] != '\0'; i++) {
        video_memory[i * 2] = str[i];
        video_memory[i * 2 + 1] = 0x07; // light gray text on black background
    }

    while (1) {}
}
