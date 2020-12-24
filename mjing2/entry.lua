function config_entry(entry)
	SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry)
	local copy_mgr = GetMapEntryCopyObj(entry, 0)

	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
end

function after_destroy_entry_mjing2(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
end

function after_player_login_mjing2(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
end

function begin_enter_mjing1(role, copy_mgr) 
	SystemNotice(role,"Вы вошли в [Край Тьмы]") 
	MoveCity(role, "mjing2")
end 