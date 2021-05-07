section .data
    n db 10

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, [rsp+8];argc rsp est un stack pointer
    mov rdx, 8
    syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, n
    mov rdx, 2
    syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, [rsp+16];argv1
    mov rdx, 2
    syscall
    mov rax, 1
    mov rdi, 1
    mov rsi, n
    mov rdx, 2
    syscall
    mov rax, 60
    mov rdi, 0
    syscall