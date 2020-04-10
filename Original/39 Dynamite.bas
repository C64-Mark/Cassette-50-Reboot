!--------------------------------------------------
!- 26 October 2019 23:21:37
!- Import of : DYNA.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\dynamite.d64
!- Commodore 64
!--------------------------------------------------
10 POKE53280,8:POKE53281,0:PRINT"{clear}":RX=RND(-TI):POKE650,255:POKE651,255:POKE652,255:FORA=0TO39:POKE1024+A,160:POKE55296+A,(AAND7):NEXT:FORA=39TO0STEP-1:POKE1984+A,160:POKE56256+A,(AAND7):NEXT:PRINT"{down}{space*14}dynamite":PRINT"{white}{down}this is a one player game and your
55 PRINT"{red}mission is to rob the";:POKE53272,21:PRINT" bank in a limited ";:PRINT"time and escape.":DATA255,255,255,255,255,255,255,255,0,126,66,90,90,66,126,66,24,36,24,126,90,209,36,102,0,0,0,18,50,127,165,66,0,242,132,68,36,20,242,0
5055 DATA0,103,149,149,150,149,101,0,0,120,64,64,120,64,120,0,0,248,34,34,34,34,34,0,0,139,218,218,171,170,139,0:POKE53280,8:PRINT"{down*2}{cyan}you have to make your way through the ":PRINT"invisible maze towards the safe.
5200 PRINT"using joystick control : (port2)":PRINT"& fire button which shows you a map of":PRINT"the maze.you can see the map eight times":PRINT"{down}{right*6}good luck ";:PRINT"{right*2}{white}(c) {red}cascade 1984{white}":PRINT"{down}{right*6}press key to set up graphics
5322 GETZX$:IFZX$=""THEN5322
5324 GOSUB59000
5326 PRINT"{clear}{down*3}{right*11}the safe is{right}$":PRINT"{down}{right*9}your getaway car{right}&":PRINT"{down}{right*7}press key to carry on
5330 GETZX$:IFZX$=""THEN5330
7000 SC=0:P=1466:TL=INT(RND(1)*60)+1:IFTL=<40THEN7000
7010 TI$="000000":BK=0:CF=0:GOSUB10000
7020 V=54296:S1=54273:S2=54272:S3=54276:POKE53272,31:POKE53280,8:PRINT"{clear}{white}'()"SC,"{left*2}*+{right}"TI$CF:PRINT"{down}{black}{right*2}#################":PRINT"{right*2}#{right*7}#{right*7}#":PRINT"{right*2}# ## ## # ## # {right}#":PRINT"{right*2}# ##{right}{black}## # ## ####":RX=RND(1):IFRX>.5THEN7065
7060 PRINT"{right*2}#{space*4}#{space*2}#{space*6}##":PRINT"{right*2}#{right*2}#{right*4}#{right*4}#{right*2}#":GOTO7070
7065 PRINT"{right*2}#{right*3}#{right*3}#{right*4}#{right*2}#":PRINT"{right*2}# #{space*2}#{space*2}#{space*6}##
7070 PRINT"{right*2}# ### # # # ### #":PRINT"{right*2}#{right}###{right}#{right*3}#{right}###{right}#":PRINT"### #{space*3}#####{space*3}# ###":PRINT"#{green}&{right} {black}# ### {red}$ {black}###{right*4}{green}&{black}#":PRINT"### #{space*2}{right}## ##{space*3}# ###":PRINT"{right*2}#{right}##{right*2}#{right*3}#{right}###{right}#":PRINT"{right*2}# ### # ### ### #":PRINT"{right*2}#{right*2}#{right*2}#{right}#{right*4}#{right*2}#":RX=RND(1):IFRX>.5THEN7115
7110 PRINT"{right*2}#{space*2}#{space*2}#{space*6}#{space*2}#":PRINT"{right*2}#{right}##{right}##{right}#{right}##{right}##{right}#":GOTO7120
7115 PRINT"{right*2}#{right*2}#{right*4}#{right*4}#{right*2}#":PRINT"{right*2}##{space*3}# ##{space*6}##
7120 PRINT"{right*2}# ## ## # ## ## #":PRINT"{right*2}#{right*2}#{right*4}#{right*7}#":PRINT"{right*2}#################{white}":POKEP,37:C=PEEK(P)
7150 A=NOTPEEK(56320)AND15:B=PEEK(56320)AND16:POKEV,2:POKE54272+P,1:POKE1465+54272,1:POKE1483+54272,1:POKE1474+54272,1:POKE1465,38:POKE1483,38:POKE1474,36:PRINT"{home}'()"SC,"{left*2}*+{right}"TI$CF:IFVAL(TI$)>TLTHEN7580
7200 IFA=1ANDPEEK(P-40)<>35THENPOKEP-40,37:P=P-40:POKEP+40,32:POKES1,22:GOTO7260
7210 IFA=2ANDPEEK(P+40)<>35THENPOKEP+40,37:P=P+40:POKEP-40,32:POKES1,62:GOTO7260
7220 IFA=8ANDPEEK(P+1)<>35THENPOKEP+1,37:P=P+1:POKEP-1,32:POKES1,102:GOTO7260
7230 IFA=4ANDPEEK(P-1)<>35THENPOKEP-1,37:P=P-1:POKEP+1,32:POKES1,144:GOTO7260
7240 IFB=0ANDCF<8THENPOKE53281,1:CF=CF+1:FORT=1TO1000:NEXT:POKE53281,0
7250 GOTO7150
7260 SC=SC+1:IFPEEK(P+1)=36ORPEEK(P-1)=36THEN7300
7270 SC=SC+1:IFPEEK(P+40)=36ORPEEK(P-40)=36THEN7300
7280 IFBK=1ANDPEEK(P-1)=38ORPEEK(P+1)=38THEN7680
7290 GOTO7150
7300 PRINT"{clear}{right*4}{green}{space*2}you are at the safe":CF=3:POKEV,0:PRINT"{down}{right*7}{white}in front of you there":PRINT"are two buttons. one of them will blow ":PRINT"the safe open. the other will trigger":PRINT"the alarm system and automatically call":PRINT"the boys in blue.
7340 PRINT"{down}{right*2}choose one of the buttons now!":PRINT"{down*2}{right*4}#####{space*3}#####":PRINT"{right*4}#{space*3}#{space*3}#{space*3}#":PRINT"{right*4}#{space*3}#{space*3}#{space*3}#":PRINT"{right*4}# 1 #{space*3}# 2 #":PRINT"{right*4}#{space*3}#{space*3}#{space*3}#":PRINT"{right*4}#{space*3}#{space*3}#{space*3}#":PRINT"{right*4}#####{space*3}#####":G=INT(RND(1)*2)+1
7440 INPUT"{down}input your number";W:IFG=WTHEN7472
7470 IFG<>WTHENGOTO7540
7472 POKE54276,129:POKE54277,128:POKE54278,0:POKE54296,15:B=0:FORL=128TO255STEP5:POKE54273,L:POKE54272,L:B=B+1:NEXTL:IFB=3THENB=0
7490 POKES1,0:POKE54277,16:SC=SC+1000:BK=1:P=1474:POKE54276,17:PRINT"{clear}{down*4}{blue}the safe is now open.now you have to get":PRINT"{down}{right*8}back to the start":PRINT"{down}{right}you have 30 sec to get out of the bank":TL=30:FORF=1TO6000:NEXT:TI$="000000":GOTO7020
7540 PRINT"{clear}{down*4}{green}{right*3}sorry you picked the wrong button":PRINT"{red}{down}{right*4}the police are coming":GOSUB10000:POKEV,15:FORI=1TO10:POKES2,235:FORJ=1TO300:NEXT:POKES2,0:POKES1,235:FORJ=1TO300:NEXT:POKES1,0:NEXTI:POKEV,0:GOTO7610
7580 PRINT"{clear}{down}sorry your time is up and the police{space*11}have caught you!":POKEV,4:FORL=1TO10:POKES1,200:FORM=1TO30:NEXTM:POKES1,0:FORM=1TO400:NEXT:NEXTL:POKEV,0
7610 PRINT"{purple}{down}{right*8}your score is"SC:IFSC>=HSTHENHS=SC:PRINT"{red}{down}a new hi-score":INPUT"{white}{down}{right*5}enter your name:";P$
7630 PRINT"{down}{right*5}hi-score={left}"HS:PRINT"{down}{right*5}by "P$:INPUT"{down}{right*5}another game y/n ";V$:IFV$="y"THEN7000
7670 END
7680 PRINT"{clear}{down*2}{right*8}you have done it":POKEV,4:FORI=250TO200STEP-2:POKES3,I:FORJ=1TO100:NEXTJ,I:POKES3,I:FORJ=1TO100:NEXTJ:POKES3,0:POKEV,0:PRINT"{down}{right*6}do you want to carry on ?":INPUT"{down}{right*8} y/n";A$:IFA$="y"THENGOTO7010
7740 GOTO7610
10000 POKE54296,15:POKE54277,16:POKE54278,248:POKE54276,33:FORSU=1TO100:POKE54273,SU:POKE54272,SU:NEXT:POKE54272,0:POKE54273,0:RETURN
59000 POKE52,56:POKE56,56:CLR:POKE56334,PEEK(56334)AND254:CN=35:POKE1,PEEK(1)AND251:FORI=0TO512:POKEI+14336,PEEK(53248+I):NEXTI:POKE1,PEEK(1)OR4:POKE56334,PEEK(56334)OR1
59060 FORI=0TO7:READCD:IFCD<0THENI=7:GOTO59090
59064 POKE14336+8*CN+I,CD:NEXTI:CN=CN+1:GOTO59060
59080 DATA-1
59090 POKE53272,(PEEK(53272)AND240)OR14:GOTO5326
