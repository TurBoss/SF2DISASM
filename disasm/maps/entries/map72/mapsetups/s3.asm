
; SCRIPT SECTION maps\entries\map72\mapsetups\s3 :
; 
ms_map72_Section3:  dc.b $20
										dc.b $FF
										dc.w sub_4FE8C-ms_map72_Section3
										dc.b $21
										dc.b $FF
										dc.w sub_4FE8C-ms_map72_Section3
										dc.b $22
										dc.b $FF
										dc.w sub_4FE8C-ms_map72_Section3
										dc.b $19
										dc.b $25
										dc.w sub_4FE98-ms_map72_Section3
										dc.b $1A
										dc.b $25
										dc.w sub_4FE98-ms_map72_Section3
										dc.b $1B
										dc.b $25
										dc.w sub_4FE98-ms_map72_Section3
										dc.b $1C
										dc.b $25
										dc.w sub_4FE98-ms_map72_Section3
										dc.b $1D
										dc.b $25
										dc.w sub_4FE98-ms_map72_Section3
										dc.b $1E
										dc.b $25
										dc.w sub_4FE98-ms_map72_Section3
										dc.w $FD00
										dc.w sub_4FF06-ms_map72_Section3

; =============== S U B R O U T I N E =======================================

sub_4FE8C:
										
										move.w  #$1A,d0
										jsr     sub_47856
										rts

	; End of function sub_4FE8C


; =============== S U B R O U T I N E =======================================

sub_4FE98:
										
										trap    #1
										dc.w $2EE
										bne.s   return_4FF04
										trap    #1
										dc.w $325
										beq.s   return_4FF04
										trap    #1
										dc.w $100
										bne.s   return_4FF04
										trap    #3
										dc.w $100
										moveq   #$72,d1 
										jsr     j_sub_9146
										cmpi.w  #$FFFF,d0
										beq.s   loc_4FEF4
										moveq   #$74,d1 
										jsr     j_sub_9146
										cmpi.w  #$FFFF,d0
										beq.s   loc_4FEE6
										moveq   #$72,d0 
										jsr     sub_4F542
										moveq   #$74,d0 
										jsr     sub_4F542
										lea     cs_4FFDA(pc), a0
										trap    #6
										trap    #2
										dc.w $2EE
										bra.s   loc_4FEF2
loc_4FEE6:
										
										move.w  #$74,((RAM_Dialogue_NameIdx1-$1000000)).w 
										lea     cs_5023E(pc), a0
										trap    #6
loc_4FEF2:
										
										bra.s   loc_4FF00
loc_4FEF4:
										
										move.w  #$74,((RAM_Dialogue_NameIdx1-$1000000)).w 
										lea     cs_5023E(pc), a0
										trap    #6
loc_4FF00:
										
										trap    #2
										dc.w $100
return_4FF04:
										
										rts

	; End of function sub_4FE98


; =============== S U B R O U T I N E =======================================

sub_4FF06:
										
										trap    #1
										dc.w $20B
										bne.s   loc_4FF18
										move.w  #8,d0
										jsr     sub_47856
										bra.s   return_4FF22
loc_4FF18:
										
										move.w  #$18,d0
										jsr     sub_47856
return_4FF22:
										
										rts

	; End of function sub_4FF06
