function config_entry(entry) 
	SetMapEntryEntiID(entry, 193,1)
end

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)

	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	--MJING4_ENTRY_LUA_000001 = GetResString("MJING4_ENTRY_LUA_000001")
	--Notice(MJING4_ENTRY_LUA_000001)
end

function after_destroy_entry_mjing4(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	--MJING3_ENTRY_LUA_000002 = GetResString("MJING3_ENTRY_LUA_000002")
	--Notice(MJING3_ENTRY_LUA_000002) 
end

function after_player_login_mjing4(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	--MJING4_ENTRY_LUA_000002 = GetResString("MJING4_ENTRY_LUA_000002")
	--ChaNotice(player_name, MJING4_ENTRY_LUA_000002)
end