print("* Loading UpgradeSystem.lua" )
Upgrade = {}
Upgrade.Money = 100000
--Оружие Аббадона -- Оружие Мертвеца
Upgrade[1] = {ID = 2332, Catalyst = 8043, Result = 5002} --Меч круза
Upgrade[2] = {ID = 2334, Catalyst = 8043, Result = 5001} --Коса чампа
Upgrade[3] = {ID = 2338, Catalyst = 8043, Result = 5003} --Пушка Шарпа
Upgrade[4] = {ID = 2339, Catalyst = 8043, Result = 5004} --Лук Шарпа
Upgrade[5] = {ID = 2336, Catalyst = 8043, Result = 5005} --Клинок Воя
Upgrade[6] = {ID = 2341, Catalyst = 8043, Result = 5006} --Коса БК
Upgrade[7] = {ID = 2343, Catalyst = 8043, Result = 5007} --Коса СМ
Upgrade[8] = {ID = 2333, Catalyst = 8043, Result = 5008} --Молот Ами Чампа
--Оружие Мертвеца -- Оружие Беса
Upgrade[9] = {ID = 5002, Catalyst = 8045, Result = 5016} --Меч круза
Upgrade[10] = {ID = 5001, Catalyst = 8045, Result = 5017} --Коса чампа
Upgrade[11] = {ID = 5003, Catalyst = 8045, Result = 5018} --Пушка Шарпа
Upgrade[12] = {ID = 5004, Catalyst = 8045, Result = 5019} --Лук Шарпа
Upgrade[13] = {ID = 5005, Catalyst = 8045, Result = 5020} --Клинок Воя
Upgrade[14] = {ID = 5006, Catalyst = 8045, Result = 5021} --Коса БК
Upgrade[15] = {ID = 5007, Catalyst = 8045, Result = 5022} --Коса СМ
Upgrade[16] = {ID = 5008, Catalyst = 8045, Result = 5023} --Молот Ами Чампа
--Сет Мертвеца -- Сет Беса
Upgrade[17] = {ID = 5012, Catalyst = 8044, Result = 5027} --Шапка
Upgrade[18] = {ID = 5013, Catalyst = 8044, Result = 5028} --Броня
Upgrade[19] = {ID = 5014, Catalyst = 8044, Result = 5029} --Перчатки
Upgrade[20] = {ID = 5015, Catalyst = 8044, Result = 5030} --Сапоги
--Бижутерия Беса в бижу Гончей Ада
Upgrade[21] = {ID = 5025, Catalyst = 7690, Result = 5040} --Кольцо
Upgrade[22] = {ID = 5026, Catalyst = 7691, Result = 5041} --Ожерелье
Upgrade[23] = {ID = 5027, Catalyst = 8048, Result = 5042} --Шапка
Upgrade[24] = {ID = 5028, Catalyst = 8049, Result = 5043} --Торс
Upgrade[25] = {ID = 5029, Catalyst = 8050, Result = 5044} --Перчатки
Upgrade[26] = {ID = 5030, Catalyst = 8051, Result = 5045} --Ботинки
--Улучшение гамбургера до Анжелы
Upgrade[27] = {ID = 681, Catalyst = 3919, Result = 450} --Анжела
Upgrade[28] = {ID = 450, Catalyst = 3920, Result = 451} --Анжела Младшая

function can_tichun_item(...)
	if arg.n ~= 10 and arg.n ~= 14 then
		SystemNotice(arg[1], "Parameter value illegal."..arg.n)
		return 0
	end
	local Check = 0
	Check = can_tichun_item_main(arg)
	if Check == 1 then
		return 1
	else
		return 0
	end
