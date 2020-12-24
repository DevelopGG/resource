
function config(Map)
	MapCanSavePos(Map, 0)
	MapCanPK(Map, 0)
	MapCopyNum(Map, Coliseum.Conf.Instances)
	SingleMapCopyPlyNum(Map, Coliseum.Conf.Players)
	MapCanTeam(Map, 1)
	MapType(Map, 8)
end
function get_map_entry_pos_Coliseum() 
end
function init_entry(Map)
end
function can_open_entry_Coliseum(Map)
end 
function after_enter_Coliseum(Player, MapCopy)
end
function before_leave_Coliseum(Player)
	local MapCopy = GetChaMapCopy(Player)
	local CopyID = GetMapCopyID2(MapCopy)
end
function map_copy_run_Coliseum(MapCopy)
	local CopyID = GetMapCopyID2(MapCopy)
	if not Coliseum.Conf.Enable or not Coliseum.Instance[CopyID] or (not Coliseum.Instance[CopyID].Active and GetMapActivePlayer(MapCopy) ~= 0) then
		DealAllActivePlayerInMap(MapCopy, 'Coliseum_Kick')
		return
	end
	if Coliseum.Instance[CopyID].Time == 0 then
		MapCopyNotice(MapCopy, string.format(Coliseum.Conf.Text.InstanceStart, Coliseum.Conf.Name, Coliseum.Conf.Time.Wave))
	else
		if (Coliseum.Instance[CopyID].Time - math.floor(Coliseum.Instance[CopyID].Time/Coliseum.Conf.Time.Wave) * Coliseum.Conf.Time.Wave) == 0 then
			Coliseum.Wave(MapCopy)
			MapCopyNotice(MapCopy, string.format(Coliseum.Conf.Text.WaveInit, Coliseum.Conf.Name, Coliseum.Instance[CopyID].Wave))
		end
		if (Coliseum.Instance[CopyID].Time - math.floor(Coliseum.Instance[CopyID].Time/Coliseum.Conf.Time.Interval) * Coliseum.Conf.Time.Interval) == 0 then
			MapCopyNotice(MapCopy, string.format(Coliseum.Conf.Text.Interval, Coliseum.Conf.Name, Coliseum.Instance[CopyID].Wave, (Coliseum.Instance[CopyID].Time / 60)))
		end
	end
	Coliseum.Instance[CopyID].Time = Coliseum.Instance[CopyID].Time + 1
	if GetMapCopyPlayerNum(MapCopy) == 0 then
		Coliseum.StartInstance(CopyID)
		ClearAllSubMapCha(MapCopy)
		ClearAllSubMapMonster(MapCopy)
		CloseMapCopy(Coliseum.Conf.Map, CopyID)
	end
end
function map_run_Coliseum(Map)
end
function map_copy_run_special_Coliseum(MapCopy)
end
function map_copy_close_Coliseum(MapCopy)

end