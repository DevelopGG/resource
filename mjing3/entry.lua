function config_entry(entry)
end

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0) 

	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Ворота в край Тьмы открыты. Поговорите с Виллем для получения большей информации. Удачи!") 
end

function after_destroy_entry_mjing3(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Ворота в край Тьмы закрыты. Следите за дальнейшими объявлениями.") 
end

function after_player_login_mjing3(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	ChaNotice(player_name, "Объявление: Ворота в край Тьмы открыты. Поговорите с Виллем для получения большей информации. Удачи!") 
end