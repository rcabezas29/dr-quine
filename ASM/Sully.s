section .data
    extern _open
    extern _sprintf
    extern _dprintf
    extern _system
    quine db "section .data%1$c    extern _open%1$c    extern _sprintf%1$c    extern _dprintf%1$c    extern _system%1$c    quine db %2$c%3$s%2$c, 0%1$c    compile_and_execute db %2$cnasm -f macho64 -D X=1 Sully_%%1$d.s && gcc Sully_%%1$d.o -o Sully_%%1$d && ./Sully_%%1$d%2$c, 0%1$c    filename db %2$cSully_%%d.s%2$c, 0%1$c    buff times 200 db 0%1$c%1$c%%macro QUINE 1%1$c    mov %%1, quine%1$c%%endmacro%1$c%1$csection .text%1$c    global _main%1$c%1$c_main:%1$c    push rbp%1$c%1$c    mov rdx, %4$d%1$c%%ifdef X%1$c    dec rdx%1$c%%endif%1$c    cmp rdx, 0%1$c    je _ret%1$c    mov rdi, buff%1$c    mov rsi, filename%1$c    call _sprintf%1$c%1$c    mov rax, 0%1$c    mov rdi, buff%1$c    mov rsi, 0x0601%1$c    mov rdx, 644o%1$c    call _open%1$c%1$c    mov rdi, rax%1$c    QUINE rsi%1$c    mov rdx, 10%1$c    mov rcx, 34%1$c    QUINE r8%1$c    mov r9, %4$d%1$c    mov rax, 0%1$c    call _dprintf%1$c%1$c    mov rdi, buff%1$c    mov rsi, compile_and_execute%1$c    mov rdx, %4$d%1$c%%ifdef X%1$c    dec rdx%1$c%%endif%1$c    call _sprintf%1$c%1$c    mov rdi, buff%1$c    call _system%1$c%1$c    jmp _ret%1$c%1$c_ret:%1$c    mov rax, 0%1$c    pop rbp%1$c    ret%1$c", 0
    compile_and_execute db "nasm -f macho64 -D X=1 Sully_%1$d.s && gcc Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d", 0
    filename db "Sully_%d.s", 0
    buff times 200 db 0

%macro QUINE 1
    mov %1, quine
%endmacro

section .text
    global _main

_main:
    push rbp

    mov rdx, 5
%ifdef X
    dec rdx
%endif
    cmp rdx, 0
    je _ret
    mov rdi, buff
    mov rsi, filename
    call _sprintf

    mov rax, 0
    mov rdi, buff
    mov rsi, 0x0601
    mov rdx, 644o
    call _open

    mov rdi, rax
    QUINE rsi
    mov rdx, 10
    mov rcx, 34
    QUINE r8
    mov r9, 5
    mov rax, 0
    call _dprintf

    mov rdi, buff
    mov rsi, compile_and_execute
    mov rdx, 5
%ifdef X
    dec rdx
%endif
    call _sprintf

    mov rdi, buff
    call _system

    jmp _ret

_ret:
    mov rax, 0
    pop rbp
    ret
