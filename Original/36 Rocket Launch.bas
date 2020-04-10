!--------------------------------------------------
!- 28 October 2019 21:18:07
!- Import of : ROCKET.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\rocketlaunch.d64
!- Commodore 64
!--------------------------------------------------
5 DIMPS$(15):GOSUB10000:RC$(1)="helsinki":RC$(2)="magdeburg":RC$(3)="kiev":RC$(4)="belgrade":BC$(1)="lossiemouth":BC$(2)="digby":BC$(3)="tiviton":BC$(4)="benson":FORX=1TO4:RM(X)=INT(RND(1)*10+5):NEXT
32 HX(1)=76:HY(1)=75:HX(2)=80:HY(2)=93:HX(3)=65:HY(3)=116:HX(4)=71:HY(4)=136:DX(1)=245:DY(1)=65:DX(2)=158:DY(2)=145:DX(3)=255:DY(3)=190:DX(4)=220:DY(4)=200:PX(1)=76:PY(1)=75:PX(2)=80:PY(2)=93:PX(3)=65:PY(3)=116
45 PX(4)=71:PY(4)=136:FORX=1TO4:BP(X)=INT(RND(1)*7+4):NEXT:FORX=1TO4:BA(X)=INT(RND(1)*14+8):NEXT:RF(1)=5:RF(2)=5:RF(3)=5:RF(4)=5:PS$(0)=" britain has been invaded":PS$(1)=" britain was within minutes of invasion
62 PS$(2)=" we have lost the battle for france":PS$(3)=" russian troops had managed to push{space*6}across france":PS$(4)=" the russian invasion of west germany{space*4}was a complete success
65 PS$(5)=" the russian airforce had won decisive{space*3}victorys over berlin":PS$(6)=" the warsaw pact were fully armed and{space*4}invading finland":PS$(7)=" russian arms production had been{space*8}partially curtailed
68 PS$(8)=" the russians had suffered heavy losses{space*2}in eastern germany":PS$(9)=" the russians have been kicked out of{space*4}east germany":PS$(10)=" british forces have invaded the ukraine
71 PS$(11)=" american and british troops marched{space*5}into moscow today":PS$(12)=" british troops seized the kremlin today":PS$(13)=" moscow and half of russia are under{space*5}british control
74 PS$(14)=" moscow and most of russia are under{space*5}british control":PS$(15)=" the war is over britain has destroyed{space*3}all russian resistance ":VC=53248:POKEVC+21,15:POKE2040,13:POKE2041,13:POKE2042,13:POKE2043,13:VX(1)=VC:VY(1)=VC+1
110 VX(2)=VC+2:VY(2)=VC+3:VX(3)=VC+4:VY(3)=VC+5:VX(4)=VC+6:VY(4)=VC+7:FORX=1TO127:READA:POKE832+X,A:NEXT:PRINT"{down} press any key
152 GETA$:IFA$=""THEN152
500 POKE53280,0:POKE53281,0:POKEVC+21,0:PRINT"{clear}{yellow}":PRINT"{space*7}directory":PRINT"{space*4}{cm y*14}{space*5}":PRINT"pressing these letters will access the{space*2}appropriate information.":PRINT"{down}operations room.........o":PRINT"{down}station review..........s
518 PRINT"{down}redeployment............r":PRINT"{down}end.....................e""":PRINT"{down}directory...............d":PRINT"{down*2}these letters may be used at any time{space*3}without using this page.":PRINT"{down}it may help to write them down
600 GETA$:IFA$=""THEN600
601 IFFF=15THEN8000
602 IFBP(1)+BP(2)+BP(3)+BP(4)=0THEN8000
603 IFA$="o"THENDY=DY+1
604 IFA$="o"THEN1000
606 IFA$="s"THEN3000
608 IFA$="r"THEN4000
610 IFA$="d"THEN500
612 IFA$="e"THEN8000
620 GOTO600
1000 FORX=1TO4:BO(X)=INT(BA(X)/2):IFBO(X)>BP(X)THENBO(X)=BP(X)
1002 NEXT:IFBO(1)+BO(2)+BO(3)+BO(4)=0THEN3000
1008 POKE53280,2:POKE53281,14:PRINT"{green}":POKEVC+21,15:PRINT"{home}{space*18}{reverse on}{cm v}{space*6}{reverse off}{cm v} {reverse on}{cm v}{space*12}";:PRINT"{reverse off}{space*17}{reverse on}{space*7}{reverse off}{space*2}{reverse on}{space*14}";:PRINT"{reverse off}{space*9}{cm d}{cm f}{space*6}{cm d}{reverse on}{space*7}{reverse off}{cm f} {reverse on}{cm f}{space*3}{black}h{green}{space*8}";
1013 PRINT"{reverse off}{space*8}{cm d}{reverse on} {cm d}{reverse off}{space*6}{cm l}{reverse on}{space*8}{reverse off}{space*2}{cm c}{cm u}{reverse on} {reverse off}{cm v} {reverse on}{cm v}{space*6}";:PRINT"{reverse off}{space*8}{reverse on} {black}l{green} {reverse off}{cm v}{space*6}{reverse on}{space*2}{cm i}{space*4}{cm d}{reverse off}{space*4}{cm o*2}{reverse on}{space*8}";:PRINT"{reverse off}{space*5}{cm d}{cm f} {cm l}{reverse on} {reverse off}{cm v}{space*7}{cm u}{cm v} {reverse on}{space*3}{cm d}{reverse off}{space*5}{cm u}{reverse on}{space*9}";:PRINT"{reverse off}{space*4}{reverse on} {cm v} {reverse off}{cm j}{reverse on}{cm v} {black}d{green}{reverse off}{space*7}{cm i}{cm f}{cm l}{reverse on}{space*2}{cm l}{reverse off}{space*3}{cm i} {reverse on}{space*11}";
1017 PRINT"{reverse off}{space*4}{reverse on}{space*2}{cm d}{reverse off}{cm v} {reverse on}{cm v}{reverse off}{cm k}{space*6}{cm d}{reverse on} {reverse off} {cm l}{reverse on}{space*2}{cm d}{reverse off}{space*2}{cm l}{reverse on} {cm v}{space*11}";:PRINT"{reverse off}{space*3}{reverse on}{cm v}{space*2}{cm l}{reverse off} {cm f}{reverse on}{space*2}{reverse off}{space*6}{cm l}{reverse on} {cm l}{reverse off} {reverse on} {cm d}{reverse off}{cm v}{space*2}{cm l}{reverse on}{space*13}";:PRINT"{reverse off}{space*3}{cm c}{cm u*2} {cm l}{reverse on}{black}t{green}{space*2}{reverse off}{space*6}{cm l}{cm k}{space*2}{cm u}{space*4}{cm l}{reverse on}{space*13}";:PRINT"{reverse off}{space*6}{cm c}{reverse on}{cm f}{space*2}{cm l}{reverse off}{cm f}{space*5}{cm l}{reverse on}{cm c}{reverse off}{cm f}{cm i}{space*3}{cm f}{cm i}{reverse on}{space*14}";
1021 PRINT"{reverse off}{space*6}{cm d}{reverse on}{cm v} {black}b{green} {cm l}{reverse off}{space*2}{reverse on}{cm v}{cm u}{cm v}{space*5}{cm u}{space*17}";:PRINT"{reverse off}{space*5}{cm c}{cm u}{reverse on}{cm o}{cm f*2}{cm c}{reverse off}{cm f} {cm l}{reverse on}{space*5}{black}m{green}{space*20}";:PRINT"{reverse off}{space*11}{cm i}{reverse on}{space*28}";:PRINT"{reverse off}{space*5}{cm d}{cm i} {reverse on}{cm c}{cm u}{space*30}";
1025 PRINT"{reverse off}{space*5}{cm c}{reverse on}{cm f}{space*33}";:PRINT"{reverse off}{space*6}{cm l}{reverse on}{space*33}";:PRINT"{reverse off}{space*7}{reverse on}{space*33}";:PRINT"{reverse off}{space*7}{reverse on}{cm v}{space*24}{black}k{green}{space*7}";
1029 PRINT"{reverse on}{cm v}{cm c}{reverse off}{cm f}{space*3}{cm d}{reverse on}{space*20}{black}b{green}{space*11}{cm i}";:PRINT"{reverse on}{space*3}{cm u}{reverse off}{space*2}{cm l}{reverse on}{space*28}{cm i} {cm f}{cm l}{reverse off} ";:PRINT"{reverse on}{space*5}{cm u}{cm v}{space*12}{cm i}{space*14}{cm l}{reverse off}{space*2}{reverse on}{cm f}{cm d}{cm i}";:PRINT"{reverse on}{space*18}{cm l}{reverse off} {reverse on}{cm o}{space*13}{reverse off}{cm v}{space*2}{cm c}{cm v} ";
1033 PRINT"{reverse on}{space*10}{reverse off}{cm v}{cm c}{reverse on}{cm f}{cm d}{cm i}{reverse off} {cm l}{reverse on}{space*2}{reverse off}{space*2}{reverse on}{space*12}{cm l}{reverse off}{space*6}";:PRINT"{purple}{home}{down*4}{right*11}"BO(1):PRINT"{home}{down*6}{right*11}"BO(2):PRINT"{home}{down*9}{right*11}"BO(3):PRINT"{home}{down*11}{right*11}"BO(4):POKE2040,13:POKEVX(1),76:POKEVY(1),75:POKE2041,13:POKEVC+40,1
1044 POKEVX(2),80:POKEVY(2),93:POKE2042,13:POKEVC+41,1:POKEVX(3),65:POKEVY(3),116:POKE2043,13:POKEVC+42,1:POKEVX(4),71:POKEVY(4),136:MP$="{green}{home}{space*18}{reverse on}{cm v}{space*6}{reverse off}{cm v} {reverse on}{cm v}{space*12}{black}
1205 PRINTMP$:INPUT"{home}{black} do you wish to attack y/n";A$:IFLEFT$(A$,1)="n"THEN500
1208 IFLEFT$(A$,1)<>"y"THEN1205
1209 PRINTMP$
1210 INPUT"{black}{home} which station to attack";A$:A$=LEFT$(A$,1):B=0:IFA$="l"THENB=1
1216 IFA$="d"THENB=2
1218 IFA$="t"THENB=3
1220 IFA$="b"THENB=4
1221 IFB=0THEN1209
1222 IFBO(B)=0THENPRINTMP$
1224 IFBO(B)=0THENPRINT"{home} no operational aircraft":FORX=1TO4000:NEXT:GOTO1210
1230 PRINTMP$:INPUT"{home} which russian city";A$:A$=LEFT$(A$,1):R=0:IFA$="h"THENR=1
1238 IFA$="m"THENR=2
1240 IFA$="k"THENR=3
1242 IFA$="b"THENR=4
1244 IFR=0THEN1230
1250 PRINTMP$
1252 INPUT"{home} attack factories or missiles";OD$:PRINTMP$:OD$=LEFT$(OD$,1):IFOD$<>"f"ANDOD$<>"m"THEN1252
1500 SX=1:SY=1:IFDX(R)<HX(B)THENSX=-1
1506 IFDY(R)<HY(B)THENSY=-1
1508 IFPX(B)<>DX(R)THENPX(B)=PX(B)+SX
1510 IFPY(B)<>DY(R)THENPY(B)=PY(B)+SY
1512 POKEVX(B),PX(B):POKEVY(B),PY(B):IFPX(B)<>DX(R)ORPY(B)<>DY(R)THEN1508
1516 FORX=1TO5:PRINT"{home} attack in progress":FORY=1TO200:NEXT:PRINTMP$:FORY=1TO30:NEXT:NEXTX:GOSUB7000:IFBO(B)=0THENPRINT"{home}{black} radio contact lost
1522 POKE2039+B,14:SX=-SX:SY=-SY
1524 IFPX(B)<>HX(B)THENPX(B)=PX(B)+SX
1526 IFPY(B)<>HY(B)THENPY(B)=PY(B)+SY
1528 POKEVX(B),PX(B):POKEVY(B),PY(B):IFPX(B)<>HX(B)ORPY(B)<>HY(B)THEN1524
1550 FORX=1TO2000:NEXT:POKEVC+21,0:GOTO6000
3000 POKE53280,6:POKE53281,1:PRINT"{red}":PRINT"{clear}{down}{space*2}review of operational stations":PRINT"{space*2}{cm y*30}":PRINT"{down*6}":FORX=1TO4:BO(X)=INT(BA(X)/2):IFBO(X)>BP(X)THENBO(X)=BP(X)
3016 NEXTX:FORX=1TO4:PRINT"{cm a}{sh asterisk*4}CC{sh asterisk}CCC{sh asterisk*12}{cm r}{sh asterisk*13}{cm s}":PRINT"B station{space*14}B"BC$(X)TAB(37)"B":PRINT"{cm q}CCCCCCCCCCCCCCCCCCCCCC{sh +}CCCCCCCCCCCCC{cm w}":PRINT"B total no. aircraft{space*3}B"BP(X)TAB(37)"B":PRINT"{cm q}CCCCCCCCCCCCCCCCCCCCCC{sh +}CCCCCCCCCCCCC{cm w}
3040 PRINT"B total no. aircrew{space*4}B"BA(X)TAB(37)"B":PRINT"{cm q}CCCCCCCCCCCCCCCCCCCCCC{sh +}CCCCCCCCCCCCC{cm w}":PRINT"B operational aircraft B"BO(X)TAB(37)"B":PRINT"{cm z}CCCCCCCCCCCCCCCCCCCCCC{cm e}CCCCCCCCCCCCC{cm x}":IFX=4THEN3060
3050 PRINT"{down*4} press any key
3051 GETA$:IFA$=""THEN3051
3052 PRINT"{down*12}":NEXT
3060 PRINT"{down*4} press appropriate letter{space*17}(d=directory)":GOTO600
4000 POKE53280,8:POKE53281,1:PRINT"{green}{clear}":PRINT"{space*2}redeployment of aircraft & aircrew":PRINT" {cm y*38}":IFDY>2THENMT=2
4012 MT=MT+3*TF:IFMT=0THEN4032
4019 PRINT"{down*2}"MT"tornadoe(s) newly manufactured":X=INT(RND(1)*4+1):BP(X)=BP(X)+MT:PRINT"{down} they are delivered to "BC$(X):IFDY>2THENMA=4
4032 IFDY>2THENDY=0
4033 MA=MA+(6*TF):TF=0:IFMA=0ANDMT=0THEN4100
4040 IFMA=0THEN4046
4041 PRINT"{down*2}"MA"aircrew complete training":X=INT(RND(1)*4+1):PRINT"{down} and are posted to "BC$(X):BA(X)=BA(X)+MA:MA=0:MT=0
4046 PRINT"{down*4} press appropriate key{space*20}(d=directory)":GOTO600
4100 PRINT"{clear}{down}{space*2}redeployment of aircraft & aircrew":PRINT" {cm y*38}
4110 PRINT"{down} which do you wish to redeploy:":INPUT" tornadoes or aircrew t/a";B$:B$=LEFT$(B$,1):IFB$<>"t"ANDB$<>"a"THEN4110
4120 INPUT"{down}from which station(l,d,t,b)";A$:X=0:A$=LEFT$(A$,1):IFA$="l"THENX=1
4125 IFA$="d"THENX=2
4126 IFA$="t"THENX=3
4127 IFA$="b"THENX=4
4128 IFX=0THEN4120
4130 IFB$="t"THENPRINT"{down}there are "BP(X)" tornadoes at "BC$(X)
4132 IFB$="a"THENPRINT"{down}there are "BA(X)" aircrew at "BC$(X)
4134 INPUT"{down}how many to be moved ";A$:A=VAL(A$):IFB$="t"ANDA>BP(X)THEN4130
4136 IFB$="a"ANDA>BA(X)THEN4132
4138 IFB$="t"THENBP(X)=BP(X)-A
4139 IFB$="a"THENBA(X)=BA(X)-A
4140 INPUT"{down}to which station(l,d,t,b)";A$:A$=LEFT$(A$,1):X=0:IFA$="l"THENX=1
4156 IFA$="d"THENX=2
4158 IFA$="t"THENX=3
4160 IFA$="b"THENX=4
4162 IFX=0THEN4140
4166 IFB$="t"THENBP(X)=BP(X)+A
4168 IFB$="a"THENBA(X)=BA(X)+A
4170 IFB$="t"THENPRINT"{down}there are now "BP(X)" tornadoes at "BC$(X)
4172 IFB$="a"THENPRINT"{down}there are now "BA(X)" aircrew at "BC$(X)
4190 PRINT"{down*2}press appropriate letter":PRINT" (d=directory)":FORX=1TO4:BO(X)=BA(X)/2:IFBO(X)>BP(X)THENBO(X)=BP(X):NEXTX
4200 GOTO600
6000 PRINT"{clear}":POKE53280,0:POKE53281,11:IFBO(B)=0THEN6210
6012 PRINT"{home}{reverse on}{black}{space*10}{white}{space*19}{black}{space*10}";:FORX=1TO10:PRINT"{reverse on}{black}{space*11}{white} {reverse off}{space*17}{reverse on}{white} {black}{space*10}";:NEXT:PRINT"{reverse on}{black}{space*11}{white}{space*19}{black}{space*11}";:PRINT"{reverse on}{black}{space*40}";
6022 PRINT"{reverse on}{black}{space*40}":PRINT"{white}{reverse on}{home}{right*12}"RC$(R):IFRF(R)>0THENPOKE1398-(80*R),252:POKE55670-(80*R),0
6104 IFRF(R)>1THENPOKE1116+2*R,251:POKE55388+2*R,0
6106 IFRF(R)>2THENPOKE1278+3*R,252:POKE55550+3*R,0
6108 IFRF(R)>3THENPOKE1124+40*R,251:POKE55396+40*R,0
6110 IFRF(R)>4THENPOKE1170-2*R,252:POKE55442-2*R,0
6198 FORY=1TORM(R)
6200 S=INT(RND(1)*400+1):IFPEEK(1064+S)<>32THEN6200
6201 G=G+1:IFG>60THEN6206
6202 POKE1064+S,42:POKE55336+S,0:NEXT
6206 G=0:GOTO6300
6210 PRINT"{clear}{down} squadron have overshot estimated time{space*3}of arrival.":PRINT"{down} it must be assumed all crew and planes{space*2}are lost...........":PRINT"{down} no reconaissance photos available.":PRINT"{down*7}press appropriate key{space*20}(d=directory)":GOTO6320
6300 PRINT"{home}{down*13}":PRINT"{black}{space*4}{reverse on}{cm c}{reverse off}=factory{space*3}*=missile base":PRINT"{down}british planes lost........."BL:PRINT"aircrew missing............."BL*2:PRINT"planes returned............."BO(B):PRINT"no. missiles destroyed......"ML
6319 PRINT"{down*2}press appropriate key{space*20}(d=directory)
6320 FORX=1TO4:IFRF(X)=0THEN6352
6340 NM=INT(RND(1)*RF(X)+1):RM(X)=RM(X)+NM:IFRM(X)>60THENRM(X)=60
6352 NEXT:ML=0:FL=0:BL=0:GOTO600
7000 M1=0:B1=0:FL=0:BL=0:ML=0:B2=0:M2=0:IFOD$="f"THEN7016
7012 IFOD$="m"THEN7024
7016 B2=BO(B):FORX=1TORM(R):IFINT(RND(1)*2+1)=2THENB2=B2-1
7019 NEXT:M1=RM(R):IFB2=<0THENB2=0:GOTO7075
7021 FORX=1TOB2:IFINT(RND(1)*4+1)=1THENFL=FL+1
7023 NEXT:GOTO7075
7024 M1=INT(RND(1)*RM(R)+1):M2=RM(R)-M1:B1=BO(B):B2=0
7030 RN=INT(RND(1)*3+1):IFRN=1ORRN=2THENM1=M1-1
7032 IFRN=3THENB1=B1-1
7033 IFM1=0ORB1=0THEN7075
7034 GOTO7030
7075 BL=BO(B)-(B1+B2):ML=RM(R)-(M1+M2):BO(B)=BO(B)-BL:BP(B)=BP(B)-BL:BA(B)=BA(B)-(2*BL):RM(R)=RM(R)-ML:RF(R)=RF(R)-FL:TF=TF+FL:FF=FF+FL:BB=BB+BL:MM=ML+MM:RETURN
8000 POKE53280,2:POKE53281,14:PRINT"{clear}":PRINT"{black} bbc news broadcast":PRINT" {cm y*18}":PRINT"{down} this is todays up to the minute news.":PRINT"{down} britain has lost"BB" tornadoes in":PRINT" bombing raids over the eastern block.
8030 PRINT"{down} russia has had"MM"ground to air":PRINT" missile bases destroyed.":PRINT"{down} british planes have bombed and":PRINT" destroyed"FF"russian factories.":PRINT"{down} the prime minister stated today that":PRINT" due to your command":PRINTPS$(FF)
8106 SC=INT(FF*100/15):PRINT"{down} "SC"% success":PRINT"{space*2}{cm y*12}":END
10000 POKE53280,13:POKE53281,1:PRINT"{clear}":PRINT"{blue}{space*7}rocket launch a wargame":PRINT"{space*2}{cm y*35}{space*2}":PRINT" you command four squadrons of tornadoes":PRINT" russia has mobilised its armies and":PRINT" started full scale arms production.
10018 PRINT" the main factories are at helsinki":PRINT" magdeburg,belgrade and kiev.":PRINT" these are guarded by surface to air{space*5}mobile missile bases.":PRINT"{down} it is your job to wipe out all the{space*6}factories!
10022 PRINT" the factories produce the missiles at{space*3}a high rate.":PRINT" your planes are more accurate than the{space*2}missiles":PRINT" but they are{space*2}launched without warning":PRINT" if you attack the arms factories.":PRINT" use the first letter of all words or 
10028 PRINT" the whole word when giving orders.":RETURN
20000 DATA1,0,0,1,128,0,3,240,0,129,192,0,195,240,0,255,252,0,255,255,0,255,252,0,195,240,0,129,192,0,3,240,0,1,128,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,0,1,128,0,15,192,0,7,129
20021 DATA0,15,195,0,63,255,0,255,255,0,63,255,0,15,195,0,7,129,0,15,192,0,1,128,0,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
