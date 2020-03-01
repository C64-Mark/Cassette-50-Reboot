gameInput_CheckInput
        lda KEY_PRESSED
        cmp inputPreviousKey
        beq .CheckJoy
        ldx #KEY_INPUT_DELAY
        stx inputKeyDelay
        sta inputPreviousKey
        cmp #KEY_SPACE
        bne .CheckJoy
        inc inputKeySpace
.CheckJoy
        LIBJOY_GETJOY_V JoyUp
        bne .CheckJoyDown
        inc inputJoyUp
.CheckJoyDown
        LIBJOY_GETJOY_V JoyDown
        bne .CheckJoyLeft
        inc inputJoyDown
.CheckJoyLeft
        LIBJOY_GETJOY_V JoyLeft
        bne .CheckJoyRight
        inc inputJoyLeft
.CheckJoyRight
        LIBJOY_GETJOY_V JoyRight
        bne .CheckJoyFire
        inc inputJoyRight
.CheckJoyFire
        LIBJOY_GETJOY_V JoyFire
        bne .CheckInputExit
        inc inputJoyFire
.CheckInputExit
        rts

