
; ASM FILE data\maps\entries\map03\mapsetups\s3.asm :
; 0x50D4C..0x50EEA : 
ms_map3_ZoneEvents:
		dc.b 2
		dc.b $FF
		dc.w sub_50D74-ms_map3_ZoneEvents
		dc.b $1B
		dc.b 5
		dc.w sub_50DAC-ms_map3_ZoneEvents
		dc.b $1C
		dc.b 5
		dc.w sub_50DAC-ms_map3_ZoneEvents
		dc.b $1D
		dc.b 5
		dc.w sub_50DAC-ms_map3_ZoneEvents
		dc.b $1E
		dc.b 5
		dc.w sub_50DF8-ms_map3_ZoneEvents
		dc.b $1F
		dc.b 5
		dc.w sub_50DF8-ms_map3_ZoneEvents
		dc.b 4
		dc.b 4
		dc.w sub_50E44-ms_map3_ZoneEvents
		dc.b $3A
		dc.b $D
		dc.w sub_50E66-ms_map3_ZoneEvents
		dc.b $2B
		dc.b $A
		dc.w sub_50ED2-ms_map3_ZoneEvents
		dc.w $FD00
		dc.w return_50EE8-ms_map3_ZoneEvents

; =============== S U B R O U T I N E =======================================

sub_50D74:
		
		lea     cs_51444(pc), a0
		trap    #6
		trap    #CHECK_FLAG
		dc.w $101
		bne.s   loc_50DA6
		jsr     (WaitForCameraToCatchUp).l
		move.w  ((CURRENT_SPEAK_SOUND-$1000000)).w,((word_FFB09E-$1000000)).w
		move.w  #$8C,d0 
		jsr     GetEntityPortraitAndSpeechSfx
		move.w  d1,((CURRENT_PORTRAIT-$1000000)).w
		move.w  d2,((CURRENT_SPEAK_SOUND-$1000000)).w
		trap    #TEXTBOX
		dc.w $1F2               
						; "You unruly boy!{N}Where on earth are you{N}going?{W2}"
		trap    #TEXTBOX
		dc.w $1F3               
						; "There is no school outside!{N}Go to school!{W1}"
loc_50DA6:
		
		trap    #SET_FLAG
		dc.w $101
		rts

	; End of function sub_50D74


; =============== S U B R O U T I N E =======================================

sub_50DAC:
		
		trap    #CHECK_FLAG
		dc.w $258               
						; set after agreeing to try getting into the castle
		bne.s   loc_50DE6
		lea     cs_5144C(pc), a0
		trap    #6
		trap    #CHECK_FLAG
		dc.w $102
		bne.s   loc_50DE0
		jsr     (WaitForCameraToCatchUp).l
		move.w  ((CURRENT_SPEAK_SOUND-$1000000)).w,((word_FFB09E-$1000000)).w
		move.w  #$8A,d0 
		jsr     GetEntityPortraitAndSpeechSfx
		move.w  d1,((CURRENT_PORTRAIT-$1000000)).w
		move.w  d2,((CURRENT_SPEAK_SOUND-$1000000)).w
		trap    #TEXTBOX
		dc.w $1F1               
						; "You cannot enter the castle{N}of Granseal.  Go away!{W1}"
loc_50DE0:
		
		trap    #SET_FLAG
		dc.w $102
		bra.s   return_50DF6
loc_50DE6:
		
		trap    #CHECK_FLAG
		dc.w $25C               
						; set after the guards have listened to Sarah and allowed you into the castle
		bne.s   return_50DF6
		lea     cs_51652(pc), a0
		trap    #6
		trap    #SET_FLAG
		dc.w $25C               
						; set after the guards have listened to Sarah and allowed you into the castle
return_50DF6:
		
		rts

	; End of function sub_50DAC


; =============== S U B R O U T I N E =======================================

