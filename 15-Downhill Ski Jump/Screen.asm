Screen_Clear
        lda #CHAR_SPACE
        ldx #0
.ClearScreenLoop
        sta SCREENRAM,x
        sta SCREENRAM+$0100,x
        sta SCREENRAM+$0200,x
        sta SCREENRAM+$02F7,x
        dex
        bne .ClearScreenLoop
        rts
