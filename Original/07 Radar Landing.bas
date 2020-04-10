0 gosub1000
100 gosub1000:gosub1500:ifg$="q"then980
114 goto130
120 gosub1600
130 gosub2100:gosub3100
150 gosub2300:gosub3000:gosub2600:gosub2900:gosub2500:gosub2700:ifr=1then100
230 gosub2800:ifr=1then100
500 goto150
980 gosub1700:stop
1000 b=1:gosub2000:r=0:x=380:y=260:y1=0:s1=300:f1=2000:r1=15000:h=21:w=39:return
1500 print"{clear}{green}";:print"{space*7}radar landing instructions":print:print"the nose of the jet must touchdown on ":print"the end of the runway.":print:print"stall at speeds less than 100.":print"landing speed less than 300.":print:print" q......nose down
1534 print" z......nose up":print" i......lower r.p.m.":print" m......higher r.p.m.":gosub1600:return
1600 o8=1:o9=20:gosub3200:print"game or quit":print"enter g or q":gosub1800:ifg$<>"g"andg$<>"q"then1600
1690 return
1700 print"{clear}";:print"{ct g*3}":print"end of game":return
1800 gosub10000:return
1900 home:return
2000 print"{ct g*4}":return
2100 print"{clear}";:return
2300 print"{red}":o8=1:o9=1:gosub3200:fora=1to4:o9=a:o8=10:gosub3200:print"{space*13}":nexta:o9=1:o8=2:gosub3200:print"speed..."s1:o9=2:gosub3200:print"fuel...."f1:o9=3:gosub3200:print"r.p.m..."r1:return
2400 o8=int(x/12)+1:o9=20-(int(y/10)):gosub3200:return
2500 gosub2400:print"{black}""{cm i}{reverse on}{cm b}":return
2600 gosub10000:ifg$="q"andy1<>-5theny1=y1-1
2610 ifg$="z"andy1<>5theny1=y1+1
2620 ifg$="i"andr1>0thenr1=r1-1000
2630 ifg$="m"andr1<25000thenr1=r1+1000
2650 s1=s1-5*y1+int(r1/1000)-15:ifs1<100theny1=-5:y=y-20:ify<0theny=5
2670 f1=f1-int(r1/1000):iff1<=0thenf1=0:r1=0
2690 return
2700 ifx<35andx>25thenify<6ands1<300then2750
2710 goto2790
2750 print"{down*5}{right*5}safe landing":fora=1to2000:nexta:r=1
2790 return
2800 ifx>5andy>5then2890
2802 o9=10:o8=11:gosub3200:print"crash crash":fora=1to5000:nexta:r=1
2890 return
2900 x=x-int(s1/200):ifx<0thenx=5
2910 y=y+(y1):ify<0theny=5
2920 return
3000 gosub2400:print"{space*2}":return
3100 o8=1:o9=h-1:gosub3200:print"-----=":return
3200 print"{home}";:ifo8=1then3220
3210 foro7=1too8-1:print"{right}";:nexto7
3220 ifo9=1then3290
3230 foro7=1too9:print"{down}";:nexto7
3290 return
10000 getg$:return
