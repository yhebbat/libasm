section .data
    text db "Hello, World!",10
    x equ $-text
 
section .text
    global _start
 
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, x
    syscall
 
    mov rax, 60
    mov rdi, 0
    syscall
