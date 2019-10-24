;game subs

InitVariables
        lda #52
        sta planeXLo + 1
        sta planeY
        lda #0
        sta planeXHi
        sta tankXHi
        sta turretXHi
        sta missileXHi
        sta planeSprite
        sta planeVelocity + 1
        sta missileFired
        lda #128
        sta planeVelocity
        lda #1
        sta tankSprite
        sta tankDx
        lda #2
        sta turretSprite
        lda #205
        sta tankY
        lda #195
        sta missileY
        lda #150
        sta tankXLo + 1
        lda #140
        sta missileXLo + 1
        lda #101
        sta turretY
        lda #47
        sta turretXLo
        lda #128
        sta tankSpeed
        lda #5
        sta missileSprite
        rts

InitGame
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_SETVIC_AVV VMCR, 240, 12
        LIBSCREEN_SETCOLOURS_VVVVV white, white, black, black, black
        LIBGENERAL_INITRAND
        rts

IntroScreen
        LIBSCREEN_PRINT_A txtTitle
        LIBSCREEN_PRINT_A txtInstructYN
@response
        LIBJOY_GETJOY_V JoyFire
        bne @joyUp
        rts
@joyUp
        LIBJOY_GETJOY_V JoyUp
        bne @response
        LIBSCREEN_PRINT_DELAY_A txtInst1
        LIBSCREEN_PRINT_DELAY_A txtInst2
@joyFire
        LIBJOY_GETJOY_V JoyFire
        bne @joyFire
        rts

InitGameScreen
        LIBSCREEN_SET1000_AV SCREENRAM, space
        LIBSCREEN_PRINT_A scnLevelOnea
        LIBSCREEN_PRINT_A scnLevelOneb
        rts

InitSprites
        LIBSPRITE_MULTICOLORENABLE_AV planeSprite, false
        LIBSPRITE_SETFRAME_AV planeSprite, 0
        LIBSPRITE_MULTICOLORENABLE_AV tankSprite, false
        LIBSPRITE_SETFRAME_AV tankSprite, 1
        LIBSPRITE_MULTICOLORENABLE_AV turretSprite, false
        LIBSPRITE_SETFRAME_AV turretSprite, 2
        LIBSPRITE_MULTICOLORENABLE_AV missileSprite, false
        LIBSPRITE_SETFRAME_AV missileSprite, 5
        LIBSPRITE_ENABLE_VV %00000111, true
        LIBSPRITE_SETPOSITION_AAAA planeSprite, planeXHi, planeXLo + 1, planeY
        LIBSPRITE_SETPOSITION_AAAA tankSprite, tankXHi, tankXLo + 1, tankY
        LIBSPRITE_SETPOSITION_AAAA missileSprite, missileXHi, missileXLo + 1, missileY
        LIBSPRITE_SETPOSITION_AAAA turretSprite, turretXHi, turretXLo, turretY
        LIBSPRITE_SETCOLOUR_VV 0, gray1
        LIBSPRITE_SETCOLOUR_VV 1, black
        LIBSPRITE_SETCOLOUR_VV 2, brown
        LIBSPRITE_SETCOLOUR_VV 5, black
        LIBSPRITE_SETMULTICOLORS_VV yellow, gray3
        rts

UserInput
        LIBJOY_GETJOY_V JoyUp
        bne @Down
        dec PlaneY
        rts
@down
        LIBJOY_GETJOY_V JoyDown
        bne @Left
        inc PlaneY
        rts
@Left
        LIBJOY_GETJOY_V JoyLeft
        bne @right
        lda #192
        sta planeVelocity
        rts
@right
        LIBJOY_GETJOY_V JoyRight
        bne @noinput
        lda #64
        sta planeVelocity
        rts
@noinput
        lda #128
        sta planeVelocity
        rts

UpdatePlane
        LIBMATHS_SUBTRACT_16BIT_AAA planeXLo, planeVelocity, planeXLo
        lda planeXLo + 1
        cmp #255
        bne @checky
        lda #0
        sta planeXLo
        lda planeXHi
        cmp #0
        bne @low
        inc planeXHi
        lda #90
        sta planeXLo + 1
        rts
@low
        dec planeXHi
@checky
        lda planeY
        cmp #44
        bpl @high
        lda #44
        sta planeY
        rts
@high
        cmp #60
        bmi @exit
        lda #60
        sta planeY
@exit
        rts
        
MovePlane
        LIBSPRITE_SETPOSITION_AAAA planeSprite, planeXHi, planeXLo + 1, planeY
        rts

MoveTank
        lda tankDx
        cmp #00
        bne @tankright
        LIBMATHS_SUBTRACT_16BIT_AAA tankXLo, tankSpeed, tankXLo
        lda tankXLo + 1
        cmp #80
        bne @exit
        inc tankDx
        jmp @exit
@tankright
        LIBMATHS_ADD_16BIT_AAA tankXLo, tankSpeed, tankXLo
        lda tankXLo + 1
        cmp #210
        bne @exit
        dec tankDx
@exit
        LIBSPRITE_SETPOSITION_AAAA tankSprite, tankXHi, tankXLo + 1, tankY
        rts

FireMissile
        lda SIDRAND
        cmp #51
        bpl FireMissileExit
        lda #1
        sta missileFired
        LIBSPRITE_ENABLE_VV %00100000, true
FireMissileExit
        rts

MoveMissile
        lda missileFired
        cmp #00
        beq missileX
        dec missileY
        lda missileY
        cmp #10
        bne MoveMissileExit
        LIBSPRITE_ENABLE_VV %00100000, false
        lda #0
        sta missileFired
        lda #195
        sta missileY        
missileX
        lda tankXHi
        sta missileXHi
        lda tankXLo + 1
        sta missileXLo + 1
        lda tankXLo
        sta missileXLo
MoveMissileExit
        LIBSPRITE_SETPOSITION_AAAA missileSprite, missileXHi, missileXLo + 1, missileY
        rts