end
function can_tichun_item_main(Table)
	local Player = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Now = 0
	local ItemCount_Now = 0
	local ItemBagCount_Num = 0
	Player, ItemBag, ItemCount, ItemBagCount, ItemBag_Now, ItemCount_Now, ItemBagCount_Num = Read_Table(Table)
	if ItemCount[0] ~= 1 or ItemCount[1] ~= 1 or ItemBagCount[0] ~= 1 or ItemBagCount[1] ~= 1 then
		--SystemNotice(Player,"Ошибка улучшения! Сообщите Администрации!")
		SystemNotice(Player,"\206\248\232\225\234\224 \243\235\243\247\248\229\237\232\255! \209\238\238\225\249\232\242\229 \192\228\236\232\237\232\241\242\240\224\246\232\232!")
		return 0
	end
	local ItemMain = GetChaItem(Player, 2, ItemBag[0])
	local ItemCatalyst = GetChaItem(Player, 2, ItemBag[1])
	local ItemType_mainitem = GetItemType(ItemMain)
	local ItemType_otheritem = GetItemType(ItemCatalyst)
	local ItemMainID = GetItemID(ItemMain)
	local ItemCatalystID = GetItemID(ItemCatalyst)
	local ItemMainID_Lv = GetItemLv(ItemMain)
	local ItemCatalystID_Lv = GetItemLv(ItemCatalyst)
	local MainID = ItemMainID		
	local CatalystID = ItemCatalystID
	if MainID > 8000 then
		MainID = GetItemAttr(ItemMain, ITEMATTR_VAL_FUSIONID)
	end
	local Check = 0
	for i = 1, table.getn(Upgrade), 1 do
		if MainID == Upgrade[i].ID then
			if CatalystID == Upgrade[i].Catalyst then
				Check = 1
			end
		end
	end
	if Check == 0 then
		--SystemNotice(Player, "Вы не можете использовать ["..MainID.."] и катализатор ["..CatalystID.."]" )
		SystemNotice(Player, "\194\251 \237\229 \236\238\230\229\242\229 \232\241\239\238\235\252\231\238\226\224\242\252 ["..MainID.."] \232 \234\224\242\224\235\232\231\224\242\238\240 ["..CatalystID.."]" )
		return 0		
	end
	if gettichun_money_main(Table) > GetChaAttr(Player, ATTR_GD) then
		--SystemNotice(Player, "Вам нужно "..gettichun_money_main(Table).." золота для улучшения! ")
		SystemNotice(Player, "\194\224\236 \237\243\230\237\238 "..gettichun_money_main(Table).." \231\238\235\238\242\224 \228\235\255 \243\235\243\247\248\229\237\232\255! ")
		return 0
	end
	return 1
end
function begin_tichun_item(...)
	local Check_Cantichun = 0
	Check_Cantichun = can_tichun_item_main(arg)
	if Check_Cantichun == 0 then
		return 0
	end
	local Player = 0
	local ItemBag = {}											
	local ItemCount = {}											
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	Player, ItemBag, ItemCount, ItemBagCount, ItemBag_Num, ItemCount_Num, ItemBagCount_Num = Read_Table(arg)
	local ItemMain = GetChaItem(Player, 2, ItemBag[0])	
	local ItemCatalyst = GetChaItem(Player, 2, ItemBag[1])	
	local Money_Need = gettichun_money_main(arg)
	TakeMoney(Player, nil, Money_Need)
	Check_TiChun_Item = tichun_item(arg)
	if Check_TiChun_Item == 0  then
		--SystemNotice(Player, "Ошибка №2 улучшения вещей! Сообщите администрации!")
		SystemNotice(Player, "\206\248\232\225\234\224 №2 \243\235\243\247\248\229\237\232\255 \226\229\249\229\233! \209\238\238\225\249\232\242\229 \224\228\236\232\237\232\241\242\240\224\246\232\232!")
	end
	return 1
end
function get_item_tichun_money(...)
	local Money = gettichun_money_main(arg)
	return Money
end
function gettichun_money_main(Table)
	local Player = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}									
	local ItemBag_Num = 0									
	local ItemCount_Num = 0									
	local ItemBagCount_Num = 0								
	Player, ItemBag, ItemCount, ItemBagCount, ItemBag_Num, ItemCount_Num, ItemBagCount_Num = Read_Table(Table)
	local ItemMain = GetChaItem(Player, 2, ItemBag[0])	
	local ItemMainLv =  GetItemLv(ItemMain)
	local Money_Need = Upgrade.Money * ItemMainLv
	return Money_Need
