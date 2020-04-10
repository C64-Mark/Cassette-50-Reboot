1 poke53280,3:poke53281,1:data60,36,126,90,90,90,90,126,60,60,153,126,24,24,36,102,24,24,40,28,10,8,20,34,24,24,20,56,80,16,40,68,66,126,66,126,66,126,66,126,67,231,45,13,15,14,7,3
2 data194,231,180,176,240,112,224,192,3,6,60,54,6,0,0,0,192,96,60,108,96,0,0,0,0,0,14,31,63,127,255,255,0,0,0,192,248,255,255,255,255,255,127,63,31,14,0,0,255,255,255,248,192,0,0,0,3,15,31,63,127,68,86,78,192,240,248,252
3 data254,70,214,214,78,86,84,127,127,127,127,127,198,222,94,254,254,254,254,254,129,195,229,115,121,127,127,63,129,195,167,206,158,254,254,252,31,7,3,2,14,2,0,0,248,224,192,64,112,64,0,0,0,192,160,144,254,255,254,24,0,31,40,72
4 data127,255,255,48,191,191,0,253,253,0,191,191,235,75,74,0,255,0,255,0,198,132,68,214,0,255,0,255,169,232,168,0,255,0,255,0,255,255,255,255,255,255,255,255,224,240,248,250,253
5 data249,249,249,31,63,63,63,63,63,127,253,255,36,90,24,24,0,0,0:print"{clear}{blue}{reverse on}{cm +*40}":print"{reverse on}{down*3}{right*11}barrel{space*2}jump{right*5}":print"{reverse on}{down*2}{right*11}cascade 1984":print"{reverse on}{down}{right*11}(c)copyright
6 print"{reverse on}{down}{right*8}all rights reserved"
7 print"{reverse on}{down}{right*4}loading graphics-please wait.":poke52,56:poke56,56:clr:poke56334,peek(56334)and254:cn=0:poke1,peek(1)and251:fori=0to2048:pokei+14336,peek(53248+i):nexti:poke1,peek(1)or4:poke56334,peek(56334)or1
8 fori=0to7:readcd:ifcd<0theni=7:goto11
9 poke14336+8*cn+i,cd:nexti:cn=cn+1:goto8
10 data-1
11 print"{down}{right*7}{reverse on}press (a) to play game":print"{down}{right*7}{reverse on}press (b) for instructions
12 geta$:ifa$="a"then30
13 ifa$="b"then15
14 goto12
15 print"{clear}{down}{right*7}{cm +*5}instructions{cm +*5}":print"{down} you're brewery bill a delivery man for{space*2}a brewery!":print"{down} first cross on the moving barrel to the other side.":print"{down}then climb up the ladder until you reach
16 print"{down} the level{space*2}with the flashing barrel on.":print"{down} pick up the barrel and take it back to{space*2}the lorry for delivery.":print"{down*2}{right*7}{cm +*4}press any key{cm +*4}
17 geta$:ifa$=""then17
18 print"{clear}{down} you have picked up a barrel when the":print" beep stops & the barrel stops flashing":print"{down} if you fall off the ladder or miss the":print"barrel or your tip runs out then you are{down} fired and instantly killed":print"{down*2}{right*7}{cm +*3}press any key{cm +*3}
19 geta$:ifa$=""then19
20 print"{clear}{down}the tip is displayed{space*2}at the top left{space*3}and starts at 99 pence and":print"decreases as the game unfolds.":print"{down}when the barrel reaches the cart the tipleft is added to your score.":print"{down}the score is displayed at the top middle
21 print"{down}the highest score is displayed at the{space*3}top right.":print"{down*2}{right*7}{cm +*3}press any key{cm +*4}
22 geta$:ifa$=""then22
30 print"{clear}{reverse on}{down*3}{right*6}use keyboard:key a(left{space*2}d(right)":print"{reverse on}{down}{right*6}and{space*2}w(up) x(down)":print"{reverse on}{down}{right*6}or use a joystick (port1)":print"{reverse on}{down*4}{right*6}press any key to start";
40 geta$:ifa$=""then40
90 poke53272,31
100 poke650,255:sc=0
105 d(1)=1130:d(2)=1290:d(3)=1450:d(4)=1610:a=1768:c=54272:sp=0:g=2:tp=99:ff=0:v=0:f=0:pa=56321:poke53280,3:poke53281,7:s4=54272:poke54296,15:s1=54273:h=0:z=0:sy=5:wv=17:gosub10000:poke53272,31:ifsc>hithenhi=sc
140 print"{clear}{reverse off}{down*2}{right*8} {black}d{red}{space*16}{red}@{red}w":print"{right*8} {black}d{red}wwwwwwwwwwwwwwwwww{right*2}":gosub3000:print"{right*8} {black}d{space*16}{cyan}@{red}w":print"{right*8} {black}d{red}wwwwwwwwwwwwwwwwww":gosub3000:print"{right*8} {black}d{space*16}{purple}@{red}w
200 print"{right*8} {black}d{red}wwwwwwwwwwwwwwwwww":gosub3000:print"{right*8} {black}d{space*16}{green}@{red}w":print"{right*8} {black}d{red}wwwwwwwwwwwwwwwwww":print"{right*8} {black}d{space*17}{red}w":print"{right*8} {black}d{space*15}{blue}]{pound}{red}w":print"{right*8} {black}d{space*15}{^*2}{red}w
250 print"{right*8} wwwww{space*9}wwwww":fori=1912to1933:pokei,247:pokei+c,0:next:gosub10000:print"{home}{down*21}{right*8}{red}{reverse on}{green} b a r r e l{space*2}j u m p {reverse off}{red}":u=int(rnd(1)*4)+1:poke54272,(u*4):poke54273,(u*8):wv=65:sy=50
260 geta$:aa=notpeek(pa)and15:print"{black}{home} {reverse on}tip"tp"{reverse off}{space*4}{reverse on}score"sc"{reverse off}{space*3}{reverse on}hi-score"hi"{reverse off} ":ifaa=4ora$="a"thena=a-1:sp=1:g=2:gg=32
280 ifaa=8ora$="d"thena=a+1:sp=-1:g=3:gg=32
281 ifaa=1andpeek(a-40)=4ora$="w"andpeek(a-40)=4thena=a-40:gg=4:sp=40:g=1
282 ifaa=2andpeek(a+40)=4ora$="x"andpeek(a+40)=4thena=a+40:gg=4:sp=-40:g=1
290 ifa=d(u)thena=a-1:sp=0:b=b-1:gg=2:g=2:f=1:pokes4,0
300 ifpeek(a+40)=32then1000
310 iff=1anda=1768thensc=sc+tp:goto105
311 iff=0anda=>1769thena=a-1:gg=2:g=2:sp=0
320 iff=0andff=5thenpoked(u),32:gosub10010
330 iff=0andff=8thenpoked(u),0:poke54273,0:poke54272,0:ff=0
340 ff=ff+1:ifpeek(a)=0thena=a-1:sp=0:gg=2:g=2
360 iftp=0then1000
370 iftt=3ortt=6thentp=tp-1
380 iftt=6thentt=-1
390 tt=tt+1:v=v+1:ifsc>1000thengoto392
391 ifv>=2thenv=0:goto460
392 ifz=0thenh=0
393 ifz=8thenh=1
394 ifh=0thenz=z+1:ss=-1
395 ifh=1thenz=z-1:ss=1
400 ifh=0andpeek(a+40)=81thena=a+1:sp=-1:gg=32:g=1
410 ifh=1andpeek(a+40)=81thena=a-1:sp=1:gg=32:g=1
460 pokez+1798+ss,32:pokez+1798+c,5:pokez+1798,81:poke1767,32:poke1757,32:pokea+sp,gg:pokea,g:poke1769,30:goto260
1000 pokes4,0:pokea-40,5:pokea-39,6:pokea,7:pokea+1,8:pokea-1,32:restore:form=1873to1891:pokem,21:pokem+c,0:pokem-1,22:pokem+c-1,0:pokem-2,32:wv=17:sy=10:gosub10000:pokes1,37:forkk=1to50:next:pokes1,0:next:poke1852,9:poke1853,10:poke1892,11:poke1893,12:poke1852+c,0:poke1853+c,0:poke1892+c,0:poke1893+c,0
1020 fori=1732to1132step-40:pokei,17:pokei+1,18:pokei+40,19:pokei+41,20:pokei+80+c,7:pokei+80+c+1,7:wv=33:sy=30:gosub10000:fort=1to50:next:next:pokei+120,13:pokei+121,14:pokei+160,15:pokei+161,16:pokei+120+c,0:pokei+121+c,0:pokei+160+c,0:pokei+161+c,0:print"{home}{down*11}{right*14}{reverse on}game{space*2}over
1052 print"{reverse on}{down*2}{right*15}press f1
1060 geta$:ifa$="{f1}"thengoto100
1065 fory=1478to1487:pokey+c,mm:next:ifmm=6thenmm=-1
1067 mm=mm+1:goto1060
3000 print"{right*8} {black}d{space*17}{red}w":print"{right*8} {black}d{space*17}{red}w":return
10000 poke54296,15:poke54277,16:poke54278,248:poke54276,wv
10010 forsx=1to100stepsy:poke54273,sx:poke54272,sx:next:poke54273,0:poke54272,0:return

