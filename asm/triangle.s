; triangle.s

section .bss                    ; ...
    maxlines  equ   8           ; ...
    dataSize  equ   44
    output:   resb  dataSize    ; ...

section .text
    global _start

_start:
    mov       rdx, output       ; rdx holds address of the next byte to write
    mov       r8, 1             ; initial line length
    mov       r9, 0             ; number of stars written on line so far
line:
    mov       byte [rdx], '*'   ; write a single star
    inc       rdx               ; advance pointer to the next position
    inc       r9                ; *counter* (number so far)
    cmp       r9, r8            ; compare r9 and r8 value
                                ; did it reach the number of char (*) for line?
    jne       line              ; if not, keep writting this line
lineDone:
    mov       byte [rdx], 10    ; write a new line char
    inc       rdx               ; move pointer to where next char goes
    inc       r8                ; next line will be one char longer
    mov       r9, 0             ; reset counter of stars
    cmp       r8, maxlines      ; compare r8 to maxlines value
                                ; did it finish the last line?
    jng       line              ; if not, keep writting this line
    
done:                           ; write triangle output (string)
    mov       rax, 0x02000004
    mov       rdi, 1
    mov       rsi, output
    mov       rdx, dataSize
    syscall
    mov       rax, 0x02000001
    xor       rdi, rdi
    syscall
