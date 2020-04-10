!--------------------------------------------------
!- 28 October 2019 21:20:49
!- Import of : RATS.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\rats.d64
!- Commodore 64
!--------------------------------------------------
0 POKE775,200:PRINT"{clear}":POKE53280,0:POKE53281,0:DIMH(100),L(100),HO(100),N(100):PRINT"{home}{down}{reverse on}{space*2}rats- a frustrating version of{space*2}":PRINT"{right*16}{green}computer":PRINT"{down}{right*8}{yellow}{reverse on}{space*5}{reverse off} {reverse on} {reverse off} {reverse on}{space*5}{reverse off} {reverse on}{space*5}{reverse off} {reverse on}{space*5}{reverse off}":PRINT"{right*8}{reverse on} {reverse off}{space*7}{reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off}{space*3}{reverse on} {reverse off} {reverse on} {reverse off}{space*3}{reverse on} {reverse off}
4 PRINT"{right*8}{reverse on}{space*5}{reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off}{space*3}{reverse on} {reverse off} {reverse on} {reverse off}{space*3}{reverse on} {reverse off}":PRINT"{right*8}{space*4}{reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off}{space*3}{reverse on} {reverse off} {reverse on} {reverse off}{space*3}{reverse on} {reverse off}":PRINT"{right*8}{reverse on}{space*5}{reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on} {reverse off} {reverse on}{space*5}{reverse off} {reverse on} {reverse off}{space*3}{reverse on} {reverse off}":FORI=0TO39:POKE1384+I,67:POKE1384+I+54272,6:NEXT:PRINT"{down}{right*13}a cascade game
9 FORI=0TO39:POKE1464+I,67:POKE1464+I+54272,6:NEXT:GOSUB10000:PRINT"{down*3}{right*14}press any key
12 FORI=1TO1000:GETA$:IFA$<>""THEN17
15 NEXTI:RESTORE:GOSUB10000:GOTO12
17 PRINT"{clear}":PRINT"{home}the object of the game is to follow the sequence of notes that the";:PRINT" computer willplay!":PRINT"{down}for every note the computer plays you{space*3}get 1 point!":PRINT"{down}to make it easier a block will be lit up!
22 PRINT"{down}if your go doesn't light up the same{space*4}block then the game will end!":PRINT"{down}if your go does light up the same block then the computer will add";:PRINT" another note to the sequence!
25 PRINT"{down}if you continue typing in the correct{space*3}sequence then the game will";:PRINT" get faster{space*2}and the skill level will increase!":PRINT"{down}use keys 1-4 to light up yellow-cyan!":PRINT"{down}{right*9}press any key to start
29 GETA$:IFA$=""THEN29
30 GOSUB9000
31 PRINT"{clear}":PRINT"type skill level then press return 1-5{space*2}1-hardest 5-easiest
40 INPUTM:IFM<1ORM>5THEN40
41 HL=M*100:PRINT"{clear}":POKEV+21,255:POKEV,100:POKEV+1,100:POKEV+2,200:POKEV+3,100:POKEV+4,100:POKEV+5,200:POKEV+6,200:POKEV+7,200:POKEV+29,15:POKEV+23,15
65 PRINT"{home}score","skill "," hi-score":PRINT"{home}{right*5}"SC"{right*7}"M"{right*11}"P:PRINT"{home}{down}{white}{cm t*33}{yellow}":FORI=1TO2000:NEXTI:X=X+1:N(X)=INT(RND(1)*4)+1:FORZ=1TOX:IFN(Z)=1THENGOSUB1000
100 IFN(Z)=2THENGOSUB2000
110 IFN(Z)=3THENGOSUB3000
120 IFN(Z)=4THENGOSUB4000
125 NEXTZ:FORZ=1TOX:TI$="000000
131 GETA:IFTI$>="000010"THEN6000
132 IFA<1ORA>4THEN131
140 IFA=1THENGOSUB1000
141 IFA=2THENGOSUB2000
142 IFA=3THENGOSUB3000
143 IFA=4THENGOSUB4000
144 IFA=N(Z)THEN146
145 GOTO6000
146 NEXTZ:SC=X:IFSC>PTHENP=SC
148 IFSC/2=INT(SC/2)THENGOSUB200
149 GOTO65
200 M=M-1:IFM<1THEN300
201 HL=M*100
202 RETURN
300 M=1:HL=HL-10:IFHL<1THENHL=1
301 GOTO202
1000 POKEV+39,7:H(Z)=34:L(Z)=75:POKEHI,H(Z):POKELO,L(Z):FORJ=1TOHL:NEXTJ:POKEHI,0:POKELO,0:POKEV+39,6:RETURN
2000 POKEV+40,2:H(Z)=38:L(Z)=126:POKEHI,H(Z):POKELO,L(Z):FORJ=1TOHL:NEXTJ:POKEHI,0:POKELO,0:POKEV+40,6:RETURN
3000 POKEV+41,5:H(Z)=43:L(Z)=52:POKEHI,H(Z):POKELO,L(Z):FORJ=1TOHL:NEXTJ:POKEHI,0:POKELO,0:POKEV+41,6:RETURN
4000 POKEV+42,3:H(Z)=45:L(Z)=198:POKEHI,H(Z):POKELO,L(Z):FORJ=1TOHL:NEXTJ:POKEHI,0:POKELO,0:POKEV+42,6:RETURN
6000 PRINT"{home}{down*14}{right*14}{reverse on}game over{reverse off}":POKEW,129:FORA=70TO0STEP-1:POKEHI,A:POKELO,A:FORJ=1TO50:NEXTJ:NEXTA:POKEHI,0:POKELO,0:POKEW,33:FORZ=1TOX:HL=500:IFN(Z)=1THENGOSUB1000
6006 IFN(Z)=2THENGOSUB2000
6007 IFN(Z)=3THENGOSUB3000
6008 IFN(Z)=4THENGOSUB4000
6009 NEXTZ:POKEV+21,0:PRINT"{clear}":PRINT"{down*12}do you want another game? (y/n)
6012 GETA$:IFA$<>"y"ANDA$<>"n"THEN6012
6013 IFA$="n"THENPRINT"{clear}{home}{down*12}{right*9}goodbye!
6014 IFA$="n"THENFORD=1TO3000:NEXTD:SYS64738
6015 SC=0:FORZ=1TOX:N(Z)=0:H(Z)=0:L(Z)=0:NEXT:X=0:PRINT"{clear}":RESTORE:GOTO31
9000 V=53248:FORI=2040TO2043:POKEI,13:NEXTI:FORI=0TO62:READQ:POKE832+I,Q:NEXTI:FORI=0TO3:READC:POKEV+39+I,C:NEXTI:RETURN
10000 VO=54296:HI=54273:LO=54272:W=54276:AD=54277:SR=54278:FORI=LOTOVO:POKEI,0:NEXT:POKEW,0:POKEVO,15:POKESR,68:POKEW,33:FORI=1TO16:READH(I),L(I),HO(I):POKEHI,H(I):POKELO,L(I):FORK=1TOHO(I):NEXTK:NEXTI:POKEHI,0:POKELO,0:RETURN
20000 DATA34,75,250,43,52,250,45,198,250,51,97,1000,34,75,250,43,52,250,45,198,250,51,97,1000,34,75,250,43,52,250,45,198,250,51,97,500,43,52,500,34,75,500,43,52,500,38,126,1000
20003 DATA15,255,240,31,255,248,63,255,252,127,255,254,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255
20006 DATA127,255,254,63,255,252,31,255,248,15,255,240,6,6,6,6
