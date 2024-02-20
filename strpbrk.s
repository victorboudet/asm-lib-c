;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRPBRK
;

section .text
global strpbrk:function

strpbrk:
    mov rcx, 0
    jmp .loop

.loop:
    mov al, [rdi + rcx]
    cmp al, 0
    je .ret_not_found
    inc rcx
    jmp .comp_set

.comp_set:
    mov r8, 0

.comp:
    mov dl, [rsi + r8]
    cmp dl, 0
    je .loop
    cmp al, dl
    je .ret_found
    inc r8
    jmp .comp

.ret_not_found:
    mov rax, 0
    ret

.ret_found:
    mov rax, rdi
    add rax, rcx
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
