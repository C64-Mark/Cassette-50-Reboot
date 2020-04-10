!--------------------------------------------------
!- 28 October 2019 21:56:41
!- Import of : TUN.PRG
!- From Disk : c:\users\marka\games\c64\tunnelescape.d64
!- Commodore 64
!--------------------------------------------------
10 GOSUB10000
100 PRINT"{clear}":RESTORE:PRINTCHR$(142):POKE56334,PEEK(56334)AND254:POKE53265,PEEK(53265)AND239:POKE1,PEEK(1)AND251:FORI=0TO2047:POKE49152+I,PEEK(53248+I):NEXTI:POKE1,PEEK(1)OR4:POKE56578,PEEK(56578)OR3:POKE56576,(PEEK(56576)AND252)OR0:POKE648,200:POKE53272,32:MM=49152:V=53248:AB=1:I=3:XC=40:YC=216:SC=0:HS=0:FR=1:PT=5:TP=52199:TC=8
240 POKE54296,15:POKE54277,47:POKE54273,72:POKE54272,169:POKE54278,240:POKE54284,47:POKE54280,15:POKE54279,5:POKE54285,240:FORJ=0TO6:POKEMM+3064+J,48+J:NEXTJ:X=0:FORJ=0TO8:FORK=0TO62:READQ:POKEMM+3072+X,Q:X=X+1:NEXTK:X=X+1:NEXTJ:FORJ=0TO1:FORK=0TO10:READDI(J,K):NEXTK,J:POKEV+16,0:POKEV+21,0:FORJ=0TO6:POKEV+(39+J),7:NEXTJ
420 FORI=49952TO50151:READNC:POKEI,NC:NEXTI:FORI=49824TO49895:READNC:POKEI,NC:NEXTI:POKE56334,PEEK(56334)OR1:POKE53265,PEEK(53265)OR16:GOSUB1700:GOSUB2000
500 JS=15-(PEEK(56321)AND15):IFTP<52166THENJS=2
510 XC=XC+DI(0,JS):YC=YC+DI(1,JS):IFJS=0THENPOKE54283,0:GOTO520
515 SC=SC+PT:POKE54283,129
520 I=I+AB:IFXC>255THENXC=XC-256:POKEV+21,0:POKEV+16,127
540 IFXC<0THENXC=XC+256:POKEV+21,0:POKEV+16,0
550 POKEV+(I*2),XC:POKEV+(1+(I*2)),YC:IFPEEK(V+16)=127THENIFYC>196THENIFXC>30THENGOTO600
570 IFPEEK(V+31)>0THENGOTO800
580 ONI+1GOSUB900,920,930,940,950,960,970:GOTO500
600 POKE54283,0:POKE54276,0:GOSUB620:GOTO640
620 POKE54291,0:POKE54292,240:POKE54287,0:POKE54286,0:POKE54290,0:POKE54290,17:J=0:FORK=0TO9:FORJ=JTOJ+30:POKE54287,J:NEXTJ:J=J-20:NEXTK:POKE54290,0:RETURN
640 BO=TP-52173:IFBO<0THENBO=0
650 BO=(BO+FR)*100:FORJ=1TO8:PRINT"{home}{down*7}";:K=J:FORK=1TOJ:PRINT"{down}";:NEXTK:PRINT"{right*12}{reverse on}{yellow}{space*2}bonus"BO"{left} pts{space*2}{reverse off}":NEXTJ:GOSUB620:SC=SC+BO:GOSUB980:GOSUB620:POKEV+21,0:POKEV+31,0:POKEV+16,0:XC=40:YC=216:FR=FR+1:IFFR>5THENFR=1
730 GOTO890
800 POKE54283,0:POKE54276,0:GOSUB980:POKEV+21,0:POKEV+31,0:GOSUB1100:POKEV+21,0
810 POKEV+31,0:POKEV+16,0:XC=40:YC=216:GOSUB980
850 IFPEEK(51211)=81THENPOKE51211,LVS:GOTO890
860 IFPEEK(51210)=81THENPOKE51210,32:GOTO890
870 IFPEEK(51209)=81THENPOKE51209,32:GOTO890
880 GOTO1800
890 GOSUB2020:I=3:TP=52199:TC=8:GOTO500
900 POKEV+21,1:IFAB=-1THENAB=1:GOSUB980
910 RETURN
920 POKEV+21,2:RETURN
930 POKEV+21,4:RETURN
940 POKEV+21,8:GOSUB1000:RETURN
950 POKEV+21,16:RETURN
960 POKEV+21,32:RETURN
970 POKEV+21,64:IFAB=1THENAB=-1:GOSUB980
975 RETURN
980 IFSC<0THENSC=0:RETURN
982 SC$="{space*6}":SC$=(LEFT$(SC$,5-(LEN(STR$(SC))-1))+LEFT$(STR$(SC),(LEN(STR$(SC))))):PRINT"{home}"TAB(33)SC$;:RETURN
1000 POKETP,93-TC:IFTC=1THENTP=TP-1:TC=9
1020 TC=TC-CLK:IFTP>52173THENRETURN
1050 IFV1=0THENV1=1:POKE54276,17:RETURN
1060 V1=0:POKE54276,0:RETURN
1100 POKEV+28,3:POKEMM+3064,55:POKEMM+3065,56:RP=0:POKEV,XC:POKEV+1,YC:IFXC<10THENXC=10
1120 POKEV+2,XC-10:POKEV+3,YC-10:POKEV+39,10:POKEV+40,10:POKEV+37,7:POKEV+21,1:FORI=1TO200:NEXTI:POKE54290,0:POKE54287,8:POKE54286,47:POKE54291,76:POKE54290,129:POKEV+23,2:POKEV+29,2:POKEV+21,3
1160 FORI=55TO56:POKEMM+3065,I:POKE54290,0:POKE54290,129:FORJ=55TO56.9STEP.05:POKE54290,0:POKE54290,129:POKEMM+3064,J:NEXTJ,I:IFRP=0THENRP=1:GOTO1160
1180 POKEV+21,0:POKEMM+3064,48:POKEMM+3065,49:POKEV+23,0:POKEV+29,0:POKE54290,0:POKEV+39,7:POKEV+40,7:POKEV+28,0:RETURN
1700 GOSUB8500:POKEV+29,127:POKEV+23,127:FORJ=0TO6:POKEV+(J*2),88:POKEV+(J*2)+1,108:NEXTJ:I=3
1720 ONI+1GOSUB1790,920,930,1794,950,960,1792:I=I+AB:FORJ=1TO40:NEXTJ:JS=PEEK(56321)AND16:IFJS=16GOTO1720
1750 POKEV+29,0:POKEV+23,0:POKEV+21,0:POKEV+31,PEEK(V+31)AND0:FORJ=0TO6:POKEV+(J*2),XC:POKEV+(J*2)+1,YC:NEXTJ:I=3:RETURN
1790 POKEV+21,1:IFAB=-1THENAB=1
1791 RETURN
1792 POKEV+21,64:IFAB=1THENAB=-1
1793 RETURN
1794 POKEV+21,8:RETURN
1800 PRINT"{home}{down*8}"TAB(14)"{reverse on}{yellow}{space*2}game{space*2}over{space*2}":PRINT"{home}{down*11}{right*14}{reverse on} press 'fire' ":PRINT"{home}{down*12}"TAB(14)"{reverse on} button for{space*3}":PRINT"{home}{down*13}{right*14}{reverse on} new game !!{space*2}":IFHS>SCGOTO1900
1845 HS=SC:FORJ=1TO5:PRINT"{home}{down*16}";:K=J:FORK=1TOJ:PRINT"{down}";:NEXTK:PRINT"{right*10}{reverse on} new hi-score"HS"{left} pts {reverse off}":NEXTJ:GOSUB620:SC$="{space*6}":SC$=(LEFT$(SC$,5-(LEN(STR$(SC))-1))+LEFT$(STR$(SC),(LEN(STR$(SC))))):PRINT"{home}{right*9}{space*3}{right*9}"SC$"{right*6}{space*6}";:GOSUB620:HS$=SC$
1900 PA=TI
1910 JS=PEEK(56321)AND16:IFJS=16GOTO1950
1920 PRINT"{home}{right*9}QQQ{right*21}{space*6}":POKEV+21,0:POKEV+16,0
1930 POKEV+31,PEEK(V+31)AND0:SC=0:XC=40:YC=216:GOSUB2020:PT=5:FR=1:I=3:TP=52199:TC=8:GOTO500
1950 IFTI>PA+1800THENGOSUB1700:GOTO1970
1960 GOTO1910
1970 GOSUB2000:PRINT"{home}{right*21}"HS$:POKEV+16,0:GOTO1930
2000 PRINT"{clear}{light green}";:POKE53281,0:POKE53280,10:PRINT"{home}{cm c}balloonsQQQ{cm c}hi-score{space*6}{cm c}score{space*6}{cm c}";
2020 PRINT"{home}{down}{light blue}{cm c}{sh pound}{cm u}{cm h}{cm u}{cm h}{cm u}{cm h}{cm j}{cm c}{cm o}{cm n}{cm c*7}{sh pound}{cm n}{cm c}{cm o}{cm j}{cm o}{cm u}{cm p}{cm c*13}";:PT=5:PRINT"{cm c}{cm d}{space*10}{cm n}{cm c*6}{cm d}{cm +}{cm u}{space*4}{cm s}{cm c*3}{cm o}{cm u}{cm h}{cm u}{cm h}{cm j}{cm c}{cm o}{cm n}{cm c}";:POKE53281,0:POKE53280,10:PRINT"{cm c}{cm a}{space*10}{cm s}{cm c*5}{cm u}{space*8}{cm p}{cm z}{space*6}{cm +}{cm u} {cm w}{cm c}";:PRINT"{cm c}{cm pound}{sh @}{space*10}{cm p}{cm c*3}{cm z}{space*9}{cm s}{cm d}{space*9}{cm p}{cm c}";
2060 PRINT"{cm c}{sh pound}{cm u}{space*3}{cm r}{cm f}{sh @}{space*4}{cm w}{cm c*3}{cm e}{space*20}{cm s}{cm c}";:PRINT"{cm c}{cm e}{space*3}{cm l}{cm q}{cm c*2}{cm d}{space*3}{cm p}{cm c*2}{cm o}{cm u}{space*4}{cm l}{sh @}{space*7}{cm @}{sh @}{space*5}{cm r}{cm c}";:PRINT"{cm c}{cm z}{space*3}{cm h}{cm n}{cm c}{cm z}{space*4}{cm +}{cm j}{cm z}{space*5}{cm r}{cm c*3}{cm a}{space*5}{cm w}{cm c}{cm f}{sh @}{space*3}{cm +}{cm c}";:PRINT"{cm c}{cm d}{space*4}{cm w}{cm c}{cm e}{space*4}{cm @}{cm y}{cm e}{space*5}{cm w}{cm c*3}{cm pound}{sh @}{cm l}{sh @}{cm l}{cm y}{cm c*2}{cm o}{cm u}{space*3}{cm r}{cm c}";:PRINT"{cm c}{cm f}{cm g}{space*2}{cm r}{cm c*3}{cm f}{cm g}{space*2}{cm s}{cm c*2}{cm pound}{sh @}{space*3}{cm p}{cm c}{cm o}{cm u}{cm h}{cm u}{cm h}{cm j}{cm o}{cm j}{cm c}{cm a}{space*5}{cm w}{cm c}";
2110 PRINT"{cm c}{cm o}{cm m}{space*2}{cm s}{cm c*3}{cm o}{cm m}{space*2}{cm r}{cm c*2}{cm o}{cm u}{space*3}{cm w}{cm z}{space*8}{cm p}{cm e}{space*5}{cm p}{cm c}";:PRINT"{cm z}{space*5}{cm c*3}{cm a}{space*3}{cm +}{cm u}{space*6}{cm c}{cm d}{space*8}{cm s}{cm z}{space*5}{cm w}{cm c}";:PRINT"{cm pound}{cm g}{space*4}{cm n}{cm c*2}{cm d}{space*10}{cm r}{cm e}{space*10}{cm m}{space*3}{cm l}{cm q}{cm c*2}";:PRINT"{cm c}{cm e}{space*4}{cm s}{cm c*2}{cm f}{cm g}{space*9}{cm w}{cm c}{space*3}{cm l}{cm y}{cm pound}{space*8}{cm p}{cm c*3}";:PRINT"{cm c}{cm z}{space*5}{cm c*3}{cm pound}{sh @}{space*2}{cm l}{sh @}{cm l}{cm y}{cm c}{cm z}{cm h}{cm u}{space*3}{cm h}{cm n}{cm c}{cm e}{space*7}{cm w}{cm c*3}";
2160 PRINT"{cm c}{cm pound}{sh @}{space*4}{cm p}{cm c*4}{cm f}{cm y}{cm c*2}{sh pound}{cm j}{cm o}{cm m}{space*6}{cm w}{cm c*2}{cm f}{sh @} {cm l}{sh @}{cm l}{cm y}{cm c*4}";:PRINT"{cm c*3}{cm a}{space*4}{cm p}{cm c*3}{cm o}{cm j}{cm o}{cm u}{space*9}{cm r}{cm c}{cm o}{cm u}{cm h}{cm u}{cm h}{cm j}{cm o}{cm j}{cm o}{cm u}{cm p}{cm c*2}";:PRINT"{cm c*3}{cm pound}{sh @}{space*3}{cm w}{cm c*2}{cm z}{space*11}{cm r}{cm f}{cm q}{cm z}{space*10}{cm +}{cm u}{cm c}";:PRINT"{cm c*3}{sh pound}{cm u}{space*3}{cm p}{cm c*2}{cm d}{space*9}{cm r}{cm f}{cm q}{cm c*2}{cm d}{space*11}{cm r}{cm c}";:PRINT"{cm c}{cm o}{cm j}{cm d}{space*4}{cm +}{cm n}{cm c}{cm a}{space*4}{cm l}{sh @}{space*2}{cm @}{cm q}{cm o}{cm u}{cm h}{cm u}{space*3}{cm @}{space*8}{cm s}{cm c}";
2210 PRINT"{cm z}{space*8}{cm w}{sh pound}{cm m}{space*4}{cm h}{cm u}{space*11}{cm w}{space*8}{cm r}{cm c}";:PRINT"{cm e}{space*6}{cm @}{cm y}{cm c}{cm e}{space*18}{cm p}{cm g}{space*2}{cm r}{reverse on}{white}{space*4}{reverse off}{light blue}{cm c*2}";:PRINT"{cm z}{space*6}{cm +}{cm n}{cm c*2}{cm a}{space*17}{cm w}{cm pound}{sh @}{cm l}{cm q}{reverse on}{white}land{reverse off}{light blue}{cm c*2}";:PRINT"{cm e}{space*7}{cm w}{cm c*2}{cm pound}{sh @}{cm l}{sh @}{cm l}{sh @}{cm l}{sh @}{cm l}{cm y}{cm f}{cm y}{cm f}{cm y}{cm f}{sh @}{cm l}{cm y}{cm c*5}{reverse on}{white}here{reverse off}{light blue}{cm c*2}";:GOSUB2300:RETURN
2300 PRINT"{reverse on}{white} time {reverse off}";:FORJ=0TO34:POKE52166+J,84:NEXTJ:FORJ=0TO7:POKE56262+J,2:NEXTJ:FORJ=8TO34:POKE56262+J,7:NEXTJ:RETURN
8500 POKE53280,0:POKE53281,0:PRINT"{clear}{reverse on}{light gray}{space*2}tunnel escape{space*2}by cascade games ltd{space*2}{down}{yellow}":PRINT" steer your ballon through the tunnel !{space*2}use joystick in port one.";:PRINT" there{space*2}is{space*2}a{space*2}time limit in force.{space*2}bonus points for":PRINT" each safe landing. press fire to start":RETURN
9000 DATA0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63,0,0,127,128,0,255,192,0,255,192,0,255,240,0,255,248,0,255,216,0,255,192,0,127,128,0,63,60,0,0,60,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,31,128,0,63,192,0,127,224,0
9040 DATA255,224,0,255,240,0,255,240,0,255,250,0,127,248,0,63,250,0,31,154,0,12,0,0,7,2,0,0,188,0,0,60,0,0,60,0,0,0,0,0,0,0,0,0,0,7,224,0,15,240,0,31,248,0,63,252,0,63,252,0,63,252,0,63,252,0,31,248,0,15,250,0,7,240,0,0,58,0,2,26,0,1,24,0
9080 DATA0,130,0,0,66,0,0,60,0,0,60,0,0,60,0,0,0,0,0,126,0,0,255,0,1,255,128,3,255,192,3,255,192,3,255,192,3,255,192,1,255,128,0,255,0,2,126,64,1,60,128,1,24,128,0,24,0,0,153,0,0,153,0,0,66,0,0,66,0,0,60,0,0,60,0,0,60,0
9120 DATA0,0,0,0,0,0,0,0,0,0,7,224,0,15,240,0,31,248,0,63,252,0,63,252,0,63,252,0,63,252,0,31,248,0,95,240,0,15,224,0,92,0,0,88,64,0,24,128,0,65,0,0,66,0,0,60,0,0,60,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,248,0,3,252,0,7,254,0,7,255
9160 DATA0,15,255,0,15,255,0,95,255,0,31,254,0,95,252,0,89,248,0,0,48,0,64,224,0,61,0,0,60,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,252,0,1,254,0,3,255,0,3,255,0,15,255,0,31,255,0,27,255,0,3,255,0,1,254,0,60,252
9200 DATA0,60,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,0,0,186,128,10,247,128,47,123,128,181,151,224,173,85,120,11,95,248,2,222,160,2,222,0,2,222,0,0,190,0,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0
9240 DATA0,0,0,0,0,0,0,2,128,0,138,232,2,239,120,11,117,224,45,119,168,47,87,254,10,213,94,11,85,248,11,87,160,45,221,128,181,221,224,183,223,120,46,187,94,8,34,222,0,0,184,0,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,-3,-2,-2,0,3,2,2
9310 DATA0,-3,3,0,0,-2,2,0,0,-2,2,0,0,0,3,15,15,31,31,0,0,0,192,240,240,248,248,31,31,15,15,3,0,0,0,248,248,240,240,192,0,0,0,240,240,248,252,255,255,255,255,255,255,255,255,252,248,240,240,255,255,255,255,63,31,15,15
9470 DATA15,15,31,63,255,255,255,255,240,240,224,224,224,192,192,128,255,254,254,252,252,252,248,248,15,15,7,7,7,3,3,1,255,127,127,63,63,63,31,31,128,192,192,224,224,224,240,240,248,248,252,252,252,254,254,255
9540 DATA1,3,3,7,7,7,15,15,31,31,63,63,63,127,127,255,255,127,31,3,0,0,0,0,255,255,255,255,255,63,7,1,0,0,0,0,3,31,127,255,1,7,63,255,255,255,255,255,255,254,248,192,0,0,0,0,255,255,255,255,255,252,224,128
9620 DATA0,0,0,0,192,248,254,255,128,224,252,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,254,254,254,254,254,254,254,254,252,252,252,252,252,252,252,252,248,248,248,248,248,248,248,248
9690 DATA240,240,240,240,240,240,240,240,224,224,224,224,224,224,224,224,192,192,192,192,192,192,192,192,128,128,128,128,128,128,128,128,0,0,0,0,0,0,0,0
10000 SYS65409
10010 PRINT"{clear}unlimited balloons (y/n)?"
10020 GETA$:IFA$=""THEN10020
10030 LVS=81:IFA$="n"THENLVS=32
10040 IFLVS=81ANDA$<>"y"THEN10020
10050 PRINT"{clear}unlimited time (y/n)?"
10060 GETA$:IFA$=""THEN10060
10070 CLK=0:IFA$="n"THENCLK=1
10080 IFCLK=0ANDA$<>"y"THEN10060
10090 RETURN
