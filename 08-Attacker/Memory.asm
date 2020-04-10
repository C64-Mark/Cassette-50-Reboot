
floodZoneLow            = $02
floodZoneHigh           = $03
floodZoneColourL        = $04
floodZoneColourH        = $05
              
sysTI_A2                = $A2

zpLow                   = $FB
zpHigh                  = $FC
zpLow2                  = $FD
zpHigh2                 = $FE

SCREENRAM               = $0400 ;Default screen ram
SCNROW9                 = $0568
SPRPTR0                 = $07F8 ;Sprite pointers

COLROW9                 = $D968


;Variable
*=$2000
gameStatus              byte 00

txt_Title               text "{clear}{light blue}{down*9}{space*9}a t t a c k e r"
                        byte 00
txt_InstructYN          text "{purple}{down*3}{left*16}press fire to start"
                        text "{down*2}{left*19}or push up for instructions"
                        byte 00
txt_Inst1               text "{clear}{blue}your mission:-{return}"
                        text "{red}destroy gestapo headquarters.{return}"
                        text "{blue}suggested method:-{return}"
                        text "{red}blow dam and flood building.{return}"
                        text "{blue}your armoury:-{return}"
                        text "{red}unlimited supply of 500kg bombs.{return}"
                        text "{blue}intelligence report:-{return}"
                        byte 00
txt_Inst2               text "{red}dam guarded by a bunker containing a    machine gun. also a tank patrols nearby.{return*2}"
                        text "good luck...you will need it!{return*3}"
                        text "{blue}controls:-{return*2}"
                        text "joystick up/down - {red}change altitude{return}"
                        text "{blue}joystick left/right - {red}change velocity{return}"
                        text "{blue}fire - {red}drop a bomb{return*2}"
                        text "{purple}press fire to start"
                        byte 00

scn_LevelOnea           text "{home}{down*9}{light gray}{space*3}{sh asterisk*2}{return}"
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
scn_LevelOneb           text "{home}{down*17}{right*28}MGGGGGGGH{return}"
                        text "{right*28}{brown}JKKKKKKKJ{return}"
                        text "{right*28}JJJJJJJJJ{return}"
                        text "{right*28}JIJIJIJIJ{return}"
                        text "{right*28}JLJJJJJJJ{return}"
                        text "{green}PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP"
                        byte 00


;rank                    byte 00
;rankTxtOffset           byte 00, 08, 14, 22, 29, 38, 54, 68
;rankTxt                 text "no hoper"
;                        text "novice"
;                        text "co-pilot"
;                        text "captain"
;                        text "ace flyer"
;                        text "flight commander"
;                        text "wing commander"
;                        text "squadron leader" 


planeXHi                byte 00
planeXLo                byte 00, 00 ; fraction, integer
planeY                  byte 00
planeVelocity           byte 00, 00 ; fraction, integer
planeDestroyed          byte 00
planeExplosionFrame     byte 00
planeExplosionCounter   byte 00
planeExplosionActive    byte 00

bombXHi                 byte 00
bombXLo                 byte 00, 00 ; fraction, integer
bombY                   byte 00
bombFired               byte 00
bombHit                 byte 00
bombExplosionFrame      byte 00, 00
bombExplosionLoop       byte 00, 00
bombExplosionActive     byte 00
bombStatus              byte 00
bombWallY               byte 00

wallBreached            byte 00
wallBreachedX           byte 00

tankXHi                 byte 00
tankXLo                 byte 00, 00 ; fraction, integer
tankY                   byte 00
tankDx                  byte 00
tankSpeed               byte 00, 00

missileXHi              byte 00
missileXLo              byte 00, 00 ; fraction, integer
missileY                byte 00
missileFired            byte 00

turretXHi               byte 00
turretXLo               byte 00
turretY                 byte 00

bulletXHi               byte 00
bulletXLo               byte 00
bulletY                 byte 00
bulletFired             byte 00

spriteNumberMask        byte %00000001, %00000010, %00000100, %00001000
                        byte %00010000, %00100000, %01000000, %10000000


;sprite data
SPRITERAM               = 170
*=$2A80
                        incbin "spritesAttacker.spt", 1, 18, true

;character set
*=$3000
                        incbin "charsAttacker.cst", 0, 127
