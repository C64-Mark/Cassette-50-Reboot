Menu_InitialiseScreen
        lda menuInit
        beq .InitMenu
        rts
.InitMenu
        inc menuInit
        jsr Screen_Clear
        lda #GRAY2
        sta BDCOL
        sta BGCOL0
        ldx #29
.DisplayDownhillLoop
        lda txt_MenuDownhillR1,x
        sta SCREENRAM+5,x
        lda txt_MenuDownhillR2,x
        sta SCREENRAM+45,x
        lda txt_MenuDownhillR3,x
        sta SCREENRAM+85,x
        lda txt_MenuDownhillR4,x
        sta SCREENRAM+125,x
        lda txt_MenuDownhillR5,x
        sta SCREENRAM+165,x
        dex
        bpl .DisplayDownhillLoop
        ldx #17
.DisplaySkiJumpLoop
        lda txt_SkiJump,x
        sta SCREENRAM+292,x
        lda #LIGHTGREEN
        sta COLOURRAM+292,x
        lda txt_SkillLevel,x
        sta SCREENRAM+450,x
        lda #BLUE
        sta COLOURRAM+450,x
        lda txt_PushFireToStart,x
        sta SCREENRAM+648,x
        dex
        bpl .DisplaySkiJumpLoop
        lda #RED
        sta COLOURRAM+463
        lda #FRAME_SKI_RIGHT
        sta SPRPTR0
        lda #130
        sta SPRX0
        lda #200
        sta SPRY0
        lda #1
        sta SPREN
        sta SPRYEX
        sta SPRXEX
        lda #0
        sta SPRXMSB
        lda #RED
        sta SPRCOL0
        lda #1
        sta gameDifficulty
        rts


Menu_AnimateSkier
        dec skierAnimCounter
        beq .AnimateSkier
        rts
.AnimateSkier
        lda #RATE_SKIER_ANIM
        sta skierAnimCounter
        lda SPRPTR0
        eor #1
        sta SPRPTR0
        rts


Menu_ColourWash
        dec colourRate
        beq .ColourWash
        rts
.ColourWash
        lda #RATE_COLOUR_WASH
        sta colourRate
        ldx #29
.ColourWashLoop
        ldy titleColourIndex
        lda tbl_TitleColours,y
        sta COLOURRAM+5,x
        sta COLOURRAM+45,x
        iny
        lda tbl_TitleColours,y
        sta COLOURRAM+85,x
        iny
        lda tbl_TitleColours,y
        sta COLOURRAM+125,x
        sta COLOURRAM+165,x
        dex
        bpl .ColourWashLoop
        inc titleColourIndex
        lda titleColourIndex
        cmp #6
        bne .ExitColourWash
        lda #0
        sta titleColourIndex
.ExitColourWash
        rts


Menu_TextFlash
        dec textFlashRate
        beq .TextFlash
        rts
.TextFlash
        lda #RATE_TEXT_FLASH
        sta textFlashRate
        ldy #BLACK
        dec flashState
        beq .SetBlack
        lda #TRUE
        sta flashState
        ldy #GRAY2
.SetBlack
        tya
        ldx #17
.FlashText
        sta COLOURRAM+648,x
        dex
        bpl .FlashText
        rts


Menu_Input
        lda CIAPRA
        and #JOY_FIRE
        bne .CheckChangeDifficulty
        lda #GF_STATUS_SKIING
        sta gameStatus
.ExitMenuInput
        rts
.CheckChangeDifficulty
        dec inputDelayCounter
        bne .ExitMenuInput
        lda #RATE_INPUT_DELAY
        sta inputDelayCounter
        lda CIAPRA
        and #JOY_LEFT
        bne .TestMenuJoyRight
        dec gameDifficulty
        lda gameDifficulty
        cmp #0
        bne .UpdateDifficultyLevel
        lda #9
.UpdateDifficultyLevel
        sta gameDifficulty
        ora #$30
        sta SCREENRAM+463
        rts
.TestMenuJoyRight
        lda CIAPRA
        and #JOY_RIGHT
        bne .ExitMenuInput
        inc gameDifficulty
        lda gameDifficulty
        cmp #10
        bne .UpdateDifficultyLevel
        lda #1
        jmp .UpdateDifficultyLevel
