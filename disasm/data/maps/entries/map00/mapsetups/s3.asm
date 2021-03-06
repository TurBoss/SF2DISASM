
; ASM FILE data\maps\entries\map00\mapsetups\s3.asm :
; 0x5E3A4..0x5E61E : 
ms_map0_ZoneEvents:
		dc.b $E
		dc.b $C
		dc.w sub_5E3B0-ms_map0_ZoneEvents
		dc.b $F
		dc.b $C
		dc.w sub_5E3B0-ms_map0_ZoneEvents
		dc.w $FD00
		dc.w return_5E3C0-ms_map0_ZoneEvents

; =============== S U B R O U T I N E =======================================

sub_5E3B0:
		
		trap    #CHECK_FLAG
		dc.w $321
		bne.s   return_5E3C0
		lea     cs_5E3C2(pc), a0
		trap    #6
		trap    #SET_FLAG
		dc.w $321               
						; set after Zalbard taunts you in the scene outside the Mitula Shrine
return_5E3C0:
		
		rts

	; End of function sub_5E3B0

cs_5E3C2:
		dc.w 4                  
						; 0004 INIT TEXT CURSOR AAB : "Welcome, Granseal force!{W1}"
		dc.w $AAB
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 460CE
		dc.b 7
		dc.b $FF
		dc.l eas_Init           
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F FF 460CE
		dc.b $1F
		dc.b $FF
		dc.l eas_Init           
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "Welcome, Granseal force!{W1}"
		dc.w $80
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F 0 45E44
		dc.b $1F
		dc.b 0
		dc.l eas_Jump           
		dc.w $15                
						; 0015 SET ACTSCRIPT 0 0 45E44
		dc.b 0
		dc.b 0
		dc.l eas_Jump           
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 45E44
		dc.b 7
		dc.b $FF
		dc.l eas_Jump           
		dc.w $23                
						; 0023 SET ENTITY FACING 7 3
		dc.b 7
		dc.b 3
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "What?{W1}"
		dc.w 7
		dc.b $80                
						; WAIT 5
		dc.b 5
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 0 461B6
		dc.b 7
		dc.b 0
		dc.l eas_461B6          
		dc.b $80                
						; WAIT 78
		dc.b $78
		dc.w $23                
						; 0023 SET ENTITY FACING 1F 1
		dc.b $1F
		dc.b 1
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 1F : "I heard a voice from the{N}other side of the door.{W1}"
		dc.w $1F
		dc.w $23                
						; 0023 SET ENTITY FACING 0 1
		dc.b 0
		dc.b 1
		dc.w $29                
						; 0029 SET ENTITY DEST 801F D C
		dc.w $801F
		dc.w $D
		dc.w $C
		dc.w $29                
						; 0029 SET ENTITY DEST 7 10 C
		dc.w 7
		dc.w $10
		dc.w $C
		dc.w $23                
						; 0023 SET ENTITY FACING 1F 1
		dc.b $1F
		dc.b 1
		dc.w $23                
						; 0023 SET ENTITY FACING 7 1
		dc.b 7
		dc.b 1
		dc.w $32                
						; 0032 SET CAMERA DEST 8 9
		dc.w 8
		dc.w 9
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "I'm Zalbard.  I'm one of{N}the greater devils.{W1}"
		dc.w $80
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F FF 46172
		dc.b $1F
		dc.b $FF
		dc.l eas_46172          
		dc.w $15                
						; 0015 SET ACTSCRIPT 0 FF 46172
		dc.b 0
		dc.b $FF
		dc.l eas_46172          
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 46172
		dc.b 7
		dc.b $FF
		dc.l eas_46172          
		dc.w $2D                
						; 002D MOVE ENTITY 1F 0 3 2
		dc.b $1F
		dc.b 0
		dc.b 3
		dc.b 2
		dc.w $8080
		dc.w $2D                
						; 002D MOVE ENTITY 0 0 3 1
		dc.b 0
		dc.b 0
		dc.b 3
		dc.b 1
		dc.w $8080
		dc.w $2D                
						; 002D MOVE ENTITY 7 FF 3 2
		dc.b 7
		dc.b $FF
		dc.b 3
		dc.b 2
		dc.w $8080
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "Do come in.  Of course, you{N}can go back now and abandon{N}Mitula!{W1}"
		dc.w $80
		dc.w $23                
						; 0023 SET ENTITY FACING 7 2
		dc.b 7
		dc.b 2
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 7 : "Sir Astral...{W2}"
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "The greater devil that{N}attacked Bedoe was as{N}strong as Volcanon.{W1}"
		dc.w 7
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 80 : "Are you talking about{N}Sir Odd Eye?{W2}"
		dc.w $80
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "Did he fight against{N}Volcanon at Bedoe?{W1}"
		dc.w $80
		dc.w $23                
						; 0023 SET ENTITY FACING 7 1
		dc.b 7
		dc.b 1
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 1F : "Yes.  And he lost.{W1}"
		dc.w $1F
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 80 : "I can't believe it!{N}Odd Eye is the strongest{N}devil among us.{W2}"
		dc.w $80
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 80 : "But, we haven't been able to{N}contact him lately.{W2}"
		dc.w $80
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 80 : "This is good news for me.{N}If I get the Jewel of Evil, I{N}can take his place.{W2}"
		dc.w $80
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "Now, enter the shrine.{N}Mitula is here.{W1}"
		dc.w $80
		dc.b $80                
						; WAIT 3C
		dc.b $3C
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "What should we do?{N}A greater devil awaits us{N}inside.{W1}"
		dc.w 7
		dc.w $23                
						; 0023 SET ENTITY FACING 7 2
		dc.b 7
		dc.b 2
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F FF 460CE
		dc.b $1F
		dc.b $FF
		dc.l eas_Init           
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 460CE
		dc.b 7
		dc.b $FF
		dc.l eas_Init           
		dc.w $14                
						; 0014 SET MANUAL ACTSCRIPT 1F
		dc.b $1F
		dc.b $FF
		dc.w $10                
						;   0010 SET SPEED X=$8 Y=$8
		dc.b 8
		dc.b 8
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF MANUAL ACTSCRIPT
		dc.w $2D                
						; 002D MOVE ENTITY 1F FF 2 2
		dc.b $1F
		dc.b $FF
		dc.b 2
		dc.b 2
		dc.w $8080
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 1F : "Odd Eye...Odd Eye...{N}Odd...Eye....{W1}"
		dc.w $1F
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "Sir Astral?{W1}"
		dc.w 7
		dc.w $2D                
						; 002D MOVE ENTITY 1F FF 0 2
		dc.b $1F
		dc.b $FF
		dc.b 0
		dc.b 2
		dc.w $8080
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 1F : "I think I've heard that{N}name before....{W1}"
		dc.w $1F
		dc.w $2D                
						; 002D MOVE ENTITY 7 FF 3 1
		dc.b 7
		dc.b $FF
		dc.b 3
		dc.b 1
		dc.b 2
		dc.b 3
		dc.w $8080
		dc.w $23                
						; 0023 SET ENTITY FACING 0 3
		dc.b 0
		dc.b 3
		dc.w $23                
						; 0023 SET ENTITY FACING 7 1
		dc.b 7
		dc.b 1
		dc.w $32                
						; 0032 SET CAMERA DEST 9 C
		dc.w 9
		dc.w $C
		dc.w $23                
						; 0023 SET ENTITY FACING 1F 3
		dc.b $1F
		dc.b 3
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F FF 46172
		dc.b $1F
		dc.b $FF
		dc.l eas_46172          
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 46172
		dc.b 7
		dc.b $FF
		dc.l eas_46172          
		dc.w $14                
						; 0014 SET MANUAL ACTSCRIPT 7
		dc.b 7
		dc.b $FF
		dc.w $10                
						;   0010 SET SPEED X=$8 Y=$8
		dc.b 8
		dc.b 8
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF MANUAL ACTSCRIPT
		dc.w $2D                
						; 002D MOVE ENTITY 1F 0 3 2
		dc.b $1F
		dc.b 0
		dc.b 3
		dc.b 2
		dc.w $8080
		dc.b $80                
						; WAIT 10
		dc.b $10
		dc.w $2D                
						; 002D MOVE ENTITY 7 0 3 2
		dc.b 7
		dc.b 0
		dc.b 3
		dc.b 2
		dc.w $8080
		dc.w $16                
						; 0016 WAIT UNTIL IDLE ENTITY 1F
		dc.w $1F
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 461AA
		dc.b 7
		dc.b $FF
		dc.l eas_461AA          
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "Sir Astral?{W1}"
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 1F : "Hmmmm....{W1}"
		dc.w $1F
		dc.w $2D                
						; 002D MOVE ENTITY 1F 0 3 2
		dc.b $1F
		dc.b 0
		dc.b 3
		dc.b 2
		dc.w $8080
		dc.w $2D                
						; 002D MOVE ENTITY 7 0 3 2
		dc.b 7
		dc.b 0
		dc.b 3
		dc.b 2
		dc.w $8080
		dc.w $16                
						; 0016 WAIT UNTIL IDLE ENTITY 1F
		dc.w $1F
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 461AA
		dc.b 7
		dc.b $FF
		dc.l eas_461AA          
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "Sir Astral!!!{W1}"
		dc.w 7
		dc.w $14                
						; 0014 SET MANUAL ACTSCRIPT 1F
		dc.b $1F
		dc.b $FF
		dc.w $10                
						;   0010 SET SPEED X=$30 Y=$30
		dc.b $30
		dc.b $30
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF MANUAL ACTSCRIPT
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F FF 45E44
		dc.b $1F
		dc.b $FF
		dc.l eas_Jump           
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F FF 46172
		dc.b $1F
		dc.b $FF
		dc.l eas_46172          
		dc.w $2D                
						; 002D MOVE ENTITY 1F FF 1 4
		dc.b $1F
		dc.b $FF
		dc.b 1
		dc.b 4
		dc.w $8080
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 1F : "Whhhhhhat?{N}{NAME;7}, don't scare me!{W1}"
		dc.w $1F
		dc.w $2A                
						; 002A MAKE ENTITY SHIVER 1F
		dc.w $1F
		dc.w $14                
						; 0014 SET MANUAL ACTSCRIPT 7
		dc.b 7
		dc.b $FF
		dc.w $10                
						;   0010 SET SPEED X=$20 Y=$20
		dc.b $20
		dc.b $20
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF MANUAL ACTSCRIPT
		dc.w $32                
						; 0032 SET CAMERA DEST 9 B
		dc.w 9
		dc.w $B
		dc.w $2D                
						; 002D MOVE ENTITY 7 FF 1 3
		dc.b 7
		dc.b $FF
		dc.b 1
		dc.b 3
		dc.w $8080
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 7 : "What's wrong with you?{W2}"
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "Should we go into the shrine{N}now?{W1}"
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 1F : "Oh, sorry.{W1}"
		dc.w $1F
		dc.w $14                
						; 0014 SET MANUAL ACTSCRIPT 1F
		dc.b $1F
		dc.b $FF
		dc.w $10                
						;   0010 SET SPEED X=$20 Y=$20
		dc.b $20
		dc.b $20
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF MANUAL ACTSCRIPT
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F FF 460CE
		dc.b $1F
		dc.b $FF
		dc.l eas_Init           
		dc.w $2D                
						; 002D MOVE ENTITY 1F FF 0 1
		dc.b $1F
		dc.b $FF
		dc.b 0
		dc.b 1
		dc.w $8080
		dc.w $23                
						; 0023 SET ENTITY FACING 1F 1
		dc.b $1F
		dc.b 1
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 1F : "Zalbard...at least he's not{N}as strong as Odd Eye.{W2}"
		dc.w $1F
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 1F : "But still, he's a greater{N}devil.{W2}"
		dc.w $1F
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 1F : "We had better complete our{N}preparations before we go in.{W1}"
		dc.w $1F
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 0 : "OK.{W1}"
		dc.w 0
		dc.w $26                
						; 0026 MAKE ENTITY NOD 7
		dc.w 7
		dc.w $15                
						; 0015 SET ACTSCRIPT 0 FF 460CE
		dc.b 0
		dc.b $FF
		dc.l eas_Init           
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 460CE
		dc.b 7
		dc.b $FF
		dc.l eas_Init           
		dc.w $2C                
						; 002C FOLLOW ENTITY 1F 0 2
		dc.w $1F
		dc.w 0
		dc.w 2
		dc.w $2C                
						; 002C FOLLOW ENTITY 7 1F 2
		dc.w 7
		dc.w $1F
		dc.w 2
		dc.w $34                
						; 0034 SET BLOCKS 26 203 E0A
		dc.w $26
		dc.w $203
		dc.w $E0A
		dc.w $10                
						; 0010 SET FLAG 348 FFFF : set after the door to the Mitula Shrine is opened
		dc.w $348
		dc.w $FFFF
		dc.w $FFFF              
						; END OF CUTSCENE SCRIPT
