
--	First we check if this a variable with this name is declared or not.
--	We don't want some variables to load each time, otherwise it will mess up timers and other important instance stuff.
if not Coliseum then
	Coliseum = {}
	Coliseum.Conf = {}
	Coliseum.Conf.Time = {}
	Coliseum.Conf.Adjust = {}
	Coliseum.Conf.Text = {}
	Coliseum.Conf.Require = {}
	Coliseum.Conf.Monster = {}
	Coliseum.Conf.Boss = {}
	Coliseum.Conf.Spawn = {}
	Coliseum.Instance = {}	
	Coliseum.Hook = {}
end

dofile(GetResPath("Coliseum/_Configuration.lua"))
dofile(GetResPath("Coliseum/_Hook.lua"))
dofile(GetResPath("Coliseum/ctrl.lua"))

Coliseum.Copies = Coliseum.Copies or Coliseum.Conf.Instances

Coliseum.CheckInstance = function()
	for CopyID = 1, Coliseum.Copies, 1 do
		if not Coliseum.Instance[CopyID] or not Coliseum.Instance[CopyID].Active then
			return CopyID
		end
	end
	return 0
end
Coliseum.CheckRequire = function(Player)
	if KitbagLock(Player, 0) == LUA_FALSE then
		SystemNotice(Player, string.format(Coliseum.Conf.Text.InventoryLocked, Coliseum.Conf.Name))
		return false
	end
	local Level = GetChaAttr(Player, ATTR_LV)
	if Coliseum.Conf.Require.MinLevel and Coliseum.Conf.Require.MinLevel ~= 0 and Level < Coliseum.Conf.Require.MinLevel then
		SystemNotice(Player, string.format(Coliseum.Conf.Text.BelowLevel, Coliseum.Conf.Name, Coliseum.Conf.Require.MinLevel))
		return false
	end
	if Coliseum.Conf.Require.MaxLevel and Coliseum.Conf.Require.MaxLevel ~= 0 and Level > Coliseum.Conf.Require.MaxLevel then
		SystemNotice(Player, string.format(Coliseum.Conf.Text.AboveLevel, Coliseum.Conf.Name, Coliseum.Conf.Require.MaxLevel))
		return false
	end
	if Coliseum.Conf.Require.ItemID ~= 0 and GetItemName(Coliseum.Conf.Require.ItemID) ~= 'Unknown' and CheckBagItem(Player, Coliseum.Conf.Require.ItemID) < 1 then
		SystemNotice(Player, string.format(Coliseum.Conf.Text.NoItem, Coliseum.Conf.Name, GetItemName(Coliseum.Conf.Require.ItemID)))
		return false
	end
	if GetChaAttr(Player, ATTR_GD) < Coliseum.Conf.Require.Gold then
		SystemNotice(Player, string.format(Coliseum.Conf.Text.NoGold, Coliseum.Conf.Name, Coliseum.Conf.Require.Gold))
		return false
	end
	if GetCredit(Player) < Coliseum.Conf.Require.Reputation then 
		SystemNotice(Player, string.format(Coliseum.Conf.Text.NoReputation, Coliseum.Conf.Name, Coliseum.Conf.Require.Reputation))
		return false
	end
	if CheckBagItem(Player, 3849) < 1 then
		SystemNotice(Player, string.format(Coliseum.Conf.Text.NoMedalHonor, Coliseum.Conf.Name, GetItemName(3849)))
		return false
	end
	local Medal = GetChaItem2(Player, 2, 3849)
	local Honor = GetItemAttr(Medal, ITEMATTR_VAL_STR)
	if Honor < Coliseum.Conf.Require.Honor then
		SystemNotice(Player, string.format(Coliseum.Conf.Text.NoHonor, Coliseum.Conf.Name, Coliseum.Conf.Require.Honor))
		return false
	end
	return true
end
Coliseum.TakeRequire = function(Player)
	TakeItem(Player, NPC, Coliseum.Conf.Require.ItemID, 1)
	TakeMoney(Player, NPC, Coliseum.Conf.Require.Gold)
	DelCredit(Player, Coliseum.Conf.Require.Reputation)
	
	local Medal = GetChaItem2(Player, 2, 3849)
	local Honor = GetItemAttr(Medal, ITEMATTR_VAL_STR)
	Honor = Honor - Coliseum.Conf.Require.Honor
	Honor = math.max(Honor, 0)
	SetItemAttr(Medal, ITEMATTR_VAL_STR, Honor)
