section .text
  global    _ft_strdup
  extern    _malloc
  extern    _ft_strlen

_ft_strdup:
    mov rcx, 0
    call _ft_strlen
    inc rax
    push rdi
    ;mov rax, rdi
    mov rdi, rax
_allocation:
    call _malloc
    pop rdi
    cmp rax, 0
    jz  _error

_remplir:
    mov dl, byte [rdi + rcx]
    mov byte [rax + rcx], dl
    cmp byte [rax + rcx], 0
    jz  _fin
    inc rcx
    jmp _remplir

_fin:
    mov byte [rax + rcx], 0
    ret
    
_error:
    mov rax, 0
    ret

