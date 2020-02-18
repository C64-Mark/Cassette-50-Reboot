gameBullet_Fired
        ldx #0
@loop
        lda bulletActive,x
        beq bulletfree
        inx
        cpx #3
        bne @loop
        rts
bulletfree
        lda bulletDelay
        cmp #0
        bne bulletexit
        lda #1
        sta bulletActive,x
        lda bulletRate
        sta bulletDelay
        ;inc BDCOL
        lda playerX+1
        sta bulletX,x
        lda playerY+1
        sta bulletY,x
        lda #0
        sta bulletXMSB,x
        lda bulletSprite,x
        asl
        tay
        lda bulletX,x
        sta SPRX0,y
        lda bulletY,x
        sta SPRY0,y
        lda bulletSpriteMask,x
        ora SPREN
        sta SPREN
        lda bulletSpriteMask,x
        eor #$FF
        and SPRXMSB
        sta SPRXMSB
bulletexit
        rts


gameBullet_Move
        ldx #0
bulletloop
        lda bulletActive,x
        beq nextbullet
movebullet
        lda bulletX,x
        tay
        iny
;check if we've crossed xmsb boundary
        cpy #0
        bne @offscreencheck
        lda #1
        sta bulletXMSB,x
        lda bulletSpriteMask,x
        ora SPRXMSB
        sta SPRXMSB
        jmp updatebullet
@offscreencheck
;check if we've gone off screen
        cpy #88
        bcc updatebullet
        lda bulletXMSB,x
        beq updatebullet
        lda #0
        sta bulletActive,x
        sta bulletXMSB,x
        lda bulletSpriteMask,x
        eor #$FF
        and SPREN
        sta SPREN
        jmp nextbullet
updatebullet
        tya
        sta bulletX,x
        lda bulletSprite,x
        asl
        tay
        lda bulletX,x
        sta SPRX0,y
        lda bulletY,x
        sta SPRY0,y        
nextbullet
        inx
        cpx #3
        bne bulletloop
        rts




@bulletupdate
@nextbullet




        rts