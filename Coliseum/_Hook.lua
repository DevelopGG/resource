Coliseum.Hook.PKM = function()
	local FuncName = 'GetExp_PKM'
	local OriginalFunction = _G[FuncName]
	_G[FuncName] = function(Monster, Player)
		local MapName = GetChaMapName(Player)
		if MapName == Coliseum.Conf.Map then
			Coliseum.PKM(Player, Monster)
		else
			OriginalFunction(Monster, Player)
		end
	end
end
Coliseum.Hook.MKP = function()
	local FuncName = 'GetExp_MKP'
	local OriginalFunction = _G[FuncName]
	_G[FuncName] = function(Player, Monster)
		local MapName = GetChaMapName(Player)
		if MapName == Coliseum.Conf.Map then
			Coliseum.MKP(Player, Monster)
		else
			OriginalFunction(Player, Monster)
		end
	end
end
Coliseum.Hook.Friendly = function()
	local FuncName = 'is_friend'
	local OriginalFunction = _G[FuncName]
	_G[FuncName] = function(ATKER, DEFER)
		if GetChaMapName(ATKER) == Coliseum.Conf.Map then
			if IsPlayer(ATKER) == IsPlayer(DEFER) then
				return 1
			else
				return 0
			end
		else
			return OriginalFunction(ATKER, DEFER)
		end
	end
end
Coliseum.Hook.PKM()
Coliseum.Hook.MKP()
Coliseum.Hook.Friendly()