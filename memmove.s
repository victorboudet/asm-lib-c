;
;   Epitech mini-libc 2024
;   Boudet Victor
;   MEMMOVE
;

section .text
global memmove:function

memmove:
    cmp rsi, rdi
    je .end
    mov rcx, rdx
    ja .copy_for
    dec rcx
    jmp .copy_back

.copy_for:
    mov rcx, 0
    cmp rdx, 0
    jz .end

.for_loop:
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    inc rcx
    cmp rcx, rdx
    jne .for_loop
    jmp .end

.copy_back:
    cmp rcx, 0
    jl .end
    cmp rdx, 0
    jz .end

.back_loop:
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    dec rcx
    cmp rcx, 0
    jne .back_loop

.end:
    ret
section .note.GNU-stack noalloc noexec nowrite progbits
