*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28  
        byte    $32, $30, $36, $34, $29, $00, $00, $00

Initialise
        jsr InitVariables
        jsr InitGame
        jsr IntroScreen
        jsr InitGameScreen
        jsr InitSprites

GameLoop
        LIBSCREEN_WAIT_V #250
        jsr UserInput
        jsr UpdatePlane
        jsr MovePlane
        jsr MoveTank
        jsr FireMissile
        jsr MoveMissile

        ; update bomb
        ; turret fire / update bullet
        ; move tank
        ; missile fire / update missile
        ; bomb collision

        jmp GameLoop