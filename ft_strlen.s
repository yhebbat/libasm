section .text
    global _ft_strlen

_ft_strlen:
    mov rax, 0x0
    ;jmp _ft_strlen2

_ft_strlen2:
    cmp byte [rdi+rax], 0x0
    jz  _return
    inc rax
    jmp _ft_strlen2

_return:
    ret
