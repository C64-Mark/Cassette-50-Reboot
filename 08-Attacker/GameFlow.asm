gfStatusJumpTableLo             byte <GameFlow_StatusMenu
                                byte <GameFlow_StatusInitialiseLevel
                                byte <GameFlow_StatusAlive
                                byte <GameFlow_StatusFlood
                                byte <GameFlow_StatusDying
                                byte <GameFlow_StatusDead

gfStatusJumpTableHi             byte >GameFlow_StatusMenu
                                byte >GameFlow_StatusInitialiseLevel
                                byte >GameFlow_StatusAlive
                                byte >GameFlow_StatusFlood
                                byte >GameFlow_StatusDying
                                byte >GameFlow_StatusDead

GameFlow_Update
        ldx gameStatus
        lda gfStatusJumpTableLo,x
        sta zpLow
        lda gfStatusJumpTableHi,x
        sta zpHigh
        jmp (zpLow)


GameFlow_StatusMenu
        jsr TitleScreen_DisplayTitle
        lda #GF_STATUS_INITLEVEL
        sta gameStatus
        rts


GameFlow_StatusInitialiseLevel
        jsr Initialise_LevelVariables
        jsr Initialise_Level
        lda #GF_STATUS_ALIVE
        sta gameStatus
        rts


GameFlow_StatusAlive
        jsr Player_GetInput
        jsr Player_UpdatePlane
        jsr Player_MovePlane
        jsr Enemy_MoveTank
        jsr Enemy_FireMissile
        jsr Enemy_MoveMissile
        jsr Enemy_FireBullet
        jsr Enemy_MoveBullet
        jsr Player_MoveBomb
        jsr Player_CheckPlaneCollision
        jsr Player_CheckBombCollision

        lda planeDestroyed
        beq .CheckWallBreach
        lda #GF_STATUS_DYING
        sta gameStatus
        jmp .ExitStatusAlive
.CheckWallBreach
        lda wallBreached
        beq .ExitStatusAlive
        lda #GF_STATUS_FLOOD
        sta gameStatus
.ExitStatusAlive
        rts


GameFlow_StatusDying
        jsr Player_PlaneExplosion
        rts


GameFlow_StatusDead
        lda #0
        sta SPREN
.WaitFireGameOver
        LIBJOY_GETJOY_V JOY_FIRE
        bne .WaitFireGameOver
        lda #GF_STATUS_MENU
        sta gameStatus
        rts

GameFlow_StatusFlood
        lda #0
        sta SPREN
        jsr Enemy_Flood
.WaitFireFlood
        LIBJOY_GETJOY_V JOY_FIRE
        bne .WaitFireFlood
        lda #GF_STATUS_MENU
        sta gameStatus
        rts        

