1 v=53248:poke775,200:pokev+16,0:pokev+21,0:print"{clear}":dimh$(8),h(8),pl$(10),pl(10),i$(50),c$(50),b(10),t(10),be(10),ho(10):dimbe$(30):fori=1to6:h(i)=i:next:fori=1to10:t(i)=1000:next:poke53280,0:poke53281,0:print"{clear}{down*3}{space*10}{reverse on} d e r b y{space*2}d a s h 
101 print"{down*2}you start off with {pound}1000.00 and bet on ahorse 1 to 6":print"{down}if your horse wins the race then you winthe amount of money depend";:print"ing on the{space*4}betting price!":print"{down}e.g.say you put {pound}10 on 5/1 then you win {pound}50!
105 print"{down}you can have up to 10 people playing!":print"{down}what more can i say apart from good luck":print"{down}{right*9}press any key to continue
108 geta$:ifa$=""then108
109 input"{clear}how many players?";pl:ifpl>10then109
111 fori=1topl:print"{down}type player #"i:inputpl$(i):nexti:print"{clear}":gosub10000:fori=1to30:readi$(i):nexti
117 fori=1to6
118 j=int(rnd(1)*30)+1:ifc$(j)="1"then118
120 c$(j)="1":h$(i)=i$(j):nexti:fori=1to6:be(i)=int(rnd(1)*10)+1:ifbe(i)=1thenbe$(i)="evens
122 nexti:pokev+21,peek(v+21)and0:fori=1to6:iflen(h$(i))>=17thenprinth(i)h$(i)be(i)"/ 1 "be$(i):goto126
125 printh(i)h$(i),be(i)"/ 1 "be$(i)
126 print:nexti:print:fori=1topl:ift(i)<=0thengosub30010:goto130
128 printpl$(i)" type horse (1-6) then type bet";:inputho(i),b(i):print"{up}":ifb(i)>t(i)thengosub30000:print"{up*4}":goto128
130 nexti
131 forl=1topl:t(l)=t(l)-b(l):ift(l)<0thent(l)=0
132 nextl:print"{clear}";:poke53280,7:poke53281,5:print"{red}{space*39}w";:print"{white}{space*39}b";:print"{cm r*39}{sh +}";:fori=1to19:print"{space*39}b";:nexti
140 print"{cm r*39}{sh +}":pokev+21,255:pokev,24:pokev+1,76:pokev+2,24:pokev+3,102:pokev+4,24:pokev+5,128:pokev+6,24:pokev+7,155:pokev+8,24:pokev+9,181:pokev+10,24:pokev+11,205:s=54272:forz=stos+24:pokez,0:next:poke54276,0:poke54278,64:poke54277,4:poke54296,15:poke54276,33
145 print"{home}{reverse on}{yellow}{right*12}on your marks!{reverse off}":poke54273,34:poke54272,75:fori=1to1000:nexti:print"{home}{reverse on}{yellow}{right*12}get set!!!!!!!{reverse off}":poke54273,38:poke54272,126:fori=1to1000:nexti:print"{home}{reverse on}{yellow}{right*12}go!!!!!!!!!!!!{reverse off}":poke54273,43:poke54272,52:fori=1to1000:nexti:poke54272,0:poke54273,0
151 poke54276,33:forl=1to6:x(l)=24:nextl:print"{home}{reverse on}{yellow}{right*11}{space*5}ascot{space*5}{reverse off}
153 x(1)=x(1)+int(rnd(1)*15)+1:x(2)=x(2)+int(rnd(1)*15)+1:x(3)=x(3)+int(rnd(1)*15)+1:x(4)=x(4)+int(rnd(1)*15)+1:x(5)=x(5)+int(rnd(1)*15)+1:x(6)=x(6)+int(rnd(1)*15)+1:fork=1to6:ifx(k)>255thengosub40000
160 nextk:z=0:forq=0to10step2:z=z+1:pokev+q,x(z):poke54273,34:poke54272,75:forw=0to10:nextw:poke54273,0:poke54272,0:ifx(z)>=60andy(z)=100then1000
165 nextq:goto153
1000 gosub2000:print"{clear}":poke53280,0:poke53281,0:pokev+21,peek(v+21)and0:print"{yellow}":printh(z)h$(z)" is the winner!":fori=1topl:ifho(i)<>h(z)then1006
1004 print"{down}"pl$(i)" won {pound}"(b(i)*be(z)):t(i)=t(i)+(b(i)*be(z)+b(i))
1006 nexti:print"{down}press any key to see money!
1008 getz$:ifz$=""then1008
1009 print"{clear}":fori=1topl:printpl$(i)" {pound}"t(i):print:next:print"{down}press any key for another game!
1014 getz$:ifz$=""then1014
1015 print"{clear}":fori=1to30:c$(i)="":next:fori=1to6:be$(i)="":b=0:be=0:ho(i)=0:x(i)=24:y(i)=0:h$(i)="":next:pokev+21,peek(v+21)and0:pokev+16,0:j=0:goto117
2000 poke54276,33:fori=0to170:poke54273,i:poke54272,i:nexti:fori=170to0step-1:poke54273,i:poke54272,i:nexti:return
9999 goto9999
10000 v=53248:fori=0to7:poke2040+i,13:nexti:fori=0to63:readq:poke832+i,q:next:pokev+21,255:fori=0to7:readq:pokev+39+i,q:nexti:return
20000 data0,14,0,0,14,20,0,12,28,0,28,26,0,31,63,0,28,255,0,28,247,0,127,227,3,255,224,7,255,224,15,255,224,25,255,224,25,255,224,57,216,112,49,222,112,97,192,48,97,192,48,225,128,96,3,128,96,3,0,224,7,0,224,99,1,2,9,11,6,0,2,0
20201 data red rum,easy does it,flash gordon,demon rider,gary's choice, devil's lare,shooting star,slow joe,quick silver,windy miller, roland rat,wise old owl,hissing sid,jock the sock,willy make it
20204 data summer's day,randy andy,slow approach,jack the ripper, swiftsure, robin hood,friar tuck,ever ready,dennis the menace,billy whizz, nervous rex,mr bounce,sherlock holmes,running water,super gran,hello
30000 print"{down}but you only have"t(i)"left!":return
30010 forq=1topl:ift(q)<=0thennextq:goto30015
30011 forw=1topl:ift(w)=0then30013
30012 nextw
30013 printpl$(w)" you're broke!!":ifw=plthen30023
30014 return
30015 print"{clear}that is the end of today's racing!":print"{down}you are all broke":print"{down}do you want another game?(y/n)
30018 geta$:ifa$<>"y"anda$<>"n"then30018
30019 ifa$<>"y"then30021
30020 run
30021 ifa$="n"thensys64738
30022 sys64738
30023 form=1to2000:nextm:goto131
40000 pokev+16,peek(v+16)or(2^(k-1)):x(k)=0:y(k)=100:return
