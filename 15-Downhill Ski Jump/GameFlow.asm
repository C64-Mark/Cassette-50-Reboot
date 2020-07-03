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
        jsr Menu_InitialiseScreen
        jsr Menu_AnimateSkier
        jsr Menu_ColourWash
        jsr Menu_TextFlash
        jsr Menu_Input
        jsr Sound_IntroTune
        rts

GameFlowStatusDemo
        rts

GameFlowStatusSkiing
        lda #0
        sta VCREG1
        lda #RED
        sta BDCOL
        rts

GameFlowStatusStageTransition
        rts

GameFlowStatusCrashing
        rts

GameFlowStatusGameOver
        rts

GameFlowStatusHiScore
        rts

