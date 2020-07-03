IRQ_Initialise
        sei
        lda #<IRQ_Main
        sta sysIntVectorLo
        lda #>IRQ_Main
        sta sysIntVectorHi

        lda #%00000001
        sta IRQMR

        lda #240
        sta RASTER
        lda VCR1
        and #%01111111          ;clear raster MSB
        sta VCR1    

        asl VICINT              ;Acknowledge interrupt
        cli
        rts


IRQ_Main
        pha
        lda #TRUE
        sta gameFlag 
        asl VICINT
        pla
        rti



