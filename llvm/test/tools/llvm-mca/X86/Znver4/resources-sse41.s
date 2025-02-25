# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=znver4 -instruction-tables < %s | FileCheck %s

blendpd     $11, %xmm0, %xmm2
blendpd     $11, (%rax), %xmm2

blendps     $11, %xmm0, %xmm2
blendps     $11, (%rax), %xmm2

blendvpd    %xmm0, %xmm2
blendvpd    (%rax), %xmm2

blendvps    %xmm0, %xmm2
blendvps    (%rax), %xmm2

dppd        $22, %xmm0, %xmm2
dppd        $22, (%rax), %xmm2

dpps        $22, %xmm0, %xmm2
dpps        $22, (%rax), %xmm2

extractps   $1, %xmm0, %rcx
extractps   $1, %xmm0, (%rax)

insertps    $1, %xmm0, %xmm2
insertps    $1, (%rax), %xmm2

movntdqa    (%rax), %xmm2

mpsadbw     $1, %xmm0, %xmm2
mpsadbw     $1, (%rax), %xmm2

packusdw    %xmm0, %xmm2
packusdw    (%rax), %xmm2

pblendvb    %xmm0, %xmm2
pblendvb    (%rax), %xmm2

pblendw     $11, %xmm0, %xmm2
pblendw     $11, (%rax), %xmm2

pcmpeqq     %xmm0, %xmm2
pcmpeqq     (%rax), %xmm2

pextrb      $1, %xmm0, %ecx
pextrb      $1, %xmm0, (%rax)

pextrd      $1, %xmm0, %ecx
pextrd      $1, %xmm0, (%rax)

pextrq      $1, %xmm0, %rcx
pextrq      $1, %xmm0, (%rax)

pextrw      $1, %xmm0, (%rax)

phminposuw  %xmm0, %xmm2
phminposuw  (%rax), %xmm2

pinsrb      $1, %eax, %xmm1
pinsrb      $1, (%rax), %xmm1

pinsrd      $1, %eax, %xmm1
pinsrd      $1, (%rax), %xmm1

pinsrq      $1, %rax, %xmm1
pinsrq      $1, (%rax), %xmm1

pmaxsb      %xmm0, %xmm2
pmaxsb      (%rax), %xmm2

pmaxsd      %xmm0, %xmm2
pmaxsd      (%rax), %xmm2

pmaxud      %xmm0, %xmm2
pmaxud      (%rax), %xmm2

pmaxuw      %xmm0, %xmm2
pmaxuw      (%rax), %xmm2

pminsb      %xmm0, %xmm2
pminsb      (%rax), %xmm2

pminsd      %xmm0, %xmm2
pminsd      (%rax), %xmm2

pminud      %xmm0, %xmm2
pminud      (%rax), %xmm2

pminuw      %xmm0, %xmm2
pminuw      (%rax), %xmm2

pmovsxbd    %xmm0, %xmm2
pmovsxbd    (%rax), %xmm2

pmovsxbq    %xmm0, %xmm2
pmovsxbq    (%rax), %xmm2

pmovsxbw    %xmm0, %xmm2
pmovsxbw    (%rax), %xmm2

pmovsxdq    %xmm0, %xmm2
pmovsxdq    (%rax), %xmm2

pmovsxwd    %xmm0, %xmm2
pmovsxwd    (%rax), %xmm2

pmovsxwq    %xmm0, %xmm2
pmovsxwq    (%rax), %xmm2

pmovzxbd    %xmm0, %xmm2
pmovzxbd    (%rax), %xmm2

pmovzxbq    %xmm0, %xmm2
pmovzxbq    (%rax), %xmm2

pmovzxbw    %xmm0, %xmm2
pmovzxbw    (%rax), %xmm2

pmovzxdq    %xmm0, %xmm2
pmovzxdq    (%rax), %xmm2

pmovzxwd    %xmm0, %xmm2
pmovzxwd    (%rax), %xmm2

pmovzxwq    %xmm0, %xmm2
pmovzxwq    (%rax), %xmm2

pmuldq      %xmm0, %xmm2
pmuldq      (%rax), %xmm2

