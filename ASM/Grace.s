section .data
    filename db 'example.txt', 0
    msg db 'This is the content of the file.', 0
    msglen equ $ - msg

section .text
    global _start

_start:
    ; Open system call
    ; int 0x80 is used for 32-bit systems, for 64-bit systems you'd use syscall
    ; File flags: O_CREAT (create if not exist), O_WRONLY (write only), O_TRUNC (truncate if file exists)
    ; Mode: 0644 (read/write permissions for owner, read-only for others)
    mov eax, 5         ; System call number for open
    mov ebx, filename  ; Pointer to filename (define 'filename' in .data section)
    mov ecx, 0x42       ; File flags (O_CREAT | O_WRONLY | O_TRUNC)
    mov edx, 0644      ; File mode
    int 0x80

    ; Check for error (eax will have the file descriptor if successful, or a negative value on error)
    test eax, eax
    js open_failed

    ; Write system call
    ; File descriptor is in eax
    ; Pointer to data is in ebx
    ; Length of data is in ecx
    mov eax, 4         ; System call number for write
    mov ebx, eax       ; File descriptor
    mov ecx, msg       ; Pointer to message (define 'msg' in .data section)
    mov edx, msglen    ; Length of message
    int 0x80

    ; Close system call
    mov eax, 6         ; System call number for close
    int 0x80

    ; Exit system call
    mov eax, 1         ; System call number for exit
    xor ebx, ebx       ; Exit code 0
    int 0x80

open_failed:
    ; Handle open error here
    ; You can print an error message and exit
    ; For brevity, this example does not include detailed error handling
