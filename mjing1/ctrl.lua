function config(map)
	MapCanSavePos(map, 0)
	MapCanPK(map, 1)
	SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 1)
end

function get_map_entry_pos_mjing1()

	local POS_X=2168
	local POS_Y=2789
	return POS_X , POS_Y
end


function init_entry(map)
	SetMapEntryMapName(map, "garner")
	 SetMapEntryTime(map, "2005/8/30/0/0", "0/1/0", "0/1/0", "0/1/0")
end

function map_run_mjing1(map)
end

function get_map_entry_pos_mjing1()
end

function after_enter_mjing1( role , map_copy )
--AfterEnter(role)
end

function before_leave_mjing1( role )
end