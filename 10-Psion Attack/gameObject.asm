gameObject_Update
        ldx #$FF
.UpdateNextObject
        inx
        cpx numberObjects
        bne .CheckObjectActive
        rts
.CheckObjectActive
        lda objectActive,x
        beq .UpdateNextObject
        lda objectSpeedCounter,x
        beq .AnimateObject
        dec objectSpeedCounter,x
        jmp .UpdateNextObject
.AnimateObject
        lda objectSpeed,x
        sta objectSpeedCounter,x
        lda objectCurrentFrame,x
        clc
        adc objectFrameRate
        sta objectCurrentFrame,x
        cmp #8
        bcc .DisplayObject
        lda objectTypeOffset,x
        cmp #OBJ_EXPLODE
        beq .RemoveObject
        lda objectCurrentFrame,x
        sec
        sbc #8
        sta objectCurrentFrame,x
        dec objectPositionX,x
        lda objectPositionX,x
        cmp #$FF
        beq .RemoveObject
.DisplayObject
        jsr gameObject_SetScreenPos
        jmp .UpdateNextObject
.RemoveObject
        lda #0
        sta objectActive,x
        inc objectPositionX,x
        jsr gameObject_SetScreenPos
        lda objectScreenPosLo,x
        sta scnPtrLo
        lda objectScreenPosHi,x
        sta scnPtrHi
        lda #space
        ldy #0
        sta (scnPtrLo),y
        iny
        sta (scnPtrLo),y
        jmp .UpdateNextObject


gameObject_SetScreenPos
        lda objectPositionX,x
        sta objectScreenPosLo,x
        lda #4
        sta objectScreenPosHi,x
        lda objectPositionY,x
        beq .ExitSetScreenPos
        tay
        lda objectScreenPosLo,x
.ObjectScreenRowLoop
        clc
        adc #40
        bcc .ObjectScreenHiSkip
        inc objectScreenPosHi,x
.ObjectScreenHiSkip
        dey
        bne .ObjectScreenRowLoop
        sta objectScreenPosLo,x
.ExitSetScreenPos
        rts



gameObject_Draw
        ldx #0
.ObjectDrawLoop
        lda objectActive,x
        beq .DrawNextObject
        lda objectScreenPosLo,x
        sta scnPtrLo
        sta scnMapLo
        lda objectScreenPosHi,x
        sta scnPtrHi
        clc
        adc #$C0
        sta scnMapHi
        ldy #2
        lda #0
        sta (scnMapLo),y
        dey
        inx
        txa
        dex
        sta (scnMapLo),y
        dey
        sta (scnMapLo),y
        lda objectCurrentFrame,x
        clc
        adc objectTypeOffset,x
        pha
        tay
        lda objectRightFrame,y
        ldy #1
        sta (scnPtrLo),y
        pla
        tay
        lda objectLeftFrame,y
        ldy #0
        sta (scnPtrLo),y

        ldy #2
        lda #space
        sta (scnPtrLo),y

        lda scnPtrHi
        clc
        adc #$D4
        sta scnPtrHi
        lda objectColour,x
        ldy #0
        sta (scnPtrLo),y
        iny
        sta (scnPtrLo),y
.DrawNextObject
        inx
        cpx numberObjects
        bne .ObjectDrawLoop
        rts


gameObject_SelectObject
        dec objectEntryDelay
        beq .ReadyToSelect
        rts
.ReadyToSelect
        lda #OBJ_ENTRYDELAY
        sta objectEntryDelay
        ldx #0
.ObjectSelectLoop
        lda objectActive,x
        beq .RandomiseSelection
        inx
        cpx numberObjects
        bne .ObjectSelectLoop
        rts
.RandomiseSelection
        stx currentObjectID
        lda SIDRAND
        cmp objectSelectionRate
        bcc .ObjectSelected
        rts
.ObjectSelected
        and #7
        clc
        adc objectEntryRow
        cmp #21
        bcc .ValidRow
        sec
        sbc #18
.ValidRow
        sta objectEntryRow
.TryAnotherRow
        ldx #0
.TestRowIsFree
        lda objectPreviousRow,x
        cmp objectEntryRow
        bne .NothingPreviously
        inc objectEntryRow
        jmp .TryAnotherRow
.NothingPreviously
        inx
        cpx #5
        bne .TestRowIsFree

        ldx #3
.ObjectHistoryLoop
        lda objectPreviousRow,x
        sta objectPreviousRow+1,x
        dex
        cpx #$FF
        bne .ObjectHistoryLoop
        lda objectEntryRow
        sta objectPreviousRow

        lda SIDRAND
        and #31
        cmp #16
        bcc .CheckCruiser
        rts
.CheckCruiser
        lsr
        clc
        cmp #5
        bcc .CheckFuelPod
        lda #OBJ_CRUISER
        ldy #OBJ_CRUISER_COLOUR
        jmp .SetObject
.CheckFuelPod
        cmp #3
        bcc .CheckFighter
        lda #OBJ_FUELPOD
        ldy #OBJ_FUELPOD_COLOUR
        jmp .SetObject
.CheckFighter
        cmp #2
        bne .CheckBattleStar
        lda #OBJ_FIGHTER
        ldy #OBJ_FIGHTER_COLOUR
        jmp .SetObject
.CheckBattleStar
        cmp #1
        bne .CheckMine
        lda #OBJ_BATTLESTAR
        ldy #OBJ_BATTLESTAR_COLOUR
        jmp .SetObject
