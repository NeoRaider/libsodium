#if defined(__amd64) || defined(__amd64__) || defined(__x86_64__)

.text
.p2align 5

#ifdef __ELF__
.type crypto_stream_salsa20,@function
#endif

.globl _crypto_stream_salsa20
.globl crypto_stream_salsa20
_crypto_stream_salsa20:
crypto_stream_salsa20:
mov %rsp,%r11
and $31,%r11
add $480,%r11
sub %r11,%rsp
movq %r11,352(%rsp)
movq %r12,360(%rsp)
movq %r13,368(%rsp)
movq %r14,376(%rsp)
movq %r15,384(%rsp)
movq %rbx,392(%rsp)
movq %rbp,400(%rsp)
mov  %rsi,%r9
mov  %rdi,%rdi
mov  %rdi,%rsi
mov  %rdx,%rdx
mov  %rcx,%r10
cmp  $0,%r9
jbe ._done

mov  $0,%rax
mov  %r9,%rcx
rep stosb
sub  %r9,%rdi
jmp ._start

.text
.p2align 5

#ifdef __ELF__
.type crypto_stream_salsa20_xor,@function
#endif

.globl _crypto_stream_salsa20_xor
.globl crypto_stream_salsa20_xor
_crypto_stream_salsa20_xor:
crypto_stream_salsa20_xor:
mov %rsp,%r11
and $31,%r11
add $480,%r11
sub %r11,%rsp
movq %r11,352(%rsp)
movq %r12,360(%rsp)
movq %r13,368(%rsp)
movq %r14,376(%rsp)
movq %r15,384(%rsp)
movq %rbx,392(%rsp)
movq %rbp,400(%rsp)
mov  %rdi,%rdi
mov  %rsi,%rsi
mov  %rdx,%r9
mov  %rcx,%rdx
mov  %r8,%r10
cmp  $0,%r9
jbe ._done

._start:
movl   20(%r10),%ecx
movl   0(%r10),%r8d
movl   0(%rdx),%eax
movl   16(%r10),%r11d
movl %ecx,0(%rsp)
movl %r8d,4+0(%rsp)
movl %eax,8+0(%rsp)
movl %r11d,12+0(%rsp)
mov  $0,%rcx
movl   24(%r10),%r8d
movl   4(%r10),%eax
movl   4(%rdx),%edx
movl %ecx,16(%rsp)
movl %r8d,4+16(%rsp)
movl %eax,8+16(%rsp)
movl %edx,12+16(%rsp)
movl   12(%r10),%edx
mov  $0,%rcx
movl   28(%r10),%r8d
movl   8(%r10),%eax
movl %edx,32(%rsp)
movl %ecx,4+32(%rsp)
movl %r8d,8+32(%rsp)
movl %eax,12+32(%rsp)
mov  $1634760805,%rdx
mov  $857760878,%rcx
mov  $2036477234,%r8
mov  $1797285236,%rax
movl %edx,48(%rsp)
movl %ecx,4+48(%rsp)
movl %r8d,8+48(%rsp)
movl %eax,12+48(%rsp)
cmp  $256,%r9
jb ._bytesbetween1and255

movdqa 48(%rsp),%xmm0
pshufd $0x55,%xmm0,%xmm1
pshufd $0xaa,%xmm0,%xmm2
pshufd $0xff,%xmm0,%xmm3
pshufd $0x00,%xmm0,%xmm0
movdqa %xmm1,64(%rsp)
movdqa %xmm2,80(%rsp)
movdqa %xmm3,96(%rsp)
movdqa %xmm0,112(%rsp)
movdqa 0(%rsp),%xmm0
pshufd $0xaa,%xmm0,%xmm1
pshufd $0xff,%xmm0,%xmm2
pshufd $0x00,%xmm0,%xmm3
pshufd $0x55,%xmm0,%xmm0
movdqa %xmm1,128(%rsp)
movdqa %xmm2,144(%rsp)
movdqa %xmm3,160(%rsp)
movdqa %xmm0,176(%rsp)
movdqa 16(%rsp),%xmm0
pshufd $0xff,%xmm0,%xmm1
pshufd $0x55,%xmm0,%xmm2
pshufd $0xaa,%xmm0,%xmm0
movdqa %xmm1,192(%rsp)
movdqa %xmm2,208(%rsp)
movdqa %xmm0,224(%rsp)
movdqa 32(%rsp),%xmm0
pshufd $0x00,%xmm0,%xmm1
pshufd $0xaa,%xmm0,%xmm2
pshufd $0xff,%xmm0,%xmm0
movdqa %xmm1,240(%rsp)
movdqa %xmm2,256(%rsp)
movdqa %xmm0,272(%rsp)

