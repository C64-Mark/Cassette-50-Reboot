Initialise_Game
        lda #GF_STATUS_MENU
        sta gameStatus
        LIBGENERAL_INITRAND
        lda SIDRAND
        LIBSCREEN_SETVIC_AVV VMCR, 240, CHARRAM
        rts

Initialise_MenuDisplay
        LIBSCREEN_SETCOLOURS_VV black, black
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_COPYSCREEN_AA SCN_INTRO, COL_INTRO
.WaitFirePress
        LIBJOY_GETJOY_V JoyFire
        bne .WaitFirePress
        rts

Initialise_Sprites
        lda #0
        sta playerX
        sta playerY
        lda #25
        sta playerX+1
        lda #137
        sta playerY+1
        LIBSPRITE_SETFRAME_VA SHIP_OVERLAY_SPRITE, overlayFrame
        LIBSPRITE_SETFRAME_VA SHIP_SPRITE, shipFrame
        LIBSPRITE_SETFRAME_VA BULLET_SPRITE1, bulletFrame
        LIBSPRITE_SETFRAME_VA BULLET_SPRITE2, bulletFrame
        LIBSPRITE_SETFRAME_VA BULLET_SPRITE3, bulletFrame
        LIBSPRITE_MULTICOLORENABLE_VV SHIP_SPRITE, true
        LIBSPRITE_MULTICOLORENABLE_VV BULLET_SPRITE1, true
        LIBSPRITE_MULTICOLORENABLE_VV BULLET_SPRITE2, true
        LIBSPRITE_MULTICOLORENABLE_VV BULLET_SPRITE3, true
        LIBSPRITE_ENABLE_VV %00000011, true
        LIBSPRITE_SETPOSITION_VAA SHIP_OVERLAY_SPRITE, playerX+1, PlayerY+1
        LIBSPRITE_SETPOSITION_VAA SHIP_SPRITE, playerX+1, playerY+1
        LIBSPRITE_SETCOLOUR_VV SHIP_OVERLAY_SPRITE, gray2
        LIBSPRITE_SETCOLOUR_VV SHIP_SPRITE, gray1
        LIBSPRITE_SETCOLOUR_VV BULLET_SPRITE1, gray2
        LIBSPRITE_SETCOLOUR_VV BULLET_SPRITE2, gray2
        LIBSPRITE_SETCOLOUR_VV BULLET_SPRITE3, gray2
        LIBSPRITE_SETMULTICOLORS_VV red, gray3
        lda #0
        sta SPRCBG
        rts

Initialise_Stars
        ldx #80
        ldy #120
        stx starX
        sty starY
        ldx #120
        ldy #60
        stx starX+1
        sty starY+1
        ldx #240
        ldy #190
        stx starX+2
        sty starY+2
        LIBSPRITE_SETFRAME_VA STAR_SPRITE1, starFrame
        LIBSPRITE_SETPOSITION_VAA STAR_SPRITE1, starX, starY
        LIBSPRITE_SETCOLOUR_VV STAR_SPRITE1, white
        LIBSPRITE_SETFRAME_VA STAR_SPRITE2, starFrame
        LIBSPRITE_SETPOSITION_VAA STAR_SPRITE2, starX+1, starY+1
        LIBSPRITE_SETCOLOUR_VV STAR_SPRITE2, white
        LIBSPRITE_SETFRAME_VA STAR_SPRITE3, starFrame
        LIBSPRITE_SETPOSITION_VAA STAR_SPRITE3, starX+2, starY+2
        LIBSPRITE_SETCOLOUR_VV STAR_SPRITE3, white
        LIBSPRITE_ENABLE_VV %11100000, true
        rts


Initialise_GameVariables
        lda #0
        sta currentLevel
        sta playerScore
        sta playerTotalScore
        sta playerTotalScore+1
        sta playerWave
        sta playerWave+1
        sta hyperjumpStage
        sta objectPreviousRow
        sta objectPreviousRow+1
        sta objectPreviousRow+2
        sta objectPreviousRow+3
        sta objectPreviousRow+4
        sta playerExploding
        sta playerExplosionFrame
        sta playerHit
        lda #EXPLOSION_RATE
        sta playerExplosionCounter
        lda #3
        sta playerLives
        lda SPRCBG
        rts

Initialise_GameScreen
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_SET1000_AV SCREENMAP, #0
        LIBSCREEN_SET1000_AV COLOURRAM, white
        lda $d016       
        and #%11110111  
        sta $d016
        lda #0
        sta currentObject
        sta playerHit
        lda #4
        sta objectEntryRow

        ldx #39
.StatInitLoop
        lda landscape,x
        sta SCN_ROW24,x
        lda #gray1
        sta COL_ROW24,x
        lda txtStatInit,x
        sta SCREENRAM+1,x
        lda #blue
        sta COLOURRAM+1,x
        dex
        bpl .StatInitLoop
        ldx #4
        lda #cyan
.ColourScoresLoop
        sta COLOURRAM+7,x
        sta COLOURRAM+23,x
        dex
        bpl .ColourScoresLoop
        sta COLOURRAM+33
        sta COLOURRAM+38

        ldx #1
        ldy #3
.DisplayHiScoreLoop
        lda hiscore,x
        pha
        and #15
        clc
        adc #$30
        sta SCREENRAM+23,y
        dey
        pla
        and #$F0
        lsr
        lsr
        lsr
        lsr
        clc
        adc #$30
        sta SCREENRAM+23,y
        dey
        dex
        bpl .DisplayHiScoreLoop

        ldx #0
        txa
.ClearObjectsLoop
        sta objectActive,x
        inx
        cpx numberObjects
        bne .ClearObjectsLoop
        rts

