gameLevel_NextWave
        LIBSPRITE_ENABLE_VV %11111111, false
        sed
        lda playerWave
        clc
        adc #1
        sta playerWave
        cld
        inc currentLevel
        LIBSCREEN_SET1000_AV SCREENRAM, space
        ldx #0
.WaveTextLoop
        lda txtWaveNumber,x
        sta SCN_ROW10+15,x
        lda #cyan
        sta COL_ROW10+15,x
        lda txtGetReady,x
        sta SCN_ROW12+15,x
        lda #yellow
        sta COL_ROW12+15,x
        inx
        cpx #10
        bne .WaveTextLoop

        lda playerWave
        pha
        and #15
        clc
        adc #$30
        sta SCN_ROW10+22
        pla
        and #$F0
        lsr
        lsr
        lsr
        lsr
        clc
        adc #$30
        sta SCN_ROW10+21

        jsr gameLevel_SetVariables
        LIBGENERAL_DELAY_V 255
        LIBGENERAL_DELAY_V 255
        LIBGENERAL_DELAY_V 255
        LIBGENERAL_DELAY_V 255
        LIBSPRITE_ENABLE_VV %00000011, true
        rts

gameLevel_SetVariables
        ldx currentLevel
        cpx #10
        bcc .UpdateLevelStats
        ldx #09
        stx currentLevel
.UpdateLevelStats
        lda levelTime,x
        sta gameTimer
        lda levelNumberObjects,x
        sta numberObjects
        lda levelObjectFrameRate,x
        sta objectFrameRate
        lda levelObjectLowestSpeed,x
        sta objectLowestSpeed
        lda levelObjectEntryDelay,x
        sta objectEntryDelay
        lda levelObjectSelectRate,x
        sta objectSelectionRate
        lda levelCompletionBonus,x
        sta playerScore
        lda levelGroundRate,x
        sta groundRate
        lda #1
        sta hyperjumpLeft
        rts


gameLevel_GameOver
        LIBSPRITE_ENABLE_VV %11111111, false
        LIBSCREEN_SET1000_AV SCREENRAM, space
        ldx #9
.GameOverLoop
        lda txtGameOver,x
        sta SCN_ROW10+15,x
        lda #white
        sta COL_ROW10+15,x
        lda txtPressFire,x
        sta SCN_ROW12+15,x
        lda #yellow
        sta COL_ROW12+15,x
        dex
        bpl .GameOverLoop
.GameOverWaitFire
        LIBJOY_GETJOY_V JoyFire
        bne .GameOverWaitFire
        LIBGENERAL_DELAY_V 255
        lda #GF_STATUS_MENU
        sta gameStatus
        rts

