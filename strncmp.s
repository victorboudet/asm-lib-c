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
    jne .diff
    cmp al, 0
    je .equal
    inc rcx
    jmp .loop

.diff:
    sub al, bl
    movzx rax, al
    ret

.equal:
    mov rax, 0
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
