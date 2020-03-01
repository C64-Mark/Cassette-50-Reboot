gameBullet_Fired
        ldx #0
.CheckBulletFreeLoop
        lda bulletActive,x
        beq .BulletAvailable
        inx
        cpx #3
        bne .CheckBulletFreeLoop
        rts
.BulletAvailable
        lda bulletDelay
        bne .ExitBulletFired
        lda #1
        sta bulletActive,x
        lda #BULLET_RATE
        sta bulletDelay
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
.ExitBulletFired
        rts


gameBullet_Move
        ldx #0
.BulletLoop
        lda bulletActive,x
        beq .NextBullet
movebullet
        lda bulletX,x
        clc
        adc #BULLET_SPEED
        sta bulletX,x
        bcc .BulletOffScreenCheck
        lda #1
        sta bulletXMSB,x
        lda bulletSpriteMask,x
        ora SPRXMSB
        sta SPRXMSB
        jmp .UpdateBullet
.BulletOffScreenCheck
        cmp #56
        bcc .UpdateBullet
        lda bulletXMSB,x
        beq .UpdateBullet
        lda #0
        sta bulletActive,x
        sta bulletXMSB,x
        lda bulletSpriteMask,x
        eor #$FF
        and SPREN
        sta SPREN
        jmp .NextBullet
.UpdateBullet
        lda bulletSprite,x
        asl
        tay
        lda bulletX,x
        sta SPRX0,y
        lda bulletY,x
        sta SPRY0,y        
.NextBullet
        inx
        cpx #3
        bne .BulletLoop
        rts


gameBullet_Collision
        ldx #0
        lda bulletHit,x
        beq .Bullet2
        jsr gameBullet_GetScreenPos
        jsr gameObject_Destroyed
        jmp .BulletCollisionExit
.Bullet2
        inx
        lda bulletHit,x
        beq .Bullet3
        jsr gameBullet_GetScreenPos
        jsr gameObject_Destroyed
        jmp .BulletCollisionExit
.Bullet3
        inx
        lda bulletHit,x
        beq .BulletCollisionExit
        jsr gameBullet_GetScreenPos
        jsr gameObject_Destroyed
.BulletCollisionExit
        rts


gameBullet_GetScreenPos
        lda #0
        sta zpLow
        lda #4
        sta zpHigh
        lda bulletY,x
        sec
        sbc #39 ;11-50 offset for sprite
        lsr
        lsr
        lsr
        beq .ZeroRows
        tay
        lda #0
.AddRowsLoop
        clc
        adc #40
        bcc .SkipBulletHi
        inc zpHigh
.SkipBulletHi
        dey
        bne .AddRowsLoop
.ZeroRows
        sta zpLow
        lda bulletX,x
        lsr
        lsr
        lsr
        clc
        adc zpLow
        bcc .SkipBulletHi2
        inc zpHigh
.SkipBulletHi2
        sta zpLow
        lda bulletXMSB,x
        beq .SkipBulletHi3
        clc
        lda zpLow
        adc #31
        sta zpLow
        bcc .SkipBulletHi3
        inc zpHigh
.SkipBulletHi3
        lda zpLow
        sta bulletScreenLo
        lda zpHigh
        sta bulletScreenHi
        lda #0
        sta bulletHit,x
        sta bulletActive,x
        lda bulletSprite,x
        lda bulletSpriteMask,x
        eor #$FF
        and SPREN
        sta SPREN
        rts

