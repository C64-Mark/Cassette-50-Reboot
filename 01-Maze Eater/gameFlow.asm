gfStatusJumpTableLo             byte <GameFlowStatusMenu
                                byte <GameFlowStatusAlive
                                byte <GameFlowStatusPillEaten
                                byte <GameFlowStatusLevelComplete
                                byte <GameFlowStatusDying
                                byte <GameFlowStatusDead
                                byte <GameFlowStatusHiScore

gfStatusJumpTableHi             byte >GameFlowStatusMenu
                                byte >GameFlowStatusAlive
                                byte >GameFlowStatusPillEaten
                                byte <GameFlowStatusLevelComplete
                                byte >GameFlowStatusDying
                                byte >GameFlowStatusDead
                                byte <GameFlowStatusHiScore

GameFlowUpdate
        ldx gameStatus
        lda gfStatusJumpTableLo,x
        sta zpLow
        lda gfStatusJumpTableHi,x
        sta zpHigh

        jmp (zpLow)

GameFlowStatusMenu
        lda #gfAlive
        sta gameStatus
        rts

GameFlowStatusAlive
        lda pillActive
        cmp #0
        beq @checkcollision
        lda #gfPillEaten
        sta gameStatus
        rts
@checkcollision
        lda pacmanGhostCollision
        cmp #0
        beq @exit
        lda #50
        sta ghostX
        lda #80
        sta ghostY
        LIBSPRITE_SETPOSITION_AAA ghostSprite, ghostX, ghostY
        lda #133
        sta pacmanX
        lda #231
        sta pacmanY
        LIBSPRITE_SETPOSITION_AAA pacmanSprite, pacmanX, pacmanY
        lda SPRCSP
        lda #0
        sta pacmanGhostCollision
        dec pacmanLives
        lda pacmanLives
        cmp #$FF
        bne @exit
        lda #gfDying
        sta gameStatus
@exit
        rts

GameFlowStatusDying        
        lda #gfMenu
        sta gameStatus
        rts

GameFlowStatusDead
        ;not yet implemented
        rts

GameFlowStatusPillEaten
        lda pacmanGhostCollision
        cmp #0
        beq @changecolour
        lda #false
        sta pacmanGhostCollision
        lda #50
        sta ghostX
        lda #80
        sta ghostY
        LIBSPRITE_SETPOSITION_AAA ghostSprite, ghostX, ghostY
        LIBMATHS_BCD_ADD_24BIT_AVA score, 10, score
        lda SPRCSP
        rts
@changecolour
        inc ghostColour
        LIBSPRITE_SETCOLOUR_AA ghostSprite, ghostColour
        dec pillTimer
        bne @exit
        LIBSPRITE_SETCOLOUR_AV ghostSprite, red
        lda #0
        sta pillActive
        lda #gfAlive
        sta gameStatus
@exit
        rts

GameFlowStatusHiScore
        ;not yet implemented
        rts

GameFlowStatusLevelComplete
        ;not yet implemented
        rts  