pmulld      %xmm0, %xmm2
pmulld      (%rax), %xmm2

ptest       %xmm0, %xmm1
ptest       (%rax), %xmm1

roundpd     $1, %xmm0, %xmm2
roundpd     $1, (%rax), %xmm2

roundps     $1, %xmm0, %xmm2
roundps     $1, (%rax), %xmm2

roundsd     $1, %xmm0, %xmm2
roundsd     $1, (%rax), %xmm2

roundss     $1, %xmm0, %xmm2
roundss     $1, (%rax), %xmm2

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      1     0.50                        blendpd	$11, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   blendpd	$11, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.50                        blendps	$11, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   blendps	$11, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.50                        blendvpd	%xmm0, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   blendvpd	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.50                        blendvps	%xmm0, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   blendvps	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  3      7     3.00                        dppd	$22, %xmm0, %xmm2
# CHECK-NEXT:  5      14    3.00    *                   dppd	$22, (%rax), %xmm2
# CHECK-NEXT:  8      11    4.00                        dpps	$22, %xmm0, %xmm2
# CHECK-NEXT:  10     18    4.00    *                   dpps	$22, (%rax), %xmm2
# CHECK-NEXT:  2      1     1.00                        extractps	$1, %xmm0, %ecx
# CHECK-NEXT:  2      2     1.00           *            extractps	$1, %xmm0, (%rax)
# CHECK-NEXT:  1      1     0.50                        insertps	$1, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   insertps	$1, (%rax), %xmm2
# CHECK-NEXT:  1      8     0.50    *                   movntdqa	(%rax), %xmm2
# CHECK-NEXT:  4      4     2.00                        mpsadbw	$1, %xmm0, %xmm2
# CHECK-NEXT:  6      11    2.00    *                   mpsadbw	$1, (%rax), %xmm2
# CHECK-NEXT:  1      2     1.00                        packusdw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   packusdw	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.50                        pblendvb	%xmm0, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pblendvb	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                        pblendw	$11, %xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pblendw	$11, (%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                        pcmpeqq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pcmpeqq	(%rax), %xmm2
# CHECK-NEXT:  2      1     1.00                        pextrb	$1, %xmm0, %ecx
# CHECK-NEXT:  2      2     1.00           *            pextrb	$1, %xmm0, (%rax)
# CHECK-NEXT:  2      1     1.00                        pextrd	$1, %xmm0, %ecx
# CHECK-NEXT:  2      2     1.00           *            pextrd	$1, %xmm0, (%rax)
# CHECK-NEXT:  2      1     1.00                        pextrq	$1, %xmm0, %rcx
# CHECK-NEXT:  2      2     1.00           *            pextrq	$1, %xmm0, (%rax)
# CHECK-NEXT:  2      2     1.00           *            pextrw	$1, %xmm0, (%rax)
# CHECK-NEXT:  1      3     0.50                        phminposuw	%xmm0, %xmm2
# CHECK-NEXT:  1      10    0.50    *                   phminposuw	(%rax), %xmm2
# CHECK-NEXT:  2      2     1.00                        pinsrb	$1, %eax, %xmm1
# CHECK-NEXT:  1      8     1.50    *                   pinsrb	$1, (%rax), %xmm1
# CHECK-NEXT:  2      2     1.00                        pinsrd	$1, %eax, %xmm1
# CHECK-NEXT:  1      8     1.50    *                   pinsrd	$1, (%rax), %xmm1
# CHECK-NEXT:  2      2     1.00                        pinsrq	$1, %rax, %xmm1
# CHECK-NEXT:  1      8     1.50    *                   pinsrq	$1, (%rax), %xmm1
# CHECK-NEXT:  1      1     0.25                        pmaxsb	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmaxsb	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                        pmaxsd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmaxsd	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                        pmaxud	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmaxud	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                        pmaxuw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmaxuw	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                        pminsb	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pminsb	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                        pminsd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pminsd	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                        pminud	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pminud	(%rax), %xmm2
# CHECK-NEXT:  1      1     0.25                        pminuw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pminuw	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovsxbd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovsxbd	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovsxbq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovsxbq	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovsxbw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovsxbw	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovsxdq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovsxdq	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovsxwd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovsxwd	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovsxwq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovsxwq	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovzxbd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovzxbd	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovzxbq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovzxbq	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovzxbw	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovzxbw	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovzxdq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovzxdq	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovzxwd	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovzxwd	(%rax), %xmm2
# CHECK-NEXT:  1      2     0.50                        pmovzxwq	%xmm0, %xmm2
# CHECK-NEXT:  1      8     0.50    *                   pmovzxwq	(%rax), %xmm2
# CHECK-NEXT:  1      3     0.50                        pmuldq	%xmm0, %xmm2
# CHECK-NEXT:  1      10    0.50    *                   pmuldq	(%rax), %xmm2
# CHECK-NEXT:  1      3     0.50                        pmulld	%xmm0, %xmm2
# CHECK-NEXT:  1      10    0.50    *                   pmulld	(%rax), %xmm2
# CHECK-NEXT:  2      1     1.00                        ptest	%xmm0, %xmm1
# CHECK-NEXT:  2      8     1.00    *                   ptest	(%rax), %xmm1
# CHECK-NEXT:  1      3     0.50                        roundpd	$1, %xmm0, %xmm2
# CHECK-NEXT:  1      10    0.50    *                   roundpd	$1, (%rax), %xmm2
# CHECK-NEXT:  1      3     0.50                        roundps	$1, %xmm0, %xmm2
# CHECK-NEXT:  1      10    0.50    *                   roundps	$1, (%rax), %xmm2
# CHECK-NEXT:  1      3     0.50                        roundsd	$1, %xmm0, %xmm2
# CHECK-NEXT:  1      10    0.50    *                   roundsd	$1, (%rax), %xmm2
# CHECK-NEXT:  1      3     0.50                        roundss	$1, %xmm0, %xmm2
# CHECK-NEXT:  1      10    0.50    *                   roundss	$1, (%rax), %xmm2

