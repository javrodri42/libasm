section .text
    global      _ft_read
    extern      ___error

_ft_read:
    mov     rax, 0x2000003
    syscall
    jc      _error      ;jump if carry flag equal to one, error sets carry flag, rax = errno
    jmp     return
_error:
    mov     r15, rax    ;save errno
    call    ___error    ;retrieve addres to errno
    mov     [rax], r15  ;put errno in return value of ___error (pointer to erno)
    mov     rax, -1
    ret
return:
    ret