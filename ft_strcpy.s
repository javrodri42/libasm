segment .text
    global      _ft_strcpy

_ft_strcpy:
    mov rcx, 0      ;initialize rcx
    mov rdx, 0      ;initialize rdx
    cmp rsi, 0      ;string null
    je  return      ;if string null go to return
    jmp copy        ;if not null copy the string
increment:
    inc rcx         ;increment rcx
copy:
    move dl, BYTE [rsi + rcx] ;dl is a low register 8bits
    move 
return:
    ret    