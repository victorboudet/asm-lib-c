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
mov al, [rsi + (rdx - rcx) - 1]
mov [rdi + (rdx - rcx) - 1], al
inc rcx
jmp .loop_back

.end:
mov rax, rdi
ret
section .note.GNU-stack noalloc noexec nowrite progbits
