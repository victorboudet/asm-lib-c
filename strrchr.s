;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRRCHR
;

section .text
global strrchr:function

strrchr:
    mov rcx, 0

.loop:
    cmp [rdi + rcx], sil
    je .found
    cmp byte [rdi + rcx], 0 // check if end string
    je .end // if end string
    inc rcx
    jmp .loop

.found:
    cmp byte [rdi + rcx], [rdi + rcx] // check if end string
    jne .end
    inc rcx
    jmp .loop

.end:
    mov rax, rdi
    add rax, rcx
    ret
