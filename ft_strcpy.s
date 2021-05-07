section .text
    global _ft_strcpy

_ft_strcpy:
    mov rcx, 0
    jmp _ft_loop

_ft_loop:
    cmp byte [rsi + rcx], 0
    jz _exit
    mov dl, BYTE [rsi + rcx]
    mov BYTE [rdi + rcx], dl
    inc rcx
    jmp _ft_loop

_exit:
    mov byte [rdi + rcx], 0x0
    mov rax, rdi 
    ret