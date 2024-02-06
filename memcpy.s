;
;   Epitech mini-libc 2024
;   Boudet Victor
;   MEMCPY
;

section .text
global memcpy:function

memcpy:
    mov rcx, 0

.loop:
    cmp rcx, rdx
    je .end
    mov al, byte [rsi + rcx]
    mov byte [rdi + rcx], al
    inc rcx
    jmp .loop

.end:
    mov rax, rdi
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
