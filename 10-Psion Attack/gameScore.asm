gameScore_UpdateScore
        lda playerScore
        beq .ExitUpdateScore
        sei
        sed
        clc
        lda playerTotalScore+1
        adc playerScore
        sta playerTotalScore+1
        lda playerTotalScore
        adc #0
        sta playerTotalScore
        cld
        cli
.ExitUpdateScore
        rts


gameScore_DisplayStats
        ldx #1
        ldy #3
.DisplayStatsLoop
        lda playerTotalScore,x
        pha
        and #15
        clc
        adc #$30
        sta SCREENRAM+7,y
        dey
        pla
        and #240
        lsr
        lsr
        lsr
        lsr
        clc
        adc #$30
        sta SCREENRAM+7,y
        dey
        dex
        bpl .DisplayStatsLoop
        lda #0
        sta playerScore

        lda playerTotalScore
        cmp hiscore
        bcc .UpdateLives
        bne .UpdateHiScore
        lda playerTotalScore+1
        cmp hiscore+1
        bcc .UpdateLives
.UpdateHiScore
        ldy #3
.UpdateHiScoreLoop
        lda SCREENRAM+7,y
        sta SCREENRAM+23,y
        dey
        bpl .UpdateHiScoreLoop
        lda playerTotalScore
        sta hiscore
        lda playerTotalScore+1
        sta hiscore+1
.UpdateLives
        lda playerLives
        clc
        adc #$30
        sta SCREENRAM+38
        lda hyperjumpLeft
        clc
        adc #$30
        sta SCREENRAM+33
        rts
