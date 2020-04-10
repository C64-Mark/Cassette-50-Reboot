Player_GetInput
        LIBJOY_GETJOY_V JOY_UP
        bne .CheckDown
        dec PlaneY
        rts
.CheckDown
        LIBJOY_GETJOY_V JOY_DOWN
        bne .CheckLeft
        inc PlaneY
        rts
.CheckLeft
        LIBJOY_GETJOY_V JOY_LEFT
        bne .CheckRight
        lda #PLANE_FAST
        sta planeVelocity
        rts
.CheckRight
        LIBJOY_GETJOY_V JOY_RIGHT
        bne .CheckFire
        lda #PLANE_SLOW
        sta planeVelocity
        rts
.CheckFire
        LIBJOY_GETJOY_V JOY_FIRE
        bne .ExitGetInput
        lda bombStatus
        cmp #BOMB_STATE_DORMANT
        bne .ExitGetInput
        lda #BOMB_STATE_RELEASED
        sta bombStatus
        LIBSPRITE_ENABLE_VV SPR_BOMB_MASK_ON, TRUE
        rts
.ExitGetInput
        lda #PLANE_STANDARD
        sta planeVelocity
        rts


Player_UpdatePlane
        LIBMATHS_SUBTRACT_16BIT_AAA planeXLo, planeVelocity, planeXLo
        lda planeXLo + 1
        cmp #255
        bne .CheckPlaneY
        lda #0
        sta planeXLo
        lda planeXHi
        cmp #0
        bne .ClearPlaneXMSB
        inc planeXHi
        lda #90
        sta planeXLo + 1
        jmp .CheckPlaneY ;was rts
.ClearPlaneXMSB
        dec planeXHi
.CheckPlaneY
        lda planeY
        cmp #44
        bpl .CheckPlaneUpperY
        lda #44
        sta planeY
        rts
.CheckPlaneUpperY
        cmp #60
        bmi .ExitUpdatePlane
        lda #60
        sta planeY
.ExitUpdatePlane
        rts


Player_MovePlane
        LIBSPRITE_SETPOSITION_VAAA SPRITE_PLANE, planeXHi, planeXLo + 1, planeY
        rts


Player_MoveBomb
        lda bombStatus
        cmp #BOMB_STATE_DORMANT
        bne .CheckBombReleased
.ResetBombPosition
        lda planeXHi
        sta bombXHi
        lda planeXLo + 1
        sta bombXLo + 1
        lda planeXLo
        sta bombXLo
        LIBMATHS_ADD_8BIT_AVA planeY, 15, bombY
.UpdateBomb
        LIBSPRITE_SETPOSITION_VAAA SPRITE_BOMB, bombXHi, bombXLo + 1, bombY
        rts
.CheckBombReleased
        cmp #BOMB_STATE_RELEASED
        bne .CheckBombHit
        inc bombY
        dec bombXLo + 1
        lda bombXLo + 1
        cmp #$FF
        bne .UpdateBomb
        lda bombXHi
        cmp #1
        bne .SetBombXMSB
        lda #0
        sta bombXHi
        jmp .UpdateBomb
.SetBombXMSB
        lda #1
        sta bombXHi
        lda #60
        sta bombXLo + 1
        jmp .UpdateBomb
.CheckBombHit
        cmp #BOMB_STATE_HIT
        bne .CheckBombExploding
        lda bombXHi
        cmp #0
        bne .NotHitWall
        lda bombXLo + 1
        cmp #54
        bcs .NotHitWall
        cmp #38
        bcc .NotHitWall
        lda bombY
        cmp #114
        bcc .NotHitWall
        jsr Player_DamageWall
.NotHitWall
        LIBSPRITE_SETCOLOUR_VV SPRITE_BOMB, GRAY3
        LIBSPRITE_MULTICOLORENABLE_VV SPRITE_BOMB, true
        lda #7
        sta bombExplosionFrame + 1
        lda #BOMB_STATE_EXPLODING
        sta bombStatus
        rts
