!--------------------------------------------------
!- 27 October 2019 08:41:58
!- Import of : GHOSTS.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\ghosts.d64
!- Commodore 64
!--------------------------------------------------
10 GOSUB10000:S1=54272:V=53248:GOSUB5000
210 GOSUB6000:GOSUB4600:GOSUB7120:POKE808,225:POKESC+P,G:POKECO+P,7
420 ONZ1GOSUB1000,9800:IFN1=230THENGOSUB7500
430 IFN=0THEN8000
440 POKES1+8,0:T=0:R%=RND(1)*2:ONR%+1GOSUB2400,2410:GOTO420
998 STOP
1000 GETR$:IFR$=""THENRETURN
1005 IFR$="a"THENGOSUB1100:RETURN
1010 IFR$="z"THENGOSUB1200:RETURN
1020 IFR$="."THENGOSUB1300:RETURN
1030 IFR$=","THENGOSUB1400:RETURN
1040 RETURN
1100 IFPEEK(SC+P-40)=160THENRETURN
1105 POKESC+P,32:P=P-40:Y=Y-40:G=66:GOSUB1500:RETURN
1200 IFPEEK(SC+P+40)=160THENRETURN
1205 POKESC+P,32:P=P+40:Y=Y+40:G=67:GOSUB1500:RETURN
1300 IFPEEK(SC+P+1)=160THENRETURN
1305 POKESC+P,32:P=P+1:X=X+1:G=65:GOSUB1500:RETURN
1400 IFPEEK(SC+P-1)=160THENRETURN
1405 POKESC+P,32:P=P-1:X=X-1:G=68:GOSUB1500:RETURN
1500 U=PEEK(SC+P):POKESC+P,G:POKECO+P,7:IFU=32THENRETURN
1520 IFU=69THENS=S+10:POKES1+8,100:GOSUB4100:RETURN
1550 IFU=42THENGOSUB1700:RETURN
1560 IFU>67THENGOSUB7400
1570 IFU=71THENGOSUB7000
1600 RETURN
1700 S=S+50:GOSUB4100:POKES1+4,17:POKES1+1,100:FORG2=1TO10:NEXT:POKES1+1,200:FORG2=1TO10:NEXT:T9=155:B(0)=7:FL=1:RETURN
1998 STOP
2000 H1=SC+G(T):H=PEEK(H1+1):IFH=160THENR%=RND(1)*2+1:ONR%GOSUB2100,2200,2300:RETURN
2015 POKEH1,69:POKECO+G(T),6:GX(T)=GX(T)+1:GOSUB2900:RETURN
2100 H1=SC+G(T):H=PEEK(H1-1):IFH=160THENR%=RND(1)*2+1:ONR%GOSUB2000,2200,2300:RETURN
2115 POKEH1,69:POKECO+G(T),6:IFH=32THENNO=NO+1
2120 GX(T)=GX(T)-1:GOSUB2900:RETURN
2200 H1=SC+G(T):H=PEEK(H1-40):IFH=160THENR%=RND(1)*2+1:ONR%GOSUB2000,2100,2300:RETURN
2215 POKEH1,69:POKECO+G(T),6:GY(T)=GY(T)-40:GOSUB2900:RETURN
2300 H1=SC+G(T):H=PEEK(H1+40):D=0:IFH=160THENR%=RND(1)*2+1:ONR%GOSUB2000,2100,2200:RETURN
2315 POKEH1,69:POKECO+G(T),6:GY(T)=GY(T)+40:GOSUB2900:RETURN
2400 IFX>GX(T)THENGOSUB2000:RETURN
2410 IFX<GX(T)THENGOSUB2100:RETURN
2415 IFY<GY(T)THENGOSUB2200:RETURN
2420 IFY>GY(T)THENGOSUB2300
2440 RETURN
2900 G(T)=GX(T)+GY(T):P(T)=PEEK(SC+G(T)):POKEG(T)+SC,71:IFFL=1THENPOKES1+1,T9:T9=T9-1:IFT9=130THENFL=0:GOSUB7000
2907 IFP(T)=GTHENGOSUB7000
2910 POKECO+G(T),B(T):RETURN
3998 STOP
4000 PRINT"{home}{blue}score:="S;TAB(15)"{yellow}A"N;TAB(25)"{blue}hiscore :="H(1):PRINT"{home}"TAB(14)"{down*2}{blue}last score="L:PRINT:RETURN
4100 PRINT"{home}{cyan}"TAB(7)S:N1=N1+1:RETURN
4200 PRINT"{home}{cyan}"TAB(16)N:RETURN
4600 GOSUB4000:PRINT"{home}{down*3}":FORZ=0TO15:PRINT"{blue}{right}"A$(Z):NEXT:POKE1463,160:POKE55735,6:POKE1543,160:POKE55815,6:RETURN
5000 DIMH$(5),H(5),A$(15),G(1),B(1),GX(1),GY(1),FC(3),FR(3):L=0:CO=55296:SC=1024:LO=14336:DEFFNR(X)=INT(RND(1)*X)+1:Z1=1:FORT=1TO5:H$(T)=" g h o s t s ":NEXT:PRINT"{clear}"CHR$(8):POKE53280,2:POKE53281,2:POKE53272,21:PRINTTAB(10)"{down*2}welcome to ghosts
5090 PRINTTAB(4)"{down*3} s e t t i n g{space*2}g r a p h i c s ":POKE808,225:POKE56334,PEEK(56334)AND254:POKE1,PEEK(1)AND251:FORT=0TO512:POKELO+T,PEEK(53248+T):NEXT:FORT=760TO848:POKE1024+LO+T,PEEK(54272+T):NEXT:POKE1,PEEK(1)OR4:POKE56334,PEEK(56334)OR1:S1=54272:POKES1+24,15:POKE1+4,16:POKES1+11,128
5210 POKES1+1,0:POKES1+8,0:POKES1+5,255:POKES1+6,10:POKES1+12,200:POKES1+13,16:FORT=0TO79:READA%:POKE14848+T,A%:NEXT:FORT=15616TO15623:POKET,255:NEXT:FORT=0TO15:READA$(T):NEXT:FORG5=1TO3:READA%,B%:FR(G5)=A%:FC(G5)=B%:NEXT:POKE53272,31:RETURN
5996 STOP
6000 S=0:N=3:GOSUB9000
6002 G(0)=578:GX(0)=18:GY(0)=560:X=23:Y=720:G=65:P=X+Y:N1=0:NO=234:B(0)=2:POKES1+11,129:POKES1+4,17:POKE53280,0:POKE53281,0:POKE650,255:RETURN
7000 ONFL+1GOSUB7100,7200:RETURN
7100 FORQ1=0TO255STEP5:POKE53281,Q1:POKES1+8,Q1:NEXT:POKESC+G(T),32:POKES1+8,0:POKESC+P,32:N=N-1:IFN=0THENRETURN
7115 GOSUB6002:GOSUB4200
7120 POKECO+P,7:POKESC+P,64:POKES1+4,17:FORH7=1TO3:POKES1+1,11:FORQ1=1TO150:NEXT:POKES1+1,9:FORQ1=1TO150:NEXT:POKES1+1,8:FORQ1=1TO150:NEXTQ1,H7:POKES1+1,16:FORQ1=1TO440:NEXT:POKES1+1,22:FORQ1=1TO100:NEXT:POKES1+1,0:POKES1+4,16:GOSUB7300:RETURN
7200 FORH8=1TO3:FORH9=1TO255STEP8:POKES1+1,H9:NEXTH9:NEXTH8:POKES1+4,16:POKES1+1,0:G(0)=578:GX(0)=18:GY(0)=560:S=S+200:GOSUB4100:FL=0:B(0)=2:GOSUB7300:RETURN
7300 R%=6*RND(1):IFF9=0ANDR%<>0ANDR%<4THENPOKESC+420,FR(R%):POKECO+420,FC(R%)
7310 RETURN
7400 FORA9=1TO3:IFU<>FR(A9)THENNEXT:RETURN
7410 S=S+100*A9:GOSUB4100:POKES1+4,33:FORO1=-255TO255STEP15:POKES1+1,ABS(O1):FORO9=1TO10:NEXTO9,O1:POKES1+1,0:POKES1+4,16:RETURN
7500 POKES1+4,33:FORHJ=1TO15:FORHK=10*HJTO255STEP10:POKES1+1,HK:FORHL=1TO5:NEXTHL,HK:POKE53281,HJ:NEXTHJ:POKE53280,0:POKES1+4,16:N1=0:PRINT"{clear}":GOSUB6002:GOSUB4600:POKES1+8,0:POKES1+1,0:RETURN
8000 POKES1+8,0:POKES1+1,0:POKE53281,0:FORH9=1TO5:IFS>H(H9)THENGOSUB8500
8005 NEXT:PRINT"{clear}{yellow}{space*5}hall of fame":PRINT"{space*5}{cm +*12}":PRINT"{down*2}":FORH9=1TO5:PRINT"{down}{blue}"H9;TAB(5)"{yellow}"H(H9)TAB(14)"{pink}"H$(H9):NEXT:PRINT"{down*2}{red} -press the space bar to continue -
8060 GETR$:IFR$<>" "THEN8060
8070 L=S:PRINT"{clear}":GOTO210
8500 Q$="":FORH8=4TOH9STEP-1:H(H8+1)=H(H8):H$(H8+1)=H$(H8):NEXT:H(H9)=S:POKE53272,21:PRINT"{clear}{right*7}{red}congratulations!!":PRINT"{down*2}{right*3}{yellow}your score is in the top 5":PRINT"{down}{right}{down}{right*2}{orange}please enter your name below":PRINT"{down*2}{reverse on}{right*2}{cyan}{right*4}{space*19}":PRINT"{up}{reverse on}"TAB(7);:POKE198,0
8560 R$="":GETR$:IFR$=""THEN8560
8570 R=ASC(R$):IFR<32ANDR>93ANDR<>13ANDR<>20THEN8560
8575 IFQ$=""ANDR=20THEN8560
8580 IFR=13THEN8700
8590 IFR=20THENPOKE1530,160:POKE55802,1:Q$=LEFT$(Q$,LEN(Q$)-1):PRINTR$;:GOTO8560
8600 IFLEN(Q$)<21THENQ$=Q$+R$:PRINTR$;:GOTO8560
8610 GOTO8560
8700 PRINT"{f3}":H$(H9)=Q$:H9=5:POKE53272,31:RETURN
9000 POKE53280,2:POKE53281,0:POKE53272,31:PRINT"{clear}{down}{space*13}g h o s t s{space*3}":PRINT"{pink}{space*27}":PRINT"{space*4}eat all the food but be quick":PRINT"{space*4}to meet a ghost means death":PRINT"{space*2}unless you have eaten a power pill{space*2}*
9050 PRINT"{space*4}eat bonus fruits to score extra":PRINT"{space*4}eat a '*' and you can kill a ghost":PRINT"{down}{purple}controls :joystick or keys:":ONZ1GOSUB9500,9600:PRINT"{down}{cyan}press 'p'play 'c'change controls 'e'exit":PRINT"{home}{down*3}":PA$="{purple}{space*3}c a s c a d e":P9$="{pink}{space*3}(c) 1 9 8 4 
9090 POKE198,0
9100 FORAS=1TO37:PRINTTAB(AS)"{up} {yellow}A":IFAS>9THENPRINT"{up}"TAB(9)LEFT$(PA$,AS-9)
9110 IFPEEK(198)<>0THEN9200
9120 FORAD=1TO50:NEXTAD,AS:PRINT"{up}"TAB(38)"{sh space}":FORAS=1TO37:PRINTTAB(AS)"{up} {red}":IFAS>10THENPRINT"{up}"TAB(10)LEFT$(P9$,AS-10)
9140 IFPEEK(198)<>0THEN9200
9150 FORAD=1TO50:NEXTAD,AS:PRINT"{up}"TAB(38)"{sh space}":GOTO9100
9200 W1=PEEK(197):IFW1=41THENPRINT"{clear}":RETURN
9210 IFW1=14THENPOKE53280,14:POKE53281,6:PRINT"{clear}{light blue}";:END
9220 IFW1=20THENGOSUB9700:GOTO9000
9230 GOTO9000
9500 PRINTTAB(16)"{down}{yellow}a{down*2}{left*3}, {red}+{yellow} .":PRINTTAB(16)"{down}{yellow}z":RETURN
9600 PRINT"{down}{right*8}joystick port 1{down*2}":RETURN
9700 PRINT"{clear}press:-":PRINT"{down*2}{space*6}1] keyboard control":PRINT"{down}{space*6}2] joystick control
9730 GETR$:IFR$=""THEN9730
9740 R=VAL(R$):IFR<1ORR>2THEN9700
9750 Z1=R:RETURN
9800 GETQW$:IFQW$=""THEN9840
9810 IFQW$="{arrow left}"THENGOSUB1200:RETURN
9820 IFQW$="{right}"THENGOSUB1400:RETURN
9830 IFQW$="2"THENGOSUB1300:RETURN
9840 IFPEEK(56321)=254THENGOSUB1100
9850 RETURN
10000 POKE808,225:POKE56334,PEEK(56334)AND254:POKE1,PEEK(1)AND251:FORG=0TO64*8:POKE14336+G,PEEK(53248+G):NEXT:POKE1,PEEK(1)OR4:POKE56334,PEEK(56334)
10070 READA%:T=T+1:IFA%<>-1THENPOKE14336+G+T,A%:GOTO10070
10080 POKE53272,31:DATA 255,129,129,129,129,129,129,255,-1:RETURN
20000 DATA 56,124,254,254,254,126,56,0, 60,126,248,224,248,126,60,0, 0,66,195,231,231,126,60,0, 60,126,255,231,195,66,0,0, 60,126,31,15,31,126,60,0, 0,0,56,56,56,0,0,0, 4,8,56,68,231,255,231,66
20070 DATA 24,254,146,146,254,254,170,170, 32,16,124,154,124,56,16,0, 16,56,124,124,124,56,0,0,     "{reverse on}{space*38}",     "{reverse on} {reverse off}*EEEEEEEEEEE{reverse on}{space*8}{reverse off}EEEEEEEEEEEEEEE*{reverse on} 
20120 DATA         "{reverse on} {reverse off}E{reverse on}{space*3}{reverse off}E{reverse on}{space*6}{reverse off}EEEEEEEEEE{reverse on}{space*9}{reverse off}E{reverse on}{space*3}{reverse off}E{reverse on}{space*2}",     "{reverse on} {reverse off}EEEEEEEEEEEE{reverse on}{space*3}{reverse off}E{reverse on}{space*4}{reverse off}EEEEEEEEEEEEEEEE{reverse on} ",    "{reverse on}{space*3}{reverse off}E{reverse on}{space*8}{reverse off}EEEEEEEEEE{reverse on}{space*3}{reverse off}E{reverse on}{space*5}{reverse off}E{reverse on}{space*2}{reverse off}E{reverse on} {reverse off}E{reverse on} ",     "{reverse on}{space*3}{reverse off}E{reverse on}{space*3}{reverse off}EEE{reverse on}{space*2}{reverse off}E{reverse on}{space*4}{reverse off}E{reverse on}{space*2}{reverse off}EEE{reverse on} {reverse off}EEE{reverse on}{space*4}{reverse off}E{reverse on}{space*2}{reverse off}E{reverse on}{space*3}
20170 DATA     "{reverse on}{space*3}{reverse off}EEEEE{reverse on} {reverse off}EEEEEEEEEEEEE{reverse on}{space*2}{reverse off}E{reverse on} {reverse off}E{reverse on}{space*4}{reverse off}EE{reverse on} {reverse off}E{reverse on} ",     "{reverse on} {reverse off}EEEE{reverse on}{space*2}{reverse off}E{reverse on}{space*2}{reverse off}E{reverse on} {reverse off}E{reverse on}{space*3}{reverse off}EEE{reverse on}{space*2}{reverse off}EEEEEEEEEEEEEEE ",     "{space*3}{reverse off}E{reverse on}{space*3}{reverse off}E{reverse on}{space*2}{reverse off}E{reverse on} {reverse off}EEEEEEE{reverse on}{space*8}{reverse off}E{reverse on}{space*3}{reverse off}E{reverse on}{space*2}{reverse off}E{reverse on} ",     "{reverse on}{space*3}{reverse off}EE{reverse on}{space*2}{reverse off}E{reverse on}{space*2}{reverse off}E{reverse on} {reverse off}E{reverse on}{space*3}{reverse off}EEE{reverse on}{space*2}{reverse off}EEEE{reverse on} {reverse off}EEEEEEEEEEE{reverse on} 
20210 DATA      "{reverse on}{space*3}{reverse off}E{reverse on}{space*3}{reverse off}EEEE{reverse on} {reverse off}E{reverse on}{space*4}{reverse off}E{reverse on}{space*2}{reverse off}EEE{reverse on} {reverse off}EEE{reverse on}{space*4}{reverse off}E{reverse on}{space*2}{reverse off}E{reverse on} {reverse off}E{reverse on} ",     "{reverse on}{space*3}{reverse off}E{reverse on}{space*8}{reverse off}EEEEEEEEEE{reverse on}{space*3}{reverse off}E{reverse on}{space*5}{reverse off}E{reverse on}{space*2}{reverse off}E{reverse on} {reverse off}E{reverse on} ",     "{reverse on} {reverse off}EEEEEEEEEEEE{reverse on}{space*3}{reverse off}E{reverse on}{space*4}{reverse off}EEEEEEEEEEEEEEEE{reverse on} ",     "{reverse on} {reverse off}E{reverse on}{space*3}{reverse off}E{reverse on}{space*6}{reverse off}EEEEEEEEEE{reverse on}{space*9}{reverse off}E{reverse on}{space*3}{reverse off}E{reverse on}{space*2}
20250 DATA     "{reverse on} {reverse off}*EEEEEEEEEEE{reverse on}{space*8}{reverse off}EEEEEEEEEEEEEEE*{reverse on} ",     "{reverse on}{space*38}", 70,2,72,3,73,8:POKE53280,0:POKE53281,0:PRINT"{clear}{orange*2}
