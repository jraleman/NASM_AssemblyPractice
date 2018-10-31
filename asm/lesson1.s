; Hello world

section .data                     ; used for declaring initialized data
                                  ; or constants
    msg   db  'Hello world!', 0Ah ; assign string to msg variable
                                  ; db means defined bytes
                                  ; 0Ah is the line feed character

section .text                     ; used for keeping the **actual code**
    global  _start                ; must be decalred because of linker (ld)

_start:                           ; tells linker the entry point
    mov   edx, 13                 ; bytes to write (pluse 0Ah character)
    mov   ecx, msg                ; move var msg memory address to register ecx
    mov   ebx, 1                  ; write to file 1 (STDOUT)
    mov   eax, 4                  ; invoke SYS_WRITE (kernel opcode 4)
    int   80h                     ; call kernel
