;game variables

txtTitle                text "{home}{down*9}{right*9}a t t a c k e r "
                        byte 00
txtInstructYN           text "{purple}{down*3}{left*16}press fire to start"
                        text "{down*2}{left*19}or push up for instructions"
                        byte 00
txtInst1                text "{clear}{blue}your mission:-{return}"
                        text "{red}destroy gestapo headquarters.{return}"
                        text "{blue}suggested method:-{return}"
                        text "{red}blow dam and flood building.{return}"
                        text "{blue}your armoury:-{return}"
                        text "{red}unlimited supply of 500kg bombs.{return}"
                        text "{blue}intelligence report:-{return}"
                        byte 00
txtInst2                text "{red}dam guarded by a bunker containing a    machine gun. also a tank patrols nearby.{return*2}"
                        text "good luck...you will need it!{return*3}"
                        text "{blue}controls:-{return*2}"
                        text "joystick up/down - {red}change altitude{return}"
                        text "{blue}joystick left/right - {red}change velocity{return}"
                        text "{blue}fire - {red}drop a bomb{return*2}"
                        text "{purple}press fire to start"
                        byte 00
rank                    byte 00
rankTxtOffset           byte 00, 08, 14, 22, 29, 38, 54, 68
rankTxt                 text "no hoper"
                        text "novice"
                        text "co-pilot"
                        text "captain"
                        text "ace flyer"
                        text "flight commander"
                        text "wing commander"
                        text "squadron leader" 

scnLevelOnea            text "{home}{down*9}{light gray}{space*3}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        text "{blue}FFF{light gray}{sh asterisk*2}{return}"
                        byte 00
scnLevelOneb            text "{home}{down*17}{right*28}MGGGGGGGH{return}"
                        text "{right*28}{brown}JKKKKKKKJ{return}"
                        text "{right*28}JJJJJJJJJ{return}"
                        text "{right*28}JIJIJIJIJ{return}"
                        text "{right*28}JLJJJJJJJ{return}"
                        text "{green}PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP"
                        byte 00

gameStatus              byte 00

planeXHi                byte 00
planeXLo                byte 00, 00 ; fraction, integer
planeY                  byte 00
planeSprite             byte 00
planeVelocity           byte 00, 00 ; fraction, integer
planeDestroyed          byte 00
planeExplosionFrame     byte 00
planeExplosionLoop      byte 00, 00
planeExplosionActive    byte 00

bombXHi                 byte 00
bombXLo                 byte 00, 00 ; fraction, integer
bombY                   byte 00
bombSprite              byte 00
bombFired               byte 00
bombHit                 byte 00
bombExplosionFrame      byte 00, 00
bombExplosionLoop       byte 00, 00
bombExplosionActive     byte 00
bombStatus              byte 00
bombWallY               byte 00

tankXHi                 byte 00
tankXLo                 byte 00, 00 ; fraction, integer
tankY                   byte 00
tankSprite              byte 00
tankDx                  byte 00
tankSpeed               byte 00, 00

missileXHi              byte 00
missileXLo              byte 00, 00 ; fraction, integer
missileY                byte 00
missileSprite           byte 00
missileFired            byte 00

turretXHi               byte 00
turretXLo               byte 00
turretY                 byte 00
turretSprite            byte 00

bulletXHi               byte 00
bulletXLo               byte 00
bulletY                 byte 00
bulletSprite            byte 00
bulletFired             byte 00

spriteNumberMask        byte %00000001, %00000010, %00000100, %00001000
                        byte %00010000, %00100000, %01000000, %10000000

gfMenu                  = 0
gfAlive                 = 1
gfFlood                 = 2
gfDying                 = 3
gfDead                  = 4

; bomb statuses
bDormant                = 0
bReleased               = 1
bHit                    = 2
bExploding              = 3
