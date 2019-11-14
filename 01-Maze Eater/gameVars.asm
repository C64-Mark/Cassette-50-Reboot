;game variables
; dot/pill = 10pts, fruit=500, ghost=100


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


txtTitle                text "{clear}{down*8}{yellow}wwwww wwww wwww wwww{return}"
                        text "{red}w w w w  w    w w{return}"
                        text "{purple}w w w w  w   w  w{return}"
                        text "{blue}w w w wwww  w   www  {yellow}e a t e r{return}"
                        text "{green}w w w w  w w    w{return}"
                        text "{dark gray}w w w w  w wwww wwww{return}"
                        text "{cm y*21}{return*2}"
                        text "{yellow}press joy up/down to change level{return}"
                        text "press fire to start"
                        byte 00

scnMazeA                text "{home}{gray}{G*29}{return}"
                        text "{gray}G{red}F{light gray}{E*25}{red}F{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}EEEEEEEEEEEEEEEEEEE{gray}GGG{light gray}E{gray}G{return}"
                        byte 00
scnMazeB                text "{gray}G{light gray}E{gray}GGGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}EEEE{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}EEEE{gray}GGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}EEEEE{gray}GG{light gray}EEEEEEEEEEEEE{gray}GG{light gray}EEEEE{gray}G{return}"
                        text "{gray}G{light gray}EEEEE{gray}GGGGGGG{light gray}EEE{gray}GGGGGGG{light gray}EEEEE{gray}G{return}"
                        byte 00
scnMazeC                text "{gray}G{light gray}EEEEE{gray}GGGGGGG{light gray}E E{gray}GGGGGGG{light gray}EEEEE{gray}G{return}"
                        text "{gray}G{light gray}EEEEE{gray}GGGGGGG{light gray}EEE{gray}GGGGGGG{light gray}EEEEE{gray}G{return}"
                        text "{gray}G{light gray}EEEEE{gray}GG{light gray}EEEEEEEEEEEEE{gray}GG{light gray}EEEEE{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}EEEE{gray}GGGGGGGGGGG{light gray}EEEE{gray}GGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGGGGG{light gray}E{gray}GGGGGGGGGGG{light gray}E{gray}GGGGGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGGG{light gray}E{gray}G{return}"                        
                        byte 00
scnMazeD                text "{gray}G{light gray}E{gray}GGGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GGGGGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}EEEEEEEEEEEEEEEEEEE{gray}GGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}E{gray}GGGGGGGG{light gray}E{gray}GGGGGGGG{light gray}E{gray}GGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GGG{light gray}E{gray}G{return}"
                        text "{gray}G{light gray}E{gray}GGG{light gray}E{gray}GGGGG{light gray}E{gray}GG{light gray}E{gray}GG{light gray}E{gray}GGGGG{light gray}E{gray}GGG{light gray}E{gray}G{return}"
                        text "{gray}G{red}F{light gray}EEEEEEEEEEEEEEEEEEEEEEEEE{red}F{gray}G{return}"
                        byte 00
scnMazeE                text "{gray}GGGGGGGGGGGGGGGGGGGGGGGGGGGGG"
                        byte 00

scnStats                text "{home}{down}{right*32}{yellow}Emaze{down}{left*5}eater"
                        text "{down*3}{left*5}{blue}score{down*2}{left*6}{white}0000000"
                        text "{down*3}{left*7}{blue}hiscore{down*2}{left*7}{white}0000000"
                        text "{down*3}{left*7}{blue}liv lev{down*2}{left*6}{white}3   1"
                        text "{down*3}{left*5}{blue}fruit{down*2}{left*5}{black}{sh asterisk}ABCD{white}"
                        byte 00

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

;debug
