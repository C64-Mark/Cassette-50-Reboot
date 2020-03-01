gamePlayer_Move
        lda inputJoyUp
        beq .MoveDown
        lda #0
        sta inputJoyUp
        lda playerY+1
        cmp #60
        bcc .MoveDown
        LIBMATHS_SUBTRACT_16BIT_AV playerY, PLAYER_DELTA
.MoveDown
        lda inputJoyDown
        beq .MoveLeft
        lda #0
        sta inputJoyDown
        LIBMATHS_ADD_16BIT_AV playerY, PLAYER_DELTA
.MoveLeft
        lda inputJoyLeft
        beq .MoveRight
        lda #0
        sta inputJoyLeft
        lda playerX+1
        cmp #25
        bcc .MoveRight
        LIBMATHS_SUBTRACT_16BIT_AV playerX, PLAYER_DELTA
.MoveRight
        lda inputJoyRight
        beq .MoveFire
        lda #0
        sta inputJoyRight
        lda playerX+1
        cmp #120
        bcs .MoveFire
        LIBMATHS_ADD_16BIT_AV playerX, PLAYER_DELTA
.MoveFire
        lda inputJoyFire
        beq .MoveExit
        lda #0
        sta inputJoyFire
        jsr gameBullet_Fired
.MoveExit
        lda bulletDelay
        beq .UpdatePlayerSprites
        dec bulletDelay
.UpdatePlayerSprites
        LIBSPRITE_SETPOSITION_VAA SHIP_OVERLAY_SPRITE, playerX+1, PlayerY+1
        LIBSPRITE_SETPOSITION_VAA SHIP_SPRITE, playerX+1, playerY+1
        rts


gamePlayer_Exploding
        lda playerExploding
        bne .ExplosionDelay
        LIBSPRITE_ENABLE_VV %00000001, false
        LIBSPRITE_SETFRAME_VA SHIP_SPRITE, playerExplosionFrame
        lda #1
        sta playerExploding
.ExplosionDelay
        lda playerExplosionCounter
        beq .NextExplosionFrame
        dec playerExplosionCounter
        rts
.NextExplosionFrame
        lda #EXPLOSION_RATE
        sta playerExplosionCounter
        inc playerExplosionFrame
        lda playerExplosionFrame
        cmp #8
        bne .UpdateExplosionFrame
        LIBSPRITE_ENABLE_VV %00000010, false
        lda #GF_STATUS_DEAD
        sta gameStatus
        dec playerLives
        rts
.UpdateExplosionFrame
        LIBSPRITE_SETFRAME_VA SHIP_SPRITE, playerExplosionFrame
        rts


gamePlayer_Hyperjump
        lda hyperjumpLeft
        beq .ExitHyperjump
        ldx hyperjumpStage
        cpx #4
        beq .HyperjumpComplete
        dec hyperjumpCounter
        lda hyperjumpCounter
        beq .NextHyperjumpStage
        rts
.NextHyperjumpStage
        lda #HYPERJUMP_RATE
        sta hyperjumpCounter
        lda hyperjumpStageColour,x
        sta BDCOL

        ldy #18
.HyperjumpTextLoop
        lda txtHyperjump,y
        sta SCN_ROW10+11,y
        lda hyperjumpStageColour,x
        sta COL_ROW10+11,y
        dey
        bpl .HyperjumpTextLoop

        inc hyperjumpStage
        rts
.HyperjumpComplete
        lda #1
        sta hyperjumpCounter
        lda #0
        sta hyperjumpStage
        sta hyperjumpLeft
        sta BDCOL
        jsr Initialise_GameScreen
        ldx #0
        txa
        sta inputKeySpace
.ResetObjectsLoop
        sta objectActive,x
        inx
        cpx numberObjects
        bne .ResetObjectsLoop
.ExitHyperjump
        lda #GF_STATUS_ACTIVE
        sta gameStatus
        rts




;gamePlayer_Hyperjump
;        lda hyperjumpLeft
;        beq .ExitHyperjump
;        lda hyperjumpStage
;        cmp #lightred
;        beq .JumpComplete
;        cmp #black
;        bne .NextHyperjumpStage
;        lda #yellow
;        sta hyperjumpStage
;        lda hyperjumpRate
;        sta hyperjumpCounter
;        jmp .ExitHyperjumpStage
;.NextHyperjumpStage
;        dec hyperjumpCounter
;        lda hyperjumpCounter
;        bne .ExitHyperjumpStage
;        inc hyperjumpStage
;        lda hyperjumpRate
;        sta hyperjumpCounter
;        jmp .ExitHyperjumpStage
;.JumpComplete
;        lda #black
;        sta hyperjumpStage
;        dec hyperjumpLeft
;        jsr Initialise_GameScreen
;        ldx #0
;        txa
;        sta inputKeySpace
;.ResetObjectsLoop
;        sta objectActive,x
;        inx
;        cpx numberObjects
;        bne .ResetObjectsLoop
;.ExitHyperjump
;        lda #GF_STATUS_ACTIVE
;        sta gameStatus
;.ExitHyperjumpStage
;        lda hyperjumpStage
;        sta BDCOL
;        rts


