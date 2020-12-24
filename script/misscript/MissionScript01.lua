--ћаксимум убийств 30, максимум действий 5
print( "------------------------------------" )
print( "Loading Mission Files:" )
print( "------------------------------------" )
print( "Loading MissionScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

-------------
-- 100 сет --
-------------
function FirstQuest()
	--DefineMission( 700, "Экипировка Абаддона ", 700 )
	DefineMission( 700, "\221\234\232\239\232\240\238\226\234\224 \192\225\224\228\228\238\237\224", 700 )
	--MisBeginTalk( "Пиздуй в ѕодмосковье и покажи ублюдкам, кто тут хозяин!" )
	MisBeginTalk( "\207\232\231\228\243\233 \226 \207\238\228\236\238\241\234\238\226\252\229 \232 \239\238\234\224\230\232 \243\225\235\254\228\234\224\236, \234\242\238 \242\243\242 \245\238\231\255\232\237!" )
	MisBeginCondition(LvCheck, ">", 1 )
	MisBeginAction(AddMission, 700)
	MisBeginCondition(NoRecord, 700)
	MisBeginAction(AddTrigger,7001, TE_GETITEM, 7999, 1 )
	MisBeginAction(AddTrigger, 7002, TE_KILL, 103, 100 )
	MisCancelAction(ClearMission, 700)

	MisNeed(MIS_NEED_ITEM, 7999, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 103, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 4999, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Пиздуй в ѕодмосковье и покажи ублюдкам, кто тут хозяин!" )
	MisHelpTalk( "<t>\207\232\231\228\243\233 \226 \207\238\228\236\238\241\234\238\226\252\229 \232 \239\238\234\224\230\232 \243\225\235\254\228\234\224\236, \234\242\238 \242\243\242 \245\238\231\255\232\237!" )
	--MisResultTalk( "<t>Поздравляю, забирай сундук Абаддона! " )
	MisResultTalk( "<t>\207\238\231\228\240\224\226\235\255\254, \231\224\225\232\240\224\233 \241\243\237\228\243\234 \192\225\224\228\228\238\237\224!" )
	MisResultCondition(NoRecord, 700)
	MisResultCondition(HasMission, 700)
	MisResultCondition(HasItem, 7999,1)
	MisResultAction(TakeItem, 7999, 1 )
	MisResultCondition(HasFlag, 700, 119 )
	MisResultAction(ClearMission, 700)
	MisResultAction(SetRecord, 700 )
	MisResultBagNeed(1)

		InitTrigger()
	TriggerCondition( 1, IsItem, 7999 )	
	TriggerAction( 1, AddNextFlag, 700, 10, 1 )
	RegCurTrigger( 7001 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 700, 20,  100)
	RegCurTrigger( 7002 )
	
	-------------------------------
	-- Вторая часть пути новичка --
	-------------------------------
	--DefineMission( 701, "Оружие Абаддона ", 701 )
	DefineMission( 701, "\206\240\243\230\232\229 \192\225\224\228\228\238\237\224", 701 )
	--MisBeginTalk( "Пиздуй в Подмосковье и покажи ублюдкам, кто тут хозяин!" )
	MisBeginTalk( "\207\232\231\228\243\233 \226 \207\238\228\236\238\241\234\238\226\252\229 \232 \239\238\234\224\230\232 \243\225\235\254\228\234\224\236, \234\242\238 \242\243\242 \245\238\231\255\232\237!" )
	MisBeginCondition(LvCheck, ">", 1 )
	MisBeginAction(AddMission, 701)
	MisBeginCondition(NoRecord, 701)
	MisBeginAction(AddTrigger,7011, TE_GETITEM, 7999, 1 )
	MisBeginAction(AddTrigger, 7012, TE_KILL, 71, 100 )
	MisCancelAction(ClearMission, 701)

	MisNeed(MIS_NEED_ITEM, 7999, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 71, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 5000, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( " <t>Пиздуй в Подмосковье и покажи ублюдкам, кто тут хозяин! " )
	MisHelpTalk( "<t>\207\232\231\228\243\233 \226 \207\238\228\236\238\241\234\238\226\252\229 \232 \239\238\234\224\230\232 \243\225\235\254\228\234\224\236, \234\242\238 \242\243\242 \245\238\231\255\232\237!" )
	--MisResultTalk( "<t>Поздравл€ю, забирай сундук Абаддона! " )
	MisResultTalk( "<t>\207\238\231\228\240\224\226\235€\254, \231\224\225\232\240\224\233 \241\243\237\228\243\234 \192\225\224\228\228\238\237\224!" )
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(HasItem, 7999,1)
	MisResultAction(TakeItem, 7999, 1 )
	MisResultCondition(HasFlag, 701, 119 )
	MisResultAction(ClearMission, 701)
	MisResultAction(SetRecord, 701 )
	MisResultBagNeed(1)

		InitTrigger()
	TriggerCondition( 1, IsItem, 7999 )	
	TriggerAction( 1, AddNextFlag, 701, 10, 1 )
	RegCurTrigger( 7011 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 71 )	
	TriggerAction( 1, AddNextFlag, 701, 20,  100)
	RegCurTrigger( 7012 )
end
FirstQuest()

---------------
-- ФС квесты --
---------------
function FCQuest()
	--DefineMission( 702, "Кровавый Камень", 702 )
	DefineMission( 702, "\202\240\238\226\224\226\251\233 \202\224\236\229\237\252", 702 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Затерянное очко! " )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \199\224\242\229\240\255\237\237\238\229 \238\247\234\238!" )
	MisBeginCondition(LvCheck, ">", 124 )
	MisBeginAction(AddMission, 702)
	--MisBeginCondition(NoRecord, 702)
	MisBeginAction(AddTrigger,7021, TE_GETITEM, 1625, 1 )
	MisBeginAction(AddTrigger, 7022, TE_KILL, 686, 100 )
	MisCancelAction(ClearMission, 702)

	MisNeed(MIS_NEED_ITEM, 1625, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 686, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8041, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Затерянное очко! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \199\224\242\229\240\255\237\237\238\229 \238\247\234\238!" )
	--MisResultTalk( "<t>Лови Кровавый камень! " )
	MisResultTalk( "<t>\203\238\226\232 \202\240\238\226\224\226\251\233 \234\224\236\229\237\252!" )
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(HasItem, 1625,1)
	MisResultAction(TakeItem, 1625, 1 )
	MisResultCondition(HasFlag, 702, 119 )
	MisResultAction(ClearMission, 702)
	--MisResultAction(SetRecord, 702 )
	MisResultBagNeed(1)

		InitTrigger()
	TriggerCondition( 1, IsItem, 1625 )	
	TriggerAction( 1, AddNextFlag, 702, 10, 1 )
	RegCurTrigger( 7021 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 686 )	
	TriggerAction( 1, AddNextFlag, 702, 20,  100)
	RegCurTrigger( 7022 )
	
	----------------------
	-- Второй камень ФС --
	----------------------
	--DefineMission( 703, "Лунный Камень ", 703 )
	DefineMission( 703, "\203\243\237\237\251\233 \202\224\236\229\237\252", 703 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Затерянное очко!" )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \199\224\242\229\240\255\237\237\238\229 \238\247\234\238!" )
	MisBeginCondition(LvCheck, ">", 129 )
	MisBeginAction(AddMission, 703)
	MisBeginCondition(NoRecord, 703)
	MisBeginAction(AddTrigger,7031, TE_GETITEM, 4837, 1 )
	MisBeginAction(AddTrigger, 7032, TE_KILL, 687, 100 )
	MisCancelAction(ClearMission, 703)

	MisNeed(MIS_NEED_ITEM, 4837, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 687, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8042, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Затерянное очко! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \199\224\242\229\240\255\237\237\238\229 \238\247\234\238!" )
	--MisResultTalk( "Лови Лунный камень! " )
	MisResultTalk( "\203\238\226\232 \203\243\237\237\251\233 \234\224\236\229\237\252!" )
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(HasItem, 4837,1)
	MisResultAction(TakeItem, 4837, 1 )
	MisResultCondition(HasFlag, 703, 119 )
	MisResultAction(ClearMission, 703)
	MisResultAction(SetRecord, 703 )
	MisResultBagNeed(1)

		InitTrigger()
	TriggerCondition( 1, IsItem, 4837 )	
	TriggerAction( 1, AddNextFlag, 703, 10, 1 )
	RegCurTrigger( 7031 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 687 )	
	TriggerAction( 1, AddNextFlag, 703, 20,  100)
	RegCurTrigger( 7032 )
end
FCQuest()

---------------
-- ДС квесты --
---------------
function DSQuest()
	--DefineMission( 704, "1 часть сундука Мертвеца", 704 )
	DefineMission( 704, "1 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224", 704 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма! " )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	MisBeginCondition(LvCheck, ">", 124 )
	MisBeginAction(AddMission, 704)
	MisBeginCondition(NoRecord, 704)
	MisBeginAction(AddTrigger,7041, TE_GETITEM, 3927, 1 )
	MisBeginAction(AddTrigger, 7042, TE_KILL, 695, 100 )
	MisCancelAction(ClearMission, 704)

	MisNeed(MIS_NEED_ITEM, 3927, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 695, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8090, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	--MisResultTalk( "<t>Лови Первую часть сундука Мертвеца! " )
	MisResultTalk( "<t>\203\238\226\232 \207\229\240\226\243\254 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224!" )
	MisResultCondition(NoRecord, 704)
	MisResultCondition(HasMission, 704)
	MisResultCondition(HasItem, 3927,1)
	MisResultAction(TakeItem, 3927, 1 )
	MisResultCondition(HasFlag, 704, 119 )
	MisResultAction(ClearMission, 704)
	MisResultAction(SetRecord, 704 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3927 )	
	TriggerAction( 1, AddNextFlag, 704, 10, 1 )
	RegCurTrigger( 7041 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 695 )	
	TriggerAction( 1, AddNextFlag, 704, 20,  100)
	RegCurTrigger( 7042 )
	
	-----------------------------------
	-- Вторая часть сундука мертвеца --
	-----------------------------------
	--DefineMission( 705, "2 часть сундука Мертвеца ", 705 )
	DefineMission( 705, "2 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224", 705 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма!" )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	MisBeginCondition(LvCheck, ">", 129 )
	MisBeginAction(AddMission, 705)
	MisBeginCondition(NoRecord, 705)
	MisBeginAction(AddTrigger,7051, TE_GETITEM, 4571, 1 )
	MisBeginAction(AddTrigger, 7052, TE_KILL, 696, 100 )
	MisCancelAction(ClearMission, 705)

	MisNeed(MIS_NEED_ITEM, 4571, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 696, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8091, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	--MisResultTalk( "Лови Вторую часть сундука Мертвеца! " )
	MisResultTalk( "\203\238\226\232 \194\242\238\240\243\254 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224!" )
	MisResultCondition(NoRecord, 705)
	MisResultCondition(HasMission, 705)
	MisResultCondition(HasItem, 4571,1)
	MisResultAction(TakeItem, 4571, 1 )
	MisResultCondition(HasFlag, 705, 119 )
	MisResultAction(ClearMission, 705)
	MisResultAction(SetRecord, 705 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4571 )	
	TriggerAction( 1, AddNextFlag, 705, 10, 1 )
	RegCurTrigger( 7051 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 696 )	
	TriggerAction( 1, AddNextFlag, 705, 20,  100)
	RegCurTrigger( 7052 )
	
	-----------------------------------
	-- Третья часть сундука мертвеца --
	-----------------------------------
	--DefineMission( 706, "3 часть сундука Мертвеца ", 706 )
	DefineMission( 706, "3 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224", 706 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма!" )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	MisBeginCondition(LvCheck, ">", 129 )
	MisBeginAction(AddMission, 706)
	MisBeginCondition(NoRecord, 706)
	MisBeginAction(AddTrigger,7061, TE_GETITEM, 1846, 1 )
	MisBeginAction(AddTrigger, 7062, TE_KILL, 697, 100 )
	MisCancelAction(ClearMission, 706)

	MisNeed(MIS_NEED_ITEM, 1846, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 697, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8092, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма! " )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	--MisResultTalk( "Лови Третью часть сундука Мертвеца! " )
	MisResultTalk( "\203\238\226\232 \210\240\229\242\252\254 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224!" )
	MisResultCondition(NoRecord, 706)
	MisResultCondition(HasMission, 706)
	MisResultCondition(HasItem, 1846,1)
	MisResultAction(TakeItem, 1846, 1 )
	MisResultCondition(HasFlag, 706, 119 )
	MisResultAction(ClearMission, 706)
	MisResultAction(SetRecord, 706 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1846 )	
	TriggerAction( 1, AddNextFlag, 706, 10, 1 )
	RegCurTrigger( 7061 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 697 )	
	TriggerAction( 1, AddNextFlag, 706, 20,  100)
	RegCurTrigger( 7062 )
	
	--------------------------------------
	-- Четвертая часть сундука мертвеца --
	--------------------------------------
	--DefineMission( 707, "4 часть сундука Мертвеца", 707 )
	DefineMission( 707, "4 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224", 707 )
	--MisBeginTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма!" )
	MisBeginTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	MisBeginCondition(LvCheck, ">", 129 )
	MisBeginAction(AddMission, 707)
	MisBeginCondition(NoRecord, 707)
	MisBeginAction(AddTrigger,7071, TE_GETITEM, 4343, 1 )
	MisBeginAction(AddTrigger, 7072, TE_KILL, 698, 100 )
	MisCancelAction(ClearMission, 707)

	MisNeed(MIS_NEED_ITEM, 4343, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 698, 100, 20, 100)

	
	MisPrize(MIS_PRIZE_ITEM, 8093, 1, 4) 
	MisPrizeSelAll() 
	
	--MisHelpTalk( "<t>Чтобы выполнить задание, пиздуй в Мир Дерьма!" )
	MisHelpTalk( "<t>\215\242\238\225\251 \226\251\239\238\235\237\232\242\252 \231\224\228\224\237\232\229, \239\232\231\228\243\233 \226 \204\232\240 \196\229\240\252\236\224!" )
	--MisResultTalk( "Лови Четвертую часть сундука Мертвеца!" )
	MisResultTalk( "\203\238\226\232 \215\229\242\226\229\240\242\243\254 \247\224\241\242\252 \241\243\237\228\243\234\224 \204\229\240\242\226\229\246\224!" )
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(HasItem, 4343,1)
	MisResultAction(TakeItem, 4343, 1 )
	MisResultCondition(HasFlag, 707, 119 )
	MisResultAction(ClearMission, 707)
	MisResultAction(SetRecord, 707 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4343 )	
	TriggerAction( 1, AddNextFlag, 707, 10, 1 )
	RegCurTrigger( 7071 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 698 )	
	TriggerAction( 1, AddNextFlag, 707, 20,  100)
	RegCurTrigger( 7072 )
end
DSQuest()