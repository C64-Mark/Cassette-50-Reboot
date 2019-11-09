glIndexLo                       byte <glMenu
                                byte <glStart
                                byte <glDesert
                                byte <glMountain
                                byte <glHills
                                byte <glPool
                                byte <glPoison
                                byte <glThirst
                                byte <glCaveEntrance
                                byte <glNoOxygen
                                byte <glCaveBox
                                byte <glLost
                                byte <glMap
                                byte <glLostAgain
                                byte <glMapView
                                byte <glOutside
                                byte <glGetMap
                                byte <glMonster
                                byte <glShoot
                                byte <glGrenade
                                byte <glTunnelChoice
                                byte <glTunnel1
                                byte <glTunnel2
                                byte <glTunnel3
                                byte <glSpidShoot
                                byte <glSpidGrenade
                                byte <glTunnel5
                                byte <gl3HeadShoot
                                byte <gl3HeadGrenade
                                byte <glTunnel4
                                byte <glLargeHole
                                byte <glCrossBridge
                                byte <glClimbDown

glIndexHi                       byte >glMenu
                                byte >glStart
                                byte >glDesert
                                byte >glMountain
                                byte >glHills
                                byte >glPool
                                byte >glPoison
                                byte >glThirst
                                byte >glCaveEntrance
                                byte >glNoOxygen
                                byte >glCaveBox
                                byte >glLost
                                byte >glMap
                                byte >glLostAgain
                                byte >glMapView
                                byte >glOutside
                                byte >glGetMap
                                byte >glMonster
                                byte >glShoot
                                byte >glGrenade
                                byte >glTunnelChoice
                                byte >glTunnel1
                                byte >glTunnel2
                                byte >glTunnel3
                                byte >glSpidShoot
                                byte >glSpidGrenade
                                byte >glTunnel5
                                byte >gl3HeadShoot
                                byte >gl3HeadGrenade
                                byte >glTunnel4
                                byte >glLargeHole
                                byte >glCrossBridge
                                byte >glClimbDown

glMenu          text "{sh -} you have crashed on the planet mars. {sh -}"
                text "{sh -} you have 24 hours of oxygen left and {sh -}"
                text "{sh -} the only other oxygen is 200 miles   {sh -}"
                text "{sh -} away in a supply base.               {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} you have one ray gun with 4 clips,   {sh -}"
                text "{sh -} field glasses, a pint of water and 4 {sh -}"
                text "{sh -} hand grenades. can you survive?      {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -}        press {white}[space]{gray} to start        {sh -}"
                byte 0
                byte locStart, kSpace, false, false, false, false, false, false, false, false

glStart         text "{sh -} you get out of your crashed ship and {sh -}"
                text "{sh -} look around.                         {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} to the west there is desert, to the  {sh -}"
                text "{sh -} east there are hills, to the south   {sh -}"
                text "{sh -} lies more desert and to the north    {sh -}"
                text "{sh -} there are mountains.                 {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} do you want to go {white}(n){gray}orth, {white}(s){gray}outh,  {sh -}"
                text "{sh -} {white}(e){gray}ast or {white}(w){gray}est?                    {sh -}"
                byte 0
                byte locMountain, kN, locDesert, kS, locHills, kE, locDesert, kW, false, false

glDesert        text "{sh -} after walking for one day your water {sh -}"
                text "{sh -} runs out and you soon die of thirst. {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glMountain      text "{sh -} you are climbing up the tall         {sh -}"
                text "{sh -} mountain when you suddenly slip and  {sh -}"
                text "{sh -} fall 100 feet, breaking your neck.   {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glHills         text "{sh -} as you walk in to the hills you see  {sh -}"
                text "{sh -} two caves. do you want to go and     {sh -}"
                text "{sh -} explore them?                        {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(y){gray}es or {white}(n){gray}o                        {sh -}"
                byte 0
                byte locPool, kN, locCaveEntrance, kY, false, false, false, false, false, false

glPool          text "{sh -} you carry on walking until you run   {sh -}"
                text "{sh -} out of water. just ahead is a pool   {sh -}"
                text "{sh -} of water. do you want to take a      {sh -}"
                text "{sh -} a drink from the pool?               {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(y){gray}es or {white}(n){gray}o                        {sh -}"
                byte 0
                byte locPoison, kY, locThirst, kN, false, false, false, false, false, false

glPoison        text "{sh -} you take a drink, but the water is   {sh -}"
                text "{sh -} poisonous. you double over and die.  {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glThirst        text "{sh -} you carry on walking but slowly you  {sh -}"
                text "{sh -} die of exposure and dehydration.     {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glCaveEntrance  text "{sh -} the cave is small but at the far end {sh -}"
                text "{sh -} you can just make out a light. what  {sh -}"
                text "{sh -} do you want to do?                   {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(e){gray}nter the cave or {white}(c){gray}arry on       {sh -}"
                byte 0
                byte locNoOxygen, kC, locCaveBox, kE, false, false, false, false, false, false

