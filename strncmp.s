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
    jae .equal
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]
    cmp al, bl
    jne .diff
    cmp al, 0
    je .equal
    inc rcx
    jmp .loop

.diff:
    cmp al, bl
    jg .sup
    jl .inf
    sub al, bl
    neg al
    movzx rax, al
    ret

.sup:
    sub al, bl
    movzx rax, al
    ret

.inf:
    sub al, bl
    neg al
    movzx rax, al
    neg rax
    ret

.equal:
    mov rax, 0
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
