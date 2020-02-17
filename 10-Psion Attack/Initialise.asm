landscape               byte 139, 139, 140, 141, 142, 139, 140, 142, 139, 140
                        byte 141, 141, 142, 139, 139, 139, 140, 142, 139, 139
                        byte 139, 140, 141, 141, 141, 141, 142, 139, 140, 142
                        byte 139, 139, 140, 142, 139, 139, 140, 141, 142, 139

shipOverlaySprite       byte 00
overlayFrame            byte 00
shipSprite              byte 01
shipFrame               byte 01

spriteNumberMask        byte %00000001, %00000010, %00000100, %00001000
                        byte %00010000, %00100000, %01000000, %10000000


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
        LIBSPRITE_MULTICOLORENABLE_AV shipSprite, true
        LIBSPRITE_ENABLE_VV %00000011, true
        LIBSPRITE_SETPOSITION_AAA shipOverlaySprite, playerX, PlayerY
        LIBSPRITE_SETPOSITION_AAA shipSprite, playerX, playerY
        LIBSPRITE_SETCOLOUR_VV 0, gray1
        LIBSPRITE_SETCOLOUR_VV 1, gray2
        LIBSPRITE_SETMULTICOLORS_VV red, yellow
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

