
; ASM FILE data\battles\entries\battle03\cs_beforebattle.asm :
; 0x4980E..0x4981E : Cutscene before battle 3
bbcs_03:
		dc.w $A                 
						; 000A EXECUTE SUBROUTINE 49816
		dc.l sub_49816
		dc.w $FFFF              
						; END OF CUTSCENE SCRIPT

; =============== S U B R O U T I N E =======================================

sub_49816:
		
		move.b  #5,((EGRESS_MAP_INDEX-$1000000)).w
		rts

	; End of function sub_49816

