Bank_DisplayFinishOrder
        lda #0
        sta SPREN
        sta VCREG1
        LIBSCREEN_SETCOLOURS_VV BLACK, BLACK
        LIBSCREEN_PRINT_A txt_FinishOrder
        ldy #0
.DisplayFinishOrderLoop
        sty currentHorse
        lda finishOrder,y
        tax
        lda selectedHorses,x
        tax
        lda tbl_HossNamesLo,x
        sta zpHossPtrLo
        lda tbl_HossNamesHi,x
        sta zpHossPtrHi
        lda finishOrder,y
        tax
        lda horseOdds,x
        tax
        lda tbl_OddsTextLo,x
        sta zpOddsPtrLo
        lda tbl_OddsTextHi,x
        sta zpOddsPtrHi
        tya
        clc
        adc #$31
        jsr krnCHROUT
        LIBSCREEN_PRINT_A txt_FullStopSpace
        LIBSCREEN_PRINT_INDIRECT_A zpHossPtrLo 
.PadOddsLoop
        lda #CHAR_SPACE
        jsr krnCHROUT
        iny
        cpy #30
        bne .PadOddsLoop
        LIBSCREEN_PRINT_CHAR_V CHAR_CYAN
        LIBSCREEN_PRINT_INDIRECT_A zpOddsPtrLo
        LIBSCREEN_PRINT_CHAR_V CHAR_GREEN
        LIBSCREEN_PRINT_A txt_DoubleReturn
        inc currentHorse
        ldy currentHorse
        cpy #6
        beq .ExitDisplayFinishOrder
        jmp .DisplayFinishOrderLoop
.ExitDisplayFinishOrder
        rts


Bank_CalculateWinnings
        LIBSCREEN_PRINT_CHAR_V CHAR_RETURN
        lda #<playerNames
        ldx #>playerNames
        sta zpNamePtrLo
        stx zpNamePtrHi
        lda #<playerMoney
        ldx #>playerMoney
        sta zpMoneyPtrLo
        stx zpMoneyPtrHi
        lda #<playerBet
        ldx #>playerBet
        sta zpBetPtrLo
        stx zpBetPtrHi
        lda #<winnings
        ldx #>winnings
        sta zpLow
        stx zpHigh
        ldx #0
.CheckWinningsLoop
        stx currentPlayer
        lda playerActive,x
        bne .CheckWinnings
        jmp .CheckNextPlayerWinnings
.CheckWinnings
        LIBSCREEN_PRINT_CHAR_V CHAR_BLUE
        LIBSCREEN_PRINT_INDIRECT_A zpNamePtrLo
        lda playerSelectedHorse,x
        cmp finishOrder
        beq .PlayerWon
        jmp .DidNotWin
.PlayerWon
        tay
        lda horseOdds,y
        tay
        lda oddsMultiplier,y
        tax
        LIBSCREEN_PRINT_A txt_PlayerWon
        lda #0
        sta winnings
        sta winnings+1
        sta winnings+2
        sta winnings+3
.BetMultiplierLoop
        LIBMATHS_ADD_BCD_32BIT_AA zpLow, zpBetPtrLo        
        dex
        bne .BetMultiplierLoop
        LIBSCREEN_PRINT_BCD_32BIT_A zpLow
        LIBMATHS_ADD_BCD_32BIT_AA zpMoneyPtrLo, zpLow
        jmp .CheckNextPlayerWinnings
.DidNotWin
        LIBSCREEN_PRINT_A txt_PlayerDidntWin
        LIBSCREEN_PRINT_BCD_32BIT_A zpBetPtrLo
        LIBMATHS_SUBTRACT_BCD_32BIT_AA zpMoneyPtrLo, zpBetPtrLo

        lda #FALSE
        sta digitFoundFlag
        tay
.CheckBalanceLoop
        lda (zpMoneyPtrLo),y
        cmp #0
        beq .CheckNextBalanceDigit
        lda #TRUE
        sta digitFoundFlag
.CheckNextBalanceDigit
        iny
        cpy #4
        bne .CheckBalanceLoop
        lda digitFoundFlag
        bne .CheckNextPlayerWinnings
        LIBSCREEN_PRINT_A txt_Broke
        ldx currentPlayer
        lda #0
        sta playerActive,x
        dec activePlayers
.CheckNextPlayerWinnings
        LIBSCREEN_PRINT_A txt_DoubleReturn
        LIBMATHS_ADD8BIT_AV zpNamePtrLo, 11
        LIBMATHS_ADD8BIT_AV zpMoneyPtrLo, 4
        LIBMATHS_ADD8BIT_AV zpBetPtrLo, 4
        ldx currentPlayer
        inx
        cpx numberPlayers
        beq .ExitCheckWinnings
        jmp .CheckWinningsLoop
.ExitCheckWinnings
        LIBSCREEN_PRINT_A txt_PressAnyKey
.BankWaitKey
        lda sysGetKey_C5
        cmp #KEY_NONE
        beq .BankWaitKey
        lda activePlayers
        beq .GameOver
        lda #GF_STATUS_BET
        sta gameStatus
        rts
.GameOver
        lda #GF_STATUS_GAME_OVER
        sta gameStatus
        rts








