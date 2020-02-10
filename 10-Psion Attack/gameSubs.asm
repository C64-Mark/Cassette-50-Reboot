;*******************************************************************************
; GAME SUBROUTINES
;*******************************************************************************


shipOverlaySprite               byte 00
overlayFrame                    byte 00
shipSprite                      byte 01
shipFrame                       byte 01
shipX                           byte 25
shipY                           byte 139

;-------------------------------------------------------------------------------
; InitialiseVariables
;-------------------------------------------------------------------------------
InitialiseVariables
        lda #0
        sta currentObject
        LIBGENERAL_INITRAND
        lda SIDRAND
        lda #4
        sta objectEntryRow
        lda #50
        sta numberObjects
        rts

;-------------------------------------------------------------------------------
; InitialiseScreen
;-------------------------------------------------------------------------------
InitialiseScreen
        LIBSCREEN_SETVIC_AVV VMCR, 240, CHARRAM
        LIBSCREEN_SETCOLOURS_VV black, black
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_COPYSCREEN_AA SCN_INTRO, COL_INTRO
@waitfire
        LIBJOY_GETJOY_V JoyFire
        bne @waitfire
        rts

;-------------------------------------------------------------------------------
; InitialiseGameScreen
;-------------------------------------------------------------------------------
InitialiseGameScreen
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_SET1000_AV COLOURRAM, white
        rts


InitialiseSprites
        LIBSPRITE_SETFRAME_AA shipOverlaySprite, overlayFrame
        LIBSPRITE_SETFRAME_AA shipSprite, shipFrame
        LIBSPRITE_MULTICOLORENABLE_AV shipSprite, true
        LIBSPRITE_ENABLE_VV %00000011, true
        LIBSPRITE_SETPOSITION_AAA shipOverlaySprite, shipX, shipY
        LIBSPRITE_SETPOSITION_AAA shipSprite, shipX, shipY
        LIBSPRITE_SETCOLOUR_VV 0, gray1
        LIBSPRITE_SETCOLOUR_VV 1, gray2
        LIBSPRITE_SETMULTICOLORS_VV red, yellow
        rts



;-------------------------------------------------------------------------------
; InitialiseInterrupt
;-------------------------------------------------------------------------------
InitialiseInterrupt
        sei        
        lda #$7F
        sta $DC0D 
        sta $DD0D  
        lda $DC0D  
        lda $DD0D  
        lda #$01   
        sta IRQMR
        lda #250 
        sta RASTER
        lda #$1B
        sta VCR1

        lda #<GameLoop  
        sta $0314  
        lda #>GameLoop
        sta $0315
        cli 
        rts