!--------------------------------------------------
!- 28 October 2019 21:20:12
!- Import of : UNI.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\universe.d64
!- Commodore 64
!--------------------------------------------------
0 FORI=1TO11:GETA$:NEXT:GOSUB6000:GOTO500
10 JV=PEEK(56320):JV=15-(JVAND15):X=X+(JV=4)*8-(JV=8)*8:Y=Y+(JV=1)*4-(JV=2)*4:HX=INT(X/256):LX=X-256*HX:POKEV+16,HX:POKEV,LX:POKEV+1,Y:F=F-1:IFX>=300THENGOTO5000
60 IFF=0THEN4000
70 PRINT"{home}{down*3}{red}{reverse off}fuel";:IFF<100THENPRINT" ";
72 IFF<10THENPRINT" ";
73 PRINTF:PRINT"{home}{down*3}{right*10}{space*6}high"HI;:PRINT"{left}{home}{down*3}{right*30}score"SC;:RETURN
100 FORA=255TO30STEP-20:B=B+INT(RND(1)*20)-10:IFB<120THENB=120
105 IFB>175THENB=175
110 POKEV+2,A:POKEV+3,B:GOSUB10:POKEV+4,256-A:POKEV+5,140:IFPEEK(V+30)=3ANDX>50THEN2999
125 IFPEEK(V+30)=5ANDX>50THEN2999
130 IFY<112ORY>174THEN2999
140 NEXT:B=150:GOTO100
500 GOSUB1000
510 GOSUB1500:GOSUB2000:Z=PEEK(V+30):GOTO100
1000 V=53248:F=150:X=24:Y=160:SC=0:HI=0:A=0:B=200:S=54272:W=54276:QX=0:L=S:H=S+1:POKES+24,15:RETURN
1500 POKE53280,0:POKE53281,0:PRINT"{clear}{blue}"SPC(13)"{reverse on} universe {down*3}{yellow}":FORI=1TO120:PRINT"{reverse on} ";:NEXT:PRINT"{cm p}{cm i}{cm o}{cm p}{cm i}{cm o}{cm p}{cm i}{cm p}{cm @}{cm o}{cm i}{cm o}{cm p}{cm o}{cm i}{cm p}{cm @}{cm o}{cm @}{cm p}{cm i}{cm o}{cm @}{cm p}{cm o}{cm i}{cm @}{cm p}{cm i}{cm p}{cm o}{cm p}{cm @}{cm p}{cm o}{cm i}{cm o}{cm p*2}":PRINT"{down*9}{reverse on}{cm y}{cm u}{cm y}{cm u}{cm y}{cm t}{cm u}{cm y}{cm t}{cm y}{cm u}{cm y*3}{cm u*2}{cm y}{cm t}{cm y*2}{cm t}{cm u}{cm y}{cm t}{cm y}{cm u}{cm y}{cm t}{cm y}{cm u}{cm y}{cm t}{cm y}{cm u}{cm y}{cm t}{cm u}{cm y}{cm t}{cm y}";:FORI=1TO120:PRINT"{reverse on} ";:NEXT:RETURN
2000 FORN=0TO62:READA:POKE832+N,A:NEXT:FORN=0TO62:READB:POKE896+N,B:NEXT:POKEV+21,7:POKE2040,13:POKE2041,14:POKE2042,14:POKEV+39,1:POKEV+40,2:POKEV+41,2:POKEV+29,7:POKEV+23,1:Z=PEEK(V+30):RETURN
2020 DATA 0,0,32,0,0,112,255,239,255,127,239,255,3,0,112,1,128,224,0,193, 192,127,255, 224,31,255,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0
2050 DATA 0,0,0,0,224,0,3,248,0,0,70,0,14,238,0,12,178,0,31,187,0,13,158,0, 15,206,0,7,252,0,3,248,0,0,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,0
2999 POKE54277,1:POKE54278,240:POKEW,129:POKEH,12:POKEL,40:FORP=1TO750:NEXT:FORI=0TO15:POKEV+39,I:POKE5320,I:FORP=1TO50:NEXTP,I:POKEV+21,0:POKE54296,0:PRINT"{clear}{blue}{reverse on}"SPC(13)"universe{reverse off}":QX=1:GOSUB6001:POKE54296,15:PRINT"{down*2}{green}{space*5}you have failed in your mission
3030 PRINT"{down*7}{yellow}{space*3}the enterprise has been destroyed
3040 PRINT"{down*4}{white} your resignation is humbly requested{down*2}":PRINTSPC(11)"{light blue}enter {reverse on}y{reverse off}es or {reverse on}n{reverse off}o
3060 GETA$:IFA$=""THEN3060
3070 IFA$="n"THENF=150:X=24:Y=160:SC=0:A=0:B=200:RESTORE:Z=PEEK(V+30):QX=0
3075 IFA$="n"THENGOTO510
3080 IFA$="y"THENPRINT"{green}{space*3}resignation gratefully accepted":SYS64738
3090 GOTO3060
4000 POKEV+21,0:PRINT"{clear}{blue}{reverse on}"SPC(13)"universe{reverse off}":PRINT"{down*2}{yellow}{space*8}you have run out of fuel":PRINT"{down*4}{space*3}the enterprise has been destroyed":GOTO3040
5000 POKEV+21,0:PRINT"{clear}{blue}{reverse on}"SPC(13)" universe {reverse off}":PRINT"{white}{down*3}"SPC(13)"well done!!":FORI=1TO255STEP5:POKEW,17:POKEH,I:POKEL,247:POKEW,0:NEXT:FORI=255TO0STEP-5:POKEW,17:POKEH,I:POKEL,247:POKEW,0:NEXT:POKE54296,15:PRINTSPC(8)"{red}{down*10}prepare for next cavern":FORI=1TO1500:NEXT:SC=SC+F:IFSC>HITHENHI=SC
5040 FL=FL+1:F=150:F=F-(FL*10):FORI=1TO10:GETA$:NEXT:QX=0:X=24:Y=160:A=0:B=200:RESTORE:GOTO510
6000 PRINT"{clear}{space*5}do you want instructions (y/n)?
6001 FORF=54272TO54296:POKEF,0:NEXT:IFQX=1THENRETURN
6010 GETA$:IFA$=""THEN6010
6020 IFA$<>"y"THENRETURN
6030 POKE53280,0:POKE53281,0:PRINT"{clear}{blue}"SPC(11)"{reverse on}u n i v e r s e{down*2}{yellow}":PRINT" the enterprise is trapped in a series":PRINT" of space caverns. can you fly through":PRINT" them and escape.":PRINT"{down}{green}{space*4}guide the enterprise through the
6050 PRINT"{down*2}{space*3}caverns without touching the walls":PRINT"{down*2}{space*8}or hitting the meteors":PRINT"{yellow}{down*4}use a joystick to control the enterprise":PRINT"{down*2}{space*2}{white}{space*7}press {reverse on}fire{reverse off} to start
6110 JV=PEEK(56320):IFJV<>111THEN6110
6115 FORI=1TO23:PRINT:FORP=1TO30:NEXT:NEXT:RETURN