._bytesatleast256:
movl 16(%rsp),%edx
movl 4+32(%rsp),%ecx
movl %edx,288(%rsp)
movl %ecx,304(%rsp)
add  $1,%rdx
shl  $32,%rcx
add  %rcx,%rdx
mov  %rdx,%rcx
shr  $32,%rcx
movl %edx,4+288(%rsp)
movl %ecx,4+304(%rsp)
add  $1,%rdx
shl  $32,%rcx
add  %rcx,%rdx
mov  %rdx,%rcx
shr  $32,%rcx
movl %edx,8+288(%rsp)
movl %ecx,8+304(%rsp)
add  $1,%rdx
shl  $32,%rcx
add  %rcx,%rdx
mov  %rdx,%rcx
shr  $32,%rcx
movl %edx,12+288(%rsp)
movl %ecx,12+304(%rsp)
add  $1,%rdx
shl  $32,%rcx
add  %rcx,%rdx
mov  %rdx,%rcx
shr  $32,%rcx
movl %edx,16(%rsp)
movl %ecx,4+32(%rsp)
movq %r9,408(%rsp)
mov  $20,%rdx
movdqa 64(%rsp),%xmm0
movdqa 80(%rsp),%xmm1
movdqa 96(%rsp),%xmm2
movdqa 256(%rsp),%xmm3
movdqa 272(%rsp),%xmm4
movdqa 128(%rsp),%xmm5
movdqa 144(%rsp),%xmm6
movdqa 176(%rsp),%xmm7
movdqa 192(%rsp),%xmm8
movdqa 208(%rsp),%xmm9
movdqa 224(%rsp),%xmm10
movdqa 304(%rsp),%xmm11
movdqa 112(%rsp),%xmm12
movdqa 160(%rsp),%xmm13
movdqa 240(%rsp),%xmm14
movdqa 288(%rsp),%xmm15

