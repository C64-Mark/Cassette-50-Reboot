*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28  
        byte    $32, $30, $36, $34, $29, $00, $00, $00

        jmp Start

*=$5000
Start
        jsr Initialise
        jsr Initialise_Sprites

GameLoop
        LIBSCREEN_WAIT_V 255
        jsr GameFlow_Update

        jmp GameLoop

        

