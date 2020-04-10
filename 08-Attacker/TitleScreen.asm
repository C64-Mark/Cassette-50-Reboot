TitleScreen_DisplayTitle
        LIBSCREEN_SETCOLOURS_VV WHITE, WHITE
        LIBSCREEN_PRINT_A txt_Title
        LIBSCREEN_PRINT_A txt_InstructYN
.TitleCheckJoy
        LIBJOY_GETJOY_V JOY_FIRE
        beq .ExitDisplayTitle
        LIBJOY_GETJOY_V JOY_UP
        bne .TitleCheckJoy
        LIBSCREEN_PRINT_DELAY_AA txt_Inst1, 2
        LIBSCREEN_PRINT_DELAY_AA txt_Inst2, 2
        jmp .TitleCheckJoy
.ExitDisplayTitle
        rts

