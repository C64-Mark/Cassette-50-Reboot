!--------------------------------------------------
!- 28 October 2019 21:23:52
!- Import of : FORCE.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\theforce.d64
!- Commodore 64
!--------------------------------------------------
0 HI=0
1 SP=1000:G=0:S=0:MO=0:SC=0:PRINTCHR$(14):POKE53280,1:POKE53281,0:PRINT"{clear}{home}{white}":PRINT"{down*2}{space*5}{reverse on}{space*13}{reverse off}":PRINT"{space*5}{reverse on}{space*2}the force{space*2}{reverse off}":PRINT"{space*5}{reverse on}{space*13}{reverse off}":PRINT"{down*2}{cyan}{space*9}By":PRINT"{white}{down}{space*3}cascade (c) 1984":PRINT"{cyan}{down} Instructions (y/n) ?
18 GETA$:IFA$=""THEN19
19 IFA$="y"THENGOSUB1000
20 IFA$="n"THEN30
21 GOTO18
30 PRINT"{clear}{home}{white}":IFSP<=0THEN3000
31 M=INT(RND(1)*9):IFSC>=1000THENGOTO4000
32 IFM=0THENM$="{white}a invisible creature.
33 IFM=1THENM$="{yellow}a wolf!{white}
34 IFM=2THENM$="{cyan}a Vampire.{white}
35 IFM=3THENM$="{purple}a Werewolf.{white}
36 IFM=4THENM$="{green}a corpse.{white}
37 IFM=5THENM$="{white}a Mutant.
38 IFM=6THENM$="{purple}a Mad Wizard{white}
39 IFM=7THENM$="{green}a Ghost.{white}
40 IFM=8THENM$="{yellow}the Skull Master.{white}
41 IFM=9THENM$="{cyan}a Troll.{white}
50 O=INT(RND(1)*9):IFO=0THENO$="{cyan}a chair.{white}
52 IFO=1THENO$="{yellow}a table.{white}
53 IFO=2THENO$="{cyan}a dead man!{white}
54 IFO=3THENO$="{green}a dead women!{white}
55 IFO=4THENO$="{yellow}an operating table{white}!
56 IFO=5THENO$="{purple}a cage{white}.
57 IFO=6THENO$="{yellow}a bag of gold.{white}
58 IFO=7THENO$="{yellow}a cage with a dead man{space*2}in it!{white}
59 IFO=8THENO$="{yellow}a bag of silver.{white}
60 IFO=9THENO$="{cyan}a strange plant.{white}
70 L=INT(RND(1)*9):IFL=0THENL$=" long dark passage!
72 IFL=1THENL$=" prison.
73 IFL=2THENL$=" dark,dank room.
74 IFL=3THENL$=" giant hall.
75 IFL=4THENL$=" room with a locked{space*3}door.
76 IFL=5THENL$=" room with a unlocked door.
77 IFL=6THENL$=" candle lit room with a well in it.
78 IFL=7THENL$=" dark,smelly room{space*2}with a wolf eating in the corner.
79 IFL=8THENL$=" dark room.
80 IFL=9THENL$=" well lit room.
100 PRINT"You are standing in a":PRINTL$:PRINT"In the ":PRINTL$:PRINT"is ":PRINTM$:PRINT"Also there is ":PRINTO$:PRINT"{down}{white}{reverse on}WHAT DO I DO NOW ?{reverse off}{white}
120 INPUTA$:IFA$="north"THEN150
126 IFA$="south"THEN150
127 IFA$="east"THEN150
128 IFA$="west"THEN150
129 IFA$="open"THEN200
130 IFA$="close"THEN250
131 IFA$="push"THEN300
132 IFA$="pull"THEN350
133 IFA$="unlock"THEN400
134 IFA$="lock"THEN450
135 IFA$="hide"THEN500
136 IFA$="help"THEN550
137 IFA$="look"THEN600
138 IFA$="status"THEN650
139 IFA$="attack"THEN700
140 IFA$="pick up"THEN750
141 PRINT"{clear}{home}I don't understand":FORX=1TO500:NEXTX:GOTO120
150 PRINT"{clear}{home}":DI=INT(RND(1)*4)+1:IFDI=1THENPRINT"{clear}Agg! You fell into a{space*2}pit.":SP=SP-1
153 IFDI=2THENGOSUB170
154 IFDI=3THENPRINT"{clear}Nothing in your path.":SP=SP-1
155 IFDI=4THENPRINT"{clear}You see a monster.":SP=SP-1
156 IFDI=5THENPRINT"{clear}Nothing in your path.":SP=SP-1
157 PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
158 GETA$:IFA$=""THEN159
159 IFA$=" "THEN30
160 IFA$<>" "THEN158
161 GOTO158
170 POKE54296,15:POKE54276,33:POKE54277,16:POKE54278,56:FORL=70TO1STEP-1:POKE54273,L:POKE54272,2:FORM=1TO10:NEXTM:NEXTL:POKE54273,0:POKE54272,0:PRINT"{clear}{down}You fell into a Time{space*2}Trap.":GOSUB800:PRINT"{cyan}{reverse on}PRESS{sh space}SPACE TO{sh space}CONT{reverse off}{white}
180 GETA$:IFA$=""THEN181
181 IFA$=" "THEN30
182 IFA$<>" "THEN180
183 GOTO180
200 PRINT"{clear}What do you want to open ?
201 INPUTO$:IFO$<>"door"THEN204
203 IFO$="door"THEN210
204 PRINT"{clear}You cannot open that!":GOTO201
210 PRINT"The door opens.":POKE54296,15:B=0:FORL=128TO255STEP11:POKE54273,L:POKE54272,37:POKE54276,33:FORM=1TO10:NEXTM:B=B+1:IFB=3THENB=0:POKE54296,0
219 NEXTL:POKE54273,0:POKE54272,0:PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse on}{white}
223 GETA$:IFA$=""THEN224
224 IFA$=" "THEN30
225 IFA$<>" "THEN223
226 GOTO223
250 PRINT"{clear}{home}What do you want to{space*3}close ?
251 INPUTC$:IFC$<>"door"THEN254
253 IFC$="door"THEN260
254 PRINT"{clear}You cannot close that!":GOTO251
260 PRINT"{clear}The door closes.":POKE54296,15:B=0:FORL=255TO128STEP-11:POKE54273,L:POKE54272,L:FORM=1TO10:NEXTM:B=B+1:IFB=3THENB=0
269 NEXTL:POKE54273,0:POKE54272,0:PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
273 GETA$:IFA$=""THEN274
274 IFA$=" "THEN30
275 IFA$<>" "THEN273
276 GOTO273
300 PRINT"{clear}What do you want to push!
301 INPUTP$:IFP$="table"ORP$="chair"ORP$="corpse"THEN310
303 PRINT"{clear}You cannot push that.":GOTO301
310 P=INT(RND(1)*5):IFP=0THENPRINTM$" attacks you.":GOSUB5000
312 IFP=1THENPRINT"The ":PRINTP$" is very light.":SP=SP-5
313 IFP=2THENPRINT"You trip over a mat{space*3}and break the ":PRINTP$:SP=SP-2
314 IFP=3THENPRINT"You push the ":PRINTP$" into the fire.":SP=SP-2
315 IFP=4THENPRINT"You touch the ":PRINTP$" and it moves{space*4}away on its own.":SP=SP-2
316 PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
317 GETA$:IFA$=""THEN318
318 IFA$=" "THEN30
319 IFA$<>" "THEN317
320 GOTO317
350 PRINT"{clear}{home}{white}":PRINT"What do you want to{space*3}pull ?
352 INPUTP$:IFP$="table"ORP$="chair"ORP$="corpse"THEN360
354 PRINT"{clear}You cannot pull that!":GOTO352
360 P=INT(RND(1)*3):IFP=0THENPRINT"You pull the ":PRINTP$" towards you.":SP=SP-5
362 IFP=1THENPRINT"You pull the ":PRINTP$" and it falls{space*4}apart.":SP=SP-5
363 IFP=2THENPRINTM$:PRINT" advances.
364 PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
365 GETA$:IFA$=""THEN366
366 IFA$=" "THEN30
367 IFA$<>" "THEN365
368 GOTO365
400 PRINT"{clear}{down}The door opens and a":PRINTM$:PRINT"appears.":U=INT(RND(1)*3):IFU=0THENPRINTM$:PRINT" rips you into little pieces.":FORX=1TO4000:NEXTX:GOSUB2000
404 IFU=1THENPRINTM$:PRINT" is blind and does not notice you.
405 IFU=2THENPRINTM$:PRINT" vanishes into thin{space*4}air.
406 PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
407 GETA$:IFA$=""THEN408
408 IFA$=" "THEN30
409 IFA$<>" "THEN407
410 GOTO407
450 PRINT"{clear}{down}The door is now locked!":L=INT(RND(1)*2):IFL=0THENPRINTM$:PRINT" breaks the door down.{white}":FORX=1TO4000:NEXTX:GOTO2000
453 IFL=1THENPRINT"{cyan}Your safe,(For the{space*7}moment).{white}
454 PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
455 GETA$:IFA$=""THEN456
456 IFA$=" "THEN30
457 IFA$<>" "THEN455
458 GOTO455
500 PRINT"{clear}{home}{purple}Where do you want to{space*4}hide ?{white}":PRINT"{white}Behind a":PRINT" A= plant":PRINT" B= knight in armour":PRINT" C= spiders web":PRINT" Which one (A to C) ?":INPUTHI$:IFHI$="a"THENPRINT"{clear}You're hiding behind a ":PRINT"plant
511 IFHI$="b"THENPRINT"{clear}You're hiding behind a ":PRINT"knight in armour.
512 IFHI$="c"THENPRINT"{clear}You're hiding behind a ":PRINT"spiders web
513 PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
514 GETA$:IFA$=""THEN515
515 IFA$=" "THEN30
516 IFA$<>" "THEN514
517 GOTO514
550 PRINT"{clear}{home}{white}":PRINT"I think you should :":HL=INT(RND(1)*4)+1:IFHL=1THENPRINT"{down}Try going {reverse on}{purple}North{reverse off}{white}
554 IFHL=2THENPRINT"{down}Try going {reverse on}{purple}South{reverse off}{white}
555 IFHL=3THENPRINT"{down}Try going {reverse on}{purple}West{reverse off}{white}
556 IFHL=4THENPRINT"{down}Try going {reverse on}{purple}East{reverse on}{white}
557 IFHL=5THENPRINT"{down}Try killing the ":PRINTM$
558 PRINT"{down}{reverse on}I hope I helped you.{reverse off}":PRINT"{down}{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
560 GETA$:IFA$=""THEN561
561 IFA$=" "THEN30
562 IFA$<>" "THEN560
563 GOTO560
600 PRINT"{clear}{home}{white}":PRINT"{down*2}I see,":PRINTM$" and also ":PRINTO$:PRINT" They are in a ":PRINTL$:PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
605 GETA$:IFA$=""THEN606
606 IFA$=" "THEN30
607 IFA$<>" "THEN605
608 GOTO605
650 PRINT"{clear}{home}{white}{reverse on}INVENTORY{reverse off}":PRINT"{down*2}Strength:"SP:PRINT"{down}Monsters killed:"MO:PRINT"{down}Score:"SC:PRINT"{down} Treasure:"G:PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
656 GETA$:IFA$=""THEN657
657 IFA$=" "THEN30
658 IFA$<>" "THEN656
659 GOTO656
700 PRINT"{clear}{home}{white}":ZX=INT(RND(1)*9)+1:IFZX=6ORZX=7THENPRINTM$:PRINT" kills you!":FORX=1TO3000:NEXTX:GOTO2000
703 IFZX<>6ANDZX<>7THENPRINT"{down}You killed ":PRINTM$
704 MO=MO+1:XC=INT(RND(1)*1):IFXC=0THENXC$="Gold
707 IFXC=1THENXC$="Silver
708 NM=INT(RND(1)*10):PRINT" He was carrying ":PRINTNM""XC$" coins.":G=G+NM:SC=SC+G+MO:SP=SP-MO:PRINT"{down}{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
712 GETA$:IFA$=""THEN713
713 IFA$=" "THEN30
714 IFA$<>" "THEN712
715 GOTO712
750 PRINT"{clear}{home}{white}":PRINT"What do you wish to{space*4}pick up.
752 INPUTPU$:IFPU$="gold"ORPU$="silver"THEN780
754 PRINT"You cannot pick up{space*4}that!!":GOTO752
780 LL=INT(RND(1)*4)+1:PRINT"You pick up "LL" coins of ":PRINTPU$:G=G+LL:SC=SC+G+MO:GOSUB6000:PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
784 GETA$:IFA$=""THEN785
785 IFA$=" "THEN30
786 IFA$<>" "THEN784
787 GOTO784
800 TT=INT(RND(1)*3):IFTT=0THENPRINT"{down}You have landed in an{space*2}underground cellar.
802 IFTT=0THENPRINT"You find a Chest which is full of {reverse on}{yellow}GOLD{sh space}&{sh space}{space*3}SILVER COINS.{reverse off}{white}
803 IFTT=1THENPRINT"You have landed in a{space*3}cellar containing a{space*3}horde of horrific
804 IFTT=1THENPRINT"monsters.
805 IFTT=1THENPRINT"{down}They rip you into{space*5}little pieces.":FORX=1TO4000:NEXTX:GOSUB2000
806 IFTT=2THENPRINT"You have landed in{space*6}another room.
807 IFTT=0THENSC=SC+100
808 RETURN
1000 PRINT"{clear}{home}{reverse on}{white}INSTRUCTIONS{reverse off}{white}":PRINT"{down*2} You are a barbarian{space*2}and you hear about{space*4}a{space*2}castle that has ":PRINT"gold & silver in it.":PRINT"You decide to explore the castle and{space*4}collect the treasures.
1004 PRINT"You also discover that the castle is{space*4}lived{space*2}in by horrific ";:PRINT"{red}{reverse on}MONSTERS{reverse off}{white}! they are controlled by the evil force.":PRINT"So you must kill the{space*2}monsters to get{space*3}the{space*3}Gold & Silver.":PRINT"{down*2}{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
1008 GETA$:IFA$=""THEN1009
1009 IFA$=" "THEN1012
1010 IFA$<>" "THEN1008
1011 GOTO1008
1012 PRINT"{clear}{home}{reverse on}COMMANDS{reverse off}{white}":PRINT"{down} 'North' & 'South'":PRINT"{down} 'East' & 'West'":PRINT"{down} 'Push' & 'Pull'":PRINT"{down} 'Open' & 'Close'":PRINT"{down} 'Lock' & 'Unlock'":PRINT"{down} 'Attack' & 'Look'":PRINT"{down} 'Hide' & 'Help'":PRINT"{down} 'Status' & 'Pick up'
1023 PRINT"{down} After each command{space*3}hit [RETURN].":PRINT"{cyan}{reverse on}PRESS{sh space}'SPACE'{sh space}TO{sh space}CONT{reverse off}{white}
1025 GETA$:IFA$=""THEN1026
1026 IFA$=" "THEN1030
1027 IFA$<>" "THEN1025
1028 GOTO1025
1030 PRINT"{clear}{down}{red} {reverse on}WARNING!!{reverse off}{white}":PRINT"Beware of Time Traps.":PRINT"{down}Stop Trembling and{space*4}press 'SPACE'
1033 GETA$:IFA$=""THEN1034
1034 IFA$=" "THEN30
1035 IFA$<>" "THEN1033
1036 GOTO1033
2000 SC=SC/2:PRINT"{clear}{home}{reverse on}HARD LUCK{sh space}!!!{reverse off}":PRINT"{down}You have{space*2}been killed by one of the{space*6}monsters in Skull Castle.":PRINT" Your total score is{space*2}cut in half.":IFSC>HITHENHI=SC
2003 PRINT" Score:"SC:PRINT" Hi-score:"HI:PRINT"{down}{purple}{reverse on}ANOTHER GO [y/n] ?
2006 GETA$:IFA$=""THEN2007
2007 IFA$="y"THENGOTO1
2008 IFA$="n"THENPRINT"{clear}{home}{black}":END
2009 GOTO2006
3000 SC=SC/2:PRINT"{clear}{home}{red}{reverse on}WHAT{sh space}A{sh space}SHAME{reverse off}{white}":PRINT"{down} You died of fatigue{space*2}on your way through{space*3}the Castle.":PRINT"{down} Your score is cut in half.":IFSC>HITHENHI=SC
3003 PRINT" Score:"SC:PRINT" Hi-score:"HI:PRINT"{down}{cyan}{reverse on}ANOTHER{sh space}GO{sh space}[y/n] ?
3006 GETA$:IFA$=""THEN3007
3007 IFA$="y"THENGOTO1
3008 IFA$="n"THENPRINT"{clear}{home}{black}":END
3009 GOTO3006
4000 PRINT"{clear}{home}{white}";:MO=MO*2:SC=SC+MO:PRINT"{down*2}{right*6}WELL DONE":PRINT"{down}{right*6}*********":PRINT"{down}{right}You have collected":PRINT"{down}{right}all the Treasure":PRINT"{down}{right}and you have a":PRINT"{down}{right}BONUS of"MO*2:PRINT"{down}{right}points.":IFSC>HITHENHI=SC
4013 PRINT"{right*5}SCORE:"SC:PRINT"{right*2}HI-SCORE:"HI:PRINT"{right}{down}ANOTHER{sh space}GO{sh space}[y/n]{sh space}?
4027 GETA$:IFA$=""THEN4028
4028 IFA$="y"THENGOTO1
4029 IFA$="n"THENPRINT"{clear}{home}{black}":END
4030 GOTO4027
5000 VB=INT(RND(1)*2):TG=INT(RND(1)*10):IFVB=0THENPRINT"and takes away":PRINTTG:PRINT" coins.":G=G-TG:IFG<=0THENG=0:RETURN
5003 IFVB=1THENPRINT"and wounds you!":SP=SP-50:RETURN
6000 AQ=INT(RND(1)*3):IFAQ=0THENPRINTM$:PRINT" attacks you,":GOTO6050
6002 IFAQ=1THENRETURN
6003 IFAQ=2THENRETURN
6050 QA=INT(RND(1)*2):IFQA=0THENPRINT" and kills you!":FORX=1TO3000:NEXTX:GOTO2000
6052 IFQA=1THENPRINT" and wounds you!":SP=SP-25:RETURN