end
Coliseum.Register = function(Player, NPC)
	if IsInTeam(Player) == 1 and IsTeamLeader(Player) == 0 then
		SystemNotice(Player, string.format(Coliseum.Conf.Text.NotPartyLeader, Coliseum.Conf.Name))
		return LUA_FALSE	
	end
	local CopyID = Coliseum.CheckInstance()
	if CopyID == 0 then
		SystemNotice(Player, string.format(Coliseum.Conf.Text.NoInstance, Coliseum.Conf.Name))
		return LUA_FALSE
	end
	local Players = {Player, GetTeamCha(Player, 0), GetTeamCha(Player, 1), GetTeamCha(Player, 2), GetTeamCha(Player, 3)}
	for A = 0, 3, 1 do
		if GetTeamCha(Player, A) ~= nil and ValidCha(GetTeamCha(Player, A)) == 1 then
			table.insert(Players, GetTeamCha(Player, A))
		end
	end
	if not Coliseum.Conf.Test then
		for _, PlayerI in pairs(Players) do
			if not Coliseum.CheckRequire(PlayerI) then
				SystemNotice(Player, string.format(Coliseum.Conf.Text.NotMetRequire, Coliseum.Conf.Name, GetChaDefaultName(PlayerI)))
				return LUA_FALSE
			end
		end
		for _, PlayerI in pairs(Players) do
			Coliseum.TakeRequire(PlayerI, NPC)
		end
	end
	Coliseum.StartInstance(CopyID)
	Coliseum.Instance[CopyID].Active = true
	for _, PlayerI in pairs(Players) do
		MoveCity(PlayerI, Coliseum.Conf.Name, CopyID)
		Coliseum.Instance[CopyID].PlayerNum = Coliseum.Instance[CopyID].PlayerNum + 1
	end
end
Coliseum.StartInstance = function(CopyID)
	Coliseum.Instance[CopyID] = {}
	Coliseum.Instance[CopyID].Active = false
	Coliseum.Instance[CopyID].Wave = 0
	Coliseum.Instance[CopyID].Time = 0
	Coliseum.Instance[CopyID].PlayerNum = 0
	Coliseum.Instance[CopyID].Monsters = {}
end
Coliseum.Kick = function(Player)
	BickerNotice(Player, Coliseum.Conf.Text.Kick)
	MoveCity(Player, '')
end
Coliseum_Kick = Coliseum.Kick
Coliseum.Dead = function(Player)
	BickerNotice(Player, Coliseum.Conf.Text.PlayerDied)
	MoveCity(Player, '')
end
Coliseum.Reward = function(Player)
	local Random = math.random(1, table.getn(Coliseum.Conf.Reward))
	local Reward = Coliseum.Conf.Reward[Random]
	if Reward.Honor ~= 0 then
		local Medal = GetChaItem2(Player, 2, 3849)
		local Honor = GetItemAttr(Medal, ITEMATTR_VAL_STR) + Reward.Honor
		SetItemAttr(Medal, ITEMATTR_VAL_STR, Honor)
	end
	if Reward.Item.ID ~= 0 then
		GiveItem(Player, 0, Reward.Item.ID, math.max(Reward.Item.Qty, 1), 4)
	end
	if Reward.Reputation ~= 0 then
		AddCreditX(Player, Reward.Reputation)
	end
	if Reward.Gold ~= 0 then
		AddMoney(Player, 0, Reward.Gold)
	end
