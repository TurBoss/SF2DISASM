
; ASM FILE data\maps\entries\map62\mapsetups\s3.asm :
; 0x5C820..0x5C86A : 
ms_map62_ZoneEvents:
		dc.b 5
		dc.b $F
		dc.w sub_5C834-ms_map62_ZoneEvents
		dc.b 6
		dc.b $F
		dc.w sub_5C834-ms_map62_ZoneEvents
		dc.b 5
		dc.b $10
		dc.w sub_5C84C-ms_map62_ZoneEvents
		dc.b 6
		dc.b $10
		dc.w sub_5C84C-ms_map62_ZoneEvents
		dc.w $FD00
		dc.w return_5C868-ms_map62_ZoneEvents

; =============== S U B R O U T I N E =======================================

sub_5C834:
		
		trap    #CHECK_FLAG
		dc.w $2D9
		bne.s   return_5C84A
		trap    #CHECK_FLAG
		dc.w $100
		bne.s   return_5C84A
		lea     cs_5C876(pc), a0
		trap    #6
		trap    #SET_FLAG
		dc.w $100               
						; .0118=apparently reset on map load, usually used to skip some lines of entities
return_5C84A:
		
		rts

	; End of function sub_5C834


; =============== S U B R O U T I N E =======================================

sub_5C84C:
		
		trap    #CHECK_FLAG
		dc.w $2D9
		bne.s   return_5C868
		trap    #CHECK_FLAG
		dc.w $100
		beq.s   return_5C868
		trap    #CHECK_FLAG
		dc.w $101
		bne.s   return_5C868
		lea     cs_5C8FE(pc), a0
		trap    #6
		trap    #SET_FLAG
		dc.w $101
return_5C868:
		
		rts

	; End of function sub_5C84C

