; 10 SYS2080

*=$0801
                byte $0B, $08, $0A, $00, $9E, $32, $30, $38
                byte $30, $00, $00, $00

*=$0820
Start

        ;jsr Initialise

GameLoop

        ;jsr GameFlowUpdate
        jmp GameLoop

