;-------------------------------------------------------------------------------
; ZERO PAGE
;-------------------------------------------------------------------------------
zpLow                           = $02
zpHigh                          = $03
zpNamePtrLo                     = $04
zpNamePtrHi                     = $05
zpMoneyPtrLo                    = $06
zpMoneyPtrHi                    = $07
zpBetPtrLo                      = $08
zpBetPtrHi                      = $09
zpOddsPtrLo                     = $0A
zpOddsPtrHi                     = $0B
zpHossPtrLo                     = $0C
zpHossPtrHi                     = $0D

sysTI_A2                        = $A2
sysGetKey_C5                    = $C5

;-------------------------------------------------------------------------------
; SCREEN
;-------------------------------------------------------------------------------
SCREENRAM                       = $0400
SCN_ROW0                        = $0400
SCN_ROW1                        = $0428
SCN_ROW2                        = $0450
SCN_FINISH_LINE                 = $049F
SCN_ROW22                       = $0770
SCN_ROW23                       = $0798
SCN_ROW24                       = $07C0

SPRPTR0                         = $07F8
;-------------------------------------------------------------------------------
; SPRITE
;-------------------------------------------------------------------------------
SPRITERAM                       = 33
*=$0840
                                incbin "sprDerbyDash.spt", 1, 2, true

*=$0900
;-------------------------------------------------------------------------------
; VARIABLES
;-------------------------------------------------------------------------------
gameStatus                      byte 00
currentPlayer                   byte 00
numberPlayers                   byte 00
charPosition                    byte 00
currentHorse                    byte 00
selectedHorses                  byte 00, 00, 00, 00, 00, 00
horseOdds                       byte 00, 00, 00, 00, 00, 00
playerNames                     text '{space*10}{00}'
                                text '{space*10}{00}'
                                text '{space*10}{00}'
                                text '{space*10}{00}'
playerMoney                     byte 00, 00, 00, 00
                                byte 00, 00, 00, 00
                                byte 00, 00, 00, 00
                                byte 00, 00, 00, 00
playerActive                    byte 00, 00, 00, 00
activePlayers                   byte 00
playerSelectedHorse             byte 00, 00, 00, 00
playerBet                       byte 00, 00, 00, 00
                                byte 00, 00, 00, 00
                                byte 00, 00, 00, 00
                                byte 00, 00, 00, 00
tmpBet                          byte 00, 00, 00, 00, 00, 00, 00, 00
digitFoundFlag                  byte 00

horseX                          byte 00, 00, 00, 00, 00, 00
horseSpeed                      byte 00, 00, 00, 00, 00, 00
horseFrameCounter               byte 00, 00, 00, 00, 00, 00
horseSpriteNumberMask           byte 1, 2, 4, 8, 16, 32
horseSoundFlag                  byte 00
horseSoundCounter               byte 00
horseFinished                   byte 00, 00, 00, 00, 00, 00
finishCount                     byte 00
finishOrder                     byte 00, 00, 00, 00, 00, 00
finishOrderPointer              byte 00
winnings                        byte 00, 00, 00, 00
oddsMultiplier                  byte 1, 2, 3, 5, 7, 10

;-------------------------------------------------------------------------------
; TABLES
;-------------------------------------------------------------------------------
tbl_HossColours                 byte WHITE, RED, BROWN, GRAY1, BLUE, BLACK
tbl_HossYPostion                byte 76, 102, 128, 155, 181, 205
tbl_HossNamesLo                 byte <Hoss1, <Hoss2, <Hoss3, <Hoss4, <Hoss5, <Hoss6, <Hoss7, <Hoss8
                                byte <Hoss9, <Hoss10, <Hoss11, <Hoss12, <Hoss13, <Hoss14, <Hoss15, <Hoss16
                                byte <Hoss17, <Hoss18, <Hoss19, <Hoss20, <Hoss21, <Hoss22, <Hoss23, <Hoss24
                                byte <Hoss25, <Hoss26, <Hoss27, <Hoss28, <Hoss29, <Hoss30, <Hoss31, <Hoss32

tbl_HossNamesHi                 byte >Hoss1, >Hoss2, >Hoss3, >Hoss4, >Hoss5, >Hoss6, >Hoss7, >Hoss8
                                byte >Hoss9, >Hoss10, >Hoss11, >Hoss12, >Hoss13, >Hoss14, >Hoss15, >Hoss16
                                byte >Hoss17, >Hoss18, >Hoss19, >Hoss20, >Hoss21, >Hoss22, >Hoss23, >Hoss24
                                byte >Hoss25, >Hoss26, >Hoss27, >Hoss28, >Hoss29, >Hoss30, >Hoss31, >Hoss32

tbl_OddsTextLo                  byte <txt_Odds1, <txt_Odds2, <txt_Odds3, <txt_Odds4, <txt_Odds5, <txt_Odds6
tbl_OddsTextHi                  byte >txt_Odds1, >txt_Odds2, >txt_Odds3, >txt_Odds4, >txt_Odds5, >txt_Odds6 

