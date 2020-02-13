*=$0801

        byte    $0E, $08, $0A, $00, $9E, $20, $28  
        byte    $32, $30, $36, $34, $29, $00, $00, $00

Initialise
        jsr InitialiseVariables
        jsr InitialiseSprites
        jsr InitialiseScreen
        jsr InitialiseGameScreen
        jsr InitialiseInterrupt
        jsr gameGround_DrawGround
ForeverLoop
        jmp ForeverLoop

GameLoop
        jsr gameObject_SelectObject
        jsr gameObject_Update
        jsr gameObject_Draw
        jsr gameGround_AnimateGround

        asl $D019
        jmp $EA31
