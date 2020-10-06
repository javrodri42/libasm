segment .text
    global      _ft_strcpy
    extern      _ft_strlen

_ft_strcpy:
    push    rdi             ;rdi to LIFO
    mov     rdi,rsi
    call    _ft_strlen      ;len in RAX
    mov     rcx,rax
    pop     rdi
    mov     rax, rdi
    rep     movsb           ;repeat string-operation until tested-condition, move byte at address SI to DI, 2 bytes, movsb get string from rsi and set it to rdi at rep, rep incres automaticaly until rsi on movsb is'nt 0
    mov     BYTE [rdi], 0   ;rdi was increse by movsb, so we are at end of the copied string
    jmp     return
return:
    ret    