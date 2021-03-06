print( "Loading TemplateSDK.lua" )
print( "------------------------------------" )

function MisKillMonster( Talk, Param, Prize )

	DefineMission( Param.CurMissionID, Param.MissionName, Param.CurMissionID )

	MisBeginTalk( Talk.Begin )
	MisBeginCondition( NoMission, Param.CurMissionID )
	MisBeginCondition( NoRecord, Param.CurMissionID )

	if Param.NeedRecord ~= nil then
	   MisBeginCondition( HasRecord, Param.NeedRecord )
	end

	MisBeginCondition( LvCheck, ">", Param.MissionMinLv )
	MisBeginCondition( LvCheck, "<", Param.MissionMaxLv )

	MisBeginAction( AddMission, Param.CurMissionID )

	MisBeginAction( AddTrigger, Param.CurTriggerID1, TE_KILL, Param.Kill_Number1, Param.CurMonsterID1 )
	MisNeed( MIS_NEED_KILL, Param.CurMonsterID1, Param.Kill_Number1 )

	if Param.CurMonsterID2 ~= nil and Param.CurTriggerID2 ~= nil and Param.Kill_Number2 ~= nil then
	   MisBeginAction( AddTrigger, Param.CurTriggerID2, TE_KILL, Param.Kill_Number2, Param.CurMonsterID2 )
	   MisNeed( MIS_NEED_KILL, Param.CurMonsterID2, Param.Kill_Number2 )
	end
	if Param.CurMonsterID3 ~= nil and Param.CurTriggerID3 ~= nil and Param.Kill_Number3 ~= nil then
	   MisBeginAction( AddTrigger, Param.CurTriggerID3, TE_KILL, Param.Kill_Number3, Param.CurMonsterID3 )
	   MisNeed( MIS_NEED_KILL, Param.CurMonsterID3, Param.Kill_Number3 )
	end
	if Param.CurMonsterID4 ~= nil and Param.CurTriggerID4 ~= nil and Param.Kill_Number4 ~= nil then
	   MisBeginAction( AddTrigger, Param.CurTriggerID4, TE_KILL, Param.Kill_Number4, Param.CurMonsterID4 )
	   MisNeed( MIS_NEED_KILL, Param.CurMonsterID4, Param.Kill_Number4 )
	end

	if Prize.Mode == nil then
	   MisPrizeSelOne()
	else
	   MisPrizeSelAll()
	end

	if Prize.Select1 ~= nil and Prize.ID1 ~= nil and Prize.Num1 ~= nil then
	   MisPrize( Prize.Select1, Prize.ID1, Prize.Num1 )
	end
	if Prize.Select2 ~= nil and Prize.ID2 ~= nil and Prize.Num2 ~= nil then
	   MisPrize( Prize.Select2, Prize.ID2, Prize.Num2 )
	end
	if Prize.Select3 ~= nil and Prize.ID3 ~= nil and Prize.Num3 ~= nil then
	   MisPrize( Prize.Select3, Prize.ID3, Prize.Num3 )
	end
	if Prize.Select4 ~= nil and Prize.ID4 ~= nil and Prize.Num4 ~= nil then
	   MisPrize( Prize.Select4, Prize.ID4, Prize.Num4 )
	end
	if Prize.Select5 ~= nil and Prize.ID5 ~= nil and Prize.Num5 ~= nil then
	   MisPrize( Prize.Select5, Prize.ID5, Prize.Num5 )
	end
	if Prize.Select6 ~= nil and Prize.ID6 ~= nil and Prize.Num6 ~= nil then
	   MisPrize( Prize.Select6, Prize.ID6, Prize.Num6 )
	end
	if Prize.Select7 ~= nil and Prize.ID7 ~= nil and Prize.Num7 ~= nil then
	   MisPrize( Prize.Select7, Prize.ID7, Prize.Num7 )
	end
	if Prize.Select8 ~= nil and Prize.ID8 ~= nil and Prize.Num8 ~= nil then
	   MisPrize( Prize.Select8, Prize.ID8, Prize.Num8 )
	end

	MisResultTalk( Talk.Result )
	MisHelpTalk( Talk.Help )

	MisResultCondition( HasMission, Param.CurMissionID )
	MisResultCondition( NoRecord, Param.CurMissionID )
	if Param.NeedRecord ~= nil then
	   MisResultCondition( HasRecord, Param.NeedRecord )
	end
	MisResultCondition( HasFlag, Param.CurMissionID, 79 + Param.Kill_Number1 )
	if Param.CurMonsterID2 ~= nil and Param.CurTriggerID2 ~= nil and Param.Kill_Number2 ~= nil then
	   MisResultCondition( HasFlag, Param.CurMissionID, 99 + Param.Kill_Number2 )
	end

	MisResultAction( AddExp, Param.MaxAddExp, Param.MinAddExp )
	MisResultAction( ClearMission, Param.CurMissionID )
	if Param.SetMisRecord ~= nil then
	   MisResultAction( SetRecord, Param.CurMissionID )
	end

	InitTrigger()
	TriggerCondition( 1, IsMonster, Param.CurMonsterID1 )
	TriggerAction( 1, AddNextFlag, Param.CurMissionID, 80, Param.Kill_Number1 )
	RegCurTrigger( Param.CurTriggerID1 )

	if Param.CurMonsterID2 ~= nil and Param.CurTriggerID2 ~= nil and Param.Kill_Number2 ~= nil then
	   InitTrigger()
	   TriggerCondition( 1, IsMonster, Param.CurMonsterID2 )
	   TriggerAction( 1, AddNextFlag, Param.CurMissionID, 100, Param.Kill_Number2 )
	   RegCurTrigger( Param.CurTriggerID2 )
	end

