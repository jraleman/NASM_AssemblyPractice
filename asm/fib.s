; fib.s

global  _main
extern  _printf

section .text
_main:
    push    rbx                 ; ...? this is like a variable maybe save the result?
    mov     rcx, 90             ; countown to 0
    xor     rax, rax            ; hold the current_number
    xor     rbx, rbx            ; hold the next_number
    inc     rbx                 ; rbx is originally 1
print:
    ; because the general registers are in use, printf may destroy rax and rcx,
    ; so we push the registers (store value), to later pop them (restore value).
    push    rax                 ; caller-save register
    push    rcx                 ; caller-save register
    mov     rdi, format         ; set 1st parameter (format)
    mov     rsi, rax            ; set 2nd parameter (current_number)
    xor     rax, rax            ; because printf is varargs
    ; Stack is already aligned because we pushed three 8 byte registers
    call    _printf             ; printf(format, current_number)
    pop     rcx                 ; restore caller-save register
    pop     rax                 ; restore caller-save register
    mov     rdx, rax            ; save the current_number (tmp)
    mov     rax, rbx            ; next_number -> current_number
    add     rbx, rdx            ; tmp + prev_number (total sum)
    dec     ecx                 ; count down
    jnz     print               ; loop back if counter is not equal to zero (0)
    pop     rbx                 ; get rbx value before returning
    ret                         ; return restored rbx value
format:
    db  "%20ld",  10, 0
