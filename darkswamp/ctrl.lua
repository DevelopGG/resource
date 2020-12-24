function config(map)
    MapCanSavePos(map, 0) 
    MapCanPK(map, 1)
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 300)   
	MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function get_map_entry_pos_darkswamp()   

	local POS_X=2251
	local POS_Y=2788
	return POS_X , POS_Y

end


function init_entry(map)
    SetMapEntryMapName(map, "garner") 
    SetMapEntryTime(map, "2010/7/28/0/0", "0/1/0", "0/1/0", "0/1/0") 

end


function map_run_darkswamp( map )
end

function map_copy_run_darkswamp( map_copy )
end

function map_copy_run_special_darkswamp( map_copy )

end

function before_leave_darkswamp( role )
end

function after_enter_darkswamp( role , map_copy )
end