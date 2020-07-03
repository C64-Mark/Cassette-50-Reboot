Sound_IntroTune
        ldx introTuneIndex
        bne .PlayIntroTune
        lda #10
        sta FREL1
        lda #15
        sta SIDVOL
        lda #10
        sta ATDCY1
        lda #200
        sta SUREL1
        lda #1
        sta noteDuration
.PlayIntroTune
        cpx #34
        bne .DecTuneDuration
        lda #32
        sta VCREG1
        rts
.DecTuneDuration        
        dec noteDuration
        bne .ExitIntroTune
        lda #32
        sta VCREG1
        lda tbl_IntroTuneDuration,x
        sta noteDuration
        lda tbl_IntroTuneFreqHi,x
        sta FREH1
        lda #33
        sta VCREG1
        inx
        stx introTuneIndex
.ExitIntroTune
        rts



