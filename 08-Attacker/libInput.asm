;-------------------------------------------------------------------------------
;LIBINPUT: Input Libraries
;-------------------------------------------------------------------------------

; Constants
; use joystick 2, change to CIAPRB for joystick 1
JoystickRegister        = CIAPRA

JoyUpMask               = %00000001
JoyDownMask             = %00000010
JoyLeftMask             = %00000100
JoyRightMask            = %00001000
JoyFireMask             = %00010000
FireDelayMax            = 30

defm    LIBINPUT_GETHELD_V ; (buttonMask)

        lda gameportThisFrame
        and #/1
        endm ; test with bne on return

;===============================================================================

defm    LIBINPUT_GETFIREPRESSED
     
        lda #1
        sta fireBlip ; clear Fire flag

        ; is fire held?
        lda gameportThisFrame
        and #GameportFireMask
        bne @notheld

@held
        ; is this 1st frame?
        lda gameportDiff
        and #GameportFireMask
        
        beq @notfirst
        lda #0
        sta fireBlip ; Fire

        ; reset delay
        lda #FireDelayMax
        sta fireDelay        
@notfirst

        ; is the delay zero?
        lda fireDelay
        bne @notheld
        lda #0
        sta fireBlip ; Fire
        ; reset delay
        lda #FireDelayMax
        sta fireDelay   
        
@notheld 
        lda fireBlip
        endm ; test with bne on return