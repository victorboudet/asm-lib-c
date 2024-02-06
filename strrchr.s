;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRRCHR
;

section .text
global strrchr:function

strrchr:
    mov rcx, 0
    mov r8, 0

.loop:
    cmp byte [rdi + rcx], 0
    je .end
    cmp [rdi + rcx], sil
    je .found
    inc rcx
    jmp .loop

.found:
    lea r8, [rdi + rcx]
    inc rcx
    jmp .loop

.end:
    cmp r8, 0
    je .end_not_found
    mov rax, r8
    ret

.end_not_found:
    mov rax, 0
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
