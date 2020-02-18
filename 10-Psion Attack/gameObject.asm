gameObject_Update
        ldx #$FF
nextobject
        inx
        cpx numberObjects
        bne checkobjectactive
        rts
checkobjectactive
        lda objectActive,x
        beq nextobject
        lda objectSpeedCounter,x
        beq animateobject
        dec objectSpeedCounter,x
        jmp nextobject
animateobject
        lda objectSpeed,x
        sta objectSpeedCounter,x
        inc objectCurrentFrame,x
        lda objectCurrentFrame,x
        cmp #8
        bne displayobject
        lda #0
        sta objectCurrentFrame,x
        dec objectPositionX,x
        lda objectPositionX,x
        cmp #$FF
        beq removeobject
displayobject
        jsr gameObject_SetScreenPos
        jmp nextobject
removeobject
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
        jmp nextobject


gameObject_SetScreenPos
        lda objectPositionX,x
        sta objectScreenPosLo,x
        lda #4
        sta objectScreenPosHi,x
        lda objectPositionY,x
        beq @done
        tay
        lda objectScreenPosLo,x
@loop
        clc
        adc #40
        bcc @skip
        inc objectScreenPosHi,x
@skip
        dey
        bne @loop
        sta objectScreenPosLo,x
@done
        rts

gameObject_Draw
        ldx #0
@loop
        lda objectActive,x
        beq @next
        lda objectScreenPosLo,x
        sta scnPtrLo
        lda objectScreenPosHi,x
        sta scnPtrHi
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

        lda scnPtrHi
        clc
        adc #$D4
        sta scnPtrHi
        lda objectColour,x
        ldy #0
        sta (scnPtrLo),y
        iny
        sta (scnPtrLo),y
@next
        inx
        cpx numberObjects
        bne @loop
        rts


gameObject_SelectObject
        dec objectEntryDelay
        beq readytoselect
        rts
readytoselect
        lda #OBJ_ENTRYDELAY
        sta objectEntryDelay
        ldx #0
@loop
        lda objectActive,x
        beq @randomise
        inx
        cpx #40
        bne @loop
        rts
@randomise
        stx currentObjectID
        lda SIDRAND
        cmp #32
        bcc @selected
        rts
@selected
        and #7

        clc
        adc objectEntryRow
        cmp #21
        bcc @skip
        sec
        sbc #18
@skip
        sta objectEntryRow
@tryanotherrow
        ldx #0
@testnext
        lda objectPreviousRow,x
        cmp objectEntryRow
        bne @skip2
        inc objectEntryRow
        jmp @tryanotherrow
@skip2
        inx
        cpx #5
        bne @testnext

        ldx #3
@keepshifting
        lda objectPreviousRow,x
        sta objectPreviousRow+1,x
        dex
        cpx #$FF
        bne @keepshifting
        lda objectEntryRow
        sta objectPreviousRow

        lda SIDRAND
        and #31
        cmp #16
        bcc check_cruiser
        rts
check_cruiser
        lsr
        clc
        cmp #5
        bmi check_fuelpod
        lda #OBJ_CRUISER
        ldy #OBJ_CRUISER_COLOUR
        jmp setobject
check_fuelpod
        cmp #3
        bmi check_fighter
        lda #OBJ_FUELPOD
        ldy #OBJ_FUELPOD_COLOUR
        jmp setobject
check_fighter
        cmp #2
        bne check_battlestar
        lda #OBJ_FIGHTER
        ldy #OBJ_FIGHTER_COLOUR
        jmp setobject
check_battlestar
        cmp #1
        bne check_mine
        lda #OBJ_BATTLESTAR
        ldy #OBJ_BATTLESTAR_COLOUR
        jmp setobject
check_mine
        lda #OBJ_MINE
        ldy #OBJ_MINE_COLOUR
setobject
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
        and #3
        clc
        adc #3
        sta objectSpeed,x
        sta objectSpeedCounter,x
        rts
        
