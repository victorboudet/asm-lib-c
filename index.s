;
;   Epitech mini-libc 2024
;   Boudet Victor
;   INDEX
;

section .text
global index:function

index:
    mov rcx, 0 ; set rcx to 0

.loop:
    cmp [rdi + rcx], sil ; compare str[rcx] to the first char of rsi
    je .found ; if equal, jmp to .found
    cmp byte [rdi + rcx], 0 ; compare str[rcx] to 0
    je .not_found ; if equal jmp to .not_found
    inc rcx ; increment rcx
    jmp .loop ; jump to .loop

.found:
    lea rax, [rdi + rcx] ; set rax to the address of str[rcx]
    ret

.not_found:
    mov rax, 0 ; set rax to 0
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
