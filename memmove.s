;
;   Epitech mini-libc 2024
;   Boudet Victor
;   MEMMOVE
;

section .text
global memmove:function

memmove:
    mov rcx, 0

.loop:
    cmp rdx, rcx
    jge .end
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    inc rcx
    jmp .loop

.end:
    mov r8, 0
    mov rax, rdi
    ret

section .note.GNU-stack noalloc noexec nowrite progbits