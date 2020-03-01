; Copy screen and colour data to display ram
defm    LIBSCREEN_COPYSCREEN_AA ;address of screen, address of colour
        ldx #0
@loop   
        lda /1,x
        sta SCREENRAM,x
        lda /1+250,x
        sta SCREENRAM+250,x
        lda /1+500,x
        sta SCREENRAM+500,x
        lda /1+750,x
        sta SCREENRAM+750,x
        lda /2,x
        sta COLOURRAM,x
        lda /2+250,x
        sta COLOURRAM+250,x
        lda /2+500,x
        sta COLOURRAM+500,x
        lda /2+750,x
        sta COLOURRAM+750,x
        inx
        cpx #251
        bne @loop
        endm


; Set 1000 consecutive bytes to a character code
defm    LIBSCREEN_SET1000_AV ;Start Address, Character Code
        lda #/2
        ldx #250
@loop   dex
        sta /1,x
        sta /1+250,x
        sta /1+500,x
        sta /1+750,x
        bne @loop
        endm

; Set screen border and background colour
defm    LIBSCREEN_SETCOLOURS_VV ;Border, Background
        lda #/1
        sta BDCOL
        lda #/2
        sta BGCOL0
        endm

; Set VIC video modes
defm    LIBSCREEN_SETVIC_AVV ;VICRegister, Clear, Set
        lda /1
        and #/2
        ora #/3
        sta /1
        endm


; Wait for raster line
defm    LIBSCREEN_WAIT_V ;Line number
@loop   lda #/1
        cmp RASTER
        bne @loop
        endm


; Enable sprites
defm    LIBSPRITE_ENABLE_VV ;Sprite Number, True/False
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


; Switch on sprite multicolour mode
defm    LIBSPRITE_MULTICOLORENABLE_VV ;Sprite Number, True/False
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

; Select sprite multicolours
defm    LIBSPRITE_SETMULTICOLORS_VV ;Colour0, Colour1
        lda #/1
        sta SPRMC0
        lda #/2
        sta SPRMC1
        endm


; Set sprite colour via value & value
defm    LIBSPRITE_SETCOLOUR_VV ;Sprite Number, Value
        lda #/2
        sta SPRCOL0 + /1
        endm

; Set sprite colour via value & address
defm    LIBSPRITE_SETCOLOUR_VA ;Sprite Number, Address
        lda /2
        sta SPRCOL0 + /1
        endm

; Set current animation frame for sprite
defm    LIBSPRITE_SETFRAME_VA ;Sprite Number, Anim Index
        ldy #/1        
        clc
        lda /2
        adc #SPRITERAM
        sta SPRPTR0,y
        endm


; Set position of sprite on the screen
defm    LIBSPRITE_SETPOSITION_VAA ;Sprite Number, X Source, Y Source
        lda #/1
        asl
        tay
        lda /2
        sta SPRX0,y
        lda /3
        sta SPRY0,y
        endm

; Use SID to generate a random number seed
defm    LIBGENERAL_INITRAND
        lda #$FF
        sta FREL3
        sta FREH3
        lda #$80
        sta VCREG3
        endm

; Simple delay
defm    LIBGENERAL_DELAY_V ; no. of y loops
        ldy #/1
@loopy
        ldx #$FF
@loopx
        dex
        bne @loopx
        dey
        bne @loopy
        endm

; Get input for joystick in port 2
defm    LIBJOY_GETJOY_V ; JoystickDirection
        lda CIAPRA
        and #/1
        endm ; test with bne on return


; Add 8-bit value to 16-bit value
defm    LIBMATHS_ADD_16BIT_AV ;Source, Value
        clc
        lda /1
        adc #/2
        sta /1
        lda /1 + 1
        adc #0
        sta /1 + 1
        endm


; Subtract 8-bit value from 16-bit value
defm    LIBMATHS_SUBTRACT_16BIT_AV ;Source 1, Value
        sec
        lda /1
        sbc #/2
        sta /1
        lda /1 + 1
        sbc #0
        sta /1 + 1
        endm

