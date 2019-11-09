UserInput
        jsr krnGETIN
        beq @noresponse
        ldx #0
@loop
        cmp directionKey,x
        bne @next
        lda directionLocation,x
        sta gameLocation
        lda #true
        sta gameChanged
        rts
@next   
        inx
        cpx #5
        bne @loop
@noresponse
        lda #false
        sta gameChanged
        rts

GameLocationUpdate
        ldx gameLocation
        lda glIndexLo,x
        sta zpLow
        lda glIndexHi,x
        sta zpHigh
        ldy #0
@topborder
        lda scnTopBar,y
        beq @location
        jsr krnChrout
        iny
        jmp @topborder
@location
        ldy #0
@nextchar
        lda (zpLow),y
        beq @options
        jsr krnCHROUT
        inc zpLow
        bne @skiphi
        inc zpHigh
@skiphi
        jmp @nextchar
@options
        ldy #1
        ldx #0
@loop
        lda (zpLow),y
        sta directionLocation,x
        iny
        lda (zpLow),y
        sta directionKey,x
        iny
        inx
        cpx #5
        bne @loop
        ldy #0
@bottomborder
        lda scnBottomBar,y
        beq @exit
        jsr krnChrout
        iny
        jmp @bottomborder
@exit
        rts