end


function DefSendItemMission( id, name, misid, npcid, areaid, sid )
	DefineMission( id, name, misid, COMPLETE_SHOW )
	
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("????????????????????????")
	
	MisResultCondition( HasRandMissionNpc, misid, npcid, areaid )
	MisResultCondition( NoRandNpcItemFlag, misid, npcid )
	
	MisResultAction( TakeRandNpcItem, misid, npcid, GetNpcName( npcid ) )
	MisResultAction( RefreshCompleteFlag, sid )
end



function ConvertProfession()

---- Class Advancement ----

	-- Swordsman
	AddPfTable( 1, 8 )	-- Champion
	AddPfTable( 1, 9 )	-- Crusader
	AddPfTable( 1, 10 )	-- White Knight
	
	-- Hunter
	AddPfTable( 2, 11 )	-- Animal Tamer
	AddPfTable( 2, 12 )	-- Sharpshooter
	
	-- Sailor
	AddPfTable( 3, 15 )	-- Captain
	
	-- Explorer
	AddPfTable( 4, 16 ) 	-- Voyager
	
	-- Herbalist
	AddPfTable( 5, 13 )	-- Cleric
	AddPfTable( 5, 14 )	-- Seal Master
	
	-- Artisan
	AddPfTable( 6, 18 )	-- Engineer
	
	-- Merchant
	AddPfTable( 7, 17 )	-- Upstart
	

---- Class Restrictions ----

	-- Lance
	AddCatTable( 1, 1 )	-- Swordsman
	AddCatTable( 1, 2 )	-- Hunter
	AddCatTable( 1, 4 )	-- Explorer
	AddCatTable( 1, 7 )	-- Merchant
	AddCatTable( 1, 9 )	-- Crusader
	AddCatTable( 1, 10 )	-- White Knight
	AddCatTable( 1, 11 )	-- Animal Tamer
	AddCatTable( 1, 12 )	-- Sharpshooter
	AddCatTable( 1, 16 )	-- Voyager
	AddCatTable( 1, 17 )	-- Upstart
	
	-- Carsise
	AddCatTable( 2, 1 )	-- Swordsman
	AddCatTable( 2, 3 )	-- Sailor
	AddCatTable( 2, 6 )	-- Artisan
	AddCatTable( 2, 7 )	-- Merchant
	AddCatTable( 2, 8 )	-- Champion
	AddCatTable( 2, 10 )	-- White Knight
	AddCatTable( 2, 17 )	-- Upstart
	
	-- Phyllis
	AddCatTable( 3, 1 )	-- Swordsman
	AddCatTable( 3, 2 )	-- Hunter
	AddCatTable( 3, 3 )	-- Sailor
	AddCatTable( 3, 4 )	-- Explorer
	AddCatTable( 3, 5 )	-- Herbalist
	AddCatTable( 3, 7 )	-- Merchant
	AddCatTable( 3, 9 )	-- Crusader
	AddCatTable( 3, 11 )	-- Animal Tamer
	AddCatTable( 3, 12 )	-- Sharpshooter
	AddCatTable( 3, 13 )	-- Cleric
	AddCatTable( 3, 14 )	-- Seal Master
	AddCatTable( 3, 15 )	-- Captain
	AddCatTable( 3, 16 )	-- Voyager
	AddCatTable( 3, 17 )	-- Upstart
	
	
	-- Ami
	AddCatTable( 4, 4 )	-- Explorer
	AddCatTable( 4, 5 )	-- Herbalist
	AddCatTable( 4, 6 )	-- Artisan
	AddCatTable( 4, 7 )	-- Merchant
	AddCatTable( 4, 13 )	-- Cleric
	AddCatTable( 4, 14 )	-- Seal Master
	AddCatTable( 4, 16 )	-- Voyager
	AddCatTable( 4, 17 )	-- Upstart
	AddCatTable( 4, 18 )	-- Engineer

end
ConvertProfession()

