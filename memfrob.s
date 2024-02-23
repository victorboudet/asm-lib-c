;
;   Epitech mini-libc 2024
;   Boudet Victor
;   MEMFROB
;

section .text
global memmove:function

memfrob:
    mov rcx, 0

.loop:
    cmp rcx, rsi
    jge .end
    mov al, [rdi + rcx]
    xor al, 42
    mov [rdi + rcx], al
    inc rcx
    jmp .loop

.end:
    mov rax, rdi
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
