InitVariables
        lda #gfMenu
        sta gameStatus

        lda #0
        sta pacmanSprite
        sta pacmanAnimFrame
        sta dotsEaten
        sta pillActive
        sta pillTimer
        sta fruitActive
        sta score
        sta score + 1
        sta score + 2
        sta score + 3
        sta score + 4
        sta score + 5
        sta score + 6
        sta pacmanX + 1
        sta ghostX + 1
        sta fruitX + 1
        lda #1
        sta ghostSprite
        sta difficultyLevel
        sta levelNumber

        lda #2
        sta fruitSprite
        sta ghostColour
        sta fruitColour

        lda #3
        sta pacmanLives
        sta ghostAnimFrame

        lda #7
        sta fruitFrame

        lda #133
        sta pacmanX
        lda #231
        sta pacmanY


        lda #50
        sta ghostX
        lda #80
        sta ghostY
        lda #128
        sta fruitX
        lda #138
        sta fruitY

        rts

InitGame
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_SETVIC_AVV VMCR, 240, 12
        LIBSCREEN_SETCOLOURS_VVVVV black, black, black, black, black
        rts

IntroScreen
        LIBSCREEN_PRINT_A txtTitle
@response
        LIBJOY_GETJOY_V JoyFire
        bne @response
        rts

InitGameScreen
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_PRINT_A scnMazeA
        LIBSCREEN_PRINT_A scnMazeB
        LIBSCREEN_PRINT_A scnMazeC
        LIBSCREEN_PRINT_A scnMazeD
        LIBSCREEN_PRINT_A scnMazeE
        LIBSCREEN_PRINT_A scnStats
        rts

InitSprites
        LIBSPRITE_SETFRAME_AV pacmanSprite, 0
        LIBSPRITE_SETFRAME_AV ghostSprite, 3
        LIBSPRITE_MULTICOLORENABLE_AV ghostSprite, true
        LIBSPRITE_SETFRAME_AV fruitSprite, 7
        LIBSPRITE_ENABLE_VV %00000111, true
        LIBSPRITE_SETPOSITION_AAAA pacmanSprite, pacmanX + 1, pacmanX, pacmanY
        LIBSPRITE_SETPOSITION_AAAA ghostSprite, ghostX + 1, ghostX, ghostY
        LIBSPRITE_SETPOSITION_AAAA fruitSprite, fruitX + 1, fruitX, fruitY
        LIBSPRITE_SETCOLOUR_VV 0, yellow
        LIBSPRITE_SETCOLOUR_VV 1, red
        LIBSPRITE_SETCOLOUR_VV 2, lightred
        LIBSPRITE_SETMULTICOLORS_VV white, black
        rts

UserInput
        LIBJOY_GETJOY_V JoyUp
        bne @Down
        dec pacmanY
        rts
@down
        LIBJOY_GETJOY_V JoyDown
        bne @Left
        inc pacmanY
        rts
@Left
        LIBJOY_GETJOY_V JoyLeft
        bne @right
        dec pacmanX
        rts
@right
        LIBJOY_GETJOY_V JoyRight
        bne @exit
        inc pacmanX
@exit
        rts

UpdatePacman
        LIBSPRITE_SETPOSITION_AAAA pacmanSprite, pacmanX + 1, pacmanX, pacmanY
        rts