sub_50DF8:
		
		trap    #CHECK_FLAG
		dc.w $258               
						; set after agreeing to try getting into the castle
		bne.s   loc_50E32
		lea     cs_51454(pc), a0
		trap    #6
		trap    #CHECK_FLAG
		dc.w $103
		bne.s   loc_50E2C
		move.w  ((CURRENT_SPEAK_SOUND-$1000000)).w,((word_FFB09E-$1000000)).w
		move.w  #$8B,d0 
		jsr     GetEntityPortraitAndSpeechSfx
		move.w  d1,((CURRENT_PORTRAIT-$1000000)).w
		move.w  d2,((CURRENT_SPEAK_SOUND-$1000000)).w
		jsr     (WaitForCameraToCatchUp).l
		trap    #TEXTBOX
		dc.w $1F1               
						; "You cannot enter the castle{N}of Granseal.  Go away!{W1}"
loc_50E2C:
		
		trap    #SET_FLAG
		dc.w $103
		bra.s   return_50E42
loc_50E32:
		
		trap    #CHECK_FLAG
		dc.w $25C               
						; set after the guards have listened to Sarah and allowed you into the castle
		bne.s   return_50E42
		lea     cs_51652(pc), a0
		trap    #6
		trap    #SET_FLAG
		dc.w $25C               
						; set after the guards have listened to Sarah and allowed you into the castle
return_50E42:
		
		rts

	; End of function sub_50DF8


; =============== S U B R O U T I N E =======================================

sub_50E44:
		
		trap    #CHECK_FLAG
		dc.w $259               
						; set after Bowie is intercepted by his mother going downstairs
		bne.s   return_50E64
		lea     cs_5145C(pc), a0
		trap    #6
		move.w  #$80,d0 
		moveq   #5,d1
		moveq   #6,d2
		moveq   #1,d3
		jsr     sub_47808
		trap    #SET_FLAG
		dc.w $259               
						; set after Bowie is intercepted by his mother going downstairs
return_50E64:
		
		rts

	; End of function sub_50E44


; =============== S U B R O U T I N E =======================================

sub_50E66:
		
		trap    #CHECK_FLAG
		dc.w $25B               
						; set after the messenger scene
		bne.s   return_50ED0
		trap    #CHECK_FLAG
		dc.w $25A               
						; set after Astral's second basement line
		bne.s   loc_50E96
		move.w  ((CURRENT_SPEAK_SOUND-$1000000)).w,((word_FFB09E-$1000000)).w
		move.w  #$8E,d0 
		jsr     GetEntityPortraitAndSpeechSfx
		move.w  d1,((CURRENT_PORTRAIT-$1000000)).w
		move.w  d2,((CURRENT_SPEAK_SOUND-$1000000)).w
		jsr     LoadAndDisplayCurrentPortrait
		trap    #TEXTBOX
		dc.w $201               
						; "Mmm...aahh...{N}Oh, yeah!  It must be....{N}No, it's not a....{W1}"
		bra.s   return_50ED0
loc_50E96:
		
		trap    #CHECK_FLAG
		dc.w $104
		bne.s   return_50ED0
		move.w  ((CURRENT_SPEAK_SOUND-$1000000)).w,((word_FFB09E-$1000000)).w
		move.w  #$8E,d0 
		jsr     GetEntityPortraitAndSpeechSfx
		move.w  d1,((CURRENT_PORTRAIT-$1000000)).w
		move.w  d2,((CURRENT_SPEAK_SOUND-$1000000)).w
		jsr     LoadAndDisplayCurrentPortrait
		trap    #TEXTBOX
		dc.w $202               
						; "By the way, {LEADER},{N}what did you think of the{N}storm last night?{W2}"
		trap    #TEXTBOX
		dc.w $203               
						; "Did you feel something evil,{N}or anything?{W2}"
		trap    #TEXTBOX
		dc.w $204               
						; "No, nothing?!{N}Perhaps it was just my{N}imagination.  Sorry.{W1}"
		lea     cs_5148C(pc), a0
		trap    #6
		trap    #SET_FLAG
		dc.w $104
return_50ED0:
		
		rts

	; End of function sub_50E66


; =============== S U B R O U T I N E =======================================

sub_50ED2:
		
		trap    #CHECK_FLAG
		dc.w $25A               
						; set after Astral's second basement line
		beq.s   return_50EE8
		trap    #CHECK_FLAG
		dc.w $25B               
						; set after the messenger scene
		bne.s   return_50EE8
		lea     cs_5149A(pc), a0
		trap    #6
		trap    #SET_FLAG
		dc.w $25B               
						; set after the messenger scene
return_50EE8:
		
		rts

	; End of function sub_50ED2