end
Coliseum_Reward = Coliseum.Reward
Coliseum.Wave = function(MapCopy)
	local CopyID = GetMapCopyID2(MapCopy)
	Coliseum.Instance[CopyID].Wave = Coliseum.Instance[CopyID].Wave + 1
	local Adjust = Coliseum.Instance[CopyID].Wave * (Coliseum.Conf.Adjust.Wave / 100)
	if Coliseum.Instance[CopyID].PlayerNum > 1 then
		Adjust = Adjust + (Coliseum.Instance[CopyID].PlayerNum - 1) * (Coliseum.Conf.Adjust.Player / 100)
	end
	
	if (Coliseum.Instance[CopyID].Wave - math.floor(Coliseum.Instance[CopyID].Wave / 5) * 5) ~= 0 or Coliseum.Conf.Boss.MonsterSpawn then
		local Count = math.random(Coliseum.Conf.Monster.Minimum, Coliseum.Conf.Monster.Maximum)
		for A = 1, Count, 1 do
			local MonsterID = Coliseum.Conf.Monster.List[math.random(1, table.getn(Coliseum.Conf.Monster.List))]
			local PosX = math.random(Coliseum.Conf.Monster.MinPosX, Coliseum.Conf.Monster.MaxPosX) * 100
			local PosY = math.random(Coliseum.Conf.Monster.MinPosY, Coliseum.Conf.Monster.MaxPosY) * 100
			Coliseum.Summon(MonsterID, PosX, PosY, MapCopy, Adjust, false)
		end
	end
	if (Coliseum.Instance[CopyID].Wave - math.floor(Coliseum.Instance[CopyID].Wave / 5) * 5) == 0 then
		local MonsterID = Coliseum.Conf.Boss.List[math.random(1, table.getn(Coliseum.Conf.Boss.List))]
		local PosX = Coliseum.Conf.Boss.PosX * 100
		local PosY = Coliseum.Conf.Boss.PosY * 100
		Adjust = Adjust + Coliseum.Instance[CopyID].Wave * (Coliseum.Conf.Adjust.Boss / 100)
		Coliseum.Summon(MonsterID, PosX, PosY, MapCopy, Adjust, true)
	end
end
Coliseum.Summon = function(MonsterID, PosX, PosY, MapCopy, Adjustment, Boss)
	local Monster = CreateChaEx(MonsterID, PosX, PosY, 145, 60, MapCopy)
	SetChaLifeTime(Monster, -1)
	Coliseum.AttributeMod(Monster, ATTR_BMNATK, ATTR_MNATK, Adjustment)
	Coliseum.AttributeMod(Monster, ATTR_BMXATK, ATTR_MXATK, Adjustment)
	Coliseum.AttributeMod(Monster, ATTR_BDEF, ATTR_DEF, Adjustment)
	Coliseum.AttributeMod(Monster, ATTR_BHIT, ATTR_HIT, Adjustment)
	Coliseum.AttributeMod(Monster, ATTR_BFLEE, ATTR_FLEE, Adjustment)
	Coliseum.AttributeMod(Monster, ATTR_BPDEF, ATTR_PDEF, Adjustment)
	Coliseum.AttributeMod(Monster, ATTR_BMSPD, ATTR_MSPD, Adjustment)
	Coliseum.AttributeMod(Monster, ATTR_BASPD, ATTR_ASPD, Adjustment)
	Coliseum.AttributeMod(Monster, ATTR_MXHP, ATTR_MXHP, Adjustment)
	if Coliseum.Conf.Test then
		SetChaAIType(Monster, 0)
	end
	local CopyID = GetMapCopyID2(MapCopy)
	Coliseum.Instance[CopyID].Monsters[Monster] = Boss
	ReAll(Monster)
end
Coliseum.AttributeMod = function(Monster, BaseAttr, EditAttr, Amount)
	local Value = GetChaAttr(Monster, BaseAttr)
	Value = Value * (1 + Amount)
	Value = math.ceil(Value)
	SetChaAttrI(Monster, EditAttr, Value)
	SyncChar(Monster, 4)
end
Coliseum.PKM = function(Player, Monster)
	local MapCopy = GetChaMapCopy(Player)
	local CopyID = GetMapCopyID2(MapCopy)
	if Coliseum.Instance[CopyID].Monsters[Monster] then
		DealAllActivePlayerInMap(MapCopy, 'Coliseum_Reward')
	end
end
Coliseum.MKP = function(Player, Monster)
	Coliseum.Dead(Player)
end
AddBirthPoint(Coliseum.Conf.Name, Coliseum.Conf.Map, Coliseum.Conf.Spawn.PosX, Coliseum.Conf.Spawn.PosY)