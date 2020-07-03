; Zero Page Variable Space
zpLow                   = $02
zpHigh                  = $03


*=$3000
; Player Variables
playerX                 byte 00
playerXMSB              byte 00
playerY                 byte 00
playerLives             byte 00
playerStage             byte 00
playerDistance          byte 00
playerFrame             byte 00
playerDirection         byte 00
playerColour            byte 00

; Game Variables
gameFlag                byte 00
gameStatus              byte 00
gameCounter             byte 00
gameDifficulty          byte 00

; Sound Variables
voiceFreqHi             byte 00
voiceFreqLo             byte 00
voiceWaveform           byte 00
voiceVolume             byte 00
noteDuration            byte 00
introTuneIndex          byte 00

; Object Variables
objectIndex             byte 00
objectOffset1           byte 00
objectOffset2           byte 00

; Other Variables
inputJoy                byte 00
collision               byte 00
menuInit                byte 00

; Counters
skierAnimCounter        byte 01
titleColourIndex        byte 00
colourRate              byte 01
textFlashRate           byte 01
flashState              byte 00
inputDelayCounter       byte 01


; Text
txt_MenuDownhillR1      text 'O{119}M N{119}M {101}  {103} O{119}M{103}  {101}PO{103}   {103}   '
txt_MenuDownhillR2      text '{116} {103} {101} {103} {101}{103}{101}{103} {101} {103}{103}  {101}{103}{101}{103}   {103}   '
txt_MenuDownhillR3      text '{101} {103} {101} {103} {116}{103}{101}{103} {101} {103}{103}DD{101}{103}{116}{103}   {103}   '
txt_MenuDownhillR4      text '{101} {103} {101} {103} {116}{103}{101}{103} {101} {103}{103}  {101}{103}{101}{103}   {103}   '
txt_MenuDownhillR5      text 'L{111}N M{111}N M{122}LN {101} {103}{103}  {101}{122}L M{111}{111} M{111}{111}'
txt_SkiJump             text 'ski jump          '
txt_SkillLevel          text 'skill level: 1    '
txt_PushFireToStart     text 'push fire to start'


; Tables
tbl_TitleColours        byte WHITE, RED, BLUE, GRAY1, YELLOW, CYAN, WHITE, RED

tbl_IntroTuneFreqHi     byte 08, 08, 08, 08, 00, 00, 00, 10, 10, 10, 10, 00, 00, 00, 12, 12, 12
                        byte 10, 12, 14, 14, 14, 14, 00, 00, 00, 14, 12, 10, 12, 12, 12, 12, 00

tbl_IntroTuneDuration   byte 21, 07, 07, 07, 02, 02, 02, 21, 07, 07, 07, 02, 02, 02, 14, 14, 14
                        byte 14, 14, 21, 07, 07, 63, 02, 02, 02, 14, 14, 28, 21, 07, 07, 63, 01


; Sprites (Pointer = 120+)
*=$5E00
                        incbin "sprDownhillSkiJump.spt", 1, 3, true

; Chars
*=$6000
                        incbin "chrDownhillSkiJump.cst", 0, 255

