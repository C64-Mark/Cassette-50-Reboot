InitVariables
        lda #gfMenu
        sta gameStatus

        lda #0
        sta pacmanSprite
        sta pacmanAnimFrame
        sta dotsEaten
        sta pillActive
        sta pillTimer
        sta fruitActive
        sta score

        lda #1
        sta ghostSprite
        sta difficultyLevel
        sta levelNumber

        lda #2
        sta fruitSprite
        sta ghostColour
        sta fruitColour

        lda #3
        sta pacmanLives
        sta ghostAnimFrame

        lda #7
        sta fruitFrame

        rts
