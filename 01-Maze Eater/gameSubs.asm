InitVariables
        lda #gfMenu
        sta gameStatus

        lda #0
        sta pacmanSprite
        sta pacmanAnimFrame
        sta pacmanLastFrame
        sta dotsEaten
        sta pillActive
        sta pillTimer
        sta fruitActive
        sta pacmanX + 1
        sta ghostX + 1
        sta fruitX + 1
        sta score
        sta score + 1
        sta score + 2

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
        LIBSPRITE_SETFRAME_AA pacmanSprite, pacmanAnimFrame
        LIBSPRITE_SETFRAME_AA ghostSprite, ghostAnimFrame
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
        LIBMATHS_SUBTRACT_16BIT_AVVA pacmanScreenAddress, #40, #0, zpLow
        ldy #0
        lda (zpLow),y
        cmp #71
        beq @Down
        LIBMATHS_SUBTRACT_8BIT_AVA pacmanY, #8, pacmanY
        lda pacmanAnimFrame
        cmp pacmanLastFrame
        bne @upframe
        lda #1
        sta pacmanAnimFrame
        rts
@upframe
        lda pacmanLastFrame
        sta pacmanAnimFrame
        rts
@Down
        LIBJOY_GETJOY_V JoyDown
        bne @Left
        LIBMATHS_ADD_16BIT_AVVA pacmanScreenAddress, #40, #0, zpLow
        ldy #0
        lda (zpLow),y
        cmp #71
        beq @Left
        LIBMATHS_ADD_8BIT_AVA pacmanY, #8, pacmanY
        lda pacmanAnimFrame
        cmp pacmanLastFrame
        bne @downframe
        lda #1
        sta pacmanAnimFrame
        rts
@downframe
        lda pacmanLastFrame
        sta pacmanAnimFrame
        rts
@Left
        LIBJOY_GETJOY_V JoyLeft
        bne @Right
        LIBMATHS_SUBTRACT_16BIT_AVVA pacmanScreenAddress, #1, #0, zpLow
        ldy #0
        lda (zpLow),y
        cmp #71
        beq @Right
        LIBMATHS_SUBTRACT_8BIT_AVA pacmanX, #8, pacmanX
        lda pacmanAnimFrame
        cmp #2
        bne @leftframe
        lda #1
        sta pacmanAnimFrame
        rts
@leftframe
        lda #2
        sta pacmanAnimFrame
        sta pacmanLastFrame
        rts
@Right
        LIBJOY_GETJOY_V JoyRight
        bne @exit
        LIBMATHS_ADD_16BIT_AVVA pacmanScreenAddress, #1, #0, zpLow
        ldy #0
        lda (zpLow),y
        cmp #71
        beq @exit
        LIBMATHS_ADD_8BIT_AVA pacmanX, #8, pacmanX
        lda pacmanAnimFrame
        cmp #0
        bne @rightframe
        lda #1
        sta pacmanAnimFrame
        rts
@rightframe
        lda #0
        sta pacmanAnimFrame
        sta pacmanLastFrame
        rts
@exit
        lda pacmanLastFrame
        sta pacmanAnimFrame
        rts

UpdateSprites
        LIBSPRITE_SETPOSITION_AAA pacmanSprite, pacmanX, pacmanY
        LIBSPRITE_SETPOSITION_AAA ghostSprite, ghostX, ghostY
        LIBSPRITE_SETFRAME_AA pacmanSprite, pacmanAnimFrame
        LIBSPRITE_SETFRAME_AA ghostSprite, ghostAnimFrame
        rts

CalculatePacmanScreenAddress
        LIBMATHS_SUBTRACT_8BIT_AVA pacmanX, #13, pacmanXOffset
        LIBMATHS_SUBTRACT_8BIT_AVA pacmanY, #40, pacmanYOffset
        lda pacmanXOffSet
        lsr
        lsr
        lsr
        sta pacmanXOffset
        lda pacmanYOffset
        lsr
        lsr
        lsr
        sta pacmanYOffset
        lda #0
        sta pacmanScreenAddress
        lda #04
        sta pacmanScreenAddress + 1
        ldy pacmanYOffset
@yloop
        LIBMATHS_ADD_16BIT_AVVA pacmanScreenAddress, #40, #0, pacmanScreenAddress
        dey
        bne @yloop
        dec pacmanXOffset
        lda pacmanScreenAddress
        clc
        adc pacmanXOffset
        sta pacmanScreenAddress
        lda pacmanScreenAddress + 1
        adc #0
        sta pacmanScreenAddress + 1
        rts

MoveGhost
        lda ghostX
        cmp pacmanX
        beq @updown
        bcc @moveright
        LIBMATHS_SUBTRACT_8BIT_AVA ghostX, #1, ghostX
        lda #6
        sta ghostAnimFrame
        jmp @updown
@moveright
        LIBMATHS_ADD_8BIT_AVA ghostX, #1, ghostX
        lda #4
        sta ghostAnimFrame
@updown
        lda ghostY
        cmp pacmanY
        beq @exit
        bcc @movedown
        LIBMATHS_SUBTRACT_8BIT_AVA ghostY, #1, ghostY
        lda #3
        sta ghostAnimFrame
        rts
@movedown
        LIBMATHS_ADD_8BIT_AVA ghostY, #1, ghostY
        lda #5
        sta ghostAnimFrame
@exit
        rts

PacmanEating
        LIBGENERAL_COPY_WORD_AA pacmanScreenAddress, zpLow
        ldy #0
        lda (zpLow),y
        cmp #69
        bne @checkpill
        LIBMATHS_BCD_ADD_24BIT_AVA score, 1, score
        inc dotsEaten
        lda #$20
        sta (zpLow),y
@checkpill
        cmp #70
        bne @exit
        LIBMATHS_BCD_ADD_24BIT_AVA score, 1, score
        inc dotsEaten
        lda #$20
        sta (zpLow),y
        lda #true
        sta pillActive
@exit
        rts

Throttle
        ldy #throttleSpeed
@loopy
        ldx #$FF
@loopx
        dex
        bne @loopx
        dey
        bne @loopy
        rts

DisplayStats
        ;score
        ldx #0
        ldy #5
@loop
        lda score,x
        pha
        and #15
        clc
        adc #$30
        sta $0537,y
        dey
        pla
        lsr
        lsr
        lsr
        lsr
        clc
        adc #$30
        sta $0537,y
        dey
        inx
        cpx #3
        bne @loop
        rts

PacmanCollision
        lda SPRCSP
        and #7
        cmp #5
        beq @fruit
        cmp #0
        beq @exit
        cmp #6
        beq @exit
        ;collided with ghost, check for pill active
@exit
        rts
@fruit
        ;collided with fruit, check fruit active
        LIBMATHS_BCD_ADD_24BIT_AVA score, 50, score
        LIBSPRITE_ENABLE_VV %00000100, false
        rts

;debug space
dbvarprint
        lda #19
        jsr krnCHROUT
        ldx ghostX
        lda #0
        jsr $BDCD

        lda #44
        jsr krnCHROUT

        ldx ghostY
        lda #0
        jsr $BDCD

        lda #44
        jsr krnCHROUT

        ldx ghostSprite
        lda #0
        jsr $BDCD

        lda #$20
        jsr krnCHROUT
        lda #$20
        jsr krnCHROUT
        lda #$20
        jsr krnCHROUT
        lda #$20
        jsr krnCHROUT

        rts
