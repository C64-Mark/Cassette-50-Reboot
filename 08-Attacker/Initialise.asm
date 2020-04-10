Initialise_Game
        LIBSCREEN_SETVIC_AVV VMCR, 240, 12
        LIBGENERAL_INITRAND
        lda #GF_STATUS_MENU
        sta gameStatus
        rts

Initialise_LevelVariables
        lda #52
        sta planeXLo + 1
        sta planeY
        sta bombXLo + 1
        lda #67
        sta bombY
        lda #0
        sta planeXHi
        sta bombXHi
        sta tankXHi
        sta turretXHi
        sta missileXHi
        sta bulletXHi
        sta planeVelocity + 1
        sta missileFired
        sta bulletFired
        sta planeDestroyed
        sta bombFired
        sta bombHit
        sta bombExplosionLoop
        sta bombExplosionLoop + 1
        sta wallBreached
        sta wallBreachedX
        lda #128
        sta planeVelocity
        lda #0
        sta tankDx
        lda #205
        sta tankY
        lda #195
        sta missileY
        lda #150
        sta tankXLo + 1
        lda #140
        sta missileXLo + 1
        lda #101
        sta turretY
        lda #90
        sta bulletY
        lda #47
        sta turretXLo
        lda #60
        sta bulletXLo
        lda #128
        sta tankSpeed
        lda #7
        sta planeExplosionFrame
        sta bombExplosionFrame
        lda #BOMB_STATE_DORMANT
        sta bombStatus

        lda #PLANE_EXPLOSION_RATE
        sta planeExplosionCounter
        rts


Initialise_Level
        LIBSCREEN_SET1000_AV SCREENRAM, CHAR_SPACE
        LIBSCREEN_PRINT_A scn_LevelOnea
        LIBSCREEN_PRINT_A scn_LevelOneb
        LIBSPRITE_SETFRAME_VV SPRITE_PLANE, 0
        LIBSPRITE_SETFRAME_VV SPRITE_TANK, 1
        LIBSPRITE_SETFRAME_VV SPRITE_TURRET, 2
        LIBSPRITE_SETFRAME_VV SPRITE_BULLET, 3
        LIBSPRITE_SETFRAME_VV SPRITE_BOMB, 4
        LIBSPRITE_SETFRAME_VV SPRITE_MISSILE, 5
        LIBSPRITE_ENABLE_VV %00000111, TRUE
        LIBSPRITE_SETPOSITION_VAAA SPRITE_PLANE, planeXHi, planeXLo + 1, planeY
        LIBSPRITE_SETPOSITION_VAAA SPRITE_TANK, tankXHi, tankXLo + 1, tankY
        LIBSPRITE_SETPOSITION_VAAA SPRITE_MISSILE, missileXHi, missileXLo + 1, missileY
        LIBSPRITE_SETPOSITION_VAAA SPRITE_TURRET, turretXHi, turretXLo, turretY
        LIBSPRITE_SETPOSITION_VAAA SPRITE_BULLET, bulletXHi, bulletXLo, bulletY
        LIBSPRITE_SETPOSITION_VAAA SPRITE_BOMB, bombXHi, bombXLo + 1, bombY
        LIBSPRITE_SETCOLOUR_VV SPRITE_PLANE, GRAY1
        LIBSPRITE_SETCOLOUR_VV SPRITE_TANK, BLACK
        LIBSPRITE_SETCOLOUR_VV SPRITE_MISSILE, BROWN
        LIBSPRITE_SETCOLOUR_VV SPRITE_TURRET, BLACK
        LIBSPRITE_SETCOLOUR_VV SPRITE_BULLET, BLACK
        LIBSPRITE_SETCOLOUR_VV SPRITE_BOMB, BLACK
        LIBSPRITE_SETMULTICOLORS_VV RED, GRAY1
        lda #0
        sta SPRMCS
        lda SPRCSP
        lda SPRCBG
        rts
