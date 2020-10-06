segment .text
    global      _ft_write
    extern      ___error

_ft_write:
    mov     rax, 0x2000004
    syscall
    jc      _error      ;jump if carry flag equal to one, error sets carry flag, rax = errno
    jmp     return
_error:
    mov     r15, rax    ;save errno
    call    ___error    ;retrieve address to errno
    mov     [rax], r15  ;put errno in return value of ___error (pointer to errno)
    mov     rax, -1
    ret
return:
    ret