gfStatusJumpTableLo             byte <GameFlow_StatusMenu
                                byte <GameFlow_StatusActive
                                byte <GameFlow_StatusHyperJump
                                byte <GameFlow_StatusNextWave
                                byte <GameFlow_StatusDying
                                byte <GameFlow_StatusDead
                                byte <GameFlow_StatusGameOver

gfStatusJumpTableHi             byte >GameFlow_StatusMenu
                                byte >GameFlow_StatusActive
                                byte >GameFlow_StatusHyperJump
                                byte >GameFlow_StatusNextWave
                                byte >GameFlow_StatusDying
                                byte >GameFlow_StatusDead
                                byte >GameFlow_StatusGameOver


GameFlow_Update
        ldx gameStatus
        lda gfStatusJumpTableLo,x
        sta zpLow
        lda gfStatusJumpTableHi,x
        sta zpHigh
        jmp (zpLow)

GameFlow_StatusMenu
        jsr Initialise_Sprites
        jsr Initialise_MenuDisplay
        jsr Initialise_GameVariables
        lda #GF_STATUS_NEXTWAVE
        sta gameStatus
        rts

GameFlow_StatusActive
        jsr gameScore_UpdateScore
        jsr gameScore_DisplayStats
        jsr gameInput_CheckInput
        jsr gameObject_AnimateGround
        jsr gameObject_AnimateStars
        jsr gameObject_SelectObject
        jsr gameObject_Update   ;slow
        jsr gameObject_Draw     ;slow
        jsr gamePlayer_Move
        jsr gameBullet_Move
        jsr gameObject_CheckCollision
        jsr gameBullet_Collision
        
        lda inputKeySpace
        beq .CheckPlayerHit
        lda #GF_STATUS_HYPERJUMP
        sta gameStatus
.CheckPlayerHit
        lda playerHit
        beq .CheckGameTimer
        lda #GF_STATUS_DYING
        sta gameStatus
        jmp .StatusActiveExit
.CheckGameTimer
        dec gameTimer+1
        bne .StatusActiveExit
        lda #$FF
        sta gameTimer+1
        dec gameTimer
        bne .StatusActiveExit
        lda #GF_STATUS_NEXTWAVE
        sta gameStatus
.StatusActiveExit
        rts

GameFlow_StatusHyperJump
        jsr gamePlayer_Hyperjump
        rts

GameFlow_StatusNextWave
        jsr gameLevel_NextWave
        jsr Initialise_GameScreen
        jsr Initialise_Stars
        lda #GF_STATUS_ACTIVE
        sta gameStatus
        rts

GameFlow_StatusDying
        lda #0
        sta playerHit
        jsr gamePlayer_Exploding
        rts

GameFlow_StatusDead
        lda playerLives
        bne .LoseLife
        lda #GF_STATUS_GAMEOVER
        sta gameStatus
        rts
.LoseLife
        LIBSPRITE_SETFRAME_VA SHIP_SPRITE, shipFrame
        LIBSPRITE_ENABLE_VV %00000011, true
        lda #60
        sta playerInvincible
        lda #0
        sta playerExploding
        sta playerExplosionFrame
        lda #EXPLOSION_RATE
        sta playerExplosionCounter
        lda #GF_STATUS_ACTIVE
        sta gameStatus        
        rts

GameFlow_StatusGameOver
        jsr gameLevel_GameOver
        rts