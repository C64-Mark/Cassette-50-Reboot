gfStatusJumpTableLo             byte <GameFlowStatusMenu
                                byte <GameFlowStatusAlive
                                byte <GameFlowStatusDying
                                byte <GameFlowStatusDead

gfStatusJumpTableHi             byte >GameFlowStatusMenu
                                byte >GameFlowStatusAlive
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
        lda #gfAlive
        sta gameStatus
        rts

GameFlowStatusAlive
        rts

GameFlowStatusDying        
        rts

GameFlowStatusDead
        ;not yet implemented
        rts
