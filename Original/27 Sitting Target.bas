!--------------------------------------------------
!- 28 October 2019 21:12:54
!- Import of : SIT.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\sittingtarget.d64
!- Commodore 64
!--------------------------------------------------
10 PRINT"{clear}":SC=0:UD=0:RL=0:LR=0:DU=0:LI=3:POKE53280,0:POKE53281,0
210 PRINT"{clear}":POKE53280,1:POKE53281,1:PRINT"{down*3}{right*11}{reverse on}sitting target":PRINT"{down*8} use keys:{down*3}":PRINT"{blue}{space*7}u=up:n=down:h=left:j=right{space*6}":PRINT"{cyan}{space*10}w=fire up:z=fire down{space*8}":PRINT"{purple}{space*8}a=fire left:s=fire right{space*7}
252 PRINT"{down}shoot the robot before he shoots you ":FORC=1TO3000:NEXTC:PRINT"{clear}":FORF=0TO39:POKE1024+F,160:POKE55296+F,0:POKE1984+F,160:POKE56256+F,0:NEXTF:FORG=0TO999STEP40:POKE1024+G,160:POKE55296+G,0:POKE1063+G,160:POKE55335+G,0:NEXTG:FORBZ=18TO22:POKE1424+BZ,160
380 POKE55696+BZ,0:POKE1584+BZ,160:POKE55856+BZ,0:NEXTBZ:FORI=0TO160STEP40:POKE1441+I,160:POKE55713+I,0:POKE1446+I,160:POKE55718+I,0:NEXTI:FORKK=14TO25:POKE1184+KK,160:POKE55456+KK,0:POKE1824+KK,160:POKE56096+KK,0:NEXTKK:GOTO1000
1000 POKE1964,88:POKE56236,4:POKE1084,88:POKE55356,5:GOSUB10000
1040 OM=INT(RND(1)*15):IFOM=0THEN1040
1070 IFOM=1THENGOSUB2000
1080 IFOM=2THENGOSUB3000
1090 IFOM=3THENGOSUB4000
1100 IFOM=4THENGOSUB5000
1110 IFOM=5THENGOSUB6000
1115 GOSUB2000:GOSUB10000:GOTO1040
2000 DX=INT(RND(1)*4):POKE1084+LR+DU,32:IFDX=0THENDU=DU-40:Y=1
2030 IFDX=1THENDU=DU+40:Y=2
2040 IFDX=2THENLR=LR-1:Y=3
2050 IFDX=3THENLR=LR+1:Y=4
2060 IFPEEK(1084+LR+DU)=160THEN2100
2070 POKE1084+LR+DU,88:POKE55356+LR+DU,5:RETURN
2100 IFY=1THENDU=DU+40
2110 IFY=2THENDU=DU-40
2120 IFY=3THENLR=LR+1
2130 IFY=4THENLR=LR-1
2140 POKE1084+LR+DU,88:POKE55356+LR+DU,5:RETURN
3000 V=54296:W=54276:A=54277:H=54273:L=54272:FORX=15TO0STEP-1:POKEV,X:POKEW,129:POKEA,15:POKEH,40:POKEL,200:NEXT:POKEW,0:POKEA,0:FI=0
3010 POKE1084+LR+DU+FI,32:FI=FI-40:IFPEEK(1084+LR+DU+FI)=160THEN3100
3040 IFPEEK(1084+LR+DU+FI)=88THEN20000
3050 POKE1084+LR+DU+FI,46:POKE55356+LR+DU+FI,0:POKE1084+LR+DU,88:POKE55356+LR+DU,5:GOTO3010
3100 FI=FI+40:POKE1084+LR+DU+FI,32:RETURN
4000 V=54296:W=54276:A=54277:H=54273:L=54272:FORX=15TO0STEP-1:POKEV,X:POKEW,129:POKEA,15:POKEH,40:POKEL,200:NEXT:POKEW,0:POKEA,0:FI=0
4010 POKE1084+LR+DU+FI,32:FI=FI+40:IFPEEK(1084+LR+DU+FI)=160THEN4100
4040 IFPEEK(1084+LR+DU+FI)=88THEN20000
4050 POKE1084+LR+DU+FI,46:POKE55356+LR+DU+FI,0:POKE1084+LR+DU,88:POKE55356+LR+DU,5:GOTO4010
4100 FI=FI-40:POKE1084+LR+DU+FI,32:RETURN
5000 V=54296:W=54276:A=54277:H=54273:L=54272:FORX=15TO0STEP-1:POKEV,X:POKEW,129:POKEA,15:POKEH,40:POKEL,200:NEXT:POKEW,0:POKEA,0:FI=0
5010 POKE1084+LR+DU+FI,32:FI=FI-1:IFPEEK(1084+LR+DU+FI)=160THEN5100
5040 IFPEEK(1084+LR+DU+FI)=88THEN20000
5050 POKE1084+LR+DU+FI,46:POKE55356+LR+DU+FI,0:POKE1084+LR+DU,88:POKE55356+LR+DU,5:GOTO5010
5100 FI=FI+1:POKE1084+LR+DU+FI,32:RETURN
6000 V=54296:W=54276:A=54277:H=54273:L=54272:FORX=15TO0STEP-1:POKEV,X:POKEW,129:POKEA,15:POKEH,40:POKEL,200:NEXT:POKEW,0:POKEA,0:FI=0
6010 POKE1084+LR+DU+FI,32:FI=FI+1:IFPEEK(1084+LR+DU+FI)=160THEN6100
6040 IFPEEK(1084+LR+DU+FI)=88THEN20000
6050 POKE1084+LR+DU+FI,46:POKE55356+LR+DU+FI,0:POKE1084+LR+DU,88:POKE55356+LR+DU,5:GOTO6010
6100 FI=FI-1:POKE1084+LR+DU+FI,32:RETURN
10000 GETMO$:IFMO$="u"THEN11000
10030 IFMO$="n"THEN12000
10040 IFMO$="h"THEN13000
10050 IFMO$="j"THEN14000
10060 IFMO$="w"THEN15000
10070 IFMO$="z"THEN16000
10080 IFMO$="a"THEN17000
10090 IFMO$="s"THEN18000
10100 FORQQ=1TO10:NEXTQQ:RETURN
11000 POKE1964+RL+UD,32:UD=UD-40:IFPEEK(1964+RL+UD)=160THEN11100
11040 POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
11100 UD=UD+40:POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
12000 POKE1964+RL+UD,32:UD=UD+40:IFPEEK(1964+RL+UD)=160THEN12100
12040 POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
12100 UD=UD-40:POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
13000 POKE1964+RL+UD,32:RL=RL-1:IFPEEK(1964+RL+UD)=160THEN13100
13040 POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
13100 RL=RL+1:POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
14000 POKE1964+RL+UD,32:RL=RL+1:IFPEEK(1964+RL+UD)=160THEN14100
14040 POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
14100 RL=RL-1:POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
15000 V=54296:W=54276:A=54277:H=54273:L=54272:FORX=15TO0STEP-1:POKEV,X:POKEW,129:POKEA,15:POKEH,40:POKEL,200:NEXT:POKEW,0:POKEA,0:BU=0
15020 POKE1964+RL+UD+BU,32:BU=BU-40:IFPEEK(1964+RL+UD+BU)=160THEN15100
15050 IFPEEK(1964+RL+UD+BU)=88THEN30000
15060 POKE1964+RL+UD+BU,46:POKE56236+RL+UD+BU,0:POKE1964+RL+UD,88:POKE56236+RL+UD,4:GOTO15020
15100 BU=BU+40:POKE1964+RL+UD+BU,32:POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
16000 V=54296:W=54276:A=54277:H=54273:L=54272:FORX=15TO0STEP-1:POKEV,X:POKEW,129:POKEA,15:POKEH,40:POKEL,200:NEXT:POKEW,0:POKEA,0:BU=0
16020 POKE1964+RL+UD+BU,32:BU=BU+40:IFPEEK(1964+RL+UD+BU)=160THEN16100
16050 IFPEEK(1964+RL+UD+BU)=88THEN30000
16060 POKE1964+RL+UD+BU,46:POKE56236+RL+UD+BU,0:POKE1964+RL+UD,88:POKE56236+RL+UD,4:GOTO16020
16100 BU=BU-40:POKE1964+RL+UD+BU,32:POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
17000 V=54296:W=54276:A=54277:H=54273:L=54272:FORX=15TO0STEP-1:POKEV,X:POKEW,129:POKEA,15:POKEH,40:POKEL,200:NEXT:POKEW,0:POKEA,0:BU=0
17020 POKE1964+RL+UD+BU,32:BU=BU-1:IFPEEK(1964+RL+UD+BU)=160THEN17100
17050 IFPEEK(1964+RL+UD+BU)=88THEN30000
17060 POKE1964+RL+UD+BU,46:POKE56236+RL+UD+BU,0:POKE1964+RL+UD,88:POKE56236+RL+UD,4:GOTO17020
17100 BU=BU+1:POKE1964+RL+UD+BU,32:POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
18000 V=54296:W=54276:A=54277:H=54273:L=54272:FORX=15TO0STEP-1:POKEV,X:POKEW,129:POKEA,15:POKEH,40:POKEL,200:NEXT:POKEW,0:POKEA,0:BU=0
18020 POKE1964+RL+UD+BU,32:BU=BU+1:IFPEEK(1964+RL+UD+BU)=160THEN18100
18050 IFPEEK(1964+RL+UD+BU)=88THEN30000
18060 POKE1964+RL+UD+BU,46:POKE56236+RL+UD+BU,0:POKE1964+RL+UD,88:POKE56236+RL+UD,4:GOTO18020
18100 BU=BU-1:POKE1964+RL+UD+BU,32:POKE1964+RL+UD,88:POKE56236+RL+UD,4:RETURN
20000 LI=LI-1:IFLI=0ORLI<0THEN20010
20003 FORCC=0TO15:POKE53280,CC:POKE53281,CC:NEXTCC:POKE53280,1:POKE53281,1:POKE1964+RL+UD,32:POKE1084+LR+DU,32:RL=0:UD=0:DU=0:LR=0:GOTO1000
20010 PRINT"{clear}":POKE53280,0:POKE53281,0:PRINT"{down*8}":PRINT"{cyan}{space*12}g a m e{space*2}o v e r{space*11}":PRINT"{purple}{space*9}score = "SC"points{space*10}":FORKL=1TO2000:NEXTKL:PRINT"{clear}":RL=0:SC=0:UD=0:DU=0:LR=0:GOTO210
30000 SC=SC+30:POKE1964+RL+UD,32:POKE1084+LR+DU,32:RL=0:UD=0:DU=0:LR=0:GOTO1000