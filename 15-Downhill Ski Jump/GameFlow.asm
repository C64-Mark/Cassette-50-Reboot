gfStatusJumpTableLo             byte <GameFlowStatusMenu
                                byte <GameFlowStatusDemo
                                byte <GameFlowStatusSkiing
                                byte <GameFlowStatusStageTransition
                                byte <GameFlowStatusCrashing
                                byte <GameFlowStatusGameOver
                                byte <GameFlowStatusHiScore

gfStatusJumpTableHi             byte >GameFlowStatusMenu
                                byte >GameFlowStatusDemo
                                byte >GameFlowStatusSkiing
                                byte >GameFlowStatusStageTransition
                                byte >GameFlowStatusCrashing
                                byte >GameFlowStatusGameOver
                                byte >GameFlowStatusHiScore

GameFlowUpdate
        ldx gameStatus
        lda gfStatusJumpTableLo,x
        sta zpLow
        lda gfStatusJumpTableHi,x
        sta zpHigh
        jmp (zpLow)


GameFlowStatusMenu
        rts

GameFlowStatusDemo
        rts

GameFlowStatusSkiing
        rts

GameFlowStatusStageTransition
        rts

GameFlowStatusCrashing
        rts

GameFlowStatusGameOver
        rts

GameFlowStatusHiScore
        rts

