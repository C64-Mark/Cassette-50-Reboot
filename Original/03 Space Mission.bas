1 PRINT"{clear}***space**mission***a*mini*adventure****":PRINT"{down}{space*12}instructions{space*4}":PRINT"{down}you have crashed on the planet mars?":PRINT"you have 24 hours of oxygen left!":PRINT"the only other oxygen,is 200 miles away in a supply base!
6 PRINT"you have one ray gun with 4 ammunition{space*2}clips and field glasses":PRINT"you also have a pint of water with 4{space*4}hand grenades. can you survive?":PRINT"{space*12}***start***":PRINT"you get out of your crashed ship and{space*4}look around
25 PRINT"to your west there is nothing but sand!":PRINT"to your east there are hills!":PRINT"to your south there is just sand!":PRINT"to your north there are mountains!":PRINT"do you want to go north,south,east,west?":PRINT"n=north,s=south,e=east,w=west!
55 INPUTA$:IFA$="n"THEN150
65 IFA$="s"THEN100
70 IFA$="e"THEN200
75 IFA$="w"THEN100
100 PRINT"after walking for one day your water runs out!":PRINT"and you soon die with out water!
120 PRINT"end!":PRINT"do you want another go!":PRINT"type in yes to start!":INPUTA$:IFA$="yes"THEN1
130 GOTO130
150 PRINT"you are soon climbing up a high mountain":PRINT"you suddenly slip and fall one hundred{space*2}feet!":PRINT"and break your neck!":GOTO120
200 PRINT"as you walk in to the hills you see two caves":PRINT"do you want to go and see them!":PRINT"y=yes and n=no?":INPUTA$:IFA$="y"THEN460
250 IFA$="n"THEN300
300 PRINT"you carry on walking until you run out{space*2}of water":PRINT"you see a pool of water in the distance":PRINT"do you want to go and drink some":PRINT"y=yes and n=no":INPUTA$:IFA$="y"THEN370
360 IFA$="n"THEN410
370 PRINT"you drink some water!":PRINT"the water is poisoness!":PRINT"you die!":GOTO120
410 PRINT"you carry on walking until you die{space*6}because there is no water!":GOTO120
450 PRINT"do you want to go in the caves!
460 PRINT"the cave is small but at the far end{space*4}there is a small light!":PRINT"what do you want to do?":PRINT"carry on or go in?":PRINT"y=yes and n=no?":INPUTA$:IFA$="y"THEN600
520 IFA$="n"THEN530
530 PRINT"you carry on walking for hours until{space*4}your oxygen runs out!":PRINT"and you soon die!":GOTO120
600 PRINT"as you go in the light gets bigger until you reach the light!":PRINT"you find that there is oxygen down there":PRINT"the light comes from a hole in the roof of the cave!":PRINT"you see a box in the middle of the cave
640 PRINT"do you want to go and see it?":PRINT"y=yes and n=no":INPUTA$:IFA$="y"THEN696
680 IFA$="n"THEN690
690 PRINT"you soon get lost and die because you{space*3}run out of water!":GOTO120
696 PRINT"in the box there is a map":PRINT"do you want to open the map!":PRINT"y=yes and n=no?":INPUTA$:IFA$="y"THEN707
701 IFA$="n"THEN702
702 PRINT"you soon get lost with out the map and{space*2}die with out food":GOTO120
704 IFA$="y"THEN707
705 IFA$="n"THEN706
706 PRINT"you soon get lost with out the map and{space*2}die with out food
707 PRINT"{cm a}{sh asterisk*35}{cm s}":PRINT"{sh -}{space*8}U{sh asterisk*2}fresh water{space*13}{sh -}":PRINT"{sh -}dangerU{sh asterisk}*{sh asterisk*4}*{sh asterisk*6}*cave operning {sh -}":PRINT"{sh -}{space*2}J{sh asterisk*2}**{space*6}^{space*21}{sh -}":PRINT"{sh -}{space*4}N{sh -}MM{space*5}Jyou are here{space*9}{sh -}
712 PRINT"{sh -}{space*3}N {sh -} MM{space*9}*your space ship {sh -}":PRINT"{sh -}{space*2}N{space*2}{sh -}{space*2}MM{space*25}{sh -}":PRINT"{sh -}{space*2}M{space*2}{sh -}{space*3}MM{space*11}n{space*12}{sh -}":PRINT"{sh -}{space*3}M {sh -}{space*4}MM{space*10}^{space*12}{sh -}":PRINT"{sh -}{space*3}N {sh -}{space*5}MM{space*3}{sh space}{space*5}{sh -}{space*12}{sh -}
717 PRINT"{sh -}{space*2}N{space*2}{sh -}{space*6}MM{space*8}{sh -}{space*12}{sh -}":PRINT"{sh -} *{space*3}*{space*7}MM{space*20}{sh -}":PRINT"{sh -} ^{space*3}^{space*8}MMNM{cm p*4}*{arrow left}danger{space*5}{sh -}":PRINT"{sh -} d{space*3}d{space*9}M{space*19}{sh -}":PRINT"{sh -} a{space*3}a{space*10}M{space*18}{sh -}
722 PRINT"{sh -} n{space*3}n{space*11}M{space*17}{sh -}":PRINT"{sh -} g{space*3}g{space*12}*?{space*15}{sh -}":PRINT"{sh -} e{space*3}e{space*29}{sh -}":PRINT"{sh -} r{space*3}r{space*29}{sh -}":PRINT"{sh -}{space*35}{sh -}
727 PRINT"{sh -}{space*35}{sh -}":PRINT"{cm z}{sh asterisk*35}{cm x}":PRINT"do you want to carry on?":PRINT"y=yes and n=no!":INPUTA$:IFA$="y"THEN900
790 IFA$="n"THEN793
793 PRINT"you find you only have 1 hour so if you go out you will die!":PRINT"do you still want to carry on!":PRINT"y=yes and n=no!":INPUTA$:IFA$="y"THEN830
820 IFA$="n"THEN880
830 PRINT"your oxygen soon runs out and you die!":GOTO120
880 PRINT"you go back to the cave and get the map!
900 PRINT"you follow the map to a fresh water{space*5}spring and take a drink":PRINT"as you do so a large water monster jumpsat you":PRINT"but you just get out of the way in time!":PRINT"do you want to shoot it or throw a{space*6}grenade at it
940 PRINT"shoot=shoot it and grenade=throw a{space*6}grenade!":INPUTA$:IFA$="shoot"THEN980
970 IFA$="grenade"THEN1000
980 PRINT"you shoot it four times and then it{space*5}dies":GOTO1100
1000 PRINT"you throw a grenade and blow it to bits":PRINT"you have 3 grenades left!":GOTO1100
1100 PRINT"you keep walking until you come to a{space*4}cave with 5 different tunnels":PRINT"which tunnel do you want to go down,1,2 3,4,5?":INPUTA$:IFA$="1"THEN2000
1500 IFA$="2"THEN2100
1600 IFA$="3"THEN2300
1700 IFA$="4"THEN2400
1800 IFA$="5"THEN2500
2000 PRINT"as you walk down tunnel1 you find it get darker and darker!":PRINT"until you can not see were you are going":PRINT"and you fall down a pit which has{space*7}poisonous snakes in!":PRINT"and one bites you and you soon die":GOTO120
2100 PRINT"you walk down a tunnel which widens out to a bridge":PRINT"as you walk across it,it gives way!":PRINT"and you fall 300feet and break your neck":GOTO120
2300 PRINT"as you walk down tunnel 3 you come face to face with a giant spider!":PRINT"do you want to try and shoot it or{space*6}throw a grenade at it?":PRINT"shoot=to shoot it and grenade=to throw a grenade at it?":INPUTA$:IFA$="shoot"THEN2355
2350 IFA$="grenade"THEN2360
2355 PRINT"you shoot at it several times but there is no effect!":PRINT"the spider eats you whole!":GOTO120
2360 PRINT"you throw a grenade at it and blow it to bits!":PRINT"but you bring the tunnel down on top of you and you are crushed!":GOTO120
2400 PRINT"you walk up tunnel 4 and in the distance you see a small light!":PRINT"as you get nearer you find the air gets thinner and thinner!":PRINT"do you want to put your oxygen tank on!":PRINT"yes or no?":INPUTA$:IFA$="yes"THEN2460
2455 IFA$="no"THEN2470
2460 PRINT"you swich your air on and walk to the{space*3}surface of the planet!":GOTO3000
2470 PRINT"you walk out on to the surface and soon die of lack of oxygen!":GOTO120
2500 PRINT"you walk down tunnel 5 for about half a{space*2}mile":PRINT"where you meet a large three headed{space*5}monster!":PRINT"the monster bites one of your arms of!":PRINT"do you want to shoot it or throw a{space*6}grenade at it!
2540 PRINT"shoot=shoot at it and grenade=throw a{space*3}grenade at it?":INPUTA$:IFA$="shoot"THEN2560
2556 IFA$="grenade"THEN2565
2560 PRINT"you shoot it dead and carry on!":GOTO2570
2565 PRINT"you throw a grenade at it and blow it{space*3}to bits!":GOTO2570
2570 PRINT"you carry on walking and soon die from{space*2}loss of blood!":GOTO120
3000 PRINT"you look around with your field glasses ":PRINT"and to the north you see your supply{space*4}base about a mile away!":PRINT"you just have enough oxygen to get there":PRINT"you walk for about half a mile and soon come to a large hole!
3040 PRINT"it is about 100 feet across and about{space*3}200 feet in wide!":PRINT"you have not got enough oxgyen to go{space*4}around":PRINT"but you can take a risk and try and{space*5}cross the old bridge!":PRINT"or go down the hole and up the other{space*4}side
3080 PRINT"but that will risk your not reaching the base in time":PRINT"do you want to go over the bridge or{space*4}down the hole!":PRINT"bridge=over the bridge and hole=down{space*4}the hole!":INPUTA$:IFA$="bridge"THEN3150
3120 IFA$="hole"THEN3200
3150 PRINT"as you cross the bridge it gives way andyou fall 100 feet":PRINT"and break your neck!":GOTO120
3200 PRINT"you walk down the hole and up the other side and see your base":PRINT"about 200 metres away":PRINT"you start to walk faster and faster!":PRINT"until you just make it with about{space*7}1{space*2}minute of oxygen left!
3240 PRINT"the big doors open and you walk in!!!!":PRINT"****congratulations you made it****
