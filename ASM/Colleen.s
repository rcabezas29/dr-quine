; Comment out of the program
section .data
    msg db "; Comment out of the program%1$csection .data%1$c    msg db %2$c%3$s%2$c, 0%1$c    extern _printf%1$c%1$csection .text%1$c    global _main%1$c%1$c_main:%1$c    ; Comment inside the main function%1$c    push rbp%1$c    jmp _colleen%1$c%1$c_colleen:%1$c    mov rdi, msg%1$c    mov	rsi, 10%1$c    mov	rdx, 34%1$c    mov rcx, msg%1$c    mov	rax, 0%1$c    call _printf%1$c%1$c    pop	rbp%1$c    mov	rax, 0%1$c    ret%1$c", 0
    extern _printf

section .text
    global _main

_main:
    ; Comment inside the main function
    push rbp
    jmp _colleen

_colleen:
    mov rdi, msg
    mov	rsi, 10
    mov	rdx, 34
    mov rcx, msg
    mov	rax, 0
    call _printf

    pop	rbp
    mov	rax, 0
    ret
