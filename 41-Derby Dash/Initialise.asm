Initialise_Game
        LIBSCREEN_SETVIC_AVV VMCR, 240, CHARRAM
        LIBGENERAL_INITRAND
        ldy #0
.SetHorseColourLoop
        lda tbl_HossColours,y
        sta SPRCOL0,y
        tya
        asl
        tax
        lda tbl_HossYPostion,y
        sta SPRY0,x
        iny
        cpy #6
        bne .SetHorseColourLoop
        lda #GF_STATUS_MENU
        sta gameStatus
        rts


Initialise_DisplayMenu
        LIBSCREEN_SETCOLOURS_VV LIGHTGREEN, GREEN
        LIBSCREEN_PRINT_A txt_DerbyDashTitle
        LIBSCREEN_PRINT_A txt_DerbyDashTitle2
.MenuWaitKeyLoop
        lda sysGetKey_C5
        cmp #KEY_NONE
        beq .MenuWaitKeyLoop
        rts


Initialise_SelectPlayers
        LIBSCREEN_SETCOLOURS_VV BLACK, BLACK
        lda #<playerNames
        ldx #>playerNames
        sta zpNamePtrLo
        stx zpNamePtrHi
        lda #0
        sta playerActive
        sta playerActive+1
        sta playerActive+2
        sta playerActive+3
        LIBSCREEN_PRINT_A txt_NumberPlayers
.GetNumberPlayers
        jsr krnGETIN
        beq .GetNumberPlayers
        cmp #CHAR_1
        bcc .GetNumberPlayers
        cmp #CHAR_5
        bcs .GetNumberPlayers
        jsr krnCHROUT
        sec
        sbc #$30 
        sta numberPlayers
        sta activePlayers
        ldx #0
        stx currentPlayer
.NextPlayer
        LIBSCREEN_PRINT_A txt_EnterPlayerName       
.DisplayPlayerNumber
        ldx currentPlayer
        lda #1
        sta playerActive,x
        txa
        clc
        adc #$31
        jsr krnCHROUT
        LIBSCREEN_PRINT_CHAR_V CHAR_SPACE
        LIBSCREEN_PRINT_CHAR_V CHAR_YELLOW
        lda #0
        sta charPosition
.GetPlayerNames
        jsr krnGETIN
        beq .GetPlayerNames
        cmp #CHAR_SPACE
        beq .PrintChar
        cmp #CHAR_DELETE
        beq .DeleteChar
        cmp #CHAR_RETURN
        beq .EntryComplete
        cmp #CHAR_A
        bcc .GetPlayerNames
        cmp #CHAR_Z+1
        bcs .GetPlayerNames
.PrintChar
        jsr krnCHROUT
        ldy charPosition
        sta (zpNamePtrLo),y
        inc charPosition
        lda charPosition
        cmp #10
        bne .GetPlayerNames
        lda #9
        sta charPosition
        lda #CHAR_LEFT
        jsr krnCHROUT
        jmp .GetPlayerNames
.DeleteChar
        ldy charPosition
        beq .GetPlayerNames
        jsr krnCHROUT
        lda #CHAR_SPACE
        sta (zpNamePtrLo),y
        dec charPosition
        jmp .GetPlayerNames
.EntryComplete
        ldy charPosition
        iny
        lda #0
        sta (zpNamePtrLo),y
        LIBMATHS_ADD8BIT_AV zpNamePtrLo, 11        
        inc currentPlayer
        lda currentPlayer
        cmp numberPlayers
        beq .FinishedNameEntry
        ldx currentPlayer
        jmp .NextPlayer
.FinishedNameEntry
        ldy #0
        lda #0
.ClearMoney
        sta playerMoney,y
        iny
        cpy #16
        bne .ClearMoney
        lda #$10
        sta playerMoney+2
        sta playerMoney+6
        sta playerMoney+10
        sta playerMoney+14
        lda #GF_STATUS_BET
        sta gameStatus
        rts