glNoOxygen      text "{sh -} you carry on walking outside, but    {sh -}"
                text "{sh -} eventually you run out of oxygen and {sh -}"
                text "{sh -} die.                                 {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glCaveBox       text "{sh -} as you get deeper into the cave the  {sh -}"
                text "{sh -} light becomes brighter, revealing a  {sh -}"
                text "{sh -} hole which provides a vital source   {sh -}"
                text "{sh -} of oxygen. a small box sits in the   {sh -}"
                text "{sh -} middle of the cave. do you want to   {sh -}"
                text "{sh -} examine it?                          {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(y){gray}es or {white}(n){gray}o                        {sh -}"
                byte 0
                byte locLost, kN, locMap, kY, false, false, false, false, false, false

glLost          text "{sh -} you soon get lost in the cave and    {sh -}"
                text "{sh -} die due to a lack of water.          {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glMap           text "{sh -} you open the box and find a map      {sh -}"
                text "{sh -} inside. do you want to open it?      {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(y){gray}es or {white}(n){gray}o                        {sh -}"
                byte 0
                byte locLostAgain, kN, locMapView, kY, false, false, false, false, false, false

glLostAgain     text "{sh -} you soon get lost without the map to {sh -}"
                text "{sh -} guide you. you die of starvation.    {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glMapView       text "{sh -} {brown}{cm a}{sh asterisk*34}{cm s}{gray} {sh -}"
                text "{sh -} {brown}{sh -}{space*8}U{sh asterisk*2}fresh water{space*12}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}dangerU{sh asterisk}*{sh asterisk*4}*{sh asterisk*6}*cave opening {sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}{space*2}J{sh asterisk*2}**{space*6}^{space*20}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}{space*4}N{sh -}MM{space*5}Jyou are here{space*8}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}{space*3}N {sh -} MM{space*9}*your ship      {sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}{space*2}N{space*2}{sh -}{space*2}MM{space*24}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}{space*2}M{space*2}{sh -}{space*3}MM{space*11}n{space*11}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}{space*3}M {sh -}{space*4}MM{space*10}^{space*11}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}{space*3}N {sh -}{space*5}MM{space*3}{sh space}{space*5}{sh -}{space*11}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}  *{space*2}*{space*6}MM{space*20}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -}  ^{space*2}^{space*7}MMNM{cm p*4}*{arrow left}danger{space*5}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{sh -} danger{space*7}M*?{space*17}{sh -}{gray} {sh -}"
                text "{sh -} {brown}{cm z}{sh asterisk*34}{cm x}{gray} {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} carry on? {white}(y){gray}es or {white}(n){gray}o              {sh -}"
                byte 0
                byte locOutside, kN, locMonster, kY, false, false, false, false, false, false

glOutside       text "{sh -} you only have one hour of oxygen     {sh -}"
                text "{sh -} left. do you still want to go back   {sh -}"
                text "{sh -} outside the cave?                    {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(y){gray}es or {white}(n){gray}o                        {sh -}"
                byte 0
                byte locNoOxygen, kY, locGetMap, kN, false, false, false, false, false, false

glGetMap        text "{sh -} you go back inside the cave and get  {sh -}"
                text "{sh -} the map, contining into the cave.    {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to carry on            {sh -}"
                byte 0
                byte locMonster, kSpace, false, false, false, false, false, false, false, false

glMonster       text "{sh -} you follow the map to a fresh water  {sh -}"
                text "{sh -} spring and take a drink. as you do   {sh -}"
                text "{sh -} so a large water monster jumps up at {sh -}"
                text "{sh -} you. luckily you dive out of the way {sh -}"
                text "{sh -} of it. what do you want to do?       {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(s){gray}hoot it or throw a {white}(g){gray}renade      {sh -}"
                byte 0
                byte locShoot, kS, locGrenade, kG, false, false, false, false, false, false

glShoot         text "{sh -} you shoot it four times with your    {sh -}"
                text "{sh -} gun before it dies.                  {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to carry on            {sh -}"
                byte 0
                byte locTunnelChoice, kSpace, false, false, false, false, false, false, false, false

glGrenade       text "{sh -} you toss a grenade at it and blow it {sh -}"
                text "{sh -} to smithereens.                      {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to carry on            {sh -}"
                byte 0
                byte locTunnelChoice, kSpace, false, false, false, false, false, false, false, false

glTunnelChoice  text "{sh -} you keep walking until you come to a {sh -}"
                text "{sh -} cave with five different tunnels.    {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} which tunnel will you take? {white}1 - 5{gray}    {sh -}"
                byte 0
                byte locTunnel1, k1, locTunnel2, k2, locTunnel3, k3, locTunnel4, k4, locTunnel5, k5

