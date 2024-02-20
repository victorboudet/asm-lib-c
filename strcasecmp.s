;
;   Epitech mini-libc 2024
;   Boudet Victor
;   STRCASECMP
;

section .text
global strcasecmp:function

strcasecmp:
    mov eax, 0
    mov rcx, 0
    cmp rdi, rsi
    je .test_null
    jmp .loop

.test_null:
    cmp rdi, 0
    mov rax, 0
    je .end
    jmp .loop

.incr:
    cmp bl, 0
    je .end
    inc rcx

.loop:
    mov bl, [rdi + rcx]
    mov dl, [rsi + rcx]
    cmp bl, 65
    jl .no_up
    cmp bl, 90
    jg .no_up
    add bl, 32

.no_up:
    cmp dl, 65
    jl .no_up1
    cmp dl, 90
    jg .no_up1
    add dl, 32

.no_up1:
    cmp bl, dl
    je .incr

.diff:
    movsx eax, bl
    movsx ebx, dl
    sub eax, ebx

.end:
    ret

section .note.GNU-stack noalloc noexec nowrite progbits
