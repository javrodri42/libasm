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
    pop     r9                 ;extract value from LIFO in R1
    mov     rax,rdi            ;
    mov     r9, rsi            ;
    call    _ft_strcpy 
return:         
    ret