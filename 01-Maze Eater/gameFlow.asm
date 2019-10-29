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
        ;not yet implemented
        rts

GameFlowStatusDying
        ;not yet implemented
        rts

GameFlowStatusDead
        ;not yet implemented
        rts

GameFlowStatusPillEaten
        ;not yet implemented
        rts

GameFlowStatusHiScore
        ;not yet implemented
        rts

GameFlowStatusLevelComplete
        ;not yet implemented
        rts  
