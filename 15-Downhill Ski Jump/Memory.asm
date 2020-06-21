; Zero Page Variable Space
zpLow                   = $02
zpHigh                  = $03


*=$1C00
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
gameStatus              byte 00
gameCounter             byte 00
gameDifficulty          byte 00

; Sound Variables
voiceFreqHi             byte 00
voiceFreqLo             byte 00
voiceDuration           byte 00
voiceWaveform           byte 00
voiceVolume             byte 00

; Object Variables
objectIndex             byte 00
objectOffset1           byte 00
objectOffset2           byte 00

; Other Variables
inputJoy                byte 00
collision               byte 00


*=$1E00
                        incbin "sprDownhillSkiJump.spt", 1, 3, true


*=$2000
                        incbin "chrDownhillSkiJump.cst", 0, 255

