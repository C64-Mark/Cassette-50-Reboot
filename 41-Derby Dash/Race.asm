Race_InitialiseScreen
        LIBSCREEN_SETCOLOURS_VV LIGHTGREEN, GREEN
        LIBSCREEN_SET1000_AV SCREENRAM, CHAR_GRASS
        LIBSCREEN_SET1000_AV COLOURRAM, LIGHTGREEN
        ldy #0
.DrawScreenLoop
        lda #CHAR_SPACE
        sta SCN_ROW0,y
        sta SCN_ROW1,y
        sta SCN_ROW23,y
        lda #CHAR_FENCE
        sta SCN_ROW2,y
        sta SCN_ROW22,y
        lda #WHITE
        sta COL_ROW2,y
        sta COL_ROW22,y
        lda txt_PlayerHorses,y
        sta SCN_ROW24,y
        iny
        cpy #40
        bne .DrawScreenLoop
        lda #CHAR_POST_TOP
        sta SCN_ROW0+39
        lda #RED
        sta COL_ROW0+39
        lda #CHAR_POST_BOTTOM
        sta SCN_ROW1+39
        lda #WHITE
        sta COL_ROW1+39
        lda #<SCN_FINISH_LINE
        sta .FinishLineChar+1
        lda #>SCN_FINISH_LINE
        sta .FinishLineChar+2
        ldy #0
.DrawFinishLineLoop
        lda #CHAR_FINISH_LINE
.FinishLineChar
        sta $BEEF
        clc
        lda .FinishLineChar+1
        adc #40
        sta .FinishLineChar+1
        bcc .SkipLineHiByte
        inc .FinishLineChar+2
.SkipLineHiByte
        iny
        cpy #19
        bne .DrawFinishLineLoop
        ldx #<COL_HORSE
        lda #>COL_HORSE
        stx .SetHorseCharColour+1
        inx
        stx .SetHorseCharColour+4
        sta .SetHorseCharColour+2
        sta .SetHorseCharColour+5
        ldx #0
.SetHorseCharColourLoop
        cpx numberPlayers
        bcs .PlayerNotActive
        lda playerSelectedHorse,x
        tay
        lda tbl_HossColours,y
        jmp .SetHorseCharColour
.PlayerNotActive
        lda #GREEN
.SetHorseCharColour
        sta $BEEF
        sta $B00B
        lda .SetHorseCharColour+1
        clc
        adc #11
        sta .SetHorseCharColour+1
        adc #1
        sta .SetHorseCharColour+4
        inx
        cpx #4
        bne .SetHorseCharColourLoop
        rts


Race_InitialiseHorses
        ldx #0
        ldy #0
.InitHorseX
        lda #24
        sta horseX,x
        sta SPRX0,y
        lda #0
        sta horseFinished,x
        lda #HORSE_FRAME1
        sta SPRPTR0,x
        lda #HORSE_FRAME_RATE
        sta horseFrameCounter,x
        lda #1
        sta horseSpeed,x
        iny
        iny
        inx
        cpx #6
        bne .InitHorseX
        lda #0
        sta SPRXMSB
        sta finishOrderPointer
        sta finishCount
        sta horseSoundFlag
        lda #%00111111
        sta SPREN
        lda #HORSE_SOUND_RATE_OFF
        sta horseSoundCounter
        rts


Race_InitialiseRace
        lda #15
        sta SIDVOL
        lda #64
        sta SUREL1
        lda #4
        sta ATDCY1
        lda #33
        sta VCREG1
        LIBSCREEN_PRINT_A txt_OnYourMarks
        lda #75
        sta FREL1
        lda #34
        sta FREH1
        LIBGENERAL_DELAYTI_V 2
        LIBSCREEN_PRINT_A txt_GetSet
        lda #126
        sta FREL1
        lda #38
        sta FREH1
        LIBGENERAL_DELAYTI_V 2
        LIBSCREEN_PRINT_A txt_Go
        lda #52
        sta FREL1
        lda #43
        sta FREH1
        LIBGENERAL_DELAYTI_V 2
        LIBSCREEN_PRINT_A txt_Ascot
        lda #0
        sta FREL1
        sta FREH1
        lda #129
        sta VCREG1
        lda #GF_STATUS_RACE
        sta gameStatus
        rts


Race_MoveHorse
        ldx #0
.HorseSpeedLoop
        dec horseSpeed,x
        lda horseSpeed,x
        bne .UpdateHorseFrame
        lda SIDRAND
        and #7
        clc
        adc #1
        sta horseSpeed,x
        txa
        asl
        tay
        inc horseX,x
        lda horseX,x
        sta SPRX0,y
        bne .UpdateHorseFrame
        lda SPRXMSB
        ora horseSpriteNumberMask,x
        sta SPRXMSB
.UpdateHorseFrame
        dec horseFrameCounter,x
        lda horseFrameCounter,x
        bne .NextHorse
        lda #HORSE_FRAME_RATE
        sta horseFrameCounter,x
        ldy #33
        lda SPRPTR0,x
        cmp #33
        bne .SetHorseFrame
        iny
.SetHorseFrame
        tya
        sta SPRPTR0,x
.NextHorse
        inx
        cpx #6
        bne .HorseSpeedLoop
        rts


Race_HorseSound
        dec horseSoundCounter
        bne .ExitHorseSound
        lda horseSoundFlag
        beq .SoundOn
        lda #FALSE
        sta horseSoundFlag
        sta FREH1
        sta FREL1
        lda #HORSE_SOUND_RATE_OFF
        sta horseSoundCounter
        jmp .ExitHorseSound
.SoundOn
        lda #TRUE
        sta horseSoundFlag
        lda #HORSE_SOUND_RATE_ON
        sta horseSoundCounter
        lda #34
        sta FREH1
        lda #75
        sta FREL1
.ExitHorseSound
        rts


Race_CheckHorseFinished
        ldx #0
.WinningHorseLoop
        lda horseFinished,x
        bne .CheckHorseOffScreen
        lda SPRXMSB
        and horseSpriteNumberMask,x
        beq .CheckNextHorseWon
        lda horseX,x
        cmp #60
        bne .CheckHorseOffScreen
        ldy finishOrderPointer
        txa
        sta finishOrder,y
        iny
        sty finishOrderPointer
        lda #TRUE
        sta horseFinished,x
        jmp .CheckNextHorseWon
.CheckHorseOffScreen
        lda horseX,x
        cmp #120
        bcc .CheckNextHorseWon
        lda horseSpriteNumberMask,x
        eor SPREN
        sta SPREN
        inc finishCount
.CheckNextHorseWon
        inx
        cpx #6
        bne .WinningHorseLoop
        lda finishCount
        cmp #6
        bcc .ExitCheckRaceFinished
        lda #GF_STATUS_BANK
        sta gameStatus
.ExitCheckRaceFinished
        rts




