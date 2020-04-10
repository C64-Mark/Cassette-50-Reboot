!--------------------------------------------------
!- 27 October 2019 08:04:55
!- Import of : EXCH.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\exchange.d64
!- Commodore 64
!--------------------------------------------------
1 PRINT"{clear}":GOSUB5040:PRINT"{clear}":PRINT"{down*5}{space*2}do you require the rules y/n?
6 GETA$:IFA$=""THEN6
7 IFA$="y"THENGOSUB8000
8 PRINT"{clear}":PRINT"{cyan}{space*13}exchange ":PRINT"{light gray}{space*8}{cm o*19}":PRINT:FORBO=0TO15:POKE53280,BO:FORT=1TO110:NEXTT:NEXTBO:PRINT:INPUT" how many letters do you want ";NL:PRINT" number of letters chosen "NL:POKE53280,9:CO=0
40 PRINT"{light blue} vowel or cons't v/c? ";
45 GETK$:IFK$=""THEN45
46 IFK$="c"THEN200
47 IFK$<>"v"THEN45
60 V=INT(1+5*RND(0)):IFV=1THENX$="a
70 IFV=2THENX$="e
75 IFV=3THENX$="i
80 IFV=4THENX$="o
85 IFV=5THENX$="u
90 PRINT"your letter is "" {white}"X$:CO=CO+1:IFCO=NLTHEN175
100 GOTO40
175 PRINT"{yellow}{space*7}you now have"NL"letters":PRINT" you will have 30 seconds from the tone":PRINT"{space*9}to complete a word":FORT=1TO3000:NEXTT:GOTO3000
190 STOP
200 C=INT(1+21*RND(0)):IFC=1THENY$="b
230 IFC=2THENY$="c
240 IFC=3THENY$="d
250 IFC=4THENY$="f
260 IFC=5THENY$="g
270 IFC=6THENY$="h
280 IFC=7THENY$="j
290 IFC=8THENY$="k
300 IFC=9THENY$="l
310 IFC=10THENY$="m
320 IFC=11THENY$="n
330 IFC=12THENY$="p
340 IFC=13THENY$="q
350 IFC=14THENY$="r
360 IFC=15THENY$="s
370 IFC=16THENY$="t
380 IFC=17THENY$="v
390 IFC=18THENY$="w
400 IFC=19THENY$="x
410 IFC=20THENY$="y
420 IFC=21THENY$="z
430 PRINT"your letter is "" {white}"Y$:CO=CO+1:IFCO=NLTHEN175
460 GOTO40
3000 POKE54296,15:POKE54278,240:POKE54277,0:POKE54276,17:FORN=5TO21STEP.5:POKE54273,N:FORT=1TO700:NEXTT:NEXTN:FF=16*80:POKE54273,FF/256:POKE54272,(FF-32768)AND255:POKE54275,999/8:POKE54278,240:POKE54277,16*7+0:POKE54276,65
3170 FORC=1TO2500:NEXTC:POKE54276,0:FORZ=1TO5:PRINT"{space*2}{right*13}{pink}time up":FORT=1TO500:NEXT:PRINT"{up}{space*31}":FORT=1TO500:NEXT:PRINT"{up*2}":NEXTZ:PRINT:FORT=1TO2000:NEXTT:PRINT"{cyan}{space*7}do you want to play the 
3265 PRINT"{space*10}numbers game?.y/n":PRINT:PRINT"{black}{right*4}touch 't' to view title page
3270 GETK$:IFK$=""THEN3270
3280 IFK$="n"THEN8
3282 IFK$="t"THEN1
3283 IFK$<>"y"THEN3270
3285 PRINT"{clear}":POKE53280,14:PRINT:PRINT"{space*8}{yellow}***{orange}the numbers game{yellow}***{orange}":PRINT:PRINT"{space*6}WWWWWWWWWWWWWWWWWWWWWWWW":PRINT:PRINT"{yellow}{space*2}you must use the numbers available":PRINT"{space*3}to calculate a figure as close to":PRINT"{space*4}to the target number as possible
3310 PRINT:PRINT"{space*5}touch a key for your numbers":RESTORE:POKE54296,15:POKE54278,240:POKE54277,0:POKE54276,17
3320 READY:IFY=0THEN3327
3321 POKE54273,Y:FORT=1TO80:NEXTT:GOTO3320
3323 DATA20,15,20,25,25,30,30,30,35,30,30,25,20,20,25,25,30,30,30,30,28,28,20,20,23,23,10,15,15,15,20,15,15,20,20,35,20,35,45,20,20,10,10,10,10,0,0
3327 POKE54296,0:RESTORE
3328 GETK$:IFK$=""THEN3328
3330 PRINT"{cyan}":FORX=1TO3:LN=INT(1+8*RND(0)):PRINT"{space*3}"LN,:NEXTX:FORX=1TO3:MN=INT(9+20*RND(0)):PRINT"{space*3}"MN,:NEXTX:FORX=1TO2:HN=INT(29+200*RND(0)):PRINT"{space*3}"HN,:NEXTX:PRINT:PRINT"{space*6}touch any key to get your ":PRINT"{space*8}random target number
3540 GETK$:IFK$=""THEN3540
3550 RN=INT(100+850*RND(0)):PRINT:PRINT"{space*6}your target number is"RN:PRINT:PRINT" you will have 30 seconds to calculate":PRINT"{space*2}a number as close to"RN"as you can":FORT=1TO2500:NEXTT:GOTO3000
5040 PRINT"{space*9}{down*5}{pink}welcome to exchange ":PRINT:PRINT"{pink}{reverse on}{space*39}{reverse off}":PRINT:PRINT"{cyan} based on the popular tv game countdown":PRINT:PRINT:PRINT"{space*11}{light gray}c cascade{space*2}1984.":PRINT:PRINT"{space*9}{cm y*22}
5145 PRINT:PRINT"{space*4}touch 'q' key to start the game":FORJ=0TO39:POKE1024+J,102:POKE55296+J,0:NEXT:FORJ=0TO920STEP40:POKE1103+J,102:POKE55375+J,0:NEXT:FORJ=39TO0STEP-1:POKE1984+J,102:POKE56256+J,0:NEXT:FORJ=920TO0STEP-40:POKE1064+J,102:POKE55336+J,0:NEXT:FORX=1TO3:POKE54296,15:POKE54278,240
5230 POKE54277,0:POKE54276,17:FORC=1TO20:FORN=30-CTO25-CSTEP-2:POKE54273,N:FORT=1TO80:NEXTT:NEXTN:NEXTC:FORT=1TO1000:NEXTT:POKE54278,240:POKE54277,0:POKE54276,17
5305 LOC=INT((2023-1024)*RND(1))+1024:RX=INT(1+20*RND(0)):POKE54273,RX:IFLOC>1746ANDLOC<1779THEN5305
5320 COL=INT(0+15*RND(0)):CH=INT(0+57*RND(0)):POKELOC,CH:POKELOC+54272,COL:FORT=1TO40:NEXTT:GETK$:IFK$=""THEN5305
5405 IFK$<>"q"THEN5305
5410 POKE54296,0:RETURN
8000 PRINT"{clear}":PRINT"{white}{space*8}the rules of the game":PRINT:PRINT"{space*4}you first may choose the number ":PRINT"{space*4}of letters you wish to play with":PRINT"{space*4}after typing in the number touch":PRINT"{space*13}the return key":PRINT
8080 PRINT" a maximum of 14 letters is recommended":PRINT"{space*6}but 8 is the usual number":PRINT:PRINT"then you may choose vowels or consonants":PRINT"one at a time by pressing the v or c key":PRINT"{space*2}then you must make a word from the
8140 PRINT"{space*11}available letters":PRINT:PRINT"{space*5}now touch any key to start
8170 GETK$:IFK$=""THEN8170
8180 RETURN