;-------------------------------------------------------------------------------
; TEXT
;-------------------------------------------------------------------------------
txt_DerbyDashTitle              text "{clear}{down}{space*13}{brown}{163}{164}{space*3}{165}{space*3}{166}{167}{168}{space*2}{169}{170}{return}"
                                text "{space*13}{171}{172}{173}{174}{175}{176}{177}{178} {179}{180}{181}{182}{183}{184}{return}"
                                text "{space*12}{185}{186}{187}{188}{189}{190}{191}{reverse on}@a{reverse off} {reverse on}bcdefg{return}"
                                text "{space*12}{reverse on}hijklmno{reverse off} {reverse on}pq{reverse off} {reverse on}rstu{return}"
                                text "{space*18}{reverse on}vw{reverse off}{return*2}"
                                text "{space*7}{orange}Can you beat the bookies?{return*3}"
                                text " {dark gray}You and up to three friends have £1000{return*2}{00}"
txt_DerbyDashTitle2             text " to spend on a day at the races.{return*3}"
                                text " Can you make your millions or will you{return*2}"
                                text " just be another mug punter?{return*4}"
                                text "{space*7}{white}Press any key to find out{00}"
txt_NumberPlayers               text "{clear}{white}How many players? {dark gray}[1-4]{yellow} {00}"
txt_EnterPlayerName             text "{return*2}{white}Enter name for player #{00}"
txt_TodaysOdds                  text "{clear}{blue}Today's odds:{green}{return*2}{00}"
txt_FullStopSpace               text ". {00}"
txt_YouHavePounds               text "{light gray}- you have {red}£{00}"
txt_InTheBank                   text " {light gray}in the bank.{return*2}{00}"
txt_WhichHorse                  text "Pick a horse to bet on {dark gray}[1-6]{yellow} {00}"
txt_EnterBet                    text "{return*2}{light gray}Enter your bet £{yellow}{00}"
txt_NotEnoughCash               text "{return*2}{purple}You don{39}t have enough money left!{00}"
txt_OnYourMarks                 text "{home}{space*13}{white}On your marks!{00}"
txt_GetSet                      text "{home}{space*16}Get set!   {00}"
txt_Go                          text "{home}{space*19}GO   {00}"
txt_Ascot                       text "{home}{space*14}Royal  Ascot{00}"
txt_PlayerHorses                text " p1 {97}{96}{space*6}p2 {97}{96}{space*6}p3 {97}{96}{space*6}p4 {97}{96} "
txt_FinishOrder                 text "{clear}{blue}Finish order:{green}{return*2}{00}"
txt_PlayerWon                   text "- you WON {green}£{00}"
txt_PlayerDidntWin              text "- you LOST {red}£{00}"
txt_PressAnyKey                 text "{return}{light gray}{space*6}Press any key to continue...{00}"
txt_DoubleReturn                text "{return*2}{00}"
txt_Broke                       text "{purple} You{39}re Broke!{00}"
txt_GameOver                    text "{clear}{light gray}All the money has gone, and you already remortgaged your house{return*2}"
                                text "Still, at least you learned something:{return*4}{space*9}{yellow}THE BOOKIE ALWAYS WINS{return*5}{00}"

txt_Odds1                       text " evens{00}"
txt_Odds2                       text " 2 / 1{00}"
txt_Odds3                       text " 3 / 1{00}"
txt_Odds4                       text " 5 / 1{00}"
txt_Odds5                       text " 7 / 1{00}"
txt_Odds6                       text "10 / 1{00}"

Hoss1                           text "Red Rum{00}"
Hoss2                           text "Easy Does It{00}"
Hoss3                           text "Flash Gordon{00}"
Hoss4                           text "Demon Rider{00}"
Hoss5                           text "Gary{39}s Choice{00}"
Hoss6                           text "Devil{39}s Lare{00}"
Hoss7                           text "Shooting Star{00}"
Hoss8                           text "Slow Joe{00}"
Hoss9                           text "Quick Silver{00}"
Hoss10                          text "Windy Miller{00}"
Hoss11                          text "Roland Rat{00}"
Hoss12                          text "Wise Old Owl{00}"
Hoss13                          text "Hissing Sid{00}"
Hoss14                          text "Jock the Sock{00}"
Hoss15                          text "Willy Make It{00}"
Hoss16                          text "Summer{39}s Day{00}"
Hoss17                          text "Randy Andy{00}"
Hoss18                          text "Slow Approach{00}"
Hoss19                          text "Jack the Ripper{00}"
Hoss20                          text "Swiftsure{00}"
Hoss21                          text "Robin Hood{00}"
Hoss22                          text "Friar Tuck{00}"
Hoss23                          text "Ever Ready{00}"
Hoss24                          text "Dennis the Menace{00}"
Hoss25                          text "Billy Whizz{00}"
Hoss26                          text "Nervous Rex{00}"
Hoss27                          text "Mr Bounce{00}"
Hoss28                          text "Sherlock Holmes{00}"
Hoss29                          text "Running Water{00}"
Hoss30                          text "Super Gran{00}"
Hoss31                          text "Oldskoolcoder{00}"
Hoss32                          text "CBMPRGStudio{00}"

;-------------------------------------------------------------------------------
; CHARS
;-------------------------------------------------------------------------------
CHARRAM                         = 8
*=$2000
                                incbin "chrDerbyDash.cst", 0, 255

;-------------------------------------------------------------------------------
; COLOUR
;-------------------------------------------------------------------------------
COLOURRAM                       = $D800
COL_ROW0                        = $D800
COL_ROW1                        = $D828
COL_ROW2                        = $D850
COL_ROW22                       = $DB70
COL_HORSE                       = $DBC4

