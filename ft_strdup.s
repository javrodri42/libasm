segment .text  
    global      _ft_strdup
    extern      _ft_strlen
    extern      _ft_strcpy
    extern      _malloc

_ft_strdup:
    call    _ft_strlen         ;size of rdi in rax
    inc     rax                ;rax +1 for \0
    push    rdi                ;rdi goes to LIFO    
    mov     rdi,rax            ;rax to rdi  
    call    _malloc            ;malloc of rdi in rax
    pop     r15                 ;extract value from LIFO in r15
    mov     rdi,rax            ;
    mov     rsi, r15            ;
    call    _ft_strcpy 
return:         
    ret