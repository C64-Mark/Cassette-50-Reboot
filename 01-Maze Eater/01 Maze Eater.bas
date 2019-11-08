2 fora=192*64to210*64+64:pokea,0:next
3 fora=54272to54296:pokea,0:next
4 dimbb$(11):ga=0
5 b$(1)="{red}0000000 rich":b$(2)="{cyan}0000000 mick":b$(3)="{blue}0000000 hibb"
6 b$(4)="{green}0000000 dave":b$(5)="x0000000 grey"
9 s$="0000000"
10 poke53280,0:poke53281,0:v=53248:pokev+21,0:le=1:hh=205:do=0
20 print"{clear}{down*7}"
30 print"{yellow}wwwww wwww wwww wwww"
31 print"{red}w{sh space}w{sh space}w{sh space}w{sh space} w{sh space*4}w{sh space}w{space*3}"
32 print"{purple}w{sh space}w{sh space}w{sh space}w{sh space*2}w{sh space*3}w{space*2}w{space*3}"
33 print"{blue}w{sh space}w{sh space}w{sh space}wwww{sh space*2}w{sh space*3}www{space*2}{yellow}e a t e r"
40 print"{green}w{sh space}w{sh space}w{sh space}w{sh space*2}w{sh space}w{sh space*4}w{space*3}"
50 print"{dark gray}w{sh space}w{sh space}w{sh space}w{space*2}w wwww wwww"
60 print"{cm y*21}"
61 print"{yellow}press f1 to change level"
70 print"use joystick in port 1{space*2}or keys 1=up{space*4}{arrow left}=down{space*2}(ctrl)=left and 2=right
80 print"{white}{down}{reverse on}{space*8}please wait reading data{space*8}"
90 pokev+29,4:pokev+23,4:hi=5000:c=1479:c1=1228:fr=191:a$="{blue}":sc=0
110 poke2040,200:poke2041,205:poke2042,192:poke650,255:se=0:co=0:li=3
150 at=54277:vo=54296:wa=54276:h=54273:su=54278:pokev+21,0:pokev+40,2
160 pokeat,32:pokeat+7,32:pokesu,255:pokesu+7,255:pokewa,33:pokewa+7,33
190 pokev+23,4:pokev+29,4:pokevo,15
195 ifga=1then226
200 poke56334,peek(56334)and254:poke1,peek(1)and251
210 fori=0to511:pokei+14336,peek(i+53248):next
220 poke1,peek(1)or4:poke56334,peek(56334)or1
226 ifga=0thengosub1230
230 gosub10000:poke53272,31
231 x=138:y=133:x1=50:y1=80:pokev+28,2:pokev+37,1:x6=125:y6=120
232 pokev+4,x6:pokev+5,y6:pokev+32,8:pokev+33,8
260 goto810
270 pokev+42,2
271 print"{home}{down*8}{blue}";tab(30);hi
272 print"{home}{down*12}";tab(30);li
273 print"{home}{down*20}";tab(31);a$
280 jv=peek(56321):jv=15-(jvand15):pokev+30,0:poke2042,fr
300 ifdo=10andfp=0thenpokev+21,7
310 print"{home}{down*4}{blue}";tab(30);sc
311 ifco=0then400
360 ifco=1andjv=4thenx=x-8:c=c-1:poke2040,202
370 ifco=1andjv=8thenx=x+8:c=c+1:poke2040,200
380 ifco=1andjv=1theny=y-8:c=c-40:poke2040,202
390 ifco=1andjv=2theny=y+8:c=c+40:poke2040,200
395 ifco=1then440
400 ifpeek(c-1)<>42andco=0andjv=4thenx=x-8:c=c-1:poke2040,202:goto440
410 ifpeek(c+1)<>42andco=0andjv=8thenx=x+8:c=c+1:poke2040,200:goto440
420 ifpeek(c-40)<>42andco=0andjv=1theny=y-8:c=c-40:poke2040,202:goto440
430 ifpeek(c+40)<>42andco=0andjv=2theny=y+8:c=c+40:poke2040,200
440 ifx<x1thenx1=x1-le:poke2041,208
450 ifx>x1thenx1=x1+le:poke2041,206
460 ify>y1theny1=y1+le:poke2041,207
470 ify<y1theny1=y1-le:poke2041,205
480 pokev,x:pokev+1,y:pokev+2,x1:pokev+3,y1:pokev+6,x3:pokev+7,y3
485 ifs<>2then506
490 ifx<25thengosub710
495 ifx>245thengosub710
500 ify>225thengosub710
505 ify<50thengosub710
506 ifdo<20then560
510 ifdo=20ands=2thenpokev+32,0:pokev+33,0:ee=0:en=0:gosub770:goto810
520 ifdo=20thens=s+1:pokev+21,3:rr=rr+1:ee=0:en=0
530 ifdo=20ands=2thenco=1:pokev+33,0:pokev+32,0:do=0:ee=0:gosub810:le=le+1
540 ifdo=20ands=1thenpokev+33,0:pokev+32,0:do=0:ee=0:en=0:gosub810
545 ifpeek(c)=32then580
560 ifpeek(c)=81thenee=1:en=30:fora=0to100step30:pokeh,a*2:forb=0to50:nextb,a
570 ifpeek(c)=46orpeek(c)=81orpeek(c)=99thenpokec,32:sc=sc+10:do=do+1:gosub790
580 if(peek(v+30)and1)=1thengosub1130
581 ifee=0then635
585 ifen=0thenpokev+40,2
590 ifee=1thenen=en-1
600 ifen<0thenen=0:ee=0
610 ifee=1thenpokev+40,en+1
620 ifen>0thenpokeh+7,en
630 ifen<1thenpokeh+7,0
635 poke2040,201:goto280
650 iffr=192thenpokev+41,2:a$=a$+"{blue}A"
660 iffr=193thenpokev+41,2:a$=a$+"{blue}S"
670 iffr=194thenpokev+41,9:a$=a$+"{blue}X"
680 iffr=195thenpokev+41,5:a$=a$+"{blue}Z"
690 iffr=196thenpokev+41,7:a$=a$+"{blue}W"
700 return
710 li=li-1:ifli=0then20000
711 print"{home}{down*12}{blue}";tab(30);li
720 x=138:y=133:x1=50:y1=80:c=1479:c1=1228:goto1170
770 x=138:y=133:x1=50:y1=80:c=1479:c1=1228:pokev+32,4:pokev+33,4:do=0:co=0:s=0
780 return
790 pokeh,30:fora=0to5:nexta:pokeh,0:return
810 print"{clear}":pokeh+7,0:en=0:fr=fr+1:fp=0
820 print"{home}{black}******************************"
830 print"{black}*{blue}Q{red}..........................{blue}Q{black}*"
840 print"{black}*{red}.{black}***{red}.{black}******{red}.{black}**{red}.{black}**{red}.{black}*****{red}.{black}***{red}.{black}*"
850 print"{black}*{red}.{black}***{red}.{black}******{red}.{black}**{red}.{black}**{red}.{black}*****{red}.{black}***{red}.{black}*"
860 print"{black}*{red}.{black}***{red}.{black}******{red}.{black}**{red}.{black}**{red}.{black}*****{red}.{black}***{red}.{black}*"
870 print"{black}*{red}.{black}***{red}....................{black}***{red}.{black}*"
880 print"{black}*{red}.{black}*******{red}.{black}**{red}.{black}*****{red}.{black}**{red}.{black}******{red}.{black}*"
890 print"{black}*{red}.{black}*******{red}.{black}**{red}.{black}*****{red}.{black}**{red}.{black}******{red}.{black}*"
900 print"{black}*{red}.{black}*******{red}.{black}**{red}.{black}*****{red}.{black}**{red}.{black}******{red}.{black}*"
910 print"{black}*{red}.{black}****{red}....{black}**{red}.{black}*****{red}.{black}**{red}....{black}***{red}.{black}*"
920 print"{black}*{red}......{black}**{red}.............{black}**{red}.....{black}*"
930 print"{black}*{red}......{black}*******{red}...{black}*******{red}.....{black}*"
940 print"{black}*{red}......{black}*******{red}...{black}*******{red}.....{black}*"
950 print"{black}*{red}......{black}**{red}.............{black}**{red}.....{black}*"
960 print"{black}*{red}.{black}****{red}....{black}***********{red}....{black}***{red}.{black}*"
970 print"{black}*{red}.{black}*******{red}.{black}***********{red}.{black}******{red}.{black}*"
980 print"{black}*{red}.{black}*******{red}.{black}**{red}.{black}*****{red}.{black}**{red}.{black}******{red}.{black}*"
990 print"{black}*{red}.{black}*******{red}.{black}**{red}.{black}*****{red}.{black}**{red}.{black}******{red}.{black}*"
1000 print"{black}*{red}.{black}***{red}....................{black}***{red}.{black}*"
1010 print"{black}*{red}.{black}***{red}.{black}*********{red}.{black}********{red}.{black}***{red}.{black}*"
1020 print"{black}*{red}.{black}***{red}.{black}******{red}.{black}**{red}.{black}**{red}.{black}*****{red}.{black}***{red}.{black}*"
1030 print"{black}*{red}.{black}***{red}.{black}******{red}.{black}**{red}.{black}**{red}.{black}*****{red}.{black}***{red}.{black}*"
1040 print"{black}*{blue}Q{red}..........................{blue}Q{black}*"
1050 print"{black}******************************{white}"
1060 print"{home}{down*2}";tab(31);"{red}score"
1070 print"{home}{down*6}";tab(31);"{red}high"
1080 print"{home}{down*10}";tab(31);"{red}lives"
1090 print"{home}{down*15}";tab(31);"maze{space*3}"
1100 print"{home}{down*17}";tab(31);"eater{space*2}"
1101 iffr=197thenfr=192
1110 x=138:y=133:x1=50:y1=80:c=1479:c1=1228:gosub650:goto270
1130 ifx=138andy=133andpeek(v+21)=7thensc=sc+500:pokev+21,3:fp=1:goto1200
1140 ifpeek(v+30)=3anden>0thensc=sc+100:x1=50:y1=80:c1=1228:goto1229
1150 if(peek(v+30)and2)=2anden=0thengoto710
1160 return
1170 pokewa,17:fora=0to200step30:pokeh,a:forb=0to50:nextb,a
1180 fora=200to0step-30:pokeh,a:forb=0to50:nextb,a:pokeh,0:pokev+30,0
1190 pokewa,33:return
1200 fora=0to100step30:pokeh,a:forb=0to10:nextb,a
1210 fora=100to0step-30:pokeh,a:forb=0to10:nextb,a:pokeh,0:pokev+30,0
1220 pokev+30,0:return
1229 fora=0to15:forb=0to5:pokeh+7,00+a*b:nextb,a:pokeh,0:return
1230 ford=200to202:fora=0to62:readb:poked*64+a,b:nexta,d
1235 rem pac down
1240 data0,0,0,0,0,0,0,0,0,0,248,0,3,254,0,7,254,0,14,124,0,30,120,0,31,240,0
1250 data31,224,0,31,248,0,31,254,0,15,255,0,7,255,0,3,254,0,0,248
1260 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1270 rem pac stopped
1280 data0,0,0,0,0,0,0,0,0,0,248,0,3,254,0,7,255,0,15,255,128,31,255,192,31
1290 data255,192,31,255,192,31,255,192,31,255,192,15,255,128,7,255,0,3,254,0,0
1300 data248,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1310 rem pac left
1330 data 0,0,0,0,0,0,0,0,0,0,248,0,3,254,0,3,255,0,0,243,128,0,115,192,0,63
1340 data192,0,31,192,0,127,192,1,255,192,3,255,128,3,255,0,3,254,0,0,240
1350 data0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1360 ford=192to196:fora=0to7:readb:poked*64+25+a*3,b:nexta,d
1370 data48,8,8,20,36,102,255,102
1390 data12,24,126,215,237,126,44,24
1410 data60,66,255,129,129,255,66,60
1430 data102,255,219,255,102,60,36,102
1450 data255,90,102,36,60,24,24,24
1460 fora=0to7:poke14336+42*8+a,255:next
1470 fora=0to7:readb:poke14336+46*8+a,b:next
1480 data0,0,24,60,60,24,0,0
1490 fora=0to7:poke14336+32*8+a,0:next
1500 fora=0to7:readb:poke14336+81*8+a,b:next
1510 data60,60,126,255,255,126,60,60
1520 fora=0to7:readb:poke14336+65*8+a,b:next
1530 data48,8,8,20,36,102,255,102
1540 fora=0to7:readb:poke14336+83*8+a,b:next
1550 data12,24,126,215,237,126,44,24
1560 fora=0to7:readb:poke14336+88*8+a,b:next
1570 data60,66,255,129,129,255,66,60
1580 fora=0to7:readb:poke14336+90*8+a,b:next
1590 data102,255,219,255,102,60,36,102
1600 fora=0to7:readb:poke14336+87*8+a,b:next
1610 data255,90,102,36,60,24,24,24
1620 ford=205to208:fora=0to62:readb:poked*64+a,b:nexta,d
1625 rem ghost up
1630 data2,128,0,10,160,0,42,168,0,170,170,0,158,182,0,158,182,0,150,150,0,150
1640 data150,0,170,170,0,170,170,0,170,170,0,170,170,0,170,170,0,170,170,0,136
1650 data136,0,136,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1660 rem ghost right
1670 data2,128,0,10,160,0,42,168,0,170,170,0,150,150,0,158,158,0,158,158,0,150
1680 data150,0,170,170,0,170,170,0,170,170,0,170,170,0,170,170,0,170,170,0
1690 data136,136,0,136,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1700 rem ghost down
1710 data2,128,0,10,160,0,42,168,0,170,170,0,150,150,0,150,150,0,158,182,0,158
1720 data182,0,170,170,0,170,170,0,170,170,0,170,170,0,170,170,0,170,170,0,136
1730 data136,0,136,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1740 rem ghost left
1750 data2,128,0,10,160,0,42,168,0,170,170,0,150,150,0,182,182,0,182,182,0,150
1760 data150, 0,170,170,0,170,170,0,170,170,0,170,170,0,170,170,0,170,170,0,136
1770 data136,0,136,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1775 fora=0to10:readb$:bb$(a)=b$:next
1776 datae,n,t,e,r, ,l,e,v,e,l
1780 return
10000 pokev+16,0
10001 x=15:y=108:pokev,x:pokev+1,y:pokev+21,1:poke2040,200:pokev+39,1:gg=1340
10010 fora=0to255step8:gg=gg+1:pokev,a:pokegg,32:poke2040,200:poke2040,201
10020 pokeh,25:forb=0to10:nextb:pokeh,0:nexta
10030 pokev+16,1:fora=0to60step8:gg=gg+1:pokev,a:pokegg,32:poke2040,200
10040 poke2040,201:pokeh,25:forb=0to10:nextb:pokeh,0:nexta:pokeh,0
10050 pokev+16,0:pokev,0:y=y+8:pokev+1,y
10060 nu=nu+1:ifnu=7thennu=0:goto10080
10070 goto10010
10080 y=50:x=22:pokev,x:print"{home}":poke2040,200
10090 fora=0to10:y=y+8:printchr$(158)bb$(a):pokev+1,y:forb=0to100:nextb,a:gg=1464
10091 print"{right*5}{white}whoops !!{yellow}":forb=0to400:nextb
10092 print"{up}{right*5}{space*9}"
10100 fora=0to10:y=y-8:pokegg,32:gg=gg-40:pokev+1,y:forb=0to100:nextb,a
10110 fora=0to10:y=y+8:gg=gg+40:pokev+1,y:next
10120 fora=0to11:x=x+8:gg=gg+1:pokev,x:next:poke2040,200
10125 print"{right*13}";:y=y+8:pokev+1,y
10130 fora=0to5:x=x+8:printbb$(a);:pokev,x:forb=0to100:nextb,a
10135 print" ";:fora=6to10:x=x+8:printbb$(a);:pokev,x:forb=0to100:nextb,a
10140 pokev,180:pokev+1,80:pokev+2,130:pokev+3,80:pokev+21,3
10150 pokev+23,3:pokev+29,3:pokev+28,2:pokev+40,2:print
10160 print"{red}{down*5} guide pacman around the three{space*10}"
10170 print"{up}{purple} types of maze whilst eating dots and "
10180 print"{yellow} power pods."
10190 pc=200
10200 print"{home}{down*13}";tab(24);le
10210 getd$
10220 ifd$="{f1}"thenle=le+1
10230 ifle>5thenle=1
10231 poke2040,pc:pc=pc+1
10232 ifpc>201thenpc=200
10235 poke2041,hh:hh=hh+1
10236 ifhh>208thenhh=205
10240 ifpeek(197)=60thenpokev+23,4:pokev+29,4:return
10250 goto10200
20000 pokev+21,0:pokevo,0:pokev+32,0:pokev+33,0
20001 s$=str$(sc):n=len(s$):s$=left$("000000",8-n)+right$(s$,n-1):poke53272,21
20030 k=0:fori=1to5:ifsc>val(left$(b$(i),7))thenk=i:i=5
20040 nexti
20050 ifk=0then20100
20060 print"{blue}{clear}{down*2}{space*5}you are in the top five{down*2}":poke198,0
20070 print"{red}{space*7}enter your name{down}{blue}":input"";i$:iflen(i$)>10then20070
20080 fori=4tokstep-1:b$(i+1)=b$(i):next
20090 b$(k)=s$+" "+i$
20100 print"{clear}{space*5}gobbler all time greats{down*3}"
20110 fori=1to5:print"{down}{space*8}"i;b$(i):nexti:ifsc>hithenhi=sc
20120 ford=0to5000:next:ga=1:goto10
