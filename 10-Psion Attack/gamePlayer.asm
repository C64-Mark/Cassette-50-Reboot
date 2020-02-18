gamePlayer_Move
        LIBJOY_GETJOY_V JoyUp
        bne @checkdown
        lda playerY+1
        cmp #60
        bcc @checkdown
        LIBMATHS_SUBTRACT_16BIT_AAA playerY, playerDelta, playerY
        jmp @exit
@checkdown
        LIBJOY_GETJOY_V JoyDown
        bne @checkleft
        LIBMATHS_ADD_16BIT_AAA playerY, playerDelta, playerY
        jmp @exit
@checkleft
        LIBJOY_GETJOY_V JoyLeft
        bne @checkright
        lda playerX+1
        cmp #25
        bcc @checkright
        LIBMATHS_SUBTRACT_16BIT_AAA playerX, playerDelta, playerX
        jmp @exit
@checkright
        LIBJOY_GETJOY_V JoyRight
        bne @checkfire
        lda playerX+1
        cmp #120
        bcs @checkfire
        LIBMATHS_ADD_16BIT_AAA playerX, playerDelta, playerX
        jmp @exit
@checkfire
        LIBJOY_GETJOY_V JoyFire
        bne @exit
        jsr gameBullet_Fired
@exit
        lda bulletDelay
        cmp #0
        beq @updatesprites
        dec bulletDelay
@updatesprites
        LIBSPRITE_SETPOSITION_AAA shipOverlaySprite, playerX+1, PlayerY+1
        LIBSPRITE_SETPOSITION_AAA shipSprite, playerX+1, playerY+1
        rts

gamePlayer_CheckCollision
        lda SPRCBG
        lsr
        bcc @checkbullet1
        lda true
        sta playerHit
        jmp @exit
@checkbullet1
        lsr
        bcc @checkbullet2
        lda #2
        sta BDCOL
        jmp @exit
@checkbullet2
        lsr
        bcc @checkbullet3
        lda #3
        sta BDCOL
        jmp @exit
@checkbullet3
        lsr
        bcc @exit
        lda #4
        sta BDCOL
@exit
        lda #0
        sta SPRCBG
        rts

gamePlayer_Exploding
        lda playerExploding
        bne explosiondelay
        LIBSPRITE_ENABLE_VV %00000001, false
        LIBSPRITE_SETFRAME_AA shipSprite, playerExplosionFrame
        lda #1
        sta playerExploding
explosiondelay
        lda playerExplosionCounter
        beq nextexplosionframe
        dec playerExplosionCounter
        rts
nextexplosionframe
        lda playerExplosionRate
        sta playerExplosionCounter
        inc playerExplosionFrame
        lda playerExplosionFrame
        cmp #8
        bne updateexplosionframe
        LIBSPRITE_ENABLE_VV %00000010, false
        lda #GF_STATUS_DEAD
        sta gameStatus
        rts
updateexplosionframe
        LIBSPRITE_SETFRAME_AA shipSprite, playerExplosionFrame
        rts



