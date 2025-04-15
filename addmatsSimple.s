	.file	"addmatsSimple.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$80, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	%gs:20, %eax
	movl	%eax, 76(%esp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movups	%xmm0, 36(%esp)
	movd	%xmm0, 52(%esp)
	movl	$1, 36(%esp)
	pxor	%xmm0, %xmm0
	movups	%xmm0, 56(%esp)
	movd	%xmm0, 72(%esp)
	movl	$2, 56(%esp)
	movl	$0, 12(%esp)
	jmp	.L2
.L3:
	movl	12(%esp), %eax
	movl	36(%esp,%eax,4), %edx
	movl	12(%esp), %eax
	movl	56(%esp,%eax,4), %eax
	addl	%eax, %edx
	movl	12(%esp), %eax
	movl	%edx, 16(%esp,%eax,4)
	addl	$1, 12(%esp)
.L2:
	cmpl	$4, 12(%esp)
	jle	.L3
	movl	$1, %eax
	movl	76(%esp), %edx
	subl	%gs:20, %edx
	je	.L5
	call	__stack_chk_fail_local
.L5:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB1:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE1:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (GNU) 14.2.1 20250207"
	.section	.note.GNU-stack,"",@progbits
