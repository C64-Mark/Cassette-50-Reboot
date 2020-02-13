landscape       byte 139, 139, 140, 141, 142, 139, 140, 142, 139, 140
                byte 141, 141, 142, 139, 139, 139, 140, 142, 139, 139
                byte 139, 140, 141, 141, 141, 141, 142, 139, 140, 142
                byte 139, 139, 140, 142, 139, 139, 140, 141, 142, 139

groundCounter   byte 00
groundRate      byte 05

gameGround_DrawGround
 ;139 to 142
        ldx #39
@loop
        lda landscape,x
        sta $07C0,x
        lda #gray1
        sta $DBC0,x
        dex
        bpl @loop
        rts


gameGround_AnimateGround
        dec groundCounter
        bpl @exit
        lda groundRate
        sta groundCounter
        ldx #1
        ldy #0
        lda $07C0
        sta $07E7
@loop
        lda $07C0,x
        sta $07C0,y
        inx
        iny
        cpx #40
        bne @loop
@exit
        rts
        