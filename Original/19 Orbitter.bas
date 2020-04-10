!--------------------------------------------------
!- 27 October 2019 22:28:49
!- Import of : ORBIT.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\orbitter.d64
!- Commodore 64
!--------------------------------------------------
0 PRINT"{clear}":GOSUB9030:POKE54296,0:POKE53281,0:POKE54276,0:RESTORE:CLR:PRINT"{clear}{space*12}{reverse on}orbitter":V=53248:POKEV+16,0:POKEV+21,1:POKE2040,13:FORN=0TO62:READQ:POKE832+N,Q:NEXT:DATA0,255,0,1,219,128,3,219,192,7,231,224,15,25,240
52 DATA123,0,222,79,0,242,75,0,210,71,255,226,226,126,71,161,90,133,160,231,5,1,231,128,1,60,128,2,24,64,4,60,32,8,126,16,112,255,14,241,255,143,240,0,15,96,0,6:POKEV+23,1:POKEV+29,1:POKEV,130:POKEV+1,75:PRINT"{down*8}
90 PRINT"{red}{space*3}press f1 for main engines":PRINT"{red}{space*3}press f3 for low power retros":PRINT"{purple}{down}{space*7}z = left{space*3}x = right":PRINT"{down}{space*2}avoid the walls at all cost":PRINT"{down}{space*2}try to land on the landing pads {cm pound*3}
105 PRINT"{down}the harder the location & softer the{space*4}landing the more the points":PRINT"{down}{space*6}press any key to start 
110 A$="":GETA$:IFA$=""THEN110
130 POKEV+21,0:POKEV+23,1:POKEV+29,1:PRINT"{clear}":FORY=1TO2:PRINT:NEXT:PRINT"{yellow}{space*17}V":PRINT"{yellow}{space*16}N M":PRINT"{yellow}N{cm y*2}M{space*11}N{space*3}M{space*4}U{sh asterisk}I{space*5}OM{space*4}{cm a}":PRINT"{yellow}{space*4}M{space*9}N{space*4}{cm n}{space*4}{cm h} H{space*5}{cm h}N{space*4}G":PRINT"{yellow}{space*5}M{space*8}{cm h}{space*4}N{space*4}{cm h} H{space*5}{cm h*2}{space*4}{cm h}
170 PRINT"{yellow}{space*6}M{space*7}{cm h}{space*4}M{cm p}{green}{cm pound*3}{yellow}{cm h} H{space*5}{cm h*2}{space*3}{cm n}":PRINT"{yellow}{space*7}M{space*5}N{space*12}H{space*5}{cm h}M{space*3}{cm n}":PRINT"{yellow}{space*7}{cm n}{space*4}N{space*13}H{space*5}{cm h}{cm n}{space*3}{cm n}":PRINT"{yellow}{space*7}{cm n}{space*4}{cm k}{space*13}N{space*5}{cm h}{cm n}{space*3}{cm n}":PRINT"{yellow}{space*7}{cm n}{space*4}{cm k}{space*12}N{space*6}{cm h}{cm n}{space*3}{cm n}
180 PRINT"{yellow}{space*7}N{space*4}{cm k}{space*9}N{cm y*2}{space*7}{cm h}{cm n}{space*3}{cm n}":PRINT"{yellow}{space*6}N{space*5}{cm k}{space*8}N{space*10}{cm h}{cm n}{space*3}{cm n}":PRINT"{yellow}{space*5}N{space*6}{cm k}{space*7}N{space*10}N {cm n}{space*3}{cm n}":PRINT"{yellow}{space*4}N{space*5}U{sh asterisk}{cm v}{space*7}G{space*9}N{space*2}{cm n}{space*3}{cm n}":PRINT"{yellow}{space*3}N{space*6}{cm z}{sh asterisk}{cm f}{space*7}G{space*4}{cm d}{green}{cm pound*3}{yellow}N{space*3}G{space*3}{cm n}
190 PRINT"{yellow}{space*3}{cm h}{space*8}M{space*7}G{space*4}H{space*7}{cm h}{space*3}{cm n}{cm h}":PRINT"{yellow}{space*3}{cm h}{space*8}{cm n}{space*7}{cm z}{green}{cm pound*3}{yellow}{sh asterisk}K{space*7}H{space*4}G":PRINT"{yellow}{space*3}{cm h}{space*8}N{space*20}{cm n}{space*4}G":PRINT"{yellow}{space*3}{cm z}RRR{green}{cm pound*4}{yellow}R{cm x}{space*21}L{green}{cm pound*3}{yellow}{cm x}":PRINT:PRINT:F=700:GR=0:X1=24:Y1=58:POKEV,X1:POKEV+1,Y1
350 POKEV+23,0:POKEV+29,0:POKEV+21,1
362 GOSUB370:GOTO362
370 IFY1<>58ANDPEEK(V+31)=1THEN431
371 IFF<0THEN431
372 IFY1<2THEN431
380 POKE54276,0:IFPEEK(197)=4THENGR=GR-.5:F=F-12:GOSUB9000
400 IFPEEK(197)=5THENGR=GR-.25:F=F-7:GOSUB9000
410 IFPEEK(197)=12THENX1=X1-3:F=F-1
420 IFPEEK(197)=23THENX1=X1+3:F=F-1
421 GR=GR+.1:Y1=Y1+GR:IFX1>255THENGOSUB5000
427 IFX1<0THENGOSUB5030
428 IFY1<=4THEN431
430 POKEV,X1:POKEV+1,Y1:GOTO440
431 IFX1=87ANDY1>=202THENP=25:GOTO7000
432 IFX1=192ANDY1>=98THENP=10:GOTO7000
433 IFX1=192ANDY1>=206THENP=40:GOTO7000
434 IFX1>=44ANDY1>=200ANDPEEK(V+16)=1THENP=15:GOTO7000
435 GOTO8000
440 PRINT"{up}{reverse on}{purple} fuel:"F"{space*2}speed:"(INT(GR*1000)/100)"{space*4}":RETURN
4445 IFPEEK(V+27)=1THEN8000
5000 X1=X1-255:POKEV+16,1:RETURN
5030 IFX<0THENX=X+255:POKEV+16,0:RETURN
7000 PRINT"{clear}":POKEV+21,0:IFGR>1THENPOKE54296,0:PRINT"{black}you landed too fast & made a big hole!":GOTO8102
7042 PRINT"{red} well done a good safe landing":IFGR<=0THENRG=10
7044 IFGR<=.2ANDGR>0THENRG=9
7045 IFGR>=.3THENRG=7
7046 IFGR>=.7THENRG=3
7047 IFGR>=.8THENRG=1
7049 P%=RG*P+(RND(0)*5)+1:P=P%:POKE54296,15
7051 POKE54277,9:POKE54276,33:FORT=1TO30:NEXT:READHF:READLF:IFLF=-1THENPOKE54273,0:POKE54272,0:GOTO7081
7078 POKE54273,HF:POKE54272,LF:POKE54276,0:GOTO7051
7081 FORC=1TO10:PRINT"{space*40}":PRINT"{clear}{down*3}{green} good landing{space*2}points:"P:FORV=1TO100:NEXTV,C:GOTO8102
7100 DATA22,227,25,177,28,214,22,227,19,63,22,227,28,214,22,227,19,63,22,227,28,214,38,126,36,85,34,75,22,227,25,177,28,214,22,227,19,63,22,227,28,214,22,227,19,63,22,227,28,214,38,126,38,126,36,85,34,75,-1,-1
8000 POKE54296,15:FORY=1TO30:POKE53281,0:POKE53281,1:POKE53281,0:NEXTY:POKE54296,15:POKE54277,17:POKE54272,1:POKE54276,129:POKE54273,(3*RND(0))+5:POKEV+28,1:FORX=1TO300:POKE54278,32:NEXT:POKEV+28,0:POKEV+21,0:POKE54276,0:POKE54277,0:POKE53281,2
8102 PRINT"{clear}{down*3}{right*5}{reverse on}{white}another game y or n?
8104 GETA$:IFA$="y"THENRUN
8105 IFA$="n"THENEND
8106 GOTO8104
9000 IFPEEK(197)=4THEND=15
9001 IFPEEK(197)=5THEND=10
9006 POKE54296,D:POKE54277,9:POKE54278,128:POKE54276,129:POKE54273,6:POKE54272,18:RETURN
9030 POKE53281,1:PRINT"{blue}{clear}{down*3}{space*7}orbitter{space*2}instructions":PRINT"{down*2}you are the pilot of a spacecraft in a{space*2}fast decaying orbit above";:PRINT" a giant planetcovered in crevasses & deep fissures.
9036 PRINT"{down}you must pick a landing spot and have a go before your fuel runs out":PRINT"{down}unfortunately for you the planet has a{space*2}very strong gravity making";:PRINT" landings at asafe speed extremely difficult":PRINT"{down}{space*5}press key to descend from orbit
9050 A$="":GETA$:IFA$=""THEN9050
9099 RETURN
