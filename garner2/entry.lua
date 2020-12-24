function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
	local EntryName = " \213\224\238\241 \204\238\241\234\226\251"
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
end

function after_destroy_entry_garner2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    GMNotice("\207\238\240\242\224\235 \226 \213\224\238\241 \204\238\241\234\226\251 \231\224\234\240\251\235\241\255.") 
end

function after_player_login_garner2(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "\207\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \239\238\240\242\224\235 \226 \213\224\238\241 \204\238\241\234\226\251")

end



function check_can_enter_garner2(role, copy_mgr)
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem(role, 3849)
	----------------------
	-- Проверка на форж --
	----------------------
	--Проверяем тело на форж
	local checkBody = EquipForgeCheck(role, enumEQUIP_BODY, '>', 9)
	--Проверяем перчатки на форж
	local checkGloves = EquipForgeCheck(role, enumEQUIP_GLOVE, '>', 9)
	--Проверяем ботинки на форж
	local checkBoots = EquipForgeCheck(role, enumEQUIP_SHOES, '>', 9)
	--Проверяем оружие слева в инвентаре на форж
	local checkWeap = EquipForgeCheck(role, enumEQUIP_RHAND, '>', 9)
	--Проверяем оружие справа в инвентаре на форж
	local checkWeap2 = EquipForgeCheck(role, enumEQUIP_LHAND, '>', 3)
	--Проверяем ожерелье на форж
	local checkNeck = EquipForgeCheck(role, enumEQUIP_NECK, '>', 9)
	--Проверяем кольцо слева в инвентаре на форж
	local checkRingL = EquipForgeCheck(role, enumEQUIP_HAND1, '>', 9)
	--Проверяем кольцо справа в инвентаре на форж
	local checkRingR = EquipForgeCheck(role, enumEQUIP_HAND2, '>', 9)
	if (checkBody == true and checkGloves == true and checkBoots == true and (checkWeap == true or checkWeap2 == true) and checkNeck == true and checkRingL == true and checkRingR == true) then
		return 1
	else
		Dbag = DelBagItem(Cha, 8129, 1)
		if Dbag == 1 then
			return 1
		else
		--HelpInfo( Cha, 0, "Чтобы войти в Хаос Москвы, у тебя должен быть форж:_1. Тело +10 или выше;_2. Перчатки +10 или выше;_3. Ботинки +10 или выше;_4. Оружие +10 или выше;_5. Ожерелье +10 или выше;_6. Кольца +10 или выше. ")
		HelpInfo( role, 0,  "\215\242\238\225\251 \226\238\233\242\232 \226 \213\224\238\241 \204\238\241\234\226\251, \243 \242\229\225\255 \228\238\235\230\229\237 \225\251\242\252 \244\238\240\230:_1. \210\229\235\238 +10 \232\235\232 \226\251\248\229;_2. \207\229\240\247\224\242\234\232 +10 \232\235\232 \226\251\248\229;_3. \193\238\242\232\237\234\232 +10 \232\235\232 \226\251\248\229;_4. \206\240\243\230\232\229 +10 \232\235\232 \226\251\248\229;_5. \206\230\229\240\229\235\252\229 +10 \232\235\232 \226\251\248\229;_6. \202\238\235\252\246\224 +10 \232\235\232 \226\251\248\229.")
		return 0
		end
	end
	----------------------------
	-- Конец проверки на форж --
	----------------------------
	local Team_In = IsInTeam(role)
	
	if (Team_In == 1) then
		SystemNotice(role, "\205\229\235\252\231\255 \226\238\233\242\232 \226 \213\224\238\241 \226 \238\242\240\255\228\229. \194\251\233\228\232\242\229 \232\231 \238\242\240\255\228\224 \232 \226\238\233\228\232\242\229 \241\237\238\226\224")
		--SystemNotice(role, "§Ї§Ц§Э§о§Щ§с §У§а§Ы§д§Ъ §У §·§С§а§г §У §а§д§в§с§Х§Ц. §Ј§н§Ы§Х§Ъ§д§Ц §Ъ§Щ §а§д§в§с§Х§С §Ъ §У§а§Ы§Х§Ъ§д§Ц §г§Я§а§У§С")
		return 0
	end
	
	if FightingBook_Num <= 0 then
		SystemNotice(role, "\202 \241\238\230\224\235\229\237\232\254, \243 \226\224\241 \237\229\242 \204\229\228\224\235\232 \206\242\226\224\227\232")
		--SystemNotice(role, "§¬ §г§а§Ш§С§Э§Ц§Я§Ъ§р, §е §У§С§г §Я§Ц§д §®§Ц§Х§С§Э§Ъ §°§д§У§С§Ф§Ъ")
		return 0
	elseif FightingBook_Num > 1 then
		return 0
	end

	local Has_money = check_HasMoney(role)
	if Has_money == 1 then
		return 1
	else
		SystemNotice(role, "\211 \226\224\241 \237\229 \245\226\224\242\224\229\242 \231\238\235\238\242\224 \228\235\255 \243\247\224\241\242\232\255 \226 \225\238\255\245 \213\224\238\241\224")
		--SystemNotice(role, "§µ §У§С§г §Я§Ц §з§У§С§д§С§Ц§д §Щ§а§Э§а§д§С §Х§Э§с §е§й§С§г§д§Ъ§с §У §Т§а§с§з §·§С§а§г§С")
		return 0
	end
end

function check_HasMoney(role)
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*100
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have >= Money_Need then
		return 1
	end
end

function begin_enter_garner2(role, copy_mgr) 
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	local lv= GetChaAttr(role, ATTR_LV)
	local Money_Need = lv*100
	local Money_Now = Money_Have - Money_Need
	SetChaAttrI( role , ATTR_GD , Money_Now )
	SystemNotice(role,"\194\231\237\238\241 \231\224 \226\245\238\228 "..Money_Need.." \231\238\235\238\242\224 ") 
	MoveCity( role, "Chaos Argent" )
end