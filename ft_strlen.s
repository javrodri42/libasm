segment .text
    global      _ft_strlen

_ft_strlen:
    mov rax,-1                  ;inicialize rax in 0
count:
    inc rax                     ;rax +1 (i++)
    cmp BYTE [rdi + rax], 0     ;compare
    jne count                   ;(jump not equal)
    je  return                  ;(jump equal)

return:
    ret                         ;return rax