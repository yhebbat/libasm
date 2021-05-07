%define len 256

section .bss
    entry resb len
section .data
    char db 'your name : '
    char_len equ $-char

    ecc db 'your name is : '
    ecc_len equ $-char

section .text
    global _start

_start:
    jmp _bdina
_bdina:
    mov rax, 1
    mov rdi, 1
    mov rsi, char
    mov rdx, char_len
    syscall
    jmp _ljawab
_ljawab:
    mov rax, 0x0
    mov rdi, 1
    mov rsi, entry
    mov rdx, len
    syscall
    push rsi
    jmp _aatih

_aatih:
    mov rax, 1
    mov rdi, 1
    mov rsi, ecc
    mov rdx, ecc_len
    syscall
    mov rax, 1
    mov rdi, 1
    pop rsi;mov rsi entry
    mov rdx, 0xC
    syscall
    jmp _exit

_exit:
    mov rax, 60
    mov rdi, 0