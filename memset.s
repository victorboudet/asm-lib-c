;
;   Epitech mini-libc 2024
;   Boudet Victor
;   MEMSET
;

section .text
global memset:function

memset:
    mov rcx, 0

.loop:
    cmp rcx, rdx
    je .end
    mov [rdi + rcx], sil
    inc rcx
    jmp .loop

.end:
    mov rax, rdi
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
