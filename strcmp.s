;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRCMP
;

section .text
global strcmp:function

strcmp:
    mov rcx, 0

.loop:
    mov al, byte [rdi + rcx]
    cmp al, byte [rsi + rcx]
    jg .greater
    jl .less
    cmp al, 0
    je .equal
    inc rcx
    jmp .loop

.greater:
    mov rax, 1
    ret

.less:
    mov rax, -1
    ret

.equal:
    mov rax, 0
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