._mainloop1:
movdqa %xmm1,320(%rsp)
movdqa %xmm2,336(%rsp)
movdqa %xmm13,%xmm1
paddd %xmm12,%xmm1
movdqa %xmm1,%xmm2
pslld $7,%xmm1
pxor  %xmm1,%xmm14
psrld $25,%xmm2
pxor  %xmm2,%xmm14
movdqa %xmm7,%xmm1
paddd %xmm0,%xmm1
movdqa %xmm1,%xmm2
pslld $7,%xmm1
pxor  %xmm1,%xmm11
psrld $25,%xmm2
pxor  %xmm2,%xmm11
movdqa %xmm12,%xmm1
paddd %xmm14,%xmm1
movdqa %xmm1,%xmm2
pslld $9,%xmm1
pxor  %xmm1,%xmm15
psrld $23,%xmm2
pxor  %xmm2,%xmm15
movdqa %xmm0,%xmm1
paddd %xmm11,%xmm1
movdqa %xmm1,%xmm2
pslld $9,%xmm1
pxor  %xmm1,%xmm9
psrld $23,%xmm2
pxor  %xmm2,%xmm9
movdqa %xmm14,%xmm1
paddd %xmm15,%xmm1
movdqa %xmm1,%xmm2
pslld $13,%xmm1
pxor  %xmm1,%xmm13
psrld $19,%xmm2
pxor  %xmm2,%xmm13
movdqa %xmm11,%xmm1
paddd %xmm9,%xmm1
movdqa %xmm1,%xmm2
pslld $13,%xmm1
pxor  %xmm1,%xmm7
psrld $19,%xmm2
pxor  %xmm2,%xmm7
movdqa %xmm15,%xmm1
paddd %xmm13,%xmm1
movdqa %xmm1,%xmm2
pslld $18,%xmm1
pxor  %xmm1,%xmm12
psrld $14,%xmm2
pxor  %xmm2,%xmm12
movdqa 320(%rsp),%xmm1
movdqa %xmm12,320(%rsp)
movdqa %xmm9,%xmm2
paddd %xmm7,%xmm2
movdqa %xmm2,%xmm12
pslld $18,%xmm2
pxor  %xmm2,%xmm0
psrld $14,%xmm12
pxor  %xmm12,%xmm0
movdqa %xmm5,%xmm2
paddd %xmm1,%xmm2
movdqa %xmm2,%xmm12
pslld $7,%xmm2
pxor  %xmm2,%xmm3
psrld $25,%xmm12
pxor  %xmm12,%xmm3
movdqa 336(%rsp),%xmm2
movdqa %xmm0,336(%rsp)
movdqa %xmm6,%xmm0
paddd %xmm2,%xmm0
movdqa %xmm0,%xmm12
pslld $7,%xmm0
pxor  %xmm0,%xmm4
psrld $25,%xmm12
pxor  %xmm12,%xmm4
movdqa %xmm1,%xmm0
paddd %xmm3,%xmm0
movdqa %xmm0,%xmm12
pslld $9,%xmm0
pxor  %xmm0,%xmm10
psrld $23,%xmm12
pxor  %xmm12,%xmm10
movdqa %xmm2,%xmm0
paddd %xmm4,%xmm0
movdqa %xmm0,%xmm12
pslld $9,%xmm0
pxor  %xmm0,%xmm8
psrld $23,%xmm12
pxor  %xmm12,%xmm8
movdqa %xmm3,%xmm0
paddd %xmm10,%xmm0
movdqa %xmm0,%xmm12
pslld $13,%xmm0
pxor  %xmm0,%xmm5
psrld $19,%xmm12
pxor  %xmm12,%xmm5
movdqa %xmm4,%xmm0
paddd %xmm8,%xmm0
movdqa %xmm0,%xmm12
pslld $13,%xmm0
pxor  %xmm0,%xmm6
psrld $19,%xmm12
pxor  %xmm12,%xmm6
movdqa %xmm10,%xmm0
paddd %xmm5,%xmm0
movdqa %xmm0,%xmm12
pslld $18,%xmm0
pxor  %xmm0,%xmm1
psrld $14,%xmm12
pxor  %xmm12,%xmm1
movdqa 320(%rsp),%xmm0
movdqa %xmm1,320(%rsp)
movdqa %xmm4,%xmm1
paddd %xmm0,%xmm1
movdqa %xmm1,%xmm12
pslld $7,%xmm1
pxor  %xmm1,%xmm7
psrld $25,%xmm12
pxor  %xmm12,%xmm7
movdqa %xmm8,%xmm1
paddd %xmm6,%xmm1
movdqa %xmm1,%xmm12
pslld $18,%xmm1
pxor  %xmm1,%xmm2
psrld $14,%xmm12
pxor  %xmm12,%xmm2
movdqa 336(%rsp),%xmm12
movdqa %xmm2,336(%rsp)
movdqa %xmm14,%xmm1
paddd %xmm12,%xmm1
movdqa %xmm1,%xmm2
pslld $7,%xmm1
pxor  %xmm1,%xmm5
psrld $25,%xmm2
pxor  %xmm2,%xmm5
movdqa %xmm0,%xmm1
paddd %xmm7,%xmm1
movdqa %xmm1,%xmm2
pslld $9,%xmm1
pxor  %xmm1,%xmm10
psrld $23,%xmm2
pxor  %xmm2,%xmm10
movdqa %xmm12,%xmm1
paddd %xmm5,%xmm1
movdqa %xmm1,%xmm2
pslld $9,%xmm1
pxor  %xmm1,%xmm8
psrld $23,%xmm2
pxor  %xmm2,%xmm8
movdqa %xmm7,%xmm1
paddd %xmm10,%xmm1
movdqa %xmm1,%xmm2
pslld $13,%xmm1
pxor  %xmm1,%xmm4
psrld $19,%xmm2
pxor  %xmm2,%xmm4
movdqa %xmm5,%xmm1
paddd %xmm8,%xmm1
movdqa %xmm1,%xmm2
pslld $13,%xmm1
pxor  %xmm1,%xmm14
psrld $19,%xmm2
pxor  %xmm2,%xmm14
movdqa %xmm10,%xmm1
paddd %xmm4,%xmm1
movdqa %xmm1,%xmm2
pslld $18,%xmm1
pxor  %xmm1,%xmm0
psrld $14,%xmm2
pxor  %xmm2,%xmm0
movdqa 320(%rsp),%xmm1
movdqa %xmm0,320(%rsp)
movdqa %xmm8,%xmm0
paddd %xmm14,%xmm0
movdqa %xmm0,%xmm2
pslld $18,%xmm0
pxor  %xmm0,%xmm12
psrld $14,%xmm2
pxor  %xmm2,%xmm12
movdqa %xmm11,%xmm0
paddd %xmm1,%xmm0
movdqa %xmm0,%xmm2
pslld $7,%xmm0
pxor  %xmm0,%xmm6
psrld $25,%xmm2
pxor  %xmm2,%xmm6
movdqa 336(%rsp),%xmm2
movdqa %xmm12,336(%rsp)
movdqa %xmm3,%xmm0
paddd %xmm2,%xmm0
movdqa %xmm0,%xmm12
pslld $7,%xmm0
pxor  %xmm0,%xmm13
psrld $25,%xmm12
pxor  %xmm12,%xmm13
movdqa %xmm1,%xmm0
paddd %xmm6,%xmm0
movdqa %xmm0,%xmm12
pslld $9,%xmm0
pxor  %xmm0,%xmm15
psrld $23,%xmm12
pxor  %xmm12,%xmm15
movdqa %xmm2,%xmm0
paddd %xmm13,%xmm0
movdqa %xmm0,%xmm12
pslld $9,%xmm0
pxor  %xmm0,%xmm9
psrld $23,%xmm12
pxor  %xmm12,%xmm9
movdqa %xmm6,%xmm0
paddd %xmm15,%xmm0
movdqa %xmm0,%xmm12
pslld $13,%xmm0
pxor  %xmm0,%xmm11
psrld $19,%xmm12
pxor  %xmm12,%xmm11
movdqa %xmm13,%xmm0
paddd %xmm9,%xmm0
movdqa %xmm0,%xmm12
pslld $13,%xmm0
pxor  %xmm0,%xmm3
psrld $19,%xmm12
pxor  %xmm12,%xmm3
movdqa %xmm15,%xmm0
paddd %xmm11,%xmm0
movdqa %xmm0,%xmm12
pslld $18,%xmm0
pxor  %xmm0,%xmm1
psrld $14,%xmm12
pxor  %xmm12,%xmm1
movdqa %xmm9,%xmm0
paddd %xmm3,%xmm0
movdqa %xmm0,%xmm12
pslld $18,%xmm0
pxor  %xmm0,%xmm2
psrld $14,%xmm12
pxor  %xmm12,%xmm2
movdqa 320(%rsp),%xmm12
movdqa 336(%rsp),%xmm0
sub  $2,%rdx
ja ._mainloop1

