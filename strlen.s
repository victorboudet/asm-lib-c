;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRLEN
;

section .text
global strlen:function

strlen:
    mov rcx, 0 ; set rcx to 0 (rcx is considered as the counter of a loop like i)

.loop:
    cmp byte [rdi + rcx], 0 ; compare the value of the byte at the address rdi + rcx with 0
    je .end ; if value == 0 jmp to .end
    inc rcx ; increment by 1 the value of rcx
    jmp .loop ; go to the begin of .loop

.end:
    mov rax, rcx ; set rax to rcx (rax is the return value of a function)
    ret ; return to the caller

section .note.GNU-stack noalloc noexec nowrite progbits