--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)
	MapCanPK(map, 1)
	MapType ( map , 10 )
end


function get_map_entry_pos_DreamIsland()   --设置入口的位置的坐标（坐标（米））
	local POS_X=0
	local POS_Y=0
	return POS_X , POS_Y
end

function init_entry(map)

end

function after_enter_DreamIsland( role , map_copy )
end

function before_leave_DreamIsland( role )
end

function map_copy_first_run_DreamIsland( map_copy )

end

function map_copy_run_DreamIsland( map_copy )
end
wangxiaohu = nil
wangxiaohuflag = nil --1.活 0.死
--每5秒执行一次的
function map_run_DreamIsland( map )

	------------------------罂粟花开----------------------活动BOSS测试用-------------------------------
	local Now_Time = tonumber(os.date("%H"))
	local Now_Minite =tonumber(os.date("%M"))
	local Now_Scend =  tonumber(os.date("%S"))
	local X = math.random(299,495)
	local Y = math.random(665,694)
	local X1 = X*100
	local Y1 = Y*100
	if Now_Time == 19 and Now_Minite ==30 and Now_Scend>0 and Now_Scend <6 then
	      if CheckWXHDead ( wangxiaohu ) == 2 or wangxiaohuflag== 0 then
		    wangxiaohu = CreateCha(1281, X1, Y1, 90, 60)-----60.单位.秒
			SetChaLifeTime(wangxiaohu,10800000)--存活时间3小时 单位.毫秒
			wangxiaohuflag = 1
			ScrollNotice ( "Night event Boss announcement: Wang Xiao Hu is at City of Dream ("..X..","..Y.."). What item will this unlucky bandit have on him?",1) 
		 end
	end
	
	if wangxiaohuflag == 1 then 
		local a = CheckWXHDead ( wangxiaohu ,1281)
	end
	
	if Now_Time == 22 and Now_Minite ==30 and Now_Scend>0 and Now_Scend <6 then
	   if wangxiaohuflag == 1 then
			ScrollNotice ( "Daily Boss Event Announcement: The wicked robber Wang Xiao Hu has been captured by Private - Goldy. Thank you everyone for the help!",1)
			wangxiaohuflag =0
		end
	end
	--ScrollNotice ( "虎="..CheckMonsterDead ( wangxiaohu ))
	------------------------罂粟花开----------------------活动BOSS测试用-------------------------------clear_target(c)
	-- local nowTime = GetNowTimeW()
	
	-- if math.mod(nowTime,1200)<5 then 
		-- ZTLBalance()
	-- end	
	-- if math.mod(nowTime,86400)<5 then 
		-- clear()
	-- end
	-- if math.mod(nowTime,1200)<5 then 
		-- Notice (" 各单位注意：白银城 2202，2776 出现了一头会说话的猪，据小道消息，该猪身上携带大量暑期礼物！")
	-- end	
	-- if math.mod(nowTime,1200)<5 then 
		-- Notice (" 年年七夕今又至，翩翩飞鹊各不同。银河渡桥人依旧，相思离苦化雨愁。织女正苦于没有喜鹊帮她搭鹊桥，快去废矿补给站门口1909,2800帮助她吧！")
	-- end	
	-- if math.mod(nowTime,86400)<5 then 
		-- XiqueNum = 0
		-- ScrollNotice (" 本日的七夕多倍经验奖励已经结束，新的一天新的开始，越早达成织女的心愿，可以获得的多倍经验时间就越长，更有想不到的奇遇在等着你！",3)
		-- Notice (" 本日的七夕多倍经验奖励已经结束，新的一天新的开始，越早达成织女的心愿，可以获得的多倍经验时间就越长，更有想不到的奇遇在等着你！")
	-- end	
