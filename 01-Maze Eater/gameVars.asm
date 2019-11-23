;game variables

gameStatus              byte 00

pacmanSprite            byte 00
pacmanX                 byte 00, 00
pacmanY                 byte 00
pacmanLives             byte 00
pacmanAnimFrame         byte 00
pacmanLastFrame         byte 00
pacmanScreenAddress     byte 00, 00
pacmanXOffset           byte 00
pacmanYOffset           byte 00

ghostSprite             byte 00
ghostX                  byte 00, 00
ghostY                  byte 00, 00
ghostAnimFrame          byte 00
ghostColour             byte 00
ghostScreenLocation     byte 00, 00

fruitSprite             byte 00
fruitX                  byte 00, 00
fruitY                  byte 00
fruitActive             byte 00
fruitNumber             byte 00
fruitActiveColour       byte 00
fruitColours            byte lightred, red, orange, yellow, green
fruitFrame              byte 00

dotsEaten               byte 00, 00
pillActive              byte 00
pillTimer               byte 00
pacmanGhostCollision    byte 00

difficultyLevel         byte 00, 00
levelNumber             byte 00
score                   byte 00, 00, 00
lastJoy                 byte 00

scnGameOver             text "{home}game over{down*2}{left*9}press fire to restart"
                        byte 00

;constants
spriteNumberMask        byte %00000001, %00000010, %00000100, %00001000
                        byte %00010000, %00100000, %01000000, %10000000

throttleSpeed           = 60

gfMenu                  = 0
gfAlive                 = 1
gfPillEaten             = 2
gfLevelComplete         = 3
gfDying                 = 4
gfDead                  = 5
gfHiScore               = 6

black                   = #$00
white                   = #$01
red                     = #$02
cyan                    = #$03
purple                  = #$04
green                   = #$05
blue                    = #$06
yellow                  = #$07
orange                  = #$08
brown                   = #$09
lightred                = #$0A
gray1                   = #$0B
gray2                   = #$0C
lightgreen              = #$0D
lightblue               = #$0E
gray3                   = #$0F

space                   = #$20
true                    = #$01
false                   = #$00

JoyUp                   = %00000001
JoyDown                 = %00000010
JoyLeft                 = %00000100
JoyRight                = %00001000
JoyFire                 = %00010000
JoyNone                 = %00000000
