; maxofthree.s
; --------------
; The function has signature :
;   int64_t maxofthree(int64_t x, int64_t y, int64_t z);
;
; The paramenters have already been passed in rdi, rsi, and rdx.
; We just have to return the value in rax

global _maxofthree

section .text
_maxofthree:
    mov     rax, rdi          ; Register where holds the result
    cmp     rax, rsi          ; Is x less than y?
    cmovl   rax, rsi          ; If so, set result to y
    cmp     rax, rdx          ; Is it less than z?
    cmovl   rax, rdx          ; If so, set result to z
    ret                       ; return max value
