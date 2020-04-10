Enemy_MoveTank
        lda tankDx
        cmp #0
        bne .MoveTankRight
        LIBMATHS_SUBTRACT_16BIT_AAA tankXLo, tankSpeed, tankXLo
        lda tankXLo + 1
        cmp #80
        bne .ExitMoveTank
        inc tankDx
        jmp .ExitMoveTank
.MoveTankRight
        LIBMATHS_ADD_16BIT_AAA tankXLo, tankSpeed, tankXLo
        lda tankXLo + 1
        cmp #210
        bne .ExitMoveTank
        dec tankDx
.ExitMoveTank
        LIBSPRITE_SETPOSITION_VAAA SPRITE_TANK, tankXHi, tankXLo + 1, tankY
        rts


Enemy_FireMissile
        lda SIDRAND
        cmp #MISSILE_RATE
        bcs .ExitFireMissile
        lda #TRUE
        sta missileFired
        LIBSPRITE_ENABLE_VV SPR_MISSILE_MASK_ON, TRUE
.ExitFireMissile
        rts


Enemy_MoveMissile
        lda missileFired
        cmp #FALSE
        beq .SetMissileX
        dec missileY
        lda missileY
        cmp #10
        bne .ExitMoveMissile
        LIBSPRITE_ENABLE_VV SPR_MISSILE_MASK_ON, FALSE
        lda #0
        sta missileFired
        lda #195
        sta missileY        
.SetMissileX
        lda tankXHi
        sta missileXHi
        lda tankXLo + 1
        sta missileXLo + 1
        lda tankXLo
        sta missileXLo
.ExitMoveMissile
        LIBSPRITE_SETPOSITION_VAAA SPRITE_MISSILE, missileXHi, missileXLo + 1, missileY
        rts


Enemy_FireBullet
        lda SIDRAND
        cmp #BULLET_RATE 
        bcs .ExitFireBullet
        lda #TRUE
        sta bulletFired
        LIBSPRITE_ENABLE_VV SPR_BULLET_MASK_ON, TRUE
.ExitFireBullet
        rts


Enemy_MoveBullet
        lda bulletFired
        cmp #FALSE
        beq .ExitMoveBullet
        dec bulletY
        inc bulletXLo
        lda bulletY
        cmp #10
        bne .UpdateBullet
        LIBSPRITE_ENABLE_VV SPR_BULLET_MASK_ON, FALSE
        lda #FALSE
        sta bulletFired
        lda #90
        sta bulletY
        lda #60
        sta bulletXLo
.UpdateBullet
        LIBSPRITE_SETPOSITION_VAAA SPRITE_BULLET, bulletXHi, bulletXLo, bulletY
.ExitMoveBullet
        rts


Enemy_Flood
        lda floodZoneLow
        sta floodZoneColourL
        lda floodZoneHigh
        clc
        adc #$D4
        sta floodZoneColourH
        ldy #3
        lda #70
        sta (floodZoneLow),y
        tax
        lda #BLUE
        sta (floodZoneColourL),y
        txa
        iny
        sta (floodZoneLow),y
        lda #BLUE
        sta (floodZoneColourL),y
        iny
        lda #78
        sta (floodZoneLow),y
        lda #blue
        sta (floodZoneColourL),y
        ldx wallBreachedX
.FloodHeightLoop
        inx
        LIBMATHS_ADD_16BIT_AVVA floodZoneLow, 40, 00, floodZoneLow
        LIBMATHS_ADD_16BIT_AVVA floodZoneColourL, 40, 00, floodZoneColourL
        lda #79
        sta (floodZoneLow),y
        lda #BLUE
        sta (floodZoneColourL),y
        cpx #13
        bne .FloodHeightLoop
.FloodOuterLoop
        ldy #27
.FloodInnerLoop
        lda #70
        sta (floodZoneLow),y
        lda #BLUE
        sta (floodZoneColourL),y
        dey
        cpy #4
        bne .FloodInnerLoop
        LIBMATHS_SUBTRACT_16BIT_AVVA floodZoneLow, 40, 00, floodZoneLow
        LIBMATHS_SUBTRACT_16BIT_AVVA floodZoneColourL, 40, 00, floodZoneColourL
        dex
        cpx wallBreachedX
        bne .FloodOuterLoop
        rts