paddd 112(%rsp),%xmm12
paddd 176(%rsp),%xmm7
paddd 224(%rsp),%xmm10
paddd 272(%rsp),%xmm4
movd   %xmm12,%rdx
movd   %xmm7,%rcx
movd   %xmm10,%r8
movd   %xmm4,%r9
pshufd $0x39,%xmm12,%xmm12
pshufd $0x39,%xmm7,%xmm7
pshufd $0x39,%xmm10,%xmm10
pshufd $0x39,%xmm4,%xmm4
xorl 0(%rsi),%edx
xorl 4(%rsi),%ecx
xorl 8(%rsi),%r8d
xorl 12(%rsi),%r9d
movl   %edx,0(%rdi)
movl   %ecx,4(%rdi)
movl   %r8d,8(%rdi)
movl   %r9d,12(%rdi)
movd   %xmm12,%rdx
movd   %xmm7,%rcx
movd   %xmm10,%r8
movd   %xmm4,%r9
pshufd $0x39,%xmm12,%xmm12
pshufd $0x39,%xmm7,%xmm7
pshufd $0x39,%xmm10,%xmm10
pshufd $0x39,%xmm4,%xmm4
xorl 64(%rsi),%edx
xorl 68(%rsi),%ecx
xorl 72(%rsi),%r8d
xorl 76(%rsi),%r9d
movl   %edx,64(%rdi)
movl   %ecx,68(%rdi)
movl   %r8d,72(%rdi)
movl   %r9d,76(%rdi)
movd   %xmm12,%rdx
movd   %xmm7,%rcx
movd   %xmm10,%r8
movd   %xmm4,%r9
pshufd $0x39,%xmm12,%xmm12
pshufd $0x39,%xmm7,%xmm7
pshufd $0x39,%xmm10,%xmm10
pshufd $0x39,%xmm4,%xmm4
xorl 128(%rsi),%edx
xorl 132(%rsi),%ecx
xorl 136(%rsi),%r8d
xorl 140(%rsi),%r9d
movl   %edx,128(%rdi)
movl   %ecx,132(%rdi)
movl   %r8d,136(%rdi)
movl   %r9d,140(%rdi)
movd   %xmm12,%rdx
movd   %xmm7,%rcx
movd   %xmm10,%r8
movd   %xmm4,%r9
xorl 192(%rsi),%edx
xorl 196(%rsi),%ecx
xorl 200(%rsi),%r8d
xorl 204(%rsi),%r9d
movl   %edx,192(%rdi)
movl   %ecx,196(%rdi)
movl   %r8d,200(%rdi)
movl   %r9d,204(%rdi)
paddd 240(%rsp),%xmm14
paddd 64(%rsp),%xmm0
paddd 128(%rsp),%xmm5
paddd 192(%rsp),%xmm8
movd   %xmm14,%rdx
movd   %xmm0,%rcx
movd   %xmm5,%r8
movd   %xmm8,%r9
pshufd $0x39,%xmm14,%xmm14
pshufd $0x39,%xmm0,%xmm0
pshufd $0x39,%xmm5,%xmm5
pshufd $0x39,%xmm8,%xmm8
xorl 16(%rsi),%edx
xorl 20(%rsi),%ecx
xorl 24(%rsi),%r8d
xorl 28(%rsi),%r9d
movl   %edx,16(%rdi)
movl   %ecx,20(%rdi)
movl   %r8d,24(%rdi)
movl   %r9d,28(%rdi)
movd   %xmm14,%rdx
movd   %xmm0,%rcx
movd   %xmm5,%r8
movd   %xmm8,%r9
pshufd $0x39,%xmm14,%xmm14
pshufd $0x39,%xmm0,%xmm0
pshufd $0x39,%xmm5,%xmm5
pshufd $0x39,%xmm8,%xmm8
xorl 80(%rsi),%edx
xorl 84(%rsi),%ecx
xorl 88(%rsi),%r8d
xorl 92(%rsi),%r9d
movl   %edx,80(%rdi)
movl   %ecx,84(%rdi)
movl   %r8d,88(%rdi)
movl   %r9d,92(%rdi)
movd   %xmm14,%rdx
movd   %xmm0,%rcx
movd   %xmm5,%r8
movd   %xmm8,%r9
pshufd $0x39,%xmm14,%xmm14
pshufd $0x39,%xmm0,%xmm0
pshufd $0x39,%xmm5,%xmm5
pshufd $0x39,%xmm8,%xmm8
xorl 144(%rsi),%edx
xorl 148(%rsi),%ecx
xorl 152(%rsi),%r8d
xorl 156(%rsi),%r9d
movl   %edx,144(%rdi)
movl   %ecx,148(%rdi)
movl   %r8d,152(%rdi)
movl   %r9d,156(%rdi)
movd   %xmm14,%rdx
movd   %xmm0,%rcx
movd   %xmm5,%r8
movd   %xmm8,%r9
xorl 208(%rsi),%edx
xorl 212(%rsi),%ecx
xorl 216(%rsi),%r8d
xorl 220(%rsi),%r9d
movl   %edx,208(%rdi)
movl   %ecx,212(%rdi)
movl   %r8d,216(%rdi)
movl   %r9d,220(%rdi)
paddd 288(%rsp),%xmm15
paddd 304(%rsp),%xmm11
paddd 80(%rsp),%xmm1
paddd 144(%rsp),%xmm6
movd   %xmm15,%rdx
movd   %xmm11,%rcx
movd   %xmm1,%r8
movd   %xmm6,%r9
pshufd $0x39,%xmm15,%xmm15
pshufd $0x39,%xmm11,%xmm11
pshufd $0x39,%xmm1,%xmm1
pshufd $0x39,%xmm6,%xmm6
xorl 32(%rsi),%edx
xorl 36(%rsi),%ecx
xorl 40(%rsi),%r8d
xorl 44(%rsi),%r9d
movl   %edx,32(%rdi)
movl   %ecx,36(%rdi)
movl   %r8d,40(%rdi)
movl   %r9d,44(%rdi)
movd   %xmm15,%rdx
movd   %xmm11,%rcx
movd   %xmm1,%r8
movd   %xmm6,%r9
pshufd $0x39,%xmm15,%xmm15
pshufd $0x39,%xmm11,%xmm11
pshufd $0x39,%xmm1,%xmm1
pshufd $0x39,%xmm6,%xmm6
xorl 96(%rsi),%edx
xorl 100(%rsi),%ecx
xorl 104(%rsi),%r8d
xorl 108(%rsi),%r9d
movl   %edx,96(%rdi)
movl   %ecx,100(%rdi)
movl   %r8d,104(%rdi)
movl   %r9d,108(%rdi)
movd   %xmm15,%rdx
movd   %xmm11,%rcx
movd   %xmm1,%r8
movd   %xmm6,%r9
pshufd $0x39,%xmm15,%xmm15
pshufd $0x39,%xmm11,%xmm11
pshufd $0x39,%xmm1,%xmm1
pshufd $0x39,%xmm6,%xmm6
xorl 160(%rsi),%edx
xorl 164(%rsi),%ecx
xorl 168(%rsi),%r8d
xorl 172(%rsi),%r9d
movl   %edx,160(%rdi)
movl   %ecx,164(%rdi)
movl   %r8d,168(%rdi)
movl   %r9d,172(%rdi)
movd   %xmm15,%rdx
movd   %xmm11,%rcx
movd   %xmm1,%r8
movd   %xmm6,%r9
xorl 224(%rsi),%edx
xorl 228(%rsi),%ecx
xorl 232(%rsi),%r8d
xorl 236(%rsi),%r9d
movl   %edx,224(%rdi)
movl   %ecx,228(%rdi)
movl   %r8d,232(%rdi)
movl   %r9d,236(%rdi)
paddd 160(%rsp),%xmm13
paddd 208(%rsp),%xmm9
paddd 256(%rsp),%xmm3
paddd 96(%rsp),%xmm2
movd   %xmm13,%rdx
movd   %xmm9,%rcx
movd   %xmm3,%r8
movd   %xmm2,%r9
pshufd $0x39,%xmm13,%xmm13
pshufd $0x39,%xmm9,%xmm9
pshufd $0x39,%xmm3,%xmm3
pshufd $0x39,%xmm2,%xmm2
xorl 48(%rsi),%edx
xorl 52(%rsi),%ecx
xorl 56(%rsi),%r8d
xorl 60(%rsi),%r9d
movl   %edx,48(%rdi)
movl   %ecx,52(%rdi)
movl   %r8d,56(%rdi)
movl   %r9d,60(%rdi)
movd   %xmm13,%rdx
movd   %xmm9,%rcx
movd   %xmm3,%r8
movd   %xmm2,%r9
pshufd $0x39,%xmm13,%xmm13
pshufd $0x39,%xmm9,%xmm9
pshufd $0x39,%xmm3,%xmm3
pshufd $0x39,%xmm2,%xmm2
xorl 112(%rsi),%edx
xorl 116(%rsi),%ecx
xorl 120(%rsi),%r8d
xorl 124(%rsi),%r9d
movl   %edx,112(%rdi)
movl   %ecx,116(%rdi)
movl   %r8d,120(%rdi)
movl   %r9d,124(%rdi)
movd   %xmm13,%rdx
movd   %xmm9,%rcx
movd   %xmm3,%r8
movd   %xmm2,%r9
pshufd $0x39,%xmm13,%xmm13
pshufd $0x39,%xmm9,%xmm9
pshufd $0x39,%xmm3,%xmm3
pshufd $0x39,%xmm2,%xmm2
xorl 176(%rsi),%edx
xorl 180(%rsi),%ecx
xorl 184(%rsi),%r8d
xorl 188(%rsi),%r9d
movl   %edx,176(%rdi)
movl   %ecx,180(%rdi)
movl   %r8d,184(%rdi)
movl   %r9d,188(%rdi)
movd   %xmm13,%rdx
movd   %xmm9,%rcx
movd   %xmm3,%r8
movd   %xmm2,%r9
xorl 240(%rsi),%edx
xorl 244(%rsi),%ecx
xorl 248(%rsi),%r8d
xorl 252(%rsi),%r9d
movl   %edx,240(%rdi)
movl   %ecx,244(%rdi)
movl   %r8d,248(%rdi)
movl   %r9d,252(%rdi)
movq 408(%rsp),%r9
sub  $256,%r9
add  $256,%rsi
add  $256,%rdi
cmp  $256,%r9
jae ._bytesatleast256

