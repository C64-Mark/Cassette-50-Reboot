!--------------------------------------------------
!- 27 October 2019 22:22:40
!- Import of : BONES.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\oldbones.d64
!- Commodore 64
!--------------------------------------------------
1 GOSUB3000
10 DATA"{cm +}123456789{cm +}"
20 DATA"1Q{cm +}Q{cm +}Q{cm +}Q{cm +}Q1"
30 DATA"2{cm +}Q{cm +}Q{cm +}Q{cm +}Q{cm +}2"
40 DATA"3Q{cm +}Q{cm +} {cm +}Q{cm +}Q3"
50 DATA"4{cm +} {cm +} {cm +}Q{cm +} {cm +}4"
60 DATA"5 {cm +} {cm +} {cm +} {cm +} 5"
70 DATA"6{cm +}Z{cm +}Z{cm +}Z{cm +}Z{cm +}6"
80 DATA"7Z{cm +}Z{cm +}Z{cm +}Z{cm +}Z7"
90 DATA"8{cm +}Z{cm +}Z{cm +}Z{cm +}Z{cm +}8"
100 DATA"{cm +}123456789{cm +}"
105 HS=0:CS=0
110 DIMS$(12,13)
120 FORA=1TO10
130 READB$
140 FORB=1TO11:S$(A,B)=MID$(B$,B,1):NEXTB:NEXTA
141 IFINT(RND(1)+.5)=0THEN145
142 S$(5,5)="Q":S$(5,7)=" "
145 POKE53280,0:POKE53281,3:PRINT"{clear}"
150 GOSUB1130
155 PRINT:PRINT:PRINT
157 IFCS=6THENPRINT"{right*12}computer wins!{space*4}":GOSUB2000:GOTO3000
160 INPUT"from";A,B
170 INPUT"{space*2}to";C,D
180 IFABS(A-C)=1ANDABS(B-D)=1THEN220
190 PRINT"illegal move ":FORZX=1TO509:NEXT:PRINT"{up}{space*13}":PRINT"{up*3}";:GOTO160
220 IFS$(C+1,D+1)="Q"THENHS=HS+1
230 S$(A+1,B+1)=" ":S$(C+1,D+1)="Z"
240 GOSUB1130
247 IFHS=6THENPRINT"{space*16}you win!{space*4}":GOSUB2000:GOTO3000
250 A$="Z":GOSUB1000
260 IFFL=1THEN300
270 A$=" ":GOSUB1000
300 S$(E,F)=" "
305 IFS$(E+G,F+H)="Z"THENCS=CS+1
310 S$(E+G,F+H)="Q"
320 GOTO150
1000 E=2:F=2:G=0:H=0
1010 FL=0
1020 IFS$(E,F)<>"Q"THEN1100
1040 IFS$(E+1,F+1)=A$THENG=1:H=1
1050 IFS$(E+1,F-1)=A$THENG=1:H=-1
1060 IFS$(E-1,F+1)=A$THENG=-1:H=1
1070 IFS$(E-1,F-1)=A$THENG=-1:H=-1
1080 IFG<>0ANDH<>0THENFL=1:RETURN
1100 E=E+1:IFE>10THENE=2:F=F+1
1110 IFF>11THENRETURN
1120 GOTO1010
1130 PRINT"{home}":FORA=1TO10:PRINT:FORB=1TO11
1140 PRINT"{blue}";:IFS$(A,B)="Q"THENPRINT"{red}";
1145 IFS$(A,B)="{cm +}"THENPRINT"{black}";
1150 IFS$(A,B)="Z"THENPRINT"{purple}";
1155 PRINTS$(A,B);
1160 NEXT:NEXT
1170 PRINT:PRINT"{down*5}{red}{space*4}computer:"CS"{space*8}your score:";HS"{blue}":RETURN
2000 PRINT"{down}{green}{space*9}press key to continue"
2010 A$="":GETA$:IFA$=""THEN2010
2020 RETURN
3000 PRINT"{clear}{down*4}{right*11}{reverse on}o l d b o n e s"
3010 PRINT"{down*2}this is a board game like checkers"
3020 PRINT"or draughts except you capture by taking"
3030 PRINT"{up}a piece rather than by jumping over it"
3040 PRINT"the computer always has first move"
3050 PRINT"you move responding to the 'from' prompt"
3060 PRINT"{up}with the number across the bottom of the"
3070 PRINT"{up}square you wish to move from, then a "
3080 PRINT"comma,then the number along the side."
3090 PRINT"you do the same for the 'to' prompt"
3100 PRINT"the winner is the first player to "
3110 PRINT"capture six of the opponents pieces."
3120 GOSUB2000
3150 RESTORE:CLR:RUN10
