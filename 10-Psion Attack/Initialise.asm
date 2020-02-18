Initialise
        lda #GF_STATUS_MENU
        sta gameStatus
        LIBGENERAL_INITRAND
        lda SIDRAND
        LIBSCREEN_SETVIC_AVV VMCR, 240, CHARRAM
        rts


Initialise_Sprites
        LIBSPRITE_SETFRAME_AA shipOverlaySprite, overlayFrame
        LIBSPRITE_SETFRAME_AA shipSprite, shipFrame
        LIBSPRITE_SETFRAME_AA bulletSprite, bulletFrame
        LIBSPRITE_SETFRAME_AA bulletSprite+1, bulletFrame
        LIBSPRITE_SETFRAME_AA bulletSprite+2, bulletFrame
        LIBSPRITE_MULTICOLORENABLE_AV shipSprite, true
        LIBSPRITE_MULTICOLORENABLE_AV bulletSprite, true
        LIBSPRITE_MULTICOLORENABLE_AV bulletSprite+1, true
        LIBSPRITE_MULTICOLORENABLE_AV bulletSprite+2, true
        LIBSPRITE_ENABLE_VV %00000011, true
        LIBSPRITE_SETPOSITION_AAA shipOverlaySprite, playerX+1, PlayerY+1
        LIBSPRITE_SETPOSITION_AAA shipSprite, playerX+1, playerY+1
        LIBSPRITE_SETCOLOUR_VV 0, gray1
        LIBSPRITE_SETCOLOUR_VV 1, gray2
        LIBSPRITE_SETCOLOUR_VV 2, gray2
        LIBSPRITE_SETCOLOUR_VV 3, gray2
        LIBSPRITE_SETCOLOUR_VV 4, gray2
        LIBSPRITE_SETMULTICOLORS_VV red, gray3
        lda #0
        sta SPRCBG
        rts


Initialise_GameScreen
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_SET1000_AV COLOURRAM, white
        lda $d016       
        and #%11110111  
        sta $d016
        lda #0
        sta currentObject
        sta playerHit
        lda #4
        sta objectEntryRow
        lda #OBJ_MAX
        sta numberObjects
        ldx #39
@loop
        lda landscape,x
        sta $07C0,x
        lda #gray1
        sta $DBC0,x
        dex
        bpl @loop
        rts

