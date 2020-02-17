gamePlayer_Move
        LIBJOY_GETJOY_V JoyUp
        bne @checkdown
        lda playerY
        cmp #60
        bcc @checkdown
        dec playerY
        jmp @exit
@checkdown
        LIBJOY_GETJOY_V JoyDown
        bne @checkleft
        inc playerY
        jmp @exit
@checkleft
        LIBJOY_GETJOY_V JoyLeft
        bne @checkright
        lda playerX
        cmp #25
        bcc @checkright
        dec playerX
        jmp @exit
@checkright
        LIBJOY_GETJOY_V JoyRight
        bne @checkfire
        lda playerX
        cmp #120
        bcs @checkfire
        inc playerX
        jmp @exit
@checkfire
        LIBJOY_GETJOY_V JoyFire
        bne @exit
        nop
@exit
        LIBSPRITE_SETPOSITION_AAA shipOverlaySprite, playerX, PlayerY
        LIBSPRITE_SETPOSITION_AAA shipSprite, playerX, playerY
        rts

gamePlayer_CheckCollision
        lda SPRCBG
        lsr
        bcc @exit
        lda true
        sta playerHit
@exit
        lda #0
        sta SPRCBG
        lda #$30
        sta $0400
        rts