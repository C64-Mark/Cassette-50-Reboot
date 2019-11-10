;game variables

gameStatus              byte 00
lunarXLo                byte 00, 00
lunarXHi                byte 00
lunarY                  byte 00, 00
velocityX               byte 00
velocityY               byte 00
gravity                 byte 00
baseX                   byte 00, 00
baseY                   byte 00
baseHeight              byte 00
lunarCollision          byte 00
fuel                    byte 00
lunarSpeed              byte 00
lunarSprite             byte 00
rangeHeight             byte 00
offsetHeight            byte 00
currentColumn           byte 00

txtTitle                text "{clear}{yellow}{down*2} lunar lander{return*3}"
                        text "{white}{cm +}{space*3}{cm +}{sh space*2}{cm +}{sh space}{cm +}{sh space*2}{cm +}{sh space}"
                        text "{cm +*3}{sh space}{cm +*3}{return}{green}{cm +}{space*3}{cm +}{sh space*2}{cm +}{sh space}"
                        text "{cm +*2}{sh space}{cm +}{sh space}{cm +}{sh space}{cm +}{sh space}{cm +}{sh space}{cm +}{return}"
                        text "{yellow}{cm +}{sh space*3}{cm +}{sh space*2}{cm +}{sh space}{cm +*4} {cm +*3} {cm +*3}{return}"
                        text "{blue}{cm +}{sh space*3}{cm +}{sh space*2}{cm +}{sh space}{cm +}{sh space}{cm +*2}"
                        text "{sh space}{cm +}{sh space}{cm +}{sh space}{cm +}{sh space*2}{cm +}{return}"
                        text "{orange}{cm +*3}{sh space}{cm +*4}{sh space}{cm +}{sh space*2}{cm +}{sh space}"
                        text "{cm +} {cm +}{sh space}{cm +}{sh space*3}{cm +}{return*3}"
                        text "{gray} w{space*3}wwww{sh space}w{space*2}w www{sh space*2}www{sh space}www{return}"
                        text "{blue} w {sh space*2}w{sh space*2}w{sh space}ww{sh space}w{sh space}w"
                        text "{sh space*2}w{sh space}w{sh space*3}w{sh space}w{return}"
                        text "{light green} w {sh space*2}wwww{sh space}wwww{sh space}w{sh space*2}w"
                        text "{sh space}ww{sh space*2}www{return}"
                        text "{pink} w{sh space} {sh space}w{sh space*2}w{sh space}w{sh space}ww{sh space}"
                        text "w{sh space*2}w{sh space}w{sh space*3}w{sh space*2}w{return}"
                        text "{light gray} www w{sh space*2}w{sh space}w{sh space*2}w{sh space}"
                        text "www{sh space*2}www{sh space}w{sh space*3}w{return}"
                        text "{down}      use joystick in port 2      {return}"
                        text "{down}{space*3}press fire to start."
                        byte 00
;constants
spriteNumberMask        byte %00000001, %00000010, %00000100, %00001000
                        byte %00010000, %00100000, %01000000, %10000000

gfMenu                  = 0
gfAlive                 = 1
gfDying                 = 2
gfDead                  = 3

;debug
