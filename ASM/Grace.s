; Comment
section .data
    extern _dprintf
    extern _open
    quine db "; Comment%1$csection .data%1$c    extern _dprintf%1$c    extern _open%1$c    quine db %2$c%3$s%2$c%1$c    filename db %2$cGrace_kid.s%2$c%1$c%1$c%%macro QUINE 1%1$c    mov %%1, quine%1$c%%endmacro%1$c%1$c%%macro TEXT 0%1$csection .text%1$c    global _main%1$c%%endmacro%1$c%1$cTEXT%1$c%1$c%%macro MAIN 0%1$c_main:%1$c    push rbp%1$c%1$c    mov rax, 0%1$c    mov rdi, filename%1$c    mov rsi, 0x0601%1$c    mov rdx, 644o%1$c    call _open%1$c%1$c    mov rdi, rax%1$c    QUINE rsi%1$c    mov rdx, 10%1$c    mov rcx, 34%1$c    QUINE r8%1$c    mov rax, 0%1$c    call _dprintf%1$c%1$c    pop	rbp%1$c    mov	rax, 0%1$c    ret%1$c%%endmacro%1$c%1$cMAIN%1$c"
    filename db "Grace_kid.s"

%macro QUINE 1
    mov %1, quine
%endmacro

%macro TEXT 0
section .text
    global _main
%endmacro

TEXT

%macro MAIN 0
_main:
    push rbp

    mov rax, 0
    mov rdi, filename
    mov rsi, 0x0601
    mov rdx, 644o
    call _open

    mov rdi, rax
    QUINE rsi
    mov rdx, 10
    mov rcx, 34
    QUINE r8
    mov rax, 0
    call _dprintf

    pop	rbp
    mov	rax, 0
    ret
%endmacro

MAIN
