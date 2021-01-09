function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) 
end 
function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
   
end

function after_destroy_entry_abandonedcity2(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function begin_enter_abandonedcity2(role, copy_mgr) 
    ABANDONEDCITY2_ENTRY_LUA_000001 = GetResString("ABANDONEDCITY2_ENTRY_LUA_000001")
    MoveCity(role, ABANDONEDCITY2_ENTRY_LUA_000001)
end 
