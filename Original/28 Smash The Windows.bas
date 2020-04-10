!--------------------------------------------------
!- 28 October 2019 21:13:29
!- Import of : SMASH.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\smashwindow.d64
!- Commodore 64
!--------------------------------------------------
1 GOSUB7000:POKE54296,15:ZX=1943:POKE650,255:POKE53281,13:POKE54276,17:GOTO40
20 X=-X:POKE54272,100:POKE54273,100:RETURN
30 Y=-Y:POKE54272,100:POKE54273,100:RETURN
40 PRINT"{clear}":SC=0:Z=9:FORJ=41TO200STEP3:POKE1024+J,102:POKE55296+J,(INT(RND(1)*8)):NEXT:F=10:X=-3:Y=1:A=19:M=A:B=1:N=B
160 IFA<0THENGOSUB20
162 IFA>19THENGOSUB2000
165 A=A+X:IFB<1ORB>38THENGOSUB30
185 B=B+Y:IFPEEK(1024+40*A+B)=102THENGOSUB5000
300 POKEZX+F,32:POKEZX+F-1,32:POKEZX+2+F,102:POKEZX+1+F,102:POKEZX+3+F,32:POKEZX+4+F,32:POKEZX+54272+2+F,0:POKEZX+54272+1+F,0:POKE56176,0:GETA$:IFA$="z"THENF=F-2
360 IFA$="m"THENF=F+2
400 POKE1024+40*M+N,32:POKE1024+40*A+B,81:POKE55296+40*A+B,0:POKE54273,0:POKE54272,0:M=A:N=B:GOTO160
2000 GOSUB20:IFABS(F-B)<2THENRETURN
2010 Z=Z-1:PRINT"{home}{black}ball"Z:FORT=1TO20:POKE54272,5*T:POKE54273,5*T:NEXT:IFZ=0THEN6000
2030 RETURN
5000 POKE1024+40*A+B,32:POKE54272,0:POKE54273,0:FORK=1TO2:POKE54276,129:POKE54272,255-10*K:POKE54273,255-10*K:POKE54276,33:NEXT:SC=SC+10:PRINT"{home}{black}ball"Z"{red} score"SC:GOSUB20:RETURN
6000 POKE54272,0:POKE54273,0:PRINT"{home}{down*8}{right*5}another game y or n?
6006 GETA$:IFA$="y"THENRUN
6007 IFA$<>"n"THEN6006
6010 STOP
7000 PRINT"{clear}{down*3}{right*8}smash the windows":PRINT"{down*3}a version of the original computer":PRINT"game breakout. it's very simple to play":PRINT"you have 9 stones with which to break":PRINT"as many windows as possible but you must
7050 PRINT"{up}be economical with your stones by ":PRINT"bouncing them off your slide at the ":PRINT"bottom of the screen.":PRINT"{down}use keys z(left) and m (right).":PRINT"{down}{space*8}continue y or n?
7110 GETA$:IFA$=""THEN7110
7112 IFA$="y"THENRETURN
