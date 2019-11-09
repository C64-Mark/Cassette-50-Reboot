*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28  
        byte    $32, $30, $36, $34, $29, $00, $00, $00

        lda #0
        sta BDCOL
        sta BGCOL0
GameLoop
        jsr GameLocationUpdate
Loop
        jsr UserInput
        lda gameChanged
        beq Loop
        jmp GameLoop