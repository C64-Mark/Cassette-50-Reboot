!--------------------------------------------------
!- 27 October 2019 08:42:46
!- Import of : HIGH.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\highrise.d64
!- Commodore 64
!--------------------------------------------------
1 Z=54294:POKEZ+2,15:POKEZ+3,24:J=RND(-TI):K$="{space*7}{reverse on}press any key to go on{reverse off}":L$="{reverse on}{green}{space*40}{reverse off}{blue}":M$="{home}{space*22}":N$="{clear}{reverse on}{blue} high rise or three card brag {reverse off}{blue}":PRINT"{clear}":GOSUB4000:PRINTN$:PRINT"{down*2}{right}preamble(y/n)?":POKE53280,4
4 POKE53281,14
5 GETA$:IFA$<>"y"ANDA$<>"n"THEN5
6 IFA$="n"THENN$="{clear}{down}":GOTO30
7 GOSUB4000:N$="{clear}{down}":PRINTN$"the highest hand is 3 threes,followed bythree aces,three kings etc.":PRINT"next best is a running flush (straight).first,ace two three,then ace king ";:PRINT"queen,king queen jack,etc.":PRINT"{down}"K$
11 GETA$:IFA$=""THEN11
12 GOSUB4000:PRINTN$"{down}then come the ordinary runs in the same order as the straights":PRINT"{down}next best is a flush.first,the ace flushthen,king flush,queen flush..":PRINT"{down*5}"K$
15 GETA$:IFA$=""THEN15
16 GOSUB4000:PRINTN$"after that come the pairs,a pair of aces being the highest":PRINT"then a king pair & so on.":PRINT"finally,the high card,starting with the ace.":PRINT"{down*4}"K$
19 GETA$:IFA$=""THEN19
20 GOSUB4000:PRINTN$"you start with a stake of {pound}1000.":PRINT"if you lose it all, i win ":PRINT"but,if you increase your stake to {pound}10000{space*2}you win the game.":PRINT"{down*4}"K$
22 GETA$:IFA$=""THEN22
23 GOSUB4000:PRINTN$"at the start of each hand both of us{space*4}must put {pound}10 in the pot":PRINT"after seeing your hand you can bet,pay{space*2}up & see me,or fold.if you do i win":PRINT"{down}the minimum bet is {pound}10 but can be raised":PRINT"{down}"K$
26 GETA$:IFA$=""THEN26
27 GOSUB4000:PRINTN$"the player with the best hand wins the{space*2}pot unless some ";:PRINT"one has already folded.":PRINT"if it's a draw,i win (hard luck!).":PRINT"{down*3}"K$
29 GETA$:IFA$=""THEN29
30 DIMP(29),Q(29):FORA=0TO29:READX,Y:X=X+200:Y=Y+200:P(A)=X:Q(A)=Y:NEXT:DATA1027,55299,1029,55301,1109,55381,1189,55461,1191,55463,1040,55312,1042,55314,1122,55394,1202,55474,1204,55476,1053,55325,1055,55327,1135,55407,1215,55487,1217,55489
39 DATA1507,55779,1509,55781,1589,55861,1669,55941,1671,55943,1520,55792,1522,55794,1602,55874,1682,55954,1684,55956,1533,55805,1535,55807,1615,55887,1695,55967,1697,55969:P$="{cyan}pot={pound}{blue}":S$="{cyan}stake={pound}{blue}":B$="{cyan}bet={pound}{blue}
49 POKEZ+3,29:S=1000
50 PRINT"{clear}{down}"L$:P=0:V=10:PRINT"{white}my hand.{blue}":PRINT"{space*2}U{sh asterisk}CCC{sh asterisk}I{sh space*2}{space*4}U{sh asterisk}CCC{sh asterisk}I{space*6}U{sh asterisk}CC{sh asterisk*2}I":PRINT" {sh space}{sh -}{space*5}{sh -}{sh space}{space*5}{sh -}{sh space}{space*3}{sh space}{sh -}{sh space}{space*4}{sh space}{sh -}{sh space} {sh space} {sh space}{sh -}":PRINT" {sh space}{sh -}{space*5}{sh -}{sh space}{space*5}{sh -}{sh space}{space*3}{sh space}{sh -}{sh space}{space*4}{sh space}{sh -}{sh space} {sh space} {sh space}{sh -}":PRINT"{space*2}{sh -}{space*2}*{space*2}{sh -}{space*6}{sh -}{space*2}*{space*2}{sh -}{space*6}{sh -}{space*2}*{space*2}{sh -}":PRINT" {sh space}{sh -}{sh space}{space*4}{sh -}{sh space}{space*5}{sh -}{sh space}{space*3}{sh space}{sh -}{sh space*2}{space*4}{sh -}{sh space} {sh space} {sh space}{sh -}
73 PRINT" {sh space}{sh -}{sh space}{space*4}{sh -}{sh space}{space*5}{sh -}{sh space}{space*3}{sh space}{sh -}{sh space*2}{space*4}{sh -}{sh space} {sh space} {sh space}{sh -}":PRINT" {sh space}JCCC{sh asterisk*2}K{sh space}{space*5}J{sh asterisk}CC{sh asterisk*2}K{sh space}{space*4}{sh space}J{sh asterisk}C{sh asterisk}C{sh asterisk}K":PRINTL$:PRINT"{white}yours.{blue}":PRINT"{down*2}{space*2}U{sh asterisk}CCC{sh asterisk}I{sh space*2}{space*4}U{sh asterisk}CCC{sh asterisk}I{space*6}U{sh asterisk}CC{sh asterisk*2}I":PRINT" {sh space}{sh -}{space*5}{sh -}{sh space}{space*5}{sh -}{sh space}{space*3}{sh space}{sh -}{sh space}{space*4}{sh space}{sh -}{sh space} {sh space} {sh space}{sh -}":PRINT" {sh space}{sh -}{space*5}{sh -}{sh space}{space*5}{sh -}{sh space}{space*3}{sh space}{sh -}{sh space}{space*4}{sh space}{sh -}{sh space} {sh space} {sh space}{sh -}
89 PRINT"{space*2}{sh -}{space*2}*{space*2}{sh -}{space*6}{sh -}{space*2}*{space*2}{sh -}{space*6}{sh -}{space*2}*{space*2}{sh -}":PRINT" {sh space}{sh -}{sh space}{space*4}{sh -}{sh space}{space*5}{sh -}{sh space}{space*3}{sh space}{sh -}{sh space*2}{space*4}{sh -}{sh space} {sh space} {sh space}{sh -}":PRINT" {sh space}{sh -}{sh space}{space*4}{sh -}{sh space}{space*5}{sh -}{sh space}{space*3}{sh space}{sh -}{sh space*2}{space*4}{sh -}{sh space} {sh space} {sh space}{sh -}":PRINT" {sh space}JCCC{sh asterisk*2}K{sh space}{space*5}J{sh asterisk}CC{sh asterisk*2}K{sh space}{space*4}{sh space}J{sh asterisk}C{sh asterisk}C{sh asterisk}K":GOSUB4100:GOSUB4000:PRINT"{home}press d to deal
104 GETA$:IFA$<>"d"THEN104
110 IFS<10THENGOSUB4020:PRINTM$"{home}you can't afford it!":GOSUB4100:S=0:GOSUB4010:GOTO1141
150 FORA=5TO10
153 C(A)=INT(RND(1)*13)+2:S(A)=INT(RND(1)*4)+1:IFC(A)=C(A-1)ANDS(A)=S(A-1)THEN153
162 IFC(A)=C(A-2)ANDS(A)=S(A-2)THEN153
165 IFC(A)=C(A-3)ANDS(A)=S(A-3)THEN153
168 IFC(A)=C(A-4)ANDS(A)=S(A-4)THEN153
171 IFC(A)=C(A-5)ANDS(A)=S(A-5)THEN153
200 NEXT:S=S-10:P=20:B=15:FORA=8TO10:GOSUB3500:NEXT:GOSUB4100:GOSUB3600:GOTO408
300 I=0:V$="":POKE198,0:PRINTM$:GOSUB4000:INPUT"{home}your bet";V$:IFV$=""THENGOSUB4020:PRINTM$"{home}please enter a bet":GOSUB4010:GOTO300
302 IFVAL(V$)>9999THENGOSUB4020:PRINTM$"{home}too much-try again":GOSUB4010:GOTO300
303 V=VAL(V$):IFV<1ORV>9999THENM$"{home}please type a number":GOSUB40
306 IFV>STHENGOSUB4020:PRINTM$"{home}not enough stake-i win":I=1:P=0:GOSUB4100:GOSUB4010:GOTO500
307 IFVAL(V$)<VTHENGOSUB4020:PRINTM$"{home}not enough-bet again":GOSUB4010:GOTO300
320 IFVAL(V$)>STHENGOSUB4020:PRINTM$"{home}you haven't got it!":GOSUB4010:GOTO300
335 V=VAL(V$):S=S-V:P=P+V:GOSUB4100:GOTO400
340 W=INT(RND(1)*7)+1:PRINTM$:GOSUB4020:P=0:V=10:I=1:GOSUB4100:ONWGOTO350,351,352,353,354,355,356
350 PRINT"{home}chicken-i win":GOSUB4010:GOTO500
351 PRINT"{home}coward-you lose":GOSUB4010:GOTO500
352 PRINT"{home}yellowbelly-i win":GOSUB4010:GOTO500
353 PRINT"{home}sap-you lose the pot":GOSUB4010:GOTO500
354 PRINT"{home}wimp-i take the pot":GOSUB4010:GOTO500
355 PRINT"{home}dummy-my pot":GOSUB4010:GOTO500
356 PRINT"{home}wally-you lose":GOSUB4010:GOTO500
400 F=E(5)*INT(RND(1)*6+1):G=INT(RND(1)*75+25):IFF<GTHENH=INT(RND(1)*3+1):ONHGOTO403,403,404
402 Q=RND(1)*1.75+1.25:V1=V:Q=INT(V1*Q+.5):GOTO406
403 IFV<INT(RND(1)*50+25)THENGOSUB4000:PRINTM$"{home}i'll see you":P=P+V:GOSUB4100:GOSUB4010:GOTO500
404 GOSUB4000:PRINTM$"{home}i fold-your pot":S=S+P:P=0:I=1:GOSUB4100:GOSUB4010:GOTO500
406 IFF>RND(1)*125+75THENGOSUB4000:PRINTM$"{home}i raise to"Q:P=P+Q:V=Q:GOSUB4100:GOSUB4010:GOTO408
407 GOSUB4000:PRINTM$"{home}i bet"V"too":P=P+V:GOSUB4100:GOSUB4010
408 GOSUB4000:PRINTM$"{home}b-bet{space*3}s-see{space*3}f-fold
409 GETA$:IFA$<>"b"ANDA$<>"s"ANDA$<>"f"THEN409
410 IFA$="b"THEN300
415 IFA$="f"THEN340
420 IFS>=VTHENI=0:P=P+V:S=S-V:GOSUB4100:GOTO500
430 GOSUB4020:PRINTM$"{home}you can't pay-i win":P=0:GOSUB4100:GOSUB4010:I=1
500 B=0:FORA=5TO7:GOSUB3500:NEXT:IFI=1THEN1141
999 PRINTM$:IFE(5)=E(8)THENGOSUB4020:PRINT"{home}draw-my pot":P=0
1120 IFE(5)>E(8)THENGOSUB4020:PRINT"{home}i win-my pot":P=0
1130 IFE(5)<E(8)THENGOSUB4030:PRINT"{home}i lose-your pot":S=S+P:P=0
1135 GOSUB4100:GOSUB4010
1141 IFS>0ANDS<10000THEN1150
1142 IFS<1THENGOSUB4020:PRINTM$"{home}game over-you lost
1143 IFS>9999THENGOSUB4030:PRINTM$"{home}game over-you won
1145 GOSUB4010:GOSUB4000:V=0:GOSUB4100:PRINTM$"{home}another game(y/n)?
1147 GETA$:IFA$<>"y"ANDA$<>"n"THEN1147
1148 IFA$="y"THEN49
1149 IFA$="n"THENGOSUB4000:PRINTM$"{home}thanks for playing-bye":GOSUB4010:GOTO4040
1150 GOSUB4000:PRINTM$"{home}your stake={pound}"S:GOSUB4010:V=10:GOSUB4100:GOSUB4000:PRINTM$"{home}hit p to play-e to end
2010 GETA$:IFA$<>"p"ANDA$<>"e"THEN2010
2020 IFA$="p"THEN50
2030 IFA$="e"THENPRINTM$
2040 IFS=1000THENGOSUB4000:PRINT"{home}you come out even-bye!
2050 IFS>1000THENGOSUB4030:PRINT"{home}you won {pound}"S-1000"- bye!
2060 IFS<1000THENGOSUB4020:PRINT"{home}you lost {pound}"1000-S"- bye!
2070 GOSUB4010:GOTO4040
3500 IFC(A)=14THENPOKEP(B),1:POKEP(B+4),1
3515 IFC(A)=2THENPOKEP(B),50:POKEP(B+4),50
3520 IFC(A)=3THENPOKEP(B),51:POKEP(B+4),51
3525 IFC(A)=4THENPOKEP(B),52:POKEP(B+4),52
3530 IFC(A)=5THENPOKEP(B),53:POKEP(B+4),53
3535 IFC(A)=6THENPOKEP(B),54:POKEP(B+4),54
3540 IFC(A)=7THENPOKEP(B),55:POKEP(B+4),55
3545 IFC(A)=8THENPOKEP(B),56:POKEP(B+4),56
3550 IFC(A)=9THENPOKEP(B),57:POKEP(B+4),57
3555 IFC(A)=10THENPOKEP(B),49:POKEP(B+1),48:POKEP(B+3),49:POKEP(B+4),48
3560 IFC(A)=11THENPOKEP(B),10:POKEP(B+4),10
3565 IFC(A)=12THENPOKEP(B),17:POKEP(B+4),17
3570 IFC(A)=13THENPOKEP(B),11:POKEP(B+4),11
3580 IFS(A)=1THENPOKEP(B+2),83:POKEQ(B),2:POKEQ(B+1),2:POKEQ(B+2),2:POKEQ(B+3),2:POKEQ(B+4),2
3585 IFS(A)=2THENPOKEP(B+2),88:POKEQ(B),0:POKEQ(B+1),0:POKEQ(B+2),0:POKEQ(B+3),0:POKEQ(B+4),0
3590 IFS(A)=3THENPOKEP(B+2),90:POKEQ(B),2:POKEQ(B+1),2:POKEQ(B+2),2:POKEQ(B+3),2:POKEQ(B+4),2
3595 IFS(A)=4THENPOKEP(B+2),65:POKEQ(B),0:POKEQ(B+1),0:POKEQ(B+2),0:POKEQ(B+3),0:POKEQ(B+4),0
3597 B=B+5:RETURN
3600 A=5:FORH=1TO2:FORR=1TO2:IFC(A)<C(A+1)THENI=C(A):C(A)=C(A+1):C(A+1)=I:I=S(A):S(A)=S(A+1):S(A+1)=I
3630 IFC(A+1)<C(A+2)THENI=C(A+1):C(A+1)=C(A+2):C(A+2)=I:I=S(A+1):S(A+1)=S(A+2):S(A+2)=I
3650 NEXT:IFC(A)=3ANDC(A+1)=3ANDC(A+2)=3THENE(A)=300:GOTO3900
3655 IFC(A)=C(A+1)ANDC(A)=C(A+2)THENE(A)=C(A)+250:GOTO3900
3660 IFC(A)=14ANDC(A+1)=3ANDC(A+2)=2ANDS(A)=S(A+1)ANDS(A)=S(A+2)THENE(A)=250:GOTO3900
3670 IFC(A)=C(A+1)+1ANDC(A)=C(A+2)+2ANDS(A)=S(A+1)ANDS(A)=S(A+2)THENE(A)=C(A)+200:GOTO3900
3680 IFC(A)=14ANDC(A+1)=3ANDC(A+2)=2THENE(A)=200:GOTO3900
3690 IFC(A)=C(A+1)+1ANDC(A)=C(A+2)+2THENE(A)=C(A)+150:GOTO3900
3700 IFS(A)=S(A+1)ANDS(A)=S(A+2)THENE(A)=C(A)+100:GOTO3900
3710 IFC(A)=C(A+1)THENE(A)=C(A)+50:GOTO3900
3720 IFC(A+1)=C(A+2)THENE(A)=C(A+1)+50:GOTO3900
3740 E(A)=C(A)
3900 A=8:NEXT:IFE(5)=E(8)THENE(5)=E(5)+C(6):E(8)=E(8)+C(9)
3920 IFE(5)=E(8)THENE(5)=E(5)+C(7):E(8)=E(8)+C(10)
3930 RETURN
4000 POKEZ-1,200:FORT=1TO50:NEXT:POKEZ-1,0:RETURN
4010 FORT=1TO2000:NEXT:RETURN
4020 RETURN
4030 POKEZ,255:FORT=1TO200:NEXT:POKEZ,0:RETURN
4100 PRINT"{home}{down*23}{space*39}":PRINT"{home}{down*23}{right*4}"P$"{cyan}"P;:PRINTB$"{cyan}"V;:PRINTS$"{cyan}"S:RETURN
