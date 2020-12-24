function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --Оствляем как есть.

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --Без понятия, не меняем ничего.

	local EntryName = " Мираж АлкашГрада "
    SetMapEntryEventName( entry, EntryName )
	
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --Объявления об открытии портала в Мираж Громограда.
    --Notice("В Москве ["..posx..","..posy.."] появился портал в Мираж АлкашГрада.")

end

function after_destroy_entry_leiting2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Объявление: По имеющейся информации, портал в Мираж АлкашГрада исчез!") 

end

function after_player_login_leiting2(entry, player_name)
    --map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --Объявления об открытии портала в Мираж Громограда.
   -- ChaNotice(player_name, "В Москве ["..posx..","..posy.."] появился портал в Параллельный мир.")

end


--Мираж Громограда(Системные Нотайсы)
--DS team
function check_can_enter_leiting2( role, copy_mgr )
	----------------------
	-- Проверка на форж --
	----------------------
	--Проверяем тело на форж
	local checkBody = EquipForgeCheck(role, enumEQUIP_BODY, '>', 20)
	--Проверяем перчатки на форж
	local checkGloves = EquipForgeCheck(role, enumEQUIP_GLOVE, '>', 20)
	--Проверяем ботинки на форж
	local checkBoots = EquipForgeCheck(role, enumEQUIP_SHOES, '>', 20)
	--Проверяем оружие слева в инвентаре на форж
	local checkWeap = EquipForgeCheck(role, enumEQUIP_RHAND, '>', 20)
	--Проверяем оружие справа в инвентаре на форж
	local checkWeap2 = EquipForgeCheck(role, enumEQUIP_LHAND, '>', 3)
	--Проверяем ожерелье на форж
	local checkNeck = EquipForgeCheck(role, enumEQUIP_NECK, '>', 20)
	--Проверяем кольцо слева в инвентаре на форж
	local checkRingL = EquipForgeCheck(role, enumEQUIP_HAND1, '>', 20)
	--Проверяем кольцо справа в инвентаре на форж
	local checkRingR = EquipForgeCheck(role, enumEQUIP_HAND2, '>', 20)
	if (checkBody == true and checkGloves == true and checkBoots == true and (checkWeap == true or checkWeap2 == true) and checkNeck == true and checkRingL == true and checkRingR == true) then
		return 1
	else
		Dbag = DelBagItem(Cha, 8129, 1)
		if Dbag == 1 then
			return 1
		else
		--HelpInfo( Cha, 0, "Чтобы войти в Мираж АлкашГрада, у тебя должен быть форж:_1. Тело +21 или выше;_2. Перчатки +21 или выше;_3. Ботинки +21 или выше;_4. Оружие +21 или выше;_5. Ожерелье +21 или выше;_6. Кольца +21 или выше. ")
		HelpInfo( role, 0,  "\215\242\238\225\251 \226\238\233\242\232 \226 \204\232\240\224\230 \192\235\234\224\248\195\240\224\228\224, \243 \242\229\225\255 \228\238\235\230\229\237 \225\251\242\252 \244\238\240\230:_1. \210\229\235\238 +21 \232\235\232 \226\251\248\229;_2. \207\229\240\247\224\242\234\232 +21 \232\235\232 \226\251\248\229;_3. \193\238\242\232\237\234\232 +21 \232\235\232 \226\251\248\229;_4. \206\240\243\230\232\229 +21 \232\235\232 \226\251\248\229;_5. \206\230\229\240\229\235\252\229 +21 \232\235\232 \226\251\248\229;_6. \202\238\235\252\246\224 +21 \232\235\232 \226\251\248\229.")
		return 0
		end
	end
	----------------------------
	-- Конец проверки на форж --
	----------------------------
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		PopupNotice(role, "Ты не можешь телепортироваться ")
		return 0    
	end
	if Lv(role) < 170 then
		PopupNotice(role, "Персонажи меньше 170 лвл не допускаются в Мираж АлкашГрада ")
		return 0    
	end
	
	local Num
	Num = CheckBagItem(role,2326)
	if Num < 1 then
		PopupNotice(role, "Для входа нужна Маска реальности ")	
		return 0
	end

	local Credit_Leiting2 = GetCredit(role)
	if Credit_Leiting2 < 15 then
		PopupNotice(role, "Ты не имеешь достаточно репутации, чтобы войти в Параллельный мир ")
		return 0
	else
		DelCredit(role,15)
		return 1
	end
end


function begin_enter_leiting2(role, copy_mgr)

	local Cha = TurnToCha(role)	
	local Dbag = 0
	Dbag = DelBagItem(Cha, 2326, 1)
	
	if Dbag == 1 then
		SystemNotice(role,"Вы вошли в Параллельный мир ") 
		MoveCity(role, "Thundoria Mirage")

	else
	
		SystemNotice(role, "Не удается войти в Параллельный мир ")
	end
end