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


; Set screen border and background colour
defm    LIBSCREEN_SETCOLOURS_VV ;Border, Background0
        lda #/1
        sta BDCOL
        lda #/2
        sta BGCOL0
        endm


; Use SID to generate a random number seed
defm    LIBGENERAL_INITRAND
        lda #$FF
        sta FREL3
        sta FREH3
        lda #$80
        sta VCREG3
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


defm    LIBSCREEN_PRINT_BCD_32BIT_A
        ldy #0
        sty digitFoundFlag
@FetchNextDigit
        lda digitFoundFlag
        bne @PrintDigit
        lda (/1),y
        beq @NextDigit
@PrintDigit
        lda (/1),y
        pha
        lsr
        lsr
        lsr
        lsr
        ora #$30
        cmp #$30
        bne @PrintFirstDigit
        ldx digitFoundFlag
        beq @PrintSecondDigit
@PrintFirstDigit
        jsr krnCHROUT
@PrintSecondDigit
        pla
        and #$0F
        ora #$30
        jsr krnCHROUT
        lda #TRUE
        sta digitFoundFlag
@NextDigit
        iny
        cpy #4
        bne @FetchNextDigit
        endm


;Display text on the screen
defm    LIBSCREEN_PRINT_INDIRECT_A
        ldy #0
@loop
        lda (/1),y
        beq @exit
        jsr krnCHROUT
        iny
        jmp @loop
@exit
        endm


;Display text on the screen
defm    LIBSCREEN_PRINT_A
        ldy #0
@loop
        lda /1,y
        beq @exit
        jsr krnCHROUT
        iny
        jmp @loop
@exit
        endm


defm    LIBSCREEN_PRINT_CHAR_V
        lda #/1
        jsr krnCHROUT
        endm


defm    LIBGENERAL_DELAYTI_V
        ldy #/1
@loop2
        lda #0
        sta sysTI_A2
@loop
        lda sysTI_A2
        cmp #60
        bcc @loop
        dey
        bne @loop2
        endm


defm    LIBMATHS_ADD8BIT_AV
        clc
        lda /1
        adc #/2
        sta /1
        bcc @end
        inc /1+1
@end
        endm


defm    LIBMATHS_SUBTRACT_BCD_32BIT_AA
        sed
        sec
        ldy #3
        lda (/1),y
        sbc (/2),y
        sta (/1),y
        dey
        lda (/1),y
        sbc (/2),y
        sta (/1),y
        dey
        lda (/1),y
        sbc (/2),y
        sta (/1),y
        dey
        lda (/1),y
        sbc (/2),y
        sta (/1),y
        cld
        endm


defm    LIBMATHS_ADD_BCD_32BIT_AA
        sed
        clc
        ldy #3
        lda (/1),y
        adc (/2),y
        sta (/1),y
        dey
        lda (/1),y
        adc (/2),y
        sta (/1),y
        dey
        lda (/1),y
        adc (/2),y
        sta (/1),y
        dey
        lda (/1),y
        adc (/2),y
        sta (/1),y
        cld
        endm