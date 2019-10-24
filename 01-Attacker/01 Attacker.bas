1 print"{clear}":ra=0:in=.2:rem poke808,225:poke775,200
2 poke53280,1:poke53281,1:gosub3000
3 poke52,48:poke56,48
4 poke53272,(peek(53272)and240)+12
5 poke56334,peek(56334)and254
6 poke1,peek(1)and251
7 for i=0 to 511:pokei+12288,peek(i+53248):next
8 poke1,peek(1)or4
9 poke56334,peek(56334)or1
10 for i=12288 to 12583:reada:pokei,a:next
20 data 195,255,126,126,126,126,255,195
21 data 195,254,124,126,124,120,252,195
22 data 192,228,104,120,112,112,252,194
23 data 192,224,112,112,96,112,248,192
24 data 128,192,64,96,64,64,224,240
25 data 0,192,0,64,0,64,192,128
26 data 48,73,134,0,97,146,12,0
27 data 0,0,128,96,144,24,196,34
28 data 36,146,73,146,36,34,146,36
29 data 31,31,48,63,63,127,127,127
30 data 255,254,2,254,255,255,255,255
31 data 0,0,3,7,7,14,14,31
32 data 0,96,248,253,255,30,29,254
33 data 28,120,144,112,208,32,192,128
34 data 0,0,0,0,0,1,2,12
35 data 0,0,32,64,0,0,0,0
36 data 36,63,80,128,191,115,115,63
37 data 2,255,32,4,255,51,51,255
38 data 0,224,124,2,249,52,52,248
39 data 0,0,0,96,160,96,35,38
40 data 96,96,96,96,240,240,248,100
41 data 0,0,32,32,32,80,0,0
42 data 16,44,102,146,69,54,36,24
43 data 48,72,182,145,69,141,94,32
44 data 0,16,40,72,100,44,24,0
45 data 0,0,0,1,63,255,63,0
46 data 0,0,192,32,255,3,135,126
47 data 0,7,14,30,254,124,248,0
48 data 0,0,0,8,28,120,112,128
49 data 0,0,0,15,21,42,85,170
50 data 32,80,32,255,85,120,85,120
51 data 0,0,0,240,88,172,86,171
52 data 0,0,0,0,0,0,0,0
53 data 255,235,255,235,255,255,255,255
54 data 255,255,195,195,195,203,195,195
55 data 255,255,215,255,215,215,255,255
56 data 255,255,255,255,255,255,255,255
57 forqq=0to1000:next:poke198,0:gosub3100:gosub5000
60 t$=" pqr {up}{left*5} st ":print"{clear}"
61 ts$="{space*5}{up}{left*5}{space*4}"
63 p$="{space*36}yz[ "
80 print"{home}{down*8}";
81 print"{brown}{space*5}n"
82 print"{space*3}klm"
83 print"{space*3}ij"
84 print"{light gray}{space*3}@@"
85 da$="{blue}fff{light gray}e ":fori=1to13:printda$:next
86 print"{brown}$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$${home}":poke 2023,36:poke 56295,9
87 c=54272
90 print"{down*17}":tx=12:tm=1878
91 print"{right*27}]{^*7}{arrow left}"
92 print"{right*27}#$$!!$$$$"
93 print"{right*27}$$!!$$$#$"
94 print"{right*27}$#$$$$!!$"
95 print"{right*27}$$$";chr$(34);"$$#$$":bf=0:gf=0:tf=0
96 print"{home}";
97 print"{home}{down*23}"tab(12);t$;"{home}";
99 px=36:print"{home}":ph=1
100 k=peek(197):if k=64 then 120
102 if k=10 and px>1 then px=px-.5
104 if k=18 then px=px+.25
105 if k=23 andph<3 then gosub 900
107 if k=9 and ph>1 then gosub 910
108 if k=60 andbf<>2thenb=1024+((ph*2)*40)+(px-2)-1:bf=2:gosub 930
120 px=px-1:if px<1 then px=40
121 if bf=2 then gosub 200
125 print"{home}":for i=1 to ph:print:next
130 printright$(p$,px);left$(p$,40-px)
135 if rnd(1)<inandgf<>2 then gm=1309:gf=2
136 if gf=2 then gosub 950
137 if rnd(1)<in and tf<>2 then gosub 1000
138 if rnd(2)<in and tf<>2 then tm=1866+tx:tf=2
139 if tf=2 then gosub 1100
140 goto 100
200 pokeb,32:b=b+39:j=peek(b):if j<>32 then 210
202 poke b,28:pokeb+c,9:return
210 i=0
211 if j=i then 230
212 i=i+1:if i>5 then 220
213 goto 211
220 pokeb-39,int(rnd(ti)*3)+22:pokeb-39+c,2:fori=1to100:next:pokeb-39,32:bf=0:return
230 i=i+1:if i>5 then i=32
240 pokeb,i:pokeb+c,12:bf=0
241 if i=32 and peek(b-1)=6 then 250
245 return
250 pokegm,32:poketm,32:pokeb,6:pokeb+c,6:pokeb+1,7:pokeb+1+c,6
255 for x=b+41to194step40:pokex,8:pokex+c,6:next
260 foryy=1948tob+1step-40:forx=yytoyy+35:pokex,6:pokex+c,6:nextx:nextyy
275 for i=1 to 1000:next
276 poke 53272,(peek(53272)or15)-11
277 ra=ra+1:if ra>8 then ra=8
280 print"{clear}"
290 print"{down*7}{right*7}{purple}mission complete"
300 print"{down}{right*7}{blue}present rank:-"
305 print"{down}{right*7} ";ra$(ra)
310 print"{down}{right*7}{blue}do you wish to continue"
312 print"{down}{right*7}{blue}at a harder level?"
315 get a$:if a$<>"y" and a$<>"n"then 315
320 if a$="n"then 400
330 in=in+.1:if in>.4then da$=da$+"@"
335 poke53272,(peek(53272)and240)+12
340 goto 60
400 print"{clear}"
410 print"{down*10}{blue}{right*7}your final rank"
420 print"{down} {right*9}"ra$(ra)
430 for i=1 to 1000:next:sys 64738
440 stop
900 print"{home}":fori=1toph:print:next:print"{space*40}":ph=ph+1
902 return
910 print"{home}":fori=1toph:print:next:print"{space*40}":ph=ph-1
920 return
930 for i=0to24:pokec+i,0:next:return
950 pokegm,32:gm=gm-39:ifpeek(gm)<>32then990
951 if gm<1064thenpokegm,32:gm=1309:gf=0:pokegm,14:pokegm+c,9:return
952 pokegm,15:pokegm+c,0:return
990 ifpeek(gm)=21thenreturn
992 if peek(gm)=28thenpokegm,32:gm=1309:return
995 goto2000
1000 i=int(rnd(ti)*2)+1:ifi=1then1004
1002 if tx<22 then tx=tx+1:tm=tm+1:gosub1010:return
1004 if tx>6 thentx=tx-1:tm=tm-1:gosub1010:return
1010 print     "{brown}{home}{down*23}"tab(tx);t$;"{home}";:return
1100 poketm,32:tm=tm-40:ifpeek(tm)<>32then1140
1101 if tm<1064 then tm=1866+tx:tf=0:return
1103 poketm,21:poke tm+c,0:return
1140 if peek(tm)=15thenreturn
1145 poketm,32:tm=1866+tx:tf=0:goto 2000
1149 return
1150 goto2000
2000 poketm,32:pokegm,32:pokeb,32
2010 pl(1)=1024+((ph*2)*40)+(px-3)-1
2011 pl(2)=pl(1)+1
2012 pl(3)=pl(2)+1
2021 for j=1to3:pokepl(j),32:next
2022 for j=1to3:pl(j)=pl(j)+39+int(rnd(ti)*3):next
2023 forj=1to3:pokepl(j),int(rnd(ti)*15)+13:pokepl(j)+c,int(rnd(ti)*6)+8
2024 next
2025 if peek(pl(1)+40)<>32andpeek(pl(2)+40)<>32andpeek(pl(3)+40)<>32then2030
2026 goto2021
2030 for i=1to20:forj=1to3:pokepl(j),int(rnd(ti)*3)+22:next:next
2035 for j=1to3:pokepl(j),32:next
2040 poke53272,(peek(53272)or15)-11
2041 print "{clear}{blue}{right*8}you've crashed wally"
2042 print"{right*9}but you survive!"
2043 print"{down}{blue}{right*8}another flight y/n{sh space}?"
2045 geta$:ifa$=""then2045
2050 if a$="n"thensys64738
2060 ifa$="y"then 57
2070 goto 2045
3000 print"{down*9} {right*6}{space*2}a t t a c k e r "
3045 print"{home}"
3050 return
3100 poke53272,21:print chr$(14)
3101 print"{clear}{purple}{down*11}{right*12} instructions"
3102 geta$:ifa$=""thenu=u+1:ifu>20thenu=0:goto3110
3103 if a$<>""then3120
3104 goto3102
3110 uu=uu+1:ifuu>2thenuu=1
3111 if uu=1thenprint"{home}{blue}{down*13}{right*14} ({red}y{blue}es/{red}n{blue}o){space*4}":goto3102
3112 print"{home}{blue}{down*13}{right*14} ({red}n{blue}o/{red}y{blue}es){space*4}":goto 3102
3120 if a$<>"n"and a$<>"y"thenpoke198,0:goto3102
3121 if a$="n"then poke53272,(peek(53272)and240)+12:return
3130 print"{clear}{blue}";chr$(14);
3140 readx$:ifx$="*"thenprintchr$(13):goto3140
3141 if x$="end"then4050
3145 for x=1tolen(x$):printmid$(x$,x,1);:forxx=1to100:next:next
3150 goto 3140
4000 data "{blue}your mission:-","*","{red}destroy gestapo headquarters.","*"
4010 data "{blue}suggested method:-","*","{red}blow dam and flood building.","*"
4020 data "{blue}your armoury:-","*","{red}unlimited supply of 500kg bombs.","*"
4030 data "{blue}intelligence report:-","*","{red}dam guarded by a bunker containing a "
4031 data "{red}{space*3}machine gun.also a tank patrols gorge atbottom of dam.","*","*"
4034 data "good{sh space}luck...you{sh space}will{sh space}need{sh space}it","*","*","*"
4040 data "{blue}controls:-","*","*","increase altitude with '{red}w{red}'.","*"
4041 data "{red}decrease altitude with '{blue}x{red}'.","*"
4042 data "{red}increase velocity with '{blue}a{red}'.","*"
4043 data "{red}decrease velocity with '{blue}d{red}'.","*"
4044 data "{red}drop a bomb with{space*4}{blue}space{red}{right}{space*3}","*"
4045 data "*","{purple}press a key to start mission.","end"
4050 if peek(197)=64 then 4050
4052 restore:forzx=1to296:readzd:next
4055 poke 53272,(peek(53272)and240)+12:return
5000 ra$(1)="no hoper"
5001 ra$(2)="novice"
5002 ra$(3)="co-pilot"
5003 ra$(4)="captain"
5004 ra$(5)="ace flyer"
5005 ra$(6)="flight commander"
5006 ra$(7)="wing commander"
5007 ra$(8)="squadron leader"
5008 return
