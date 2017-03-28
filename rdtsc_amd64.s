//+build amd64
//+build !noasm !appengine

// func Get(void) (uint64)
TEXT ·Get(SB),7,$0
    RDTSC
    SHLQ  $32, DX
    ADDQ  DX, AX
    MOVQ  AX, ret+0(FP)
    RET
