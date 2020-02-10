8 poke53280,0:poke53281,0:hs=10000:goto59000
10 print"{clear}{white}":poke54296,15:v1=54272:co=54272:sc=0:li=3:b=0:v=0:aw=1
15 s=1903:t=0:m=1389:pokev1+4,33:pokev1+4,0:restore:data0,0,128,128,248,255,126,0,0,0,0,16,0,0,0,0,0,56,124,84,124,56,0,0,248,136,190,170,250,34,62,0,0,7,62,254,254,62,7,0,49,70,49,204,18,100,24,34,0,66,102,24,24,102,66,0
55 data0,0,60,60,60,60,60,0:ifb=1then92
63 hs=10000:gosub9000:pokev1+4,33:pokev1+4,0:print"{home}{clear}{reverse on}{green}{down}{right*7}{red}**** {green}psion attack{red}****":poke53280,0:poke53281,0:print"{reverse on}{green}{down}{right*9}(c) 1984 cascade ":print"{reverse on}{down}{right*10}use these keys":print"{reverse on}{right*10}eeeeeeeeeeeeee":print"{reverse on}{right*11}a=up{space*2}z=down
80 print"{reverse on}{right*11}'space'=fire":print"{reverse on}{right*11}m=hyperspace":print"{reverse on}{purple}{down}destroy the psion attack waves as they{space*2}":print"{reverse on}{purple}advance towards you with your cannon{space*4}":print"{reverse on}{purple}hitting a space mine {reverse off}{red}q{reverse on}{purple} is fatal{space*9}
86 print"@ {reverse on}your ship{space*7}{reverse off}b{reverse on} fuel pod 100 points ":print"c{reverse on} fighter 250 points {reverse off}d{reverse on} cruiser 50 points":print"f{reverse on} battlestar{space*2}200 points{space*16}":print"{reverse on}{right*6}press 'f1' to start
90 gets$:ifs$<>"{f1}"then90
92 poke53280,1:print"{clear}{white}":print"{home}{green}{down*20}NMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNMNM":pokev1+4,33
100 fori=1to2:a=1063+int(rnd(1)*777):pokea,1:pokea+co,2:v=v+1:ifv=200thenprint"{home}{reverse on}{clear}{green}{down*4}{right*4}attack wave"aw:aw=aw+1
107 ifv=200thenprint"{reverse on}{down*2}{right*6}completed
110 ifv=200thenpokev1+4,0:pokev1+4,129:fort=1to2000:next:v=0:b=1:goto15
115 print"{home}{yellow}{reverse on}score"sc;:print"{home}{yellow}{reverse on}{right*12}hi"hs;:fori=1to21:printspc(1)chr$(20):next:t=t+1:pokem,0:pokeco+m,1:pokem-1,32:pokes+co,5:pokes-40+co,5:pokes-80+co,5:ift=1ort=8ort=10ort=16thenpokes,77
145 ift=2ort=11thenpokes-40,78
150 ift=3thenpokes-80,78
155 ift=4thenpokes-80,77
160 ift=5ort=12thenpokes-40,81:pokes-40+co,10
165 ift=6ort=9ort=13ort=17thenpokes,78
205 ift=14ort=15thenpokes,81:pokes+co,2
206 ift=7ort=18ort=19thenpokes,2:pokes+co,8
210 ift=19thent=0
300 k=peek(197):ifk=10thenm=m-40:pokem+40,32
310 ifk=12thenm=m+40:pokem-40,32
315 ifk=36thent=9:pokev1+4,0:pokev1+4,17:goto92
320 ifk=60then3000
335 ifm<1069thenm=1069
340 ifm>1909thenm=1909
345 pokem-1,32:pokeco+m,1:pokem,0:cc=1103+(int(rnd(1)*17)*40):tt=int(rnd(1)*6):hh=int(rnd(1)*8)+1:iftt=2thenpokecc,2:pokeco+cc,1
460 iftt=3thenpokecc,3:pokeco+cc,6
465 iftt=5thenpokecc,81:pokeco+cc,2
470 ifhh=4thenpokecc,4:pokeco+cc,4
480 ifhh=6thenpokecc,6:pokeco+cc,5
500 nn=int(rnd(1)*2)+1:ifnn=1thenpokecc,2:pokeco+cc,1
600 ifpeek(m+1)=1then1000
610 ifpeek(m+1)<>32then6000
1000 goto100
3000 pokev1+4,0:pokev1+4,129:fori=m+1tom+30:k=peek(203):ifk=36then315
3004 ifpeek(i)=1then3010
3005 ifpeek(i)<>32then4000
3010 pokei,104:pokei,32:next:pokev1+4,129:pokev1+4,129:goto335
4000 ss=peek(i):ifss=205orss=207then5000
4006 ifss=81then6000
4010 pokev1+4,0:pokev1+4,129:pokei,5:pokeco+i,1:fora=1to50:next:pokei,32:ifss=2thensc=sc+100
4030 ifss=3thensc=sc+250
4040 ifss=4thensc=sc+50
4050 ifss=6thensc=sc+200
4060 ifss=81thensc=sc+50
5000 goto100
6000 li=li-1:pokev1+4,0:pokev1+4,129:pokem,32:pokem+1,7:pokem-1,7:pokem+41,7:pokem-41,7:pokem-38,7:fort=1to100:next:pokem+40,7:pokem+4,7:pokem+6,7:pokem-37,7:pokem+83,7:fort=1to100:next:pokem+120,7:pokem-120,7:pokem+5,7:pokem+117,7:pokem+117,7:fort=1to100:next:fort=1to1000:next:pokev1+4,0:b=1
6400 ifli<1thenprint"{home}{clear}{reverse on}{green}{down*2}{right*6}game over":print"{reverse on}{down*2}{right*3}you scored"sc
6420 ifli<1andsc>hsthenhs=sc
6500 ifli<1thenfort=1to2000:next:goto10
8000 goto15
9000 forso=0to24:pokev1+l,0:next:pokev1+24,15:pokev1+1,10:pokev1+5,11:pokev1+8,3:pokev1+12,16*8+11:return
59000 print"{reverse on}{yellow}{clear}{down*4}{right*3}loading graphics...please wait":poke52,56:poke56,56:clr:poke56334,peek(56334)and254:cn=0:poke1,peek(1)and251:fori=0to2047:pokei+14336,peek(53248+i):nexti:poke1,peek(1)or4:poke56334,peek(56334)or1
59060 fori=0to7:readcd:ifcd<0theni=7:goto59090
59064 poke14336+8*cn+i,cd:nexti:cn=cn+1:goto59060
59080 data-1
59090 poke53272,(peek(53272)and240)or14:goto10
