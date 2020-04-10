0 sys 9920
1 gosub10000:sys50500:b$="*****":hy=0:goto6000
3 fora=53248to53248+40:pokea,0:next
10 clr:poke53281,0:poke49753,1:forx=1to5:sc$(x)="{cyan}galactic attack":next:v=53248:z$="{right*27}{reverse on}":b$="*****":hy=0:sys49760:dimm%(12):poke53280,0:hi=54287:lo=54286:wa=54290
30 f=500:l=5:u=40:sc=0:hm=0:h1=1:w=100:ti$="000000":r=8:bo=1000:poke53281,0:restore:fora=1to12:readb:m%(a)=b:next:lv=0:data1,19,20,38,42,58,61,77,83,97,102,116:w$="{home}{down*23}{right}":g$="b":gosub450:iflen(m$)>1thengosub3000
57 gosub460:d$="{home}{down*10}{right*3}{white}
60 r=int(rnd(1)*16):ifr=0then60
61 ifr=1then60
62 ifr=9then60
63 ifr=15then60
65 poke2,r-1:m=1:m$="{home}{down*4}":goto90
70 ifl<1andhy=scthen3500
75 ifl<1thenfors=0to500:next:goto9400
80 f=500:gosub550
90 poke198,0
100 jv=peek(56320):fr=jvand16:jv=15-(jvand15):ifh1=13thenf=500:goto750
110 sys49482:ifm=1thenm$=m$+"{right}
120 iflen(m$)=39thenm=0:m$=left$(m$,len(m$)-1)
130 ifm=0thenm$=left$(m$,len(m$)-1)
140 iflen(m$)=6thenm=1
150 printm$s$:fort=1to80:next:ifsc<5000thenifb/2=int(b/2)thensys49292
155 ifsc>5000thensys49292
160 geta$:ifa$="p"orfr=0orti$>"000030"thenti$="000000":goto165
162 goto170
165 ifpeek(49754)=1then180
166 poke49755,1:goto180
170 b=b+1:goto100
180 p=1221+len(m$):g$=" ":gosub450
190 pokep,2:pokep+54272,5:p1=p:ifsc<5000thenifb/2=int(b/2)thensys49292
195 ifsc=>5000thensys49292
200 ifsc>15000thensys49292
205 ifsc>20000thensys49292
210 ifpeek(p1)<>2thenpokep+40,32:z=p1:gosub570:g$="b":gosub450:goto70
220 b=b+1:q=peek(197):jv=peek(56320):fr=jvand16:jv=15-(jvand15):iffr=0thenq=41
240 ifq=41andu=40andf>0thengosub600:goto190
250 ifq=41andu=-40thenz1=30:gosub620
260 p=p+u:pokehi,0:ifpeek(p)=3thenpokep,32
270 ifq=18orjv=8andpeek(p+1)<>30thenp=p+1
280 ifq=10orjv=4andpeek(p-1)<>28thenp=p-1
290 ifpeek(p+40)>15andpeek(p+40)<25thenpokep,2:pokep+54272,5:pokep1,32:goto330
300 ifpeek(p)=11thengosub690:gosub680:g$="b":gosub450:u=40:hm=hm+1:goto90
310 ifpeek(p)<>32then800
320 pokep1,32:goto190
330 ifp1>1748andp1<1754thenh=1:gosub770
335 ifp1>1755andp1<1761thenh=2:gosub770
340 ifp1>1766andp1<1772thenh=3:gosub770
345 ifp1>1773andp1<1779thenh=4:gosub770
350 ifp1>1789andp1<1793thenh=5:gosub770
355 ifp1>1796andp1<1800thenh=6:gosub770
360 ifp1>1807andp1<1811thenh=7:gosub770
365 ifp1>1814andp1<1818thenh=8:gosub770
370 ifp1=1831thenh=9:gosub770
375 ifp1=1838thenh=10:gosub770
380 ifp1=1849thenh=11:gosub770
385 ifp1=1856thenh=12:gosub770
395 rs=int(rnd(1)*3):rn=int(rnd(1)*3):ifrs=rnthenpoke49755,0:poke49754,1
440 ti$="000000":goto190
450 s$="{red} jkl {down}{left*5} m"+g$+"o ":return
460 print"{clear}":sys49708:forx=1144to1183:pokex,30:pokex+54272,r:next:forx=1144to1984step40:pokex,28:pokex+54272,r:pokex+39,30:pokex+39+54272,r:next:forx=1984to1984+39:pokex,30:pokex+54272,r:next:ifl>1thenforx=0tol-2:poke1137+x,2:poke1137+x+54272,4:next
490 sys49270:printw$"{brown}!!eeee!eeeeee!eee!!!!eee!eeeeee!eeee!!":printw$"{up}!!{blue}f{brown}{space*3}p{space*6}p{space*2}{blue}f{brown}!!!!{blue}f{brown}{space*2}p{space*6}p{space*3}{blue}f{brown}!!":printw$"{up*2}!{blue}f{brown}{space*3}qrs{space*4}qrs{space*2}{blue}f{brown}!!{blue}f{brown}{space*2}qrs{space*4}qrs{space*3}{blue}f{brown}!":printw$"{up*3}{blue}f{brown}{space*3}tuvux{space*2}tuvux{space*2}{blue}ff{brown}{space*2}tuvux{space*2}tuvux{space*3}{blue}f{brown}
530 print"{home}{orange}{reverse on}{space*2}{cm a}{cm r*10}{cm s}":print"{blue}{space*2}nnnnnnnnnnnn":gosub550
550 ifsc>3999andlv=0thenl=l+1:poke1139,2:poke1139+54272,4:lv=1
552 ifsc>hythenhy=sc
560 print"{home}"z$"{red}score{yellow}"sc"{left}":printz$"{blue}fuel{green}"f"{left} ":printz$"{brown}ships":print"{home}{down*2}{right*2}{reverse on}{red}h{yellow}i{blue}-{green}s{brown}c{purple}o{red}r{yellow}e{blue}"hy"{left} ""{reverse on}{green}b{brown}y{purple}:{red} "b$:return
570 poke54290,129:pokez,32:forx=100to10step-2:poke54287,x:poke54286,200:sys49517:next:u=40:forv=15to0step-1:poke54296,v:fort=1to10:sys49517:nextt,v:poke54287,0:poke54286,0:poke54296,15:l=l-1:poke1137+l-1,32:return
600 pokewa,129:pokep+40,3:pokep+40+54272,2:pokehi,7:f=f-5:gosub550:return
610 return
620 ifp<1264thenreturn
630 pokewa,129:k=p-40:pokehi,z1:k1=k:goto650
640 pokehi,z1:pokek,27:pokek+54272,1:k1=k:k=k-40:z1=z1+15:ifk<1264thenpokek1,32:pokehi,0:return
650 ifpeek(k)=0orpeek(k)=1thenpokek1,32:pokehi,0:gosub730:return
652 ifpeek(k-1)=36orpeek(k-1)=37orpeek(k+1)=37orpeek(k)=36orpeek(k)=37thengosub10500
654 ifcv=1thencv=0:pokek1,32:pokehi,0:return
660 ifpeek(k)=9thenpokehi,0:pokek1,32:return
670 pokek1,32:goto640
680 poke1064+h1,9:poke1064+h1+54272,5:sc=sc+w:gosub550:return
690 pokewa,33:pokehi,120:fort=1to75:next:pokehi,0:return
700 forx=0to2999:next:return
730 pokewa,33:pokek,4:forx=150to0step-8:pokehi,x:next:pokehi,0:pokek,32:sc=sc+100:gosub550:return
750 ifhm=12then9000
760 gosub700:gosub550:hm=0:w=w+50:h=1:h1=1:gosub3000:gosub460:goto60
770 pokem%(h)+1824,32:u=-40:j=0:sys49494:h1=h1+1:poke54290,33:onhgosub2000,2010,2020,2030,2040,2050,2060,2070,2080,2090,2100,2110:return
800 ifpeek(p)=13orpeek(p)=15orpeek(p)=10orpeek(p)=11orpeek(p)=12thenpokep1,32:goto900
810 z=p1:gosub570:g$="b":gosub450:goto70
900 poke54283,33:poke49755,1:p2=p1-40
910 p2=p2+40:pokep2,8:pokep2+54272,1:pokep2-40,32:ifpeek(p2+40)<>32thenpokep2,32:goto960
950 fors=0to95:next:goto910
960 ifpeek(p2+40)=0orpeek(p2+40)=1then950
980 u=40:g$="b":gosub450:goto70
2000 sys49534:forx=1829to1833:pokex,32:next:sc=sc+100:gosub550:return
2010 sys49569:forx=1836to1840:pokex,32:next:sc=sc+100:gosub550:return
2020 sys49604:forx=1847to1851:pokex,32:next:sc=sc+100:gosub550:return
2030 sys49639:forx=1854to1858:pokex,32:next:sc=sc+100:gosub550:return
2040 sys49534:forx=1870to1872:pokex,32:next:sc=sc+150:gosub550:return
2050 sys49569:forx=1877to1879:pokex,32:next:sc=sc+150:gosub550:return
2060 sys49604:forx=1888to1890:pokex,32:next:sc=sc+150:gosub550:return
2070 sys49639:forx=1895to1897:pokex,32:next:sc=sc+150:gosub550:return
2080 sys49534:poke1911,32:sc=sc+200:gosub550:return
2090 sys49569:poke1918,32:sc=sc+200:gosub550:return
2100 sys49604:poke1929,32:sc=sc+200:gosub550:return
2110 sys49639:poke1936,32:sc=sc+200:gosub550:return
3000 forx=0to24:print"{down}":next:return
3500 gosub3000:goto9400
6000 ti$="000000":poke53275,peek(53275)or(2^0):t%=1:poke53272,29:iflen(m$)>1thena=228:gosub7000:goto6500
6006 a=224:gosub7000:goto6500
6010 sys49760:sys50150:c$="{home}{down*9}{right*10}":printc$;:v=53248:x=0:y=113:x1=0:c=2:c1=6:c2=7:i=1:pokev+29,7:pokev+21,7:poke2041,228:poke2042,229:pokev+2,34:pokev+3,206:pokev+40,c1:pokev+16,4:pokev+4,30:pokev+5,206:pokev+23,6
6060 i=1:printc$;:pokev+0,x
6070 pokev+21,7:pokev+41,c2:pokev+39,c:geta$:ifa$<>"{f1}"then6100
6090 pokev+21,0:poke49750,0:print"{clear}":iflen(m$)>1then30
6095 goto10
6100 pokev+1,y:poke2040,a:pokev,x:x=x+4:ifx=256then6200
6117 ifa=233ora=234then6125
6118 ifti$>"000155"andti$<"000224"thenpoke49750,0
6119 ifti$>"000255"thenpoke49750,1:ti$="000000
6120 ifa>227then6130
6125 a=a+1:ifa=a1thena=a2:fors=0to15:next:goto6070
6130 printmid$(t$,i,1);:i=i+1:ifi>25theni=254
6135 ifx=256then6200
6140 fors=0to15:next:goto6070
6200 pokev+16,5:x=0:fors=0to30:next
6220 geta$:ifa$<>"{f1}"then6225
6223 pokev+21,0:poke49750,0:print"{clear}":iflen(m$)>1then30
6224 goto10
6225 pokev,x:x=x+4:ifx=84thenpokev+16,4:pokev+21,6:fors=0to800:next:x=0:t%=t%+1:gosub7000:goto6060
6227 ifa=233ora=234then6230
6228 ifa>227then6234
6230 a=a+1:ifa=a1thena=a2:poke2040,a:fors=0to65:next:goto6220
6234 poke2040,a:fors=0to65:next:goto6220
6500 print"{clear}":poke53281,8:poke53280,0:print"{right*9}{black}{reverse on}hi-score{blue}"hy"{left} ""{black}by: {yellow}"b$:print"{home}{down*2}{brown}":print"{reverse on} n{cm t}m n{cm t}m {cm g}{space*2}n{cm y}m n{cm t}m {cm y}p{cm y} {sh -} n{cm t}m":print"{reverse on} {cm g}{space*3}{cm g} {cm m} {cm g}{space*2}{cm g} {cm n} {cm g}{space*4}{cm n}{space*2}{sh -} {cm g}{space*2}":print"{reverse on} {cm g} p l{cm p}{sh @} {cm g}{space*2}l{cm p}{sh @} {cm g}{space*4}{cm m}{space*2}{sh -} {cm g}{space*2}":print"{reverse on} m{cm @}n {cm g} {cm m} l{cm p} {cm g} {cm m} m{cm p}n{space*2}{cm m}{space*2}{sh -} m{cm p}n":print"{down*3}
6600 print"{reverse on}{space*9}n{cm y}m {cm y}p{cm y} {cm y}p{cm y} n{cm y}m n{cm t}m {cm g} n":print"{reverse on}{space*9}{cm g} {cm m}{space*2}{cm n}{space*3}{cm n}{space*2}{cm g} {cm n} {cm g}{space*3}{cm h}n ":print"{reverse on}{space*9}l{cm p}{sh @}{space*2}{cm n}{space*3}{cm n}{space*2}l{cm p}{sh @} {cm g}{space*3}{cm h}m ":print"{reverse on}{space*9}{cm h} {cm n}{space*2}{cm n}{space*3}{cm n}{space*2}{cm g} {cm n} m{cm p}n {cm h} m":print"{down*3}{right*12}{black}{reverse on}{space*2}@{blue} cascade 1984":print"{down}{right*15}{black}{reverse on}{arrow left}{blue} = pause
6670 print"{down}{right*14}{black}{reverse on}f1{blue} = start":goto6010
7000 d$="{space*25}":ont%gosub7500,7510,7515,7520,7530,7540,7545,7550:return
7500 iflen(m$)>1thent%=1:t$="{reverse on}{white}game over press f1":printc$d$:a=228:return
7510 t%=2:t$="{reverse on}{yellow}100 points upwards":printc$d$:a=224:a1=227:a2=224:return
7515 t$="{white}{reverse on}1 0 0{space*2}p o i n t s":printc$d$:a=230:a1=230:a2=230:return
7520 t$="{yellow}{reverse on}1 5 0{space*2}p o i n t s":printc$d$:a=231:a1=231:a2=231:return
7530 t$="{white}{reverse on}2 0 0{space*2}p o i n t s":printc$d$:a=232:a1=232:a2=232:return
7540 t$="{yellow}{reverse on}1 0 0{space*2}p o i n t s":printc$d$:a=233:a1=235:a2=233:return
7545 t$="{white}{reverse on}r a n d o m{space*2}s c o r e":printc$d$:a=237:a1=237:a2=237:return
7550 t$="{white}{reverse on}a v o i d{space*2}t h e s e":printc$d$:a=229:t%=0:return
8000 pokewa,33
8010 readh:readl:readd:ifh=-1thenpokehi,0:pokelo,0:goto9501
8020 pokehi,h:pokelo,l:forxx=0to20*d:nextxx:pokehi,0:pokelo,0:goto8010
8040 data34,75,4,25,177,2,25,177,2,28,214,4,25,177,8,32,94,4,34,75,4,0,0,5,-1,-1,-1
9000 wa=54290:pokewa,33:hi=54287:fors=1to8:printd$+"{right*6}""{space*6}""""{space*14}":ford=1to200:next:printd$+"{right*6}""{reverse on}{red}bonus ""{reverse on}{blue}"bo"{reverse on}{red}points":form=40to95step2:pokehi,m:pokehi,0:nextm,s:sc=sc+bo:bo=bo+bo:ifbo=8000thenbo=1000:goto760
9030 goto760
9400 print"{clear}":z=0:forx=1to5:ifsc>sc(x)thenz=x:x=11:poke53281,2:poke53280,2:goto8000
9501 poke53281,2:poke53280,2:dd$="{home}{down*23}":next:ifz=0then9520:poke198,0
9504 print"{clear}{down*9}{black}"tab(7)"{reverse on}enter text for high score ":print"{space*7}{orange}{reverse on}{cm u*25}":input"{down*3}{right*8}{yellow}{reverse on}name{purple}{right*4}.....{left*7}";n$:iflen(n$)>5thenn$=left$(n$,5)
9510 forx=1to6:j$=mid$(n$,x,1):ifj$="."thenn$=left$(n$,x-1):x=16
9512 next:ifz=10then9518
9516 forx=9tozstep-1:sc(x+1)=sc(x):sc$(x+1)=sc$(x):next:ds=0
9518 sc(z)=sc:sc$(z)=n$
9520 print"{clear}"tab(9)"{green}{reverse on}**{purple} high {white}score{purple} table {green}**{down}":print"{down*4}":forx=1to5:print"{down}{black}{reverse on}"x;tab(10)"{white}{reverse on}"sc(x)tab(23)"{yellow}{reverse on}"sc$(x):next
9560 getl$:ifl$<>" "then9570
9565 b$=sc$(1):goto6000
9570 printdd$tab(10)"{black}{reverse on}press {purple}space {black}to start":fordd=0to200:next:ds=ds+1:printdd$tab(10)"{reverse on}{white}press {yellow}space {white}to start":fordd=0to200:next:ds=ds+1:printdd$tab(10)"{reverse on}{blue}press {green}space {blue}to start":fordd=0to200:next:ds=ds+1:ifds=30thends=0:b$=sc$(1):goto6000
9600 goto9560
10000 print"{clear}":poke53280,2:poke53281,2:forx=1to39:reads:next:return
10100 data169,1,162,1,32,186,255,169,0,32,189,255,169,0,32,213,255,96,32
10500 poke49754,0:ss=peek(49412):poke1341+ss,32:poke1342+ss,32:poke1343+ss,32
10550 sb=rnd(10)*10:ifint(sb)*100=0then10550
10560 sx=int(sb)*100:sz=sx/100:poke1341+ss,(60+sz):poke1341+ss+54272,1:poke1342+ss,(61+sz):poke1342+ss+54272,1:cv=peek(wa):pokewa,33:forzx=1to200step2:pokehi,zx:next:pokehi,0:sc=sc+sx:gosub550:poke1341+ss,32:poke1342+ss,32:pokewa,cv:poke49412,39
10710 cv=1:return
