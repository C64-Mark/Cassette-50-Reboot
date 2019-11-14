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
                                byte >GameFlowStatusLevelComplete
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
        sta ghostX + 1
        lda #80
        sta ghostY + 1
        LIBSPRITE_SETPOSITION_AAA ghostSprite, ghostX + 1, ghostY + 1
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
        lda #gfDead
        sta gameStatus
        rts

GameFlowStatusDead
        LIBSPRITE_ENABLE_VV %00000111, false
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_PRINT_A scnGameOver
@response
        LIBJOY_GETJOY_V JoyFire
        bne @response
        lda #gfMenu
        sta gameStatus
        ldx #0
@delay
        inx
        bne @delay
        rts

GameFlowStatusPillEaten
        lda pacmanGhostCollision
        cmp #0
        beq @changecolour
        lda #false
        sta pacmanGhostCollision
        lda #50
        sta ghostX + 1
        lda #80
        sta ghostY + 1
        LIBSPRITE_SETPOSITION_AAA ghostSprite, ghostX + 1, ghostY + 1
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
        LIBMATHS_BCD_ADD_8BIT_AVA levelNumber, 1, levelNumber
        LIBMATHS_ADD_16BIT_AVVA difficultyLevel, 64, 0, difficultyLevel
        jsr ResetVariables
        jsr InitGameScreen
        jsr InitSprites
        rts  
