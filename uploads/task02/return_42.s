section .text
global _start

_start:
    mov     rax, 60         ; syscall number for exit (60)
    mov     rdi, 42         ; exit code 42
    syscall                 ; make syscall