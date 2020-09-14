segment .text
    global      _ft_strcmp

_ft_strcmp:
    mov rcx,0               ;s1 rdi, s2 rsi  
    cmp rdi,0               ;s1 is null 
    je  check_null
    cmp rsi,0
    je  check_null
    jmp check               ;rcx is counter i-0
check:
    cmp BYTE[rsi + rcx], 0
    je  last_char
    cmp BYTE[rdi + rcx], 0
    je  last_char
    jmp compare
check_null:
    cmp rdi,rsi
    je  equal
    jg  higher
    jmp lower
compare:
    mov dl,BYTE [rsi + rcx]
    cmp BYTE [rdi + rcx],dl
    jne last_char
increment:
    inc rcx
last_char:
    mov dl,BYTE [rdi + rcx]
    sub dl,BYTE [rsi + rcx]
    cmp dl,0
    jz  equal
    jl  lower
higher:
    mov rax,1
    ret
lower:
    mov rax,-1
    ret
equal:
    mov rax,0                   ;return  if s1 s2 are equal
    ret                         ;return rax