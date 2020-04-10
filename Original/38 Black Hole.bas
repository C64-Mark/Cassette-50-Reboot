0 PRINT"{clear}":POKE53280,0:POKE53281,0:SC=0:GOSUB8000
7 GOTO500
9 GOTO502
10 JV=PEEK(56320):JV=15-(JVAND15):FR=JVAND16:X=X+(JV=4)*8-(JV=8)*8:Y=Y+(JV=1)*8-(JV=2)*8:HX=INT(X/256):LX=X-256*HX:POKEV+16,HX:POKEV,LX:POKEV+1,Y:L=L-1:T=T+1:IFJV=4ORJV=2ORJV=1THENPOKES,100:POKEHF,34:POKELF,75
49 IFX>295THENX=295
50 IFX<28THENX=28
51 IFY>168THENY=170
52 IFY<58THENY=58
53 IFX+Y=86THENGOSUB5000
54 POKEHF,0:POKELF,0:FORJK=0TO10:NEXT:RETURN
100 FORA=25TO255STEP15:B=B+INT(RND(1)*20)-3:IFB<30THENB=40
101 POKEV+10,B:POKEV+11,B:IFA>170THENA=0
105 IFB>170THENB=170
110 POKEV+2,B:POKEV+3,A:GOSUB10:POKEV+4,80:POKEV+5,A:C=C+6:IFC>=170THENC=0
115 POKEV+6,23:POKEV+7,C:D=D+6:IFD>=170THEND=0
119 POKEV+8,120:POKEV+9,D:POKEV+44,7:IFT=50THENPOKE53281,6:POKE53280,6
122 IFT=100THENPOKE53281,0:POKE53280,0
123 IFT=150THENGOTO7000
131 P=PEEK(V+30):IFP=3THENGOSUB4000
132 IFP=5THENGOTO4000
133 IFP=9THENGOTO4000
134 IFP=17THENGOTO4000
136 IFP=33THENFORYY=14TO30:POKE53280,YY:POKEV+21,31:NEXT
137 NEXT:GOTO100
500 GOSUB1000
502 GOSUB2999:GOSUB1500:GOSUB2000:GOTO100
1000 V=53248:L=150:X=255:Y=170:HI=0:A=0:B=200:T=1:R=54296:W=54276:HF=54273:LF=54272:S=54278:PH=54275:PL=54274:VG=54277:POKER,15:POKEVG,100:POKES,100:POKEW,129:RETURN
1500 POKE53280,14:POKE53281,14:RETURN
2000 FORN=0TO62:READA:POKE832+N,A:NEXT:FORN=0TO62:READB:POKE896+N,B:NEXT:FORN=0TO62:READL:POKE958+N,L:NEXT:FORI=0TO4:POKEV+40+I,2:NEXT:P=PEEK(V+30):POKEV+21,63:POKE2040,13:POKE2041,14:POKE2042,14:POKE2043,14:POKE2044,14:POKE2045,15:POKEV+45,7:RETURN
2020 DATA 0,28,0,0,62,0,7,241,0,47,177,0,95,209,0,47,241,0,7,241,96,0,26,0, 0,46,144,0,107,176,0,107,176,0,232,176,0,236,176,0,224,176,0,126,176, 0,30,176,0,12,96,0,12,0,0,12,0,0,127,0,0,127,0
2023 DATA 0,0,0,0,12,0,0,237,192,15,237,252,7,63,56,1,255,224,0,45,0,0,237,224, 1,255,240,3,127,248,6,255,60,5,255,28,5,255,156,5,255,252,5,255,252, 6,255,252,3,127,248,1,191,240,0,223,224,0,127,192,0,31,0
2030 DATA0,20,0,0,105,0,1,242,0,3,252,0,1,250,0,0,9,0,0,20,0,0,52,0,0,56,0,0,28,0,0,8,0,0,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
2999 PRINT"{clear}":PRINT"{brown}{reverse on} {reverse off}{space*2}{reverse on} {reverse off}{space*3}{reverse on} {reverse off}{space*3}{reverse on} {reverse off}{space*4}{reverse on} {reverse off}{space*20}":PRINT"{brown} {reverse on} {reverse off} {reverse on} {reverse off}{space*2}{reverse on} {reverse off}{space*3}{reverse on} {reverse off}{space*4}{reverse on} {reverse off}{space*21}":PRINT"{brown}{space*2}{reverse on}{space*3}{reverse off}{space*2}{reverse on} {reverse off}{space*2}{reverse on}{space*2}{reverse off}{space*2}{reverse on} {reverse off}{space*20}":PRINT"{brown}{space*3}{reverse on} {reverse off}{space*2}{reverse on} {reverse off}{space*4}{reverse on} {reverse off}{space*2}{reverse on} {reverse off}{space*23}
3004 PRINT"{brown}{space*3}{reverse on} {reverse off}{reverse on} {reverse off}{space*2}{reverse on} {reverse off}{reverse on} {reverse off}{space*2}{reverse on} {reverse off}{space*27}":PRINT"{brown}{space*4}{reverse on}{space*2}{reverse off}{space*2}{reverse on}{space*4}{reverse off}{space*2}{reverse on} {reverse off}{space*24}":PRINT"{brown}{space*5}{reverse on}{space*2}{reverse off}{reverse on}{space*2}{reverse off}{space*4}{reverse on} {reverse off}{space*25}":PRINT"{brown}{space*7}{reverse on}{space*4}{reverse off}{space*2}{reverse on} {reverse off}{space*25}
3008 PRINT"{brown}{space*8}{reverse on}{space*3}{reverse off} {reverse on} {reverse off}{space*26}":PRINT"{brown}{space*8}{reverse on}{space*5}{reverse off}{space*26}":PRINT"{brown}{space*8}{reverse on}{space*4}{reverse off}{space*27}":PRINT"{brown}{space*8}{reverse on}{space*3}{reverse off}{space*27}":PRINT"{brown}{space*8}{reverse on}{space*3}{reverse off}{space*27}
3013 PRINT"{brown}{space*8}{reverse on}{space*3}{reverse off}{space*12}{yellow}{reverse on}{sh pound}{cm t*2}{cm asterisk}{reverse off}{space*11}":PRINT"{brown}{sh space}{space*7}{reverse on}{space*3}{reverse off}{space*11}{yellow}{reverse on}{sh pound}{cm t*4}{cm asterisk}{reverse off}{space*11}":PRINT"{brown}{space*8}{reverse on}{space*3}{reverse off}{space*12}{yellow}{reverse on}{cm y}{cm t*2}{cm y}{reverse off}{space*12}":PRINT"{brown}{space*7}{reverse on}{sh pound}{space*3}{cm asterisk}{reverse off}{space*11}{yellow}{reverse on}{cm y}{cm t*2}{cm y}{reverse off}{space*12}
3017 PRINT"{green} {reverse on}{space*11}{black}{cm +}{space*8}{cm +}{green}{space*16}":PRINT"{green} {reverse on}{space*11}{black}{cm +}{space*8}{cm +}{green}{space*16}":PRINT"{green} {reverse on}{space*11}{black}{cm +}{space*8}{cm +}{green}{space*16}":PRINT"{green} {reverse on}{space*11}{black}{cm +}{space*8}{cm +}{green}{space*16}":PRINT"{green} {reverse on}{space*11}{black}{cm +}{space*8}{cm +}{green}{space*16}
3022 PRINT"{green} {reverse on}{space*11}{black}{cm +}{space*8}{cm +}{green}{space*16}":POKE53281,14:RETURN
4000 PRINT"{white}{up*24}{space*8}hard{space*3}luck{space*3}snoopy{space*2}!{space*9}":P=Y:FORT=XTO255STEP5:P=P+RND(1)*20:P=P-3:IFP>170THENP=150
4002 POKEV,T:POKEV+1,P:POKEW,129:POKEHF,T:POKELF,P:POKEW,0:NEXT:POKEHF,0:POKELF,0:POKEV,255:POKEV+1,170:POKEV+29,0:POKEV+23,0:POKEV+21,0:RUN:PRINT"{clear}
5000 FORI=1TO10:GETA$:NEXT:PRINT"{clear}{space*10}{yellow}well done snoopy !":POKEV+21,33:POKEV,160:POKEV+1,100:FORI=1TO3:POKEV+10,135:FORY=75TO112STEP3:POKEV+11,Y:FORP=1TO50:NEXT:NEXT:POKEV+10,135:FORY=112TO75STEP-3:POKEV+11,Y:FORP=1TO50:NEXT:NEXT:NEXT:SC=SC+1:IFSC=1THENPOKEV+23,12
5006 IFSC=2THENPOKEV+29,12
5007 PRINT"{home}"SC:POKEV+21,1
5025 POKER,10:POKEW,17:POKEVG,18:READH:READO:IFH=-1THENFORP=1TO750:NEXT:POKEV+39,1:RESTORE:GOTO7
5038 POKEHF,H:POKELF,O:POKEV+39,H:FORMJ=D-50TOD-20:POKES,136:NEXT:FORT=1TO75:NEXT:POKEHF,0:POKELF,0:POKEW,0:GOTO5025
5060 DATA51,97,43,52,34,75,43,52,51,97,34,75,43,52,38,126,34,75,43,52,45,198,51,97,51,97,51,97,43,52,38,126,34,75,64,188,57,172,64,188,68,149,68,149,51,97,43,52,68,149,43,52,43,52,45,198,43,52,38,126,43,52,45,198,45,198
5090 DATA45,198,43,52,38,126,34,75,64,188,57,172,64,188,34,75,-1,-1,-1
7000 PRINT"{home}{yellow}{space*4}you've{space*2}run{space*2}out{space*2}of{space*2}{white}time{space*10}":FORUU=1TO2000:NEXT:POKEV+23,0:POKEV+29,0:POKEV+21,0:RUN:RESTORE:GOTO7
8000 POKE56320,0:PRINT"{clear}{white}{reverse on}{space*14}black hole{space*16}":PRINT"{reverse off}{down} poor old woodstock's fallen out of his ":PRINT"{down}{cyan}tree again and being his pal snoopy{space*2}you":PRINT"{down}{red} have to help him back up again.":PRINT"{down}{green}{space*3}what do you mean you can't fly?
8050 PRINT"{yellow}{space*3}you've got the latest 'acme' corp":PRINT"{orange}{space*14}jet pac":PRINT"{down}{light blue}{space*10}so get on up there":PRINT"{pink}{space*7}(but mind those apples !)":PRINT"{purple}{down}{space*2}if you miss him he will descend into":PRINT"{purple}{space*2}the deep dark well at the foot of 
8084 PRINT"{purple}{space*2}the tree and be lost forever.":PRINT"{down}{space*2}press {reverse on}fire{reverse off} to start on joystick 2
8140 JV=PEEK(56320):IFJV=111THENRETURN
8150 GOTO8140
10000 PRINTPEEK(56320):GOTO10000
