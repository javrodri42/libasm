segment .text
    global      _ft_strcmp

_ft_strcmp:
   push     r15
   mov      r15, -1

_loop:
    inc     r15
    mov     al, byte[rdi+r15]
    mov     bl, byte[rsi+r15]
    cmp     al, 0
    je      _return
    cmp     bl, 0
    je      _return
    cmp     al, bl
    je      _loop
    jmp     _return

_return:
    pop     r15
    sub     rax, rbx
    ret