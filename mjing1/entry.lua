function config_entry(entry)
	SetMapEntryEntiID(entry, 2492,1)
end

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)

	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: Ворота в край Авроры открыты. Поговорите с Виллем для получения большей информации. Удачи!")
end

function after_destroy_entry_mjing1(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Ворота в край Авроры закрыты. Следите за дальнейшими объявлениями.")
end

function after_player_login_mjing1(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: Ворота в край Авроры открыты. Поговорите с Виллем для получения большей информации. Удачи!")
end


function begin_enter_mjing1(role, copy_mgr) 
	SystemNotice(role,"‚ы вошли в [Љрай Ђвроры]") 
	MoveCity(role, "mjing1")
end 