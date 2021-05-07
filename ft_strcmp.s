section .text
    global _ft_strcmp

_ft_strcmp:
    mov rcx, 0x0
    cmp rdi, 0x0
    jz _the_eend
    cmp rsi, 0x0
    jz _sup
    ;jmp _loop
_loop:
    cmp BYTE [rdi + rcx], 0x0
    jz _the_end
    cmp BYTE [rsi + rcx], 0x0
    jz _sup
    mov dl, BYTE [rdi + rcx]
    cmp dl, BYTE [rsi + rcx]
    jl _inf
    jg _sup
    inc rcx
    jmp _loop;relooper
_sup:
    mov rax, 1
    ret
_inf:
    mov rax, -1
    ret
_the_end:
    cmp [rsi + rcx],BYTE 0x0
    jz _equ
    jnz _inf
_the_eend:
    cmp rsi, 0x0
    jz _equ
    jnz _inf
_equ:
    mov rax, 0
    ret