.CheckMine
        lda #OBJ_MINE
        ldy #OBJ_MINE_COLOUR
.SetObject
        sta currentObject
        sty currentObjectColour
        ldx currentObjectID
        lda currentObject
        sta objectTypeOffset,x
        lda currentObjectColour
        sta objectColour,x
        lda #1
        sta objectActive,x
        lda objectEntryRow
        sta objectPositionY,x
        lda #38
        sta objectPositionX,x
        jsr gameObject_SetScreenPos
        lda #0
        sta objectCurrentFrame,x
        lda SIDRAND
        and objectLowestSpeed
        sta objectSpeed,x
        sta objectSpeedCounter,x
        rts

gameObject_CheckCollision
        lda SPRCBG
        lsr
        bcc .CheckBullet1Collision
        lda playerInvincible
        bne .ExitCollisionCheck
        lda #true
        sta playerHit
        jmp .ExitCollisionCheck
.CheckBullet1Collision
        lsr
        lsr
        bcc .CheckBullet2Collision
        lda #true
        sta bulletHit
        jmp .ExitCollisionCheck
.CheckBullet2Collision
        lsr
        bcc .CheckBullet3Collision
        lda #true
        sta bulletHit+1
        jmp .ExitCollisionCheck
.CheckBullet3Collision
        lsr
        bcc .ExitCollisionCheck
        lda #true
        sta bulletHit+2
.ExitCollisionCheck
        lda #false
        sta SPRCBG
        dec playerInvincible
        inc SPRCOL0
        lda playerInvincible
        cmp #$FF
        bne .SkipInvincibleClear
        lda #false
        sta playerInvincible
        lda #gray2
        sta SPRCOL0
.SkipInvincibleClear
        rts


gameObject_Destroyed
        lda bulletScreenHi
        clc
        adc #$C0
        sta scnMapHi
        lda bulletScreenLo
        sta scnMapLo
        ldy #0
        lda (scnMapLo),y
        bne .ObjectFound
        iny
        lda (scnMapLo),y
        bne .ObjectFound
        lda scnMapLo
        sec
        sbc #40
        bcs .SkipHi1
        dec scnMapHi
.SkipHi1
        sta scnMapLo
        lda (scnMapLo),y
        bne .ObjectFound
        dey
        lda (scnMapLo),y
        bne .ObjectFound
        lda scnMapLo
        clc
        adc #80
        bcc .SkipHi2
        inc scnMapHi
.SkipHi2
        sta scnMapLo
        lda (scnMapLo),y
        bne .ObjectFound
        iny
        lda (scnMapLo),y
        bne .ObjectFound
        lda scnMapLo
        sec
        sbc #41
        bcs .SkipHi3
        dec scnMapHi
.SkipHi3
        sta scnMapLo
        dey
        lda (scnMapLo),y
        bne .ObjectFound
        jmp .ExitObjectDestroyed
.ObjectFound
        tax
        dex
        lda #0
        sta objectCurrentFrame,x
        lda objectTypeOffset,x
        cmp #OBJ_MINE
        bne .NotMineHit
        lda #true
        sta playerHit
.NotMineHit
        lsr
        lsr
        lsr
        tay
        lda objectScore,y
        sta playerScore
        lda #OBJ_EXPLODE_COLOUR
        sta objectColour,x
        lda #OBJ_EXPLODE
        sta objectTypeOffset,x
.ExitObjectDestroyed
        rts

gameObject_AnimateGround
        dec groundCounter
        bpl .ExitAnimateGround
        lda groundRate
        sta groundCounter
        ldy SCN_ROW24
        ldx #0
.AnimateGroundLoop
        lda SCN_ROW24+1,x
        sta SCN_ROW24,x
        inx
        cpx #39
        bne .AnimateGroundLoop
        sty SCN_ROW24+39
.ExitAnimateGround
        rts


gameObject_AnimateStars
        ldx #0
.StarDelayLoop
        lda starDelayCounter,x
        beq .SetStarsY
        dec starDelayCounter,x
        jmp .NextStar
.SetStarsY
        lda #STAR_RATE
        sta starDelayCounter,x
        lda SIDRAND
        cmp #50
        bcc .SetStarsY
        cmp #200
        bcs .SetStarsY
        sta starY,x
        clc
        lda SIDRAND
        adc #31
        sta starX,x
        bcs .SetStarXMSB
        lda starSpriteMask,x
        eor #$FF
        and SPRXMSB
        sta SPRXMSB
        jmp .NextStar
.SetStarXMSB
        lda starSpriteMask,x
        ora SPRXMSB
        sta SPRXMSB
.NextStar
        lda starDelayCounter,x
        tay
        lda starColours,y
        sta starColour,x
        inx
        cpx #3
        bne .StarDelayLoop
        LIBSPRITE_SETPOSITION_VAA STAR_SPRITE1, starX, starY
        LIBSPRITE_SETPOSITION_VAA STAR_SPRITE2, starX+1, starY+1
        LIBSPRITE_SETPOSITION_VAA STAR_SPRITE3, starX+2, starY+2
        LIBSPRITE_SETCOLOUR_VA STAR_SPRITE1, starColour
        LIBSPRITE_SETCOLOUR_VA STAR_SPRITE2, starColour+1
        LIBSPRITE_SETCOLOUR_VA STAR_SPRITE3, starColour+2
        rts