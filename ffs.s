;
;   Epitech mini-libc 2024
;   Boudet Victor
;   FFS
;

section .text
global ffs:function

ffs:
    cmp edi, 0
    je .zero
    bsf eax, edi
    inc eax
    jmp .end

.zero:
    mov eax, 0

.end:
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
