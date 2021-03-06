
; GAME SECTION 07 :
; 0x044000..0x064000 : Entity ActScripts, CutScene Scripts, Battle CutScenes, Intro cutscene, End cutscene, Map Setups
; FREE SPACE : 2931 bytes.


sub_44000:		
		jmp     sub_440D4(pc)
j_InitMapEntities:		
		jmp     InitMapEntities(pc)
j_MoveEntitiesToBattlePositions:		
		jmp     MoveEntitiesToBattlePositions(pc)
sub_4400C:		
		jmp     sub_45634(pc)
j_WaitForEntityToStopMoving:		
		jmp     WaitForEntityToStopMoving(pc)
j_SetControlledEntityActScript:		
		jmp     SetControlledEntityActScript(pc)
j_MakeEntityIdle:		
		jmp     MakeEntityIdle(pc)
; set entity D0's movescript to 0x460ce (default? don't move?)
sub_4401C:		
		jmp     sub_44C02(pc)   
j_SetEntityMovescriptToIdle:		
		jmp     SetEntityMovescriptToIdle(pc)
sub_44024:		
		jmp     sub_44B94(pc)
j_SetUnitCursorActscript:		
		jmp     SetUnitCursorActscript(pc)
sub_4402C:		
		jmp     sub_44BC0(pc)
sub_44030:		
		jmp     sub_44BD6(pc)
j_ExecuteDebugMapScript:		
		jmp     ExecuteDebugMapScript(pc)
j_nullsub_14:		
		jmp     nullsub_14(pc)
j_ExecuteMapScript:		
		jmp     ExecuteMapScript(pc)
j_ExecuteBattleCutscene_Intro:		
		jmp     j_ExecuteBattleCutscene_Intro_0(pc)
j_ExecuteBattleCutscene_Start:		
		jmp     ExecuteBattleCutscene_Start(pc)
j_ExecuteBattleCutscene_Defeated:		
		jmp     ExecuteBattleCutscene_Defeated(pc)
j_ExecuteAfterBattleCutscene:		
		jmp     ExecuteAfterBattleCutscene(pc)
j_ApplyPositionsAfterEnemyLeaderDies:		
		jmp     ApplyPositionsAfterEnemyLeaderDies(pc)
j_ExecuteBattleCutscene_Region:		
		jmp     ExecuteBattleCutscene_Region(pc)
j_LaunchFading:		
		jmp     LaunchFading(pc)
sub_4405C:		
		jmp     sub_45858(pc)
sub_44060:		
		jmp     sub_45858(pc)
sub_44064:		
		jmp     sub_45974(pc)
sub_44068:		
		jmp     sub_45BBE(pc)
sub_4406C:		
		jmp     sub_45C94(pc)
sub_44070:		
		jmp     sub_45C82(pc)
sub_44074:		
		jmp     sub_45B84(pc)
sub_44078:		
		jmp     sub_474EE(pc)
j_ExecuteEntityEvent:		
		jmp     ExecuteEntityEvent(pc)
j_RunMapSetupZoneEvent:		
		jmp     RunMapSetupZoneEvent(pc)
j_ExecuteEntityEvent_0:		
		jmp     ExecuteEntityEvent(pc)
; triggers a map setup function according to up to 4 criterias in d1-d4
sub_44088:		
		jmp     sub_47586(pc)
j_GetMapSetupEntities:		
		jmp     GetMapSetupEntityList(pc)
sub_44090:		
		jmp     sub_453C6(pc)
sub_44094:		
		jmp     sub_45440(pc)
; related to followers maybe
sub_44098:		
		jmp     sub_45268(pc)   
sub_4409C:		
		jmp     sub_45322(pc)
j_ShrinkInBowieAndFollowers:		
		jmp     ShrinkIntoCaravanBowieAndFollowers(pc)
j_GrowOutBowieAndFollowoers:		
		jmp     GrowOutBowieAndFollowoers(pc)
j_RunMapSetupInitFunction:		
		jmp     RunMapSetupInitFunction(pc)
sub_440AC:		
		jmp     sub_441AA(pc)
j_GetCharacterSpriteIdx:		
		jmp     GetCharacterSpriteIdx(pc)
j_RunMapSetupFunction:		
		jmp     RunMapSetupFunction(pc)
sub_440B8:		
		jmp     sub_444A2(pc)
j_PlayIntroOrEndCutscene:		
		jmp     PlayIntroOrEndCutscene(pc)
j_ExecuteFlashScreenScript:		
		jmp     ExecuteFlashScreenScript(pc)
j_GetEntityPortaitAndSpeechSound:		
		jmp     GetEntityPortraitAndSpeechSfx(pc)
