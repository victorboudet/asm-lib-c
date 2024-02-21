;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRCSPN
;

section .text
global strcspn:function

strcspn:
    mov rcx, 0
    mov al, [rdi]

.start:
    cmp al, 0
    je .end
    jmp .loop1

.loop1:
    mov dl, [rsi]
    mov r8, 0

.loop2:
    cmp dl, 0
    je .next
    cmp al, dl
    je .found
    inc r8
    mov dl, [rsi + r8]
    jmp .loop2

.next:
    inc rcx
    mov al, [rdi + rcx]
    cmp al, 0
    jne .loop1

.found:
    mov rax, rcx
    ret

.end:
    mov rax, 0

section .note.GNU-stack noalloc noexec nowrite progbits
