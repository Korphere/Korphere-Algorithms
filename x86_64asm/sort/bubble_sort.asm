; bubble_sort(int *arr, size_t n)
; rdi = arr (pointer)
; rsi = n   (size)

section .text
global bubble_sort

bubble_sort:
    test rsi, rsi
    jz .done
    dec rsi
    jz .done

.outer_loop:
    xor rcx, rcx
    xor rdx, rdx

.inner_loop:
    mov eax, [rdi + rcx*4]
    mov r8d, [rdi + rcx*4 + 4]

    cmp eax, r8d
    jle .no_swap

    mov [rdi + rcx*4], r8d
    mov [rdi + rcx*4 + 4], eax
    mov rdx, 1

.no_swap:
    inc rcx
    cmp rcx, rsi
    jl .inner_loop

    test rdx, rdx
    jz .done

    dec rsi 
    jnz .outer_loop

    jmp .outer_loop

.done:
    ret
