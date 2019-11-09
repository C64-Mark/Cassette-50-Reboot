;game variables
gameLocation            byte 00
gameChanged             byte 00
directionLocation       byte 00, 00, 00, 00, 00
directionKey            byte 00, 00, 00, 00, 00

scnTopBar               text "{clear}{gray}U{sh asterisk*38}I"
                        text "{sh -}{space*38}{sh -}"
                        text "{sh -}    {red}space mission: a mini adventure{gray}   {sh -}"
                        text "{sh -}                                      {sh -}"
                        text "{cm q}{sh asterisk*38}{cm w}"
                        text "{sh -}                                      {sh -}"
                        byte 00

scnBottomBar            text "{sh -}{space*38}{sh -}"
                        text "J{sh asterisk*38}K"
                        byte 00

;constants
true                    = 1
false                   = 0

;location constants
locMenu                 = $00
locStart                = $01
locDesert               = $02
locMountain             = $03
locHills                = $04
locPool                 = $05
locPoison               = $06
locThirst               = $07
locCaveEntrance         = $08
locNoOxygen             = $09
locCaveBox              = $0A
locLost                 = $0B
locMap                  = $0C
locLostAgain            = $0D
locMapView              = $0E
locOutside              = $0F
locGetMap               = $10        
locMonster              = $11
locShoot                = $12
locGrenade              = $13
locTunnelChoice         = $14
locTunnel1              = $15
locTunnel2              = $16
locTunnel3              = $17
locSpidShoot            = $18
locSpidGrenade          = $19
locTunnel5              = $1A
loc3HeadShoot           = $1B
loc3HeadGrenade         = $1C
locTunnel4              = $1D
locLargeHole            = $1E
locCrossBridge          = $1F
locClimbDown            = $20

;key constants
kSpace                  = $20
kB                      = $42
kC                      = $43
kE                      = $45
kG                      = $47
kN                      = $4E
kS                      = $53
kW                      = $57
kY                      = $59
k1                      = $31
k2                      = $32
k3                      = $33
k4                      = $34
k5                      = $35