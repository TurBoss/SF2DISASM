
; ASM FILE data\battles\entries\battle34\cs_beforebattle.asm :
; 0x4D342..0x4D4B6 : Cutscene before battle 34
bbcs_34:
		dc.w 4                  
						; 0004 INIT TEXT CURSOR B4F : "Hello, Granseal soldiers.{W1}"
		dc.w $B4F
		dc.w $37                
						; 0037 LOAD MAP AND FADE IN 37 15 16
		dc.w $37
		dc.w $15
		dc.w $16
		dc.w $42                
						; 0042 RELATED TO LOADING MAP ENTITIES 4D48E
		dc.l word_4D48E
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
		dc.w $19                
						; 0019 SET ENTITY POS AND FACING 7 1E 1C 2
		dc.b 7
		dc.b $1E
		dc.b $1C
		dc.b 2
		dc.w $15                
						; 0015 SET ACTSCRIPT 1F FF 460CE
		dc.b $1F
		dc.b $FF
		dc.l eas_Init           
		dc.w $19                
						; 0019 SET ENTITY POS AND FACING 1F 1E 1E 2
		dc.b $1F
		dc.b $1E
		dc.b $1E
		dc.b 2
		dc.w $D                 
						; 000D JUMP IF CLEAR FLAG 4C 4D38E : Zynk is a follower
		dc.w $4C
		dc.l word_4D38E         
		dc.w $15                
						; 0015 SET ACTSCRIPT 1A FF 460CE
		dc.b $1A
		dc.b $FF
		dc.l eas_Init           
		dc.w $19                
						; 0019 SET ENTITY POS AND FACING 1A 1F 1D 2
		dc.b $1A
		dc.b $1F
		dc.b $1D
		dc.b 2
word_4D38E:
		dc.w $22                
						; 0022 ANIMATE ENTITY FADE INOUT 81
		dc.w $81
		dc.w 6
		dc.w 5                  
						; 0005 PLAY SOUND MUSIC_BATTLE_THEME_1
		dc.w $22
		dc.w $39                
						; 0039 FADE IN FROM BLACK
		dc.w $45                
						; 0045 RELATED TO CAMERA ADJUST TO PLAYER 30
		dc.w $30
		dc.w $2D                
						; 002D MOVE ENTITY 0 0 2 3
		dc.b 0
		dc.b 0
		dc.b 2
		dc.b 3
		dc.w $8080
		dc.w $2D                
						; 002D MOVE ENTITY 7 0 2 3
		dc.b 7
		dc.b 0
		dc.b 2
		dc.b 3
		dc.w $8080
		dc.w $2D                
						; 002D MOVE ENTITY 82 0 2 3
		dc.b $82
		dc.b 0
		dc.b 2
		dc.b 3
		dc.w $8080
		dc.w $D                 
						; 000D JUMP IF CLEAR FLAG 4C 4D3C6 : Zynk is a follower
		dc.w $4C
		dc.l word_4D3C6         
		dc.w $2D                
						; 002D MOVE ENTITY 1A 0 2 3
		dc.b $1A
		dc.b 0
		dc.b 2
		dc.b 3
		dc.w $8080
