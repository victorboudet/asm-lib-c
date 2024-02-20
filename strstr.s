;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRSTR
;

section .text
global strstr:function

; rdi = str1, rsi = str2
strstr:
    mov rbx, 0

.loop:
    mov r8, rbx
    mov rcx, 0
    jmp .comp_loop

.comp:
    inc r8
    inc rcx

.comp_loop:
    mov dl, [rsi + rcx]
    cmp dl, 0
    je .end_found
    mov al, [rdi + r8]
    cmp al, 0
    je .end_not_found
    cmp al, dl
    je .comp
    inc rbx
    jmp .loop

.end_not_found:
    mov rax, 0
    ret

.end_found:
    mov rax, rdi
    add rax, rbx
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
