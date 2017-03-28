//+build 386
//+build !noasm !appengine

// func Get(void) (uint64)
TEXT ·Get(SB),7,$0
    BYTE $0x0f; BYTE $0x31
    MOVL  AX, ret_lo+0(FP)
    MOVL  $0, ret_hi+4(FP)
    RET
