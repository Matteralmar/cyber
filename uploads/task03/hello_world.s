section .data
    msg db "Hello World!", 10    ; message + newline
    len equ $ - msg

section .text
global _start

_start:
    ; write(1, msg, len)
    mov     rax, 1              ; syscall: sys_write
    mov     rdi, 1              ; fd: stdout
    mov     rsi, msg            ; buffer address
    mov     rdx, len            ; length
    syscall

    ; exit(4242) → exit code will be 4242 % 256 = 146
    mov     rax, 60             ; syscall: sys_exit
    mov     rdi, 4242           ; exit code
    syscall