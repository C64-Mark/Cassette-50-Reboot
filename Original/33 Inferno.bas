!--------------------------------------------------
!- 27 October 2019 08:43:09
!- Import of : INF.PRG
!- From Disk : c:\users\marka\games\c64\cbmprg\cassette50reboot\inferno.d64
!- Commodore 64
!--------------------------------------------------
10 PRINT"{clear}":RL=0:UD=0:TM=0:POKE53280,0:POKE53281,0:PRINT"{down*6}{reverse on} i n f e r n o ":PRINT" you are trapped inside a maze that is{space*3}on fire. can you escape the";:PRINT" infernal":PRINT"{cyan}{space*15}{cm p}{space*5}{cm p*7}{space*2}{cm p*7}{space*2}
50 PRINT"{cyan}{space*3}OM{space*3}NP{space*4}N{sh space}M{sh space*10}N{space*2}{cm h}{space*8}":PRINT"{cyan}{space*3}{cm h} M N {cm n}{space*3}N{space*3}M{space*8}N{space*3}{cm h}{space*8}":PRINT"{cyan}{space*3}{cm h}{space*2}{cm y}{space*2}{cm n}{space*2}N{space*5}M{space*6}N{space*4}{cm h}{space*8}":PRINT"{cyan}{space*3}{cm h}{space*5}{cm n}{space*2}L{cm p*5}{sh @}{space*5}N{space*5}{cm q}CCCCCC{space*2}":PRINT"{cyan}{space*3}{cm h}{space*5}{cm n}{space*2}{cm h}{space*5}{cm n}{space*4}N{space*6}{cm h}{space*8}
80 PRINT"{cyan}{space*3}{cm h}{space*5}{cm n}{space*2}{cm h}{sh space*5}{cm n}{sh space*3}N{space*7}{cm h}{space*8}":PRINT"{cyan}{space*3}{cm h}{space*5}{cm n}{space*2}{cm h} {sh space*4}{cm n}{space*2}N{space*8}{cm h}{space*8}":PRINT"{cyan}{space*3}{cm h}{space*5}{cm n}{space*2}{cm h}{space*5}{cm n}{space*2}L{cm p*6}{space*2}L{cm p*6}{space*2}":FORMA=1TO3000:NEXTMA:PRINT"{clear}":PRINT"{down*10}":PRINT"{red} u=up:n=down:h=left:j=right:p=try again":FORCZ=1TO2000
330 NEXTCZ
340 PRINT"{clear}":JK=0
350 LZ=INT(RND(1)*1001):JK=JK+1:IFJK=350THEN500
380 POKE1024+LZ,160:POKE55296+LZ,3:GOTO350
500 POKE2004,88:POKE56276,4
510 GETMO$:IFMO$=""THEN510
530 IFMO$="u"THENGOSUB2000
540 IFMO$="n"THENGOSUB3000
550 IFMO$="h"THENGOSUB4000
560 IFMO$="j"THENGOSUB5000
570 IFMO$="p"THENRL=0:UD=0:TM=TM-1:GOTO340
580 GOTO510
2000 POKE2004+RL+UD,32:UD=UD-40:IFPEEK(2004+RL+UD)=160THEN2100
2040 POKE2004+RL+UD,88:POKE56276+RL+UD,4:PT=0
2060 PT=PT+1:IFPT=40THEN2090
2080 IFPEEK(1023+PT)=88THEN20000
2085 GOTO2060
2090 RETURN
2100 UD=UD+40:POKE2004+RL+UD,88:POKE56276+RL+UD,4:RETURN
3000 POKE2004+RL+UD,32:UD=UD+40:IFPEEK(2004+RL+UD)=160THEN3100
3040 POKE2004+RL+UD,88:POKE56276+RL+UD,4:PT=0
3060 PT=PT+1:IFPT=40THEN3090
3080 IFPEEK(1023+PT)=88THEN20000
3085 GOTO3060
3090 RETURN
3100 UD=UD-40:POKE2004+RL+UD,88:POKE56276+RL+UD,4:RETURN
4000 POKE2004+RL+UD,32:RL=RL-1:IFPEEK(2004+RL+UD)=160THEN4100
4040 POKE2004+RL+UD,88:POKE56276+RL+UD,4:PT=0
4060 PT=PT+1:IFPT=40THEN4090
4080 IFPEEK(1023+PT)=88THEN20000
4085 GOTO4060
4090 RETURN
4100 RL=RL+1:POKE2004+RL+UD,88:POKE56276+RL+UD,4:RETURN
5000 POKE2004+RL+UD,32:RL=RL+1:IFPEEK(2004+RL+UD)=160THEN5100
5040 POKE2004+RL+UD,88:POKE56276+RL+UD,4:PT=0
5060 PT=PT+1:IFPT=40THEN5090
5080 IFPEEK(1023+PT)=88THEN20000
5085 GOTO5060
5090 RETURN
5100 RL=RL-1:POKE2004+RL+UD,88:POKE56276+RL+UD,4:RETURN
20000 TM=TM+1:IFTM=10THEN20040
20030 RL=0:UD=0:GOTO340
20040 PRINT"{clear}":PRINT"{down*10}":PRINT"{cyan}{space*13}you've done it{space*12}":FORYM=1TO3000:NEXRYM:PRINT"{clear}":GOTO10
