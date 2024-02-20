;
;   Epitech mini-libc 2024
;   Boudet Victor
;   MEMMOVE
;

section .text
global memmove:function

memmove:
    mov rcx, 0
    cmp rdi, rsi
    jle .loop
    jmp .loop_back

.loop:
    cmp rdx, rcx
    je .end
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    inc rcx
    jmp .loop

.loop_back:
    cmp rcx, rdx
    je .end
    mov r8, rdx
    sub r8, rcx
    dec r8
    mov al, [rsi + r8]
    mov [rdi + r8], al
    inc rcx
    jmp .loop_back

.end:
    mov r8, 0
    mov rax, rdi
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
