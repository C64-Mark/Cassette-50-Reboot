*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28  
        byte    $32, $30, $36, $34, $29, $00, $00, $00

Initialise
        jsr InitVariables
        jsr InitGame
        jsr IntroScreen
        jsr InitGameScreen
        jsr CalculateBasePosition
        jsr InitSprites

GameLoop
        LIBSCREEN_WAIT_V #250

        jsr UserInput
        jsr UpdateSprites

        jsr GameFlowUpdate

        lda gameStatus
        bne GameLoop
        jmp Initialise