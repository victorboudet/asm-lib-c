;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRNCMP
;

section .text
global strncmp:function

strncmp:
    mov rcx, 0

.loop:
    cmp rcx, rdx
    je .equal
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]
    cmp al, bl
    jg .greater
    jl .less
    cmp al, 0
    inc rcx
    jmp .loop

.greater:
    sub al, bl
    movzx rax, al
    ret

.less:
    sub bl, al
    movzx rax, bl
    neg rax
    ret

.equal:
    mov rax, 0
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
