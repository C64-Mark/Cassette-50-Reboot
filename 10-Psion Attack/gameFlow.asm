gfStatusJumpTableLo             byte <GameFlow_StatusMenu
                                byte <GameFlow_StatusActive
                                byte <GameFlow_StatusHyperJump
                                byte <GameFlow_StatusDying
                                byte <GameFlow_StatusDead
                                byte <GameFlow_StatusHiScore

gfStatusJumpTableHi             byte >GameFlow_StatusMenu
                                byte >GameFlow_StatusActive
                                byte >GameFlow_StatusHyperJump
                                byte >GameFlow_StatusDying
                                byte >GameFlow_StatusDead
                                byte >GameFlow_StatusHiScore


GameFlow_Update
        ldx gameStatus
        lda gfStatusJumpTableLo,x
        sta zpLow
        lda gfStatusJumpTableHi,x
        sta zpHigh
        jmp (zpLow)

GameFlow_StatusMenu
        jsr Menu_Display
        lda #GF_STATUS_ACTIVE
        sta gameStatus
        jsr Initialise_GameScreen
        rts

GameFlow_StatusActive
        jsr gameGround_AnimateGround
        jsr gameObject_SelectObject
        jsr gameObject_Update
        jsr gameObject_Draw
        jsr gamePlayer_Move
        jsr gamePlayer_CheckCollision
        lda playerHit
        beq @exit
        lda #GF_STATUS_DYING
        sta gameStatus
@exit
        rts

GameFlow_StatusHyperJump
        ;not yet implemented
        rts

GameFlow_StatusDying
        jmp GameFlow_StatusDying ;inf loop
        rts

GameFlow_StatusDead
        ;not yet implemented
        rts

GameFlow_StatusHiScore
        ;not yet implemented
        rts