
; ASM FILE data\maps\entries\map15\mapsetups\s6.asm :
; 0x5D04C..0x5D1CA : 

; =============== S U B R O U T I N E =======================================

ms_map15_InitFunction:
		
		rts

	; End of function ms_map15_InitFunction

cs_5D04E:
		dc.w 4                  
						; 0004 INIT TEXT CURSOR 7D6 : "Excuse me, are you{N}{LEADER} of Granseal?{W1}"
		dc.w $7D6
		dc.w $23                
						; 0023 SET ENTITY FACING 0 0
		dc.b 0
		dc.b 0
		dc.w $29                
						; 0029 SET ENTITY DEST 7 18 11
		dc.w 7
		dc.w $18
		dc.w $11
		dc.w $23                
						; 0023 SET ENTITY FACING 7 0
		dc.b 7
		dc.b 0
		dc.w $19                
						; 0019 SET ENTITY POS AND FACING 14 1F 21 1
		dc.b $14
		dc.b $1F
		dc.b $21
		dc.b 1
		dc.b $80                
						; WAIT 1
		dc.b 1
		dc.w $32                
						; 0032 SET CAMERA DEST 1A 16
		dc.w $1A
		dc.w $16
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
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F FF 460CE
		dc.b $1F
		dc.b $FF
		dc.l eas_Init           
		dc.w $19                
						; 0019 SET ENTITY POS AND FACING 7 18 11 0
		dc.b 7
		dc.b $18
		dc.b $11
		dc.b 0
		dc.w $19                
						; 0019 SET ENTITY POS AND FACING 1F 18 10 0
		dc.b $1F
		dc.b $18
		dc.b $10
		dc.b 0
		dc.w $19                
						; 0019 SET ENTITY POS AND FACING 0 18 12 0
		dc.b 0
		dc.b $18
		dc.b $12
		dc.b 0
		dc.w $2F                
						; 002F  14 FFFF
		dc.w $14
		dc.w $FFFF
		dc.w $2D                
						; 002D MOVE ENTITY 14 0 1 8
		dc.b $14
		dc.b 0
		dc.b 1
		dc.b 8
		dc.w $8080
		dc.b $80                
						; WAIT 3C
		dc.b $3C
		dc.w $32                
						; 0032 SET CAMERA DEST 1A 14
		dc.w $1A
		dc.w $14
		dc.w $2D                
						; 002D MOVE ENTITY 14 0 2 3
		dc.b $14
		dc.b 0
		dc.b 2
		dc.b 3
		dc.w $8080
		dc.w $32                
						; 0032 SET CAMERA DEST 14 14
		dc.w $14
		dc.w $14
		dc.w $2D                
						; 002D MOVE ENTITY 14 0 1 A
		dc.b $14
		dc.b 0
		dc.b 1
		dc.b $A
		dc.w $8080
		dc.w $32                
						; 0032 SET CAMERA DEST 14 A
		dc.w $14
		dc.w $A
		dc.w $2D                
						; 002D MOVE ENTITY 14 0 0 4
		dc.b $14
		dc.b 0
		dc.b 0
		dc.b 4
		dc.w $8080
		dc.w $32                
						; 0032 SET CAMERA DEST 1B A
		dc.w $1B
		dc.w $A
		dc.w $2D                
						; 002D MOVE ENTITY 14 0 3 5
		dc.b $14
		dc.b 0
		dc.b 3
		dc.b 5
		dc.w $8080
		dc.w $32                
						; 0032 SET CAMERA DEST 1B F
		dc.w $1B
		dc.w $F
		dc.w $2D                
						; 002D MOVE ENTITY 14 0 2 13
		dc.b $14
		dc.b 0
		dc.b 2
		dc.b $13
		dc.w $8080
		dc.w $32                
						; 0032 SET CAMERA DEST 9 F
		dc.w 9
		dc.w $F
		dc.w $2D                
						; 002D MOVE ENTITY 14 0 1 A
		dc.b $14
		dc.b 0
		dc.b 1
		dc.b $A
		dc.w $8080
		dc.w $32                
						; 0032 SET CAMERA DEST 9 5
		dc.w 9
		dc.w 5
		dc.w $2D                
						; 002D MOVE ENTITY 14 0 0 D
		dc.b $14
		dc.b 0
		dc.b 0
		dc.b $D
		dc.w $8080
		dc.w $32                
						; 0032 SET CAMERA DEST 14 5
		dc.w $14
		dc.w 5
		dc.w $2D                
						; 002D MOVE ENTITY 14 0 3 7
		dc.b $14
		dc.b 0
		dc.b 3
		dc.b 7
		dc.w $8080
		dc.w $32                
						; 0032 SET CAMERA DEST 14 C
		dc.w $14
		dc.w $C
		dc.b $80                
						; WAIT 3C
		dc.b $3C
		dc.w $29                
						; 0029 SET ENTITY DEST 14 1A 12
		dc.w $14
		dc.w $1A
		dc.w $12
		dc.w $23                
						; 0023 SET ENTITY FACING 14 2
		dc.b $14
		dc.b 2
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 8014 : "Excuse me, are you{N}{LEADER} of Granseal?{W1}"
		dc.w $8014
		dc.w $2D                
						; 002D MOVE ENTITY 7 FF 0 2
		dc.b 7
		dc.b $FF
		dc.b 0
		dc.b 2
		dc.w $8080
		dc.w $23                
						; 0023 SET ENTITY FACING 7 3
		dc.b 7
		dc.b 3
		dc.w $23                
						; 0023 SET ENTITY FACING 14 1
		dc.b $14
		dc.b 1
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "Yes, he's {LEADER},{N}but who are you?{W1}"
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 8014 : "I'm {NAME;20} of Bedoe.{W1}"
		dc.w $8014
		dc.w $2A                
						; 002A MAKE ENTITY SHIVER 7
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "Bedoe?{W1}"
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 8014 : "{LEADER} saved my life{N}there.{W1}"
		dc.w $8014
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 45E44
		dc.b 7
		dc.b $FF
		dc.l eas_Jump           
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 45E44
		dc.b 7
		dc.b $FF
		dc.l eas_Jump           
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 7 : "{LEADER} saved...{W2}"
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "Oh, yes!  I remember!{W1}"
		dc.w 7
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 8014 : "You remember me?{W2}"
		dc.w $8014
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 8014 : "Let me thank you.{N}May I go with you?{W1}"
		dc.w $8014
		dc.w $2D                
						; 002D MOVE ENTITY 7 FF 2 1
		dc.b 7
		dc.b $FF
		dc.b 2
		dc.b 1
		dc.b 3
		dc.b 1
		dc.b 8
		dc.b $28
		dc.w $8080
		dc.w $2D                
						; 002D MOVE ENTITY 7 FF 1 1
		dc.b 7
		dc.b $FF
		dc.b 1
		dc.b 1
		dc.b 0
		dc.b 1
		dc.b $B
		dc.b $28
		dc.w $8080
		dc.w $2D                
						; 002D MOVE ENTITY 7 FF 2 1
		dc.b 7
		dc.b $FF
		dc.b 2
		dc.b 1
		dc.b 3
		dc.b 1
		dc.b 8
		dc.b $28
		dc.w $8080
		dc.w $23                
						; 0023 SET ENTITY FACING 14 2
		dc.b $14
		dc.b 2
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 7 : "You grew up quickly, huh?{W1}"
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 8014 : "Yeah, I learned how to fight.{W1}"
		dc.w $8014
		dc.w 8                  
						; 0008 JOIN FORCE 14
		dc.w $14
		dc.w $2C                
						; 002C FOLLOW ENTITY 7 0 2
		dc.w 7
		dc.w 0
		dc.w 2
		dc.w $2C                
						; 002C FOLLOW ENTITY 1F 7 2
		dc.w $1F
		dc.w 7
		dc.w 2
		dc.w $2C                
						; 002C FOLLOW ENTITY 14 0 5
		dc.w $14
		dc.w 0
		dc.w 5
		dc.w $2F                
						; 002F  14 0
		dc.w $14
		dc.w 0
		dc.w $FFFF              
						; END OF CUTSCENE SCRIPT
