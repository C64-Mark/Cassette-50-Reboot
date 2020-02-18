;-------------------------------------------------------------------------------
; Zero Page
;-------------------------------------------------------------------------------
zpLow           = $FB
zpHigh          = $FC
scnPtrLo        = $FD
scnPtrHi        = $FE

;-------------------------------------------------------------------------------
; Screen
;-------------------------------------------------------------------------------
SCREENRAM       = $0400 ;Default screen ram
BOTTOM_ROW      = $07C0
SPRPTR0         = $07F8 ;Sprite pointers

;-------------------------------------------------------------------------------
; Game Variables
;-------------------------------------------------------------------------------
*=$0815
gameStatus              byte 00

groundCounter           byte 00
groundRate              byte 10

playerX                 byte 00, 25
playerY                 byte 00, 139
playerDelta             byte 64, 00
playerHit               byte 00
playerLives             byte 03

playerExploding         byte 00
playerExplosionFrame    byte 02
playerExplosionRate     byte 10
playerExplosionCounter  byte 10

bulletSprite            byte 02, 03, 04
bulletSpriteMask        byte 04, 08, 16
bulletFrame             byte 08
bulletFired             byte 00
bulletActive            byte 00, 00, 00
bulletX                 byte 00, 00, 00
bulletXMSB              byte 00, 00, 00
bulletY                 byte 00, 00, 00
bulletRate              byte 80
bulletDelay             byte 100

currentObject           byte 00
currentObjectColour     byte 00
currentObjectID         byte 00

objectEntryRow          byte 00
objectEntryDelay        byte 02

objectPreviousRow       byte 00, 00, 00, 00, 00

numberObjects           byte 00
objectType              byte 00

shipOverlaySprite       byte 00
overlayFrame            byte 00
shipSprite              byte 01
shipFrame               byte 01

spriteNumberMask        byte %00000001, %00000010, %00000100, %00001000
                        byte %00010000, %00100000, %01000000, %10000000

;-------------------------------------------------------------------------------
; Game Tables
;-------------------------------------------------------------------------------
*=$0900
objectCurrentFrame      byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

objectColour            byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        
objectPositionX         byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

objectPositionY         byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

objectSpeed             byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

objectSpeedCounter      byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

objectActive            byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

objectScreenPosLo       byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

objectScreenPosHi       byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

objectTypeOffset        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00
                        byte 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

objectRightFrame        byte 73, 74, 75, 76, 77, 78, 79, 32 ;cruiser
                        byte 88, 89, 90, 91, 92, 93, 94, 32 ;fuel pod
                        byte 100, 101, 102, 103, 104, 105, 106, 32 ;fighter
                        byte 114, 115, 116, 117, 118, 119, 120, 32 ;battlestar
                        byte 127, 128, 129, 130, 131, 132, 133, 32 ;mine

objectLeftFrame         byte 80, 81, 82, 83, 84, 85, 86, 72 ;cruiser
                        byte 32, 32, 32, 95, 96, 97, 98, 87 ;fuel pod
                        byte 32, 107, 108, 109, 110, 111, 112, 99 ;fighter
                        byte 32, 32, 121, 122, 123, 124, 125, 113 ;battlestar
                        byte 32, 32, 134, 135, 136, 137, 138, 126 ;mine

landscape               byte 139, 139, 140, 141, 142, 139, 140, 142, 139, 140
                        byte 141, 141, 142, 139, 139, 139, 140, 142, 139, 139
                        byte 139, 140, 141, 141, 141, 141, 142, 139, 140, 142
                        byte 139, 139, 140, 142, 139, 139, 140, 141, 142, 139

;screen data
SCN_INTRO       = $2000
COL_INTRO       = $23E8

*=$2000
                incbin "screensPsionAttack.bin"

;character set
CHARRAM         = 12
*=$3000
                incbin "charsPsionAttack.cst", 0, 150

;sprite data
SPRITERAM       = 224
*=$3800
                incbin "spritesPsionAttack.spt", 1, 9, true
