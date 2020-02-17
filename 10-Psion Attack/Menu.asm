Menu_Display
        LIBSCREEN_SETCOLOURS_VV black, black
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_COPYSCREEN_AA SCN_INTRO, COL_INTRO
@waitfire
        LIBJOY_GETJOY_V JoyFire
        bne @waitfire
        rts

