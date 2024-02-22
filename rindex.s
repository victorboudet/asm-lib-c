;
;   Epitech mini-libc 2024
;   Boudet Victor
;   RINDEX
;

section .text
global rindex:function

rindex:
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
    cmp sil, 0
    jne .end_not_found
    lea rax, [rdi + rcx]
    ret

.end_not_found:
    cmp r8, 0
    je .end_null
    mov rax, r8
    ret

.end_null:
    mov rax, 0
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