.CheckBombExploding
        cmp #BOMB_STATE_EXPLODING
        bne .ExitMoveBomb
        LIBSPRITE_SETFRAME_VA SPRITE_BOMB, bombExplosionFrame + 1
        LIBMATHS_ADD_16BIT_AVVA bombExplosionFrame, 128, 0, bombExplosionFrame
        lda bombExplosionFrame + 1
        cmp #20
        bne .ExitMoveBomb
        LIBSPRITE_ENABLE_VV SPR_BOMB_MASK_ON, FALSE
        LIBSPRITE_MULTICOLORENABLE_VV SPRITE_BOMB, FALSE
        LIBSPRITE_SETFRAME_VV SPRITE_BOMB, 4
        LIBSPRITE_SETCOLOUR_VV SPRITE_BOMB, BLACK
        ;LIBSPRITE_DATACOLLIDE_A bombSprite
        lda SPRCBG
        lda #BOMB_STATE_DORMANT
        sta bombStatus
        jmp .ResetBombPosition
.ExitMoveBomb
        rts


Player_DamageWall
        lda bombY
        ldx #0
.WallXLoop
        inx
        sec
        sbc #8
        cmp #114
        bcs .WallXLoop
        ;stx dbwallx
        stx wallBreachedX
        ldy #3
        lda bombXLo + 1
        cmp #46
        bcc .WallFirstSection
        iny
.WallFirstSection
        ;sty dbwally
        lda #$40
        sta zpLow
        lda #$05
        sta zpHigh
        cpx #14
        bcc .WallYLoop
        ldx #13
.WallYLoop
        dex
        LIBMATHS_ADD_16BIT_AVVA zpLow, 40, 0, zpLow
        cpx #0
        bne .WallYLoop
        lda (zpLow),y
        cmp #32
        beq .DrawWall
        tax
        inx
        txa
        cmp #70
        bcc .DrawWall
        lda #32
        cpy #3
        bne .DrawWall
        sty wallBreached
.DrawWall
        sta (zpLow),y
        lda zpLow
        sta floodZoneLow
        lda zpHigh
        sta floodZoneHigh
        rts


Player_CheckPlaneCollision
        LIBSPRITE_SPRITECOLLIDE_V SPRITE_PLANE
        beq .NoPlaneCollision
        lda #TRUE
        sta planeDestroyed
        lda #PLANE_EXPLOSION_INIT
        sta planeExplosionActive
.NoPlaneCollision
        rts


Player_CheckBombCollision
        lda bombStatus
        cmp #BOMB_STATE_RELEASED
        bne .ExitCheckBombCollision
        LIBSPRITE_DATACOLLIDE_V SPRITE_BOMB
        beq .ExitCheckBombCollision
        lda #BOMB_STATE_HIT
        sta bombStatus
.ExitCheckBombCollision
        rts

Player_PlaneExplosion
        lda planeExplosionActive
        bne .CheckExplosionInitialise
        lda #GF_STATUS_DEAD
        sta gameStatus
        rts
.CheckExplosionInitialise
        cmp #PLANE_EXPLOSION_INIT
        bne .PlaneStillExploding
        lda #PLANE_EXPLOSION_ON
        sta planeExplosionActive
        LIBSPRITE_SETCOLOUR_VV SPRITE_PLANE, GRAY3
        LIBSPRITE_MULTICOLORENABLE_VV SPRITE_PLANE, TRUE
        LIBSPRITE_ENABLE_VV SPR_MISSILE_MASK_ON, FALSE
.PlaneStillExploding
        dec planeExplosionCounter
        bne .ExitPlaneExplosion
        lda #PLANE_EXPLOSION_RATE
        sta planeExplosionCounter
        LIBSPRITE_SETFRAME_VA SPRITE_PLANE, planeExplosionFrame
        inc planeExplosionFrame
        lda planeExplosionFrame
        cmp #19
        bne .ExitPlaneExplosion
        lda #PLANE_EXPLOSION_OFF
        sta planeExplosionActive
.ExitPlaneExplosion
        rts

