        .file   "addmatsSimple.c"
        .text
        .globl  main
        .type   main, @function
main:
.LFB0:
        .cfi_startproc
        pushq   %rbp
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        movq    %rsp, %rbp
        .cfi_def_cfa_register 6
        pxor    %xmm0, %xmm0
        movaps  %xmm0, -64(%rbp)
        movd    %xmm0, -48(%rbp)
        movl    $1, -64(%rbp)
        pxor    %xmm0, %xmm0
        movaps  %xmm0, -96(%rbp)
        movd    %xmm0, -80(%rbp)
        movl    $2, -96(%rbp)
        movl    $0, -4(%rbp)
        jmp     .L2
.L3:
        movl    -4(%rbp), %eax
        cltq
        movl    -64(%rbp,%rax,4), %edx
        movl    -4(%rbp), %eax
        cltq
        movl    -96(%rbp,%rax,4), %eax
        addl    %eax, %edx
        movl    -4(%rbp), %eax
        cltq
        movl    %edx, -32(%rbp,%rax,4)
        addl    $1, -4(%rbp)
.L2:
        cmpl    $4, -4(%rbp)
        jle     .L3
        movl    $1, %eax
        popq    %rbp
        .cfi_def_cfa 7, 8
        ret
        .cfi_endproc
.LFE0:
        .size   main, .-main
        .ident  "GCC: (GNU) 14.2.1 20240801 (Red Hat 14.2.1-1)"
        .section        .note.GNU-stack,"",@progbits
