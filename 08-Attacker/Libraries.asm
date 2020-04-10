;Initialise the SID random number generator
defm    LIBGENERAL_INITRAND
        lda #$FF
        sta FREL3
        sta FREH3
        lda #$80
        sta VCREG3
        endm


        ;Set video modes with clearbit
defm    LIBSCREEN_SETVIC_AVV ;VICRegister, Clear, Set
        lda /1
        and #/2
        ora #/3
        sta /1
        endm


;Sets 1000 bytes of memory from start address with a value
defm    LIBSCREEN_SET1000_AV ;Address, Character
        lda #/2
        ldx #250
@loop   dex
        sta /1,x
        sta /1+250,x
        sta /1+500,x
        sta /1+750,x
        bne @loop
        endm


;Set border and background colours
defm    LIBSCREEN_SETCOLOURS_VV ;Border, Background
        lda #/1
        sta BDCOL
        lda #/2
        sta BGCOL0
        endm


;Wait for given raster line
defm    LIBSCREEN_WAIT_V ;Line
@loop   lda #/1
        cmp RASTER
        bne @loop
        endm


;Print to the screen using the kernal CHROUT routine (max 255 chars)
defm    LIBSCREEN_PRINT_A ;address of text

        ldy #0
@nextchar
        lda /1,y
        beq @exit
        jsr krnCHROUT
        iny
        jmp @nextchar
@exit
        endm


;Print to the screen using the kernal CHROUT routine (max 255 chars)
defm    LIBSCREEN_PRINT_DELAY_AA ;address of text, Delay
        ldy #0
@nextchar
        lda /1,y
        beq @exit
        jsr krnCHROUT
        lda #0
        sta sysTI_A2
@loop
        lda sysTI_A2
        cmp #/2
        bne @loop
        iny
        jmp @nextchar
@exit
        endm


defm    LIBJOY_GETJOY_V ; JoystickDirection
        lda CIAPRA
        and #/1
        endm ; test with bne on return


;set sprite animation frame  
defm    LIBSPRITE_SETFRAME_VV ;Sprite Number, Anim Index
        ldy #/1        
        clc
        lda #/2
        adc #SPRITERAM
        sta SPRPTR0,y
        endm


defm    LIBSPRITE_MULTICOLORENABLE_VV ;spritenumber, enable/disable
        ldy #/1
        lda spriteNumberMask,y      
        ldy #/2
        beq @disable
@enable
        ora SPRMCS
        sta SPRMCS
        jmp @done 
@disable
        eor #$FF
        and SPRMCS
        sta SPRMCS
@done
        endm


defm    LIBSPRITE_SETPOSITION_VAAA ;SpriteNumber, XHi, XLo, Y
        lda #/1
        asl
        tay
        lda /3
        sta SPRX0,y
        lda /4
        sta SPRY0,y
        ldy #/1
        lda spriteNumberMask,y
        eor #$FF
        and SPRXMSB
        sta SPRXMSB
        ldy /2
        beq @end
        ldy #/1
        lda spriteNumberMask,y
        ora SPRXMSB
        sta SPRXMSB
@end
        endm


defm    LIBSPRITE_SETCOLOUR_VV ;SpriteNumber, Value
        lda #/2
        sta SPRCOL0 + /1
        endm


;Sprite multi-colour set
defm    LIBSPRITE_SETMULTICOLORS_VV ;Colour0, Colour1
        lda #/1
        sta SPRMC0
        lda #/2
        sta SPRMC1
        endm


;Sprite enable/disable
defm    LIBSPRITE_ENABLE_VV ;SpriteNumber, True/False
        lda #/1
        ldy #/2
        beq @disable
@enable
        ora SPREN
        sta SPREN
        jmp @done 
@disable
        eor #$FF
        and SPREN
        sta SPREN
@done
        endm


;Subtract one 16-bit value from another
defm    LIBMATHS_SUBTRACT_16BIT_AAA ;Source 1, Source 2, Target
        sec
        lda /1
        sbc /2
        sta /3
        lda /1 + 1
        sbc /2 + 1
        sta /3 + 1
        endm


;Add value to a value in an address and store it
defm    LIBMATHS_ADD_16BIT_AAA ;Source1, Source2, Target
        clc
        lda /1
        adc /2
        sta /3
        lda /1 + 1
        adc /2 + 1
        sta /3 + 1
        endm


;Add value to a value in an address and store it
defm    LIBMATHS_ADD_8BIT_AVA ;Source, Value, Target
        clc
        lda /1
        adc #/2
        sta /3
        endm


;set sprite animation frame  
defm    LIBSPRITE_SETFRAME_VA ;Sprite Number, Anim Index
        ldy #/1        
        clc
        lda /2
        adc #SPRITERAM
        sta SPRPTR0,y
        endm


;Add value to a value in an address and store it
defm    LIBMATHS_ADD_16BIT_AVVA ;Source, Low Byte, High Byte, Target
        clc
        lda /1
        adc #/2
        sta /4
        lda /1 + 1
        adc #/3
        sta /4 + 1
        endm


defm    LIBSPRITE_SPRITECOLLIDE_V ;spritenumber
        ldy #/1
        lda SpriteNumberMask,y
        and SPRCSP
        endm


defm    LIBSPRITE_DATACOLLIDE_V ;spritenumber
        ldy #/1
        lda SpriteNumberMask,y
        and SPRCBG
        endm


;Subtract an 8-bit value from a 16-bit value
defm    LIBMATHS_SUBTRACT_16BIT_AVVA ;Source 1, Low byte, high byte, Target
        sec
        lda /1
        sbc #/2
        sta /4
        lda /1 + 1
        sbc #/3
        sta /4 + 1
        endm