
; ASM FILE code\specialscreens\suspend\witchsuspend.asm :
; 0x7034..0x7094 : Witch suspend function

; =============== S U B R O U T I N E =======================================

; witch suspend screen

WitchSuspend:
		
		trap    #SOUND_COMMAND
		dc.w MUSIC_SUSPEND
		bsr.w   InitWitchSuspendVIntFunctions
		move.w  #$1E,((BLINK_COUNTER-$1000000)).w
		move.w  #6,((word_FFB07C-$1000000)).w
		move.b  #$FF,((byte_FFB082-$1000000)).w
		trap    #TEXTBOX
		dc.w $F0                
						; "That's it for today?{W2}{N}Yes, you had better take a{N}rest now.{N}Come back again.{W1}"
		trap    #TEXTBOX
		dc.w $FFFF
		clr.b   ((byte_FFB082-$1000000)).w
		bsr.w   sub_7CDC
		jsr     j_SuspendGame
		move.w  #$258,d0
loc_7068:
		
		bsr.w   WaitForVInt     
		btst    #7,((P1_INPUT-$1000000)).w
		dbne    d0,loc_7068
		trap    #SOUND_COMMAND
		dc.w SOUND_COMMAND_FADE_OUT
		bsr.w   FadeOutToBlack
		trap    #VINT_FUNCTIONS
		dc.w VINTS_CLEAR
		bsr.w   DisableDisplayAndVInt
		move    #$2700,sr
		movea.l (InitStack).w,sp
		movea.l (p_Start).w,a0  
		jmp     (a0)

	; End of function WitchSuspend

