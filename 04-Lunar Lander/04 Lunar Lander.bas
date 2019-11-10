1 poke53280,0:poke53281,0:print"{clear}{orange}":gosub6000:forn=0to63:reada:poke16320+n,a:nextn
100 v=53248:pokev+32,0:pokev+33,0:pokev+21,1:pokev+16,0:pokev+28,1:pokev+37,6:pokev+38,7:poke2040,255:pokev+39,2:pokev+1,50:pokev,24:print"{clear}":y=rnd(1)*7+7:forx=0to39:y=y+rnd(1)*5-2.5:ify<0theny=0
250 ify>17theny=17
260 c=56256+x:s=1984+x:z=160:forp=0toy:pokes-p*40,z:pokec-p*40,4:next:nextx:poke650,128:l=int(rnd(1)*3):x=int(rnd(1)*20)+5:print"{home}"spc(l*40):print"{down*5}":forn=0to13:printtab(x)"{space*6}":next:printtab(x)"{reverse on}{cyan}{cm +*5}":sx=x*8+24:sy=(l+18)*8+50:x=24:y=58:f=50:g=.2
520 vx=0:vy=0:p=peek(v+31)
600 geta$:iff=0then1100
610 ifa$="z"thenf=f-1:vx=vx-1
620 ifa$="x"thenf=f-1:vx=vx+1
630 ifa$="q"thenf=f-1:vy=vy-1
640 ifa$="a"thenf=f-1:vy=vy+1
650 x=x+vx:zifx<0thenx=0
660 ifx>511thenx=511
670 y=y+vy:ify<58theny=58
680 ify>255theny=255
690 vy=vy+g:pokev,xand255:pokev+1,y:pokev+16,x/256:print"{home}f"f"{left}":p=peek(v+31):ifp=0then600
740 ifx<sxorx>(sx+30)then1000
750 a=syand248:b=yand248:ifa<>bthen1000
770 sp=(vy^2+vx^2)^0.5:ifsp>4then900
800 forn=0to999:next:pokev+21,0:print"{clear}you landed on the pad with a ";:print"velocity":print"of "sp" m/s":print"well done !!!!":goto2000
900 forn=0to999:next:pokev+21,0:print"{clear}{red}you crashed on the pad with a ";:print"velocity":print"of "sp" m/s":goto2000
1000 forn=0to999:next:pokev+21,0:print"{clear} bad luck.":print"{yellow}you crashed outside the base.":goto2000
1100 ifx>5andx<510then650
1110 goto1000
2000 forn=0to9:geta$:next
2010 print"{down}would you like another go y/n?
2020 geta$:ifa$=""then2020
2030 ifa$="y"then100
2040 ifa$="n"thenend
2050 goto2010
5000 data 5,84,,5,148,,23,181,,31,189,, 95,189,64,111,190,64,106,170,64, 94,173,64,26,169,,23,181,, 5,148,,21,85,,20,133,,16,129,, 18,161,,18,161,,16,1,,84,5,64, ,,,,,,,,,,,,
6000 print"{clear}{yellow}{down*2} lunar lander ":print:print:print"{white}{cm +}{space*3}{cm +}{sh space*2}{cm +}{sh space}{cm +}{sh space*2}{cm +}{sh space}{cm +*3}{sh space}{cm +*3}":print"{green}{cm +}{space*3}{cm +}{sh space*2}{cm +}{sh space}{cm +*2}{sh space}{cm +}{sh space}{cm +}{sh space}{cm +}{sh space}{cm +}{sh space}{cm +}":print"{yellow}{cm +}{sh space*3}{cm +}{sh space*2}{cm +}{sh space}{cm +*4} {cm +*3} {cm +*3}":print"{blue}{cm +}{sh space*3}{cm +}{sh space*2}{cm +}{sh space}{cm +}{sh space}{cm +*2}{sh space}{cm +}{sh space}{cm +}{sh space}{cm +}{sh space*2}{cm +}":print"{orange}{cm +*3}{sh space}{cm +*4}{sh space}{cm +}{sh space*2}{cm +}{sh space}{cm +} {cm +}{sh space}{cm +}{sh space*3}{cm +}":print:print:print"{gray} w{space*3}wwww{sh space}w{space*2}w www{sh space*2}www{sh space}www
6090 print"{blue} w {sh space*2}w{sh space*2}w{sh space}ww{sh space}w{sh space}w{sh space*2}w{sh space}w{sh space*3}w{sh space}w":print"{light green} w {sh space*2}wwww{sh space}wwww{sh space}w{sh space*2}w{sh space}ww{sh space*2}www":print"{pink} w{sh space} {sh space}w{sh space*2}w{sh space}w{sh space}ww{sh space}w{sh space*2}w{sh space}w{sh space*3}w{sh space*2}w":print"{light gray} www w{sh space*2}w{sh space}w{sh space*2}w{sh space}www{sh space*2}www{sh space}w{sh space*3}w":print"{down}{reverse on} use keys z=left x=right f1=up f7=down{space*2}":print"{space*3}press any key to start.
7010 geta$:ifa$=""then7010
7030 return
