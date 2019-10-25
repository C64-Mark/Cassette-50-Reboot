gfStatusJumpTableLo             byte <GameFlowStatusMenu
                                byte <GameFlowStatusAlive
                                byte <GameFlowStatusFlood
                                byte <GameFlowStatusDying
                                byte <GameFlowStatusDead

gfStatusJumpTableHi             byte >GameFlowStatusMenu
                                byte >GameFlowStatusAlive
                                byte >GameFlowStatusFlood
                                byte >GameFlowStatusDying
                                byte >GameFlowStatusDead

GameFlowUpdate
        ldx gameStatus
        lda gfStatusJumpTableLo,x
        sta zpLow
        lda gfStatusJumpTableHi,x
        sta zpHigh

        jmp (zpLow)

GameFlowStatusMenu
        ;not yet implemented
        rts

GameFlowStatusAlive
        lda planeDestroyed
        beq @exit
        lda #gfDying
        sta gameStatus
@exit
        rts

GameFlowStatusDying
        lda #True
        sta planeExplosionActive
        LIBSPRITE_SETCOLOUR_VV 0, gray3
        LIBSPRITE_MULTICOLORENABLE_AV planeSprite, true
        LIBSPRITE_ENABLE_VV %00100000, false
@Loop
        jsr planeExplosion
        lda planeExplosionActive
        bne @loop
        lda #gfDead
        sta gameStatus
        rts

GameFlowStatusDead
        LIBSPRITE_ENABLE_VV %11111111, false
@loop
        LIBJOY_GETJOY_V JoyFire
        bne @loop
        lda #gfMenu
        sta gameStatus
        rts

GameFlowStatusFlood
        ;not yet active
        rts