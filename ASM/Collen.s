section .data
    msg db "section .data%1$c    msg db %2$c%3$s%2$c%1$c    extern _printf%1$c%1$csection .text%1$c    global _main%1$c%1$c_main:%1$c    push rbp%1$c%1$c    mov rdi, msg%1$c    mov	rsi, 10%1$c    mov	rdx, 34%1$c    mov	rax, 0%1$c    call _printf%1$c%1$c%1$c    pop	rbp%1$c    mov	rax, 0%1$c    ret%1$c"
    extern _printf

section .text
    global _main

_main:
    push rbp

    mov rdi, msg
    mov	rsi, 10
    mov	rdx, 34
    mov rcx, msg
    mov	rax, 0
    call _printf
    
    pop	rbp
    mov	rax, 0
    ret
