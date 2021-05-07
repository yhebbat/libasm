section .data
    salam db 'hello word',10
    salam_len equ $-salam


section .text
    global    _start

_start:
    mov rcx, 10
    push rcx
    jmp _loop

_loop:
    cmp rcx, 0
    je  _exit
    mov rax, 1
    mov rdi, 1
    mov rsi, salam
    mov rdx, salam_len
    push rcx
    syscall
    pop rcx
    ;dec rcx
    ;jmp _loop
    loop _loop; loop = dec + jmp

_exit:
    mov rax, 60 
    mov rdi, -1
    syscall