word_4D3C6:
		dc.w $2D                
						; 002D MOVE ENTITY 1F FF 2 3
		dc.b $1F
		dc.b $FF
		dc.b 2
		dc.b 3
		dc.w $8080
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "Hello, Granseal soldiers.{W1}"
		dc.w $80
		dc.w $15                
						; 0015 SET ACTSCRIPT 7 FF 45E44
		dc.b 7
		dc.b $FF
		dc.l eas_Jump           
		dc.w $32                
						; 0032 SET CAMERA DEST 7 5
		dc.w 7
		dc.w 5
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 80 : "Remember?  I promised that I{N}would see you again.{W2}"
		dc.w $80
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "Come on.  Let's party!{W1}"
		dc.w $80
		dc.w $32                
						; 0032 SET CAMERA DEST 7 4
		dc.w 7
		dc.w 4
		dc.w $22                
						; 0022 ANIMATE ENTITY FADE INOUT 81
		dc.w $81
		dc.w 7
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX C081 : "Stop!  You need my war plan!{W1}"
		dc.w $C081
		dc.w $23                
						; 0023 SET ENTITY FACING 80 1
		dc.b $80
		dc.b 1
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "You again, Geshp?  Why don't{N}you leave me alone?{W1}"
		dc.w $80
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX C081 : "Zeon left me in charge.{W2}"
		dc.w $C081
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX C081 : "It doesn't matter if you are{N}killed or not.{W1}"
		dc.w $C081
		dc.w $2D                
						; 002D MOVE ENTITY 80 FF 1 1
		dc.b $80
		dc.b $FF
		dc.b 1
		dc.b 1
		dc.w $8080
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 80 : "Then kill me, if you've{N}got the guts to do it!{W2}"
		dc.w $80
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "I know.  You want me to be{N}die!{W1}"
		dc.w $80
		dc.w $14                
						; 0014 SET MANUAL ACTSCRIPT 80
		dc.b $80
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
		dc.w $2D                
						; 002D MOVE ENTITY 80 0 1 4
		dc.b $80
		dc.b 0
		dc.b 1
		dc.b 4
		dc.w $8080
		dc.b $80                
						; WAIT A
		dc.b $A
		dc.w $22                
						; 0022 ANIMATE ENTITY FADE INOUT 81
		dc.w $81
		dc.w 6
		dc.w $16                
						; 0016 WAIT UNTIL IDLE ENTITY 80
		dc.w $80
		dc.w $23                
						; 0023 SET ENTITY FACING 80 3
		dc.b $80
		dc.b 3
		dc.b $80                
						; WAIT 1E
		dc.b $1E
		dc.b $80                
						; WAIT 5
		dc.b 5
		dc.w $15                
						; 0015 SET ACTSCRIPT 80 0 461B6
		dc.b $80
		dc.b 0
		dc.l eas_461B6          
		dc.b $80                
						; WAIT 78
		dc.b $78
		dc.w $23                
						; 0023 SET ENTITY FACING 80 3
		dc.b $80
		dc.b 3
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "Geshp, you coward!{N}I'll kill you first!{W1}"
		dc.w $80
		dc.w $3D                
						; 003D TINT MAP
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX C081 : "I have no time to waste.{N}I must go.{W2}"
		dc.w $C081
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX C081 : "Silly Cameela.{N}You can't survive without my{N}brains.{W1}"
		dc.w $C081
		dc.w $3E                
						; 003E FLICKER ONCE
		dc.w $32                
						; 0032 SET CAMERA DEST 7 3
		dc.w 7
		dc.w 3
		dc.b $80                
						; WAIT 3C
		dc.b $3C
		dc.w $15                
						; 0015 SET ACTSCRIPT 80 FF 45E44
		dc.b $80
		dc.b $FF
		dc.l eas_Jump           
		dc.w $23                
						; 0023 SET ENTITY FACING 80 0
		dc.b $80
		dc.b 0
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 80 : "{LEADER}, did you hear that?{N}He said you would win!{W2}"
		dc.w $80
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 80 : "He must be a bad{N}fortuneteller.{W1}"
		dc.w $80
		dc.w $32                
						; 0032 SET CAMERA DEST 15 16
		dc.w $15
		dc.w $16
		dc.w 2                  
						; 0002 DISPLAY TEXT BOX 1F : "We can get a ship and return{N}to Grans if we defeat her.{W2}"
		dc.w $1F
		dc.w 0                  
						; 0000 DISPLAY SINGLE TEXTBOX 1F : "{LEADER}, get her!{W1}"
		dc.w $1F
		dc.w $FFFF              
						; END OF CUTSCENE SCRIPT
word_4D48E:
		dc.w $1D
		dc.w $1D
		dc.w 2
		dc.b $1E
		dc.b $1C
		dc.b 2
		dc.b 7
		dc.l eas_Init           
		dc.b $B
		dc.b $A
		dc.b 3
		dc.b $9C
		dc.l eas_Init           
		dc.b $B
		dc.b 6
		dc.b 3
		dc.b $9F
		dc.l eas_Init           
		dc.b $1E
		dc.b $1D
		dc.b 2
		dc.b $3E
		dc.l eas_Init           
		dc.w $FFFF
