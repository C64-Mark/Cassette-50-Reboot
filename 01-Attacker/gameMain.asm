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
        jsr FireBullet
        jsr MoveBullet
        jsr MoveBomb
        jsr CheckPlaneCollision
        jsr CheckBombCollision

        ;lda bombStatus
        ;sta $0400

        jsr GameFlowUpdate

        lda gameStatus
        bne GameLoop
        jmp Initialise