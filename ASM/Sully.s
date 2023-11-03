section .data
    extern _open
    extern _sprintf
    quine db ""
    compile_and_execute db "nasm -f macho64 %1$s && gcc %2$s -o Sully_%3$d && ./Sully_%3$d"
    filename db "Sully_%d.s"
    buff: db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

section .text
    global _main

_main:
    push rbp

    mov rax, 0
    mov rdi, buff
    mov rsi, filename
    mov rdx, 5
    call _sprintf

    mov rax, 0
    mov rdi, buff
    mov rsi, 0x0601
    mov rdx, 644o
    call _open

    ret
