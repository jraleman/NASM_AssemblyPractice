; echo.s
; ------
; Displays its command line arguments, one per line

global _main
extern _puts

section .text
_main:
    push    rdi           ; save registers that _puts uses
    push    rsi
    sub     rsp, 8        ; align stack before call

    mov     rdi, [rsi]    ; the argument string to display
    call    _puts         ; print it

    add     rsp, 8        ; restore %rsp to pre-aligned value
    pop     rsi           ; restore registers _puts used
    pop     rdi

    add     rsi, 8        ; point to next argument
    dec     rdi           ; count down
    jnz     _main         ; jump to top, if not done counting

    ret
