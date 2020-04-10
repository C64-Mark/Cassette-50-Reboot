!--------------------------------------------------
!- 27 October 2019 08:43:39
!- Import of : INTR.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\intruder.d64
!- Commodore 64
!--------------------------------------------------
5 HS=0
10 GOSUB10000
11 JJ=INT(RND(-1))
20 CC=54272:GOSUB9490
30 SC=0
1000 GETA$:IFA$=""THENA$=B$
1010 E=C:Q=S
1020 IFA$="."THENS=S+1:C=C+1:N=5 :N1=75
1030 IFA$=","THENS=S-1:C=C-1:N=10
1040 IFA$="a"THENS=S-40:C=C-40:N=15
1050 IFA$="z"THENS=S+40:C=C+40:N=20
1060 W=PEEK(S):F=0
1070 IFW=102THENC=E:S=Q:POKEC,7:POKES,81
1075 IFPEEK(Q+40)=102THENF=F+.25
1076 IFPEEK(Q-40)=102THENF=F+.25
1077 IFPEEK(Q-1)=102THENF=F+.25
1078 IFPEEK(Q+1)=102THENF=F+.25
1090 IFF=1THEN2000
1100 SC=SC+10:PRINT"{home}{right*6}{reverse on}{yellow}score";SC;"{left}{reverse on}{blue}{space*10}{green}high";HS
1110 R=INT(RND(0)*14):IFR>9THEN1138
1112 ONRGOTO1113,1114,1115,1116,1117,1118,1119,1120,1121
1113 GOTO1138
1114 H=S-41:GOTO1135
1115 H=S-40:GOTO1135
1116 H=S-39:GOTO1135
1117 H=S-1 :GOTO1135
1118 H=S+1:GOTO1135
1119 H=S+39:GOTO1135
1120 H=S+40:GOTO1135
1121 H=S+41:GOTO1135
1135 J=H+55296-1024:POKEH,102:POKEJ,R
1138 H=1024+INT(RND(0)*997)
1139 J=H+55296-1024:POKEH,102:POKEH+1,102:POKEH+2,102:POKEH+3,102
1140 POKEJ,R:POKEJ+1,R+4:POKEJ+2,R+1:POKEJ+3,R+5
1150 POKE54273,N:POKE54272,N1
1210 POKEC,7:POKES,81:POKEE,0
1220 B$=A$
1230 GOTO1000
2000 PRINT"{home}{down*3}{yellow}{reverse on}{right*7}the weeds got you!!"
2020 PRINT"{down*2}{yellow}{reverse on}{right*7}you scored"SC
2022 IFSC>HSTHENHS=SC:PRINT"{down*2}{yellow}{reverse on}{right*7}new high score"HS"!!"
2030 GOSUB10070:GOTO10
9490 PRINT"{clear}"
9540 S=1484
9550 C=55756
9570 B$="."
9590 FORZ=1024TO1063:POKEZ,102:POKEZ+CC,2:NEXT
9600 FORZ=1984TO2023:POKEZ,102:POKEZ+CC,2:NEXT
9620 FORZ=1024TO1984STEP40:POKEZ,102:POKEZ+CC,2:POKEZ+39,102:POKEZ+39+CC,2:NEXT
9621 REM PRINT"{home}{right*22}{green}{reverse on}high";HS
9622 POKE54296,0:POKE54276,0:POKE54272,0:POKE54273,0:POKE54277,0
9630 POKE54296,15:POKE54276,33:POKE54272,0:POKE54273,0:POKE54277,190
9632 POKE54278,0
9634 FORJJ=1TO50:POKE54273,4:POKE54272,8:NEXT
9640 RETURN
10000 POKE53280,0:POKE53281,0:PRINT "{clear}{down*3}{right*9}{reverse on}{green} i n t r u d e r "
10010 PRINT"{down}{purple}you have trespassed in a forbidden{space*6}garden and the weeds are trying
10012 PRINT"to trap and engulf you."
10020 PRINT"{down}try to avoid being trapped by the multi-coloured man eating weeds"
10030 PRINT"keep going as long as you can. once "
10040 PRINT"surrounded by weeds you will not be ableto move any more."
10050 PRINT"the score relates to how long it takes{space*2}to engulf you!"
10060 PRINT"{down*2}use keys a=up{space*2}z=down{space*2},=left{space*2}.=right"
10070 PRINT"{down*2}{yellow}{reverse on}{right*7}press return to start"
10080 A$="":GETA$:IFA$<>CHR$(13)THEN10080
10090 RETURN
