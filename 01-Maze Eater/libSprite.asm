;-------------------------------------------------------------------------------
;LIBSPRITE: Sprite Libraries
;-------------------------------------------------------------------------------

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

;Sprite enable/disable by address
defm    LIBSPRITE_ENABLE_AV ;SpriteNumberAddress, True/False

        lda /1
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

;set sprite animation frame  
defm    LIBSPRITE_SETFRAME_AA ;Sprite Number, Anim Index

        ldy /1        
        clc
        lda /2
        adc #SPRITERAM
        sta SPRPTR0,y
        endm
        
defm    LIBSPRITE_SETFRAME_AV ;SpriteNumberAddress, AnimationFrame

        ldy /1        
        clc 
        lda #/2 
        adc #SPRITERAM
        sta SPRPTR0,y
        endm
        
;Sprite multi-colour set
defm    LIBSPRITE_SETMULTICOLORS_VV ;Colour0, Colour1

        lda #/1
        sta SPRMC0
        lda #/2
        sta SPRMC1

        endm

defm    LIBSPRITE_SETPOINTER_VV ;SpriteNumber, Value

        lda #/2
        sta SPRPTR0 + /1
        
        endm

defm    LIBSPRITE_SETCOLOUR_VV ;SpriteNumber, Value

        lda #/2
        sta SPRCOL0 + /1
        
        endm

defm    LIBSPRITE_EXPAND_VV ;X-expand, Y-expand

        lda #/1
        sta SPRXEX
        lda #/2
        sta SPRYEX
        
        endm
        
defm    LIBSPRITE_SETPOSITION_VAA ;SpriteNumber, X Source, Y Source

        lda #/1
        asl
        tay
        lda /2
        sta SPRX0,y
        lda /3
        sta SPRY0,y
        
        endm
        
defm    LIBSPRITE_SETPOSITION_AAAA ;SpriteNumber, XHi, XLo, Y

        lda /1
        asl
        tay
        lda /3
        sta SPRX0,y
        lda /4
        sta SPRY0,y
        ldy /1
        lda spriteNumberMask,y
        eor #$FF
        and SPRXMSB
        sta SPRXMSB
        ldy /2
        beq @end
        ldy /1
        lda spriteNumberMask,y
        ora SPRXMSB
        sta SPRXMSB
@end
        endm

defm    LIBSPRITE_DATACOLLIDE_A ;spritenumber

        ldy /1
        lda SpriteNumberMask,y
        and SPRCBG
        
        endm

defm    LIBSPRITE_SPRITECOLLIDE_A ;spritenumber

        ldy /1
        lda SpriteNumberMask,y
        and SPRCSP
        
        endm
        
defm    LIBSPRITE_MULTICOLORENABLE_AV ;spritenumber, enable/disable

        ldy /1
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
        
defm    LIBSPRITE_PLAYANIM_AVVVV ; Sprite Number, start frame, end frame, speed, loop t/f

        ldy /1
        lda #True
        sta spriteAnimsActive,y
        lda #/2
        sta spriteAnimsStartFrame,y
        sta spriteAnimsFrame,y
        lda #/3
        sta spriteAnimsEndFrame,y
        lda #/4
        sta spriteAnimsSpeed,y
        sta spriteAnimsDelay,y
        lda #/5
        sta spriteAnimsLoop,y

        endm
        
defm    LIBSPRITE_ISANIMPLAYING_A ;Sprite Number

        ldy /1
        lda spriteAnimsActive,y

        endm