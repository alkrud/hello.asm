section .data
    ;; specify message
    msg db "Hello, world!", 10
    msg_end db ""

section .text
    ;; make _start global so it's visible to the linker
    global _start

_start:
    ;; write syscall
    mov rax, 1
    ;; stdout
    mov rdi, 1
    ;; move data to rsi
    mov rsi, msg
    ;; move the data right after the message to rdx
    mov rdx, msg_end
    ;; subtract the start of the message from the end of the message to get the count
    sub rdx, rsi
    syscall

    mov rax, 60 ;; exit syscall
    mov rdi, 0 ;; return code
    syscall
