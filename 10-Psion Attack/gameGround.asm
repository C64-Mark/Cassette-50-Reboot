gameGround_AnimateGround
        dec groundCounter
        bpl @exit
        lda groundRate
        sta groundCounter
        ldy BOTTOM_ROW
        ldx #0
@loop
        lda BOTTOM_ROW+1,x
        sta BOTTOM_ROW,x
        inx
        cpx #39
        bne @loop
        sty BOTTOM_ROW+39
@exit
        rts
        