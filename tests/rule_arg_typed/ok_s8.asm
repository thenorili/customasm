#ruledef test
{
    ld {x: s8} => 0x55 @ x
}

ld 0 ; = 0x5500
ld 12 ; = 0x550c
ld 6 * 2 ; = 0x550c
ld 0xc ; = 0x550c
ld 0x001 ; = 0x5501
ld 0x7f ; = 0x557f
ld 127 ; = 0x557f
ld -1 ; = 0x55ff
ld -0x1 ; = 0x55ff
ld -128 ; = 0x5580
ld !0x7f ; = 0x5580