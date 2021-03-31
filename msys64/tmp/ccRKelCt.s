	.file	"shader.cpp"
	.text
	.section	.text$_ZSt17__size_to_integery,"x"
	.linkonce discard
	.globl	_ZSt17__size_to_integery
	.def	_ZSt17__size_to_integery;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt17__size_to_integery
_ZSt17__size_to_integery:
.LFB401:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.globl	_ZNSt11char_traitsIcE6lengthEPKc
	.def	_ZNSt11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt11char_traitsIcE6lengthEPKc
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB472:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L5
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L6
.L5:
	movq	16(%rbp), %rcx
	call	strlen
	nop
.L6:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	_ZL8snprintfPcyPKcz;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZL8snprintfPcyPKcz
_ZL8snprintfPcyPKcz:
.LFB539:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	__mingw_vsnprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
_ZL16MAX_POINT_LIGHTS:
	.long	3
.LC0:
	.ascii "Could not read file \0"
.LC1:
	.ascii "\0"
.LC2:
	.ascii "\12\0"
	.text
	.globl	_Z8readFileB5cxx11PKc
	.def	_Z8readFileB5cxx11PKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z8readFileB5cxx11PKc
_Z8readFileB5cxx11PKc:
.LFB3937:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$632, %rsp
	.seh_stackalloc	632
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 528(%rbp)
	movq	%rdx, 536(%rbp)
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movq	536(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rcx
.LEHB0:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.LEHE0:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
.LEHB1:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L10
	leaq	.LC0(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	536(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.LEHE1:
	leaq	462(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	462(%rbp), %rax
	movq	%rax, %r8
	leaq	.LC1(%rip), %rdx
	movq	528(%rbp), %rcx
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE2:
	nop
	leaq	462(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L11
.L10:
	leaq	463(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	leaq	463(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r8
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE3:
	leaq	463(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
.L13:
	leaq	-64(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rcx
.LEHB4:
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L12
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	leaq	464(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	.LC2(%rip), %r8
	movq	%rax, %rcx
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
.LEHE4:
	leaq	464(%rbp), %rdx
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_
.LEHE5:
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L13
.L12:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
.LEHB6:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv
.LEHE6:
	leaq	416(%rbp), %rax
	movq	%rax, %rdx
	movq	528(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L11:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L27
.L23:
	movq	%rax, %rbx
	leaq	462(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L16
.L24:
	movq	%rax, %rbx
	leaq	463(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L16
.L26:
	movq	%rax, %rbx
	leaq	464(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L19
.L25:
	movq	%rax, %rbx
.L19:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L16
.L22:
	movq	%rax, %rbx
.L16:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	jmp	.L20
.L21:
	movq	%rax, %rbx
.L20:
	leaq	416(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB7:
	call	_Unwind_Resume
.LEHE7:
.L27:
	movq	528(%rbp), %rax
	addq	$632, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3937:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3937-.LLSDACSB3937
.LLSDACSB3937:
	.uleb128 .LEHB0-.LFB3937
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L21-.LFB3937
	.uleb128 0
	.uleb128 .LEHB1-.LFB3937
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L22-.LFB3937
	.uleb128 0
	.uleb128 .LEHB2-.LFB3937
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L23-.LFB3937
	.uleb128 0
	.uleb128 .LEHB3-.LFB3937
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L24-.LFB3937
	.uleb128 0
	.uleb128 .LEHB4-.LFB3937
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L25-.LFB3937
	.uleb128 0
	.uleb128 .LEHB5-.LFB3937
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L26-.LFB3937
	.uleb128 0
	.uleb128 .LEHB6-.LFB3937
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L25-.LFB3937
	.uleb128 0
	.uleb128 .LEHB7-.LFB3937
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE3937:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "Error: invalid attribute location \0"
	.text
	.align 2
	.globl	_ZN13ShaderProgramclEPKc
	.def	_ZN13ShaderProgramclEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ShaderProgramclEPKc
_ZN13ShaderProgramclEPKc:
.LFB3939:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	__imp___glewGetAttribLocation(%rip), %rax
	movq	(%rax), %r8
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movq	24(%rbp), %rdx
	movl	%eax, %ecx
	call	*%r8
	cmpl	$-1, %eax
	sete	%al
	testb	%al, %al
	je	.L29
	leaq	.LC3(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %eax
	jmp	.L30
.L29:
	movq	__imp___glewGetAttribLocation(%rip), %rax
	movq	(%rax), %r8
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movq	24(%rbp), %rdx
	movl	%eax, %ecx
	call	*%r8
	nop
.L30:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.ascii "Error: invalid uniform location \0"
	.text
	.align 2
	.globl	_ZN13ShaderProgramixEPKc
	.def	_ZN13ShaderProgramixEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ShaderProgramixEPKc
_ZN13ShaderProgramixEPKc:
.LFB3940:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	__imp___glewGetUniformLocation(%rip), %rax
	movq	(%rax), %r8
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movq	24(%rbp), %rdx
	movl	%eax, %ecx
	call	*%r8
	cmpl	$-1, %eax
	sete	%al
	testb	%al, %al
	je	.L32
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movl	$-1, %eax
	jmp	.L33
.L32:
	movq	__imp___glewGetUniformLocation(%rip), %rax
	movq	(%rax), %r8
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movq	24(%rbp), %rdx
	movl	%eax, %ecx
	call	*%r8
	nop
.L33:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC5:
	.ascii "[Failed to create shader program]\0"
.LC6:
	.ascii "[Shader program created]\0"
	.text
	.align 2
	.globl	_ZN13ShaderProgramC2Ev
	.def	_ZN13ShaderProgramC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ShaderProgramC2Ev
_ZN13ShaderProgramC2Ev:
.LFB3942:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	__imp___glewCreateProgram(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
	movq	16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L35
	leaq	.LC5(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	jmp	.L37
.L35:
	leaq	.LC6(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
.L37:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_ZN13ShaderProgramC1Ev
	.def	_ZN13ShaderProgramC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN13ShaderProgramC1Ev,_ZN13ShaderProgramC2Ev
	.section .rdata,"dr"
.LC7:
	.ascii "Failed to compile: \0"
.LC8:
	.ascii "Compiled shader: \0"
	.text
	.align 2
	.globl	_ZN13ShaderProgram6attachEjPKc
	.def	_ZN13ShaderProgram6attachEjPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ShaderProgram6attachEjPKc
_ZN13ShaderProgram6attachEjPKc:
.LFB3944:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$168, %rsp
	.seh_stackalloc	168
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 64(%rbp)
	movl	%edx, 72(%rbp)
	movq	%r8, 80(%rbp)
	movq	__imp___glewCreateShader(%rip), %rax
	movq	(%rax), %rdx
	movl	72(%rbp), %eax
	movl	%eax, %ecx
.LEHB8:
	call	*%rdx
	movl	%eax, 24(%rbp)
	leaq	-16(%rbp), %rax
	movq	80(%rbp), %rdx
	movq	%rax, %rcx
	call	_Z8readFileB5cxx11PKc
.LEHE8:
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	movq	%rax, -24(%rbp)
	movq	__imp___glewShaderSource(%rip), %rax
	movq	(%rax), %r10
	leaq	-24(%rbp), %rdx
	movl	24(%rbp), %eax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$1, %edx
	movl	%eax, %ecx
.LEHB9:
	call	*%r10
	movq	__imp___glewCompileShader(%rip), %rax
	movq	(%rax), %rdx
	movl	24(%rbp), %eax
	movl	%eax, %ecx
	call	*%rdx
	movl	$0, -28(%rbp)
	movq	__imp___glewGetShaderiv(%rip), %rax
	movq	(%rax), %r9
	leaq	-28(%rbp), %rdx
	movl	24(%rbp), %eax
	movq	%rdx, %r8
	movl	$35713, %edx
	movl	%eax, %ecx
	call	*%r9
.LEHE9:
	movl	-28(%rbp), %eax
	cmpl	$1, %eax
	je	.L39
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movl	$0, -32(%rbp)
	movq	__imp___glewGetShaderiv(%rip), %rax
	movq	(%rax), %r9
	leaq	-32(%rbp), %rdx
	movl	24(%rbp), %eax
	movq	%rdx, %r8
	movl	$35716, %edx
	movl	%eax, %ecx
.LEHB10:
	call	*%r9
.LEHE10:
	leaq	23(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	leaq	23(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB11:
	call	_ZNSt6vectorIcSaIcEEC1EyRKS0_
.LEHE11:
	leaq	23(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	__imp___glewGetShaderInfoLog(%rip), %rax
	movq	(%rax), %rbx
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIcSaIcEEixEy
	movq	%rax, %rcx
	movl	-32(%rbp), %edx
	leaq	-32(%rbp), %r8
	movl	24(%rbp), %eax
	movq	%rcx, %r9
	movl	%eax, %ecx
.LEHB12:
	call	*%rbx
	leaq	.LC7(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	80(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, 28(%rbp)
.L41:
	movl	-32(%rbp), %eax
	cmpl	%eax, 28(%rbp)
	jge	.L40
	movl	28(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIcSaIcEE2atEy
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	addl	$1, 28(%rbp)
	jmp	.L41
.L40:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
.LEHE12:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIcSaIcEED1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L42
.L39:
	leaq	.LC8(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB13:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rcx
	movq	80(%rbp), %rax
	movq	%rax, %rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.L42:
	movq	__imp___glewAttachShader(%rip), %rax
	movq	(%rax), %r8
	movq	64(%rbp), %rax
	movl	(%rax), %eax
	movl	24(%rbp), %edx
	movl	%eax, %ecx
	call	*%r8
.LEHE13:
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L51
.L49:
	movq	%rax, %rbx
	leaq	23(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L44
.L50:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIcSaIcEED1Ev
	jmp	.L44
.L48:
	movq	%rax, %rbx
.L44:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L46
.L47:
	movq	%rax, %rbx
.L46:
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB14:
	call	_Unwind_Resume
	nop
.LEHE14:
.L51:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3944:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3944-.LLSDACSB3944
.LLSDACSB3944:
	.uleb128 .LEHB8-.LFB3944
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB3944
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L47-.LFB3944
	.uleb128 0
	.uleb128 .LEHB10-.LFB3944
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L48-.LFB3944
	.uleb128 0
	.uleb128 .LEHB11-.LFB3944
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L49-.LFB3944
	.uleb128 0
	.uleb128 .LEHB12-.LFB3944
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L50-.LFB3944
	.uleb128 0
	.uleb128 .LEHB13-.LFB3944
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L47-.LFB3944
	.uleb128 0
	.uleb128 .LEHB14-.LFB3944
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE3944:
	.text
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC9:
	.ascii "[Failed to link shader program]\0"
	.align 8
.LC10:
	.ascii "[Shader program successfully linked]\0"
	.text
	.align 2
	.globl	_ZN13ShaderProgram4linkEv
	.def	_ZN13ShaderProgram4linkEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ShaderProgram4linkEv
_ZN13ShaderProgram4linkEv:
.LFB3945:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	__imp___glewLinkProgram(%rip), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
.LEHB15:
	call	*%rdx
	movq	__imp___glewValidateProgram(%rip), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	call	*%rdx
	movl	$0, -28(%rbp)
	movq	__imp___glewGetProgramiv(%rip), %rax
	movq	(%rax), %r9
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	leaq	-28(%rbp), %rdx
	movq	%rdx, %r8
	movl	$35714, %edx
	movl	%eax, %ecx
	call	*%r9
.LEHE15:
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	jne	.L53
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movl	$0, -32(%rbp)
	movq	__imp___glewGetProgramiv(%rip), %rax
	movq	(%rax), %r9
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %r8
	movl	$35716, %edx
	movl	%eax, %ecx
.LEHB16:
	call	*%r9
.LEHE16:
	leaq	-21(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1Ev
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-21(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
.LEHB17:
	call	_ZNSt6vectorIcSaIcEEC1EyRKS0_
.LEHE17:
	leaq	-21(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	movq	__imp___glewGetProgramInfoLog(%rip), %rax
	movq	(%rax), %rbx
	leaq	-64(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZNSt6vectorIcSaIcEEixEy
	movq	%rax, %rcx
	movl	-32(%rbp), %edx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %r8
	movq	%rcx, %r9
	movl	%eax, %ecx
.LEHB18:
	call	*%rbx
	leaq	.LC9(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$0, -20(%rbp)
.L55:
	movl	-32(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jge	.L54
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIcSaIcEE2atEy
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc
	addl	$1, -20(%rbp)
	jmp	.L55
.L54:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
.LEHE18:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIcSaIcEED1Ev
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L52
.L53:
	leaq	.LC10(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
.LEHB19:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	jmp	.L52
.L61:
	movq	%rax, %rbx
	leaq	-21(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	jmp	.L58
.L62:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIcSaIcEED1Ev
	jmp	.L58
.L60:
	movq	%rax, %rbx
.L58:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
	call	_Unwind_Resume
	nop
.LEHE19:
.L52:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3945:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3945-.LLSDACSB3945
.LLSDACSB3945:
	.uleb128 .LEHB15-.LFB3945
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB3945
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L60-.LFB3945
	.uleb128 0
	.uleb128 .LEHB17-.LFB3945
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L61-.LFB3945
	.uleb128 0
	.uleb128 .LEHB18-.LFB3945
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L62-.LFB3945
	.uleb128 0
	.uleb128 .LEHB19-.LFB3945
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE3945:
	.text
	.seh_endproc
	.align 2
	.globl	_ZN13ShaderProgram3useEv
	.def	_ZN13ShaderProgram3useEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ShaderProgram3useEv
_ZN13ShaderProgram3useEv:
.LFB3946:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	__imp___glewUseProgram(%rip), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	call	*%rdx
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC11:
	.ascii "directionalLight.direction\0"
	.align 8
.LC12:
	.ascii "directionalLight.base.diffusion\0"
.LC13:
	.ascii "directionalLight.base.ambient\0"
.LC14:
	.ascii "directionalLight.base.color\0"
	.text
	.align 2
	.globl	_ZN13ShaderProgram19useDirectionalLightEP16DirectionalLight
	.def	_ZN13ShaderProgram19useDirectionalLightEP16DirectionalLight;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ShaderProgram19useDirectionalLightEP16DirectionalLight
_ZN13ShaderProgram19useDirectionalLightEP16DirectionalLight:
.LFB3947:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	.LC11(%rip), %rdx
	movq	-32(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %ebx
	leaq	.LC12(%rip), %rdx
	movq	-32(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %edi
	leaq	.LC13(%rip), %rdx
	movq	-32(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdx
	movq	-32(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%ebx, 32(%rsp)
	movl	%edi, %r9d
	movl	%esi, %r8d
	movq	%rax, %rcx
	call	_ZN16DirectionalLight3useEjjjj
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC15:
	.ascii "pointLight[%d].base.color\0"
.LC16:
	.ascii "pointLight[%d].base.ambient\0"
.LC17:
	.ascii "pointLight[%d].base.diffusion\0"
.LC18:
	.ascii "pointLight[%d].position\0"
.LC19:
	.ascii "pointLight[%d].constant\0"
.LC20:
	.ascii "pointLight[%d].linear\0"
.LC21:
	.ascii "pointLight[%d].exponent\0"
	.text
	.align 2
	.globl	_ZN13ShaderProgram16setupPointLightsEv
	.def	_ZN13ShaderProgram16setupPointLightsEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ShaderProgram16setupPointLightsEv
_ZN13ShaderProgram16setupPointLightsEv:
.LFB3948:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$144, %rsp
	.seh_stackalloc	144
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	$0, -8(%rbp)
.L67:
	cmpq	$2, -8(%rbp)
	ja	.L68
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC15(%rip), %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZL8snprintfPcyPKcz
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %ecx
	movq	16(%rbp), %r8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%r8, %rax
	addq	$8, %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC16(%rip), %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZL8snprintfPcyPKcz
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %ecx
	movq	16(%rbp), %r8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%r8, %rax
	addq	$16, %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC17(%rip), %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZL8snprintfPcyPKcz
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %ecx
	movq	16(%rbp), %r8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%r8, %rax
	addq	$12, %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC18(%rip), %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZL8snprintfPcyPKcz
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %ecx
	movq	16(%rbp), %r8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%r8, %rax
	addq	$20, %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC19(%rip), %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZL8snprintfPcyPKcz
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %ecx
	movq	16(%rbp), %r8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%r8, %rax
	addq	$24, %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC20(%rip), %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZL8snprintfPcyPKcz
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %ecx
	movq	16(%rbp), %r8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%r8, %rax
	addq	$28, %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC21(%rip), %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZL8snprintfPcyPKcz
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movl	%eax, %ecx
	movq	16(%rbp), %r8
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%r8, %rax
	addq	$32, %rax
	movl	%ecx, (%rax)
	addq	$1, -8(%rbp)
	jmp	.L67
.L68:
	nop
	addq	$144, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC22:
	.ascii "pointLightCount\0"
	.text
	.align 2
	.globl	_ZN13ShaderProgram13usePointLightEP10PointLightj
	.def	_ZN13ShaderProgram13usePointLightEP10PointLightj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13ShaderProgram13usePointLightEP10PointLightj
_ZN13ShaderProgram13usePointLightEP10PointLightj:
.LFB3949:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movl	%r8d, 48(%rbp)
	movq	__imp___glewUniform1f(%rip), %rax
	movq	(%rax), %rbx
	movl	48(%rbp), %eax
	testq	%rax, %rax
	js	.L70
	pxor	%xmm6, %xmm6
	cvtsi2ssq	%rax, %xmm6
	jmp	.L71
.L70:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
	movaps	%xmm0, %xmm6
.L71:
	leaq	.LC22(%rip), %rdx
	movq	32(%rbp), %rcx
	call	_ZN13ShaderProgramixEPKc
	movaps	%xmm6, %xmm1
	movl	%eax, %ecx
	call	*%rbx
	movq	$0, -24(%rbp)
.L73:
	cmpq	$2, -24(%rbp)
	ja	.L74
	movq	32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$32, %rax
	movl	(%rax), %r10d
	movq	32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$28, %rax
	movl	(%rax), %r9d
	movq	32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$24, %rax
	movl	(%rax), %r8d
	movq	32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	addq	$20, %rax
	movl	(%rax), %ecx
	movq	32(%rbp), %r11
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%r11, %rax
	addq	$12, %rax
	movl	(%rax), %ebx
	movq	32(%rbp), %r11
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%r11, %rax
	addq	$16, %rax
	movl	(%rax), %r11d
	movq	32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$3, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$8, %rax
	movl	(%rax), %edx
	movq	40(%rbp), %rax
	movl	%r10d, 56(%rsp)
	movl	%r9d, 48(%rsp)
	movl	%r8d, 40(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%ebx, %r9d
	movl	%r11d, %r8d
	movq	%rax, %rcx
	call	_ZN10PointLight3useEjjjjjjj
	addq	$1, -24(%rbp)
	jmp	.L73
.L74:
	nop
	movaps	-16(%rbp), %xmm6
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.def	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB3953:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.def	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB3952:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	$0, -8(%rbp)
.L79:
	movb	$0, -9(%rbp)
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-9(%rbp), %rax
	movq	%rax, %rdx
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	je	.L78
	addq	$1, -8(%rbp)
	jmp	.L79
.L78:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev:
.LFB4061:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIcED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"x"
	.linkonce discard
	.globl	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
	.def	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_:
.LFB4207:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB20:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE20:
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB21:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
.LEHE21:
	jmp	.L86
.L85:
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB22:
	call	_Unwind_Resume
.LEHE22:
.L86:
	movq	-64(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4207:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4207-.LLSDACSB4207
.LLSDACSB4207:
	.uleb128 .LEHB20-.LFB4207
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB4207
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L85-.LFB4207
	.uleb128 0
	.uleb128 .LEHB22-.LFB4207
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE4207:
	.section	.text$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_:
.LFB4337:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rbx
	movq	-64(%rbp), %rcx
.LEHB23:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	movq	-48(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_
.LEHE23:
	cmpq	$0, -56(%rbp)
	je	.L88
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
.LEHB24:
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-56(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L89
.L88:
	movq	-56(%rbp), %rax
	subq	$1, %rax
.L89:
	movq	-56(%rbp), %rdx
	movq	%rax, %r8
	movq	-64(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
.LEHE24:
	jmp	.L92
.L91:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB25:
	call	_Unwind_Resume
	nop
.LEHE25:
.L92:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4337:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4337-.LLSDACSB4337
.LLSDACSB4337:
	.uleb128 .LEHB23-.LFB4337
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB4337
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L91-.LFB4337
	.uleb128 0
	.uleb128 .LEHB25-.LFB4337
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE4337:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIcSaIcEEC1EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIcSaIcEEC1EyRKS0_
	.def	_ZNSt6vectorIcSaIcEEC1EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIcSaIcEEC1EyRKS0_
_ZNSt6vectorIcSaIcEEC1EyRKS0_:
.LFB4344:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rbx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
.LEHB26:
	call	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEyRKS0_
	movq	-48(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZNSt12_Vector_baseIcSaIcEEC2EyRKS0_
.LEHE26:
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB27:
	call	_ZNSt6vectorIcSaIcEE21_M_default_initializeEy
.LEHE27:
	jmp	.L96
.L95:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIcSaIcEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB28:
	call	_Unwind_Resume
	nop
.LEHE28:
.L96:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4344:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4344-.LLSDACSB4344
.LLSDACSB4344:
	.uleb128 .LEHB26-.LFB4344
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB4344
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L95-.LFB4344
	.uleb128 0
	.uleb128 .LEHB28-.LFB4344
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE4344:
	.section	.text$_ZNSt6vectorIcSaIcEEC1EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIcSaIcEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIcSaIcEED1Ev
	.def	_ZNSt6vectorIcSaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIcSaIcEED1Ev
_ZNSt6vectorIcSaIcEED1Ev:
.LFB4347:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIcSaIcEED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4347:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4347-.LLSDACSB4347
.LLSDACSB4347:
.LLSDACSE4347:
	.section	.text$_ZNSt6vectorIcSaIcEED1Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIcSaIcEEixEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIcSaIcEEixEy
	.def	_ZNSt6vectorIcSaIcEEixEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIcSaIcEEixEy
_ZNSt6vectorIcSaIcEEixEy:
.LFB4348:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIcSaIcEE2atEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIcSaIcEE2atEy
	.def	_ZNSt6vectorIcSaIcEE2atEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIcSaIcEE2atEy
_ZNSt6vectorIcSaIcEE2atEy:
.LFB4349:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorIcSaIcEE14_M_range_checkEy
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt6vectorIcSaIcEEixEy
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_:
.LFB4384:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.ascii "cannot create std::vector larger than max_size()\0"
	.section	.text$_ZNSt6vectorIcSaIcEE17_S_check_init_lenEyRKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEyRKS0_
	.def	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIcSaIcEE17_S_check_init_lenEyRKS0_
_ZNSt6vectorIcSaIcEE17_S_check_init_lenEyRKS0_:
.LFB4501:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcEC1ERKS_
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_
	cmpq	%rax, -48(%rbp)
	seta	%bl
	leaq	-81(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSaIcED1Ev
	testb	%bl, %bl
	je	.L104
	leaq	.LC23(%rip), %rcx
	call	_ZSt20__throw_length_errorPKc
.L104:
	movq	-48(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	.def	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev:
.LFB4505:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSaIcED2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIcSaIcEEC2EyRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIcSaIcEEC2EyRKS0_
	.def	_ZNSt12_Vector_baseIcSaIcEEC2EyRKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIcSaIcEEC2EyRKS0_
_ZNSt12_Vector_baseIcSaIcEEC2EyRKS0_:
.LFB4506:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx
.LEHB29:
	call	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEy
.LEHE29:
	jmp	.L110
.L109:
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB30:
	call	_Unwind_Resume
	nop
.LEHE30:
.L110:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4506:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4506-.LLSDACSB4506
.LLSDACSB4506:
	.uleb128 .LEHB29-.LFB4506
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L109-.LFB4506
	.uleb128 0
	.uleb128 .LEHB30-.LFB4506
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE4506:
	.section	.text$_ZNSt12_Vector_baseIcSaIcEEC2EyRKS0_,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIcSaIcEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIcSaIcEED2Ev
	.def	_ZNSt12_Vector_baseIcSaIcEED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIcSaIcEED2Ev
_ZNSt12_Vector_baseIcSaIcEED2Ev:
.LFB4509:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcy
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA4509:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4509-.LLSDACSB4509
.LLSDACSB4509:
.LLSDACSE4509:
	.section	.text$_ZNSt12_Vector_baseIcSaIcEED2Ev,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt6vectorIcSaIcEE21_M_default_initializeEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt6vectorIcSaIcEE21_M_default_initializeEy
	.def	_ZNSt6vectorIcSaIcEE21_M_default_initializeEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIcSaIcEE21_M_default_initializeEy
_ZNSt6vectorIcSaIcEE21_M_default_initializeEy:
.LFB4511:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt27__uninitialized_default_n_aIPcycET_S1_T0_RSaIT1_E
	movq	16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
	.def	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv
_ZNSt12_Vector_baseIcSaIcEE19_M_get_Tp_allocatorEv:
.LFB4512:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPccEvT_S1_RSaIT0_E,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
	.def	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPccEvT_S1_RSaIT0_E
_ZSt8_DestroyIPccEvT_S1_RSaIT0_E:
.LFB4513:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8_DestroyIPcEvT_S1_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\0"
	.section	.text$_ZNKSt6vectorIcSaIcEE14_M_range_checkEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIcSaIcEE14_M_range_checkEy
	.def	_ZNKSt6vectorIcSaIcEE14_M_range_checkEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIcSaIcEE14_M_range_checkEy
_ZNKSt6vectorIcSaIcEE14_M_range_checkEy:
.LFB4514:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorIcSaIcEE4sizeEv
	cmpq	%rax, 24(%rbp)
	setnb	%al
	testb	%al, %al
	je	.L118
	movq	16(%rbp), %rcx
	call	_ZNKSt6vectorIcSaIcEE4sizeEv
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC24(%rip), %rcx
	call	_ZSt24__throw_out_of_range_fmtPKcz
.L118:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type:
.LFB4525:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_
	.def	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_
_ZNSt6vectorIcSaIcEE11_S_max_sizeERKS0_:
.LFB4582:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt3minIyERKT_S2_S2_
	movq	(%rax), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_
	.def	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_
_ZNSt12_Vector_baseIcSaIcEE12_Vector_implC1ERKS0_:
.LFB4585:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSaIcEC2ERKS_
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEy
	.def	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEy
_ZNSt12_Vector_baseIcSaIcEE17_M_create_storageEy:
.LFB4586:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEy
	movq	16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcy
	.def	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcy
_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcy:
.LFB4587:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L126
	movq	16(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcy
.L126:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt27__uninitialized_default_n_aIPcycET_S1_T0_RSaIT1_E,"x"
	.linkonce discard
	.globl	_ZSt27__uninitialized_default_n_aIPcycET_S1_T0_RSaIT1_E
	.def	_ZSt27__uninitialized_default_n_aIPcycET_S1_T0_RSaIT1_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt27__uninitialized_default_n_aIPcycET_S1_T0_RSaIT1_E
_ZSt27__uninitialized_default_n_aIPcycET_S1_T0_RSaIT1_E:
.LFB4588:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt25__uninitialized_default_nIPcyET_S1_T0_
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPcEvT_S1_,"x"
	.linkonce discard
	.globl	_ZSt8_DestroyIPcEvT_S1_
	.def	_ZSt8_DestroyIPcEvT_S1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPcEvT_S1_
_ZSt8_DestroyIPcEvT_S1_:
.LFB4589:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNKSt6vectorIcSaIcEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt6vectorIcSaIcEE4sizeEv
	.def	_ZNKSt6vectorIcSaIcEE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt6vectorIcSaIcEE4sizeEv
_ZNKSt6vectorIcSaIcEE4sizeEv:
.LFB4590:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcy,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcy
	.def	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcy
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcy:
.LFB4595:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"x"
	.linkonce discard
	.globl	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.def	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB4603:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-64(%rbp), %rcx
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "basic_string::_M_construct null not valid\0"
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB4602:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	testb	%al, %al
	je	.L136
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L136
	movl	$1, %eax
	jmp	.L137
.L136:
	movl	$0, %eax
.L137:
	testb	%al, %al
	je	.L138
	leaq	.LC25(%rip), %rcx
.LEHB31:
	call	_ZSt19__throw_logic_errorPKc
.L138:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L139
	leaq	-88(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy
.LEHE31:
.L139:
	movq	-48(%rbp), %rcx
.LEHB32:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
.LEHE32:
	movq	%rax, %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
.LEHB33:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy
.LEHE33:
	jmp	.L144
.L142:
	movq	%rax, %rcx
	call	__cxa_begin_catch
	movq	-48(%rbp), %rcx
.LEHB34:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	call	__cxa_rethrow
.LEHE34:
.L143:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rcx
.LEHB35:
	call	_Unwind_Resume
	nop
.LEHE35:
.L144:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA4602:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4602-.LLSDATTD4602
.LLSDATTD4602:
	.byte	0x1
	.uleb128 .LLSDACSE4602-.LLSDACSB4602
.LLSDACSB4602:
	.uleb128 .LEHB31-.LFB4602
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB32-.LFB4602
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L142-.LFB4602
	.uleb128 0x1
	.uleb128 .LEHB33-.LFB4602
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB4602
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L143-.LFB4602
	.uleb128 0
	.uleb128 .LEHB35-.LFB4602
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE4602:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4602:
	.section	.text$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"x"
	.linkonce discard
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	.def	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_:
.LFB4649:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt3minIyERKT_S2_S2_,"x"
	.linkonce discard
	.globl	_ZSt3minIyERKT_S2_S2_
	.def	_ZSt3minIyERKT_S2_S2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt3minIyERKT_S2_S2_
_ZSt3minIyERKT_S2_S2_:
.LFB4650:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L148
	movq	24(%rbp), %rax
	jmp	.L149
.L148:
	movq	16(%rbp), %rax
.L149:
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
	.def	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev
_ZNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataC2Ev:
.LFB4652:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEy,"x"
	.linkonce discard
	.align 2
	.globl	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEy
	.def	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEy
_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEy:
.LFB4654:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L152
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNSt16allocator_traitsISaIcEE8allocateERS0_y
	jmp	.L154
.L152:
	movl	$0, %eax
.L154:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt25__uninitialized_default_nIPcyET_S1_T0_,"x"
	.linkonce discard
	.globl	_ZSt25__uninitialized_default_nIPcyET_S1_T0_
	.def	_ZSt25__uninitialized_default_nIPcyET_S1_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt25__uninitialized_default_nIPcyET_S1_T0_
_ZSt25__uninitialized_default_nIPcyET_S1_T0_:
.LFB4655:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	$1, -1(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcyEET_S3_T0_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_,"x"
	.linkonce discard
	.globl	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
	.def	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_
_ZNSt12_Destroy_auxILb1EE9__destroyIPcEEvT_S3_:
.LFB4656:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcy,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcy
	.def	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcy
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcy:
.LFB4658:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZdlPvy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"x"
	.linkonce discard
	.globl	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.def	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
.LFB4666:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	sete	%al
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"x"
	.linkonce discard
	.globl	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.def	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB4667:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"x"
	.linkonce discard
	.globl	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.def	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB4668:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIcE8max_sizeEv:
.LFB4704:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt16allocator_traitsISaIcEE8allocateERS0_y,"x"
	.linkonce discard
	.globl	_ZNSt16allocator_traitsISaIcEE8allocateERS0_y
	.def	_ZNSt16allocator_traitsISaIcEE8allocateERS0_y;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt16allocator_traitsISaIcEE8allocateERS0_y
_ZNSt16allocator_traitsISaIcEE8allocateERS0_y:
.LFB4705:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN9__gnu_cxx13new_allocatorIcE8allocateEyPKv
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcyEET_S3_T0_,"x"
	.linkonce discard
	.globl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcyEET_S3_T0_
	.def	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcyEET_S3_T0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcyEET_S3_T0_
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPcyEET_S3_T0_:
.LFB4706:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movb	$0, -1(%rbp)
	leaq	-1(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt6fill_nIPcycET_S1_T0_RKT1_
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"x"
	.linkonce discard
	.globl	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.def	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_
_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB4709:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	.def	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv:
.LFB4730:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movabsq	$9223372036854775807, %rax
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZN9__gnu_cxx13new_allocatorIcE8allocateEyPKv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN9__gnu_cxx13new_allocatorIcE8allocateEyPKv
	.def	_ZN9__gnu_cxx13new_allocatorIcE8allocateEyPKv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN9__gnu_cxx13new_allocatorIcE8allocateEyPKv
_ZN9__gnu_cxx13new_allocatorIcE8allocateEyPKv:
.LFB4731:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rcx
	call	_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	cmpq	%rax, 24(%rbp)
	seta	%al
	testb	%al, %al
	je	.L177
	call	_ZSt17__throw_bad_allocv
.L177:
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_Znwy
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt6fill_nIPcycET_S1_T0_RKT1_,"x"
	.linkonce discard
	.globl	_ZSt6fill_nIPcycET_S1_T0_RKT1_
	.def	_ZSt6fill_nIPcycET_S1_T0_RKT1_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt6fill_nIPcycET_S1_T0_RKT1_
_ZSt6fill_nIPcycET_S1_T0_RKT1_:
.LFB4732:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	leaq	-64(%rbp), %rcx
	call	_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt17__size_to_integery
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	%ebx, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZSt10__fill_n_aIPcycET_S1_T0_RKT1_St26random_access_iterator_tag
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt10__fill_n_aIPcycET_S1_T0_RKT1_St26random_access_iterator_tag,"x"
	.linkonce discard
	.globl	_ZSt10__fill_n_aIPcycET_S1_T0_RKT1_St26random_access_iterator_tag
	.def	_ZSt10__fill_n_aIPcycET_S1_T0_RKT1_St26random_access_iterator_tag;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt10__fill_n_aIPcycET_S1_T0_RKT1_St26random_access_iterator_tag
_ZSt10__fill_n_aIPcycET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB4742:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 24(%rbp)
	jne	.L182
	movq	16(%rbp), %rax
	jmp	.L183
.L182:
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movq	32(%rbp), %rdx
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt8__fill_aIPccEvT_S1_RKT0_
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
.L183:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt8__fill_aIPccEvT_S1_RKT0_,"x"
	.linkonce discard
	.globl	_ZSt8__fill_aIPccEvT_S1_RKT0_
	.def	_ZSt8__fill_aIPccEvT_S1_RKT0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8__fill_aIPccEvT_S1_RKT0_
_ZSt8__fill_aIPccEvT_S1_RKT0_:
.LFB4747:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.text$_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_,"x"
	.linkonce discard
	.globl	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_
	.def	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_
_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsrSt9__is_byteIT_E7__valueEvE6__typeEPS3_S7_RKS3_:
.LFB4748:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movq	24(%rbp), %rax
	subq	16(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L187
	movzbl	-1(%rbp), %eax
	movzbl	%al, %eax
	movq	-16(%rbp), %rdx
	movq	%rdx, %r8
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	memset
.L187:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB4750:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB4749:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L191
	cmpl	$65535, 24(%rbp)
	jne	.L191
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
.L191:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I__Z8readFileB5cxx11PKc;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__Z8readFileB5cxx11PKc
_GLOBAL__sub_I__Z8readFileB5cxx11PKc:
.LFB4751:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__Z8readFileB5cxx11PKc
	.ident	"GCC: (Rev6, Built by MSYS2 project) 10.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	__mingw_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE7is_openEv;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcEC1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc;	.scl	2;	.type	32;	.endef
	.def	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE;	.scl	2;	.type	32;	.endef
	.def	_ZN16DirectionalLight3useEjjjj;	.scl	2;	.type	32;	.endef
	.def	_ZN10PointLight3useEjjjjjjj;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcED2Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcEC1ERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZSt24__throw_out_of_range_fmtPKcz;	.scl	2;	.type	32;	.endef
	.def	_ZNSaIcEC2ERKS_;	.scl	2;	.type	32;	.endef
	.def	_ZSt19__throw_logic_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy;	.scl	2;	.type	32;	.endef
	.def	__cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv;	.scl	2;	.type	32;	.endef
	.def	__cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	__cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
