!--------------------------------------------------
!- 27 October 2019 08:44:25
!- Import of : IVAS.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\ivasive.d64
!- Commodore 64
!--------------------------------------------------
10 FORN=1TO62:READA:POKE16320+N,A:NEXTN
20 V=53248:POKEV+32,0:POKEV+33,0:POKEV+21,1:POKEV+16,4:POKE2040,255:POKEV+39,1:POKEV+27,3:POKEV+1,200:POKEV,150:X=150:Y=200:POKE650,128:PRINT"{clear}":T=1:POKE646,1:K=1065:POKE54296,3:POKE54277,190:POKE54278,248:POKE54273,17:POKE54272,37:POKE54276,129:FORE=1TO250:NEXT
150 POKE54296,3:POKEV+31,0:A=RND(1)*40:POKEK+A,81:POKEK+A+54272,C:K=K+20:C=C+1:IFK>1904THENK=1065
160 PRINT"{home}{space*3}score."M"{space*2}hi-score:"H:IFPEEK(56321)=254THENY=Y-7
172 IFPEEK(56321)=253THENY=Y+5
174 IFPEEK(56321)=251THENX=X-4
176 IFPEEK(56321)=247THENX=X+4
178 IFPEEK(56321)=246THENX=X+4:Y=Y-3
179 IFPEEK(56321)=250THENX=X-4:Y=Y-3
280 POKEV,XAND255:POKEV+1,Y:LETY=Y-T:LETX=X+1:IFC>14THENC=1
292 IFM=>60THENT=4
293 IFM=>30THENT=3
295 IFY<=65THENY=200:X=RND(1)*150:M=M+10:PRINT"{clear}
296 IFY>=200THENY=200
297 IFX<=40THENX=40
298 IFX>290THENX=290
299 IFPEEK(V+31)=1THENPOKE54296,15:FORA=0TO1000:NEXT:GOTO500
300 GOTO150
500 IFM>HTHENH=M
503 POKE53248+39,0:POKE54276,0:POKE54277,0:POKE54278,0:PRINT"{clear}":POKE53280,0:POKE53281,0:POKE646,6:FORA=0TO10:PRINTTAB(A)"{space*5}{cyan}ivasive{space*2}action":NEXTA:PRINT:PRINT" guide your bug up the screen avoiding{space*4}the fast growing mushrooms.
524 PRINT"{yellow}the mushrooms spread down the screen as{space*2}the pollen germinates...":PRINT"{white} good luck.(don't play this game if{space*6}you get hay feaver)!!":POKE646,1:PRINT"{down}use joystick #1{space*2}press fire to start
560 IFPEEK(56321)=239THENM=0:GOTO20
570 GOTO560
9000 DATA0,0, 16,16,16,16,40,16,8,68,32,4,130,64,2,170,128,1,131,0,0,146,0,108,0,233,255,171,255,0,0,213,0,238,0,0,254,0,1,57,0,18,16,144,20,16,80,24,16,48,16,16,16,0,56,0,0,0,0,0,0,0,0,0,0,0,0