end
function tichun_item(Table)
	local Player = 0
	local ItemBag = {}										
	local ItemCount = {}										
	local ItemBagCount = {}										
	local ItemBag_Num = 0
	local ItemCount_Num = 0
	local ItemBagCount_Num = 0
	local ItemID_Cuihuaji = 0
	Player, ItemBag, ItemCount, ItemBagCount, ItemBag_Num, ItemCount_Num, ItemBagCount_Num = Read_Table(Table)
	local ItemMain = GetChaItem(Player, 2, ItemBag[0])
	local ItemCatalyst = GetChaItem(Player, 2, ItemBag[1])	
	local ItemType_mainitem = GetItemType(ItemMain)
	local ItemType_otheritem = GetItemType(ItemCatalyst)
	local ItemMainID = GetItemID(ItemMain)
	local ItemCatalystID = GetItemID(ItemCatalyst)
	local ItemMainID_Lv = GetItemLv(ItemMain)
	local ItemCatalystID_Lv = GetItemLv(ItemCatalyst)
	local MainID = ItemMainID		
	local CatalystID = ItemCatalystID
	if MainID > 8000 then
		MainID = GetItemAttr(ItemMain, ITEMATTR_VAL_FUSIONID)
	end
	local Forge = GetItemForgeParam(ItemMain, 1)
	local r1 = 0
	local r2 = 0
	local ItemEnergy = GetItemAttr(ItemMain, ITEMATTR_ENERGY) 
	local ItemQuality = 12
		local Item_CanGet = GetChaFreeBagGridNum ( Player )
	if Item_CanGet < 6 then
		PopupNotice(Player ,"\205\229\228\238\241\242\224\242\238\247\237\238 \236\229\241\242\224 \226 \232\237\226\229\237\242\224\240\229.")
		--SystemNotice(role ,"Недостаточно места в инвентаре.")
		return
	end
	
	
	for k = 1, table.getn(Upgrade) do
		if MainID == Upgrade[k].ID and CatalystID == Upgrade[k].Catalyst then
			if ItemEnergy < 1000 then
				ItemQuality = 2
			elseif ItemEnergy >= 1000 and ItemEnergy < 2000 then
				ItemQuality = 12
			elseif ItemEnergy >= 2000 and ItemEnergy < 3000 then
				ItemQuality = 13
			elseif ItemEnergy >= 3000 and ItemEnergy < 4000 then
				ItemQuality = 14
			elseif ItemEnergy >= 4000 and ItemEnergy < 5000 then
				ItemQuality = 15
			elseif ItemEnergy >= 5000 and ItemEnergy < 6000 then
				ItemQuality = 16
			elseif ItemEnergy >= 6000 and ItemEnergy < 7000 then
				ItemQuality = 17
			elseif ItemEnergy >= 7000 and ItemEnergy < 8000 then
				ItemQuality = 18
			elseif ItemEnergy >= 8000 and ItemEnergy < 9000 then
				ItemQuality = 19
			elseif ItemEnergy >= 9000 and ItemEnergy < 10000 then
				ItemQuality = 20
			end
			MainID = Upgrade[k].Result
			r1,r2 = MakeItem(Player, MainID, 1, ItemQuality)
		end
	end
	local RemMain = 0
	local RemCata = 0
	RemMain = RemoveChaItem(Player, ItemMainID, 1, 2, ItemBag[0], 2, 1, 1)
	RemCata = RemoveChaItem(Player, ItemCatalystID, 1, 2, ItemBag[1], 2, 1, 1)	
	if RemMain == 0 or RemCata == 0 then
		--SystemNotice(Player, "Ошибка удаления предмета! Сообщите администрации!")
		SystemNotice(Player, "\206\248\232\225\234\224 \243\228\224\235\229\237\232\255 \239\240\229\228\236\229\242\224! \209\238\238\225\249\232\242\229 \224\228\236\232\237\232\241\242\240\224\246\232\232!")
		return
	end
	local NewItem = GetChaItem(Player, 2, r2)
	local CheckForge = SetItemForgeParam(NewItem, 1, Forge)
	if CheckForge == 0 then
		SystemNotice(Player, "Fail to set forging attribute settings.")
		return
	end

	--Notice("Congratulations, player "..GetChaDefaultName(Player).." upgraded "..GetItemName(ItemMainID).." with "..GetItemName(ItemCatalystID).." and obtained "..GetItemName(MainID)..".")
	-------------------------------------
	-- Выводит в ГМ чат кто че улучшил --
	-------------------------------------
	GMNotice("\207\238\231\228\240\224\226\235\255\229\236! \200\227\240\238\234 ["..GetChaDefaultName(Player).."] \243\235\243\247\248\232\235 "..GetItemName(ItemMainID).." \232 \239\238\235\243\247\232\235 "..GetItemName(MainID)..".")
	LG("Upgrade System", "Player: ["..GetChaDefaultName(Player).."], Equipment: ["..GetItemName(ItemMainID).."], Catalyst: ["..GetItemName(ItemCatalystID).."], Result: ["..GetItemName(MainID).."]")
	SynChaKitbag(Player, 13)
end
