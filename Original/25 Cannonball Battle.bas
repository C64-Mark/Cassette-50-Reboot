!--------------------------------------------------
!- 26 October 2019 23:17:57
!- Import of : CANON.PRG
!- From Disk : c:\users\marka\games\c64\cannonball.d64
!- Commodore 64
!--------------------------------------------------
1 PRINT"{clear}":POKE650,255:PRINT"{home}{down*3}{right*2}do you want instructions y/n
3 GETA$:IFA$=""THENGOTO3
4 IFA$="y"THENGOSUB500
5 GOSUB1000:GOSUB2000:S1=0:S2=0
25 F1=135:F2=135:POKEV+3,F1:POKEV+5,F2
30 POKE55296+X+40*Y,1:POKE1024+X+40*Y,81:GETA$:IFA$="a"ORA$="z"THENGOSUB200
45 IFA$=";"ORA$="/"THENGOSUB300
50 POKE1024+X+40*Y,32:IFPEEK(V+31)>0THENDX=-DX:X=X+DX:POKE54276,17:FORI=1TO15:NEXT:POKE54276,0
60 X=X+DX:IFX=0ORX=1ORX=38ORX=39THENGOTO3000
70 Y=Y+DY:IFY=0ORY=24THENDY=-DY:POKE54276,17:FORI=1TO5:NEXT:POKE54276,0
80 IFB$="f"ANDY=1THENY=0:DY=-DY:POKE54276,17:FORI=1TO5:NEXTI:POKE54276,0
85 IFB$="f"ANDY=23THENY=24:DY=-DY:POKE54276,17:FORI=1TO5:NEXTI:POKE54276,0
90 GOTO30
200 IFF1<20THENF1=F1+20:GOTO206
202 IFF1>235THENF1=F1-20:GOTO206
203 IFA$="a"THENF1=F1-20
204 IFA$="z"THENF1=F1+20
205 POKEV+3,F1
206 RETURN
300 IFF2<20THENF2=F2+20:GOTO306
302 IFF2>235THENF2=F2-20:GOTO306
303 IFA$=";"THENF2=F2-20
304 IFA$="/"THENF2=F2+20
305 POKEV+5,F2
306 RETURN
500 PRINT"{clear}{down}{right}this game is played like tennis,we have two gunners{down}":PRINT"{right}the first gunner to score 15 wins{down}":PRINT"{right}gunner1(left bat):":PRINT"{right}the 'a' key moves the bat upwards":PRINT"{right}the 'z' key moves the bat downwards{down}":PRINT"{down}gunner2(right bat):
511 PRINT"{right}the ';' key moves the bat upwards":PRINT"{right}the '/' key moves the bat downwards":PRINT"{down}{right}try to get the cannonball past your{space*5}opponent!!":PRINT"{down*2}{right}press any key to start...
515 GETA$:IFA$=""THENGOTO515
516 PRINT"{clear}":RETURN
1000 V=53248:POKEV+21,6:POKE2041,13:POKE2042,13:POKEV+23,0:FORN=0TO62:POKE832,0:NEXT:FORN=0TO62:POKE832+N,255:NEXTN:POKEV+2,51:POKEV+3,135:POKEV+4,255:POKEV+5,135:POKEV+40,14:POKEV+41,14:POKEV+16,4:FORN=0TO54:POKEV+4,N:NEXT:POKE54296,15:POKE54277,0:POKE54278,240:POKE54273,32:POKE54272,97
1023 POKE54276,0:RETURN
2000 X=1:Y=1:D2=1:PRINT"{clear}{down*18}{right*5}gun size l(large) or s(small)":PRINT"{down*4}{right*5}enter{space*2}:
2005 GETA$:IFA$=""THEN2005
2006 IFA$="l"THENPOKEV+23,6
2007 PRINT"{home}{down*11}{right*8}press f to start the game{space*3}":D1=1:D2=1
2008 GETB$:IFB$=""THEN2008
2009 IFB$="f"THEND1=2:D2=2
2010 DX=D1:DY=D2:POKEV+31,0:PRINT"{clear}":POKE53281,0:PRINT"{green}":RETURN
3000 DX=D1:DY=D2:POKE54276,33:FORI=1TO100:NEXTI:POKE54276,0:IFX=0ORX=1THENS2=S2+1:PRINT"{home}{down*2}{left*3}"S2:X=36:DX=-DX:DY=-DY:Y=INT(3*RND(1))+22
3003 IFX=38ORX=39THENS1=S1+1:PRINT"{home}"SPC(39)S1:X=3:Y=INT(3*RND(1))
3004 IFS1<15ANDS2<15GOTO25
3005 POKEV+21,0:PRINT"{clear}{home}{down*6}{right*10}end of game":IFS1=15THENPRINT"{home}{down*10}{right*10}player1 wins
3007 IFS2=15THENPRINT"{home}{down*10}{right*10}player2 wins
3008 PRINT"{home}{down*10}{right*6}another game y/n
3009 GETA$:IFA$=""THEN3009
3010 IFA$="y"THENGOTO1
3011 PRINT"{clear}{down*10}{right*6}end...":END
