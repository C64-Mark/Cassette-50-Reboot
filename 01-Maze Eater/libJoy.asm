;-------------------------------------------------------------------------------
;LIBJOY: Joystick Libraries
;-------------------------------------------------------------------------------

;Joystick Constants
JoyUp                   = %00000001
JoyDown                 = %00000010
JoyLeft                 = %00000100
JoyRight                = %00001000
JoyFire                 = %00010000
JoyNone                 = %00000000

defm    LIBJOY_GETJOY_V ; JoystickDirection

        lda CIAPRA
        and #/1
        endm ; test with bne on return