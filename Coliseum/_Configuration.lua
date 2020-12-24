	-- ******************************************************************************************************************************************************************************* --
	-- ************************************************************************ Coliseum - Custom Map Scripts ************************************************************************ --
	-- ***************************************************************************** Scripted by Angelix ***************************************************************************** --
	-- ********************************************************************** Exclusive for KingOfGorillas#6434 ********************************************************************** --
	-- ******************************************************************************************************************************************************************************* --

	-- ******************************************************************************************************************************************************************************* --
	-- ************************************************************************* Main Configuration Variable ************************************************************************* --
	-- ******************************************************************************************************************************************************************************* --
	Coliseum.Conf.Enable = true															--	Enable or disable the whole map script.
	Coliseum.Conf.Test = false															--	Test mode. If activated, some things work differently in order to test the scripts.
	Coliseum.Conf.Name = 'Coliseum'														--	Map name used through texts.
	Coliseum.Conf.Map = 'Coliseum'														--	Map name used in files, must match exactly.
	Coliseum.Conf.Instances = 5															--	Number of available instances at a single time. This won't update unless you restart GameServer.
	Coliseum.Conf.Players = 5															--	Number of players that can enter a single instance. Maximum is 5.
	Coliseum.Conf.Spawn.PosX = 50														--	Coordinate X where player will spawn.
	Coliseum.Conf.Spawn.PosY = 70														--	Coordinate Y where player will spawn.
	-- ******************************************************************************************************************************************************************************* --
	-- ********************************************************************* Requirements Configuration Variable ********************************************************************* --
	-- ******************************************************************************************************************************************************************************* --
	Coliseum.Conf.Require.MinLevel = 150													--	Minimum level to enter the map. Set to '0' or 'nil' if not needed.
	Coliseum.Conf.Require.MaxLevel = 400													--	Maximum level to enter the map. Set to '0' or 'nil' if not needed.
	Coliseum.Conf.Require.ItemID = 0000													--	Item required to enter map (and taken upon entering).
	Coliseum.Conf.Require.Gold = 1000000														--	Gold required to enter map (and taken upon entering).
	Coliseum.Conf.Require.Reputation = 20												--	Reputation required to enter map (and taken upon entering).
	Coliseum.Conf.Require.Honor = 0													--	Honor required to enter map (and taken upon entering).
	-- ******************************************************************************************************************************************************************************* --
	-- ************************************************************************* Time Configuration Variable ************************************************************************* --
	-- ******************************************************************************************************************************************************************************* --
	Coliseum.Conf.Time.Interval = 60													--	Time (in seconds) for an announcement to appear.
	Coliseum.Conf.Time.Wave = 30														--	Time (in seconds) for a new wave to start.
	-- ******************************************************************************************************************************************************************************* --
	-- ********************************************************************** Difficulty Configuration Variable ********************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
	Coliseum.Conf.Adjust.Wave = 1														--	Monster attribute increase (in percentage) by wave number.
	Coliseum.Conf.Adjust.Player = 10													--	Monster attribute increase (in percentage) by number of player(s) that entered the instance.
	Coliseum.Conf.Adjust.Boss = 10														--	Monster attribute increase (in percentage) if it's a boss wave.
	-- ******************************************************************************************************************************************************************************* --
	-- **************************************************************************** Monster Configuration **************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
	Coliseum.Conf.Monster.List = {1532, 1533, 1534, 1536, 1538}							--	List of monsters that can spawn in a wave at random.
	Coliseum.Conf.Monster.Minimum = 1													--	Minimum amount of monsters spawned per wave.
	Coliseum.Conf.Monster.Maximum = 5													--	Maximum amount of monsters spawned per wave.
	Coliseum.Conf.Monster.MinPosX = 28													--	Minimum coordinate in X where monsters can spawn.
	Coliseum.Conf.Monster.MaxPosX = 86													--	Maximum coordinate in X where monsters can spawn..
	Coliseum.Conf.Monster.MinPosY = 32													--	Minimum coordinate in Y where monsters can spawn.
	Coliseum.Conf.Monster.MaxPosY = 83													--	Maximum coordinate in Y where monsters can spawn.
	-- ******************************************************************************************************************************************************************************* --
	-- **************************************************************************** Rewards Configuration **************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
	--[[
		When a monster consider a "boss" is killed at any time, all players in that instance will be given a reward. That reward will be randomized from any of the following lines.
		The randomness will pick a line and give everything in it.
		-	So if the line has only an item, only that will be given.
		-	If a line has several things (ie. an item, honor, reputation and gold), it will give everything in that line.
	]]--
	Coliseum.Conf.Reward = {
		{Item = {ID = 8122, Qty = 3}, Honor = 0, Reputation = 5, Gold = 100000},
		{Item = {ID = 8122, Qty = 3}, Honor = 0, Reputation = 5, Gold = 500000},
		{Item = {ID = 8122, Qty = 3}, Honor = 0, Reputation = 5, Gold = 5000000},
		{Item = {ID = 8123, Qty = 3}, Honor = 0, Reputation = 5, Gold = 10000000},
		{Item = {ID = 8124, Qty = 3}, Honor = 0, Reputation = 5, Gold = 30000000}
							}
	-- ******************************************************************************************************************************************************************************* --
	-- *************************************************************************** Boss Wave Configuration *************************************************************************** --
	-- ******************************************************************************************************************************************************************************* --
	Coliseum.Conf.Boss.List = {1503, 1507, 1511, 1515, 1522}							--	List of bosses that can spawn in a boss wave at random. Only one gets chosen.
	Coliseum.Conf.Boss.PosX = Coliseum.Conf.Spawn.PosX									--	Coordinate in X where boss will spawn.
	Coliseum.Conf.Boss.PosY = Coliseum.Conf.Spawn.PosY									--	Coordinate in Y where boss will spawn.
	Coliseum.Conf.Boss.MonsterSpawn = false												--	Spawn a set of monsters along with boss? If 'true' then they will spawn according to above configuration.
	-- ******************************************************************************************************************************************************************************* --
	-- ************************************************************************* Text Configuration Variable ************************************************************************* --
	-- ******************************************************************************************************************************************************************************* --
	-- Coliseum.Conf.Text.NotActive = 'This feature is not currently active.'
	-- Coliseum.Conf.Text.Kick = 'Stay out of the map, otherwise some functions might stop working.'
	-- Coliseum.Conf.Text.InstanceStart = '[%s]: Instance has started! First wave will appear in %d second(s).'
	-- Coliseum.Conf.Text.WaveInit = '[%s]: Wave # %d has started!'
	-- Coliseum.Conf.Text.Interval = '[%s]: Currently on wave # %d and %d minute(s) have passed.'
	-- Coliseum.Conf.Text.BelowLevel = 'You cannot enter [%s] since you\'re below level %d.'
	-- Coliseum.Conf.Text.AboveLevel = 'You cannot enter [%s] since you\'re above level %d.'
	-- Coliseum.Conf.Text.NoItem = 'You cannot enter [%s] since you do not have [%s].'
	-- Coliseum.Conf.Text.NoMedalHonor = 'You cannot enter [%s] since you do not have [%s].'
	-- Coliseum.Conf.Text.NoHonor = 'You cannot enter [%s] since you do not have %d honor point(s).'
	-- Coliseum.Conf.Text.NoGold = 'You cannot enter [%s] since you do not have %d gold.'
	-- Coliseum.Conf.Text.NoReputation = 'You cannot enter [%s] since you do not have %d reputation.'
	-- Coliseum.Conf.Text.NotPartyLeader = 'You cannot enter [%s] since you\'re in a team and you\'re not party leader.'
	-- Coliseum.Conf.Text.InventoryLocked = 'You cannot enter [%s] since your inventory is locked.'
	-- Coliseum.Conf.Text.NoInstance = 'All instances of [%s] are currently occupied.'
	-- Coliseum.Conf.Text.PlayerDied = '[%s]: You have died and been kicked out of the map.'
	-- Coliseum.Conf.Text.NotMetRequire = '[%s]: Player [%s] from your team does not meet a requirement.'
	Coliseum.Conf.Text.NotActive = '\221\242\224 \244\243\237\234\246\232\255 \226 \237\224\241\242\238\255\249\229\229 \226\240\229\236\255 \237\229 \224\234\242\232\226\237\224.'
	Coliseum.Conf.Text.Kick = 'Stay out of the map, otherwise some functions might stop working.'
	Coliseum.Conf.Text.InstanceStart = '[%s]: \204\238\237\241\242\240\251 \227\238\242\238\226\251! \207\229\240\226\224\255 \226\238\235\237\224 \237\224\247\237\229\242\241\255 \247\229\240\229\231 %d \241\229\234\243\237\228.'
	Coliseum.Conf.Text.WaveInit = '[%s]: \194\238\235\237\224 # %d \237\224\247\224\235\224\241\252!'
	Coliseum.Conf.Text.Interval = '[%s]: \207\240\238\248\235\238 # %d \226\238\235\237\224 \232 %d \236\232\237\243\242.'
	Coliseum.Conf.Text.BelowLevel = '\194\251 \228\238\235\230\237\251 \225\251\242\252 [%s] \237\229 \237\232\230\229 \243\240\238\226\237\255 %d.'
	Coliseum.Conf.Text.AboveLevel = '\194\251 \228\238\235\230\237\251 \225\251\242\252 [%s] \237\229 \226\251\248\229 \243\240\238\226\237\255 %d.'
	Coliseum.Conf.Text.NoItem = '\194\251 \237\229 \236\238\230\229\242\229 \226\238\233\242\232 [%s] 211 \226\224\241 \237\229\242 [%s].'
	Coliseum.Conf.Text.NoMedalHonor = '\194\251 \237\229 \236\238\230\229\242\229 \226\238\233\242\232 [%s] \239\238\241\234\238\235\252\234\238 \243 \226\224\241 \237\229\242 [%s].'
	Coliseum.Conf.Text.NoHonor = '\194\251 \237\229 \236\238\230\229\242\229 \226\238\233\242\232 [%s] \242.\234. \243 \226\224\241 \237\229\242  %d \238\247\234\238\226 \247\229\241\242\232.'
	Coliseum.Conf.Text.NoGold = '\194\251 \237\229 \236\238\230\229\242\229 \226\238\233\242\232 [%s] \243 \226\224\241 \237\229\242  %d \231\238\235\238\242\224.'
	Coliseum.Conf.Text.NoReputation = '\194\251 \237\229 \236\238\230\229\242\229 \226\238\233\242\232 [%s] \243 \226\224\241 \237\229\242  %d \240\229\239\243\242\224\246\232\232.'
	Coliseum.Conf.Text.NotPartyLeader = '\194\251 \237\229 \236\238\230\229\242\229 \226\238\233\242\232 [%s] \242.\234. \226\251 \237\229 \235\232\228\229\240 \238\242\240\255\228\224.'
	Coliseum.Conf.Text.InventoryLocked = '\194\251 \237\229 \236\238\230\229\242\229 \226\238\233\242\232 [%s] \242.\234. \226\224\248 \232\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237..'
	Coliseum.Conf.Text.NoInstance = '\194\241\229 \234\238\235\232\231\229\232  [%s] \241\229\233\247\224\241 \231\224\237\255\242\251.'
	Coliseum.Conf.Text.PlayerDied = '[%s]: \194\251 \243\236\229\240\235\232 \232 \237\229 \236\238\230\229\242\229 \226\238\233\242\232 \238\225\240\224\242\237\238, \239\238\234\224 \237\229 \231\224\234\238\237\247\232\242\241\255 \239\240\238\248\235\251\233 \202\238\235\232\231\229\233.'
	Coliseum.Conf.Text.NotMetRequire = '[%s]: \200\227\240\238\234 [%s] \232\231 \226\224\248\229\233 \234\238\236\224\237\228\251 \237\229 \241\238\238\242\226\229\242\241\242\226\243\229\242 \242\240\229\225\238\226\224\237\232\255\236.'
	
	