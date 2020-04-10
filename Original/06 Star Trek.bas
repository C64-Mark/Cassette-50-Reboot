5 dimk(10,10),s(10,10),b(10,10),a$(3),b$(3),a(8,8),bc$(25):gosub8:gosub50:goto110
8 print"{clear}{white}{down*2}{reverse on}{sh asterisk*7}star{sh asterisk}trek{sh asterisk*6}":print:print"the symbols used are:":print"{space*3}scans: long{space*2}short":hq=1:print"{down}star"tab(12)"s"tab(17)"*":print"{down}klingon"tab(12)"k"tab(16)"###":print"{down}starbase"tab(12)"b"tab(16)"<!>":print"{down}enterprise"tab(12)"<*> <*>":gosub5000:return
50 print"{clear}{yellow}":print"{reverse on}commands available":print"{down}1 long range scan.":print"2 short range scan.":print"3 move enterprise.":print"4 mission status.":print"5 fire phasers.":print"6 fire torpedo.":print"7 galactic scan.":print"8 list of commands.
94 print"9 list of symbols{space*2}":print"10 abandon mission.":print:hq=0:gosub5000:return
110 print"{clear}{cyan}":print"on entering command 3":print"the guidance computer needs directions.":print"these are input as a ";:print"horizontal vector{space*5}followed bya vertical vector.":print"enter sectors horiz,vert
140 print"negative entry gives{space*2}motion to left/down.":print"e.g.{space*4}4,-3":print"the warp factor must{space*2}also be entered.{space*2}warp factor 0 aborts{space*2}command":print"there is a time limit to the game":print"and it is to your advantage to be
160 print"as fast as possible.":gosub5000:print"{clear}":gosub50:ify5=8then2650
250 fora1=1to8:fora2=1to8:a(a1,a2)=1:nexta2:nexta1:a$=" ":d$="{space*5}<!> ###{space*2}*{space*2}<*>":sr$="{space*2}b{space*3}k{space*3}*{space*3}e":reads1,b1,k1,e1,e2,t,k5:data  75,3,7,500,3,100,100
560 p=p+1:ifp>b1goto600
580 gosub740:b(k,l)=b(k,l)+1
600 ifp>k1then630
610 gosub740:k(k,l)=k(k,l)+1
630 ifp>s1then670
640 gosub740:s(k,l)=s(k,l)+1:goto560
670 print"{reverse on}{sh asterisk}command{sh asterisk}captain{sh asterisk}";:gosub4000:c=val(a$):ifc<0thengosub5670:goto670
700 ifc=10goto3230
705 ifc>10thengosub5670:goto670
710 oncgosub790,1420,1560,2050,2370,2720,3240,50,8:gosub5670:goto670
730 y=y+8:w=w+1
740 k=int(8*rnd(1))+2:ifk=10goto740
755 w=w+1
760 l=int(8*rnd(1))+2:ifl=10goto760
780 return
790 print"{clear}{yellow}";:print"{reverse on}{sh asterisk*3}long{sh asterisk}range{sh asterisk}scan{sh asterisk*4}":ifx1<>0then840
800 gosub740:x1=k:y1=l
840 gosub1070:forx2=x1-1tox1+1:e$="":fory2=y1-1toy1+1:e$=e$+"...":ifb(x2,y2)>0thene$=e$+"b
920 ifs(x2,y2)>0thene$=e$+"s
930 ifk(x2,y2)>0thene$=e$+"k
935 q(x2,y2)=1:ifx2>1andx2<10then960
950 goto970
960 ify2>1andy2<10then980
970 e$=e$+"inf":goto983
980 ifb(x2,y2)=0thene$=e$+" 
981 ifs(x2,y2)=0thene$=e$+" 
982 ifk(x2,y2)=0thene$=e$+" 
983 nexty2:gosub1090:e$=left$(e$,18):print"{reverse on}b{reverse off}"e$" {reverse on}b{reverse off}":gosub1090:nextx2:gosub1070:print:return
1070 print"{reverse on}{sh asterisk*21}":return
1090 print"{reverse on}b"tab(20)"{reverse on}b":return
1120 print"1{sh asterisk*2}2{sh asterisk*2}3{sh asterisk*2}4{sh asterisk*2}5{sh asterisk*2}6{sh asterisk*2}7{sh asterisk*2}8":return
1140 l2=k(x1,y1):k5=70+40*rnd(1)*k(x1,x2):t1=9:gosub1340:l2=s(k1,y1):t1=13:gosub1340:l2=b(x1,y1):t1=5:gosub1340:ifx5>0then1330
1250 ify5>0then1330
1260 t1=17:l2=1:x9=x1:y9=y1:x5=k-1:y5=l-1:gosub1340
1330 return
1340 ifl2=0thenreturn
1350 gosub740:k=k-1:l=l-1:ifa(k,l)>1then1350
1390 a(k,l)=t1:l2=l2-1:goto1340
1420 print"{clear}{green}";:print"{reverse on}{sh asterisk*3}short{sh asterisk}range{sh asterisk}scan{sh asterisk*3}":gosub1120:forx4=1to8:a$="":fory4=1to8:a$=a$+mid$(d$,a(x4,y4),4):nexty4:cc$="":zc=0:forzx=1to24:bc$(zx)=mid$(a$,zx,1):ifzx<2then1485
1484 ifbc$(zx)=" "andbc$(zx-1)=" "andzc<5thenzc=zc+1:goto1487
1485 cc$=cc$+bc$(zx)
1487 nextzx:print"{left}"x4;cc$:nextx4:print:gosub1120:print:return
1560 print"{clear}{down}{reverse on}{sh asterisk*3}guidance control{sh asterisk*3}":print"guidance computer requests instructions":print"input new space co-ordinates (x,y)":a(x5,y5)=1:y9=y1:x9=x1:inputy,x:ifint(x)=0orint(y)=0thenreturn
1608 x=-x:e1=e1-abs(x)-abs(y):print:print"{reverse on}{sh asterisk*2}warp{sh asterisk}factor{sh asterisk*2}";:inputw2:ifw2<=0thenreturn
1635 t=t-1/(w2*20):ifx5+x<1then1710
1650 ifx5+x>8then1670
1660 goto1740
1670 x=x-8:x1=x1+1:ifx+x5>8then1670
1700 goto1740
1710 x=x+8:x1=x1-1:ifx+x5<1then1710
1740 x5=x5+x:ify5+y<1then1820
1760 ify5+y>8then1780
1770 goto1850
1780 y=y-8:y1=y1+1:ify+y5>8then1780
1810 goto1850
1820 y=y+8:y1=y1-1:ify+y5<1then1820
1850 y5=y5+y:ifx1>1andx1<10then1890
1870 c$="space":goto3190
1890 ify1>1andy1<10then1910
1900 goto1870
1910 gosub2960:a(x5,y5)=17:ifx1<>x9then1970
1940 ify1<>y9then1970
1950 gosub2570:return
1970 fora1=1to8:fora2=1to8:a(a1,a2)=1:nexta2:nexta1:a1=8:a2=8:gosub1140:gosub2960:a(x5,y5)=17:e1=e1-25:t=t-1/w2:gosub2200:gosub2570:return
2050 ifk(x1,y1)>0thenz$="{cm asterisk}{cm asterisk}red{sh pound*2}
2060 ifk(x1,y1)=0thenz$="qqgreenqq
2062 print"{clear}{yellow}
2070 print"{reverse on}stardate":print3278-t:print:print"{reverse on}condition:"z$:print:print"{reverse on}quadrant:"y1-1;x1-1:print:print"{reverse on}sector "y5;x5:print:print"{reverse on}status":print:print"{reverse on}klingons : "k1:print"{reverse on}stardates: "int(t):print"{reverse on}starbases: "b1:print"{reverse on}torpedoes: "e2
2180 print"{reverse on}energy"int(e1)"units"int(e1/500*100)"%":print:return
2200 ife1=<0then2240
2210 ift<=0then2260
2220 ifk1<=0then2275
2230 return
2240 c$="energy":goto3190
2260 c$="time":goto3190
2275 print"{clear}":print:print:print:print"congratulations you have saved the ":print"universe from the clutches":print"of the evil klingons.":goto3230
2310 forz1=1to8:forz2=1to8:ifa(z1,z2)=t1thenreturn
2340 nextz2:nextz1:z1=8:z2=8:return
2370 ifk(x1,y1)<=0thenreturn
2380 print"{reverse on}{sh asterisk*3}phasers{sh asterisk}on{sh asterisk}target{sh asterisk*2}":print"battle computer requests":print"no{sh asterisk}of{sh asterisk}energy{sh asterisk}unitscto{sh asterisk}fire:";:inputc:ifc<1thenreturn
2410 e1=e1-c:gosub2200
2430 t1=9:gosub2310:r=abs(z1-x5)+abs(z2-y5):k5=k5-c/r:ifk5>0then2530
2480 a(z1,z2)=1:k(x1,y1)=k(x1,y1)-1:print:print"{reverse on}{sh asterisk*2}klingon{sh asterisk}destroyed{sh asterisk*2}":print:print"only "k1-1" klingons left":k1=k1-1:gosub2200:return
2530 e1=e1-(k5/5)/r:print"{clear}{reverse on}{sh asterisk*3}tactical{sh asterisk*3}":print"battle computer reports klingon ":print"returning fire{sh asterisk}":printk5/(5*r)"units of damage to ":print"the enterprises' protective shields.":print:gosub2910:return
2570 ifx5=8then2590
2580 ifa(x5+1,y5)=5then2660
2590 ifx5=1goto2610
2600 ifa(x5-1,y5)=5then2660
2610 ify5=1then2630
2620 ifa(x5,y5-1)=5then2660
2630 ify5=8then2650
2640 ifa(x5,y5+1)=5then2660
2642 print
2650 return
2660 e1=500:e2=3:b(x1,y1)=b(x1,y1)-1:b1=b1-1:print"{clear}{reverse on}{sh asterisk}docking{sh asterisk}":print:print"successfully docked{space*3}with starbase.":print"enterprise fully ";:print"rearmed and refuelled":print:return
2720 ifk(x1,y1)<=0thenreturn
2725 ife2>0thenprint"battle computers have launched torpedo-
2740 ife2>0then2770
2750 print"no torpedoes left.":print:return
2770 e2=e2-1:t1=9:gosub2310:r=abs(z1-x5)+abs(z2-y5):e7=20/(r*rnd(1)):ife7<2then2840
2790 gosub2480:t1=9:gosub2310:a(z1,z2)=1:return
2840 print"klingon cruiser taking evasive action.":gosub2530:return
2900 gosub2430
2910 l2=1:t1=9:gosub1340:a(z1,z2)=1:return
2960 ifa(x5,y5)=1ora(x5,y5)=5thenreturn
2970 ifa(x5,y5)=17thenc$="base
2980 ifa(x5,y5)=9thenc$="klingon
2990 ifa(x5,y5)=13thenc$="star
2995 print"{clear}{reverse on}**collision warning***":print"guidance computer reports imminent":print"collision with a "c$:print"evasive action being implemented":k9=rnd(1)*10:ifk9+w2>10then3110
3040 j5=0:forp8=2to-2step-1:ifx5+p8<0orx5+p8>8then3060
3052 ifa(x5+p8,y5)=1thenj5=p8
3060 nextp8:ifj5<>0then3080
3070 goto3110
3080 print"{reverse on}**collision avoided**":x5=x5+p8:return
3110 e1=e1-(k9+w2)*10:forl8=1to50:print"{clear}";:print"**alert*alert*alert***":nextl8:print"enterprise collided with "c$:print"damage required "(k9+w2)*10:print"energy units to repair":ifa(x5,y5)<>9then3162
3150 k1=k1-1:k(x1,y1)=k(x1,y1)-1
3162 gosub5000:gosub2200:return
3190 print"{clear}{reverse on}{down*2}you ran out of "c$:gosub5000:print"the log prior to your destruction":print"was as follows:-":z$="dead":gosub2070
3230 goto3370
3240 print"{clear}{green}":print"* = allready scanned":print"# =present position ":gosub3350:ford1=1to8:x$=" ":ford2=1to8:ifd1+1=x1andd2+1=y1then3300
3280 ifq(d1+1,d2+1)=1thenx$=x$+"*
3290 ifq(d1+1,d2+1)><1thenx$=x$+" 
3291 goto3310
3300 x$=x$+"#
3310 x$=x$+" ":nextd2:x$=left$(x$,18):printd1" "x$" "d1:nextd1:gosub3350:return
3350 print" ";:print"{cm +*3}1{cm +}2{cm +}3{cm +}4{cm +}5{cm +}6{cm +}7{cm +}8{cm +*2}":return
3370 end
4000 a$="
4020 getb$:ifb$=""then4020
4030 ifasc(b$)=13then4080
4040 printb$;:a$=a$+b$:goto4020
4080 print:return
5000 print"{home}{down*20}";:print"{space*7}{reverse on}{purple}{sh asterisk*3}press{sh asterisk}space{sh asterisk}key{sh asterisk*4}
5020 getzz$:ifzz$<>chr$(32)then5020
5030 print"{clear}";:return
5670 print"{up}{space*21}{up}":return
