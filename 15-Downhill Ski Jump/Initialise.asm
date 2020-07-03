Initialise_Main
        sei
        lda #%01111111
        sta ICSR1
        sta ICSR2               ;disable all interrupts
        cli

        lda IOPORT
        and #%11111000
        ora #%00000101          ;bank out BASIC and kernal
        sta IOPORT
        
        lda VICBANK
        and #%11111100
        ora #%00000010          ;bank 1 i.e. $4000-$7FFF
        sta VICBANK

        lda #%00011000          ;screen @ $4400, chars @ $6000
        sta VMCR

        lda #FALSE
        sta gameFlag
        sta menuInit
        rts




