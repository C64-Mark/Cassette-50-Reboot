;game variables

gameStatus              byte 00

pacmanSprite            byte 00
pacmanX                 byte 00
pacmanY                 byte 00
pacmanLives             byte 00
pacmanAnimFrame         byte 00
pacmanScreenLocation    byte 00, 00

ghostSprite             byte 00
ghostX                  byte 00
ghostY                  byte 00
ghostAnimFrame          byte 00
ghostColour             byte 00
ghostScreenLocation     byte 00, 00

fruitSprite             byte 00
fruitX                  byte 00
fruitY                  byte 00
fruitActive             byte 00
fruitColour             byte 00
fruitFrame              byte 00

dotsEaten               byte 00
pillActive              byte 00
pillTimer               byte 00, 00

difficultyLevel         byte 00
levelNumber             byte 00
score                   byte 00, 00, 00, 00, 00, 00, 00


;constants
spriteNumberMask        byte %00000001, %00000010, %00000100, %00001000
                        byte %00010000, %00100000, %01000000, %10000000

gfMenu                  = 0
gfAlive                 = 1
gfPillEaten             = 2
gfLevelComplete         = 3
gfDying                 = 4
gfDead                  = 5
gfHiScore               = 6

;debug
