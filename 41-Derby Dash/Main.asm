*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28  
        byte    $32, $30, $36, $34, $29, $00, $00, $00

        jmp Start

*=$1000
Start
        jsr Initialise_Game

GameLoop
        LIBSCREEN_WAIT_V 250
        jsr GameFlowUpdate
        jmp GameLoop