;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRCSPN
;

section .text
global strcspn:function

strcspn:
    mov rcx, 0
    jmp .loop

.incr:
    inc rcx
    jmp .loop

.loop:
    mov al, [rdi + rcx]
    cmp al, 0
    je .end
    jmp .check

.check:
    mov rdx, 0

.loop_check:
    mov dl, [rsi + rdx]
    cmp dl, 0
    je .incr
    cmp dl, al
    je .end
    inc rdx
    jmp .loop_check

.end:
    mov rax, rcx
    ret


section .note.GNU-stack noalloc noexec nowrite progbits
