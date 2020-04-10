!--------------------------------------------------
!- 26 October 2019 23:20:53
!- Import of : SUMS.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\doyoursums.d64
!- Commodore 64
!--------------------------------------------------
1 CC=0:DD=0:PRINT"{clear}":PRINT"{down*9}{right*12}do your sums !":POKE53280,5:POKE53281,0:LL=40:PL=23:SP=1024:CP=55296:FORY=0TO2:FORX=0TOLL-1-3*Y:POKESP+LL*(22-2*Y)+Y+X,42:POKECP+LL*(22-2*Y)+Y+X,5:NEXT:FORX=0TOPL-4*Y-2
100 POKESP+(LL*(21-2*Y))+LL-1-2*Y-LL*X,42:POKECP+(LL*(21-2*Y))+LL-1-2*Y-LL*X,5:NEXT:FORX=0TOLL-2-4*Y:POKESP+LL-2-2*Y+LL*2*Y-X,42:POKECP+LL-2-2*Y+LL*2*Y-X,5:NEXT:FORX=0TOPL-4*Y-3:POKESP+LL*2*Y+2*Y+LL*X,42:POKECP+LL*2*Y+2*Y+LL*X,5:NEXT:NEXT:READD
470 FORSX=1TO500:NEXTSX:PRINT"{clear}":POKE53280,0:POKE53281,0:PRINT"my name is c64.":PRINT:PRINT"what is your name?":PRINT:INPUTA7$:PRINT:PRINT"hello "A7$"!":PRINT:PRINT"how old are you?":PRINT:INPUTB:PRINT:PRINT"is that all!":PRINT:PRINT"i'm"B+1"i am.":PRINT:PRINT"can i play with you?
580 GETB$:IFB$=""THEN580
590 IFB$="y"THEN620
600 IFB$="n"THEN3180
610 GOTO580
620 PRINT"{clear}":POKE53280,0:POKE53281,0:PRINT"{white}o.k!":PRINT:PRINT"now what can we play?":PRINT:PRINT"i know!":PRINT:PRINT"can you do maths?":PRINT
680 GETC$:IFC$=""THEN680
681 IFC$="n"THENPRINT"i think you can!{down*2}{left*16}will you try?{down}":GOTO691
690 PRINT"good!":PRINT:GOTO700
691 GETC$:IFC$=""THEN691
692 IFC$="n"THENEND
700 PRINT"we'll play a game":PRINT:PRINT"i know called do your sums":PRINT:PRINT"it's great fun!":PRINT:PRINT"i bet i'll win!":PRINT:PRINT"ready?
750 GETC$:IFC$=""THEN750
760 IFC$="y"THEN780
770 GOTO750
780 PRINT"{clear}":POKE53280,8:PRINT"this is what we do":PRINT:PRINT"i'll give you a sum.":PRINT:PRINT"if you get it right,":PRINT:PRINT"i'll draw":PRINT:PRINT"part of your house.":PRINT:PRINT"if you get it wrong,":PRINT:PRINT"i'll draw":PRINT:PRINT"part of my house!":PRINT
880 PRINT"the first to finish":PRINT:PRINT"is the winner.":PRINT:PRINT"instructions(y/n)?
1000 GETD$:IFD$=""THEN1000
1005 IFD$<>"y"ANDD$<>"n"THEN1000
1010 IFD$="y"THENGOSUB5000
1030 PRINT"{clear}"CHR$(142):AA=0:BB=0:POKE53280,8:POKE53281,0:FORX=0TOPL-1:POKESP+7+LL*X,102:POKECP+7+LL*X,2:NEXT:FORX=0TOLL-9:POKESP+8+11*LL+X,102:POKECP+8+11*LL+X,2:NEXT:FORY=0TO22:FORX=0TO6:POKESP+X+Y*LL,160:POKECP+X+Y*LL,6:NEXT:NEXT
2070 N$="{green}{reverse on}{space*14}{reverse off}":O$="{black}{reverse on}OOOO{reverse off}{space*7}{reverse on}OOO{reverse off}":P$="{yellow}{reverse on}{space*7}{up}{left*7}{space*7}{up}{left*7}{space*7}{up}{left*7}{space*7}{up}{left*7}{space*7}{reverse off}":Q$="{white}{reverse on}{space*3}{reverse off}":R$="{white}{reverse on}{space*3}{reverse off}":S$="{white}{reverse on} {reverse off}":U$="{blue}{reverse on} {up}{left} {reverse off}":V$="{red}{reverse on}{sh pound}{space*5}{cm asterisk}{up}{left*6}{sh pound}{space*3}{cm asterisk}{reverse off}":W$="{black}{cm i}{reverse off}
2155 PRINT"{home}"TAB(2)"{blue}{reverse on}{down*13}{space*3}{reverse off}":PRINT"{home}{blue}{reverse on}{down*9}{right*2}htu":GOTO2170
2170 A1=INT(RND(1)*99+1):B1=INT(RND(1)*99+1):C1=INT(RND(1)*2+1):J=0:ONC1GOTO2210,2230
2210 D1$="+":GOTO2240
2230 D1$="-
2240 IFD1$="-"ANDB1>A1THENZ1=A1:A1=B1:B1=Z1
2250 PRINT"{home}":IFA1<=9THENPRINT"{blue}{reverse on}{down*9}{right*3}"A1:GOTO2280
2270 PRINT"{blue}{reverse on}{down*9}{right*2}"A1
2280 PRINT"{home}":IFB1<=9THENPRINT"{blue}{reverse on}{down*10}{right*3}"B1;:GOTO2320
2310 PRINT"{blue}{reverse on}{down*10}{right*2}"B1;
2320 PRINT"{blue}{reverse on}{left}"D1$:PRINT"{home}":PRINT"{blue}{reverse on}{down*11}{right*2}---
2350 A2$="":B2$="":C2$="
2355 GETA2$:IFA2$=""THEN2355
2360 IFA2$<CHR$(48)ORA2$>CHR$(57)THEN2355
2370 PRINT"{home}{blue}{reverse on}{down*13}{right*4}"A2$;
2380 GETB2$:IFB2$=""THEN2380
2390 IFB2$<CHR$(48)ORB2$>CHR$(57)ANDB2$<>"m"ANDB2$<>"e"THEN2380
2395 IFB2$="m"THENPRINT"{home}{blue}{down*13}{reverse on}{right*2}{space*3}{reverse off}":GOTO2350
2396 IFB2$="e"THEN2450
2400 PRINT"{blue}{reverse on}{left*2}"B2$;
2420 GETC2$:IFC2$=""THEN2420
2430 IFC2$<CHR$(48)ORC2$>CHR$(57)ANDC2$<>"m"ANDC2$<>"e"THEN2420
2435 IFC2$="m"THENPRINT"{home}{blue}{down*13}{reverse on}{right*2}{space*3}{reverse off}":GOTO2350
2436 IFC2$="e"THEN2450
2440 PRINT"{blue}{reverse on}{left*2}"C2$
2445 GETD2$:IFD2$=""THEN2445
2446 IFD2$<>"m"ANDD2$<>"e"THEN2445
2447 IFD2$="m"THENPRINT"{home}{blue}{down*13}{reverse on}{right*2}{space*3}{reverse off}":GOTO2350
2450 N3=1:IFD1$="+"THENN3=N3+1
2470 ONN3GOTO2480,2510
2480 M3=1:IFA1-B1<=9THENB2$="
2490 IFA1-B1=VAL(B2$+A2$)THENM3=M3+1
2500 GOTO2530
2510 M3=1:IFA1+B1=<99THEN2522
2521 IFA1+B1=VAL(C2$+B2$+A2$)THENM3=M3+1:GOTO2530
2522 IFA1+B1=VAL(B2$+A2$)THENM3=M3+1
2530 ONM3GOSUB3350,3480:IFM3=1THENGOSUB4000
2540 IFAA=10ORBB=10GOTO2570
2544 IFJ=2GOTO2550
2545 IFM3=1GOTO2350
2550 GOTO2155
2570 IFAA=10THENCC=CC+1:GOTO2710
2580 DD=DD+1:FORX=0TO10:FORY=0TO13:POKESP+8+Y+LL*X,160:POKECP+8+Y+LL*X,0:NEXT:NEXT:PRINT"{home}":PRINTTAB(8)"{black}{reverse on}well done ":PRINTTAB(8)"{down}{reverse on}"A7$"{reverse off}":PRINT:PRINTTAB(8)"{black}{reverse on}you have won!":PRINT:PRINTTAB(8)"{black}{reverse on}another game?
2670 GETZ$:IFZ$=""THEN2670
2680 IFZ$="y"THEN1030
2690 IFZ$="n"THEN2830
2700 GOTO2670
2710 FORX=0TO10:FORY=0TO13:POKESP+LL*12+8+Y+LL*X,160:POKECP+LL*12+8+Y+LL*X,6:NEXT:NEXT:PRINT"{reverse on}{home}{blue}{down*13}{right*8}hard luck":PRINTTAB(8)"{down}{reverse on}"A7$"{reverse off}":PRINT:PRINTTAB(8)"{blue}{reverse on}i have won!":PRINT:PRINTTAB(8)"{blue}{reverse on}another game?
2790 GETZ$:IFZ$=""THEN2790
2800 IFZ$="y"THEN1030
2810 IFZ$="n"THEN2830
2820 GOTO2790
2830 PRINT"{clear}":PRINTTAB(5)"{reverse on} results. {reverse off}":PRINT:IFCC=1THENPRINTTAB(2)"c64:-"TAB(13)CCTAB(18)"win":PRINT:GOTO2865
2860 PRINTTAB(2)"c64:-"TAB(13)CCTAB(18)"wins":PRINT
2865 IFDD=1THENPRINTTAB(2)A7$":-"TAB(13)DDTAB(18)"win":PRINT:PRINT:GOTO2880
2870 PRINTTAB(2)A7$":-"TAB(13)DDTAB(18)"wins":PRINT:PRINT
2880 IFCC>DDTHENPRINT"see "A7$:PRINT:PRINT"i told you i would win":GOTO3000
2885 IFCC=DDTHENPRINT"it's a draw!":GOTO3000
2890 PRINT"congratulations ":PRINT:PRINTA7$:PRINT:PRINT"but i'll win next time
3000 FORSX=1TO900:NEXTSX:POKE53280,0:POKE53281,0:END
3180 PRINT"{clear}":POKE53280,0:POKE53281,0:PRINTTAB(1)"{yellow}{down*9}aw! come on":PRINT:PRINTTAB(1)"don't be a slug":PRINT:PRINTTAB(1)"can i play with you?
3230 GETH$:IFH$=""THEN3230
3240 IFH$="y"THEN620
3250 IFH$="n"THEN3270
3260 GOTO3230
3270 PRINT"{clear}":POKE53280,250:PRINTTAB(4)"{purple}{down*10}o.k! meanie":PRINT:PRINTTAB(6)"goodbye":FORX=1TO10000:NEXT:PRINT"{clear}":POKE36879,27:END
3350 AA=AA+1:PRINT"{home}":ONAAGOTO3370,3380,3390,3400,3410,3420,3430,3440,3450,3460
3370 PRINTTAB(9)"{black}c64":RETURN
3380 PRINTTAB(8)"{down*9}"N$:RETURN
3390 PRINTTAB(8)"{down*8}"O$:RETURN
3400 PRINTTAB(12)"{down*8}"P$:GOTO3470:RETURN
3410 PRINTTAB(13)"{down*7}"Q$:RETURN
3420 PRINTTAB(13)"{down*5}"R$:RETURN
3430 PRINTTAB(17)"{down*5}"S$:RETURN
3440 PRINTTAB(17)"{down*8}"U$:RETURN
3450 PRINTTAB(12)"{down*3}"V$:RETURN
3460 PRINTTAB(15)"{down}"W$
3470 RETURN
3480 BB=BB+1:PRINT"{home}":ONBBGOTO3500,3510,3520,3530,3540,3550,3560,3570,3580,3590
3500 PRINTTAB(9)"{black}{down*12}"A7$:RETURN
3510 FORX=0TOLL-8:POKESP+8+22*LL+X,160:POKECP+8+22*LL+X,5:NEXT:RETURN
3520 PRINTTAB(8)"{down*20}"O$"{up*2}":RETURN
3530 PRINTTAB(12)"{down*20}"P$:RETURN
3540 PRINTTAB(13)"{down*19}"Q$"{up*2}":RETURN
3550 PRINTTAB(13)"{down*17}"R$"{up*2}":RETURN
3560 PRINTTAB(17)"{down*17}"S$"{up*2}":RETURN
3570 PRINTTAB(17)"{down*20}"U$"{up*2}":RETURN
3580 PRINTTAB(12)"{down*15}"V$"{up*2}":RETURN
3590 PRINTTAB(15)"{down*13}"W$"{up*2}":RETURN
3610 END
4000 J=J+1:IFJ=2ORAA=10ORBB=10THENPRINT"{home}{blue}{right}{reverse on}{down*15}wrong!{down}{left*5}{reverse off}":GOTO4020
4015 GOTO4040
4020 IFD1$="+"THENPRINT"{reverse on}"A1+B1"{reverse off}":GOTO4055
4030 IFD1$="-"THENPRINT"{right}{reverse on}"A1-B1"{reverse off}":GOTO4055
4040 PRINT"{home}{right}{blue}{reverse on}{down*15}wrong!{down*2}{left*6}try{down*2}{left*3}again{reverse off}":FORZ=1TO2000:NEXT:GOTO4060
4055 GETF$:IFF$=""THEN4055
4056 IFF$<>"c"THEN4055
4060 PRINT"{home}{blue}{reverse on}{down*15}{space*7}{down*2}{left*6}{space*4}{down*2}{left*4}{space*6}{reverse off}":PRINT"{home}{down*13}{reverse on}{blue}{right*2}{space*3}{reverse off}":RETURN
5000 PRINT"{clear}":POKE53280,7:POKE53281,5:PRINTCHR$(14):PRINT"{black}The answers to the":PRINT"sums are entered as in":PRINT"most schools,units(U)":PRINT"first,then tens(T)":PRINT"then hundreds(H),":PRINT"using the numerical":PRINT"keys.When you are":PRINT"happy with your answer
5090 PRINT"press"CHR$(34)"E"CHR$(34)"to enter it.":PRINT"If you make a mistake":PRINT"at any stage in your":PRINT"answer,press"CHR$(34)"M"CHR$(34)"and":PRINT"you can do it again.If":PRINT"you get the answer":PRINT"wrong,c64 will say so":PRINT"and you can try again.
6070 PRINTTAB(6)"{reverse on}Any key.{reverse off}
6080 GETA$:IFA$=""THEN6080
6090 PRINT"{clear}If you get it wrong":PRINT"again,c64 will display":PRINT"the correct answer and":PRINT"will wait until you":PRINT"discover where you":PRINT"went wrong.Then when":PRINT"you are ready to":PRINT"continue the game,":PRINT"press"CHR$(34)"C"CHR$(34)
7070 PRINTTAB(6)"{reverse on}any key.{reverse off}
7080 GETA$:IFA$=""THEN7080
7090 RETURN
7099 DATA -1
