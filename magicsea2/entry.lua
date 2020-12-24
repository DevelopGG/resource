function config_entry(entry)
	SetMapEntryEntiID(entry, 2492, 1)
end

function after_create_entry(entry)
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	local EntryName = "\213\224\238\241 \216\224\233\242\224\237\224"
	--local EntryName = "Хаос Шайтана"
	SetMapEntryEventName(entry, EntryName)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("\206\225\252\255\226\235\229\237\232\229: \194 \194\229\235\232\234\238\236 \209\232\237\229\236 \206\234\229\224\237\229, \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 ["..posx..","..posy.."] \226\229\228\243\249\232\233 \226 \213\224\238\241!")
	--Notice("Обьявление: В Великом Синем Океане, открылся портал ["..posx..","..posy.."] ведущий в Хаос!")
end

function after_destroy_entry_magicsea2( entry )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("\206\225\250\255\226\235\229\237\232\229: \207\238\240\242\224\235 \226 \213\224\238\241 \231\224\234\240\251\235\241\255. \211\228\224\247\232!")
	--Notice("Объявление: Портал в Хаос закрылся. Удачи!")
end

function after_player_login_magicsea2(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "\206\225\252\255\226\235\229\237\232\229: \194 \194\229\235\232\234\238\236 \209\232\237\229\236 \206\234\229\224\237\229, \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 ["..posx..","..posy.."] \226\229\228\243\249\232\233 \226 \213\224\238\241!")
	--ChaNotice(player_name, "Обьявление: В Великом Синем Океане, открылся портал ["..posx..","..posy.."] ведущий в Хаос!")
end

function check_can_enter_magicsea2(role, copy_mgr)
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem(role, 3849)
	local Team_In = IsInTeam(role)
	
	if (Team_In == 1) then
		SystemNotice(role, "\205\229\235\252\231\255 \226\238\233\242\232 \226 \213\224\238\241 \226 \238\242\240\255\228\229. \194\251\233\228\232\242\229 \232\231 \238\242\240\255\228\224 \232 \226\238\233\228\232\242\229 \241\237\238\226\224")
		--SystemNotice(role, "Нельзя войти в Хаос в отряде. Выйдите из отряда и войдите снова")
		return 0
	end
	
	if FightingBook_Num <= 0 then
		SystemNotice(role, "\202 \241\238\230\224\235\229\237\232\254, \243 \226\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232")
		--SystemNotice(role, "К сожалению, у вас нет Медали Отваги")
		return 0
	elseif FightingBook_Num > 1 then
		if AddonSystem["LOG_DEBUG"]  == 1 then
			LG( "RYZ_PK", "Требуется 1 Медаль Отваги " )
		end
		return 0
	end

	local Has_money = check_HasMoney(role)
	if Has_money == 1 then
		return 1
	else
		SystemNotice(role, "\211 \226\224\241 \237\229 \245\226\224\242\224\229\242 \231\238\235\238\242\224 \228\235\255 \243\247\224\241\242\232\255 \226 \225\238\255\245 \213\224\238\241\224")
		--SystemNotice(role, "У вас не хватает золота для участия в боях Хаоса")
		return 0
	end
end

function check_HasMoney(role)
	local lv = GetChaAttr(role, ATTR_LV)
	local Money_Need = lv * Chaos_Auth_Price
	local Money_Have = GetChaAttr(role, ATTR_GD)
	if Money_Have >= Money_Need then
		return 1
	end
end

function begin_enter_magicsea2(role, copy_mgr)
	local Money_Have = GetChaAttr(role, ATTR_GD)
	local lv = GetChaAttr( role, ATTR_LV)
	local Money_Need = lv * Chaos_Auth_Price
	local Money_Now = Money_Have - Money_Need
	SetChaAttrI(role, ATTR_GD, Money_Now)
	
	--Icicle_prize_money = Icicle_prize_money + math.floor(Money_Need * 0.95)
	SystemNotice(role, '\194\231\237\238\241 \231\224 \226\245\238\228 \226 \213\224\238\241: '..Money_Need)
	--SystemNotice(role, 'Взнос за вход в Хаос: '..Money_Need)

	MoveCity(role, "Chaos Magic")
end