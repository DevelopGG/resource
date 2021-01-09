--此文件中，凡是可能被多次执行的函数，函数名都要加上地图名前缀

function config(map)

end


function get_map_entry_pos_garner()   --设置入口的位置的坐标（坐标（米））
	local POS_X=0
	local POS_Y=0
	return POS_X , POS_Y
end

function init_entry(map)

end

function after_enter_garner( role , map_copy )
end

function before_leave_garner( role )
end

function map_copy_first_run_garner( map_copy )

end

function map_copy_run_garner( map_copy )
end

--每5秒执行一次的
function map_run_garner( map )
	local nowTime = GetNowTimeW()
	
	if math.mod(nowTime,1200)<5 then 
		ZTLBalance()
	end	
	if math.mod(nowTime,86400)<5 then 
		clear()
	end
	if math.mod(nowTime,1200)<5 then 
		GARNER_CTRL_LUA_000001 = GetResString("GARNER_CTRL_LUA_000001")
		Notice (GARNER_CTRL_LUA_000001)
	end	
	-------------------------------------zhangliang--------------------抓捕王小虎----------
	local now_hour= tonumber(os.date("%H"))		-------------时 
	local now_miniute= tonumber(os.date("%M"))	-------------分    
	local CheckDateNum = now_hour*100 +now_miniute
	local NowSecond = tonumber(os.date("%S"))			-------秒
	if now_hour == 0  and now_miniute == 0 and  NowSecond < 6 then
		Clear_Event_Record_By_Event_Name( "Capture the fearsome Wang Xiao Hu" )
	end
	
	--------------------------------------------------圣诞BOSS-------------------------------
	-- local now_miniute= os.date("%M")	-------------分 
	-- local now_scend=  os.date("%S")		-------------秒
	
	-- now_miniute= tonumber(now_miniute)
	-- now_scend= tonumber(now_scend)	-------------秒
	-- if now_miniute == 2 and now_scend>0 and now_scend <6 then
	    -- SDBOSS = CreateCha(1333, 207300, 276500, 90, 60)-----60.单位.秒
		-- SetChaLifeTime(SDBOSS,3600000)--存活时间1小时 单位.毫秒
		-- SDBOSS1 = CreateCha(1334, 207500, 276500, 90, 60)-----60.单位.秒
		-- SetChaLifeTime(SDBOSS1,3600000)--存活时间1小时 单位.毫秒
		-- SDBOSS2 = CreateCha(1334, 207700, 276500, 90, 60)-----60.单位.秒
		-- SetChaLifeTime(SDBOSS2,3600000)--存活时间1小时 单位.毫秒
		-- SDBOSS3 = CreateCha(1334, 208000, 276500, 90, 60)-----60.单位.秒
		-- SetChaLifeTime(SDBOSS3,3600000)--存活时间1小时 单位.毫秒
		-- SDBOSS4 = CreateCha(1334, 208200, 276500, 90, 60)-----60.单位.秒
		-- SetChaLifeTime(SDBOSS4,3600000)--存活时间1小时 单位.毫秒
		-- SDBOSS5 = CreateCha(1334, 208500, 276500, 90, 60)-----60.单位.秒
		-- SetChaLifeTime(SDBOSS5,3600000)--存活时间1小时 单位.毫秒
		-- ScrollNotice ( "<<Christmas Event-Siege of Evil Claus>>announcement: Evil Claus and his pet reindeer are committing atrocities near Argent City(2073,2765).Hurry now to apprenhend him~~~",1) 
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
			GARNER_CTRL_LUA_000002 = GetResString("GARNER_CTRL_LUA_000002")
			Notice (GARNER_CTRL_LUA_000002)
		end

		if Now_WeekNum == 3 and NowTimeNum == 17 and NowMiniteNum == 55 and Now_ScendNum >= 50 and Now_ScendNum <55    then  
			GARNER_CTRL_LUA_000003 = GetResString("GARNER_CTRL_LUA_000003")
			Notice (GARNER_CTRL_LUA_000003)
		end
		if Now_WeekNum == 5 and NowTimeNum == 12 and NowMiniteNum == 55 and Now_ScendNum >= 50 and Now_ScendNum <55     then  
			GARNER_CTRL_LUA_000004 = GetResString("GARNER_CTRL_LUA_000004")
			Notice (GARNER_CTRL_LUA_000004)
		end
		if Now_WeekNum == 6 and NowTimeNum == 19 and NowMiniteNum == 55 and Now_ScendNum >= 50 and Now_ScendNum <55 and  i < 1  then   				-----触发产生期号
			GARNER_CTRL_LUA_000005 = GetResString("GARNER_CTRL_LUA_000005")
			Notice (GARNER_CTRL_LUA_000005)
			local winItemno = CalWinLottery(issue, 2)
		end
		if GetWinLotteryItemnoX(issue-1,1)~=nil then 
			if CheckTimeNum>=72000 and CheckTimeNum<72005 then              ---每十五分钟广播一位中奖号码，从个位开始
				no1 = GetWinLotteryItemnoX(issue-1,1)
				GARNER_CTRL_LUA_000006 = GetResString("GARNER_CTRL_LUA_000006")
				Notice (GARNER_CTRL_LUA_000006)
				GARNER_CTRL_LUA_000007 = GetResString("GARNER_CTRL_LUA_000007")
				Notice(GARNER_CTRL_LUA_000007..no1)
			end
			if CheckTimeNum>=72900 and CheckTimeNum<72905 then               --十位
				no2 = GetWinLotteryItemnoX(issue-1,2)
				GARNER_CTRL_LUA_000008 = GetResString("GARNER_CTRL_LUA_000008")
				Notice(GARNER_CTRL_LUA_000008..no2)
			end
			if CheckTimeNum>=73800 and CheckTimeNum<73805 then               --百位
				no3 = GetWinLotteryItemnoX(issue-1,3)
				GARNER_CTRL_LUA_000009 = GetResString("GARNER_CTRL_LUA_000009")
				Notice(GARNER_CTRL_LUA_000009..no3)
			end
			if CheckTimeNum>=74700 and CheckTimeNum<74705 then               --千位
				no4 = GetWinLotteryItemnoX(issue-1,4)
				GARNER_CTRL_LUA_000010 = GetResString("GARNER_CTRL_LUA_000010")
				Notice(GARNER_CTRL_LUA_000010..no4)
			end
			if CheckTimeNum>=75600 and CheckTimeNum<75605 then               --万位
				no5 = GetWinLotteryItemnoX(issue-1,5)
				GARNER_CTRL_LUA_000011 = GetResString("GARNER_CTRL_LUA_000011")
				Notice(GARNER_CTRL_LUA_000011..no5)
			end
			if CheckTimeNum>=76500 and CheckTimeNum<76505 then               --十万位
				no6 = GetWinLotteryItemnoX(issue-1,6)
				GARNER_CTRL_LUA_000012 = GetResString("GARNER_CTRL_LUA_000012")
				Notice(GARNER_CTRL_LUA_000012..no6)
			end
			if CheckTimeNum>=77400 and CheckTimeNum<77405 then               --十万位
				local issue = GetLotteryIssue()
				local NOWqihao = issue - 1
				GARNER_CTRL_LUA_000013 = GetResString("GARNER_CTRL_LUA_000013")
				Notice(GARNER_CTRL_LUA_000013..issue)
				no0 = GetWinLotteryItemnoX(issue-1,0)
				GARNER_CTRL_LUA_000014 = GetResString("GARNER_CTRL_LUA_000014")
				Notice(GARNER_CTRL_LUA_000014..no0)
			end
			if CheckTimeNum>=77700 and CheckTimeNum<77705 then               --十万位
				local issue = GetLotteryIssue()
				local NOWqihao = issue - 1
				GARNER_CTRL_LUA_000013 = GetResString("GARNER_CTRL_LUA_000013")
				Notice(GARNER_CTRL_LUA_000013..issue)
				no0 = GetWinLotteryItemnoX(issue-1,0)
				GARNER_CTRL_LUA_000014 = GetResString("GARNER_CTRL_LUA_000014")
				Notice(GARNER_CTRL_LUA_000014..no0)
			end
			if CheckTimeNum>=78000 and CheckTimeNum<78005 then               --十万位
				local issue = GetLotteryIssue()
				local NOWqihao = issue - 1
				GARNER_CTRL_LUA_000013 = GetResString("GARNER_CTRL_LUA_000013")
				Notice(GARNER_CTRL_LUA_000013..issue)
				no0 = GetWinLotteryItemnoX(issue-1,0)
				GARNER_CTRL_LUA_000014 = GetResString("GARNER_CTRL_LUA_000014")
				Notice(GARNER_CTRL_LUA_000014..no0)
			end
			if CheckTimeNum>=78300 and CheckTimeNum<78305 then               --十万位
				local issue = GetLotteryIssue()
				local NOWqihao = issue - 1
				GARNER_CTRL_LUA_000013 = GetResString("GARNER_CTRL_LUA_000013")
				Notice(GARNER_CTRL_LUA_000013..issue)
				no0 = GetWinLotteryItemnoX(issue-1,0)
				GARNER_CTRL_LUA_000014 = GetResString("GARNER_CTRL_LUA_000014")
				Notice(GARNER_CTRL_LUA_000014..no0)
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
function map_copy_close_garner ( map_copy )
end
		
--地图开关判断——————————————————————————————————————————

function can_open_entry_garner( map ) 
end 

function map_copy_run_special_garner(map)
end
