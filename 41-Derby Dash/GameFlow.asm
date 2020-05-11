gfStatusJumpTableLo             byte <GameFlowStatusMenu
                                byte <GameFlowStatusBet
                                byte <GameFlowStatusInitRace
                                byte <GameFlowStatusRace
                                byte <GameFlowStatusBank
                                byte <GameFlowStatusGameOver

gfStatusJumpTableHi             byte >GameFlowStatusMenu
                                byte >GameFlowStatusBet
                                byte >GameFlowStatusInitRace
                                byte >GameFlowStatusRace
                                byte >GameFlowStatusBank
                                byte >GameFlowStatusGameOver


GameFlowUpdate
        ldx gameStatus
        lda gfStatusJumpTableLo,x
        sta zpLow
        lda gfStatusJumpTableHi,x
        sta zpHigh
        jmp (zpLow)


GameFlowStatusMenu
        jsr Initialise_DisplayMenu
        jsr Initialise_SelectPlayers
        rts

GameFlowStatusBet
        jsr Bet_SelectHorsesAndOdds
        jsr Bet_PlaceBet
        rts

GameFlowStatusInitRace
        jsr Race_InitialiseScreen
        jsr Race_InitialiseHorses
        jsr Race_InitialiseRace
        rts

GameFlowStatusRace
        jsr Race_MoveHorse
        jsr Race_HorseSound
        jsr Race_CheckHorseFinished
        rts


GameFlowStatusBank
        jsr Bank_DisplayFinishOrder
        jsr Bank_CalculateWinnings
        rts


GameFlowStatusGameOver
        LIBSCREEN_PRINT_A txt_GameOver
        LIBSCREEN_PRINT_A txt_PressAnyKey
.GameOverWaitKey
        lda sysGetKey_C5
        cmp #KEY_NONE
        beq .GameOverWaitKey
.Debounce
        lda sysGetKey_C5
        cmp #KEY_NONE
        bne .Debounce
        lda #GF_STATUS_MENU
        sta gameStatus
        rts