cmp  $0,%r9
jbe ._done

._bytesbetween1and255:
cmp  $64,%r9
jae ._nocopy

mov  %rdi,%rdx
leaq 416(%rsp),%rdi
mov  %r9,%rcx
rep movsb
leaq 416(%rsp),%rdi
leaq 416(%rsp),%rsi

._nocopy:
movq %r9,408(%rsp)
movdqa 48(%rsp),%xmm0
movdqa 0(%rsp),%xmm1
movdqa 16(%rsp),%xmm2
movdqa 32(%rsp),%xmm3
movdqa %xmm1,%xmm4
mov  $20,%rcx

._mainloop2:
paddd %xmm0,%xmm4
movdqa %xmm0,%xmm5
movdqa %xmm4,%xmm6
pslld $7,%xmm4
psrld $25,%xmm6
pxor  %xmm4,%xmm3
pxor  %xmm6,%xmm3
paddd %xmm3,%xmm5
movdqa %xmm3,%xmm4
movdqa %xmm5,%xmm6
pslld $9,%xmm5
psrld $23,%xmm6
pxor  %xmm5,%xmm2
pshufd $0x93,%xmm3,%xmm3
pxor  %xmm6,%xmm2
paddd %xmm2,%xmm4
movdqa %xmm2,%xmm5
movdqa %xmm4,%xmm6
pslld $13,%xmm4
psrld $19,%xmm6
pxor  %xmm4,%xmm1
pshufd $0x4e,%xmm2,%xmm2
pxor  %xmm6,%xmm1
paddd %xmm1,%xmm5
movdqa %xmm3,%xmm4
movdqa %xmm5,%xmm6
pslld $18,%xmm5
psrld $14,%xmm6
pxor  %xmm5,%xmm0
pshufd $0x39,%xmm1,%xmm1
pxor  %xmm6,%xmm0
paddd %xmm0,%xmm4
movdqa %xmm0,%xmm5
movdqa %xmm4,%xmm6
pslld $7,%xmm4
psrld $25,%xmm6
pxor  %xmm4,%xmm1
pxor  %xmm6,%xmm1
paddd %xmm1,%xmm5
movdqa %xmm1,%xmm4
movdqa %xmm5,%xmm6
pslld $9,%xmm5
psrld $23,%xmm6
pxor  %xmm5,%xmm2
pshufd $0x93,%xmm1,%xmm1
pxor  %xmm6,%xmm2
paddd %xmm2,%xmm4
movdqa %xmm2,%xmm5
movdqa %xmm4,%xmm6
pslld $13,%xmm4
psrld $19,%xmm6
pxor  %xmm4,%xmm3
pshufd $0x4e,%xmm2,%xmm2
pxor  %xmm6,%xmm3
paddd %xmm3,%xmm5
movdqa %xmm1,%xmm4
movdqa %xmm5,%xmm6
pslld $18,%xmm5
psrld $14,%xmm6
pxor  %xmm5,%xmm0
pshufd $0x39,%xmm3,%xmm3
pxor  %xmm6,%xmm0
paddd %xmm0,%xmm4
movdqa %xmm0,%xmm5
movdqa %xmm4,%xmm6
pslld $7,%xmm4
psrld $25,%xmm6
pxor  %xmm4,%xmm3
pxor  %xmm6,%xmm3
paddd %xmm3,%xmm5
movdqa %xmm3,%xmm4
movdqa %xmm5,%xmm6
pslld $9,%xmm5
psrld $23,%xmm6
pxor  %xmm5,%xmm2
pshufd $0x93,%xmm3,%xmm3
pxor  %xmm6,%xmm2
paddd %xmm2,%xmm4
movdqa %xmm2,%xmm5
movdqa %xmm4,%xmm6
pslld $13,%xmm4
psrld $19,%xmm6
pxor  %xmm4,%xmm1
pshufd $0x4e,%xmm2,%xmm2
pxor  %xmm6,%xmm1
paddd %xmm1,%xmm5
movdqa %xmm3,%xmm4
movdqa %xmm5,%xmm6
pslld $18,%xmm5
psrld $14,%xmm6
pxor  %xmm5,%xmm0
pshufd $0x39,%xmm1,%xmm1
pxor  %xmm6,%xmm0
paddd %xmm0,%xmm4
movdqa %xmm0,%xmm5
movdqa %xmm4,%xmm6
pslld $7,%xmm4
psrld $25,%xmm6
pxor  %xmm4,%xmm1
pxor  %xmm6,%xmm1
paddd %xmm1,%xmm5
movdqa %xmm1,%xmm4
movdqa %xmm5,%xmm6
pslld $9,%xmm5
psrld $23,%xmm6
pxor  %xmm5,%xmm2
pshufd $0x93,%xmm1,%xmm1
pxor  %xmm6,%xmm2
paddd %xmm2,%xmm4
movdqa %xmm2,%xmm5
movdqa %xmm4,%xmm6
pslld $13,%xmm4
psrld $19,%xmm6
pxor  %xmm4,%xmm3
pshufd $0x4e,%xmm2,%xmm2
pxor  %xmm6,%xmm3
sub  $4,%rcx
paddd %xmm3,%xmm5
movdqa %xmm1,%xmm4
movdqa %xmm5,%xmm6
pslld $18,%xmm5
pxor   %xmm7,%xmm7
psrld $14,%xmm6
pxor  %xmm5,%xmm0
pshufd $0x39,%xmm3,%xmm3
pxor  %xmm6,%xmm0
ja ._mainloop2

