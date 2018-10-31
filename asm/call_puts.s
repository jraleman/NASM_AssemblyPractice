; call_puts.s

global  _main
extern  _puts

section .data
var:
    .msg    db    "Hola, mundo!", 0x00

section .text
_main:
    push    rbx                         ; Call stack must be aligned
    lea     rdi, [rel var.msg]          ; lea -> load effective address
                                        ; stupid name for a shift+add operation
                                        ; directly map high level memory refs
    call    _puts                       ; puts(var.msg)
    pop     rbx                         ; Fix up stack before returning
    ret                                 ; Return from main back into C lib wrapper