--	Refresh_Round()
	----记录当前系统时间
	--[[彩票系统下线
	local issue = GetLotteryIssue()
	if issue~=nil then 
		local Now_Week = os.date("%w")
		local Now_WeekNum = tonumber(Now_Week)
		local Now_Time = os.date("%H")
		local NowTimeNum = tonumber(Now_Time)
		local now_Day= os.date("%d")
		local NowDayNum = tonumber(now_Day)
		local Now_Minite = os.date("%M")
		local NowMiniteNum = tonumber(Now_Minite)
		local Now_Scend=  os.date("%S")		-----秒
		local Now_ScendNum = tonumber(Now_Scend)
		local CheckTimeNum=NowTimeNum*3600+NowMiniteNum*60+Now_ScendNum
		local time_mod=math.mod(CheckTimeNum,5)
		TimeNum = TimeNum+5 
		local i = 0
		local  no1 = 0
		local  no2 = 0
		local  no3 = 0
		local  no4 = 0
		local  no5 = 0
		local  no6 = 0
		local  no0 = 0
		
		if Now_WeekNum == 1 and NowTimeNum == 12 and NowMiniteNum == 55 and Now_ScendNum >= 50 and Now_ScendNum <55     then  
			Notice (" 彩票系统全新开启!更多中奖机会,更诱惑的大奖等你来拿!现在三大主城均可参与彩票的购买和兑换!白银城2294,2822,沙岚城893,3501,冰狼堡1281,515.实现终极梦想,获得终极装备!~买彩票~我看行!")
		end

		if Now_WeekNum == 3 and NowTimeNum == 17 and NowMiniteNum == 55 and Now_ScendNum >= 50 and Now_ScendNum <55    then  
			Notice (" 广告:天呐!快看!黑龙出现在三大主城!它来主城干嘛!屠城?!~不~它来买彩票!~全新的彩票系统,实现终极梦想,获得终极装备!~买彩票~我看行!")
		end
		if Now_WeekNum == 5 and NowTimeNum == 12 and NowMiniteNum == 55 and Now_ScendNum >= 50 and Now_ScendNum <55     then  
			Notice (" 彩票系统全新开启!更多中奖机会,更诱惑的大奖等你来拿!现在三大主城均可参与彩票的购买和兑换!实现终极梦想,获得终极装备!~随着版本更新,奖品随之更新!敬请期待!!")
		end
		if Now_WeekNum == 6 and NowTimeNum == 19 and NowMiniteNum == 55 and Now_ScendNum >= 50 and Now_ScendNum <55 and  i < 1  then   				-----触发产生期号
			Notice (" 彩票马上要更新下一期了!填写好彩票的玩家去找彩票兑换员准备兑换大奖喽!彩票点在白银城2294,2822,沙岚城893,3501,冰狼堡1281,515")
			local winItemno = CalWinLottery(issue, 2)
		end
		if GetWinLotteryItemnoX(issue-1,1)~=nil then 
			if CheckTimeNum>=72000 and CheckTimeNum<72005 then              ---每十五分钟广播一位中奖号码，从个位开始
				no1 = GetWinLotteryItemnoX(issue-1,1)
				Notice ("彩票大奖已经开出，要购买下期彩票的玩家找彩票贩卖员彼德买彩票!")
				Notice("中奖号码的十万位数是："..no1)
			end
			if CheckTimeNum>=72900 and CheckTimeNum<72905 then               --十位
				no2 = GetWinLotteryItemnoX(issue-1,2)
				Notice("中奖号码的万位数是："..no2)
			end
			if CheckTimeNum>=73800 and CheckTimeNum<73805 then               --百位
				no3 = GetWinLotteryItemnoX(issue-1,3)
				Notice("中奖号码的千位数是："..no3)
			end
			if CheckTimeNum>=74700 and CheckTimeNum<74705 then               --千位
				no4 = GetWinLotteryItemnoX(issue-1,4)
				Notice("中奖号码的百位数是："..no4)
			end
			if CheckTimeNum>=75600 and CheckTimeNum<75605 then               --万位
				no5 = GetWinLotteryItemnoX(issue-1,5)
				Notice("中奖号码的十位数是："..no5)
			end
			if CheckTimeNum>=76500 and CheckTimeNum<76505 then               --十万位
				no6 = GetWinLotteryItemnoX(issue-1,6)
				Notice("中奖号码的个位数是："..no6)
			end
			if CheckTimeNum>=77400 and CheckTimeNum<77405 then               --十万位
				local issue = GetLotteryIssue()
				local NOWqihao = issue - 1
				Notice("大奖已经开出，现在到白银城2294,2822,沙岚城893,3501,冰狼堡1281,515可以参加兑奖，您也可以购买新一期的彩票，新的彩票期号是："..issue)
				no0 = GetWinLotteryItemnoX(issue-1,0)
				Notice("本期可兑换的中奖号码是："..no0)
			end
			if CheckTimeNum>=77700 and CheckTimeNum<77705 then               --十万位
				local issue = GetLotteryIssue()
				local NOWqihao = issue - 1
				Notice("大奖已经开出，现在到白银城2294,2822,沙岚城893,3501,冰狼堡1281,515可以参加兑奖，您也可以购买新一期的彩票，新的彩票期号是："..issue)
				no0 = GetWinLotteryItemnoX(issue-1,0)
				Notice("本期可兑换的中奖号码是："..no0)
			end
			if CheckTimeNum>=78000 and CheckTimeNum<78005 then               --十万位
				local issue = GetLotteryIssue()
				local NOWqihao = issue - 1
				Notice("大奖已经开出，现在到白银城2294,2822,沙岚城893,3501,冰狼堡1281,515可以参加兑奖，您也可以购买新一期的彩票，新的彩票期号是："..issue)
				no0 = GetWinLotteryItemnoX(issue-1,0)
				Notice("本期可兑换的中奖号码是："..no0)
			end
			if CheckTimeNum>=78300 and CheckTimeNum<78305 then               --十万位
				local issue = GetLotteryIssue()
				local NOWqihao = issue - 1
				Notice("大奖已经开出，现在到白银城2294,2822,沙岚城893,3501,冰狼堡1281,515可以参加兑奖，您也可以购买新一期的彩票，新的彩票期号是："..issue)
				no0 = GetWinLotteryItemnoX(issue-1,0)
				Notice("本期可兑换的中奖号码是："..no0)
			end
			TimeNum=0	
		end
	end
	]]
	----------------竞技场
--	local now_Day= os.date("%d")
--	local NowDayNum = tonumber(now_Day)
--	local i = 8
--	for i = 8 , 31 , 3  do
--		if NowDayNum == i+2 and NowTimeNum == 23 then
--			SetMaxBallotTeamRelive()
--			UpdateState()
--			return LUA_TRUE
--		else
--			return LUA_FALSE
--		end	
--	end	 
end

--地图关闭时执行
function map_copy_close_DreamIsland ( map_copy )
end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_DreamIsland( map ) 
end 

function map_copy_run_special_DreamIsland(map)
end
