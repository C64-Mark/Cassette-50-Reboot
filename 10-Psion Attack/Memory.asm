;-------------------------------------------------------------------------------
; Zero Page
;-------------------------------------------------------------------------------
zpLow           = $02
zpHigh          = $03
KEY_PRESSED     = $CB
scnPtrLo        = $FB
scnPtrHi        = $FC
scnMapLo        = $FD
scnMapHi        = $FE

;-------------------------------------------------------------------------------
; Screen
;-------------------------------------------------------------------------------
SCREENRAM       = $0400 ;Default screen ram
SCN_ROW10       = $0590
SCN_ROW12       = $05E0
SCN_ROW24       = $07C0
SPRPTR0         = $07F8 ;Sprite pointers

;-------------------------------------------------------------------------------
; Game Variables
;-------------------------------------------------------------------------------
*=$0815
gameStatus              byte 00
gameTimer               byte 03, $FF
currentLevel            byte 00

levelTime               byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
levelNumberObjects      byte $1E, $1E, $23, $23, $28, $28, $2D, $2D, $32, $32
levelObjectFrameRate    byte $01, $01, $02, $02, $03, $03, $04, $04, $05, $05
levelObjectLowestSpeed  byte $03, $03, $03, $02, $02, $02, $01, $01, $01, $00
levelObjectEntryDelay   byte $02, $02, $02, $02, $02, $01, $01, $01, $01, $01
levelObjectSelectRate   byte $20, $30, $40, $50, $60, $70, $80, $90, $A0, $B0
levelCompletionBonus    byte $00, $10, $20, $20, $30, $30, $40, $40, $50, $50
levelGroundRate         byte $04, $04, $03, $03, $02, $02, $01, $01, $01, $01

groundCounter           byte 00
groundRate              byte 04

hyperjumpCounter        byte 01
hyperjumpStage          byte 00
hyperjumpLeft           byte 01
hyperjumpStageColour    byte yellow, orange, brown, lightred

playerX                 byte 00, 00
playerY                 byte 00, 00
playerScreenHi          byte 00
playerScreenLo          byte 00
playerHit               byte 00
playerLives             byte 00
playerScore             byte 00
playerTotalScore        byte 00, 00
hiScore                 byte 01, 00
playerWave              byte 00, 00

inputKeySpace           byte 00
inputJoyUp              byte 00
inputJoyDown            byte 00
inputJoyLeft            byte 00
inputJoyRight           byte 00
inputJoyFire            byte 00
inputPreviousKey        byte 00
inputKeyDelay           byte 00

playerExploding         byte 00
playerExplosionFrame    byte 02
playerExplosionCounter  byte 03
playerInvincible        byte 00

bulletSprite            byte 02, 03, 04
bulletSpriteMask        byte 04, 08, 16
bulletFrame             byte 08
bulletFired             byte 00
bulletActive            byte 00, 00, 00
bulletX                 byte 00, 00, 00
bulletXMSB              byte 00, 00, 00
bulletY                 byte 00, 00, 00
bulletHit               byte 00, 00, 00
bulletDelay             byte 40
bulletScreenLo          byte 00
bulletScreenHi          byte 00
bulletScreenLoOffset    byte 00
bulletScreenHiOffset    byte 00

starFrame               byte 09, 09, 09
starColour              byte 00, 00, 00
starX                   byte 00, 00, 00
starY                   byte 00, 00, 00
starSpriteMask          byte 32, 64, 128
starDelayCounter        byte 7, 5, 2
starColours             byte white, white, gray3, gray3, gray2, gray2, gray1, gray1

currentObject           byte 00
currentObjectColour     byte 00
currentObjectID         byte 00

objectEntryRow          byte 00
objectEntryDelay        byte 02
objectFrameRate         byte 01
objectLowestSpeed       byte 03
objectSelectionRate     byte 64

objectPreviousRow       byte 00, 00, 00, 00, 00

numberObjects           byte 00
objectType              byte 00

overlayFrame            byte 00
shipFrame               byte 01

spriteNumberMask        byte %00000001, %00000010, %00000100, %00001000
                        byte %00010000, %00100000, %01000000, %10000000

txtStatInit             text 'score 00000  hi-score 00000   '
                        byte 30, 32, 49, 32, 32, 64, 32, 51, 32

txtWaveNumber           text ' wave 00  '
txtGetReady             text 'get ready!'
txtGameOver             text 'game over!'
txtPressFire            text 'press fire'
txtHyperjump            text 'hyperspace engaging'

;-------------------------------------------------------------------------------
; Game Tables
;-------------------------------------------------------------------------------
*=$0950
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
                        byte 143, 144, 145, 146, 147, 148, 149, 32 ; explosion

objectLeftFrame         byte 80, 81, 82, 83, 84, 85, 86, 72 ;cruiser
                        byte 32, 32, 32, 95, 96, 97, 98, 87 ;fuel pod
                        byte 32, 107, 108, 109, 110, 111, 112, 99 ;fighter
                        byte 32, 32, 121, 122, 123, 124, 125, 113 ;battlestar
                        byte 32, 32, 134, 135, 136, 137, 138, 126 ;mine
                        byte 32, 32, 32, 32, 32, 32, 32, 32 ; explosion

objectScore             byte $05, $10, $25, $20, $00, $00

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
                incbin "spritesPsionAttack.spt", 1, 10, true

;screen map
;holds id for object at each screen location
SCREENMAP       = $C400

;colour ram
COLOURRAM       = $D800
COL_ROW10       = $D990
COL_ROW12       = $D9E0
COL_ROW24       = $DBC0
