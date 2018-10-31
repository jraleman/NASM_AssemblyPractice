; helloworld.s

global  _start                        ; must be decalred because of linker (ld)

section .data                         ; used for declaring initialized data or constants
var:                                  ; define structure to place variables (optional)
    .msg   db  'Hello world!', 0Ah    ; assign string message variable
                                      ; . (dot) used for name convension (structure like)
                                      ; db means defined bytes
                                      ; 0Ah is the line feed character

section .text                         ; used for keeping the **actual code**
_start:                               ; tells linker the entry point

    ; function write (
    mov   rax, 0x02000004             ; system call = 1 (write)

    ; fd, *str, len )
    mov   rdi, 1                      ; (fd) file descriptor = 1 (STDOUT)
    mov   rsi, var.msg                ; (*str) move var.msg string memory address
    mov   rdx, 13                     ; (len) bytes to write (pluse 0Ah character)

    ; {
    syscall                           ; invoke operating system to do the write

    ; return ([black box thingy])
    mov   rax, 0x02000001             ; invoke SYS_WRITE (kernel opcode 4)
    xor   rdi, rdi                    ; exit code 0

    ; }
    syscall