# CHECK:      Resources:
# CHECK-NEXT: [0]   - Zn4AGU0
# CHECK-NEXT: [1]   - Zn4AGU1
# CHECK-NEXT: [2]   - Zn4AGU2
# CHECK-NEXT: [3]   - Zn4ALU0
# CHECK-NEXT: [4]   - Zn4ALU1
# CHECK-NEXT: [5]   - Zn4ALU2
# CHECK-NEXT: [6]   - Zn4ALU3
# CHECK-NEXT: [7]   - Zn4BRU1
# CHECK-NEXT: [8]   - Zn4FP0
# CHECK-NEXT: [9]   - Zn4FP1
# CHECK-NEXT: [10]  - Zn4FP2
# CHECK-NEXT: [11]  - Zn4FP3
# CHECK-NEXT: [12.0] - Zn4FP45
# CHECK-NEXT: [12.1] - Zn4FP45
# CHECK-NEXT: [13]  - Zn4FPSt
# CHECK-NEXT: [14.0] - Zn4LSU
# CHECK-NEXT: [14.1] - Zn4LSU
# CHECK-NEXT: [14.2] - Zn4LSU
# CHECK-NEXT: [15.0] - Zn4Load
# CHECK-NEXT: [15.1] - Zn4Load
# CHECK-NEXT: [15.2] - Zn4Load
# CHECK-NEXT: [16.0] - Zn4Store
# CHECK-NEXT: [16.1] - Zn4Store

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12.0] [12.1] [13]   [14.0] [14.1] [14.2] [15.0] [15.1] [15.2] [16.0] [16.1]
# CHECK-NEXT:  -      -      -      -      -      -      -      -     31.00  43.50  28.50  16.00  35.50  35.50  7.00   16.33  16.33  16.33  14.67  14.67  14.67  2.50   2.50

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12.0] [12.1] [13]   [14.0] [14.1] [14.2] [15.0] [15.1] [15.2] [16.0] [16.1] Instructions:
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -     blendpd	$11, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     blendpd	$11, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -     blendps	$11, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     blendps	$11, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -     blendvpd	%xmm0, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     blendvpd	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -     blendvps	%xmm0, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     blendvps	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     3.00   3.00    -      -      -      -      -      -      -      -      -      -      -      -      -     dppd	$22, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     3.00   3.00    -      -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     dppd	$22, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     4.00   4.00    -      -      -      -      -      -      -      -      -      -      -      -      -     dpps	$22, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     4.00   4.00    -      -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     dpps	$22, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -     extractps	$1, %xmm0, %ecx
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     0.50   0.50   1.00   0.33   0.33   0.33    -      -      -     0.50   0.50   extractps	$1, %xmm0, (%rax)
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     insertps	$1, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     insertps	$1, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     movntdqa	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     2.00   2.00   2.00   2.00    -      -      -      -      -      -      -      -      -      -      -     mpsadbw	$1, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     2.00   2.00   2.00   2.00   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     mpsadbw	$1, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -      -      -      -     packusdw	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     packusdw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50    -      -      -      -      -      -      -      -      -      -      -     pblendvb	%xmm0, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pblendvb	%xmm0, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pblendw	$11, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pblendw	$11, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pcmpeqq	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pcmpeqq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -     pextrb	$1, %xmm0, %ecx
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     0.50   0.50   1.00   0.33   0.33   0.33    -      -      -     0.50   0.50   pextrb	$1, %xmm0, (%rax)
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -     pextrd	$1, %xmm0, %ecx
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     0.50   0.50   1.00   0.33   0.33   0.33    -      -      -     0.50   0.50   pextrd	$1, %xmm0, (%rax)
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -     pextrq	$1, %xmm0, %rcx
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     0.50   0.50   1.00   0.33   0.33   0.33    -      -      -     0.50   0.50   pextrq	$1, %xmm0, (%rax)
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     0.50   0.50   1.00   0.33   0.33   0.33    -      -      -     0.50   0.50   pextrw	$1, %xmm0, (%rax)
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -      -     phminposuw	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50   0.50    -      -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     phminposuw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -     pinsrb	$1, %eax, %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.50   1.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pinsrb	$1, (%rax), %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -     pinsrd	$1, %eax, %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.50   1.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pinsrd	$1, (%rax), %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.00   1.00    -      -      -      -      -      -      -      -      -     pinsrq	$1, %rax, %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -      -      -     1.50   1.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pinsrq	$1, (%rax), %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pmaxsb	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmaxsb	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pmaxsd	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmaxsd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pmaxud	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmaxud	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pmaxuw	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmaxuw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pminsb	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pminsb	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pminsd	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pminsd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pminud	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pminud	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25    -      -      -      -      -      -      -      -      -      -      -     pminuw	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.25   0.25   0.25   0.25   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pminuw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovsxbd	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovsxbd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovsxbq	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovsxbq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovsxbw	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovsxbw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovsxdq	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovsxdq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovsxwd	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovsxwd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovsxwq	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovsxwq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovzxbd	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovzxbd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovzxbq	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovzxbq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovzxbw	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovzxbw	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovzxdq	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovzxdq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovzxwd	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovzxwd	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -      -     pmovzxwq	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmovzxwq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50    -      -      -      -      -      -      -      -      -      -      -     pmuldq	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmuldq	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50    -      -      -      -      -      -      -      -      -      -      -     pmulld	%xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -     0.50    -      -     0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     pmulld	(%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     0.50   0.50   1.00    -      -      -      -      -      -      -      -     ptest	%xmm0, %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -     0.50   0.50    -     1.00   1.00   1.00   0.33   0.33   0.33   0.33   0.33   0.33    -      -     ptest	(%rax), %xmm1
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -     roundpd	$1, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     0.50   0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     roundpd	$1, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -     roundps	$1, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     0.50   0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     roundps	$1, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -     roundsd	$1, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     0.50   0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     roundsd	$1, (%rax), %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     0.50   0.50    -      -      -      -      -      -      -      -      -      -      -     roundss	$1, %xmm0, %xmm2
# CHECK-NEXT:  -      -      -      -      -      -      -      -      -      -     0.50   0.50   0.50   0.50    -     0.33   0.33   0.33   0.33   0.33   0.33    -      -     roundss	$1, (%rax), %xmm2