paddd 48(%rsp),%xmm0
paddd 0(%rsp),%xmm1
paddd 16(%rsp),%xmm2
paddd 32(%rsp),%xmm3
movd   %xmm0,%rcx
movd   %xmm1,%r8
movd   %xmm2,%r9
movd   %xmm3,%rax
pshufd $0x39,%xmm0,%xmm0
pshufd $0x39,%xmm1,%xmm1
pshufd $0x39,%xmm2,%xmm2
pshufd $0x39,%xmm3,%xmm3
xorl 0(%rsi),%ecx
xorl 48(%rsi),%r8d
xorl 32(%rsi),%r9d
xorl 16(%rsi),%eax
movl   %ecx,0(%rdi)
movl   %r8d,48(%rdi)
movl   %r9d,32(%rdi)
movl   %eax,16(%rdi)
movd   %xmm0,%rcx
movd   %xmm1,%r8
movd   %xmm2,%r9
movd   %xmm3,%rax
pshufd $0x39,%xmm0,%xmm0
pshufd $0x39,%xmm1,%xmm1
pshufd $0x39,%xmm2,%xmm2
pshufd $0x39,%xmm3,%xmm3
xorl 20(%rsi),%ecx
xorl 4(%rsi),%r8d
xorl 52(%rsi),%r9d
xorl 36(%rsi),%eax
movl   %ecx,20(%rdi)
movl   %r8d,4(%rdi)
movl   %r9d,52(%rdi)
movl   %eax,36(%rdi)
movd   %xmm0,%rcx
movd   %xmm1,%r8
movd   %xmm2,%r9
movd   %xmm3,%rax
pshufd $0x39,%xmm0,%xmm0
pshufd $0x39,%xmm1,%xmm1
pshufd $0x39,%xmm2,%xmm2
pshufd $0x39,%xmm3,%xmm3
xorl 40(%rsi),%ecx
xorl 24(%rsi),%r8d
xorl 8(%rsi),%r9d
xorl 56(%rsi),%eax
movl   %ecx,40(%rdi)
movl   %r8d,24(%rdi)
movl   %r9d,8(%rdi)
movl   %eax,56(%rdi)
movd   %xmm0,%rcx
movd   %xmm1,%r8
movd   %xmm2,%r9
movd   %xmm3,%rax
xorl 60(%rsi),%ecx
xorl 44(%rsi),%r8d
xorl 28(%rsi),%r9d
xorl 12(%rsi),%eax
movl   %ecx,60(%rdi)
movl   %r8d,44(%rdi)
movl   %r9d,28(%rdi)
movl   %eax,12(%rdi)
movq 408(%rsp),%r9
movl 16(%rsp),%ecx
movl 4+32(%rsp),%r8d
add  $1,%rcx
shl  $32,%r8
add  %r8,%rcx
mov  %rcx,%r8
shr  $32,%r8
movl %ecx,16(%rsp)
movl %r8d,4+32(%rsp)
cmp  $64,%r9

ja ._bytesatleast65

jae ._bytesatleast64

mov  %rdi,%rsi
mov  %rdx,%rdi
mov  %r9,%rcx
rep movsb

._bytesatleast64:
._done:
movq 352(%rsp),%r11
movq 360(%rsp),%r12
movq 368(%rsp),%r13
movq 376(%rsp),%r14
movq 384(%rsp),%r15
movq 392(%rsp),%rbx
movq 400(%rsp),%rbp
add %r11,%rsp
xor %rax,%rax
xor %rdx,%rdx
ret

._bytesatleast65:
sub  $64,%r9
add  $64,%rdi
add  $64,%rsi
jmp ._bytesbetween1and255

#endif

#if defined(__linux__) && defined(__ELF__)
.section .note.GNU-stack,"",%progbits
#endif
