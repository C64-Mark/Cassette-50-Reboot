Bet_SelectHorsesAndOdds
        ldx #0
.ResetSelectedHorses
        lda #$FF
        sta selectedHorses,x
        sta horseOdds,x
        inx
        cpx #6
        bne .ResetSelectedHorses
        ldx #0
.SelectNextHorse
        lda SIDRAND
        and #31
        ldy #0
.CheckNextHorse
        cmp selectedHorses,y
        beq .SelectNextHorse
        iny
        cpy #6
        bne .CheckNextHorse
        sta selectedHorses,x
.SetHorseOdds
        lda SIDRAND
        and #7
        cmp #6
        bcs .SetHorseOdds
        ldy #0
.SelectNextOdds
        cmp horseOdds,y
        beq .SetHorseOdds
        iny
        cpy #6
        bne .SelectNextOdds
        sta horseOdds,x
        inx
        cpx #6
        bne .SelectNextHorse
        rts


Bet_PlaceBet
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
        ldx #0
.NextPlayerBet
        stx currentPlayer
        lda playerActive,x
        bne .TakePlayerBet
        jmp .GetNextPlayerBet
.TakePlayerBet
        jsr Bet_ListHorsesAndOdds
        LIBSCREEN_PRINT_CHAR_V CHAR_RETURN
        LIBSCREEN_PRINT_CHAR_V CHAR_BLUE
        LIBSCREEN_PRINT_INDIRECT_A zpNamePtrLo
        LIBSCREEN_PRINT_A txt_YouHavePounds
        LIBSCREEN_PRINT_BCD_32BIT_A zpMoneyPtrLo
.MoneyRemaining
        LIBSCREEN_PRINT_A txt_InTheBank
        LIBSCREEN_PRINT_A txt_WhichHorse
.GetHorseNumber
        jsr krnGETIN
        beq .GetHorseNumber
        cmp #CHAR_1
        bcc .GetHorseNumber
        cmp #CHAR_7
        bcs .GetHorseNumber
        jsr krnCHROUT
        and #15
        sec
        sbc #1
        ldx currentPlayer
        sta playerSelectedHorse,x
        LIBSCREEN_PRINT_A txt_EnterBet
        ldx currentPlayer
        lda #0
        sta charPosition
.GetPlayerBet
        jsr krnGETIN
        beq .GetPlayerBet
        cmp #CHAR_DELETE
        beq .DeleteDigit
        cmp #CHAR_RETURN
        beq .BetEntryComplete
        cmp #CHAR_0
        bcc .GetPlayerBet
        cmp #CHAR_9+1
        bcs .GetPlayerBet
        jsr krnCHROUT
        ldx charPosition
        sta tmpBet,x
        inc charPosition
        lda charPosition
        cmp #8
        bne .GetPlayerBet
        lda #7
        sta charPosition
        LIBSCREEN_PRINT_CHAR_V CHAR_LEFT
        jmp .GetPlayerBet        
.DeleteDigit
        ldy charPosition
        beq .GetPlayerBet
        jsr krnCHROUT
        dec charPosition
        jmp .GetPlayerBet
.BetEntryComplete
        lda #7
        sbc charPosition
        beq .ConvertToBCD
        tay
.NextDigitShift
        ldx #7
.ShiftDigitsLoop
        lda tmpBet-1,x
        sta tmpBet,x
        dex
        bne .ShiftDigitsLoop
        lda #CHAR_0
        sta tmpBet,x
        dey
        bpl .NextDigitShift
.ConvertToBCD
        ldy #0
        ldx #0
.NextBCDDigit
        lda tmpBet,x
        and #15
        asl
        asl
        asl
        asl
        sta (zpBetPtrLo),y
        inx
        lda tmpBet,x
        and #15
        ora (zpBetPtrLo),y
        sta (zpBetPtrLo),y
        inx
        iny
        cpy #4
        bne .NextBCDDigit
        ldy #0
.CheckCashLoop
        lda (zpBetPtrLo),y
        cmp (zpMoneyPtrLo),y
        beq .CheckNextCashDigit
        bcs .NotEnoughMoney
        bcc .GetNextPlayerBet
.CheckNextCashDigit
        iny
        cpy #3
        bne .CheckCashLoop
        lda (zpBetPtrLo),y
        cmp (zpMoneyPtrLo),y
        beq .GetNextPlayerBet
        bcc .GetNextPlayerBet
.NotEnoughMoney
        LIBSCREEN_PRINT_A txt_NotEnoughCash
        LIBGENERAL_DELAYTI_V 2
        ldx currentPlayer
        jmp .NextPlayerBet
.GetNextPlayerBet
        LIBMATHS_ADD8BIT_AV zpNamePtrLo, 11
        LIBMATHS_ADD8BIT_AV zpMoneyPtrLo, 4
        LIBMATHS_ADD8BIT_AV zpBetPtrLo, 4
        inc currentPlayer
        lda currentPlayer
        cmp numberPlayers
        beq .FinishedBetEntry
        ldx currentPlayer
        jmp .NextPlayerBet
.FinishedBetEntry
        lda #GF_STATUS_INIT_RACE
        sta gameStatus
        rts


Bet_ListHorsesAndOdds
        LIBSCREEN_PRINT_A txt_TodaysOdds
        ldy #0
.DisplayNextHorse
        sty currentHorse
        lda selectedHorses,y
        tax
        lda tbl_HossNamesLo,x
        sta zpHossPtrLo
        lda tbl_HossNamesHi,x
        sta zpHossPtrHi
        lda horseOdds,y
        tax
        lda tbl_OddsTextLo,x
        sta zpOddsPtrLo
        lda tbl_OddsTextHi,x
        sta zpOddsPtrHi
        lda currentHorse
        clc
        adc #$31
        jsr krnCHROUT
        LIBSCREEN_PRINT_A txt_FullStopSpace
        LIBSCREEN_PRINT_INDIRECT_A zpHossPtrLo 
.PadOddsDisplayLoop
        lda #CHAR_SPACE
        jsr krnCHROUT
        iny
        cpy #30
        bne .PadOddsDisplayLoop
        LIBSCREEN_PRINT_CHAR_V CHAR_CYAN
        LIBSCREEN_PRINT_INDIRECT_A zpOddsPtrLo
        LIBSCREEN_PRINT_CHAR_V CHAR_GREEN
        LIBSCREEN_PRINT_CHAR_V CHAR_RETURN
        LIBSCREEN_PRINT_CHAR_V CHAR_RETURN
        inc currentHorse
        ldy currentHorse
        cpy #6
        bne .DisplayNextHorse
        rts
        
