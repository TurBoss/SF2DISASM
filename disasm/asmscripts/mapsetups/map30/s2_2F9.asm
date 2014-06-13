
; SCRIPT SECTION mapsetups\map30\s2_2F9 :
; 
ms_map30_flag2F9_EntityEvents:
										dc.b $80
										dc.b 1
										dc.w sub_5A224-ms_map30_flag2F9_EntityEvents
										dc.b $81
										dc.b 3
										dc.w sub_5A236-ms_map30_flag2F9_EntityEvents
										dc.b $82
										dc.b 0
										dc.w sub_5A240-ms_map30_flag2F9_EntityEvents
										dc.b $83
										dc.b 3
										dc.w sub_5A25C-ms_map30_flag2F9_EntityEvents
										dc.b $84
										dc.b 3
										dc.w sub_5A272-ms_map30_flag2F9_EntityEvents
										dc.w $FD00
										dc.w return_5A276-ms_map30_flag2F9_EntityEvents

; =============== S U B R O U T I N E =======================================

sub_5A224:
										
										trap    #1
										dc.w $2F8
										bne.s   loc_5A230
										trap    #5
										dc.w $6A9
										bra.s   return_5A234
loc_5A230:
										
										bsr.w   sub_5A278
return_5A234:
										
										rts

	; End of function sub_5A224


; =============== S U B R O U T I N E =======================================

sub_5A236:
										
										trap    #5
										dc.w $6AA
										trap    #2
										dc.w $2F7
										rts

	; End of function sub_5A236


; =============== S U B R O U T I N E =======================================

sub_5A240:
										
										lea     cs_5A256(pc), a0
										trap    #6
										trap    #5
										dc.w $6AB
										lea     cs_5A256(pc), a0
										trap    #6
										trap    #2
										dc.w $2F7
										rts

	; End of function sub_5A240

cs_5A256:           dc.w $2A                ; 002A MAKE ENTITY SHIVER 82
										dc.w $82
										dc.w $FFFF              ; END OF CUTSCENE SCRIPT

; =============== S U B R O U T I N E =======================================

sub_5A25C:
										
										trap    #1
										dc.w $2F9
										bne.s   loc_5A26C
										trap    #5
										dc.w $6AC
										trap    #2
										dc.w $2F7
										bra.s   return_5A270
loc_5A26C:
										
										trap    #5
										dc.w $6AE
return_5A270:
										
										rts

	; End of function sub_5A25C


; =============== S U B R O U T I N E =======================================

sub_5A272:
										
										trap    #5
										dc.w $6AD
return_5A276:
										
										rts

	; End of function sub_5A272


; =============== S U B R O U T I N E =======================================

sub_5A278:
										
										trap    #5
										dc.w $6BE
										trap    #5
										dc.w $6BF
										moveq   #0,d0
										moveq   #0,d1
										jsr     j_GetItemAndNumberOfItems
										cmp.w   #4,d2
										bne.s   loc_5A296
										trap    #5
										dc.w $6C1
										bra.s   return_5A2C0
loc_5A296:
										
										moveq   #0,d0
										moveq   #$72,d1 
										jsr     j_AddItem
										trap    #0
										dc.w $1B
										trap    #5
										dc.w $6C0
										moveq   #$64,d0 
										jsr     (Sleep).w       
										trap    #5
										dc.w $FFFF
										trap    #2
										dc.w $2F9
										trap    #0
										dc.w $FB
										lea     cs_5A4FE(pc), a0
										trap    #6
return_5A2C0:
										
										rts

	; End of function sub_5A278
