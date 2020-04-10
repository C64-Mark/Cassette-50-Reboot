*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28  
        byte    $32, $30, $36, $34, $29, $00, $00, $00


Initialise
        jsr Initialise_Game

GameLoop
        LIBSCREEN_WAIT_V #250



;player

        ;jsr CheckBombCollision

        ;jsr DbOut

        jsr GameFlow_Update

        ;lda gameStatus
        ;bne GameLoop
        ;jmp Initialise

        jmp GameLoop