j_ClearEntities:		
		jmp     ClearEntities(pc)
		include "code\common\scripting\map\mapfunctions.asm"		; Map functions
		include "code\common\scripting\map\followersfunctions.asm"		; Followers functions
		include "code\common\scripting\entity\entityfunctions_1.asm"		; Entity functions
		include "data\battles\global\battleneutralentities.asm"		; Battle entities which are not force members or enemies
		include "data\scripting\entity\eas_battleneutralentities.asm"		; Entity actscripts for battle entities which are not force members or enemies
		include "code\common\scripting\entity\entityfunctions_2.asm"		; Entity functions
		include "data\scripting\entity\eas_main.asm"		; Main entity actscripts
		include "code\common\scripting\entity\entityfunctions_3.asm"		; Entity functions
		include "code\common\scripting\map\vehiclefunctions.asm"		; Mapscripts and functions for Caravan and Raft
		include "code\common\scripting\entity\entityfunctions_4.asm"		; Entity functions
		include "data\scripting\entity\eas_actions.asm"		; Entity scripts for cutscene actions
		include "code\common\scripting\map\mapscriptengine_1.asm"		; Mapscript engine, part 1
		include "code\common\scripting\map\debugmapscripts.asm"		; Debug mapscript function
		include "code\common\scripting\map\nullsub_4712A.asm"		; Unused empty function
		include "code\common\scripting\map\mapscriptengine_2.asm"		; Mapscript engine, part 2
		include "code\common\scripting\map\mapsetupsfunctions_1.asm"		; Map setups functions
		include "code\common\scripting\map\resetalliesstats.asm"		; CSC 55 function
		include "code\common\scripting\text\headquartersquotes.asm"		; Headquarters quote function
		include "data\maps\entries\map37\mapsetups\s6_47948.asm"		; Map 37 init function
		include "data\maps\entries\map46\mapsetups\s6_47992.asm"		; Map 46 init function
		include "code\common\scripting\map\ms_empty.asm"		; Empty mapscript
		include "code\gameflow\battle\beforebattlecutscenesstart.asm"		; Before battle cutscenes function start
		include "data\battles\global\beforebattlecutscenes.asm"		; Before battle cutscenes
		include "code\gameflow\battle\beforebattlecutscenesend.asm"		; Before battle cutscenes function end
		include "code\gameflow\battle\battlestartcutscenesstart.asm"		; Battle start cutscenes function start
		include "data\battles\global\battlestartcutscenes.asm"		; Battle start cutscenes
		include "code\gameflow\battle\battlestartcutscenesend.asm"		; Battle start cutscenes function end
		include "code\gameflow\battle\battleendcutscenesstart.asm"		; Battle end cutscenes function start
		include "data\battles\global\battleendcutscenes.asm"		; Enemy defeated cutscenes
		include "code\gameflow\battle\battleendcutscenesend.asm"		; Battle end cutscenes function end
		include "code\gameflow\battle\afterbattlecutscenesstart.asm"		; After battle cutscenes function start
		include "data\battles\global\afterbattlecutscenes.asm"		; After battle cutscenes
		include "code\gameflow\battle\afterbattlecutscenesend.asm"		; After battle cutscenes function end
		include "data\battles\global\afterbattlejoins.asm"		; After battle joins (unused)
		include "code\gameflow\battle\afterenemyleaderdeathpositions.asm"		; After-battlescene listener used to prepare entity positions for end cutscene before the enemy leader dies. Only used in battle 5.
		include "code\gameflow\battle\regionactivatedcutscenes.asm"		; Region-activated cutscenes functions
		include "data\battles\global\regionactivatedcutscenes.asm"		; Region-activated cutscenes data
		include "code\common\tech\graphics\flashwhite.asm"		; Flash white function and script
		include "data\scripting\map\cs_introendroutine.asm"		; Subroutine launching intro and end cutscenes
		include "data\scripting\map\cs_intro1.asm"		; Intro cutscene 1
		include "data\scripting\map\cs_intro2.asm"		; Intro cutscene 2
		include "data\scripting\map\cs_intro3.asm"		; Intro cutscene 3
		include "data\scripting\map\cs_intro4.asm"		; Intro cutscene 4
		include "data\scripting\map\cs_intro_stormeffect.asm"		; Storm Effect
		include "data\scripting\map\cs_end.asm"		; End cutscene
		include data\battles\entries\battlecutscenesstorage.asm
		include "code\common\stats\items\itemfunctions_s7_0.asm"		; Unidentified item functions
		include "data\maps\global\mapsetups.asm"		; Map setups table
		include data\maps\global\mapsetupsstorage.asm
		align $4000