glTunnel1       text "{sh -} you walk down the first tunnel but   {sh -}"
                text "{sh -} it gets darker the further you walk  {sh -}"
                text "{sh -} into it. unable to see properly you  {sh -}"
                text "{sh -} fall into a pit of poisonous snakes. {sh -}"
                text "{sh -} before you have time to think you're {sh -}"
                text "{sh -} bitten and die an agonising death.   {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glTunnel2       text "{sh -} you follow the second tunnel which   {sh -}"
                text "{sh -} widens out to a bridge. as you begin {sh -}"
                text "{sh -} to cross the bridge it gives way and {sh -}"
                text "{sh -} you fall 300 feet, breaking your     {sh -}"
                text "{sh -} neck as you hit the rocks below.     {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glTunnel3       text "{sh -} as you walk down tunnel three you    {sh -}"
                text "{sh -} come face to face with a giant       {sh -}"
                text "{sh -} spider. you take a step back. what   {sh -}"
                text "{sh -} do you want to do?                   {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(s){gray}hoot it or throw a {white}(g){gray}renade      {sh -}"
                byte 0
                byte locSpidShoot, kS, locSpidGrenade, kG, false, false, false, false, false, false

glSpidShoot     text "{sh -} you shoot the spider several times   {sh -}"
                text "{sh -} but it has no effect. it continues   {sh -}"
                text "{sh -} to move towards you before eating    {sh -}"
                text "{sh -} you whole.                           {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glSpidGrenade   text "{sh -} you lob a grenade towards the spider {sh -}"
                text "{sh -} and blow it to bits. unfortunately   {sh -}"
                text "{sh -} the explosion causes the cave to     {sh -}"
                text "{sh -} collapse, crushing you to death      {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glTunnel5       text "{sh -} you walk down tunnel five for about  {sh -}"
                text "{sh -} half a mile when suddenly you are    {sh -}"
                text "{sh -} confronted by a giant three-headed   {sh -}"
                text "{sh -} space monster. before you have time  {sh -}"
                text "{sh -} to react it bites off one of your    {sh -}"
                text "{sh -} arms. what do you want to do?        {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(s){gray}hoot it or throw a {white}(g){gray}renade      {sh -}"
                byte 0
                byte loc3HeadShoot, kS, loc3HeadGrenade, kG, false, false, false, false, false, false

gl3HeadShoot    text "{sh -} you blast it away with your gun and  {sh -}"
                text "{sh -} carry on down the tunnel. however,   {sh -}"
                text "{sh -} you soon collapse from a loss of     {sh -}"
                text "{sh -} blood from your wound.               {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

gl3HeadGrenade  text "{sh -} you lob a grenade towards to the     {sh -}"
                text "{sh -} monster and blow it to bits. you     {sh -}"
                text "{sh -} sidle past the remains and continue  {sh -}"
                text "{sh -} on your way. unfortunately, you      {sh -}"
                text "{sh -} pass out a short while later from    {sh -}"
                text "{sh -} the wounds you sustained. you die    {sh -}"
                text "{sh -} alone and cold.                      {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glTunnel4       text "{sh -} you walk a short way up tunnel four  {sh -}"
                text "{sh -} before you spot a small light in the {sh -}"
                text "{sh -} distance. as you approach the light  {sh -}"
                text "{sh -} the air begins to get thinner. do    {sh -}"
                text "{sh -} wish to wear your oxygen pack?       {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {white}(y){gray}es or {white}(n){gray}o                        {sh -}"
                byte 0
                byte locLargeHole, kY, locNoOxygen, kN, false, false, false, false, false, false

glLargeHole     text "{sh -} you step onto the surface and put on {sh -}"
                text "{sh -} your field glasses. you spot your    {sh -}"
                text "{sh -} supply base about a mile away - you  {sh -}"
                text "{sh -} just have enough air to make it.     {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} you come to a large hole about 100ft {sh -}"
                text "{sh -} wide and 200ft deep. you don't have  {sh -}"
                text "{sh -} enough oxygen to go around but you   {sh -}"
                text "{sh -} can take a risk. there is a bridge   {sh -}"
                text "{sh -} you can use to cross, or you could   {sh -}"
                text "{sh -} climb down the hole and up the other {sh -}"
                text "{sh -} side. however, if you do this you    {sh -}"
                text "{sh -} may not have enough air. what do you {sh -}"
                text "{sh -} want to do?                          {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} cross the {white}(b){gray}ridge or {white}(c){gray}limb down   {sh -}"
                byte 0
                byte locCrossBridge, kB, locClimbDown, kC, false, false, false, false, false, false

glCrossBridge   text "{sh -} as you cross the rickety bridge it   {sh -}"
                text "{sh -} gives way under your weight and you  {sh -}"
                text "{sh -} plummet 200 feet to your death.      {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false

glClimbDown     text "{sh -} you climb down the hole and back up  {sh -}"
                text "{sh -} the other side. you can see the base {sh -}"
                text "{sh -} only 200m away. you walk faster and  {sh -}"
                text "{sh -} faster, making it to the base with   {sh -}"
                text "{sh -} only a few seconds of oxygen left.   {sh -}"
                text "{sh -} the doors of the base open and you   {sh -}"
                text "{sh -} stumble inside.                      {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} {green}** congratulations, you made it! **{gray}  {sh -}"
                text "{sh -}                                      {sh -}"
                text "{sh -} press {white}[space]{gray} to start again         {sh -}"
                byte 0
                byte locMenu, kSpace, false, false, false, false, false, false, false, false
