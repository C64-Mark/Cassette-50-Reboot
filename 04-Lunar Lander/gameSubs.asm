InitVariables

        lda #gfMenu
        sta gameStatus

        lda #0
        sta lunarXLo
        sta lunarY
        sta lunarXHi
        sta velocityX
        sta velocityY
        sta baseX
        sta baseY
        sta lunarCollision
        sta lunarSpeed
        sta lunarSprite
        
        lda #24
        sta lunarXLo + 1
        lda #58
        sta lunarY + 1
        lda #50
        sta gravity
        sta fuel

        rts

InitGame
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_SETCOLOURS_VVVVV black, black, black, black, black
        LIBSCREEN_SETVIC_AVV VMCR, 240, 12
        LIBGENERAL_INITRAND
        rts

IntroScreen
        LIBSCREEN_PRINTALL_A txtTitle
@response
        LIBJOY_GETJOY_V JoyFire
        bne @response
        rts

InitGameScreen
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_SET1000_AV COLOURRAM, gray1
        LIBGENERAL_GENERATE_8BIT_RAND_VVA 7, 14, rangeHeight
        ldx #0
        stx currentColumn
mainloop
        txa
        clc
        adc #$C0
        sta zpLow
        lda #$07
        sta zpHigh
        lda SIDRAND
        and #3
        sta offsetHeight
        lda SIDRAND
        and #1
        cmp #1
        bne @addheight
        LIBMATHS_SUBTRACT_8BIT_AAA rangeHeight, offsetHeight, rangeHeight
        lda rangeHeight
        bpl @print
        lda #0
        sta rangeHeight
        jmp @print
@addheight
        LIBMATHS_ADD_8BIT_AAA rangeHeight, offsetHeight, rangeHeight
        cmp #18
        bcc @print
        lda #17
        sta rangeHeight
@print
        ldx #0
        ldy #0
@loopprint
        lda #64
        sta (zpLow),y
        LIBMATHS_SUBTRACT_16BIT_AVVA zpLow, 40, 0, zpLow
        inx
        cpx rangeHeight
        bmi @loopprint
        inc currentColumn
        ldx currentColumn
        cpx #40
        bne mainloop
;base set up
        LIBGENERAL_GENERATE_8BIT_RAND_VVA 5, 25, baseX
        lda baseX
        clc
        adc #$C0
        sta zpLow
        lda #$07
        sta zpHigh        
        lda SIDRAND
        and #3
        sta baseHeight
        ldx #0
baseheightxloop
        cpx baseHeight
        beq atbase
        bcc underbase
        lda #32
        jmp printbase
atbase
        lda zpLow
        sta zpLow2
        LIBMATHS_ADD_8BIT_AVA zpHigh, $D4, zpHigh2
        lda #65
        jmp printbase
underbase
        lda #64
printbase
        ldy #0
baseheightyloop
        sta (zpLow),y
        iny
        cpy #6
        bne baseheightyloop
        LIBMATHS_SUBTRACT_16BIT_AVVA zpLow, 40, 0, zpLow
        inx
        cpx #20
        bne baseheightxloop
        ldy #0
        lda red
colourbase
        sta (zpLow2),y
        iny
        cpy #6
        bne colourbase
        rts

CalculateBasePosition
        lda baseX
        asl
        asl
        asl
        clc
        adc #24
        sta baseX
        clc
        adc #31
        sta baseX + 1
        rts

InitSprites
        LIBSPRITE_SETFRAME_AV lunarSprite, 0
        LIBSPRITE_MULTICOLORENABLE_AV lunarSprite, true
        LIBSPRITE_ENABLE_VV %00000001, true
        LIBSPRITE_SETPOSITION_AAAA lunarSprite, lunarXHi, lunarXLo + 1, lunarY + 1
        LIBSPRITE_SETCOLOUR_VV 0, black
        LIBSPRITE_SETMULTICOLORS_VV blue, yellow
        rts

UserInput
        LIBJOY_GETJOY_V JoyUp
        bne @down
        dec lunarY + 1
@down
        LIBJOY_GETJOY_V JoyDown
        bne @left
        inc lunarY + 1
@left
        LIBJOY_GETJOY_V JoyLeft
        bne @right
        dec lunarXLo + 1
@right
        LIBJOY_GETJOY_V JoyRight
        bne @exit
        inc lunarXLo + 1
@exit
        rts

UpdateSprites
        LIBSPRITE_SETPOSITION_AAAA lunarSprite, lunarXHi, lunarXLo + 1, lunarY + 1
        rts





;debug space
dbvarprint
        lda #19
        jsr krnCHROUT
        ldx #0
        lda #0
        jsr $BDCD

        lda #44
        jsr krnCHROUT

        ldx #0
        lda #0
        jsr $BDCD

        lda #44
        jsr krnCHROUT

        ldx #0
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
