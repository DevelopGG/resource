print( "Loading Functions.lua" )
MFRADIX					= 100 
CRTRADIX				= 100 
ATKER					= 0 
DEFER					= 1 
count_haidao			= 0
count_haijun			= 0
five_seconds			= 0
second_five_seconds 	= 0
time_can_setmonster 	= 0
time_can_setnvsheng 	= 0
check_need_show 		= 0 
create_boss_hj 			= 0
create_boss_hd 			= 0
count_haijun2 			= 0
count_haidao2 			= 0
five_seconds2 			= 0
second_five_seconds2 	= 0
time_can_setmonster2 	= 0
time_can_setnvsheng2 	= 0
check_need_show2 		= 0
create_boss_hj2 		= 0
create_boss_hd2 		= 0


-- Отрисовка ников (by LifeIsGood)
function SetChaNameByVision(role, opponent)

	local final_name = GetChaDefaultName(opponent)

	return final_name

end
---------------------------------------------
--- Призыв мини-боссов за Пламенные Баксы ---
---------------------------------------------
function Spawn_MiniBoss(role, MonsterID, lifetime, iditem, count)
	local x, y = GetChaPos(role)
	---Проверяем баксы
	local CheckBaks = DelBagItem( role , iditem , count )
	if CheckBaks == 1 then
		local CreateMonster = CreateCha( MonsterID , x , y , 145 , 30 )
		SetChaLifeTime( CreateMonster, lifetime )
	else
		--HelpInfo(role, 0, "Вам не хватает предметов для вызова босса!")
		HelpInfo(role, 0, "\194\224\236 \237\229 \245\226\224\242\224\229\242 \239\240\229\228\236\229\242\238\226 \228\235\255 \226\251\231\238\226\224 \225\238\241\241\224!")
	end
end

--Монстр пропадает, но не убит.
function event_cha_lifetime(role)

end

function get_repatriate_city_guildwar(role)

  local map_name_role_guildwar = GetChaMapName ( role )
  return map_name_role_guildwar

end

function get_repatriate_city_guildwar2(role)

  local map_name_role_guildwar2 = GetChaMapName ( role )
  return map_name_role_guildwar2

end

atk_statecheck = {} 
def_statecheck = {} 

function Reset_Statecheck () 
	for i = 1 , 100 , 1 do 
		atk_statecheck[i] = 0 
		def_statecheck[i] = 0 
	end 
end 

--Дистанция получения опыта
function EightyLv_ExpAdd ( cha , expadd ) 
	if ValidCha (cha) ==1 then
		if ChaIsBoat ( cha ) == 0 then
			if Lv ( cha ) >= 80 then 
				expadd = math.floor ( expadd / 50 ) 
			end 
			if expadd == 0 then 
				SystemNotice ( TurnToCha(cha) , "Дистанция до цели слишком велика! " )
			end 
		end 
		exp = GetChaAttr ( cha , ATTR_CEXP ) 
		exp = exp + expadd 
		SetCharaAttr ( exp , cha , ATTR_CEXP ) 
	end 
end 


function Check_State ( atk_role , def_role ) 
	Reset_Statecheck() 
	atk_statecheck[STATE_YS] = GetChaStateLv ( atk_role , STATE_YS ) 
end 

function CreatChaSkill ( role ) 
end 


function CheckJobLegal ( job ) 
	local check_job = 1 
	if job < JOB_TYPE_XINSHOU or job > JOB_TYPE_GONGCHENGSHI then 
		check_job = 0 
	end 
	return check_job 
end 

function RemoveYS( role )
	RemoveState( role , STATE_YS )					
	return 1 
end

function Rem_State_Unnormal ( role ) 
	RemoveState( role , STATE_ZD )					
	RemoveState( role , STATE_MB )					
	RemoveState( role , STATE_ZZZH )				
	RemoveState( role , STATE_SYNZ)					
	RemoveState( role , STATE_SDBZ )				
	RemoveState( role , STATE_TJ )					
	RemoveState( role , STATE_SJ )					
	RemoveState( role , STATE_JNJZ )				
	RemoveState( role , STATE_GJJZ )				
	RemoveState( role , STATE_BDJ )					
	RemoveState( role , STATE_XN )					
	RemoveState( role , STATE_NT )					
	RemoveState( role , STATE_DIZ )					
	RemoveState( role , STATE_SWCX )				
	RemoveState( role , STATE_JSDD )				
	RemoveState( role , STATE_HYMH )				
	RemoveState( role , STATE_HLKJ )				
	RemoveState( role , STATE_HLLM )				
	RemoveState( role , STATE_CRXSF )				
	RemoveState( role , STATE_BlackHX )				
	RemoveState( role , STATE_HLKJ )				
end 
function Rem_State_StarUnnormal ( role ) 
	RemoveState( role , STATE_KUANGZ )					 
	RemoveState( role , STATE_QUANS )					
	RemoveState( role , STATE_QINGZ )					
end 
function Rem_State_NOSEA ( role ) 
	RemoveState( role , STATE_KB )					
	RemoveState( role , STATE_XLZH )					
	RemoveState( role , STATE_PKJSYS )				
	RemoveState( role , STATE_PKSFYS)				
	RemoveState( role , STATE_TSHD )				
	RemoveState( role , STATE_FZLZ )					
	RemoveState( role , STATE_PKZDYS )					
	RemoveState( role , STATE_PKKBYS )					
	RemoveState( role , STATE_YSLLQH )				
	RemoveState( role , STATE_YSMJQH )				
	RemoveState( role , STATE_YSLQQH )					
	RemoveState( role , STATE_YSTZQH )					
	RemoveState( role , STATE_YSJSQH )					
	RemoveState( role , STATE_DENGLONG )					
	RemoveState( role , STATE_YSMspd )				
	RemoveState( role , STATE_PKSBYS )				
	RemoveState( role , STATE_KUANGZ )				
	RemoveState( role , STATE_QUANS )				
	RemoveState( role , STATE_QINGZ )				
	RemoveState( role , STATE_CJBBT )				
	RemoveState( role , STATE_JRQKL )				
	RemoveState( role , STATE_KALA )	
	RemoveState( role , STATE_CZZX )
	RemoveState( role , STATE_JLFT1 )				
	RemoveState( role , STATE_JLFT2 )				
	RemoveState( role , STATE_JLFT3 )				
	RemoveState( role , STATE_JLFT4 )				
	RemoveState( role , STATE_JLFT5 )				
	RemoveState( role , STATE_JLFT6 )				
	RemoveState( role , STATE_JLFT7 )				
	RemoveState( role , STATE_JLFT8 )				
end 
function SetCharaAttr( a, b, c )
	local x, y = b, c
	local z = math.floor( a )
	SetChaAttr( x, y, z )
end

function Attr_ap(a)
	local attr_ap=GetChaAttr(a,ATTR_AP) 
	return attr_ap 
end 

function Attr_tp(a) 
	local attr_tp=GetChaAttr(a,ATTR_TP) 
	return attr_tp 
end 

function CheckCha_Job(a) 
	local role_attr_job=GetChaAttr(a,ATTR_JOB) 
	return role_attr_job 
end 

function Exp(a) 
	local exp=GetChaAttr(a,ATTR_CEXP) 
	return exp 
end 

function Lv(a)
	local b = TurnToCha ( a ) 
	local lv=GetChaAttr( b , ATTR_LV ) 
	return lv 
end 

function Hp(a)
	local hp=GetChaAttr(a,ATTR_HP) 
	return hp 
end 

function Mxhp(a)
	local mxhp=GetChaAttr(a,ATTR_MXHP) 
	return mxhp 
end 

function MxhpSa(a)
	local mxhpsa= GetChaAttr(a, ATTR_STATEC_MXHP)/ATTR_RADIX  
	return mxhpsa 
end 

function MxhpSb(a)
	local mxhpsb=GetChaAttr(a, ATTR_STATEV_MXHP) 
	return mxhpsb 
end 

function MxhpIa(a)
	local mxhpia=GetChaAttr(a, ATTR_ITEMC_MXHP)/ATTR_RADIX 
	return mxhpia 
end 

function MxhpIb(a)
	local mxhpib=GetChaAttr(a, ATTR_ITEMV_MXHP) 
	return mxhpib 
end 

function Sp(a)
	local sp=GetChaAttr(a,ATTR_SP) 
	return sp 
end 

function Mxsp(a)
	local mxsp=GetChaAttr(a,ATTR_MXSP) 
	return mxsp 
end 

function MxspSa(a)
	local mxspsa=GetChaAttr(a, ATTR_STATEC_MXSP)/ATTR_RADIX  
	return mxspsa 
end 

function MxspSb(a)
	local mxspsb=GetChaAttr(a, ATTR_STATEV_MXSP)
	return mxspsb 
end 

function MxspIa(a)
	local mxspia=GetChaAttr(a, ATTR_ITEMC_MXSP)/ATTR_RADIX 
	return mxspia 
end 

function MxspIb(a)
	local mxspib=GetChaAttr(a, ATTR_ITEMV_MXSP) 
	return mxspib 
end 

function Mnatk(a)
	local mnatk=GetChaAttr(a,ATTR_MNATK) 
	return mnatk 
end 

function MnatkSa(a)
	local mnatksa= GetChaAttr(a, ATTR_STATEC_MNATK)/ATTR_RADIX 
	return mnatksa 
end 

function MnatkSb(a)
	local mnatksb=GetChaAttr(a, ATTR_STATEV_MNATK) 
	return mnatksb 
end 

function MnatkIa(a)
	local mnatkia=GetChaAttr(a, ATTR_ITEMC_MNATK)/ATTR_RADIX 
	return mnatkia 
end 

function MnatkIb(a)
	local mnatkib=GetChaAttr(a, ATTR_ITEMV_MNATK)
	return mnatkib 
end 

function Mxatk(a)
	local mxatk=GetChaAttr(a,ATTR_MXATK) 
	return mxatk 
end 

function MxatkSa(a)
	local mxatksa= GetChaAttr(a, ATTR_STATEC_MXATK)/ATTR_RADIX  
	return mxatksa 
end 

function MxatkSb(a)
	local mxatksb=GetChaAttr(a, ATTR_STATEV_MXATK)
	return mxatksb 
end 

function MxatkIa(a)
	local mxatkia=GetChaAttr(a, ATTR_ITEMC_MXATK)/ATTR_RADIX 
	return mxatkia 
end 

function MxatkIb(a)
	local mxatkib=GetChaAttr(a, ATTR_ITEMV_MXATK) 
	return mxatkib 
end 

function Def(a)
	local def=GetChaAttr(a,ATTR_DEF)
	return def 
end 

function DefSa(a)
	local defsa= GetChaAttr(a, ATTR_STATEC_DEF)/ATTR_RADIX  
	return defsa 
end 

function DefSb(a)
	local defsb=GetChaAttr(a, ATTR_STATEV_DEF)
	return defsb 
end 

function DefIa(a)
	--LuaPrint("Obtain character attribute def_ia") 
	local defia=GetChaAttr(a, ATTR_ITEMC_DEF)/ATTR_RADIX --[[取def道具百分比]]--
	return defia 
end 

function DefIb(a)
	--LuaPrint("Obtain character attribute def_ib") 
	local defib=GetChaAttr(a, ATTR_ITEMV_DEF) --[[取def道具常数]]--
	return defib 
end 

function Resist(a)
	--LuaPrint("Obtain character attribute def") 
	local def=GetChaAttr(a,ATTR_PDEF) --[[取def]]--
	return def 
end 

function ResistSa(a)
	--LuaPrint("Obtain player attribute def_sa") 
	local defsa= GetChaAttr(a, ATTR_STATEC_PDEF)/ATTR_RADIX  --[[取def状态百分比]]--
	return defsa 
end 

function ResistSb(a)
	--LuaPrint("Obtain character attribute def_sb") 
	local defsb=GetChaAttr(a, ATTR_STATEV_PDEF) --[[取def状态常数]]--
	return defsb 
end 

function ResistIa(a)
	--LuaPrint("Obtain character attribute def_ia") 
	local defia=GetChaAttr(a, ATTR_ITEMC_PDEF)/ATTR_RADIX --[[取def道具百分比]]--
	return defia 
end 

function ResistIb(a)
	--LuaPrint("Obtain character attribute def_ib") 
	local defib=GetChaAttr(a, ATTR_ITEMV_PDEF) --[[取def道具常数]]--
	return defib 
end 

function Hit(a)
	--LuaPrint("Obtain character attribute hit") 
	local hit=GetChaAttr(a,ATTR_HIT) --[[取hit]]--
	return hit 
end 

function HitSa(a)
	--LuaPrint("Obtain character attribute hit_sa") 
	local hitsa= GetChaAttr(a, ATTR_STATEC_HIT)/ATTR_RADIX   --[[取hit状态百分比]]--
	return hitsa 
end 

function HitSb(a)
	--LuaPrint("Obtain character attribute hit_sb") 
	local hitsb=GetChaAttr(a, ATTR_STATEV_HIT) --[[取hit状态常数]]--
	return hitsb 
end 

function HitIa(a)
	--LuaPrint("Obtain character attribute hit_ia") 
	local hitia=GetChaAttr(a, ATTR_ITEMC_HIT)/ATTR_RADIX --[[取hit道具百分比]]--
	return hitia 
end 

function HitIb(a)
	--LuaPrint("Obtain character attribute hit_ib") 
	local hitib=GetChaAttr(a, ATTR_ITEMV_HIT) --[[取hit道具常数]]--
	return hitib 
end 

function Flee(a)
	--LuaPrint("Obtain character attribute flee") 
	local flee=GetChaAttr(a,ATTR_FLEE) --[[取flee]]--
	return flee 
end 

function FleeSa(a)
	--LuaPrint("Obtain character attribute flee_sa") 
	local fleesa=  GetChaAttr(a, ATTR_STATEC_FLEE)/ATTR_RADIX  --[[取flee状态百分比]]--
	return fleesa 
end 

function FleeSb(a)
	--LuaPrint("Obtain character attribute flee_sb") 
	local fleesb=GetChaAttr(a, ATTR_STATEV_FLEE) --[[取flee状态常数]]--
	return fleesb 
end 

function FleeIa(a)
	--LuaPrint("Obtain character attribute flee_ia") 
	local fleeia=GetChaAttr(a, ATTR_ITEMC_FLEE)/ATTR_RADIX --[[取flee道具百分比]]--
	return fleeia 
end 

function FleeIb(a)
	--LuaPrint("Obtain character attribute flee_ib") 
	local fleeib=GetChaAttr(a, ATTR_ITEMV_FLEE) --[[取flee道具常数]]--
	return fleeib 
end 

function Mf(a)
	--LuaPrint("Obtain character attribute mf") 
	local mf=GetChaAttr(a,ATTR_MF)/MFRADIX --[[取mf]]--
	return mf 
end 

function MfSa(a)
	--LuaPrint("Obtain character attributemf_sa") 
	local mfsa= GetChaAttr(a, ATTR_STATEC_MF)/ATTR_RADIX  --[[取mf状态百分比]]--
	return mfsa 
end 

function MfSb(a)
	--LuaPrint("Obtain character attribute mf_sb") 
	local mfsb=GetChaAttr(a, ATTR_STATEV_MF) --[[取mf状态常数]]--
	return mfsb 
end 

function MfIa(a)
	--LuaPrint("Obtain player attribute mf_ia") 
	local mfia=GetChaAttr(a, ATTR_ITEMC_MF)/ATTR_RADIX --[[取mf道具百分比]]--
	return mfia 
end 

function MfIb(a)
	--LuaPrint("Obtain character attribute mf_ib") 
	local mfib=GetChaAttr(a, ATTR_ITEMV_MF) --[[取mf道具常数]]--
	return mfib 
end 

function Crt(a)
	--LuaPrint("Obtain character attribute crt") 
	local crt=GetChaAttr(a,ATTR_CRT)/CRTRADIX --[[取crt]]--
	return crt 
end 

function CrtSa(a)
	--LuaPrint("Obtain player attribute crt_sa") 
	local crtsa= GetChaAttr(a, ATTR_STATEC_CRT)/ATTR_RADIX  --[[取crt状态百分比]]--
	return crtsa 
end 

function CrtSb(a)
	--LuaPrint("Obtain character attribute crt_sb") 
	local crtsb=GetChaAttr(a, ATTR_STATEV_CRT) --[[取crt状态常数]]--
	return crtsb 
end 

function CrtIa(a)
	--LuaPrint("Obtain character attribute crt_ia") 
	local crtia=GetChaAttr(a, ATTR_ITEMC_CRT)/ATTR_RADIX --[[取crt道具百分比]]--
	return crtia 
end 

function CrtIb(a)
	--LuaPrint("Obtain character attribute crt_ib") 
	local crtib=GetChaAttr(a, ATTR_ITEMV_CRT) --[[取crt道具常数]]--
	return crtib 
end 

function Hrec(a)
	--LuaPrint("Obtain character attribute hrec") 
	local hrec=GetChaAttr(a,ATTR_HREC) --[[取hrec]]--
	return hrec 
end 

function HrecSa(a)
	--LuaPrint("Obtain character attribute hrec_sa") 
	local hrecsa=  GetChaAttr(a, ATTR_STATEC_HREC)/ATTR_RADIX  --[[取hrec状态百分比]]--
	return hrecsa 
end 

function HrecSb(a)
	--LuaPrint("Obtain character attribute hrec_sb") 
	local hrecsb=GetChaAttr(a, ATTR_STATEV_HREC) --[[取hrec状态常数]]--
	return hrecsb 
end 

function HrecIa(a)
	--LuaPrint("Obtain character attribute hrec_ia") 
	local hrecia=GetChaAttr(a, ATTR_ITEMC_HREC)/ATTR_RADIX --[[取hrec道具百分比]]--
	return hrecia 
end 

function HrecIb(a)
	--LuaPrint("Obtain character attribute hrec_ib") 
	local hrecib=GetChaAttr(a, ATTR_ITEMV_HREC) --[[取hrec道具常数]]--
	return hrecib 
end 

function Srec(a)
	--LuaPrint("Obtain character attribute srec") 
	local srec=GetChaAttr(a,ATTR_SREC) --[[取srec]]--
	return srec 
end 

function SrecSa(a)
	--LuaPrint("Obtain character attribute srec_sa") 
	local srecsa= GetChaAttr(a, ATTR_STATEC_SREC)/ATTR_RADIX  --[[取srec状态百分比]]--
	return srecsa 
end 

function SrecSb(a)
	--LuaPrint("Obtain character attribute srec_sb") 
	local srecsb=GetChaAttr(a, ATTR_STATEV_SREC) --[[取srec状态常数]]--
	return srecsb 
end 

function SrecIa(a)
	--LuaPrint("Obtain character attribute srec_ia") 
	local srecia=GetChaAttr(a, ATTR_ITEMC_SREC)/ATTR_RADIX --[[取srec道具百分比]]--
	return srecia 
end 

function SrecIb(a)
	--LuaPrint("Obtain character attribute srec_ib") 
	local srecib=GetChaAttr(a, ATTR_ITEMV_SREC) --[[取srec道具常数]]--
	return srecib 
end 

function Aspd(a)
	--LuaPrint("Obtain character attribute aspd") 
	local aspd=math.floor ( 100000 / GetChaAttr(a,ATTR_ASPD) )  --[[取aspd]]--
	return aspd 
end 

function AspdSa(a)
	--LuaPrint("Obtain character attribute aspd_sa") 
	local aspdsa=  GetChaAttr(a, ATTR_STATEC_ASPD)/ATTR_RADIX    --[[取aspd状态百分比]]--
	return aspdsa 
end 

function AspdSb(a)
	--LuaPrint("Obtain character attributeaspd_sb") 
	local aspdsb=GetChaAttr(a, ATTR_STATEV_ASPD) --[[取aspd状态常数]]--
	return aspdsb 
end 

function AspdIa(a)
	--LuaPrint("Obtain character attribute aspd_ia") 
	local aspdia=GetChaAttr(a, ATTR_ITEMC_ASPD)/ATTR_RADIX --[[取aspd道具百分比]]--
	return aspdia 
end 

function AspdIb(a)
	--LuaPrint("Obtain player attribute aspd_ib") 
	local aspdib=GetChaAttr(a, ATTR_ITEMV_ASPD) --[[取aspd道具常数]]--
	return aspdib 
end 

function Adis(a)
	--LuaPrint("Obtain character attribute adis") 
	local adis=GetChaAttr(a,ATTR_ADIS) --[[取adis]]--
	return adis 
end 

function AdisSa(a)
	--LuaPrint("Obtain character attribute adis_sa") 
	local adissa=  GetChaAttr(a, ATTR_STATEC_ADIS)/ATTR_RADIX   --[[取adis状态百分比]]--
	return adissa 
end 

function AdisSb(a)
	--LuaPrint("Obtain player attribute adis_sb") 
	local adissb=GetChaAttr(a, ATTR_STATEV_ADIS) --[[取adis状态常数]]--
	return adissb 
end 

function AdisIa(a)
	--LuaPrint("Obtain character attribute aids_ia") 
	local adisia=GetChaAttr(a, ATTR_ITEMC_ADIS)/ATTR_RADIX --[[取adis道具百分比]]--
	return adisia 
end 

function AdisIb(a)
	--LuaPrint("Obtain character attribute adis_ib") 
	local adisib=GetChaAttr(a, ATTR_ITEMV_ADIS) --[[取adis道具常数]]--
	return adisib 
end 

function Mspd(a)
	--LuaPrint("Obtain character attribute mspd") 
	local mspd=GetChaAttr(a,ATTR_MSPD) --[[取mspd]]--
	return mspd 
end 

function MspdSa(a)
	--LuaPrint("Obtain character attribute mspd_sa") 
	local mspdsa=  GetChaAttr(a, ATTR_STATEC_MSPD)/ATTR_RADIX   --[[取mspd状态百分比]]--
	return mspdsa 
end 
function MspdSb(a)
	--LuaPrint("Obtain character attribute mspd_sb") 
	local mspdsb=GetChaAttr(a, ATTR_STATEV_MSPD) --[[取mspd状态常数]]--
	return mspdsb 
end 
function MspdIa(a)
	--LuaPrint("Obtain character attributemspd_ia") 
	local mspdia=GetChaAttr(a, ATTR_ITEMC_MSPD)/ATTR_RADIX --[[取mspd道具百分比]]--
	return mspdia 
end 

function MspdIb(a)
	--LuaPrint("Obtain character attribute Mspd_ib") 
	local mspdib=GetChaAttr(a, ATTR_ITEMV_MSPD) --[[取mspd道具常数]]--
	return mspdib 
end 

function Col(a)
	--LuaPrint("Obtain character attribute col") 
	local col=GetChaAttr(a,ATTR_COL) --[[取col]]--
	return col 
end 

function ColSa(a) 
	--LuaPrint("Obtain character attribute col_sa") 
	local colsa= GetChaAttr(a, ATTR_STATEC_COL)/ATTR_RADIX  --[[取col状态百分比]]--
	return colsa 
end 

function ColSb(a) 
	--LuaPrint("Obtain character attribute col_sb") 
	local colsb=GetChaAttr(a, ATTR_STATEV_COL) --[[取col状态常数]]--
	return colsb 
end 

function ColIa(a) 
	--LuaPrint("Obtain character attribute col_ia") 
	local colia=GetChaAttr(a, ATTR_ITEMC_COL)/ATTR_RADIX --[[取col道具百分比]]--
	return colia 
end 

function ColIb(a) 
	--LuaPrint("Obtain character attribute col_ib") 
	local colib=GetChaAttr(a, ATTR_ITEMV_COL) --[[取col道具常数]]--
	return colib 
end 

function Str(a) 
	--LuaPrint("Obtain character attribute str") 
	local str=GetChaAttr(a,ATTR_STR) --[[取str]]--
	return str 
end 

function StrSa(a) 
	--LuaPrint("Obtain character attribute str_sa") 
	local strsa= GetChaAttr(a, ATTR_STATEC_STR)/ATTR_RADIX   --[[取str状态百分比]]--
	return strsa 
end 

function StrSb(a) 
	--LuaPrint("Obtain character attribute str_sb") 
	local strsb=GetChaAttr(a, ATTR_STATEV_STR) --[[取str状态常数]]--
	return strsb 
end 

function StrIa(a)
	--LuaPrint("Obtain character attribute str_ia") 
	local stria=GetChaAttr(a,ATTR_ITEMC_STR)/ATTR_RADIX --[[取str道具百分比]]--
	return stria 
end 

function StrIb(a)
	--LuaPrint("Obtain character attribute str_ib") 
	local strib=GetChaAttr(a,ATTR_ITEMV_STR) --[[取str道具常数]]--
	return strib 
end 

function Dex(a)
	--LuaPrint("Obtain character attribute dex") 
	local dex=GetChaAttr(a,ATTR_DEX) --[[取dex]]--
	return dex 
end 

function DexSa(a)
	--LuaPrint("Obtain character attribute dex_sa") 
	local dexsa= GetChaAttr(a, ATTR_STATEC_DEX)/ATTR_RADIX  --[[取dex状态百分比]]--
	return dexsa 
end 

function DexSb(a)
	--LuaPrint("Obtain player attribute dex_sb") 
	local dexsb=GetChaAttr(a, ATTR_STATEV_DEX) --[[取dex状态常数]]--
	return dexsb 
end 

function DexIa(a)
	--LuaPrint("Obtain character attribute dex_ia") 
	local dexia=GetChaAttr(a,ATTR_ITEMC_DEX)/ATTR_RADIX --[[取dex道具百分比]]--
	return dexia 
end 

function DexIb(a)
	--LuaPrint("Obtain character attribute dex_ib") 
	local dexib=GetChaAttr(a,ATTR_ITEMV_DEX) --[[取dex道具常数]]--
	return dexib 
end 

function Agi(a) 
	--LuaPrint("Obtain character attribute agi") 
	local agi=GetChaAttr(a,ATTR_AGI) --[[取agi]]--
	return agi 
end 

function AgiSa(a)
	--LuaPrint("Obtain character attribute agi_sa") 
	local agisa= GetChaAttr(a, ATTR_STATEC_AGI)/ATTR_RADIX  --[[取agi状态百分比]]--
	return agisa 
end 

function AgiSb(a)
	--LuaPrint("Obtain character attribute agi_sb") 
	local agisb=GetChaAttr(a, ATTR_STATEV_AGI) --[[取agi状态常数]]--
	return agisb 
end 

function AgiIa(a)
	--LuaPrint("Obtain character attribute agi_ia") 
	local agiia=GetChaAttr(a,ATTR_ITEMC_AGI)/ATTR_RADIX --[[取agi道具百分比]]--
	return agiia 
end 

function AgiIb(a)
	--LuaPrint("Obtain character attribute agi_ib") 
	local agiib=GetChaAttr(a,ATTR_ITEMV_AGI) --[[取agi道具常数]]--
	return agiib 
end 

function Con(a)
	--LuaPrint("Obtain character attribute con") 
	local con=GetChaAttr(a,ATTR_CON) --[[取con]]--
	return con 
end 

function ConSa(a)
	--LuaPrint("Obtain character attribute con_sa") 
	local consa= GetChaAttr(a, ATTR_STATEC_CON)/ATTR_RADIX  --[[取con状态百分比]]--
	return consa 
end 

function ConSb(a)
	--LuaPrint("Obtain character attribute con_sb") 
	local consb=GetChaAttr(a, ATTR_STATEV_CON) --[[取con状态常数]]--
	return consb 
end 

function ConIa(a)
	--LuaPrint("Obtain character attribute con_ia") 
	local conia=GetChaAttr(a, ATTR_ITEMC_CON)/ATTR_RADIX --[[取con道具百分比]]--
	return conia 
end 

function ConIb(a)
	--LuaPrint("Obtain character attribute con_ib") 
	local conib=GetChaAttr(a, ATTR_ITEMV_CON) --[[取con道具常数]]--
	return conib 
end 

function Sta(a)
	--LuaPrint("Obtain character attribute sta") 
	local sta=GetChaAttr(a,ATTR_STA) --[[取sta]]--
	return sta 
end 

function StaSa(a)
	--LuaPrint("Obtain character attribute sta_sa") 
	local stasa= GetChaAttr(a, ATTR_STATEC_STA)/ATTR_RADIX  --[[取sta状态百分比]]--
	return stasa 
end 

function StaSb(a)
	--LuaPrint("Obtain character attribute sta_sb") 
	local stasb=GetChaAttr(a, ATTR_STATEV_STA) --[[取sta状态常数]]--
	return stasb 
end 

function StaIa(a)
	--LuaPrint("Obtain character attribute sta_ia") 
	local staia=GetChaAttr(a, ATTR_ITEMC_STA)/ATTR_RADIX --[[取sta道具百分比]]--
	return staia 
end 

function StaIb(a)
	--LuaPrint("Obtain character attribute sta_ib") 
	local staib=GetChaAttr(a, ATTR_ITEMV_STA) --[[取sta道具常数]]--
	return staib 
end 

function Luk(a)
	--LuaPrint("Obtain character attribute luk") 
	local luk=GetChaAttr(a,ATTR_LUK) --[[取luk]]--
	return luk 
end 

function LukSa(a)
	--LuaPrint("Obtain character attribute luk_sa") 
	local luksa= GetChaAttr(a, ATTR_STATEC_LUK)/ATTR_RADIX   --[[取luk状态百分比]]--
	return luksa 
end 

function LukSb(a)
	--LuaPrint("Obtain character attribute luk_sb") 
	local luksb=GetChaAttr(a, ATTR_STATEV_LUK) --[[取luk状态常数]]--
	return luksb 
end 

function LukIa(a)
	--LuaPrint("Obtain character attribute luk_ia") 
	local lukia=GetChaAttr(a, ATTR_ITEMC_LUK)/ATTR_RADIX --[[取luk道具百分比]]--
	return lukia 
end 

function LukIb(a)
	--LuaPrint("Obtain character attribute luk_ib") 
	local lukib = GetChaAttr(a, ATTR_ITEMV_LUK) --[[取luk道具常数]]--
	return lukib 
end 




function BSMxhp(a) --[[取基本mxhp]]--
	--LuaPrint("Obtain character attribute bsmxhp") 
	local bsmxhp=GetChaAttr(a,ATTR_BMXHP) 
	return bsmxhp 
end 

function Mxhp_final(a) 
	local mxhp_final=(BSMxhp(a) * MxhpIa(a) + MxhpIb(a) ) * math.max(0, MxhpSa(a))  + MxhpSb(a) --[[取当时实际mxhp]]--
	return mxhp_final 
end 


function Sp_final(a)
	local sp_final=(BSSp(a) * SpIa(a) + SpIb(a) ) * math.max(0 , SpSa(a)) + SpSb(a) --[[取当时实际sp]]--
	return sp_final 
end 

function BSMxsp(a) --[[取基本mxsp]]--
	--LuaPrint("Obtain character attribute bsmxsp") 
	local bsmxsp=GetChaAttr(a,ATTR_BMXSP) 
	return bsmxsp 
end 

function Mxsp_final(a)
	local mxsp_final=(BSMxsp(a) * MxspIa(a) + MxspIb(a) ) * math.max ( 0 , MxspSa(a) ) + MxspSb(a) --[[取当时实际mxsp]]--
	return mxsp_final 
end 

function BSMnatk(a) --[[取基本mnatk]]--
	--LuaPrint("Obtain character attribute bsmnatk") 
	local bsmnatk=GetChaAttr(a,ATTR_BMNATK) 
	return bsmnatk 
end

function Mnatk_final(a)
	local mnatk_final=math.max ( (BSMnatk(a) * MnatkIa(a) + MnatkIb(a) ) * math.max ( 0 , MnatkSa(a)) + MnatkSb(a) , 1 ) --[[取当时实际mnatk]]--
	return mnatk_final 
end 

function BSMxatk(a) --[[取基本mxatk]]--
	--LuaPrint("Obtain character attribute bsmxatk") 
	local bsmxatk=GetChaAttr(a,ATTR_BMXATK) 
	return bsmxatk 
end

function Mxatk_final(a)
	local mxatk_final=math.max ( (BSMxatk(a) * MxatkIa(a) + MxatkIb(a) ) * math.max ( 0 , MxatkSa(a) ) + MxatkSb(a) , 1 ) --[[取当时实际mxatk]]--
	return mxatk_final 
end 

function BSDef(a) --[[取基本def]]--
	--LuaPrint("Obtain character attributebsdef") 
	local bsdef=GetChaAttr(a,ATTR_BDEF) 
	return bsdef 
end


function Def_final(a)
	local def_final=math.max ( (BSDef(a) * DefIa(a) + DefIb(a) ) * math.max ( 0 , DefSa(a) ) + DefSb(a) , 0 ) --[[取当时实际def]]--
	return def_final 
end 

function BSResist(a) --[[取基本抗性]]--
   --LuaPrint("Obtain player attribute bsresist") 
   local bsresist = GetChaAttr(a, ATTR_BPDEF) 
   return bsresist 
end 

function Resist_final(a) 
   local resist_final=(BSResist(a) * ResistIa(a) + ResistIb(a) ) * math.max ( 0 , ResistSa(a) ) + ResistSb(a) --[[取实际resist]]--
   return resist_final 
end 


function BSHit(a) --[[取基本hit]]--
	--LuaPrint("Obtain character attribute bshit") 
	local bshit=GetChaAttr(a,ATTR_BHIT) 
	return bshit 
end

function Hit_final(a)
	local hit_final = (BSHit(a) * HitIa(a) + HitIb(a) ) * math.max ( 0 , HitSa(a) ) + HitSb(a) --[[取当时实际hit]]--
	return hit_final 
end 

function BSFlee(a) --[[取基本flee]]--
	--LuaPrint("Obtain character attribute bsflee") 
	local bsflee=GetChaAttr(a,ATTR_BFLEE) 
	return bsflee 
end

function Flee_final(a) 
	local flee_final=(BSFlee(a) * FleeIa(a) + FleeIb(a) ) * math.max ( 0 , FleeSa(a) ) + FleeSb(a)  --[[取当时实际flee]]--
	return flee_final 
end 

function BSMf(a) --[[取基本mf]]--
	--LuaPrint("Obtain character attribute bsmf") 
	local bsmf=GetChaAttr(a,ATTR_BMF) 
	return bsmf 
end

function Mf_final(a)
	local mf_final=(BSMf(a) * MfIa(a) + MfIb(a) )* math.max ( 0 , MfSa(a) ) + MfSb(a) --[[取当时实际mf]]--
	return mf_final 
end 

function BSCrt(a) --[[取基本crt]]--
	--LuaPrint("Obtain character attributebscrt") 
	local bscrt=GetChaAttr(a,ATTR_BCRT) 
	return bscrt 
end

function Crt_final(a)
	local crt_final=(BSCrt(a) * CrtIa(a) + CrtIb(a) ) * math.max ( 0 , CrtSa(a) )  + CrtSb(a) --[[取当时实际crt]]--
	return crt_final 
end 

function BSHrec(a) --[[取基本hrec]]--
	--LuaPrint("Obtain character attribute bshrec") 
	local bshrec=GetChaAttr(a,ATTR_BHREC) 
	return bshrec 
end

function Hrec_final(a)
	local hrec_final=( BSHrec(a) * HrecIa(a) + HrecIb(a) ) * math.max ( 0 , HrecSa(a) ) + HrecSb(a) --[[取当时实际hrec]]--
	return hrec_final 
end 

function BSSrec(a) --[[取基本srec]]--
	--LuaPrint("Obtain character attribute bssrec") 
	local bssrec=GetChaAttr(a,ATTR_BSREC) 
	return bssrec 
end

function Srec_final(a)
	local srec_final=(BSSrec(a) * SrecIa(a) + SrecIb(a) ) * math.max ( 0 , SrecSa(a) ) + SrecSb(a) --[[取当时实际srec]]--
	return srec_final 
end 

function BSAspd(a) --[[取基本aspd]]--
	--LuaPrint("Obtain character attribute bsaspd") 
	local bsaspd=math.floor ( 100000 / GetChaAttr(a,ATTR_BASPD) ) 
	return bsaspd 
end

function Aspd_final(a)
	local aspd_final=( BSAspd(a)  * AspdIa(a) + AspdIb(a) ) * math.max ( 0 , AspdSa(a) ) + AspdSb(a) --[[取当时实际aspd]]--
	return aspd_final 
end 

function BSAdis(a) --[[取基本adis]]--
	--LuaPrint("Obtain character attribute bsadis") 
	local bsadis=GetChaAttr(a,ATTR_BADIS) 
	return bsadis 
end

function Adis_final(a)
	local adis_final=(BSAdis(a) * AdisIa(a) + AdisIb(a) ) * math.max ( 0 , AdisSa(a) ) + AdisSb(a) --[[取当时实际adis]]--
	return adis_final 
end 

function BSMspd(a) --[[取基本mspd]]--
	--LuaPrint("Obtain character attribute bsmspd") 
	local bsmspd=GetChaAttr(a,ATTR_BMSPD) 
	return bsmspd 
end

function Mspd_final(a)
	local mspd_final=math.max ( BSMspd(a) * 0.3 , ( (BSMspd(a) * MspdIa(a) + MspdIb(a) ) * math.max ( 0.3 , MspdSa(a))  + MspdSb(a) )  )  --[[取当时实际mspd]]--
	return mspd_final 
end 

function BSCol(a) --[[取基本col]]--
	--LuaPrint("Obtain character attribute bscol") 
	local bscol=GetChaAttr(a,ATTR_BCOL) 
	return bscol 
end

function Col_final(a)
	local col_final=(BSCol(a) * ColIa(a) + ColIb(a) ) * math.max ( 0 , ColSa(a) ) + ColSb(a) --[[取当时实际col]]--
	return col_final 
end 

function BSStr(a) --[[取基本str]]--
	--LuaPrint("Obtain character attribute bsstr") 
	local bsstr=GetChaAttr(a,ATTR_BSTR) 
	return bsstr 
end

function Str_final(a)
	local str_final=(BSStr(a) * StrIa(a) + StrIb(a) ) * math.max ( 0 , StrSa(a) ) + StrSb(a) --[[取当时实际str]]--
	return str_final 
end 

function BSDex(a) --[[取基本dex]]--
	--LuaPrint("Obtain character attribute bsdex") 
	local bsdex=GetChaAttr(a,ATTR_BDEX) 
	return bsdex 
end

function Dex_final(a)
	local dex_final=(BSDex(a) * DexIa(a) + DexIb(a) ) * math.max ( 0 , DexSa(a) ) + DexSb(a) --[[取当时实际dex]]--
	return dex_final 
end 

function BSAgi(a) --[[取基本agi]]--
	--LuaPrint("Obtain character attribute bsagi") 
	local bsagi=GetChaAttr(a,ATTR_BAGI) 
	return bsagi 
end

function Agi_final(a)
	local agi_final=(BSAgi(a) * AgiIa(a) + AgiIb(a) ) * math.max ( 0 , AgiSa(a) ) + AgiSb(a) --[[取当时实际agi]]--
	return agi_final 
end 

function BSCon(a) --[[取基本con]]--
	--LuaPrint("Obtain character attribute bscon") 
	local bscon=GetChaAttr(a,ATTR_BCON) 
	return bscon 
end

function Con_final(a)
	local con_final=(BSCon(a) * ConIa(a) + ConIb(a)) * math.max ( 0 , ConSa(a) ) + ConSb(a) --[[取当时实际con]]--
	return con_final 
end 

function BSSta(a) --[[取基本sta]]--
	--LuaPrint("Obtain character attribute bssta") 
	local bssta=GetChaAttr(a,ATTR_BSTA) 
	return bssta 
end

function Sta_final(a)
	local sta_final=(BSSta(a) * StaIa(a) + StaIb(a) ) * math.max ( 0 , StaSa(a) ) + StaSb(a) --[[取当时实际sta]]--
	return sta_final 
end 

function BSLuk(a) --[[取基本luk]]--
	--LuaPrint("Obtain character attribute bsluk") 
	local bsluk=GetChaAttr(a,ATTR_BLUK) 
	return bsluk 
end

function Luk_final(a)
	local luk_final=(BSLuk(a)  *LukIa(a) + LukIb(a) ) * math.max ( 0 , LukSa(a) ) + LukSb(a) --[[取当时实际luk]]--
	return luk_final 
end 



--取船只基本属性函数-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Ship_BSMnatk ( ship_role )						--船只基本最小攻击
	local ship_bsmnatk=GetChaAttr( ship_role , ATTR_BMNATK ) 
	return ship_bsmnatk 
end 

function Ship_BSMxatk ( ship_role )						--船只基本最大攻击
	local ship_bsmxatk=GetChaAttr( ship_role , ATTR_BMXATK ) 
	return ship_bsmxatk 
end 
	
function Ship_BSAdis ( ship_role )							--船只基本攻击距离
	local ship_bsadis=GetChaAttr( ship_role , ATTR_BADIS ) 
	return ship_bsadis  
end 

function Ship_BSCspd ( ship_role )							--炮弹基本飞行速度
	local ship_bscspd=GetChaAttr( ship_role , ATTR_BOAT_BCSPD ) 
	return ship_bscspd  
end 

function Ship_BSAspd ( ship_role ) 						--炮弹基本攻击间隔
	local ship_bsaspd=GetChaAttr( ship_role , ATTR_BASPD ) 
	return ship_bsaspd  
end 

function Ship_BSCrange ( ship_role ) 						--炮弹基本爆炸范围
	local ship_bscrange=GetChaAttr( ship_role , ATTR_BOAT_BCRANGE ) 
	return ship_bscrange  
end 


function Ship_BSDef ( ship_role ) 							--船只基本防御
	local ship_bsdef=GetChaAttr( ship_role , ATTR_BDEF ) 
	return ship_bsdef   
end 


function Ship_BSResist ( ship_role ) 						--船只基本抵抗
	local ship_bsresist=GetChaAttr( ship_role , ATTR_BPDEF ) 
	return ship_bsresist   
end 

function Ship_BSMxhp ( ship_role ) 						--船只基本最大耐久
	local ship_bsmxhp=GetChaAttr( ship_role , ATTR_BMXHP ) 
	return ship_bsmxhp    
end 

function Ship_BSHrec ( ship_role ) 						--船只基本耐久回复速度
	local ship_bshrec=GetChaAttr( ship_role , ATTR_BHREC ) 
	return ship_bshrec 
end 

function Ship_BSSrec ( ship_role ) 							--船只基本补给消耗速度
	local ship_bssrec=GetChaAttr( ship_role , ATTR_BSREC ) 
	return ship_bssrec 
end 

function Ship_BSMspd ( ship_role ) 						--船只基本移动速度
	local ship_bsmspd=GetChaAttr( ship_role , ATTR_BMSPD ) 
	return ship_bsmspd 
end 

function Ship_BSMxsp ( ship_role ) 						--船只基本最大补给值
	local ship_bsmxsp=GetChaAttr( ship_role , ATTR_BMXSP ) 
	return ship_bsmxsp 
end 


--取人物船只属性的技能影响--------------------------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_MnatkSa ( cha_role )						--船只基本最小攻击角色技能系数影响
	local ship_mnatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MNATK ) / ATTR_RADIX
	return ship_mnatksa 
end 

function Ship_MnatkSb ( cha_role )						--船只基本最小攻击角色技能常数影响
	local ship_mnatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MNATK ) 
	return ship_mnatksb 
end 

function Ship_MxatkSa ( cha_role )						--船只基本最大攻击角色技能系数影响
	local ship_mxatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXATK ) / ATTR_RADIX
	return ship_mxatksa 
end 

function Ship_MxatkSb ( cha_role )						--船只基本最大攻击角色技能常数影响
	local ship_mxatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXATK ) 
	return ship_mxatksb 
end 
	
function Ship_AdisSa ( cha_role )							--船只基本攻击距离角色技能系数影响
	local ship_adissa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ADIS ) / ATTR_RADIX
	return ship_adissa  
end 

function Ship_AdisSb ( cha_role )							--船只基本攻击距离角色技能常数影响
	local ship_adissb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ADIS ) 
	return ship_adissb  
end 



function Ship_CspdSa ( cha_role )							--炮弹基本飞行速度角色技能系数影响
	local ship_cspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CSPD ) / ATTR_RADIX
	return ship_cspdsa  
end 

function Ship_CspdSb ( cha_role )							--炮弹基本飞行速度角色技能常数影响
	local ship_cspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CSPD ) 
	return ship_cspdsb  
end 



function Ship_AspdSa ( cha_role ) 						--炮弹基本攻击间隔角色技能系数影响
	local ship_aspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ASPD ) / ATTR_RADIX
	return ship_aspdsa  
end 


function Ship_AspdSb ( cha_role ) 						--炮弹基本攻击间隔角色技能常数影响
	local ship_aspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ASPD ) 
	return ship_aspdsb  
end 




function Ship_CrangeSa ( cha_role ) 						--炮弹基本爆炸范围角色技能系数影响
	local ship_crangesa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CRANGE ) / ATTR_RADIX
	return ship_crangesa  
end 

function Ship_CrangeSb ( cha_role ) 						--炮弹基本爆炸范围角色技能常数影响
	local ship_crangesb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CRANGE ) 
	return ship_crangesb  
end 




function Ship_DefSa ( cha_role ) 							--船只基本防御角色技能系数影响
	local ship_defsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_DEF ) / ATTR_RADIX
	return ship_defsa   
end 

function Ship_DefSb ( cha_role ) 							--船只基本防御角色技能常数影响
	local ship_defsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_DEF ) 
	return ship_defsb   
end 



function Ship_ResistSa ( cha_role ) 						--船只基本抵抗角色技能系数影响
	local ship_resistsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_RESIST ) / ATTR_RADIX
	return ship_resistsa   
end 

function Ship_ResistSb ( cha_role ) 						--船只基本抵抗角色技能常数影响
	local ship_resistsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_RESIST ) 
	return ship_resistsb   
end 



function Ship_MxhpSa ( cha_role ) 						--船只基本最大耐久角色技能系数影响
	local ship_mxhpsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXUSE ) / ATTR_RADIX
	return ship_mxhpsa    
end 

function Ship_MxhpSb ( cha_role ) 						--船只基本最大耐久角色技能常数影响
	local ship_mxhpsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXUSE ) 
	return ship_mxhpsb    
end 



function Ship_HrecSa ( cha_role ) 							--船只基本耐久回复速度角色技能系数影响
	local ship_hrecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_USEREC ) / ATTR_RADIX
	return ship_hrecsa 
end 

function Ship_HrecSb ( cha_role ) 						--船只基本耐久回复速度角色技能常数影响
	local ship_hrecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_USEREC ) 
	return ship_hrecsb 
end 



function Ship_SrecSa ( cha_role ) 							--船只基本补给消耗速度角色技能系数影响
	local ship_srecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_EXP ) / ATTR_RADIX
	return ship_srecsa 
end 

function Ship_SrecSb ( cha_role ) 									--船只基本补给消耗速度角色技能常数影响
	local ship_srecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_EXP ) 
	return ship_srecsb 
end 



function Ship_MspdSa ( cha_role ) 								--船只基本移动速度角色技能系数影响
	local ship_mspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MSPD ) / ATTR_RADIX
	return ship_mspdsa 
end 

function Ship_MspdSb ( cha_role ) 								--船只基本移动速度角色技能常数影响
	local ship_mspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MSPD ) 
	return ship_mspdsb 
end 



function Ship_MxspSa ( cha_role ) 									--船只基本最大补给值角色技能系数影响
	local ship_mxspsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXSPLY ) / ATTR_RADIX
	return ship_mxspsa 
end 

function Ship_MxspSb ( cha_role ) 								--船只基本最大补给值角色技能常数影响
	local ship_mxspsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXSPLY ) 
	return ship_mxspsb 
end 

--船只最终属性计算--------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_Mnatk_final ( cha_role , ship_role )							--计算船只最小攻击
	local ship_mnatk=  math.floor ( ( Ship_BSMnatk ( ship_role ) * Ship_MnatkSa ( cha_role ) + Ship_MnatkSb ( cha_role ) ) * MnatkSa ( ship_role ) + MnatkSb ( ship_role ) )
	return ship_mnatk 
end 

function Ship_Mnatk ( ship_role )										--船只最小攻击
	local ship_mnatk=GetChaAttr( ship_role , ATTR_MNATK ) 
	return ship_mnatk 
end 

function Ship_Mxatk_final ( cha_role , ship_role )							--计算船只最大攻击
	local ship_mxatk= math.floor ( ( Ship_BSMxatk ( ship_role ) * Ship_MxatkSa ( cha_role ) + Ship_MxatkSb ( cha_role ) ) * MxatkSa ( ship_role ) + MxatkSb ( ship_role ) )
	return ship_mxatk 
end 

function Ship_Mxatk ( ship_role )										--船只最大攻击
	local ship_mxatk=GetChaAttr( ship_role , ATTR_MXATK ) 
	return ship_mxatk 
end 


	
function Ship_Adis_final ( cha_role , ship_role )							--计算船只攻击距离
	local ship_adis= math.floor ( ( Ship_BSAdis ( ship_role ) * Ship_AdisSa ( cha_role ) + Ship_AdisSb ( cha_role ) )  ) 
	return ship_adis 
end 

function Ship_Adis ( ship_role )										--船只攻击距离
	local ship_adis=GetChaAttr( ship_role , ATTR_ADIS ) 
	return ship_adis 
end 




function Ship_Cspd_final ( cha_role , ship_role )							--计算船只炮弹飞行速度
	local ship_cspd= math.floor ( ( Ship_BSCspd ( ship_role ) * Ship_CspdSa ( cha_role ) + Ship_CspdSb ( cha_role ) )  )
	return ship_cspd 
end 

function Ship_Cspd ( ship_role )										--船只炮弹飞行速度
	local ship_cspd=GetChaAttr( ship_role , ATTR_BOAT_CSPD ) 
	return ship_cspd 
end 



function Ship_Aspd_final ( cha_role , ship_role ) 							--计算炮弹攻击间隔
	local ship_aspd= math.floor ((  Ship_BSAspd ( ship_role ) * Ship_AspdSa ( cha_role ) + Ship_AspdSb ( cha_role ) ) * AspdSa ( ship_role ) + AspdSb ( ship_role ) )
	return ship_aspd  
end 

function Ship_Aspd ( ship_role ) 										--炮弹攻击间隔
	local ship_aspd=GetChaAttr( ship_role , ATTR_ASPD ) 
	return ship_aspd  
end 



function Ship_Crange_final (  cha_role , ship_role ) 							--计算炮弹爆炸范围
	local ship_crange= math.floor ( ( Ship_BSCrange ( ship_role ) * Ship_CrangeSa ( cha_role ) + Ship_CrangeSb ( cha_role ) )  ) 
	return ship_crange  
end 

function Ship_Crange ( ship_role ) 										--炮弹爆炸范围
	local ship_crange=GetChaAttr( ship_role , ATTR_CRANGE ) 
	return ship_crange  
end 




function Ship_Def_final ( cha_role , ship_role ) 							--计算船只防御
	local ship_def= math.floor ( ( Ship_BSDef ( ship_role ) * Ship_DefSa ( cha_role ) + Ship_DefSb ( cha_role ) ) * DefSa ( ship_role ) + DefSb ( ship_role ) ) 
	return ship_def  
end 

function Ship_Def ( ship_role ) 										--船只防御
	local ship_def=GetChaAttr( ship_role , ATTR_DEF ) 
	return ship_def  
end 



function Ship_Resist_final (  cha_role ,ship_role ) 							--计算船只抵抗
	local ship_resist= math.floor ( ( Ship_BSResist ( ship_role ) * Ship_ResistSa ( cha_role ) + Ship_ResistSb ( cha_role ) ) * ResistSa ( ship_role ) + ResistSb ( ship_role ) ) 
	return ship_resist  
end 

function Ship_Resistl ( ship_role ) 										--船只抵抗
	local ship_resist=GetChaAttr( ship_role , ATTR_PDEF ) 
	return ship_resist  
end 



function Ship_Mxhp_final (  cha_role ,ship_role ) 							--计算船只最大耐久
	local ship_mxhp= math.floor ( ( Ship_BSMxhp ( ship_role ) * Ship_MxhpSa ( cha_role ) + Ship_MxhpSb ( cha_role ) ) * MxhpSa ( ship_role ) + MxhpSb ( ship_role ) ) 
	return ship_mxhp  
end 

function Ship_Mxhp ( ship_role ) 										--船只最大耐久
	local ship_mxhp=GetChaAttr( ship_role , ATTR_MXHP ) 
	return ship_mxhp  
end 

function Ship_Hp ( ship_role )										--船只当前耐久
	local ship_hp=GetChaAttr( ship_role , ATTR_HP ) 
	return ship_hp  
end 

function Ship_Hrec_final (  cha_role ,ship_role ) 							--计算船只耐久回复速度
	local ship_hrec= math.floor ( ( Ship_BSHrec ( ship_role ) * Ship_HrecSa ( cha_role ) + Ship_HrecSb ( cha_role ) ) * HrecSa ( ship_role ) + HrecSb ( ship_role )  ) 
	return ship_hrec  
end 

function Ship_Hrec (  ship_role ) 										--船只耐久回复速度
	local ship_hrec=GetChaAttr( ship_role , ATTR_HREC ) 
	return ship_hrec  
end 


function Ship_Srec_final (  cha_role ,ship_role ) 							--计算船只补给消耗速度
	local ship_srec= math.floor ( ( Ship_BSSrec ( ship_role ) * Ship_SrecSa ( cha_role ) + Ship_SrecSb ( cha_role ) ) * SrecSa ( ship_role ) + SrecSb ( ship_role ) ) 
	return ship_srec  
end 

function Ship_Srec ( ship_role ) 										--船只补给消耗速度
	local ship_srec=GetChaAttr( ship_role , ATTR_SREC ) 
	return ship_srec  
end 




function Ship_Mspd_final (  cha_role ,ship_role ) 							--计算船只移动速度
	local ship_mspd= math.floor ( ( Ship_BSMspd ( ship_role ) * Ship_MspdSa ( cha_role ) + Ship_MspdSb ( cha_role ) ) * MspdSa ( ship_role ) + MspdSb ( ship_role ) ) 
	return ship_mspd  
end 

function Ship_Mspd ( ship_role ) 										--船只移动速度
	local ship_mspd=GetChaAttr( ship_role , ATTR_MSPD ) 
	return ship_mspd  
end 



function Ship_Mxsp_final (  cha_role ,ship_role ) 									--船只最大补给值
	local ship_mxsp= math.floor ( ( Ship_BSMxsp ( ship_role ) * Ship_MxspSa ( cha_role ) + Ship_MxspSb ( cha_role ) ) * MxspSa ( ship_role ) + MxspSb ( ship_role ) ) 
	return ship_mxsp  
end 

function Ship_Mxsp ( ship_role ) 										--船只最大补给值
	local ship_mxsp=GetChaAttr( ship_role , ATTR_MXSP ) 
	return ship_mxsp  
end 

function Ship_Sp ( ship_role )										--船只当前补给值
	local ship_sp=GetChaAttr( ship_role , ATTR_SP ) 
	return ship_sp  
end 







function Percentage_Random(a) 
	local x,y=a*1000000000,math.random(0,1000000000) 
	local z 
	if y<=x then 
		z=1 
		else z=0 
	end 
	return z 
end 



function Dis(a,b,c,d) --[[求(a,b)至(c,d)距离]]--
	local x1,y1,x2,y2=a,b,c,d 
	local dis=math.pow( math.pow(x1-x2, 2) + math.pow(y1-y2, 2), 0.5) 
	return dis 
end 

function Check_Direction(a) 
	--LuaPrint("Enter function Check_Direction(a) --[[determine  character direction, x axis of center as 1, anticlockwise as 2, 3, 4, 5, 6, 7, 8]--") 
	local direction=GetChaAttr(a, ATTR_DIREC) 
	local division 
	if ((direction>=337.5) and (direction<360)) or ((direction>=0) and (direction<22.5)) then 
		division=1 
	elseif (direction>=22.5) and (direction<67.5) then 
		division=2 
	elseif (direction>=67.5) and (direction<112.5) then 
		division=1 
	elseif (direction>=112.5) and (direction<157.5) then 
		division=8 
	elseif (direction>=157.5) and (direction<202.5) then 
		division=7 
	elseif (direction>=202.5) and (direction<247.5) then 
		division=6 
	elseif (direction>=247.5) and (direction<292.5) then 
		division=5 
	elseif (direction>=292.5) and (direction<337.5) then 
		division=4 
	else --LuaPrint("incorrect character angle direction".."\n" ) 
      return 
   end 

	--LuaPrint("Out function Check_Direction(a) --[[determine character direction, x axis with center as 1, anticlockwise as 2, 3, 4, 5, 6, 7, 8]--") 
	return division 
end 


function Hp_Dmg(role,dmg) --[[人物hp消耗处理公式]]--

	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
	local T=0.05 -- viju svoi kod ne ugadal( ona vezde takaya?) tut bilo 0.5. No ya ponyal.
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		if Can_Pk_Garner2 == 0 then
			dmg = dmg * T
		end
	end
	--LuaPrint("Enter function Hp_Dmg(role,dmg) --[[hp consumption management formula]]--") 
	--Notice("dmg3="..dmg)
	local statelv_mfd = GetChaStateLv ( role , STATE_MFD ) 
	local hp = Hp(role) 
	local sp = Sp(role) 
	if dmg <= 0 then 
		hp = hp - dmg 
		SetCharaAttr(hp, role, ATTR_HP )  
		return 
	end 
	
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Elf_Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Elf_Num , 0 , 1 )
		local PowerSheild = 0
		if CheckElfSkill == 2 then
			PowerSheild = ElfSKill_PowerSheild ( role , Elf_Item , Elf_Num , dmg )
			if PowerSheild ~= 0 then
				SystemNotice ( role , "\212\229\255 \224\234\242\232\226\232\240\238\226\224\235\224 \231\224\249\232\242\243,\243\240\238\237 \225\251\235 \239\238\227\235\238\249\184\237 " )
			end
			dmg = dmg - PowerSheild
		end
	end

	if statelv_mfd >= 1 then 
		sp_change = statelv_mfd * 0.25 + 0.5
	--local map_name_ATKER = GetChaMapName ( a )
	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
	--	Notice("22")
			if Can_Pk_Garner2 == 0 then
				sp_change = statelv_mfd * 0.25 + 0.5
			end
		end
		local Check_Heilong  = CheckItem_Heilong ( role )
		if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.5 )
			if Percentage == 1 then
				  sp_change =  sp_change*1.5
				SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\237\224\226\251\234 \241\240\224\225\238\242\224\235 \253\244\244\229\234\242\232\226\237\229\233 ")
			end
		end
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
		
				end
			end	
		end
		if dmg / sp_change <= sp then 
			sp = math.floor ( sp - dmg/sp_change ) 
		else 
			hp =math.floor ( hp - ( dmg/sp_change - sp ) ) 
			sp = 0 
			RemoveState ( role , STATE_MFD ) 
		end 
	else
		local Check_Nianshou = CheckItem_Nianshou ( role )
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if Check_Nianshou == 1 then
			local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				dmg = dmg * -1
				SystemNotice ( role , "Recieved blessing from Goddess. Drains enemy HP.")
			end
		end
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "\192\234\242\232\226\232\240\238\226\224\237\224 \241\232\235\224 \241\229\242\224,\243\240\238\237 \247\224\241\242\232\247\237\238 \239\238\227\235\238\249\184\237" )
		
				end
			end	
		end
	
	--local map_name_ATKER = GetChaMapName ( role )
		local ZSExp = GetChaAttr( role , ATTR_CSAILEXP )
		if ZSExp > 0 and ZSExp < 100 then
			dmg = dmg * 0.945
		end
		if ZSExp >= 100 and ZSExp < 12100 then
			dmg = dmg * ( 0.95 - math.floor( math.pow( (ZSExp / 100) , 0.5 )) * 0.005)
		end
		hp = Hp(role) - dmg 
	end 
	SetCharaAttr(sp, role, ATTR_SP ) 
	SetCharaAttr(hp, role, ATTR_HP )  
	--LuaPrint("Out function Hp_Dmg(role,dmg) --[[HP consumption management formula]]--") 
end 


function Endure_Dmg ( role , dmg ) 
	local hp = Hp ( role ) - dmg 
	SetCharaAttr(hp, role, ATTR_HP ) 
end 
	

function Sp_Red(role,sp_reduce) --[[sp消耗处理公式]]--
	--LuaPrint("Enter function Sp_Red(role,spreduce) --[[SP consumption management formula]]--") 
	local sp = Sp(role) - sp_reduce 
	SetCharaAttr(sp, role, ATTR_SP ) 
	--LuaPrint("Out function Sp_Red(role,spreduce) --[[SP consumption management formula]]--") 
end 

function Coefficientadjust_Steady_atk()	--[[调整稳定攻击系数]]--
	--LuaPrint("Enter function Coefficientadjust_Steady_atk()	--[[Adjust stable attack modulus]]--") 
	local steady_atk_maxreduce = 0.9 
	local steady_atk_maxreducepoint = 0.99 
	local steady_atk_maxluk=1500 
	local a = steady_atk_maxreduce / steady_atk_maxluk 
	local b = steady_atk_maxreducepoint / steady_atk_maxluk 
	--LuaPrint("Out function Coefficientadjust_Steady_atk()	--[[adjust stable attack value]]--") 
	return a,b,steady_atk_maxreduce,steady_atk_maxreducepoint 
end 

function SetSteady_atk(a) --[[设定攻击力稳定性]]--
	--LuaPrint("Enter function SetSteady_atk(a) --[[set attack stability]]--") 
	local x,y,m,n = Coefficientadjust_Steady_atk() --[[调整稳定攻击系数]]--
	local sum=1 
	local atkstep={} --[[每档攻击力占有率]]--
	local atk={} --[[每档攻击占有随机数值范围]]--
	atk[Mnatk_final(a) - 1 ] = 0 
	for i = Mnatk_final(a),  Mxatk_final(a), 1 do 
		atkstep[i] = 1 
	end 
	local maxreduce = math.min(m, Luk_final(a) * x ) 
	local reducepoint = math.min(n, Luk_final(a) * y ) * (Mxatk_final(a) - Mnatk_final(a) ) 
	if reducepoint==0 then 
		--LuaPrint("Non attacking wave".."\n") 
		atk[Mnatk_final(a)] = 1 
	return atk,sum 
	end --[[处理无攻击力波动，返回最小攻击力取得概率为1]]--
	local steady_step = maxreduce / reducepoint 
	for i = 0, Mxatk_final(a) - Mnatk_final(a), 1 do 
		atkstep[ i + Mnatk_final(a) ] = atkstep [ i + Mnatk_final(a) ] - math.max(0, (maxreduce-i * steady_step) ) 
		sum = sum + atkstep[ i + Mnatk_final(a) ]  
		atk[ i + Mnatk_final(a) ] = sum 
	end 
	--local gatk = 0 
	--for i = Mnatk_final(a), Mxatk_final(a), 1 do 
	--ccc = (atk[i]-atk[i-1]) / sum 
	--gatk = gatk + i * ccc --[[平均攻击力]]--
	--end 
	--LuaPrint("Out function SetSteady_atk(a) --[[Set attack stability]]--") 
	return atk,sum 
end 
	
	
function CheckSteady_atk(a) --[[稳定攻击判定]]--
	--LuaPrint("Enter function CheckSteady_atk(a) --[[stablilze attack determination]]--") 
	local atk,sum = SetSteady_atk(a) 
	local x = math.random( 0, 10000 ) 
	local y = x * sum/10000 
	for i = Mnatk_final(a), Mxatk_final(a), 1 do 
      if y<=atk[i] then 
         return i 
      end 
   end 
	--LuaPrint ("error! No Hit Rate to Attack, return Min Attack".."\n") 
	--LuaPrint("Out function CheckSteady_atk(a) --[[stablilize attack determination]]--") 
	return Mnatk_fianl(a) 
end 
	

--	function  Skadd_Check( job , lv , tp , form_sklv)									--学习技能判断
--		local itemuse = 0 
--		local cha_job = GetChaAttr( ATKER , ATTR_JOB ) 
--		if  cha_job ~= job then 
--			itemuse = 1 
--		end 
--		local cha_lv = GetChaAttr( ATKER , ATTR_LV ) 
--		if cha_lv < lv then 
--			itemuse = 2 
--		end 
--		local cha_tp = GetChaAttr( ATKER , ATTR_TP ) 
--		if cha_tp < tp then 
--			itemuse = 3 
--		end 
--		if form_sklv > 0 then 
--			itemuse = 4 
--		end 
--		return itemuse 
--	end 
	
function Lefthand_Atk ( role , atk )												--双手武器状态                        
	local sklv = GetSkillLv ( role , STATE_FSZ ) 
	add_atk = math.floor ( atk * ( 1.2 + sklv * 0.08 ) ) 
	return add_atk 
end 

function Check_Zmyj ( role , dmg_mul )												--检查致命一击状态
	local statelv = GetChaStateLv ( role , STATE_ZMYJ ) 
	local crt_rad = 0.2 + statelv * 0.02 
	if dmg_mul == 2 or dmg_mul == 1 then 
		a = Percentage_Random ( crt_rad ) 
		if a== 1 then 
			dmg_mul = 2 + statelv/2 
		end 
	end 
	return dmg_mul 
end 
	
function Check_Smyb ( role )													--检查舍命一搏状态
	local statelv = GetChaStateLv (role , STATE_SMYB ) 
	local hp = Hp ( role ) 
	local mxhp = Mxhp ( role ) 
	local atk_sa = 1 
	if hp <= mxhp * 0.2 and hp > 0 then 
		atk_sa = 1 + statelv * 0.1 
	end 
	local mnatk = Mnatk ( role ) * atk_sa 
	local mxatk = Mxatk ( role ) * atk_sa 
	return mnatk , mxatk 
end 


--检测角色隐身状态，移除攻击者的隐身状态——————————————————————————————————

function Check_Ys_Rem ( role_atk , role_def )	
	Check_State ( role_atk , role_def ) 
	if atk_statecheck[STATE_YS] >= 1 then 
		RemoveState ( role_atk , STATE_YS ) 
	end 
end 

function Check_Bshd (statelv) 
	local statetime = 3 + statelv * 1 
	return statetime 
end 

function Atk_Raise ( rad , atker , defer )			--技能攻击提升
	local atk = rad * math.random ( Mnatk( atker ) , Mxatk ( atker ) ) 
	local defer_def = Def ( defer ) 
	local defer_resist = Resist ( defer ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist ) 
	return dmg 
end 

function TurnToCha ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 1 then 
		x_role = GetMainCha ( role ) 
	end 
	return x_role 
end 

function TurnToShip ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 0 then 
		x_role = GetCtrlBoat ( role ) 
		if x_role == nil then 
		end 
	end 
	return x_role 
end 

function ALLExAttrSet ( role )				--根据角色形态分别刷新当前属性
	if IsPlayer ( role ) == 0 then				--角色为怪物
		ExAttrSet ( role ) 
		return 
	end 
	if ChaIsBoat ( role ) == 0 then			--角色形态为人物
		AttrRecheck ( role ) 
	else								--角色形态为船只
		cha_role = GetMainCha ( role ) 
		ShipAttrRecheck ( cha_role , role ) 
	end 
end 

function Hp_Endure_Dmg ( role , dmg ) 
	if ChaIsBoat ( role ) == 0 then 
		Hp_Dmg ( role , dmg ) 
		local state_ys_lv =  GetChaStateLv (role , STATE_YS ) 
		if state_ys_lv >= 1 then 
			RemoveState ( role , STATE_YS ) 
		end 
	else 
		Endure_Dmg ( role , dmg ) 
	end 
end 

----计算船只成长属性------------------------------------------------------------------------------
function Boat_plus_MNATk( Lv , mnatk)
	local mnatk_new = 0
	
	if Lv < 1 then
		return mnatk
	end
	
	if Lv > 100 then

		return mnatk
	end
	
	if Lv < 60 then
		mnatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mnatk

		return mnatk_new
	end
	
	if Lv >=60 then
		mnatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mnatk + ( Lv - 60 ) * 5

		return mnatk_new
	end
	

end

function Boat_plus_MXATk( Lv , mxatk)
	local mxatk_new = 0
	
	if Lv < 1 then
		return mxatk_new
	end
	
	if Lv > 100 then
		return mxatk_new
	end
	
	if Lv < 60 then
		mxatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mxatk
		return mxatk_new
	end
	
	if Lv >=60 then
		mxatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mxatk + ( Lv - 60 ) * 5
		return mxatk_new
	end
	

end

function Boat_plus_def ( Lv , def )
	local def_new = 0
	
	if  Lv < 1 then
		return def
	end
	
	if Lv > 100 then
		return def
	end
	
	if Lv < 60 then
		def_new = ( 1 + ( Lv - 20 ) / 120 ) * def
		return def_new

	end
	
	if Lv >= 60 then
		def_new = ( 1 + ( 60 - 20 ) / 120 ) * def + ( Lv - 60 ) * 3
		return def_new
	end
	

end

function Boat_plus_Mxhp ( Lv , Mxhp )
	local Mxhp_new = 0
	
	if Lv < 1 then
		return Mxhp
	end
	
	if Lv > 100 then
		return Mxhp
	end
	
	if Lv < 60 then
		Mxhp_new = ( 1 + ( Lv - 20 ) / 120 ) * Mxhp
		return Mxhp_new
	end
	
	if Lv >= 60 then
		Mxhp_new = ( 1 + ( 60 - 20 ) / 120 ) * Mxhp + (Lv - 60 )  * 20
		return Mxhp_new
	end
end

function Boat_plus_Mspd ( Lv , Mspd )
	local Mspd_new = 0

	if Lv < 1 then
		return Mspd
	end
	
	if Lv >100 then
		return Mspd
	end
	
	if Lv < 60 then
		Mspd_new = ( 1 + ( Lv -30) / 300 ) * Mspd
		return Mspd_new
	end

	if Lv >=60 then
		Mspd_new = ( 1 + ( 60 -30) / 300 ) * Mspd
		return Mspd_new
	end

end

function get_cha_guild_id(cha) 
    local ply_cha = CheckChaRole(cha) 
    if ply_cha == 1 then --玩家角色
        return GetChaGuildID(cha) 
    else 
        local map_copy = GetChaMapCopy(cha)
        local side_id = GetChaSideID(cha) 
		if side_id == 1 then
			return GetMapCopyParam2(map_copy, 4 ) 
		elseif side_id == 2 then
			return GetMapCopyParam2(map_copy, 3 ) 
		end
    end 

end

--判断角色cha1，cha2是否属于队友。
--是队友则返回1，否则返回0
function is_teammate(cha1, cha2) 
    if cha1 == 0 or cha2 == 0 then 
        return 0 
    end 
    if cha1 == cha2 then 
        return 1 
    end
    local ply1 = GetChaPlayer(cha1) 
    local ply2 = GetChaPlayer(cha2) 
    if ply1 ~= 0 and ply2 ~= 0 then 
        if ply1 == ply2 then 
            return 1 
        end 
        local team_id1, team_id2 
        team_id1 = GetChaTeamID(cha1) 
        team_id2 = GetChaTeamID(cha2) 
        if team_id1 ~= 0 and team_id2 ~= 0 and team_id1 == team_id2 then 
            return 1 
        end 
    end 

    return 0 
end 

function is_friend(cha1, cha2) 
    local friend_target = 1 
	if (IsChaInLand(cha1) == 1 and IsChaInLand(cha2) == 0) then
		return 1
	end
    local Map_type = GetChaMapType( cha1 )
    if CheckChaRole( cha1 ) == 0 and Map_type ~= 2 then			
	if CheckChaRole( cha2 ) == 0 then							
		return 1 
	else 
		return 0 
	end 

    end
		if Map_type == 1 then 
			if CheckChaRole ( cha1 ) == 1 then 
					if CheckChaRole( cha2 ) == 0 then							
						return 0 
					else 
						return 1 
					end 

			end 
		end 

		if Map_type == 4 then									
			if Is_NormalMonster (cha1) == 1 then				
				if Is_NormalMonster (cha2) == 1 then 
					return 1 
				end 
			end 
			local team = is_teammate(cha1,cha2) 
			if team == 1 then 
				return 1 
			else 
				local guild_id1, guild_id2 
				guild_id1 = get_cha_guild_id(cha1) 
				guild_id2 = get_cha_guild_id(cha2) 
				if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
					return 1  
				else
					return 0 
				end
			end
		end 

	    if  Map_type ==3 then		
		    local team = is_teammate(cha1, cha2) 
		    if team == 1 then 
		        return 1 
		    else 
			return 0 
		    end
		   
	    end

	    if cha1 == 0 or cha2 == 0 then							--指针为空
	        return 0 
	    end 
--		SystemNotice ( cha1 , "3" ) 
	    if Map_type == 2 then									--工会PK地图判断
		if Is_NormalMonster (cha1) == 1 then						--如果是普通怪物则与怪物是友方
			if Is_NormalMonster (cha2) == 1then 
				return 1 
			end 
		end 
		local guild_id1, guild_id2 
		guild_id1 = get_cha_guild_id(cha1) 
		guild_id2 = get_cha_guild_id(cha2) 
		if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
			return 1 
		else 
			return 0 
		end

	    end 
	    if Map_type == 5 then
		local guild_side_1, guild_side_2 
		guild_side_1 = GetChaSideID(cha1) 
		guild_side_2 = GetChaSideID(cha2) 
		if guild_side_1 == guild_side_2 then
			return 1 
	    else
		    return 0
		end

	    end 
		------------------
		--Plant the Bomb--
		------------------
		if Map_type == PTB.Conf.MapType then
			if (GetChaTypeID(cha2) == 1477) then
				return 1
			end
			return PTB.Friendly(cha1, cha2)
		end	
	    return friend_target 
 end 

function Is_NormalMonster ( role )
  local cha = TurnToCha ( role )
  local Cha_Num = GetChaTypeID( cha )
  for i = 0 , UnNormalMonster_Num , 1 do
	if Cha_Num == UnNormalMonster_ID [i] then
		return 0
	end
  end
  return 1
end

function CheckMonsterDead ( role )
	if role == nil then
		return 1
	end
	if Hp(role) <= 0 then
		return 1
	end
	return 0
end

function ReCheck_Skill_Dmg ( MaxDmg , MinDmg , Ran )

	local a = 0
	a = Percentage_Random ( Ran / 100)
	if a == 1 then
	
		return MaxDmg
	else
	
		return MinDmg
	end
end

function ReCheck_PK_Lv ( ATKER , DEFER )
	local Lv_atker = Lv ( ATKER )
	local Lv_defer = Lv ( DEFER )
	return Lv_atker - Lv_defer
end

--PK - событие после убийства игроком игрока
function after_player_kill_player( ATKER, DEFER )

	SetCharaAttr(0, DEFER, ATTR_SP)
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	-------------
	-- PK очки --
	-------------
	local NameChaPK = GetChaDefaultName(ATKER)
	local Connect, ConnectID = LuaSQL(SQL_CONNECTION[1].SQL_CONNECT, SQL_CONNECTION[1].SQL_HOST, SQL_CONNECTION[1].SQL_UID, SQL_CONNECTION[1].SQL_PWD)
	local String = "UPDATE GameDB.dbo.character SET pk = pk + 1 WHERE cha_name = '"..NameChaPK.."'"
	local Success, Query = LuaSQL("query", ConnectID, String)
	if Success == SQL_SUCCESS_WITH_INFO then
		-- SystemNotice(ATKER, "Вы получили +1 очко PK")
		SystemNotice(ATKER, "\194\251 \239\238\235\243\247\232\235\232 +1 \238\247\234\238 PK")
	else
		-- SystemNotice(ATKER, "Ошибка №1. Сообщите администрации.")
		SystemNotice(ATKER, "\206\248\232\225\234\224 №1. \209\238\238\225\249\232\242\229 \224\228\236\232\237\232\241\242\240\224\246\232\232.")
	end
	local MGPK_MapNameNum = 10
	local MGPK_MapName = {}
	
	MGPK_MapName[0]  = "puzzleworld"
	MGPK_MapName[1]  = "puzzleworld2"
	MGPK_MapName[2]  = "abandonedcity"
	MGPK_MapName[3]  = "abandonedcity2"
	MGPK_MapName[4]  = "abandonedcity3"
	MGPK_MapName[5]  = "darkswamp"
	MGPK_MapName[6]  = "hell"
	MGPK_MapName[7]  = "hell2"
	MGPK_MapName[8]  = "hell3"
	MGPK_MapName[9]  = "hell4"
	MGPK_MapName[10] = "hell5"
	
	local ATKER_Get_Ry = 0
	local DEFER_Get_Ry = 0
	
	local ATKER_Get_chaos = 0
	local DEFER_Get_chaos = 0
	local DEFER_Get1_Ry = 0
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" then
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		-- Равные уровни
		if Lv_ATKER == Lv_DEFER then
			ATKER_Get_chaos = 5
			DEFER_Get_chaos = -3
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 5 очков хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 3 очка хаоса!")
		end
		-- Уровень атакующего больше на 5
		if Lv_dif >= 1 and Lv_dif <= 5 then
			ATKER_Get_chaos = 5
			DEFER_Get_chaos = -3
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 5 очков хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 3 очка хаоса!")
		end
		-- Уровень атакующего больше на 10
		if Lv_dif >= 6 and Lv_dif <= 10 then
			ATKER_Get_chaos = 3
			DEFER_Get_chaos = -2
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 3 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 2 очка хаоса!")
		end
		-- Уровень атакующего больше на 15
		if Lv_dif >= 11 and Lv_dif <= 20 then
			ATKER_Get_chaos = 2
			DEFER_Get_chaos = -1
			SystemNotice ( ATKER , "Вы побеждаете слабого противника и получаете 2 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил сильный противник. Потеряно 1 очко хаоса!")
		end
		-- Уровень атакующего больше 16
		if Lv_dif >= 21 then
			ATKER_Get_chaos = 1
			DEFER_Get_chaos = 0
			SystemNotice ( ATKER , "Вы побеждаете очень слабого противника и получаете 1 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил очень сильный противник. Хаос очки не теряются!")
		end
		-- Уровень атакующего меньше на 5
		if Lv_dif <= -1 and Lv_dif >= -5 then
			ATKER_Get_chaos = 5
			DEFER_Get_chaos = -3
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 3 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 2 очка хаоса!")
		end
		-- Уровень атакующего меньше на 10
		if Lv_dif <= -6 and Lv_dif >= -20 then
			ATKER_Get_chaos = 7
			DEFER_Get_chaos = -4
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 3 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 2 очка хаоса!")
		end
		-- Уровень атакующего меньше на 15
		if Lv_dif <= -21 and Lv_dif >= -50 then
			ATKER_Get_chaos = 9
			DEFER_Get_chaos = -5
			SystemNotice ( ATKER , "Вы побеждаете сильного противника и получаете 9 очков хаоса!" )
			SystemNotice ( DEFER , "Вас победил слабый противник. Потеряно 5 очков хаоса!")
		end
		-- Уровень атакующего меньше 16
		if Lv_dif <= -51 then
			ATKER_Get_chaos = 10
			DEFER_Get_chaos = -7
			SystemNotice ( ATKER , "Вы побеждаете очень сильного противника и получаете 10 очков хаоса!" )
			SystemNotice ( DEFER , "Вас победил очень слабый противник. Потеряно 7 очков хаоса!")
		end

		local ATKER_medal = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_medal = GetChaItem2 ( DEFER , 2 , 3849 )
		local AtkerPoint = GetItemAttr ( ATKER_medal , ITEMATTR_MAXENERGY )
		local DeferPoint = GetItemAttr ( DEFER_medal , ITEMATTR_MAXENERGY )
		local AtkerPoint = AtkerPoint + ATKER_Get_chaos
		local DeferPoint = DeferPoint + DEFER_Get_chaos
			if DeferPoint <= 0 then
				DeferPoint = 0
			end
			if ATKER == DEFER then
				ATKER_Get_chaos = ATKER_Get_chaos - 1
			end
		SetItemAttr ( ATKER_medal , ITEMATTR_MAXENERGY , AtkerPoint)
		SetItemAttr ( DEFER_medal , ITEMATTR_MAXENERGY , DeferPoint)
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )

		MapCopyNotice ( map_copy , Notice_map )
	
	end
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "[\213\224\238\241] \200\227\240\238\234 ["..def_name.."] \242\229\240\239\232\242 \239\238\240\224\230\229\237\232\229 \238\242 ["..atk_name.."]"
		Notice ( Notice_all )
	end

	if map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "[\209\237\229\230\237\251\233 \194\238\233\237\251] \200\227\240\238\234 ["..def_name.."] \242\229\240\239\232\242 \239\238\240\224\230\229\237\232\229 \238\242 ["..atk_name.."]"
		Notice ( Notice_all )
	end

	if map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "В Логовое Черного Дракона: ["..def_name.."] терпит поражение от ["..atk_name.."]"
		Notice ( Notice_all )
	end

	if map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "[\203\224\227\229\240\252 \204\184\240\242\226\251\245 \196\243\248] \200\227\240\238\234 "..def_name.." \242\229\240\239\232\242 \239\238\240\224\230\229\237\232\229 \238\242 \232\227\240\238\234\224 "..atk_name.." "
		Notice ( Notice_all )
	end
	
	if map_name_ATKER == "magicsea" or map_name_DEFER == "magicsea" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "[\216\224\233\242\224\237] \200\227\240\238\234 ["..def_name.."] \242\229\240\239\232\242 \239\238\240\224\230\229\237\232\229 \238\242 \232\227\240\238\234\224 ["..atk_name.."]"
		Notice ( Notice_all )
	end
	
		if map_name_ATKER == "farmer1" or map_name_DEFER == "farmer1" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "[\206\241\242\240\238\226 \209\234\238\240\225\232] \200\227\240\238\234 ["..def_name.."] \242\229\240\239\232\242 \239\238\240\224\230\229\237\232\229 \238\242 \232\227\240\238\234\224 ["..atk_name.."]"
		Notice ( Notice_all )
	end

	if map_name_ATKER == "Hellchapter" or map_name_DEFER == "Hellchapter" then
                local atk_name = GetChaDefaultName ( ATKER )
                local def_name = GetChaDefaultName ( DEFER )
                local Notice_all = "[\192\228] \200\227\240\238\234 ["..def_name.."] \242\229\240\239\232\242 \239\238\240\224\230\229\237\232\229 \238\242 \232\227\240\238\234\224 ["..atk_name.."]"
                Notice ( Notice_all )
        end
		
	if map_name_ATKER == "bountypk" or map_name_DEFER == "bountypk" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "[\192\240\229\237\224] \200\227\240\238\234 ["..def_name.."] \242\229\240\239\232\242 \239\238\240\224\230\229\237\232\229 \238\242 \232\227\240\238\234\224 ["..atk_name.."]"
		Notice ( Notice_all )
	end
	
	if map_name_ATKER == "prisonisland" or map_name_DEFER == "prisonisland" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "[\206\241\242\240\238\226 \196\240\224\234\238\237\238\226] \200\227\240\238\234 ["..def_name.."] \242\229\240\239\232\242 \239\238\240\224\230\229\237\232\229 \238\242 \232\227\240\238\234\224 ["..atk_name.."]"
		Notice ( Notice_all )
	end
	
	if map_name_ATKER == "teampk" or map_name_DEFER == "teampk" then
		local ATKER_RYZ = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ = GetChaItem2 ( DEFER , 2 , 3849 )
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 10 and Lv_dif > -5 then
			ATKER_Get_Ry = 1
			DEFER_Get_Ry = -1
			--SystemNotice ( ATKER ,"Вы победили противника. Получено очков чести: "..ATKER_Get_Ry )
			--SystemNotice ( DEFER ,"Вы потерпели поражение. Потеряно очков чести: "..ATKER_Get_Ry )
		end
		
		if Lv_dif >= 10 then
			ATKER_Get_Ry = 0
			DEFER_Get_Ry = 0
			--SystemNotice ( ATKER , "Уровень побежденного противника слишком мал. Вы не получаете очков чести" )
		end
		
		if Lv_dif < -5 then
			ATKER_Get_Ry = 2
			DEFER_Get_Ry = -2
			--SystemNotice ( ATKER ,"Вы победили сильного противника и получаете "..ATKER_Get_Ry.." очков чести" )
			--SystemNotice ( DEFER ,"Вы убиты слабым игроком и теряете "..ATKER_Get_Ry.." очков чести" )
		end

		local RongyuTpye = ITEMATTR_VAL_STR
		local Kill_Num = 1
		local Kill_attr = ITEMATTR_VAL_AGI
		local Killed_attr = ITEMATTR_VAL_DEX
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = "["..def_name.."] \238\242\245\226\224\242\232\235 \226 \228\243\253\235\229 \238\242 ["..atk_name.."]"
--		SystemNotice( ATKER ,"Honor point gained")
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , RongyuTpye , ATKER_Get_Ry )
--		SystemNotice( ATKER , "Increases Kill count by")
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , Kill_attr , Kill_Num )
--		SystemNotice( DEFER ,"was killed. Honor points deducted by")
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , RongyuTpye , DEFER_Get_Ry )
--		SystemNotice( DEFER , "Defeat Count increases by")	
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , Killed_attr , Kill_Num )
		MapCopyNotice ( map_copy , Notice_map )

	end
	
	if map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] терпит поражение от ["..atk_name.."]"
		Notice ( Notice_all )
	end


	if map_name_ATKER == "guildwar" or map_name_DEFER == "guildwar" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		local Num_shengsi_1= CheckBagItem(DEFER,2382)
	if Num_shengsi_1 >=1 then
		TakeItem( DEFER, 0,2382, 1 )    
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
	
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
		SystemNotice ( ATKER , "Цель не относится ни к Флоту, ни к Пиратам" )
	   end
	end
     end

   	if map_name_ATKER == "guildwar2" or map_name_DEFER == "guildwar2" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		local Num_shengsi_2= CheckBagItem(DEFER,2382)
	if Num_shengsi_2 >=1 then
		TakeItem( DEFER, 0,2382, 1 )   
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
	
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
			SystemNotice ( ATKER , "Цель не относится ни к Флоту, ни к Пиратам" )
	   end
	end
     end

	------
	-- Убийство в данжах
    local C_Map = 0
	for C_Map = 0 , MGPK_MapNameNum , 1 do
	    if  map_name_ATKER == MGPK_MapName[C_Map] then
	    
			local atk_name = GetChaDefaultName ( ATKER )
			local def_name = GetChaDefaultName ( DEFER )
			local map_copy = GetChaMapCopy ( ATKER )
			local Notice_map = "\200\227\240\238\234 ["..def_name.."] \242\229\240\239\232\242 \239\238\240\224\230\229\237\232\229 \238\242 ["..atk_name.."]"
			
			MapCopyNotice ( map_copy , Notice_map )
			
			ATKER = TurnToCha ( ATKER )
			DEFER = TurnToCha ( DEFER )
			
			local Have_TSWW = CheckBagItem( DEFER , 3846 )
			--ВУДУ
			if Have_TSWW <= 0 then
				Dead_Punish_ItemURE ( DEFER )
				MGPK_Dead_Punish_Exp ( DEFER )
			else
				local j = DelBagItem( DEFER , 3846 , 1 )
				if j == 0 then
				else
					SystemNotice ( DEFER , "Кукла Вуду спасла тебя от потери опыта" )
				end
			end

	    end
	end 
end
--迷宫PK死亡经验惩罚
function MGPK_Dead_Punish_Exp ( dead )
	local map_name = GetChaMapName ( dead )
	dead = TurnToCha ( dead ) 
	local lv = GetChaAttr( dead, ATTR_LV ) 
	local exp_red 
	local exp = Exp(dead) 
	local nlexp = GetChaAttrI ( dead , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( dead , ATTR_CLEXP ) 
	local exp_per = math.min ( math.floor ( ( nlexp - clexp ) * 0.02 ) , math.max ( exp - clexp , 0 ) )	---按照百分比计算损失
	if  exp <= clexp then 
		exp_red = 0 
	else 
		exp_red = math.pow( lv , 2 ) * 20								---按照等级计算损失
	end 
	
	if exp_red > exp_per then										---取两种算法中较小的扣除
		exp_red = exp_per
	end

	if Lv ( dead ) >= 80 then 
		exp_red = math.floor ( exp_red / 50 )
		exp_red_80 = exp_red * 50 
		SystemNotice (dead , "Death penalty. EXP lost:"..exp_red_80 ) 
	else 
		SystemNotice (dead , "Death penalty. EXP lost:"..exp_red ) 
	end
	
	exp = Exp(dead) - exp_red

	SetChaAttrI( dead , ATTR_CEXP , exp ) 
	
	local name = GetChaDefaultName ( dead )
	
end 



--增加荣誉证属性
function Add_ItemAttr_RYZ ( Cha_role ,role , attrtype , Num )
	local i = 0
	local attr_num = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "Operation antenumber value"..attr_num )
--	SystemNotice ( Cha_role , "Operation Value"..Num )
--	SystemNotice ( Cha_role , "Operation attribute"..attrtype )
	attr_num = attr_num + Num
	i = SetItemAttr ( role ,attrtype , attr_num )
	local attr_num_1 = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "value after operation"..attr_num_1 )
	if i == 0 then
	end
	
end


--读取荣誉证属性

--参加场数
--参数：角色指针
--返回值：参赛场数
function Get_ItemAttr_Join ( Cha_role )

	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_CON
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end

--胜利场数
--参数：角色指针
--返回值：胜利场数
function Get_ItemAttr_Win ( Cha_role )

	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end	

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STA
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end

--添加荣誉值

function AddYongYuZhi( role ,  value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "Does not possess Medal of Valor" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num + value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value > 0 then
		SystemNotice ( role , "Increases Honor points by "..value )
	end
	if value < 0 then
		local a = -1 * value
		SystemNotice ( role , "Deduct Honor Point"..a )
	end

	SynChaKitbag ( role , 7 )
	return 1
end



--改变组队贡献点数
function TakeZuDuiGongXianDu( role , value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "Does not possess Medal of Valor" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num - value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value < 0 then
		local a = value * -1
		SystemNotice ( role ,"Obtained Party Contribution points"..a )
	end
	if value > 0 then
		SystemNotice ( role ,"Party Contribution points deducted:"..value )
	end
	SynChaKitbag ( role , 7 )
	return 1
end



--判断是否有足够的组队贡献点数
function HasZuDuiGongXianDu ( role ,value )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= value then
		return 1
	else
		return 0
	end
end

--判断荣誉值是否符合条件
function LessYongYuZhi( role , str , value )
		local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if str == ">" then
		if attr_num > value then
			return 1
		end
	elseif str == "<" then
		if attr_num < value then
			return 1
		end
	elseif str == "=" then
		if attr_num == value then
			return 1
		end
	else
	end


end

--组队时添加组队贡献点数
function Add_RYZ_TeamPoint ( role ,count_num , add_num )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= 1000 then
		return
	end
	attr_num = attr_num + add_num
	local a = math.min ( 1 , ( count_num - 2 ) * 0.3 )
	local b = 0
	b = Percentage_Random ( a )
	local i = 0
	if b == 1 then

		SetChaKitbagChange ( role , 0 )
		i = SetItemAttr ( role_RYZ ,attrtype , attr_num )

		if i == 0 then
			return
		end
		SynChaKitbag ( role , 7 )
	
		SystemNotice ( role ,"Obtain "..add_num.." point(s) of Team Contribution point")
	end
end

	

--耐久系统--------------------------------------------

--扣除攻击者武器耐久

function Take_Atk_ItemURE ( role )
--	SystemNotice( role ,"deducts attacker weapon durability")
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 1 and boat == 0 then					---怪和船不扣
--		SystemNotice ( role ,"starts to deduct")
		local Item_1 = 0
		local Item_2 = 0
		Item_1 = GetChaItem ( role , 1 , 6 )
		Item_2 = GetChaItem ( role , 1 , 9 )
		
		local Item_URE = 0
		local Take_Num = 1
		local i = 0
		local Item1_Type = Check_Repair_ItemType ( Item_1 )
		local Item2_Type = Check_Repair_ItemType ( Item_2 )
		
		if Item_1 ~= 0 and Item_1 ~= nil then
--			SystemNotice (role , "Left hand")
			local a = 0.03
			local b = Percentage_Random (a)
			
			if b == 1 and Item1_Type == 1 then
--				SystemNotice (role , "start to deduct left hand")
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 6 , 0 )
				end
			end
		end
		
		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_2 ~= 0 and Item_2 ~= nil then
--			SystemNotice ( role ,"Right hand")
			local a = 0.03
			local b = Percentage_Random (a)
			if b == 1 and Item2_Type == 1 then
--				SystemNotice(role ,"start to deduct right hand")
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 9 , 0 )
				end
			end
		end
	end


	
end

--扣除受击者防具耐久

function Take_Def_ItemURE ( role )
	local def = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if def == 1 and boat == 0 then						--怪和船不扣
		local Item_1 = 0
		local Item_2 = 0
		local Item_3 = 0
		local Item_4 = 0

		Item_1 = GetChaItem ( role , 1 , 0 )
		Item_2 = GetChaItem ( role , 1 , 2 )
		Item_3 = GetChaItem ( role , 1 , 3 )
		Item_4 = GetChaItem ( role , 1 , 4 )
		
		local Item_URE = 0
		local Take_Num = 1
		local i = 0

		if Item_1 ~= 0 and Item_1 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 0 , 0 )
				end
			end
		end
		
		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_2 ~= 0 and Item_2 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				
				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 2 , 0 )
				end
			end
		end

		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_3 ~= 0 and Item_3 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_3 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end
				
				Item_URE = Item_URE - Take_Num
				
				
				i = SetItemAttr ( Item_3 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end

				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 3 , 0 )
				end
			end
		end

		Item_URE = 0
		Take_Num = 1
		i = 0
		
		if Item_4 ~= 0 and Item_4 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_4 , ITEMATTR_URE )
				
				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				

				i = SetItemAttr ( Item_4 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 4 , 0 )
				end
			end
		end
	end
end

--正常死亡时扣除耐久
function Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	
	Dead_Punish_Item_Num = 5							--要扣除的装备位置
	
	local Dead_Punish_Item_WZ = { }
	Dead_Punish_Item_WZ [0] = 0
	Dead_Punish_Item_WZ [1] = 2
	Dead_Punish_Item_WZ [2] = 3
	Dead_Punish_Item_WZ [3] = 4
	Dead_Punish_Item_WZ [4] = 6
	Dead_Punish_Item_WZ [5] = 9

	local Dead_Punish_Item = { }
	Dead_Punish_Item [0] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [0] )
	Dead_Punish_Item [1] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [1] )
	Dead_Punish_Item [2] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [2] )
	Dead_Punish_Item [3] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [3] )
	Dead_Punish_Item [4] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [4] )
	Dead_Punish_Item [5] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [5] )

	if Player == 1 and boat == 0 then						--怪和船不扣
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								--装备有效标记
		for j = 0 , Dead_Punish_Item_Num , 1 do
				
			if Dead_Punish_Item[j] ~= 0 and Dead_Punish_Item[j] ~= nil then
				
				local ItemType_Check = Check_Repair_ItemType ( Dead_Punish_Item[j] )
				if ItemType_Check == 1 then
					Item_URE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					
					if Item_URE >= 50 then
						k = 1
					end

					Item_URE = Item_URE - Take_Num
					
					if Item_URE < 50 then
						Item_URE = 49
						
					end
					
					i = SetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end


				end
				
			end
		end
		--SystemNotice ( role , "Death: 5% penalty off durability of equipment" )
		SystemNotice ( role , "\221\234\232\239\232\240\238\226\234\224 \225\251\235\224 \239\238\226\240\229\230\228\229\237\224 " )
	end

end

--PK时死亡扣除耐久

function PK_Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	PK_Dead_Punish_Item_Num = 5							--要扣除的装备位置
	
	local PK_Dead_Punish_Item_WZ = { }
	PK_Dead_Punish_Item_WZ [0] = 0
	PK_Dead_Punish_Item_WZ [1] = 2
	PK_Dead_Punish_Item_WZ [2] = 3
	PK_Dead_Punish_Item_WZ [3] = 4
	PK_Dead_Punish_Item_WZ [4] = 6
	PK_Dead_Punish_Item_WZ [5] = 9

	local PK_Dead_Punish_Item = { }
	PK_Dead_Punish_Item [0] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [0] )
	PK_Dead_Punish_Item [1] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [1] )
	PK_Dead_Punish_Item [2] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [2] )
	PK_Dead_Punish_Item [3] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [3] )
	PK_Dead_Punish_Item [4] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [4] )
	PK_Dead_Punish_Item [5] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [5] )
	if Player == 1 and boat == 0 then						--怪和船不扣
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								--装备有效标记
		for j = 0 , PK_Dead_Punish_Item_Num , 1 do
				
			if PK_Dead_Punish_Item[j] ~= 0 and PK_Dead_Punish_Item[j] ~= nil then
				local ItemType_Check = Check_Repair_ItemType ( PK_Dead_Punish_Item[j] )
				
				if ItemType_Check == 1 then

					Item_URE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					
					if Item_URE >= 50 then
						k = 1
					end

					Item_URE = Item_URE - Take_Num
					if Item_URE < 50 then
						Item_URE = 49
						
					end

					i = SetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end
				end
				
			end
		end
		SystemNotice ( role , "PK death penalty: Item durability dropped by 5%" )
	end
end



--检测道具是否可修理
function can_repair_item ( role_repair , role_want_repair , Item )
	local Check = 0
	local Sklv = 1
	Check = can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	return Check

end

--检测是否可修理主函数

function can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	--	SystemNotice( role_want_repair , "Starts can_repair_item")
	local re_type = IsPlayer ( role_repair )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
	
	
--	SystemNotice ( role_want_repair , "Item_MAXURE= "..Item_MAXURE)
--	SystemNotice ( role_want_repair , "Item_URE= "..Item_URE)

--	SystemNotice ( role_want_repair , "requires gold"..Money_Need )
	
	if Item_MAXURE <= 2500 then
		SystemNotice( role_want_repair , "Items durability too low. Unable to repair" )
		return 0
	end
	if Item_MAXURE == Item_URE then								--耐久太低，耐久未消耗不能修
		SystemNotice( role_want_repair , "\194\229\249\252 \237\229 \237\243\230\228\224\229\242\241\255 \226 \240\229\236\238\237\242\229 ")
		return 0
	end

	if Money_Have < Money_Need then								--没钱不能修
		SystemNotice( role_want_repair , "\205\229\228\238\241\242\224\242\238\247\237\238 \231\238\235\238\242\224 \228\235\255 \240\229\236\238\237\242\224 ")
		return 0
	end

--	if re_type == 1 then
--		return 0
--	end
	
	local i = 0
	i = Check_Repair_ItemType ( Item )
	if i == 1 then
		return 1
	end
	SystemNotice( role_want_repair , "Non-repairable item")

	return 0
end


--取道具修理费用
function get_item_repair_money ( Item )
	local Money = 0
	local Sklv = 1
	Money = get_item_repair_moneyLua ( Item , Sklv )
	
	if Money < 1 then
		Money = 1
	end

	return Money
	
end

--取道具修理费用主函数
function get_item_repair_moneyLua ( Item , Sklv )
	local Item_Lv = GetItemLv ( Item )
	local RepairPoint = math.floor ( math.pow(( Item_Lv / 10 ) , 1.7 )) - 1
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )

	local URE_repair = math.floor ( Item_MAXURE / 50 ) - math.floor ( Item_URE / 50 )
	local Money_Need = math.max ( ( URE_repair * RepairPoint ) , 1 )
	return Money_Need
end

--开始修理道具
function begin_repair_item ( role_repair , role_want_repair , Item )
	local Sklv = 1
	begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
end

--开始修理主函数
function begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
--	SystemNotice( role_want_repair , "Start repairing items")
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
--	SystemNotice ( role_want_repair , "Money_Have = "..Money_Have)
--	SystemNotice ( role_want_repair , "deducts gold "..Money_Need)
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role_want_repair , ATTR_GD )
	ALLExAttrSet( role_want_repair )
--	SystemNotice ( role_want_repair , "Gold Deducted: " )
--	local a = 1
--	local b = 1
	local i = 0
	local j = 0
	
	
--	local URE_NeedRepair = ( Item_MAXURE - Item_URE ) - ( Item_MAXURE * 0.05 )
	
--	if URE_NeedRepair <= 0 then
--		b = 1
--	end

--	if b == 1 then
	Item_URE = Item_MAXURE
	i = SetItemAttr ( Item , ITEMATTR_URE , Item_URE )

	if i == 0 then 
	end
	SystemNotice( role_want_repair ,"\208\229\236\238\237\242 \231\224\226\229\240\248\184\237 " )
--	else
--		local New_Item_MAXURE = math.floor ( Item_MAXURE * 0.95 )
--		i = SetItemAttr ( Item , ITEMATTR_URE , New_Item_MAXURE )
--		j = SetItemAttr ( Item , ITEMATTR_MAXURE , New_Item_MAXURE )
--		SystemNotice ( role_want_repair , "Repair completed" )
--		SystemNotice ( role_want_repair , "Very sorry, some part of durability cannot be restored. Maximum durability reduced to" )
--		if i == 0 then
--		end
--		if j == 0 then
--		end
--	end
	return 1
end


--判断是否为可修理的装备类型
function Check_Repair_ItemType ( Item )
	local Item_Type = GetItemType ( Item )
--	SystemNotice ( role_want_repair , "Item Type="..Item_Type )
	local i = 0
	for i = 0 , Item_CanRepair_Num , 1 do
		if Item_CanRepair_ID [i] == Item_Type then
			return 1
		end
	end
	return 0
end


-----精炼系统32位数字拆解----------------

--读取部分
function GetNum_Part1 ( Num )
	local a = 0
	a = math.floor ( Num / 1000000000 )
	return a
end

function GetNum_Part2 ( Num )
	local a = 0
	local b = 0
	a = Num - GetNum_Part1 ( Num ) * 1000000000
	b = math.floor ( a / 10000000 )
	return b
end

function GetNum_Part3 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10000000 ) * 10000000
	b = math.floor ( a / 1000000 )
	return b
end

function GetNum_Part4 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000000 ) *1000000
	b = math.floor ( a / 10000 )
	return b
end

function GetNum_Part5 ( Num )
	local a = 0
	local b = 0
	a = Num -  math.floor ( Num / 10000 ) * 10000
	b = math.floor ( a / 1000 )
	return b
end

function GetNum_Part6 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000 ) *1000
	b = math.floor ( a / 10 )
	return b
end

function GetNum_Part7 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10 ) *10
	b = math.floor ( a / 1 )
	return b
end

-- function GetNum_Test ( Num )
--	local a = 0
--	Notice ( "This is a testing message from Mars. Please be calm" )
--	Notice ( "Test value as"..Num )
--	a = GetNum_Part1( Num )
--	Notice ( " test numeric part 1= "..a)
--	a = GetNum_Part2( Num )
--	Notice ( " test numeric part 2 = "..a)
--	a = GetNum_Part3( Num )
--	Notice ( " test numeric part 3= "..a)
--	a = GetNum_Part4( Num )
--	Notice ( " test numeric part 4 = "..a)
--	a = GetNum_Part5( Num )
--	Notice ( " test numeric part 5= "..a)
--	a = GetNum_Part6( Num )
--	Notice ( " test numeric part 6 = "..a)
--	a = GetNum_Part7( Num )
--	Notice ( " test value part 7= "..a)
-- end


--写入部分

function SetNum_Part1 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part1 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000000
	return Num
end

function SetNum_Part2 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part2 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000000
	return Num
end

function SetNum_Part3 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part3 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000
	return Num
end

function SetNum_Part4 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part4 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000
	return Num
end

function SetNum_Part5 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part5 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000
	return Num
end

function SetNum_Part6 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part6 ( Num )
	b = Part_Num - a
	Num = Num + b * 10
	return Num
end

function SetNum_Part7 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part7 ( Num )
	b = Part_Num - a
	Num = Num + b * 1
	return Num
end


--function SetNum_Test ( Num )
--	local a = 0
--	Notice ( "This is testing from Mars. Please be calm" )
--	Notice ( "Test value as"..Num)
--	Num = SetNum_Part1 ( Num , 0 )
--	Notice ( "changed part one to"..Num )
--	Num = SetNum_Part2 ( Num , 12 )
--	Notice ( "edit part 2 as"..Num )
--	Num = SetNum_Part3 ( Num , 3 )
--	Notice ( "edit part 3 to"..Num )
--	Num = SetNum_Part4 ( Num , 45 )
--	Notice ( "edit part 4 as"..Num )
--	Num = SetNum_Part5 ( Num , 6 )
--	Notice ( "edit part 5 as"..Num )
--	Num = SetNum_Part6 ( Num , 78 )
--	Notice ( "edit part 6 as"..Num )
--	Num = SetNum_Part7 ( Num , 9 )
--	Notice ( "changed part 7 as"..Num )
--end



--精炼内容初始化--

function SetItemForgeParam_MonsterBaoliao ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Monster [j] then 
			k = j
			a = 200
		end
	end

	if k > MaxHole then
		k = MaxHole
	end
	
--	if k <= 1 then
--		k = 1
--	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k )
	  
--	Notice(Num)
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
	end
end

function SetItemForgeParam_PlayerHecheng ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Hecheng [j] then 
			k = j
			a = 200
		end 
	end 
	
 	if k > MaxHole then
		k = MaxHole
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end


	Num = SetNum_Part1 ( Num , k ) 
	 
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
	end
end

function SetItemForgeParam_QuestAward ( item , Num , item_event )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Mission_1 [j] then 
			k = j
			a = 200
		end 
	end 
	
  	if k > MaxHole then
		k = MaxHole
	end

	if item_event == QUEST_AWARD_SDJ then
		if k == 0 then
			k = 1
		end
	end

	if item_event == QUEST_AWARD_SCBOX then
		k = 2
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k ) 

	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
	end
end

function SetItemForgeParam_Npc_Sale ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
--	local ItemID = GetItemID ( Item )
--	local MaxHole = GetItemHoleNum ( ItemID )

--	for j = 0 , 3 , 1 do 
--		if a <= Item_HoleNum_Monster [i] then 
--			k = i
--			a = 200
--		end
--	end

--	if k > MaxHole then
--		k = MaxHole
--	end

	Num = SetNum_Part1 ( Num , k )
	  
--	Num = 2011000000
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
	end

end


--公会竞标相关内容

--取目前备战公会名次

function GetFightGuildLevel()
--	比较时间，返回level
--	在此插入时间比较，确定GuildLevel
	local Lv = 0
	local Now_Week = GetNowWeek()
	local Now_Time = GetNowTime()
	local CheckNum = Now_Week * 100 + Now_Time
	if CheckNum >= 422 and CheckNum < 522 then
		Lv = 2
	elseif CheckNum >= 522 and CheckNum < 622 then
		Lv = 1
	elseif CheckNum >= 622 and CheckNum < 700 then
		Lv = 3
	elseif CheckNum >= 0 and CheckNum < 22 then
		Lv = 3
	end

	return Lv
end


--取挑战双方的工会编号
--参数：挑战等级
--返回值：擂主工会编号，挑战工会方工会编号
function GetFightGuildID( GuildLevel )
	local RedSide = 0
	local BlueSide = 0
	RedSide , BlueSide = GetChallengeGuildID ( GuildLevel )
	return RedSide,BlueSide
end

--取现在星期几
function GetNowWeek ( )
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	return Now_WeekNum
end

--取现在是几点
function GetNowTime ( )
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	return NowTimeNum
end


--年兽套装判断

function CheckItem_Nianshou ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0825  and Body_ID ~= 2549 then
		return 0
	end

	if Hand_ID ~= 0826  and Hand_ID ~= 2550 then
		return 0
	end

	if Foot_ID ~= 0827  and Foot_ID ~= 2551 then
		return 0
	end

	if Cha_Num == 4 then
		if Head_ID ~= 0828  and Head_ID ~= 2552 then
			return 0
		end
	end

	return 1
end

--黑龙套装判断

function CheckItem_Heilong ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0845 and Body_ID ~= 2367 then
		return 0
	end

	if Hand_ID ~= 0846 and Hand_ID ~= 2368 then
		return 0
	end

	if Foot_ID ~= 0847 and Foot_ID ~= 2369 then
		return 0
	end

	return 1
end

---检测海盗套装
function CheckItem_pirate ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 2530 and body_gem_id ~= 2533 and body_gem_id ~= 2536 and body_gem_id ~= 2539 and body_gem_id ~= 2542 and body_gem_id ~= 2545 then
	   return 0
        end
	if hand_gem_id ~= 2531 and hand_gem_id ~= 2534 and hand_gem_id ~= 2537 and hand_gem_id ~= 2540 and hand_gem_id ~= 2543 and hand_gem_id ~= 2546 then
	   return 0
	end
	if foot_gem_id ~= 2532 and foot_gem_id ~= 2535 and foot_gem_id ~= 2538 and foot_gem_id ~= 2541 and foot_gem_id ~= 2544 and foot_gem_id ~= 2547 then 
           return 0
	end	
	return 1
end


function CheckItem_Death ( role )

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
       if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
		body_gem_id=Body_ID
		hand_gem_id=Hand_ID
		foot_gem_id=Foot_ID
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end
	else
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
		   return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
		   return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
		   return 0
		end	 
	end
	return 1
end
--乱斗之装

function CheckItem_fighting ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	 
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 1124 then
	   return 0
        end
	if hand_gem_id ~= 1125 then
	   return 0
	end
	if foot_gem_id ~= 1126  then 
           return 0
	end
	 
	return 1
end
---算命系统-------------------------------------------------

---求财---------------------

function Suanming_Money ( role )
	local a = CheckSuanmingType ( role )			--检测抽得的什么签
	if a == 1 then
		ShangShangQian_Money ( role )
	elseif a == 2 then
		ShangQian_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
--		SystemNotice ( role , "Today looks good. Nothing special has happened" )
	elseif a == 4 then
		XiaQian_Money ( role )
	elseif a == 5 then
		XiaXiaQian_Money ( role )
	end
end

---求事业-------------------

function Suanming_Work ( role )
	local a = CheckSuanmingType ( role )
	if a == 1 then
		ShangShangQian_Work ( role )
	elseif a == 2 then
		ShangQian_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
--		SystemNotice ( role , "Today looks good. Nothing special has happened" )
	elseif a == 4 then
		XiaQian_Work ( role )
	elseif a == 5 then
		XiaXiaQian_Work ( role )
	end
end


--检测抽得的什么签

function CheckSuanmingType ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 35
	qian [2] = 55
	qian [3] = 85
	qian [4] = 100

	for i = 0 , 4 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	return b

end

--财运上上签

function ShangShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 50
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 5 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Obtain some Gold by luck"..GiveMoneyNum_Notice.."% of extra gold" )
		QianAddMoney ( role , 1 , GiveMoneyNum )							----给钱，1为按比例，2为按固定数值
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		SystemNotice ( role , "Получено "..time_Bei.." minutes of bonus increased drop rate" )
	elseif b == 3 then
		GiveItem ( role , 0 , 7481 , 1 , 0 )							---给宝图
	end
end

--财运上签

function ShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 60
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Obtain some Gold by luck"..GiveMoneyNum_Notice.."% of extra gold" )
		QianAddMoney ( role , 1 , GiveMoneyNum )
	elseif b == 2 then
		local Give_Money = 1000 * math.random ( 1 , 15 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 3 then
		local hp_role = Hp( role )
		local hp_dmg = math.floor ( hp_role * 0.9 )
		local Give_Money = math.random ( 10000 , 20000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "Smash by some gold coins. Almost die! Who throw these coins!" )
	end
end

--财运中签

function ZhongQian_Money ( role )
	SystemNotice ( role , "Today is so boring…nothing ever happens..." )
end


--财运下签

function XiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 100 , 5000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Accidentally loses"..GiveMoneyNum_Notice.."% of gold" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
	
end

--财运下下签

function XiaXiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 10000 , 30000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 2 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Accidentally loses"..GiveMoneyNum_Notice.."% of gold" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
end

--事业上上签

function ShangShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 50
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 5 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "Accidentally obtained "..GiveExpNum_Notice.."% EXP" )
		QianAddExp ( role , GiveExpNum , 1 )							----给经验，参数2为当前等级经验的百分比或具体数字，参数3为类型(1为按比例,2为按数量)
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "Recieved blessing from Goddess Kara. Obtained "..time_Bei.." minutes of bonus experience increase" )
	elseif b == 3 then
		QianAddState ( role , 1 )								-----加状态，1 为上上签状态，2为上签状态
	end
end

--事业上签

function ShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
--	qian [1] = 40
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--事业中签

function ZhongQian_Work ( role )
	SystemNotice ( role , "Today is so boring, nothing ever happens..." )
end

--事业下签

function XiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
--	qian [1] = 40
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 50 , 500 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--事业下下签

function XiaXiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 70
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveExpNum = 0.01 * math.random ( 1 , 2 )
		local GiveExpNum_Notice = GiveExpNum * 100
		SystemNotice ( role , "Accidentally lost "..GiveExpNum_Notice.."% EXP" )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 1 )							----给经验，参数2为当前等级经验的百分比或具体数字，参数3为类型(1为按比例,2为按数量)
	elseif b == 2 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		GiveExpNum = GiveExpNum * -1
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 3 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 1.1 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "Character burst and strucked by lightning...." )
	end
end

--抽到钱

function QianAddMoney ( role , Type , Num )
	if Type == 1 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Money_Have * Num

		Money_Have = Money_Have + Money_Add
		Money_Add = math.floor( Money_Add )

		Money_Have = math.floor ( Money_Have )

		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		
		if Money_Add > 0 then
			Num = Num * 100
			SystemNotice ( role , "God of Wealth drops a a bag of gold coins into your coin pouch"..Num.."% of your gold" )
			if Money_Add >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." draws a lot and obtained "..Money_Add.." Gold" )
			end
		elseif Money_Add < 0 then
			Num = Num * -100
			SystemNotice ( role , "God of Misfortune struck you! Loses "..Num.."% gold" )
		end
	
	elseif Type == 2 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Num

		Money_Have = Money_Have + Money_Add

		if Money_Have < 0 then
			Money_Have = 0
		end

		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		if Num > 0 then
			if Num >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				--Notice ( cha_name.." \232\241\239\238\235\252\231\238\226\224\235 \198\240\229\225\232\233 \212\238\240\242\243\237\251, \232 \239\238\235\243\247\232\235 "..Num.." \231\238\235\238\242\224 " )
			end
		elseif Num < 0 then
			Num = Num * -1
			SystemNotice ( role , "You found out that you have lost "..Num.." Gold" )
		end
	end
end

--抽到经验

function QianAddExp ( role , Num , type )
	local lv = GetChaAttr( role, ATTR_LV )
	local exp = Exp(role) 
	local nlexp = GetChaAttrI ( role , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( role , ATTR_CLEXP )
	local ThisLvexp = nlexp - clexp
	local ExpGet = ThisLvexp * Num
	
	if type == 2 then
		ExpGet = Num
		if lv >= 80 then
			ExpGet = math.floor ( ExpGet / 50 )
		end
	end

	ExpGet = math.floor ( ExpGet )

	exp = exp + ExpGet
	
	if exp > nlexp then
		exp = nlexp + math.floor ( ( exp - nlexp ) / 50 )
	end
	
	if exp < 0 then
		exp = 0
	end

	
	SetChaAttrI( role , ATTR_CEXP , exp )

	if lv >= 80 then
			ExpGet = ExpGet * 50
	end

	if ExpGet > 0 then
		
		SystemNotice ( role , "Accidentally obtained "..ExpGet.." EXP" )
		if ExpGet >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." draws a lot and obtained "..ExpGet.." EXP" )
		end
	elseif ExpGet < 0 then
		ExpGet = ExpGet * -1
		SystemNotice ( role , "Experience lost: "..ExpGet.." EXP" )
	end

end

--抽到状态

function QianAddState ( role , Type )

	local State = { }
	local StateName = { }

	State [0] = STATE_PKZDYS
	State [1] = STATE_PKSFYS
	State [2] = STATE_PKMNYS
	State [3] = STATE_PKJZYS
	State [4] = STATE_PKKBYS
	
	StateName [0] = "Attack"
	StateName [1] = "Defense"
	StateName [2] = "Max HP"
	StateName [3] = "Hit Rate"
	StateName [4] = "Attack Speed"

	local i = math.random ( 0 , 4 )
	local statelv = 0
	local TimeRange = 0
	if Type == 1 then
		TimeRange = 60
	elseif Type == 2 then
		TimeRange = 30
	end
	local statetime = math.random ( 1 , TimeRange )
	statetime = statetime * 60
	
	statelv = 10
	AddState ( role , role , State[i] , statelv , statetime ) 
	SystemNotice ( 	role , "You sense that your "..StateName[i].." has increased" )
	
end


--宝图给道具

function GiveGoldenMapItem ( role )
	local CheckRandom = math.random ( 1,100 )
	if CheckRandom >= 1 and CheckRandom <= 23 then
		local GiveMoney = 1000 * math.random ( 1, 20 )
		SystemNotice ( role , "Dug out pirates treasure. Obtained "..GiveMoney.."G" )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 23 and CheckRandom <= 28 then
		XianJing ( role , 1 )
	elseif CheckRandom > 28 and CheckRandom <= 33 then
		XianJing ( role , 2 )
	elseif CheckRandom > 33 and CheckRandom <= 40 then
		SystemNotice ( role , "Today seems to be spining about. Don't know where it will spin to" )
		MapRandomtele ( role )
	else
		SystemNotice ( role , " dug out a hidden pirate treasure" )
		local item_type = BaoXiang_CBTBOX
		local item_type_rad = BaoXiang_CBTBOX_Rad 
		local item_type_count = BaoXiang_CBTBOX_Count 
		local maxitem = BaoXiang_CBTBOX_Mxcount						-- 终结编号
		local item_quality = BaoXiang_CBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
	
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1							--命中物品编号
		for k = 1 , maxitem , 1 do				-- 随机出添加的前缀编号

			d = item_type_rad [ k ] + b

			 if a <= d and a > b then
				c = k
				break 
			end 
			b = d 

		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		local GoodItem = {}
		GoodItem[0]	=	0110
		GoodItem[1]	=	0112
		GoodItem[2]	=	0114
		GoodItem[3]	=	0116
		GoodItem[4]	=	0118
		GoodItem[5]	=	0120
		GoodItem[6]	=	0151
		GoodItem[7]	=	0396
		GoodItem[8]	=	0398
		GoodItem[9]	=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	0760
		GoodItem[31]	=	0824
		GoodItem[32]	=	0860
		GoodItem[33]	=	0861
		GoodItem[34]	=	0862
		GoodItem[35]	=	0863

		local Good_C = 0
		for Good_C = 0 , 35 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.."Откопал сокровища и получил "..itemname  
				Notice ( message )
			end
		end
	end
				

end
------加勒比海盗藏宝图给道具
function GiveGoldenMapItem_JLB ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		--SystemNotice(role ,"Недостаточно свободных слотов в инвентаре)
		--SystemNotice(role ,"Insufficient slots in inventory")
		UseItemFailed ( role )
		return
	end
	local CheckRand = math.random ( 1, 1000 )
	local itemname = ""
	if CheckRand >= 1 and CheckRand <= 100 then
		local x, y = GetChaPos( role )
		local monsterID = {1464,1465,1466,1467}
		local RandMonster = math.random(1, 4)
		local mobs = monsterID[RandMonster]
		local mobuk = CreateCha(mobs, x, y, 145, 30)
		SetChaLifeTime(mobuk, 90000)
	elseif CheckRand > 100 and CheckRand <= 150 then
		local x, y = GetChaPos( role )
		local monsterID = {1469,1470,1471,1472}
		local RandMonster = math.random(1, 4)
		local mobs = monsterID[RandMonster]
		local mobuk = CreateCha(mobs, x, y, 145, 30)
		SetChaLifeTime(mobuk, 90000)
	elseif CheckRand > 150 and CheckRand <= 200 then
		local x, y = GetChaPos( role )
		local monsterID = {1474,1475,1476,1477,1478,1479,1480,1481,1482,1483,1484,1485,1486,1488,1489,1490,1491}
		local RandMonster = math.random(1, 17)
		local mobs = monsterID[RandMonster]
		local mobuk = CreateCha(mobs, x, y, 145, 30)
		SetChaLifeTime(mobuk, 90000)
	elseif CheckRand >= 200 and CheckRand <= 250 then
		local x, y = GetChaPos( role )
		local monsterID = {1510,1511,1512,1513,1514,1515,1516,1517,1518,1519,1520}
		local RandMonster = math.random(1, 11)
		local mobs = monsterID[RandMonster]
		local mobuk = CreateCha(mobs, x, y, 145, 30)
		SetChaLifeTime(mobuk, 90000)
	elseif CheckRand > 250 and CheckRand <= 300 then
		local x, y = GetChaPos( role )
		local monsterID = {1498,1499,1500,1501,1502,1503,1504,1505,1506,1507,1508,1509}
		local RandMonster = math.random(1, 12)
		local mobs = monsterID[RandMonster]
		local mobuk = CreateCha(mobs, x, y, 145, 30)
		SetChaLifeTime(mobuk, 90000)
	elseif CheckRand > 300 and CheckRand <= 350 then -- Дерьмо МегаБОсс и босс
		if CheckRand > 300 and CheckRand <= 310 then -- МегаБосс
			local x, y = GetChaPos( role )
			local mobs = 1473
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		elseif CheckRand > 310 and CheckRand <= 350 then --Босс
			local x, y = GetChaPos( role )
			local mobs = 706
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		end
	elseif CheckRand > 350 and CheckRand <= 400 then -- Навал МегаБОсс и босс
		if CheckRand > 350 and CheckRand <= 360 then -- МегаБосс
			local x, y = GetChaPos( role )
			local mobs = 1515
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		elseif CheckRand > 360 and CheckRand <= 400 then --Босс
			local x, y = GetChaPos( role )
			local mobs = 933
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		end
	elseif CheckRand > 400 and CheckRand <= 450 then -- ОСтров Скелетов МегаБОсс и босс
		if CheckRand > 400 and CheckRand <= 410 then -- МегаБосс
			local x, y = GetChaPos( role )
			local mobs = 1522
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		elseif CheckRand > 410 and CheckRand <= 450 then --Босс
			local x, y = GetChaPos( role )
			local mobs = 1113
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		end
	elseif CheckRand > 450 and CheckRand <= 475 then -- Мираж СПБ МегаБОсс и босс
		if CheckRand > 450 and CheckRand <= 455 then -- МегаБосс
			local x, y = GetChaPos( role )
			local mobs = 1503
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		elseif CheckRand > 455 and CheckRand <= 475 then --Босс
			local x, y = GetChaPos( role )
			local mobs = 967
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		end
	elseif CheckRand > 475 and CheckRand <= 500 then -- Мираж Алкашграда МегаБОсс и босс
		if CheckRand > 475 and CheckRand <= 480 then -- МегаБосс
			local x, y = GetChaPos( role )
			local mobs = 1509
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		elseif CheckRand > 480 and CheckRand <= 500 then --Босс
			local x, y = GetChaPos( role )
			local mobs = 969
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		end
	elseif CheckRand > 500 and CheckRand <= 550 then -- Очко МегаБОсс и босс
		if CheckRand > 500 and CheckRand <= 510 then -- МегаБосс
			local x, y = GetChaPos( role )
			local mobs = 1468
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		elseif CheckRand > 510 and CheckRand <= 550 then --Босс
			local x, y = GetChaPos( role )
			local mobs = 673
			local mobuk = CreateCha(mobs, x, y, 145, 30)
			SetChaLifeTime(mobuk, 90000)
		end			
	elseif CheckRand > 550 and CheckRand <= 575 then -- 10 Репутации		
			GiveItem(role, 0, 7625, 1, 4)
	elseif CheckRand > 575 and CheckRand <= 600 then -- 1кк купюра		
			GiveItem(role, 0, 854, 1, 4)
	elseif CheckRand > 600 and CheckRand <= 625 then -- 50 Репутации		
			GiveItem(role, 0, 7622, 1, 4)
	elseif CheckRand > 625 and CheckRand <= 650 then -- 500к купюра		
			GiveItem(role, 0, 7493, 1, 4)
	elseif CheckRand > 650 and CheckRand <= 675 then -- Сундук ХМ		
			GiveItem(role, 0, 8122, 1, 4)
	elseif CheckRand > 675 and CheckRand <= 700 then -- Сундук ЗО		
			GiveItem(role, 0, 8123, 1, 4)		
	elseif CheckRand > 700 and CheckRand <= 725 then -- Сундук МД		
			GiveItem(role, 0, 8124, 1, 4)
	elseif CheckRand > 725 and CheckRand <= 750 then -- Реф 2лвл - 10 шт		
			GiveItem(role, 0, 8107, 10, 4)
	elseif CheckRand > 750 and CheckRand <= 775 then -- Смерть персонажа
			SetChaAttrI( role , ATTR_HP , 0 )
	elseif CheckRand > 775 and CheckRand <= 800 then ---1 уровень 
			local lv_role = GetChaAttr (role, ATTR_LV)
			local lv_next = lv_role + 1
			local exp_up = GetExp[lv_next] - GetExp[lv_role]
			local Give_Exp = 0
			Give_Exp = (-1) * exp_up * 1
			AddExp (role, role, Give_Exp, Give_Exp)
	elseif CheckRand > 800 and CheckRand <= 825 then ---5 уровень 
			local lv_role = GetChaAttr (role, ATTR_LV)
			local lv_next = lv_role + 1
			local exp_up = GetExp[lv_next] - GetExp[lv_role]
			local Give_Exp = 0
			Give_Exp = (-1) * exp_up * 5
			AddExp (role, role, Give_Exp, Give_Exp)
	elseif CheckRand > 825 and CheckRand <= 850 then ---20 уровень 
			local lv_role = GetChaAttr (role, ATTR_LV)
			local lv_next = lv_role + 1
			local exp_up = GetExp[lv_next] - GetExp[lv_role]
			local Give_Exp = 0
			Give_Exp = (-1) * exp_up * 20
			AddExp (role, role, Give_Exp, Give_Exp)
	elseif CheckRand > 850 and CheckRand <= 875 then ---100 уровень 
			local lv_role = GetChaAttr (role, ATTR_LV)
			local lv_next = lv_role + 1
			local exp_up = GetExp[lv_next] - GetExp[lv_role]
			local Give_Exp = 0
			Give_Exp = (-1) * exp_up * 100
			AddExp (role, role, Give_Exp, Give_Exp)
	elseif CheckRand > 875 and CheckRand <= 900 then -- Потеря профессии
			SetChaAttrI( role , ATTR_JOB, 0 )
	elseif CheckRand > 900 and CheckRand <= 925 then -- -10 репутации
			local el_fame = GetChaAttr(role, ATTR_FAME)
			el_fame = el_fame - 10
			SetCharaAttr(el_fame, role, ATTR_FAME) 
	elseif CheckRand > 925 and CheckRand <= 950 then -- -40 репутации
			local el_fame = GetChaAttr(role, ATTR_FAME)
			el_fame = el_fame - 40
			SetCharaAttr(el_fame, role, ATTR_FAME) 
	elseif CheckRand > 950 and CheckRand <= 975 then -- -200 репутации
			local el_fame = GetChaAttr(role, ATTR_FAME)
			el_fame = el_fame - 200
			SetCharaAttr(el_fame, role, ATTR_FAME) 
	elseif CheckRand > 975 and CheckRand <= 1000 then -- -1 лвл ресета
			local recet = GetChaAttr(role, ATTR_CEXP)
			recet = recet - 1
			SetCharaAttr(el_recet, role, ATTR_CEXP) 
			--Заменяем медаль ресета на прошлую
			local Medal_Have1 = CheckBagItem( role,8109 )
			local Medal_Have2 = CheckBagItem( role,8110 )
			local Medal_Have3 = CheckBagItem( role,8111 )
			local Medal_Have4 = CheckBagItem( role,8112 )
			local Medal_Have5 = CheckBagItem( role,8113 )
			local Medal_Have6 = CheckBagItem( role,8114 )
			if Medal_Have1 == 1 then
				DelBagItem ( role , 8109 , 1 )
			elseif Medal_Have2 == 1 then
				DelBagItem ( role , 8110 , 1 )
				GiveItem(role, 0, 8109, 1, 4)
			elseif Medal_Have3 == 1 then
				DelBagItem ( role , 8111 , 1 )
				GiveItem(role, 0, 8110, 1, 4)
			elseif Medal_Have4 == 1 then
				DelBagItem ( role , 8112 , 1 )
				GiveItem(role, 0, 8111, 1, 4)
			elseif Medal_Have5 == 1 then
				DelBagItem ( role , 8113 , 1 )
				GiveItem(role, 0, 8112, 1, 4)
			elseif Medal_Have6 == 1 then
				DelBagItem ( role , 8114 , 1 )
				GiveItem(role, 0, 8113, 1, 4)
			end
	end
	local cha_name = GetChaDefaultName ( role )
	Notice ( "\200\227\240\238\234 " ..cha_name.." \240\224\241\234\238\239\224\235 \241\238\234\240\238\226\232\249\224, \232 \239\238\235\243\247\232\235 "..itemname )
end

--检测坐标

function CheckGetMapPos ( role , pos_x , pos_y , MapName )
--	SystemNotice ( role , "CheckPos" )
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end

	local Cha_pos_x , Cha_pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )

	local Cha_x_min = pos_x * 100 - 400
	local Cha_x_max = pos_x * 100 + 400
	local Cha_y_min = pos_y * 100 - 400
	local Cha_y_max = pos_y * 100 + 400

	if map_name ~= MapName then
--		SystemNotice ( role , "map_name"..map_name)
--		SystemNotice ( role , "MapName"..MapName )
--		SystemNotice ( role , "mapname Error" )
		return 0 
	end 

	if Cha_pos_x < Cha_x_min or Cha_pos_x > Cha_x_max then
	
		return 0
	end

	if Cha_pos_y < Cha_y_min or Cha_pos_y > Cha_y_max then
		return 0
	end

	return 1
end
	
--特殊算命

---求财---------------------

function SuanmingTeshu_Money ( role )
	local a = CheckSuanmingTypeTeshu ( role )			--检测抽得的什么签
	if a == 1 then
		ShangShangQianTeshu_Money ( role )
	elseif a == 2 then
		ShangQianTeshu_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
--		SystemNotice ( role , "Today looks good. Nothing special has happened" )

	end
end

---求事业-------------------

function SuanmingTeshu_Work ( role )
	local a = CheckSuanmingTypeTeshu ( role )
	if a == 1 then
		ShangShangQianTeshu_Work ( role )
	elseif a == 2 then
		ShangQianTeshu_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
--		SystemNotice ( role , "Today looks good. Nothing special has happened" )
	end
end

--特殊检测
function CheckSuanmingTypeTeshu ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 1000
	qian [1] = 2000
	qian [2] = 3000
	
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	return b

end

--特殊财运上上签

function ShangShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 5000
	qian [1] = 6000
	qian [2] = 10000
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveMoneyNum = 7500 * math.random ( 10 , 100 )
		QianAddMoney ( role , 2 , GiveMoneyNum )							----给钱，1为按比例，2为按固定数值
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		SystemNotice ( role , "Recieved blessing from Goddess Kara. Obtained "..time_Bei.." minutes of bonus increased drop rate" )
	elseif b == 3 then
		GiveItem ( role , 0 , 7482 , 1 , 0 )							---给宝图
	end
end

--特殊财运上签

function ShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 6000
	qian [1] = 1000
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local Give_Money = 10000 * math.random ( 1 , 20 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		local Give_Money = math.random ( 10000 , 30000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "Smash by some gold coins. Almost die! Who throw these coins!" )
	end
end


--特殊事业上上签

function ShangShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 3000
	qian [1] = 6000
	qian [2] = 9000
	qian [3] = 10000
--	qian [4] = 100

	for i = 0 , 3 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = ( Lv_role * Lv_role * math.random ( 10 , 100 ) ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "Recieved blessing from Goddess Kara. Obtained "..time_Bei.." minutes of bonus experience increase" )
	elseif b == 3 then
		QianAddState ( role , 1 )								-----加状态，1 上上签状态，2上签状态
	elseif b == 4 then
		QianAddState ( role , 1 )								-----加状态，1 上上签状态，2上签状态
		--QianAddStatePoint ( role , 1 )
	end
end

--特殊事业上签

function ShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 50
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * Lv_role * math.random ( 5 , 50 ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 2 then
		QianAddState ( role , 2 )
	end
end

--增加属性点
function QianAddStatePoint ( role , Num )
	local CheckNum = CheckStatePointHasGet ( role )
	local a = 1 / math.pow ( 2 , ( CheckNum - 1 ) )
	local check = Percentage_Random ( a )
	if check == 1 then
		local attr_ap = Attr_ap( role )
		local ap_extre = Num
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
		local cha_name = GetChaDefaultName ( role )
		Notice ( cha_name.." draws a lot and obtained 1 bonus stat point" )
	else
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--检测额外角色属性点
function CheckStatePointHasGet ( role )
	local str = GetChaAttr( role , ATTR_BSTR )
	local con = GetChaAttr( role , ATTR_BCON )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
	local StatePointTotal_Have = str + con + agi + dex + sta + ap - 25
	local Lv_role = Lv ( role )
	local StatePointTotal = 3 + Lv_role + math.floor ( Lv_role / 10 ) * 4 + math.max ( 0 , ( Lv_role - 59 ) )
	local Check = StatePointTotal_Have - StatePointTotal
	return Check
end

--取宝图坐标

function GetTheMapPos ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local PosDateNum = 8
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1
	PosDateMap [4]	=	2
	PosDateMap [5]	=	3
	PosDateMap [6]	=	1
	PosDateMap [7]	=	2
	PosDateMap [8]	=	1

	PosDateMax_X [0]	=	800
	PosDateMax_X [1]	=	940
	PosDateMax_X [2]	=	1023
	PosDateMax_X [3]	=	1012
	PosDateMax_X [4]	=	850
	PosDateMax_X [5]	=	2810
	PosDateMax_X [6]	=	380
	PosDateMax_X [7]	=	1420
	PosDateMax_X [8]	=	1614

	PosDateMin_X [0]	=	700
	PosDateMin_X [1]	=	840
	PosDateMin_X [2]	=	919
	PosDateMin_X [3]	=	912
	PosDateMin_X [4]	=	750
	PosDateMin_X [5]	=	2710
	PosDateMin_X [6]	=	280
	PosDateMin_X [7]	=	1320
	PosDateMin_X [8]	=	1514

	PosDateMax_Y [0]	=	1766
	PosDateMax_Y [1]	=	1350
	PosDateMax_Y [2]	=	1054
	PosDateMax_Y [3]	=	2950
	PosDateMax_Y [4]	=	3083
	PosDateMax_Y [5]	=	691
	PosDateMax_Y [6]	=	1725
	PosDateMax_Y [7]	=	3000
	PosDateMax_Y [8]	=	2695

	PosDateMin_Y [0]	=	1666
	PosDateMin_Y [1]	=	1250
	PosDateMin_Y [2]	=	1017
	PosDateMin_Y [3]	=	2850
	PosDateMin_Y [4]	=	2982
	PosDateMin_Y [5]	=	591
	PosDateMin_Y [6]	=	1675
	PosDateMin_Y [7]	=	2900
	PosDateMin_Y [8]	=	2615


	local PosDateGet = math.random ( 0 , PosDateNum )
--	SystemNotice ( role , "PosDateGet"..PosDateGet )

	local Pos_Map = PosDateMap[ PosDateGet ]
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end
--取加勒比地图宝图坐标
function GetTheMapPos_JLB ( role , type )
	local MapList = { }
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"

	local PosDateNum = 3
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1

	PosDateMax_X [0]	=	476 
	PosDateMax_X [1]	=	460 
	PosDateMax_X [2]	=	469 
	PosDateMax_X [3]	=	477 

	PosDateMin_X [0]	=	466
	PosDateMin_X [1]	=	452
	PosDateMin_X [2]	=	462
	PosDateMin_X [3]	=	470

	PosDateMax_Y [0]	=	1052
	PosDateMax_Y [1]	=	980
	PosDateMax_Y [2]	=	1000
	PosDateMax_Y [3]	=	1048

	PosDateMin_Y [0]	=	1000 
	PosDateMin_Y [1]	=	954  
	PosDateMin_Y [2]	=	980  
	PosDateMin_Y [3]	=	1036 

----596,609
----629,953
	local PosDateGet = math.random ( 0 , PosDateNum )
	local Pos_Map = PosDateMap[ PosDateGet ]
	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
	return Pos_X , Pos_Y , Pos_Map
end



--陷阱

function XianJing ( role ,type )
	if type == 1 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "\194\251 \237\224\242\234\237\243\235\232\241\252 \237\224 \239\240\238\234\235\255\242\251\233 \234\235\224\228,\226\224\248\224 \230\232\231\237\252 \226 \238\239\224\241\237\238\241\242\232!" ) 
	elseif type == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.3 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "\194\251 \239\238\239\224\235\232 \226 \239\232\240\224\242\241\234\243\254 \235\238\226\243\248\234\243,\226\224\248\232 \230\232\231\237\232 \243\236\229\237\252\248\229\237\251!" )
	end
end

function MapRandomtele ( role )

	local Birth ={}
	Birth[0]	=	"Argent City"
	Birth[1]	=	"Thundoria Castle"
	Birth[2]	=	"Shaitan City"
	Birth[3]	=	"Icicle Castle"
	Birth[4]	=	"Chaldea Haven"
	Birth[5]	=	"Andes Forest Haven"
	Birth[6]	=	"Abandon Mine Haven"
	Birth[7]	=	"Rockery Haven"
	Birth[8]	=	"Valhalla Haven"
	Birth[9]	=	"Solace Haven"
	Birth[10]	=	"Oasis Haven"
	Birth[11]	=	"Babul Haven"
	Birth[12]	=	"Icicle Haven"
	Birth[13]	=	"Atlantis Haven"
	Birth[14]	=	"Skeleton Haven"
	Birth[15]	=	"Icespire Haven"
	Birth[16]	=	"Zephyr Isle"
	Birth[17]	=	"Glacier Isle"
	Birth[18]	=	"Outlaw Isle"
	Birth[19]	=	"Isle of Chill"
	Birth[20]	=	"Canary Isle"
	Birth[21]	=	"Cupid Isle"
	Birth[22]	=	"Isle of Fortune"
	Birth[23]	=	"Thundoria Castle"
	Birth[23]	=	"Thundoria Harbor"
	Birth[24]	=	"Sacred Snow Mountain"
	Birth[25]	=	"Andes Forest Haven"
	Birth[26]	=	"Oasis Haven"
	Birth[27]	=	"Icespire Haven"
	Birth[28]	=	"Lone Tower Entrace"
	Birth[29]	=	"Barren Cavern Entrance"
	Birth[30]	=	"Abandon Mine 2"
	Birth[31]	=	"Silver Mine 2"
	Birth[32]	=	"Silver Mine 3"
	Birth[33]	=	"Abandon Mine 1"
	Birth[34]	=	"Lone Tower 2"
	Birth[35]	=	"Lone Tower 3"
	Birth[36]	=	"Lone Tower 4"
	Birth[37]	=	"Lone Tower 5"
	Birth[38]	=	"Lone Tower 6"
	Birth[39]	=	"Argent Bar"

	local PosRandom = math.random ( 0 , 39 )
	DelBagItem ( role , 1093 , 1 )
	MoveCity(role, Birth[PosRandom] )

end



function check_item_valid ( role , Item )
	local Item_type = GetItemType ( Item )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )

	if Item_type <= 29 or Item_type == 59 then
		if Item_URE ~= 0 and Item_URE <= 49 then
			return 0
		else
			return 1
		end
	end
	return 1
end

function cha_timer( role, freq, time )
	local resume_freq = 5
	local now_tick = GetChaParam(role, 1)
	local is_role_living = -1
	SetChaParam(role, 1, now_tick + freq * time)
	-----------------------
	-- Восстановление ЖЗ --
	-----------------------
	if math.mod( now_tick, resume_freq ) == 0 and now_tick > 0 then 
		if is_role_living == -1 then
			is_role_living = IsChaLiving( role )
		end
		if is_role_living == 1 then 
			Resume( role )
		end 
	end
	Wings.ApplyEffect(role)
	Cloak.ApplyEffect(role)
	VIPSystem.ApplyEffect(role)
	UseAutoFruit(role) 
	----------------
	-- Test Medal --
	----------------
	local get_medal_slot = GetChaItem ( role , 2 , 5 )
	local get_medal_id = GetItemID ( get_medal_slot )
	local State_LV_Medal = 0
	if get_medal_id == 8154 then
		--Время час, все равно обновлятся будет
		local statetime = 3600
		local State_LV_Medal = 1
		--Добавляем эффект
			AddState( role , role , MEDAL_STATE , State_LV_Medal , statetime )
	else
		--Иначе чекаем стат
		local state_guardian = GetChaStateLv ( role , MEDAL_STATE )
		--Если он не равен 0, то...
		if state_guardian ~= 0 then
		--Убираем эффект
			RemoveState ( role , MEDAL_STATE )
		end
	end
	---------------
	-- End Medal --
	---------------
	--tempBagEquip.Check(role, now_tick)
	----------------------------------
	-- Осада Москвы по воскресеньям --
	----------------------------------
	local Event_Moscow = 0
	local now_day= os.date("%d") 
	now_day= tonumber(now_day)
	if now_day == 7 then
		Event_Moscow = 1
	else
		Event_Moscow = 0
	end
	--------------------
	-- Авто-кормление --
	--------------------
	local juluka_freq = 360
	local energy_resume = 360
	if math.mod(now_tick, juluka_freq) == 0 and now_tick > 0 then
		local map_name = GetChaMapName ( role )
		if map_name == "Pkteam" then
			local item_jiluka = GetChaItem( role, 2, 2)
			local item_id = GetItemID( item_jiluka )
			if item_id == 5724 then
				local energy = GetItemAttr(item_jiluka, ITEMATTR_ENERGY)
				if energy < 0 then
					energy = 0
				elseif energy ==0 then
				SystemNotice ( role , "\194\224\248 \241\240\238\234 \237\224\234\224\231\224\237\232\255 \239\240\238\248\229\235. \207\238\227\238\226\238\240\232\242\229 \241 \205\224\247\224\235\252\237\232\234\238\236 \242\254\240\252\236\251." )
				else
					energy = energy - energy_resume
					SetItemAttr(item_jiluka, ITEMATTR_ENERGY, energy )
				end
			end
		end
	end
	
--------------------------------------------------
--						Феи						--
--------------------------------------------------
	local pet_freq = 60
	local Item_Elf = GetChaItem( role, 2, 1 )
	local Get_Elf_Type = GetItemType( Item_Elf )
	if Get_Elf_Type == 59 then
		local ure_type = GetItemAttr( Item_Elf, ITEMATTR_URE )
		if ure_type<=49 then
			SetChaKbItemValid2( role, Item_Elf, 0, 1 )
		else
			SetChaKbItemValid2( role, Item_Elf, 1, 1 )
		end
		local str = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STR )	-- Сила
		local con = GetItemAttr( Item_Elf ,ITEMATTR_VAL_CON )	-- Телосложение
		local agi = GetItemAttr( Item_Elf ,ITEMATTR_VAL_AGI )	-- Ловкость
		local dex = GetItemAttr( Item_Elf ,ITEMATTR_VAL_DEX )	-- Точность
		local sta = GetItemAttr( Item_Elf ,ITEMATTR_VAL_STA )	-- Дух
		local Lv = str + agi + dex + con + sta	-- Уровень Феи
		if Lv > 100 then										-- Если уровень феи выше 100, то время роста увеличивается
			pet_freq = pet_freq + ( Lv - 100 ) * 1
		end
	end
	local sklv = GetChaStateLv( role, STATE_JLJSGZ )	-- Если применен Фрукт роста феи, время сокращается в 2 раза
	if sklv ~= 0 then
		pet_freq = math.floor( pet_freq * 0.5 )
	end
	if math.mod( now_tick, pet_freq ) == 0 and now_tick > 0 then
		if is_role_living == -1 then
			is_role_living = IsChaLiving( role )
		end
		if is_role_living == 1 then
			local Item_bg = GetChaItem( role, 2, 1 )
			local Get_Item_Type = GetItemType( Item_bg )
			local Item_siliao = GetChaItem( role, 2, 2 )
			local Item_siliao_ID = GetItemID( Item_siliao )
			if Get_Item_Type == 59 then
				local Elf_URE = GetItemAttr( Item_bg, ITEMATTR_URE )
				local Num_JLone = GetItemForgeParam( Item_bg, 1 )
				local Part1_JLone = GetNum_Part1( Num_JLone )
				if Elf_URE <= 10090 and Item_siliao_ID == 2312 then
					local j = TakeItem( role, 0, 2312, 1 )
					if j == 0 then
						SystemNotice( role , "\209\242\224\237\228\224\240\242\237\251\233 \239\224\229\234 \237\229 \232\241\239\238\235\252\231\238\226\224\237!" )
					else
						Elf_URE = Elf_URE + 2500
						SystemNotice( role, "\212\229\255 \224\226\242\238\236\224\242\232\247\229\241\234\232 \237\224\234\238\240\236\235\229\237\224" )
						SetItemAttr( Item_bg, ITEMATTR_URE, Elf_URE )
					end
				end

				----------------------------------------------------------
				-- Получение Монет фей, Эльф. печаток, Кор.эльф.печаток --
				----------------------------------------------------------
				local star_num = GetItemAttr( Item_bg, ITEMATTR_VAL_FUSIONID )
				star_num = star_num + 1
				if math.mod( star_num, 1 ) == 0 and Elf_URE >= 50 and Part1_JLone == 1 then
					GiveItemX( role, 0, 855, 1, 4 )
				end
				if math.mod( star_num, 2 ) == 0 and Elf_URE >= 50 and Part1_JLone ~= 1 then
					GiveItemX( role, 0, 855, 1, 4 )
				end
				if math.mod( star_num, 30 ) == 0 and Elf_URE >= 50 and Part1_JLone == 1 then
					GiveItemX( role, 0, 2588, 1, 4 )
				end
				if math.mod( star_num, 60 ) == 0 and Elf_URE >= 50 and Part1_JLone ~= 1 then
					GiveItemX( role, 0, 2588, 1, 4 )
				end
				if math.mod( star_num, 120 ) == 0 and Elf_URE >= 50 then
					GiveItemX( role, 0, 2588, 1, 4 )
				end
				if math.mod( star_num , 1200 ) == 0  and Elf_URE >= 50 then
					GiveItemX( role, 0, 2589, 1, 4 )
				end
				if star_num == 1200 then
					star_num = 0
				end
				SetItemAttr( Item_bg, ITEMATTR_VAL_FUSIONID, star_num )
				Take_ElfURE( role, Item_bg, 1, 0 )
				Give_ElfEXP( role, Item_bg, 1, 0 )
			end
		end
	end
end

function Take_ElfURE ( role , Item , Type , Num )
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 
	--local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXENERGY ) 
	if Type == 1 then
			--SystemNotice ( role , Elf_URE )
			if Elf_URE >49 then
			--SystemNotice ( role , "starts to deduct " )
                                    Elf_URE = math.max ( ( Elf_URE - 50 ) , 49 )
		                    SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
			else 
				SetChaKbItemValid2(role , Item , 0 , 1)
			end

	end
	if Type == 2 then
		if Elf_URE > 49 then
			 Elf_URE = math.max ( ( Elf_URE - Num ) , 49 )
			 SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
		else
			SetChaKbItemValid2(role , Item , 0 , 1)
		end

	end


end


-------给与精灵成长--------------------------------------------------
function Give_ElfEXP ( role , Item ,Type , Num )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY ) 
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY ) 
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 
	--local rad = math.random( 1 , Lv )  

	if Type == 1 then
			--SystemNotice ( role , Elf_EXP )
			--if rad == 1 then
			 if Elf_URE > 49 then
			   Elf_EXP = Elf_EXP + ELEEXP_GETRAD 
			    if Elf_EXP >= Elf_MaxEXP then
                               Elf_EXP = Elf_MaxEXP
			    end
			   SetItemAttr ( Item , ITEMATTR_ENERGY , Elf_EXP )
			  end
                        --end
        end 

end



--------------------------补充增加精灵体力值--------------------------------------------
function Give_ElfURE ( role , Item  , Num )
	local Elf_URE =  GetItemAttr( Item ,ITEMATTR_URE )
	local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXURE )
	--local Num = 10
        if Elf_URE<=49 then
	SetChaKbItemValid2(role , Item , 1 , 0)
	end
	--SystemNotice ( role , Elf_URE )

	Elf_URE = Elf_URE + Num

	if Elf_URE >= Elf_MaxURE  then
		
		Elf_URE = Elf_MaxURE
	end
	SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )


end


--检测精灵是否拥有足够的成长度升级
function CheckElf_EXP ( role , Item )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )
	local Elf_MaxEXP =  GetItemAttr( Item ,ITEMATTR_MAXENERGY )


	if Elf_EXP >= Elf_MaxEXP then
	        return 1
	else
		return 0
	end
end
function Lvup_Str ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Con ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Agi ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Dex ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Sta ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Str_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Con_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Agi_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Dex_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Sta_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Str_2 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	Elf_LvUp_2 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Con_2 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp_2 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Agi_2 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp_2 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Dex_2 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp_2 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Sta_2 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp_2 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Str_3 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	Elf_LvUp_3 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Con_3 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	Elf_LvUp_3 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Agi_3 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	Elf_LvUp_3 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Dex_3 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	Elf_LvUp_3 ( role , Item_Num , Item_Traget , attr_type ) 
end 
function Lvup_Sta_3 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	Elf_LvUp_3 ( role , Item_Num , Item_Traget , attr_type ) 
end 
-----------------------------
-- Повышение феи с 0 до 50 --
-----------------------------
function Elf_LvUp ( role , Item_Num , Item_Traget , attr_type )       
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 
	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )
	local a = 1
	SystemNotice (role , "\192\226\242\238\236\224\242\232\247\229\241\234\224\255 \239\240\238\234\224\247\234\224 \212\229\232 ")	
	if Lv >= 50 then
		a = 0
	SystemNotice (role , "\196\235\255 \228\224\235\252\237\229\233\248\229\233 \239\240\238\234\224\247\234\232 \244\229\232 \232\241\239\238\235\252\231\243\233\242\229 \194\229\235\232\234\232\233 \212\240\243\234\242 \212\229\233 ")
	end
	local b = Percentage_Random ( a )
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) 
	if b == 1 then						
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0	
                attr_type_num = attr_type_num + 1
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )
		local Item_MAXENERGY = 240 * ( Lv + 1 )
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end
		local Item_MAXURE_NUM = Elf_MaxURE + 1000
		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							
		item_energe = 0.5 * item_energe 
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )
end
-------------------------------
-- Повышение феи с 50 до 100 --
-------------------------------
function Elf_LvUp_1 ( role , Item_Num , Item_Traget , attr_type )       
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 
	local Lv = str + agi + dex + con + sta
	local attr_type_num = GetItemAttr( Item_Traget ,attr_type )
	local a = 1
	SystemNotice (role , "\192\226\242\238\236\224\242\232\247\229\241\234\224\255 \239\240\238\234\224\247\234\224 \212\229\232 ")
	if Lv < 50 or Lv >= 100 then
		a = 0
	SystemNotice (role , "\196\235\255 \228\224\235\252\237\229\233\248\229\233 \239\240\238\234\224\247\234\232 \244\229\232 \232\241\239\238\235\252\231\243\233\242\229 \194\229\235\232\234\232\233 \212\240\243\234\242 \212\229\233 ")	
	end
	local b = Percentage_Random ( a )
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) 
	if b == 1 then						
	        AddItemEffect(role , Item_Traget , 0  )
		item_energe = 0	
                attr_type_num = attr_type_num + 1
		SetItemAttr ( Item_Traget , attr_type , attr_type_num )
		local Item_MAXENERGY = 240 * ( Lv + 1 )
		
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end
		local Item_MAXURE_NUM = Elf_MaxURE + 2000
		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(Item_Traget)
	        AddItemEffect(role , Item_Traget , 1  )
	else							
		item_energe = 0.5 * item_energe 
	end
		SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )
end
-----------------------------
-- Повышение феи с 100 до 150 --
-----------------------------
function Elf_LvUp_2 ( role , Item_Num , Item_Traget , attr_type )     
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )      
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )      
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )      
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )      
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )      
    local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
    local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

    local Lv = str + agi + dex + con + sta
    local attr_type_num = GetItemAttr( Item_Traget ,attr_type )
    local a = 1
    SystemNotice (role , "\192\226\242\238\236\224\242\232\247\229\241\234\224\255 \239\240\238\234\224\247\234\224 \212\229\232 ")	
    if Lv < 100 or Lv >= 150 then
        a = 0
   SystemNotice (role , "\196\235\255 \228\224\235\252\237\229\233\248\229\233 \239\240\238\234\224\247\234\232 \244\229\232,\232\241\239\238\235\252\231\243\233\242\229 \203\229\227\229\237\228\224\240\237\251\233 \212\240\243\234\242 \212\229\233 ")	
   end

    local b = Percentage_Random ( a )
    
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY )
   
    if b == 1 then                      
            AddItemEffect(role , Item_Traget , 0  )
        item_energe = 0  
        
                attr_type_num = attr_type_num + 1
        SetItemAttr ( Item_Traget , attr_type , attr_type_num )

        local Item_MAXENERGY = 240 * ( Lv + 1 )
        
        if Item_MAXENERGY > 6480 then
            Item_MAXENERGY = 6480
        end


        local Item_MAXURE_NUM = Elf_MaxURE + 2000

        if Item_MAXURE_NUM > 32000 then
            Item_MAXURE_NUM = 32000
        end
        
        SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
        SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
        ResetItemFinalAttr(Item_Traget)
            AddItemEffect(role , Item_Traget , 1  )
    else                          
        item_energe = 0.5 * item_energe   
    end
        SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end
--------------------------------
-- Повышение феи с 150 до 200 --
--------------------------------
function Elf_LvUp_3 ( role , Item_Num , Item_Traget , attr_type )      
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
    local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
    local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

    local Lv = str + agi + dex + con + sta
    local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

    local a = 1
    SystemNotice (role , "\192\226\242\238\236\224\242\232\247\229\241\234\224\255 \239\240\238\234\224\247\234\224 \212\229\232 ")	
   if Lv < 150 or Lv >= 200 then
        a = 0
	SystemNotice (role , "\196\235\255 \228\224\235\252\237\229\233\248\229\233 \239\240\238\234\224\247\234\232 \244\229\232,\232\241\239\238\235\252\231\243\233\242\229 \193\238\230\229\241\242\226\229\237\237\251\233 \212\240\243\234\242 \212\229\233 ")	
    end
    
    local b = Percentage_Random ( a )
    
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) 
   
    if b == 1 then                        
        AddItemEffect(role , Item_Traget , 0  )
        item_energe = 0 
        attr_type_num = attr_type_num + 1
        SetItemAttr ( Item_Traget , attr_type , attr_type_num )
        local Item_MAXENERGY = 240 * ( Lv + 1 )
        if Item_MAXENERGY > 6480 then
            Item_MAXENERGY = 6480
        end
        local Item_MAXURE_NUM = Elf_MaxURE + 2000

        if Item_MAXURE_NUM > 32000 then
            Item_MAXURE_NUM = 32000
        end
        
        SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
        SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
        ResetItemFinalAttr(Item_Traget)
            AddItemEffect(role , Item_Traget , 1  )
    else                           
        item_energe = 0.5 * item_energe   
    end
        SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end
--------------------------------
-- Повышение феи с 200 до 250 --
--------------------------------
function Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )      
        
        local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       
    local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
    local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

    local Lv = str + agi + dex + con + sta
    local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

    local a = 1
    SystemNotice (role , "\192\226\242\238\236\224\242\232\247\229\241\234\224\255 \239\240\238\234\224\247\234\224 \212\229\232 ")	
   if Lv < 200 or Lv >= 250 then
        a = 0
	SystemNotice (role , "\196\235\255 \228\224\235\252\237\229\233\248\229\233 \239\240\238\234\224\247\234\232 \244\229\232,\232\241\239\238\235\252\231\243\233\242\229 \193\238\230\229\241\242\226\229\237\237\251\233 \212\240\243\234\242 \212\229\233 ")	
    end
    
    local b = Percentage_Random ( a )
    
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) 
   
    if b == 1 then                        
        AddItemEffect(role , Item_Traget , 0  )
        item_energe = 0 
        attr_type_num = attr_type_num + 1
        SetItemAttr ( Item_Traget , attr_type , attr_type_num )
        local Item_MAXENERGY = 240 * ( Lv + 1 )
        if Item_MAXENERGY > 6480 then
            Item_MAXENERGY = 6480
        end
        local Item_MAXURE_NUM = Elf_MaxURE + 2000

        if Item_MAXURE_NUM > 32000 then
            Item_MAXURE_NUM = 32000
        end
        
        SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
        SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
        ResetItemFinalAttr(Item_Traget)
            AddItemEffect(role , Item_Traget , 1  )
    else                           
        item_energe = 0.5 * item_energe   
    end
        SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )


end

function Give_ElfEXP_MISSION ( role , num )						
	local Item = GetChaItem ( role , 2 ,  2  ) 
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )		
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY )	
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE )			
	if Elf_URE <= 50 then									
		SystemNotice (role , "Fairy cannot gain any Growth as it is low on stamina")			
		return 0 
	else 
		Elf_URE = Elf_URE - 40								
		SetItemAttr ( Item , ITEMATTR_URE , Elf_URE ) 
		num = math.min ( num , Elf_MaxEXP - Elf_EXP ) 
		SetItemAttr ( Item , ITEMATTR_ENERGY , num ) 
	end 
	return 1 
end 


-----------------------------------------------
function CheckElfHaveSkill ( Num , SkillType , SkillNum )
	--Notice( "BEGINCheckElfHaveSkill" )

	local Part2 = GetNum_Part2 ( Num )	--Get Num Part 1 到 Part 7
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )


	if Part3 == SkillType and Part2 == SkillNum then
		return 1

	elseif Part2 == SkillNum then
		return 2
	end
	
	if Part5 == SkillType and Part4 == SkillNum then
		return 1
	elseif Part4 == SkillNum then
		return 2
	end
	
	if Part7 == SkillType and Part6 == SkillNum then
		return 1
	elseif Part6 == SkillNum then
		return 2
	end
	
	return 0

end

----------------------------------------------------------

function AddElfSkill ( Item , SkillType , SkillNum )
	--Notice( "BEGINAddElfSkill" )
	

	local Num = GetItemForgeParam ( Item , 1 ) --精灵32位技能信息数据	
	--Notice ( "Num= "..Num)
	local Part1 = GetNum_Part1 ( Num )	--Get Num Part 1 到 Part 7
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )

	if Part2 == SkillNum then
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	
	if Part4 == SkillNum then
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end

	if Part6 == SkillNum then
		 Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end

	local rad = math.random( 1 , 100 )   --随机 1，100                            
	if Part2 == 0 and Part3 == 0 then
		Part2 = SkillNum
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad<= 30 then	
			Part2 = SkillNum
			Part3 = SkillType
			Num = SetNum_Part3 ( Num , Part3 )
			Num = SetNum_Part2 ( Num , Part2 )
			SetItemForgeParam ( Item , 1 , Num )
			return
		--否
		--无操作
		end
	end
	if Part4 == 0 and Part5 == 0 then
		Part4 = SkillNum
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad> 30 and rad < 60 then
			Part4 = SkillNum
			Part5 = SkillType
			Num = SetNum_Part5 ( Num , Part5 )
			Num = SetNum_Part4 ( Num , Part4 )
			SetItemForgeParam ( Item , 1 , Num )
			return
			--否
			--无操作
		end
	end
	if Part6 == 0 and Part7 == 0 then
		Part6 = SkillNum
		Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
			Part6 = SkillNum
			Part7 = SkillType
			Num = SetNum_Part7 ( Num , Part7 )
			Num = SetNum_Part6 ( Num , Part6 )	
			SetItemForgeParam ( Item , 1 , Num )
		return
	end
end

------------------------------------------------------------------

function CheckHaveElf ( role )
	local Item = GetChaItem ( role , 2 , 1  ) --取角色背包第二栏的指针
	if Item == nil then              --?Item == 0 什么意思
		return 0
	end
	
	local Item_Type =  GetItemType ( Item ) --Item 的道具类型
	
	if Item_Type ~= 59 then
		return 0
	else
		local ELf_URE = GetItemAttr( Item ,ITEMATTR_URE )  --精灵体力

		if ELf_URE <= 49 then
			return 0
		end
	end
	--Notice("CheckHaveElf has been executed" )
	return Item

end

--精灵技能

--护盾术
function ElfSKill_PowerSheild ( role , Elf_Item , Num , dmg )
	if dmg <= 0 then
		return 0
	end
	local role_hp = Hp ( role )
	local role_maxhp = Mxhp ( role )
	local havehp = role_maxhp / role_hp
	if havehp < 5 then
		return 0
	end
	local Elf_SheildLv = GetElfSkill_Lv ( Num , 1 )
	dmg = math.floor ( dmg * ( 0.3 + Elf_SheildLv * 0.15 )  ) 

	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	local Dmg_Take_rad = 10 
	local Elf_Dmg_CanTake = ( Item_URE - 50 ) / Dmg_Take_rad
	
	if Elf_Dmg_CanTake >= dmg then
		local Elf_URE_Take = math.floor ( dmg * Dmg_Take_rad )
		local Elf_URE_Notice = math.floor ( Elf_URE_Take / 50 )
		Take_ElfURE ( role , Elf_Item , 2 , Elf_URE_Take )
		SystemNotice ( role , "\212\229\255 \239\238\227\235\238\242\232\235\224 "..dmg.." \243\240\238\237\224 ")
		return dmg
	else
		SystemNotice ( role , "\211 \212\229\232 \237\229\228\238\241\242\224\242\238\247\237\238 \226\251\237\238\241\235\232\226\238\241\242\232 \228\235\255 \224\234\242\232\226\224\246\232\232 \237\224\226\251\234\224 \199\224\249\232\242\224 " )
		return 0
	end
end

--获得精灵指定技能等级
function GetElfSkill_Lv ( Num , SkillNum )
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	
	if SkillNum == Part2 then
		return Part3
	elseif SkillNum == Part4 then
		return Part5
	elseif SkillNum == Part6 then
		return Part7
	end
	return 0
end

--爆击

function ElfSKill_ElfCrt ( role , Elf_Item , Num )
	local Elf_SkillLv = GetElfSkill_Lv ( Num , 2 )
	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	if Item_URE < 50 then
		SystemNotice ( role , "\211 \212\229\232 \237\229\228\238\241\242\224\242\238\247\237\238 \226\251\237\238\241\235\232\226\238\241\242\232 \228\235\255 \224\234\242\232\226\224\246\232\232 \237\224\226\251\234\224 \193\229\240\241\229\240\234 " )
		return 0
	end
	local b = ( Elf_SkillLv * 2 + 1 )  * 0.01
	local a = Percentage_Random ( b )
	if a == 1 then
		
		Take_ElfURE ( role , Elf_Item , 2 , Elf_SkillLv )
		return 1
		
	else
		return 0
	end
end

--魔力

function ElfSkill_MagicAtk ( dmg , role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 3 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 3 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Fairy does not have enough stamina to activate any skill" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 1 )
					return dmg * 0.05 + 5 
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return dmg * 0.08 + 8
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 3 )
					return dmg * 0.1 + 10
				end
			end
		end
	end
	return 0
end


--回复
function ElfSkill_HpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 4 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 4 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Fairy does not have enough stamina to activate any skill" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end


--沉思

function ElfSkill_SpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 5 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 5 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Fairy does not have enough stamina to activate any skill" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end
--------------------------------荣誉值选择交换
function CreditExchangeImpl( role, tp )
	local i = CheckBagItem( role,3849 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 3849 )
		local rongyu_num=GetItemAttr ( Item , ITEMATTR_VAL_STR )
		if rongyu_num<=0 then
			SystemNotice ( role , "You will not receive any blessing without a postive Honor value!")
			return
		end
		local middle=0
		if rongyu_num<30000 then
			middle=30000 - rongyu_num
		end
		middle= math.floor ( middle / 2 )
		local exp_star=GetChaAttr (  role , ATTR_CEXP )----------当前经验
		local job = GetChaAttr(role, ATTR_JOB)
		local lv=GetChaAttr(role, ATTR_LV) 
		local money_num=rongyu_num*100
		local exp_num=rongyu_num*5+exp_star
		local rad=math.random(1,30000)
		local cha_type = GetChaTypeID ( role )
		local cha_namea = GetChaDefaultName ( role )
		if tp==0 or tp==1 or tp==2 then ----荣誉值换钱
			if lv>=15 and lv<=40 then
				money_num=rongyu_num*200
			elseif lv>=41 and lv<=60 then
				money_num=rongyu_num*250
			elseif lv>=61 then
				money_num=rongyu_num*300
			end
			AddMoney ( role , 0 , money_num ) 
		elseif tp==3 or tp==4 or tp==5 then -----荣誉值换经验
			local dif_exp = rongyu_num*20+exp_star - DEXP[lv+1]
			if lv>=15 and lv<=30 then
				exp_num=rongyu_num*10+exp_star
				local a1= math.floor (rongyu_num*10 )
				SystemNotice ( role , "Obtained EXP"..a1 )
			elseif lv>=31 and lv<=40 then
				exp_num=rongyu_num*13+exp_star
				local a1= math.floor (rongyu_num*13 )
				SystemNotice ( role , "Obtained EXP"..a1 )
			elseif lv>=41 and lv<=50 then
				exp_num=rongyu_num*22+exp_star
				local a1= math.floor (rongyu_num*22 )
				SystemNotice ( role , "Obtained EXP"..a1 )
			elseif lv>=51 and lv<=60 then
				exp_num=rongyu_num*44+exp_star
				local a1= math.floor (rongyu_num*44 )
				SystemNotice ( role , "Obtained EXP"..a1 )
			elseif lv>=61 and lv<=70 then
				exp_num=rongyu_num*102+exp_star
				local a1= math.floor (rongyu_num*102 )
				SystemNotice ( role , "Obtained EXP"..a1 )
			elseif lv>=71 and  lv<=78 then
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "Obtained EXP"..a1 )
			elseif lv==79 and dif_exp<=0 then 
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "Obtained EXP"..a1 )
			elseif lv==79 and dif_exp>0 then 
				exp_num = dif_exp*0.02 + DEXP[lv+1]
				local a1= math.floor (rongyu_num*270)
				SystemNotice ( role , "Obtained EXP"..a1 )
			elseif lv>=80  then
				exp_num=rongyu_num*270*0.02+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "Obtained EXP"..a1 )
			end
			SetChaAttrI( role , ATTR_CEXP , exp_num )
		elseif tp==6 or tp==7 or tp==8 then -----荣誉值换装备
			if lv>=15 and lv<=40 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					GiveItem ( role , 0 , 3458  , 1 , 4 ) 
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "Obtained EXP"..a1 )
				end
			elseif lv>=41 and lv<=60 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					local rad1=math.random(1,12)
					if rad1==1 then
					elseif rad1==2 then
					elseif rad1==3 then
					elseif rad1==4 then
					elseif rad1==5 then
					elseif rad1==6 then
					elseif rad1==7 then
					elseif rad1==8 then
					elseif rad1==9 then
					elseif rad1==10 then
					elseif rad1==11 then
					elseif rad1==12 then
					end
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "Obtained EXP "..a1 )
				end
			elseif lv>=61 then
				if rad<=rongyu_num or rongyu_num>=30000 then
				local rad2=math.random(1,3)
				local rad3=math.random(1,4)
					if job == 8 then --巨剑
						if rad2==1 then
						elseif rad2==2 then
						elseif rad2==3 then
						end
					elseif job == 9 then   --双剑
						if rad2==1 then
						elseif rad2==2 then
						elseif rad2==3 then
						end
					elseif job == 12 then --狙击手
						if rad2==1 then
						elseif rad2==2 then
						elseif rad2==3 then
						end
					elseif job == 16 then ---- "Voyager"
						if cha_type~=4 then
							if rad2==1 then
							elseif rad2==2 then
							elseif rad2==3 then
							end
						else
							if rad3==1 then
							elseif rad3==2 then
							elseif rad3==3 then
							elseif rad3==4 then
							end
						end
					elseif job == 13 then    ---- "Cleric"
						if cha_type~=4 then
							if rad2==1 then
							elseif rad2==2 then
							elseif rad2==3 then
							end
						else
							if rad3==1 then
							elseif rad3==2 then
							elseif rad3==3 then
							elseif rad3==4 then
							end
						end
					elseif job == 14 then    ---- "Seal Master"
						if cha_type~=4 then
							if rad2==1 then
							elseif rad2==2 then
							elseif rad2==3 then
							end
						else
							if rad3==1 then
							elseif rad3==2 then
							elseif rad3==3 then
							elseif rad3==4 then
							end
						end
					end
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "Obtained EXP "..a1 )
				end
			end			
		end
	SetItemAttr ( Item ,ITEMATTR_VAL_STR , 0 )
	end
end
-----------------------------
-----------------------------重设精灵等级
function Elf_Attr_cs ( role , Item_JLone , Item_JLother )
	local Item_JLone_num={}
	local Item_JLother_num={}
	---取一个精灵的五个属性
	Item_JLone_num[1] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )	-- 力量常数加成 26
	Item_JLone_num[2] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )	-- 敏捷常数加成 27
	Item_JLone_num[3] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )	-- 专注常数加成 28
	Item_JLone_num[4] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )	-- 体质常数加成 29
	Item_JLone_num[5] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )	-- 精力常数加成 30
	Item_JLone_num[6] = GetItemAttr( Item_JLone ,ITEMATTR_URE )			--体力 
	Item_JLone_num[7] = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )		 --最大体力
	Item_JLone_num[8] = Item_JLone_num[1] + Item_JLone_num[2] + Item_JLone_num[3] + Item_JLone_num[4] + Item_JLone_num[5]	----一个精灵的等级
	---取另一个精灵的五个属性
	Item_JLother_num[1] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )	-- 力量常数加成  
	Item_JLother_num[2] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )	-- 敏捷常数加成  
	Item_JLother_num[3] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )	-- 专注常数加成  
	Item_JLother_num[4] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )	-- 体质常数加成  
	Item_JLother_num[5] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )	-- 精力常数加成  
	Item_JLother_num[6] = GetItemAttr( Item_JLother ,ITEMATTR_URE )			--体力 
	Item_JLother_num[7] = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )		 --最大体力
	Item_JLother_num[8] = Item_JLother_num[1] + Item_JLother_num[2] + Item_JLother_num[3] + Item_JLother_num[4] + Item_JLother_num[5]	----一个精灵的等级

	local m=0
	local n = 0
	local num_jlone=26
	local num_jlother=26
	local max_JLone_temp=Item_JLone_num[1]
	local max_JLother_temp=Item_JLother_num[1]
	for m=1,4,1 do
		if Item_JLone_num[m+1] >max_JLone_temp then
			max_JLone_temp=Item_JLone_num[m+1]
			num_jlone=m+26
		end
	end
	for n=1,4,1 do
		if Item_JLother_num[n+1] >max_JLother_temp then
			max_JLother_temp=Item_JLother_num[n+1]
			num_jlother=n+26
		end
	end

	max_JLone_temp = max_JLone_temp - 4
	max_JLother_temp = max_JLother_temp - 4
	local new_JLone_MAXENERGY = 240 * (Item_JLone_num[8] + 1 - 4 )
	if new_JLone_MAXENERGY > 6480 then
		new_JLone_MAXENERGY = 6480
	end
	local new_JLone_MAXURE = 5000 + 1000*(Item_JLone_num[8] - 4 )
	if new_JLone_MAXURE > 32000 then
		new_JLone_MAXURE = 32000
	end
	local new_JLother_MAXENERGY = 240 * (Item_JLother_num[8] + 1 - 4 )
	if new_JLother_MAXENERGY > 6480 then
		new_JLother_MAXENERGY = 6480
	end
	local new_JLother_MAXURE = 5000 + 1000*(Item_JLother_num[8] - 4 )
	if new_JLother_MAXURE > 32000 then
		new_JLother_MAXURE = 32000
	end
	----重设一只精灵的属性
	SetItemAttr ( Item_JLone , num_jlone , max_JLone_temp )
	SetItemAttr ( Item_JLone , ITEMATTR_ENERGY , 240) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXENERGY , new_JLone_MAXENERGY )
	SetItemAttr ( Item_JLone , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXURE , new_JLone_MAXURE ) 	
	----重设另一只精灵的属性
	SetItemAttr ( Item_JLother , num_jlother , max_JLother_temp )
	SetItemAttr ( Item_JLother , ITEMATTR_ENERGY , 240 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXENERGY , new_JLother_MAXENERGY )
	SetItemAttr ( Item_JLother , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXURE , new_JLother_MAXURE )  	
end
-- Лохотрон начало
function  TigerStart( ... )
	if arg.n ~= 4 then
		SystemNotice ( arg[1] , "Неверное значение параметра: "..arg.n )
		return 
	end	
	local num = {}
	local Item_type = {}
	local num_star = 0
	local n  = 0
	local m = 0
	local i = 0
	local q=0
	for n=1,9,1 do 
		local star = math.random ( 1 , 4700 )
		local ret1 = IsItemValid(star)
		if ret1 ~= LUA_TRUE then
			for m=1,300,1 do
				local ret2 = IsItemValid(star+m)
				if ret2 ~=LUA_TRUE then
				else
					num[n] = star+m
				end
			end
		else 
			num [n]=star
		end
	end
	for i=1,9,1 do
		Item_type[i] = GetItemType2( num [i] )
	end
	local NocLock =	KitbagLock(arg[1], 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( arg[1] , "\194\224\248 \232\237\226\229\237\242\224\240\252 \231\224\225\235\238\234\232\240\238\226\224\237 ")-- Ваш инвентарь заблокирован
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( arg[1] )	
	if Item_CanGet < 5 then
		SystemNotice( arg[1] ,"\205\243\230\237\238 5 \241\226\238\225\238\228\237\251\245 \236\229\241\242 \226 \232\237\226\229\237\242\224\240\229 ") -- Нужно 5 свободных мест в инвентаре
		return 0
	end
	local Money_Have = GetChaAttr ( arg[1]  , ATTR_GD )
	if Money_Have>1000000000 then
		SystemNotice (arg[1], "\211 \226\224\241 \225\238\235\252\248\229 1 \236\232\235\235\232\224\240\228\224 \231\238\235\238\242\224,\253\242\238 \238\239\224\241\237\238,\239\229\240\229\226\229\228\232\242\229 \229\227\238 \226 \234\243\239\254\240\251 ") -- У вас больше 1 миллиарда золота,это опасно,переведите его в купюры
		return	
	end
	if arg[2]==1 then
		local j1 = TakeItem(  arg[1], 0,855, 5 )			        
		if j1==0 then
			SystemNotice ( arg[1] ,"\206\248\232\225\234\224 \239\240\232 \243\228\224\235\229\237\232\232 \204\238\237\229\242\251 \212\229\232 ") -- Ошибка при удалении Монеты Феи
			return
		end
	end
	if arg[3]==1 then
		local j2 = TakeItem(  arg[1], 0,855, 5 )			            
		if j2==0 then
			SystemNotice ( arg[1] ,"\206\248\232\225\234\224 \239\240\232 \243\228\224\235\229\237\232\232 \204\238\237\229\242\251 \212\229\232 ")-- Ошибка при удалении Монеты Феи
			return
		end		
	end
	if arg[4]==1 then
		local j3 = TakeItem(  arg[1], 0,855, 5 )			            
		if j3==0 then
			SystemNotice ( arg[1] ,"\206\248\232\225\234\224 \239\240\232 \243\228\224\235\229\237\232\232 \204\238\237\229\242\251 \212\229\232 ") -- Ошибка при удалении Монеты Феи
			return
		end		
	end
	local now_day= os.date("%d")		
	local now_hour= os.date("%H")		
	local now_miniute= os.date("%M")	
	local now_scend=  os.date("%S")		
	now_day= tonumber(now_day)			
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)	 	
	now_scend= tonumber(now_scend)		
	local CheckTimeNum = now_day*86400 + now_hour*3600+now_miniute*60+now_scend
	if CheckTimeNum>NOWTIME_TE+86400 then
		NOWTIME_TE=CheckTimeNum
	end
	if CheckTimeNum>NOWTIME_YI+3600 then
		NOWTIME_YI=CheckTimeNum
	end
	if CheckTimeNum>NOWTIME_HEI+518400 then
		NOWTIME_HEI=CheckTimeNum
	end
	local num_s=0
	for num_s=1,3,1 do 
		if Item_type[num_s]>=1 and Item_type[num_s]<=11 then
			if Item_type[num_s+3] >=1 and Item_type[num_s+3]<=11 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=1 and Item_type[num_s+6]<=11 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=22 and Item_type[num_s]<=29 then
			if Item_type[num_s+3] >=22 and Item_type[num_s+3]<=29 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=22 and Item_type[num_s+6]<=29 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=36 and Item_type[num_s]<=66 then
			if Item_type[num_s+3] >=36 and Item_type[num_s+3]<=66 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=36 and Item_type[num_s+6]<=66 then
				num[num_s+6] = num[num_s]
			end
		end
	end
	local j=0
	for j=1,9,1 do
		Item_type[j] = GetItemType2( num [j] )
		if num[j]==822 or num[j]==823 or num[j]==825 or num[j]==826 or num[j]==827 or num[j]==1116 or num[j]==1117 or num[j]==1118 or num[j]==46  or num[j]==1124  or num[j]==1125  or num[j]==1126  or num[j]==1127 or  num[j]==1057  or  num[j]==1060   or  num[j]==1063    or  num[j]==1066   or  num[j]==1034  or  num[j]==586  or  num[j]==762  or  num[j]==3061  or  num[j]==410   or  num[j]==2885  then
			num[j]=3360 
		end
		if num[j]>=845 and num[j]<=847 then
			local rad_s= math.random ( 1 , 40 )
				num[j]=3360 
			end
		end
		
		if Item_type[j]~=1 and Item_type[j]~=2 and Item_type[j] ~=3 and Item_type[j] ~=4 and Item_type[j] ~=7 and Item_type[j] ~=9 and Item_type[j] ~=11 and Item_type[j] ~=22 and Item_type[j] ~=23 and Item_type[j] ~=24 and Item_type[j] ~=25 and Item_type[j] ~=26 and Item_type[j] ~=27 and Item_type[j] ~=29 and Item_type[j] ~=36 and Item_type[j] ~=47 and Item_type[j] ~=50 and Item_type[j] ~=57 and Item_type[j] ~=58 and Item_type[j] ~=60 and Item_type[j] ~=65 and Item_type[j] ~=66 then
			local eleven = math.random ( 1 , 1000 )	
			local new_id = math.random ( 3850 , 3875 )
			if eleven <= 328 then
				num[j]= new_id 
			elseif eleven >=1 and  eleven<=999 then
				num[j]=3360 
			else
				num[j]=194 
			end
		end
	local rad1= 0
	local rad2= 0
	local rad3= 0
	local rad4= 0
	local rad5= 0
	local rad6= 0
	local rad7= 0
	local rad8= 0
	local rad9= 0
	local rad10= 0
	local rad11= 0
	
	local p=0
	local p=0
	for p=1,9,1 do
		if num[p]>=831 and num[p]<=842 then
			rad1=1
		end
		if num[p]>=2300 and num[p]<=2344 then
			rad2=1
		end
		if num[p]>=2367 and num[p]<=2407 then
			rad3=1
		end
		if num[p]>=2549 and num[p]<=2553 then
			rad4=1
		end
		if num[p]>=2588 and num[p]<=3061 then
			rad5=1
		end
		if num[p]>=3485 and num[p]<=3800 then
			rad6=1
		end
		if num[p]>=4311 and num[p]<=4313 then
			rad7=1
		end
		if num[p]>=28 and num[p]<=31 then
			rad8=1
		end
		if num[p]>=194 and num[p]<=227 then
			rad9=1
		end
		if num[p]>=276 and num[p]<=280 then
			rad10=1
		end
		local h=0
		for h=1,252,1 do
			if num[p]==LHJ_ID[h] then
				rad11=1
			end
		end
		if rad1==1 or  rad2==1 or rad3==1 or  rad4==1 or rad5==1 or rad6==1 or  rad7==1  or  rad8==1  or  rad9==1 or  rad10==1  or rad11==1 or  num[p]==5694 or num[p]==5695 or num[p]==5702 or num[p]==5703 or num[p]==5704 or num[p]==5705  or num[p]==5710 or num[p]==5711 or num[p]==5712 or num[p]==5713 or num[p]==7484 or num[p]==7485 or num[p]==7486 or num[p]==7489 or num[p]==7491 or num[p]==7492 or num[p]==7493 or num[p]==7494  or num[p]==7495 or num[p]==7483 or num[p]==7510 or num[p]==7511 or num[p]==7482 or num[p]==7469 then
		num[p]= new_id1 
		end
	end
	local reset_rad=math.random ( 1 , 100 )
	local kapian_rad=math.random ( 3850 , 3875 )
	if reset_rad>=47 and num[1]==num[3] and num[1]==num[5] and num[1]==num[7]  and num[1]==num[9]  then
		num[9]=kapian_rad
	end
	if reset_rad>=24 and num[2]==num[4] and num[2]==num[5] and num[2]==num[6]  and num[2]==num[8]  then
		num[8]=kapian_rad
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4]  and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then
			num[9]=kapian_rad
		end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4] and num[1]==num[5] and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then
			num[9]=kapian_rad
		end
	return num[1] , num[2] , num[3] , num[4] , num[5] , num[6] , num[7] , num[8] , num[9] 
end

function TigerStop(...)
	if arg.n ~= 13 then
		SystemNotice ( arg[1] , "Неверное значение параметра: "..arg.n )
		return 
	end	
	local flag=0
	if arg[11]==1 and arg[12]==1 and arg[13]==1 then
		flag=1
	end
	local flag_myp=1
	if arg[2]==0 or arg[3]==0 or arg[4]==0 or arg[5]==0 or arg[6]==0 or arg[7]==0 or arg[8]==0 or  arg[9]==0 or arg[10]==0 or arg[2]==nil or arg[3]==nil or arg[4]==nil or arg[5]==nil or arg[6]==nil or arg[7]==nil or arg[8]==nil or  arg[9]==0 or arg[10]==nil then
		 flag_myp=0
		return 	
	end
	local new_id = math.random ( 3850 , 3875 )
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5]  and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1 and flag_myp==1 then 
		local cha_name4 = GetChaDefaultName ( arg[1] ) 
		local item_rad = math.random ( 1 , 9 )
		if item_rad==1 then
			item_rad_id=7502
		elseif item_rad==2 then
			item_rad_id=7502
		elseif item_rad>=3 or  item_rad<=8 then
			item_rad_id=7502
		else
			item_rad_id=7502
		end
		local itemname12 = GetItemName ( item_rad_id ) 
		local message4 = cha_name4.." \226\251\225\232\226\224\229\242 \226 \224\226\242\238\236\224\242\229 \235\238\242 \206\227\240\238\236\237\251\229 \193\238\227\224\242\241\242\226\224 \232 \226\251\232\227\240\251\226\224\229\242 \236\232\235\235\232\224\240\228 \231\238\235\238\242\224 \232 "..itemname12
		Notice ( message4 )
		SynTigerString ( arg[1] ," \226\251\225\232\226\224\229\242 \226 \224\226\242\238\236\224\242\229 \235\238\242 \206\227\240\238\236\237\251\229 \193\238\227\224\242\241\242\226\224 \232 \226\251\232\227\240\251\226\224\229\242 \236\232\235\235\232\224\240\228 \231\238\235\238\242\224 \232 "..itemname12 ) -- Лучший приз
		AddMoney ( arg[1] , 0 , 3000000 )
		GiveItem ( arg[1] , 0 , 7503  , 5 , 4  )
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s12=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s12  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		
	end
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5] and arg[5] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10]  and arg[2]~=new_id and flag==1  and flag_myp==1  then 
		
		local item_rad = math.random ( 1 , 8 )
		if item_rad==1 then
			item_rad_id=7477
		elseif item_rad==2 then
			item_rad_id=7478
		elseif item_rad==3 then
			item_rad_id=7479
		elseif item_rad==4 then
			item_rad_id=7480
		elseif item_rad==5 then
			item_rad_id=7481
		elseif item_rad==6 then
			item_rad_id=7476
		elseif item_rad==7 then
			item_rad_id=7451
		else
			item_rad_id=7453
		end
		local itemname11 = GetItemName ( item_rad_id ) 
		local cha_name3 = GetChaDefaultName ( arg[1] ) 
		local message3 = cha_name3.." \226\251\225\232\226\224\229\242 \235\238\242 \194\241\229\238\225\249\232\233 \207\240\224\231\228\237\232\234 \232 \226\251\232\227\240\251\226\224\229\242 50 \236\232\235\235\232\238\237\238\226 \231\238\235\238\242\224 \232 "..itemname11
		Notice ( message3 )
		SynTigerString ( arg[1] ," \207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \194\241\229\238\225\249\232\233 \207\240\224\231\228\237\232\234 \232 \239\238\235\243\247\232\235\232 50 \236\232\235\235\232\238\237\238\226 \231\238\235\238\242\224 \232 "..itemname11) -- Приз похуже
		AddMoney ( arg[1] , 0 , 1500000 )
		GiveItem ( arg[1] , 0 ,7503  , 1 , 4  )
		
		GiveItem ( arg[1] , 0 , item_rad_id  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s11=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s11  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		
	end
	if arg[3] == arg[5] and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1  and flag_myp==1 then 
		local itemname2 = GetItemName ( arg[3] ) 
		local cha_name2 = GetChaDefaultName ( arg[1] ) 
		local message2 = cha_name2.." \226\251\225\232\226\224\229\242 \194\229\235\232\234\238\235\229\239\237\243\254 \196\229\241\255\242\234\243 \232 \239\238\235\243\247\224\229\242 5 \236\232\235\235\232\238\237\238\226 \231\238\235\238\242\224 "
		Notice ( message2 )
		SynTigerString( arg[1] ," \226\251\225\232\226\224\229\242 \194\229\235\232\234\238\235\229\239\237\243\254 \196\229\241\255\242\234\243 \232 \239\238\235\243\247\224\229\242 5 \236\232\235\235\232\238\237\238\226 \231\238\235\238\242\224 ") -- Хороший приз
		AddMoney ( arg[1] , 0 , 750000 )
		GiveItem ( arg[1] , 0 ,7502  , 1 , 4  )
		if arg[3] ~= 3360 then 
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s10=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s10  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
	end
	if arg[2] == arg[4] and arg[4] == arg[6] and arg[6] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1  then 
		
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		local message1 = cha_name1.." \207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \211\228\224\247\237\243\254 \207\255\242\184\240\234\243 \232 \239\238\235\243\247\232\235\232 5 \236\232\235\235\232\238\237\238\226 \231\238\235\238\242\224 "
		Notice ( message1 )
		SynTigerString  ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \211\228\224\247\237\243\254 \207\255\242\184\240\234\243 \232 \239\238\235\243\247\232\235\232 5 \236\232\235\235\232\238\237\238\226 \231\238\235\238\242\224 ") -- Хороший приз
		AddMoney ( arg[1] , 0 , 750000 )
		GiveItem ( arg[1] , 0 ,7502  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s9=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s9  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
	end
	if arg[2] == arg[4] and arg[4] == arg[8] and arg[8] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 2 \241\229\231\238\237\224 \232 \226\251\232\227\240\224\235\232 2 \236\232\235\235\232\238\237\224 \231\238\235\238\242\224 ")
		SynTigerString  ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 2 \241\229\231\238\237\224 \232 \226\251\232\227\240\224\235\232 2 \236\232\235\235\232\238\237\224 \231\238\235\238\242\224 ") -- Пойдет приз
		AddMoney ( arg[1] , 0 , 300000 )
		GiveItem ( arg[1] , 0 , 7482  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s8=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s8  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
	end
	if arg[3] == arg[5] and arg[5] == arg[7] and arg[7] == arg[9] and arg[3]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \194\229\231\243\247\232\233 \208\184\226 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ")
		SynTigerString  ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \194\229\231\243\247\232\233 \208\184\226 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ") -- Малая награда
		AddMoney ( arg[1] , 0 , 150000 )
		GiveItem ( arg[1] , 0 ,578  , 1 , 4  )
		local rad_heishi=math.random ( 1 , 2 )
		if rad_heishi==1 then
			GiveItem ( arg[1] , 0 , 3087  , 1 , 4  )
		else
			GiveItem ( arg[1] , 0 , 3087  , 1 , 4  )			
		end
		if arg[3] ~= 3360 then 
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s7=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s7  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
	end
	if arg[4] == arg[6] and arg[6] == arg[8] and arg[4]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \199\238\235\238\242\224\255 \196\232\224\227\238\237\224\235\252 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ")
		SynTigerString ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \199\238\235\238\242\224\255 \196\232\224\227\238\237\224\235\252 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ") -- Маленький приз
		AddMoney ( arg[1] , 0 , 150000 )
		GiveItem ( arg[1] , 0 , 7484  , 1 , 4  )
		if arg[4] ~= 3360 then 
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s5=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s5  )
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
	end
	if arg[2] == arg[6] and arg[6] == arg[10] and arg[2]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \193\229\235\224\255 \196\232\224\227\238\237\224\235\252 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ")
		SynTigerString  ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \193\229\235\224\255 \196\232\224\227\238\237\224\235\252 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ") -- Маленький приз
		AddMoney ( arg[1] , 0 , 150000 )
		GiveItem ( arg[1] , 0 , 7484  , 1 , 4  )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s6=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , s6  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
	end
	if arg[5] == arg[6] and arg[6] == arg[7] and arg[5]~=new_id and flag==1 and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \206\247\234\238 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ")
		SynTigerString ( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \206\247\234\238 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ") -- Маленький приз
		AddMoney ( arg[1] , 0 , 150000 )
		if arg[5] ~= 3360 then 
			if arg[5] == 845 or arg[5] == 846 or arg[5] == 847 then
				local s4=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , s4  )
			else 
				GiveItem ( arg[1] , 0 , arg[5]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
	end
	if arg[2] == arg[5] and arg[5] == arg[8] and arg[11]==1 and arg[2]~=new_id and flag_myp==1 then 
		SystemNotice ( arg[1] ,"\215\243\242\238\234 \239\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \203\229\227\234\238\229 \194\229\231\229\237\232\229 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ")
		SynTigerString( arg[1] ,"\215\243\242\238\234 \239\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \203\229\227\234\238\229 \194\229\231\229\237\232\229 \232 \226\251\232\227\240\224\235\232 1 \236\232\235\235\232\238\237 \231\238\235\238\242\224 ") -- Маленький приз
		AddMoney ( arg[1] , 0 , 150000 )
		if arg[2] ~= 3360 then 
			if arg[2] == 845 or arg[2] == 846 or arg[2] == 847 then
				local s1=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 ,arg[2]  , 1 , s1  )
			else 
				GiveItem ( arg[1] , 0 , arg[2]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
	end
	if arg[3] == arg[6] and arg[6] == arg[9] and arg[12]==1 and arg[3]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"\205\229 \238\241\238\225\238 \239\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \205\229\243\228\224\247\237\232\234 \232 \226\251\232\227\240\224\235\232 500 \242\251\241\255\247 \231\238\235\238\242\224 ")
		SynTigerString( arg[1] ,"\205\229 \238\241\238\225\238 \239\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \205\229\243\228\224\247\237\232\234 \232 \226\251\232\227\240\224\235\232 500 \242\251\241\255\247 \231\238\235\238\242\224 ") -- мелкий приз
		AddMoney ( arg[1] , 0 , 75000 )
		if arg[3] ~= 3360 then 
			if arg[3] == 845 or arg[3] == 846 or arg[3] == 847 then
				local s2=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , s2  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[3]  , 1 , 23  )
			end
		end	
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
	end
	if arg[4] == arg[7] and arg[7] == arg[10] and arg[13]==1 and arg[4]~=new_id and flag_myp==1 then
		SystemNotice ( arg[1] ,"\205\229 \238\241\238\225\238 \239\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \205\229\243\228\224\247\237\232\234 \232 \226\251\232\227\240\224\235\232 500 \242\251\241\255\247 \231\238\235\238\242\224 ")
		SynTigerString( arg[1] ,"\205\229 \238\241\238\225\238 \239\238\231\228\240\224\226\235\255\229\236 \226\251 \226\251\225\232\235\232 \234\238\236\225\232\237\224\246\232\254 \205\229\243\228\224\247\237\232\234 \232 \226\251\232\227\240\224\235\232 500 \242\251\241\255\247 \231\238\235\238\242\224 ") -- мелкий приз
		AddMoney ( arg[1] , 0 , 75000 )
		if arg[4] ~= 3360 then 
			if arg[4] == 845 or arg[4] == 846 or arg[4] == 847 then
				local s3=math.random ( 12 , 18 )
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , s3  )
			
			else 
				GiveItem ( arg[1] , 0 , arg[4]  , 1 , 23  )
			end
		end
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
	end
	local star = 0
	local eleven = 0
	for star=2,8,3 do
		if arg[star] ==194 and arg[11] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	for star=3,9,3 do
		if arg[star] ==194 and arg[12] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	for star=4,10,3 do
		if arg[star] ==194 and arg[13] == 1 and flag_myp==1 then
			eleven =eleven +1
		end
	end
	if eleven==0 then
		SynTigerString( arg[1] ,"\215\229\236 \247\224\249\229 \226\251 \232\227\240\224\229\242\229,\242\229\236 \225\238\235\252\248\229 \248\224\237\241 \241\238\240\226\224\242\252 \234\243\248 ")
	else 
		SystemNotice ( arg[1] ,"\194 \242\229\234\243\249\229\233 \232\227\240\229 \226\251 \226\251\232\227\240\224\235\232 "..eleven.." \231\238\235\238\242\224 \232 \239\238\235\243\247\232\235\232 "..eleven.." \234\243\239\254\240 \237\224 100 \242\251\241\255\247 ")
		SynTigerString( arg[1] ,"\207\238\231\228\240\224\226\235\255\229\236, \226\251 \226\251\232\227\240\224\235\232 "..eleven.." \234\243\239\254\240 \237\224 100 \242\251\241\255\247")
		GiveItem ( arg[1] , 0 , 7492  , eleven , 4  )
	end
end
--function Change_FightingBook (character, npc)
--	local HonorBook_Num = 0
--	local HonorBook_Num = CheckBagItem( character,3849 )
--	local FightingBook_Num = 0
--	local FightingBook_Num = CheckBagItem( character,3849 )
--	local retbag = HasLeaveBagGrid( character, 1)
--	if retbag ~= LUA_TRUE then
--		SystemNotice(character,"You required 1 empty inventory slot to obtain Chaos Manual")
--		return 
--	end	
--	if FightingBook_Num> 0 then
--		SystemNotice( character , "You already possess a Chaos Manual")
--		return 0
--	end
--	
--	
--	
--	if	 HonorBook_Num <= 0 then
--		GiveItem ( character , 0 , 3849  , 1 , 97 )
--	else
--		GiveItem ( character , 0 , 3849  , 1 , 97 )
--		local Book2 =  GetChaItem2 ( character , 2 , 3849 )
--		local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
--		local KillNum=GetItemAttr ( Book2 , ITEMATTR_VAL_AGI)
--		local KilledNum=GetItemAttr ( Book2 , ITEMATTR_VAL_DEX)
--		local JionNum=GetItemAttr ( Book2 , ITEMATTR_VAL_CON)
--		local VictoryNum=GetItemAttr ( Book2 , ITEMATTR_VAL_STA)
--		local PartyContributeNum=GetItemAttr ( Book2 , ITEMATTR_MAXURE)
--		local Book = GetChaItem2 ( character , 2 , 3849 )
--		SetItemAttr ( Book , ITEMATTR_VAL_STR,HonorPoint)
--		SetItemAttr ( Book , ITEMATTR_VAL_AGI,KillNum)
--		SetItemAttr ( Book , ITEMATTR_VAL_DEX,KilledNum)
--		SetItemAttr ( Book , ITEMATTR_VAL_CON,JionNum)
--		SetItemAttr ( Book , ITEMATTR_VAL_STA,VictoryNum)
--		SetItemAttr ( Book , ITEMATTR_MAXURE,PartyContributeNum)
----		SetItemAttr ( Book2 , ITEMATTR_MAXENERGY,FightingPoint)
--		RemoveChaItem ( character , 3849 , 1 , 2 , -1, 2 , 1  )	
--		
--	end
--end

function Change_shanyao (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Ваш инвентарь заблокирован ")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "У вас нет Медали отваги ")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 200 then
			SystemNotice( character , "У вас недостаточно очков чести ")
			return 0
		end
	local HonorPoint_X=HonorPoint-200
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		if Item_CanGet <= 0 then
			SystemNotice(character ,"У вас недостаточно свободных слотов в инвентаре ")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2614  , 1 , 4 ) 
end

function Change_rongyao (character, npc)
local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Ваш инвентарь заблокирован ")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "У вас нет Медали отваги ")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 2000 then
			SystemNotice( character , "У вас недостаточно очков чести ")
			return 0
		end
	local HonorPoint_X=HonorPoint-2000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		if Item_CanGet <= 0 then
			SystemNotice(character ,"У вас недостаточно свободных слотов в инвентаре ")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2615  , 1 , 4 )
end

function Change_huihuang (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Ваш инвентарь заблокирован ")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "У вас нет Медали отваги ")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 20000 then
			SystemNotice( character , "У вас недостаточно очков чести ")
			return 0
		end
	local HonorPoint_X=HonorPoint-20000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"У вас недостаточно свободных слотов в инвентаре ")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2616  , 1 , 4 )
end

function Eleven_Log_0( role ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
end

function Eleven_Log( role,typ ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
end
-------------------------------------------------------------------------------------
--				Leo的防外挂答题奖励
-------------------------------------------------------------------------------------
function WGPrizeBegin( role , rightCount)
	local rightCountTemp = rightCount
	if rightCountTemp > 6 then
		rightCountTemp = 6
	end
	
	local isPrizeRandom = math.random(rightCountTemp,10)
	local retRandom = math.random ( 1 , 100 )
	local ret  = 1
	
	if isPrizeRandom > 5  then
		if math.mod ( retRandom , 6 ) == 0 then
			 ret = WGprize_1(role)
		end
		
		if math.mod ( retRandom , 6 ) == 1  then
			 ret = WGprize_2(role)
		end
		
		if math.mod ( retRandom , 6 ) == 2  then
			 ret = WGprize_3(role)
		end
		
		if math.mod ( retRandom , 6 ) == 3  then
			 ret = WGprize_4(role)
		end
		
		if math.mod ( retRandom , 6 ) == 4  then
			 ret = WGprize_5(role)
		end
		
		if math.mod ( retRandom , 6 ) == 5  then
			 ret = WGprize_6(role)
		end
		
		if ret ==1 then
			SystemNotice( role , "Return value error")
		end
	else
		SystemNotice( role , "You have answered correctly, but you failed to win any prizes" )
	end
end
function WGprize_1( role ) --加经验 LV * 10
	local expNow = GetChaAttr( role , ATTR_CEXP )
	local lvNow = GetChaAttr( role , ATTR_LV)
	
	SystemNotice( role , "Answered correctly and obtained  " .. lvNow*10 .. " experience points")
	SetChaAttrI(  role , ATTR_CEXP ,expNow+lvNow*10  )
	RefreshCha(role)
	return 0
end

function WGprize_2( role ) --将当前血补满
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	SystemNotice( role , "Correct answer will restore your HP to max")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_3(role) --将当前蓝补满
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , " Correct answer will restore your SP to the max")
	SetChaAttrI( role , ATTR_SP, SPMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_4(role) --奖励LV*1个蛋糕
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "Answered correctly and obtained  " .. lvNow .. " cake(s)")
	
	GiveItem( role , 0 , 1849  , lvNow , 4 )	
	return 0
end

function WGprize_5(role) --神仙酱果1个
	SystemNotice( role , "Correct answer will give you 1 Old Ticket")
	
	GiveItem( role , 0 , 3141  , 1 , 4 )	
	return 0
end

function WGprize_6(role) --血蓝全满
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	
	SystemNotice( role , "Correct answer will restore HP & SP to the max")
	
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	SetChaAttrI( role , ATTR_SP ,SPMaxNow  )
	RefreshCha(role)
	return 0
end
-------------------------------------------------------------------------------------
--				Leo  end
-------------------------------------------------------------------------------------
----------
-- Опыт --
----------					
GetExp	={}								
GetExp[1]	=	0
GetExp[2]	=	1
GetExp[3]	=	3
GetExp[4]	=	6
GetExp[5]	=	17
GetExp[6]	=	42
GetExp[7]	=	84
GetExp[8]	=	167
GetExp[9]	=	329
GetExp[10]	=	535
GetExp[11]	=	831
GetExp[12]	=	1245
GetExp[13]	=	1808
GetExp[14]	=	2557
GetExp[15]	=	3535
GetExp[16]	=	4795
GetExp[17]	=	6393
GetExp[18]	=	8397
GetExp[19]	=	10885
GetExp[20]	=	13943
GetExp[21]	=	17672
GetExp[22]	=	22186
GetExp[23]	=	27612
GetExp[24]	=	34094
GetExp[25]	=	41797
GetExp[26]	=	50902
GetExp[27]	=	61616
GetExp[28]	=	74167
GetExp[29]	=	88812
GetExp[30]	=	52194
GetExp[31]	=	54583
GetExp[32]	=	56972
GetExp[33]	=	59361
GetExp[34]	=	61749
GetExp[35]	=	64138
GetExp[36]	=	66527
GetExp[37]	=	68916
GetExp[38]	=	71305
GetExp[39]	=	73694
GetExp[40]	=	76083
GetExp[41]	=	78472
GetExp[42]	=	80861
GetExp[43]	=	83250
GetExp[44]	=	85639
GetExp[45]	=	88028
GetExp[46]	=	90417
GetExp[47]	=	92806
GetExp[48]	=	95195
GetExp[49]	=	97584
GetExp[50]	=	99972
GetExp[51]	=	102361
GetExp[52]	=	104750
GetExp[53]	=	107139
GetExp[54]	=	109528
GetExp[55]	=	111917
GetExp[56]	=	114306
GetExp[57]	=	116695
GetExp[58]	=	119084
GetExp[59]	=	121473
GetExp[60]	=	123862
GetExp[61]	=	126251
GetExp[62]	=	128640
GetExp[63]	=	131029
GetExp[64]	=	133418
GetExp[65]	=	135807
GetExp[66]	=	138195
GetExp[67]	=	140584
GetExp[68]	=	142973
GetExp[69]	=	145362
GetExp[70]	=	147751
GetExp[71]	=	150140
GetExp[72]	=	152529
GetExp[73]	=	154918
GetExp[74]	=	157307
GetExp[75]	=	159696
GetExp[76]	=	162085
GetExp[77]	=	164474
GetExp[78]	=	166863
GetExp[79]	=	169252
GetExp[80]	=	171641
GetExp[81]	=	174029
GetExp[82]	=	176418
GetExp[83]	=	178807
GetExp[84]	=	181196
GetExp[85]	=	183585
GetExp[86]	=	185974
GetExp[87]	=	188363
GetExp[88]	=	190752
GetExp[89]	=	193141
GetExp[90]	=	195530
GetExp[91]	=	197919
GetExp[92]	=	200308
GetExp[93]	=	202697
GetExp[94]	=	205086
GetExp[95]	=	207475
GetExp[96]	=	209864
GetExp[97]	=	212252
GetExp[98]	=	214641
GetExp[99]	=	217030
GetExp[100]	=	219419
GetExp[101]	=	221808
GetExp[102]	=	224197
GetExp[103]	=	226586
GetExp[104]	=	228975
GetExp[105]	=	231364
GetExp[106]	=	233753
GetExp[107]	=	236142
GetExp[108]	=	238531
GetExp[109]	=	240920
GetExp[110]	=	243309
GetExp[111]	=	245698
GetExp[112]	=	248087
GetExp[113]	=	250475
GetExp[114]	=	252864
GetExp[115]	=	255253
GetExp[116]	=	257642
GetExp[117]	=	260031
GetExp[118]	=	262420
GetExp[119]	=	264809
GetExp[120]	=	267198
GetExp[121]	=	269587
GetExp[122]	=	271976
GetExp[123]	=	274365
GetExp[124]	=	276754
GetExp[125]	=	279143
GetExp[126]	=	281532
GetExp[127]	=	283921
GetExp[128]	=	286310
GetExp[129]	=	288698
GetExp[130]	=	291087
GetExp[131]	=	293476
GetExp[132]	=	295865
GetExp[133]	=	298254
GetExp[134]	=	300643
GetExp[135]	=	303032
GetExp[136]	=	305421
GetExp[137]	=	307810
GetExp[138]	=	310199
GetExp[139]	=	312588
GetExp[140]	=	314977
GetExp[141]	=	317366
GetExp[142]	=	319755
GetExp[143]	=	322144
GetExp[144]	=	324532
GetExp[145]	=	326921
GetExp[146]	=	329310
GetExp[147]	=	331699
GetExp[148]	=	334088
GetExp[149]	=	336477
GetExp[150]	=	338866
GetExp[151]	=	341255
GetExp[152]	=	343644
GetExp[153]	=	346033
GetExp[154]	=	348422
GetExp[155]	=	350811
GetExp[156]	=	353200
GetExp[157]	=	355589
GetExp[158]	=	357978
GetExp[159]	=	360367
GetExp[160]	=	362755
GetExp[161]	=	365144
GetExp[162]	=	367533
GetExp[163]	=	369922
GetExp[164]	=	372311
GetExp[165]	=	374700
GetExp[166]	=	377089
GetExp[167]	=	379478
GetExp[168]	=	381867
GetExp[169]	=	384256
GetExp[170]	=	386645
GetExp[171]	=	389034
GetExp[172]	=	391423
GetExp[173]	=	393812
GetExp[174]	=	396201
GetExp[175]	=	398590
GetExp[176]	=	400978
GetExp[177]	=	403367
GetExp[178]	=	405756
GetExp[179]	=	408145
GetExp[180]	=	410534
GetExp[181]	=	412923
GetExp[182]	=	415312
GetExp[183]	=	417701
GetExp[184]	=	420090
GetExp[185]	=	422479
GetExp[186]	=	424868
GetExp[187]	=	427257
GetExp[188]	=	429646
GetExp[189]	=	432035
GetExp[190]	=	434424
GetExp[191]	=	436813
GetExp[192]	=	439201
GetExp[193]	=	441590
GetExp[194]	=	443979
GetExp[195]	=	446368
GetExp[196]	=	448757
GetExp[197]	=	451146
GetExp[198]	=	453535
GetExp[199]	=	455924
GetExp[200]	=	458313
GetExp[201]	=	460702
GetExp[202]	=	463091
GetExp[203]	=	465480
GetExp[204]	=	467869
GetExp[205]	=	470258
GetExp[206]	=	472647
GetExp[207]	=	475035
GetExp[208]	=	477424
GetExp[209]	=	479813
GetExp[210]	=	482202
GetExp[211]	=	484591
GetExp[212]	=	486980
GetExp[213]	=	489369
GetExp[214]	=	491758
GetExp[215]	=	494147
GetExp[216]	=	496536
GetExp[217]	=	498925
GetExp[218]	=	501314
GetExp[219]	=	503703
GetExp[220]	=	506092
GetExp[221]	=	508481
GetExp[222]	=	510870
GetExp[223]	=	513258
GetExp[224]	=	515647
GetExp[225]	=	518036
GetExp[226]	=	520425
GetExp[227]	=	522814
GetExp[228]	=	525203
GetExp[229]	=	527592
GetExp[230]	=	529981
GetExp[231]	=	532370
GetExp[232]	=	534759
GetExp[233]	=	537148
GetExp[234]	=	539537
GetExp[235]	=	541926
GetExp[236]	=	544315
GetExp[237]	=	546704
GetExp[238]	=	549093
GetExp[239]	=	551481
GetExp[240]	=	553870
GetExp[241]	=	556259
GetExp[242]	=	558648
GetExp[243]	=	561037
GetExp[244]	=	563426
GetExp[245]	=	565815
GetExp[246]	=	568204
GetExp[247]	=	570593
GetExp[248]	=	572982
GetExp[249]	=	575371
GetExp[250]	=	577760
GetExp[251]	=	580149
GetExp[252]	=	582538
GetExp[253]	=	584927
GetExp[254]	=	587316
GetExp[255]	=	589704
GetExp[256]	=	592093
GetExp[257]	=	594482
GetExp[258]	=	596871
GetExp[259]	=	599260
GetExp[260]	=	601649
GetExp[261]	=	604038
GetExp[262]	=	606427
GetExp[263]	=	608816
GetExp[264]	=	611205
GetExp[265]	=	613594
GetExp[266]	=	615983
GetExp[267]	=	618372
GetExp[268]	=	620761
GetExp[269]	=	623150
GetExp[270]	=	625538
GetExp[271]	=	627927
GetExp[272]	=	630316
GetExp[273]	=	632705
GetExp[274]	=	635094
GetExp[275]	=	637483
GetExp[276]	=	639872
GetExp[277]	=	642261
GetExp[278]	=	644650
GetExp[279]	=	647039
GetExp[280]	=	649428
GetExp[281]	=	651817
GetExp[282]	=	654206
GetExp[283]	=	656595
GetExp[284]	=	658984
GetExp[285]	=	661373
GetExp[286]	=	663761
GetExp[287]	=	666150
GetExp[288]	=	668539
GetExp[289]	=	670928
GetExp[290]	=	673317
GetExp[291]	=	675706
GetExp[292]	=	678095
GetExp[293]	=	680484
GetExp[294]	=	682873
GetExp[295]	=	685262
GetExp[296]	=	687651
GetExp[297]	=	690040
GetExp[298]	=	692429
GetExp[299]	=	694818
GetExp[300]	=	697207
GetExp[301]	=	699596
GetExp[302]	=	701984
GetExp[303]	=	704373
GetExp[304]	=	706762
GetExp[305]	=	709151
GetExp[306]	=	711540
GetExp[307]	=	713929
GetExp[308]	=	716318
GetExp[309]	=	718707
GetExp[310]	=	721096
GetExp[311]	=	723485
GetExp[312]	=	725874
GetExp[313]	=	728263
GetExp[314]	=	730652
GetExp[315]	=	733041
GetExp[316]	=	735430
GetExp[317]	=	737818
GetExp[318]	=	740207
GetExp[319]	=	742596
GetExp[320]	=	744985
GetExp[321]	=	747374
GetExp[322]	=	749763
GetExp[323]	=	752152
GetExp[324]	=	754541
GetExp[325]	=	756930
GetExp[326]	=	759319
GetExp[327]	=	761708
GetExp[328]	=	764097
GetExp[329]	=	766486
GetExp[330]	=	768875
GetExp[331]	=	771264
GetExp[332]	=	773653
GetExp[333]	=	776041
GetExp[334]	=	778430
GetExp[335]	=	780819
GetExp[336]	=	783208
GetExp[337]	=	785597
GetExp[338]	=	787986
GetExp[339]	=	790375
GetExp[340]	=	792764
GetExp[341]	=	795153
GetExp[342]	=	797542
GetExp[343]	=	799931
GetExp[344]	=	802320
GetExp[345]	=	804709
GetExp[346]	=	807098
GetExp[347]	=	809487
GetExp[348]	=	811876
GetExp[349]	=	814264
GetExp[350]	=	816653
GetExp[351]	=	819042
GetExp[352]	=	821431
GetExp[353]	=	823820
GetExp[354]	=	826209
GetExp[355]	=	828598
GetExp[356]	=	830987
GetExp[357]	=	833376
GetExp[358]	=	835765
GetExp[359]	=	838154
GetExp[360]	=	840543
GetExp[361]	=	842932
GetExp[362]	=	845321
GetExp[363]	=	847710
GetExp[364]	=	850099
GetExp[365]	=	852487
GetExp[366]	=	854876
GetExp[367]	=	857265
GetExp[368]	=	859654
GetExp[369]	=	862043
GetExp[370]	=	864432
GetExp[371]	=	866821
GetExp[372]	=	869210
GetExp[373]	=	871599
GetExp[374]	=	873988
GetExp[375]	=	876377
GetExp[376]	=	878766
GetExp[377]	=	881155
GetExp[378]	=	883544
GetExp[379]	=	885933
GetExp[380]	=	888321
GetExp[381]	=	890710
GetExp[382]	=	893099
GetExp[383]	=	895488
GetExp[384]	=	897877
GetExp[385]	=	900266
GetExp[386]	=	902655
GetExp[387]	=	905044
GetExp[388]	=	907433
GetExp[389]	=	909822
GetExp[390]	=	912211
GetExp[391]	=	914600
GetExp[392]	=	916989
GetExp[393]	=	919378
GetExp[394]	=	921767
GetExp[395]	=	924156
GetExp[396]	=	926544
GetExp[397]	=	928933
GetExp[398]	=	931322
GetExp[399]	=	933711
GetExp[400]	=	936100
GetExp[401]	=	938489
GetExp[402]	=	940878
GetExp[403]	=	943267
GetExp[404]	=	945656
GetExp[405]	=	948045
GetExp[406]	=	950434
GetExp[407]	=	952823
GetExp[408]	=	955212
GetExp[409]	=	957601
GetExp[410]	=	959990
GetExp[411]	=	962379
GetExp[412]	=	964767
GetExp[413]	=	967156
GetExp[414]	=	969545
GetExp[415]	=	971934
GetExp[416]	=	974323
GetExp[417]	=	976712
GetExp[418]	=	979101
GetExp[419]	=	981490
GetExp[420]	=	983879
GetExp[421]	=	986268
GetExp[422]	=	988657
GetExp[423]	=	991046
GetExp[424]	=	993435
GetExp[425]	=	995824
GetExp[426]	=	998213
GetExp[427]	=	1000602
GetExp[428]	=	1002990
GetExp[429]	=	1005379
GetExp[430]	=	1007768
GetExp[431]	=	1010157
GetExp[432]	=	1012546
GetExp[433]	=	1014935
GetExp[434]	=	1017324
GetExp[435]	=	1019713
GetExp[436]	=	1022102
GetExp[437]	=	1024491
GetExp[438]	=	1026880
GetExp[439]	=	1029269
GetExp[440]	=	1031658
GetExp[441]	=	1034047
GetExp[442]	=	1036436
GetExp[443]	=	1038824
GetExp[444]	=	1041213
GetExp[445]	=	1043602
GetExp[446]	=	1045991
GetExp[447]	=	1048380
GetExp[448]	=	1050769
GetExp[449]	=	1053158
GetExp[450]	=	1055547
GetExp[451]	=	1057936
GetExp[452]	=	1060325
GetExp[453]	=	1062714
GetExp[454]	=	1065103
GetExp[455]	=	1067492
GetExp[456]	=	1069881
GetExp[457]	=	1072270
GetExp[458]	=	1074659
GetExp[459]	=	1077047
GetExp[460]	=	1079436
GetExp[461]	=	1081825
GetExp[462]	=	1084214
GetExp[463]	=	1086603
GetExp[464]	=	1088992
GetExp[465]	=	1091381
GetExp[466]	=	1093770
GetExp[467]	=	1096159
GetExp[468]	=	1098548
GetExp[469]	=	1100937
GetExp[470]	=	1103326
GetExp[471]	=	1105715
GetExp[472]	=	1108104
GetExp[473]	=	1110493
GetExp[474]	=	1112882
GetExp[475]	=	1115270
GetExp[476]	=	1117659
GetExp[477]	=	1120048
GetExp[478]	=	1122437
GetExp[479]	=	1124826
GetExp[480]	=	1127215
GetExp[481]	=	1129604
GetExp[482]	=	1131993
GetExp[483]	=	1134382
GetExp[484]	=	1136771
GetExp[485]	=	1139160
GetExp[486]	=	1141549
GetExp[487]	=	1143938
GetExp[488]	=	1146327
GetExp[489]	=	1148716
GetExp[490]	=	1151105
GetExp[491]	=	1153493
GetExp[492]	=	1155882
GetExp[493]	=	1158271
GetExp[494]	=	1160660
GetExp[495]	=	1163049
GetExp[496]	=	1165438
GetExp[497]	=	1167827
GetExp[498]	=	1170216
GetExp[499]	=	1172605
GetExp[500]	=	1174994
GetExp[501]	=	1177383
GetExp[502]	=	1179772
GetExp[503]	=	1182161
GetExp[504]	=	1184550
GetExp[505]	=	1186939
GetExp[506]	=	1189327
GetExp[507]	=	1191716
GetExp[508]	=	1194105
GetExp[509]	=	1196494
GetExp[510]	=	1198883
GetExp[511]	=	1201272
GetExp[512]	=	1203661
GetExp[513]	=	1206050
GetExp[514]	=	1208439
GetExp[515]	=	1210828
GetExp[516]	=	1213217
GetExp[517]	=	1215606
GetExp[518]	=	1217995
GetExp[519]	=	1220384
GetExp[520]	=	1222773
GetExp[521]	=	1225162
GetExp[522]	=	1227550
GetExp[523]	=	1229939
GetExp[524]	=	1232328
GetExp[525]	=	1234717
GetExp[526]	=	1237106
GetExp[527]	=	1239495
GetExp[528]	=	1241884
GetExp[529]	=	1244273
GetExp[530]	=	1246662
GetExp[531]	=	1249051
GetExp[532]	=	1251440
GetExp[533]	=	1253829
GetExp[534]	=	1256218
GetExp[535]	=	1258607
GetExp[536]	=	1260996
GetExp[537]	=	1263385
GetExp[538]	=	1265773
GetExp[539]	=	1268162
GetExp[540]	=	1270551
GetExp[541]	=	1272940
GetExp[542]	=	1275329
GetExp[543]	=	1277718
GetExp[544]	=	1280107
GetExp[545]	=	1282496
GetExp[546]	=	1284885
GetExp[547]	=	1287274
GetExp[548]	=	1289663
GetExp[549]	=	1292052
GetExp[550]	=	1294441
GetExp[551]	=	1296830
GetExp[552]	=	1299219
GetExp[553]	=	1301608
GetExp[554]	=	1303996
GetExp[555]	=	1306385
GetExp[556]	=	1308774
GetExp[557]	=	1311163
GetExp[558]	=	1313552
GetExp[559]	=	1315941
GetExp[560]	=	1318330
GetExp[561]	=	1320719
GetExp[562]	=	1323108
GetExp[563]	=	1325497
GetExp[564]	=	1327886
GetExp[565]	=	1330275
GetExp[566]	=	1332664
GetExp[567]	=	1335053
GetExp[568]	=	1337442
GetExp[569]	=	1339830
GetExp[570]	=	1342219
GetExp[571]	=	1344608
GetExp[572]	=	1346997
GetExp[573]	=	1349386
GetExp[574]	=	1351775
GetExp[575]	=	1354164
GetExp[576]	=	1356553
GetExp[577]	=	1358942
GetExp[578]	=	1361331
GetExp[579]	=	1363720
GetExp[580]	=	1366109
GetExp[581]	=	1368498
GetExp[582]	=	1370887
GetExp[583]	=	1373276
GetExp[584]	=	1375665
GetExp[585]	=	1378053
GetExp[586]	=	1380442
GetExp[587]	=	1382831
GetExp[588]	=	1385220
GetExp[589]	=	1387609
GetExp[590]	=	1389998
GetExp[591]	=	1392387
GetExp[592]	=	1394776
GetExp[593]	=	1397165
GetExp[594]	=	1399554
GetExp[595]	=	1401943
GetExp[596]	=	1404332
GetExp[597]	=	1406721
GetExp[598]	=	1409110
GetExp[599]	=	1411499
GetExp[600]	=	1413888
GetExp[601]	=	1416276
GetExp[602]	=	1418665
GetExp[603]	=	1421054
GetExp[604]	=	1423443
GetExp[605]	=	1425832
GetExp[606]	=	1428221
GetExp[607]	=	1430610
GetExp[608]	=	1432999
GetExp[609]	=	1435388
GetExp[610]	=	1437777
GetExp[611]	=	1440166
GetExp[612]	=	1442555
GetExp[613]	=	1444944
GetExp[614]	=	1447333
GetExp[615]	=	1449722
GetExp[616]	=	1452110
GetExp[617]	=	1454499
GetExp[618]	=	1456888
GetExp[619]	=	1459277
GetExp[620]	=	1461666
GetExp[621]	=	1464055
GetExp[622]	=	1466444
GetExp[623]	=	1468833
GetExp[624]	=	1471222
GetExp[625]	=	1473611
GetExp[626]	=	1476000
GetExp[627]	=	1478389
GetExp[628]	=	1480778
GetExp[629]	=	1483167
GetExp[630]	=	1485556
GetExp[631]	=	1487945
GetExp[632]	=	1490333
GetExp[633]	=	1492722
GetExp[634]	=	1495111
GetExp[635]	=	1497500
GetExp[636]	=	1499889
GetExp[637]	=	1502278
GetExp[638]	=	1504667
GetExp[639]	=	1507056
GetExp[640]	=	1509445
GetExp[641]	=	1511834
GetExp[642]	=	1514223
GetExp[643]	=	1516612
GetExp[644]	=	1519001
GetExp[645]	=	1521390
GetExp[646]	=	1523779
GetExp[647]	=	1526168
GetExp[648]	=	1528556
GetExp[649]	=	1530945
GetExp[650]	=	1533334
GetExp[651]	=	1535723
GetExp[652]	=	1538112
GetExp[653]	=	1540501
GetExp[654]	=	1542890
GetExp[655]	=	1545279
GetExp[656]	=	1547668
GetExp[657]	=	1550057
GetExp[658]	=	1552446
GetExp[659]	=	1554835
GetExp[660]	=	1557224
GetExp[661]	=	1559613
GetExp[662]	=	1562002
GetExp[663]	=	1564391
GetExp[664]	=	1566779
GetExp[665]	=	1569168
GetExp[666]	=	1571557
GetExp[667]	=	1573946
GetExp[668]	=	1576335
GetExp[669]	=	1578724
GetExp[670]	=	1581113
GetExp[671]	=	1583502
GetExp[672]	=	1585891
GetExp[673]	=	1588280
GetExp[674]	=	1590669
GetExp[675]	=	1593058
GetExp[676]	=	1595447
GetExp[677]	=	1597836
GetExp[678]	=	1600225
GetExp[679]	=	1602613
GetExp[680]	=	1605002
GetExp[681]	=	1607391
GetExp[682]	=	1609780
GetExp[683]	=	1612169
GetExp[684]	=	1614558
GetExp[685]	=	1616947
GetExp[686]	=	1619336
GetExp[687]	=	1621725
GetExp[688]	=	1624114
GetExp[689]	=	1626503
GetExp[690]	=	1628892
GetExp[691]	=	1631281
GetExp[692]	=	1633670
GetExp[693]	=	1636059
GetExp[694]	=	1638448
GetExp[695]	=	1640836
GetExp[696]	=	1643225
GetExp[697]	=	1645614
GetExp[698]	=	1648003
GetExp[699]	=	1650392
GetExp[700]	=	1652781
GetExp[701]	=	1655170
GetExp[702]	=	1657559
GetExp[703]	=	1659948
GetExp[704]	=	1662337
GetExp[705]	=	1664726
GetExp[706]	=	1667115
GetExp[707]	=	1669504
GetExp[708]	=	1671893
GetExp[709]	=	1674282
GetExp[710]	=	1676671
GetExp[711]	=	1679059
GetExp[712]	=	1681448
GetExp[713]	=	1683837
GetExp[714]	=	1686226
GetExp[715]	=	1688615
GetExp[716]	=	1691004
GetExp[717]	=	1693393
GetExp[718]	=	1695782
GetExp[719]	=	1698171
GetExp[720]	=	1700560
GetExp[721]	=	1702949
GetExp[722]	=	1705338
GetExp[723]	=	1707727
GetExp[724]	=	1710116
GetExp[725]	=	1712505
GetExp[726]	=	1714894
GetExp[727]	=	1717282
GetExp[728]	=	1719671
GetExp[729]	=	1722060
GetExp[730]	=	1724449
GetExp[731]	=	1726838
GetExp[732]	=	1729227
GetExp[733]	=	1731616
GetExp[734]	=	1734005
GetExp[735]	=	1736394
GetExp[736]	=	1738783
GetExp[737]	=	1741172
GetExp[738]	=	1743561
GetExp[739]	=	1745950
GetExp[740]	=	1748339
GetExp[741]	=	1750728
GetExp[742]	=	1753116
GetExp[743]	=	1755505
GetExp[744]	=	1757894
GetExp[745]	=	1760283
GetExp[746]	=	1762672
GetExp[747]	=	1765061
GetExp[748]	=	1767450
GetExp[749]	=	1769839
GetExp[750]	=	1772228
GetExp[751]	=	1774617
GetExp[752]	=	1777006
GetExp[753]	=	1779395
GetExp[754]	=	1781784
GetExp[755]	=	1784173
GetExp[756]	=	1786562
GetExp[757]	=	1788951
GetExp[758]	=	1791339
GetExp[759]	=	1793728
GetExp[760]	=	1796117
GetExp[761]	=	1798506
GetExp[762]	=	1800895
GetExp[763]	=	1803284
GetExp[764]	=	1805673
GetExp[765]	=	1808062
GetExp[766]	=	1810451
GetExp[767]	=	1812840
GetExp[768]	=	1815229
GetExp[769]	=	1817618
GetExp[770]	=	1820007
GetExp[771]	=	1822396
GetExp[772]	=	1824785
GetExp[773]	=	1827174
GetExp[774]	=	1829562
GetExp[775]	=	1831951
GetExp[776]	=	1834340
GetExp[777]	=	1836729
GetExp[778]	=	1839118
GetExp[779]	=	1841507
GetExp[780]	=	1843896
GetExp[781]	=	1846285
GetExp[782]	=	1848674
GetExp[783]	=	1851063
GetExp[784]	=	1853452
GetExp[785]	=	1855841
GetExp[786]	=	1858230
GetExp[787]	=	1860619
GetExp[788]	=	1863008
GetExp[789]	=	1865397
GetExp[790]	=	1867785
GetExp[791]	=	1870174
GetExp[792]	=	1872563
GetExp[793]	=	1874952
GetExp[794]	=	1877341
GetExp[795]	=	1879730
GetExp[796]	=	1882119
GetExp[797]	=	1884508
GetExp[798]	=	1886897
GetExp[799]	=	1889286
GetExp[800]	=	1891675
GetExp[801]	=	1894064
GetExp[802]	=	1896453
GetExp[803]	=	1898842
GetExp[804]	=	1901231
GetExp[805]	=	1903619
GetExp[806]	=	1906008
GetExp[807]	=	1908397
GetExp[808]	=	1910786
GetExp[809]	=	1913175
GetExp[810]	=	1915564
GetExp[811]	=	1917953
GetExp[812]	=	1920342
GetExp[813]	=	1922731
GetExp[814]	=	1925120
GetExp[815]	=	1927509
GetExp[816]	=	1929898
GetExp[817]	=	1932287
GetExp[818]	=	1934676
GetExp[819]	=	1937065
GetExp[820]	=	1939454
GetExp[821]	=	1941842
GetExp[822]	=	1944231
GetExp[823]	=	1946620
GetExp[824]	=	1949009
GetExp[825]	=	1951398
GetExp[826]	=	1953787
GetExp[827]	=	1956176
GetExp[828]	=	1958565
GetExp[829]	=	1960954
GetExp[830]	=	1963343
GetExp[831]	=	1965732
GetExp[832]	=	1968121
GetExp[833]	=	1970510
GetExp[834]	=	1972899
GetExp[835]	=	1975288
GetExp[836]	=	1977677
GetExp[837]	=	1980065
GetExp[838]	=	1982454
GetExp[839]	=	1984843
GetExp[840]	=	1987232
GetExp[841]	=	1989621
GetExp[842]	=	1992010
GetExp[843]	=	1994399
GetExp[844]	=	1996788
GetExp[845]	=	1999177
GetExp[846]	=	2001566
GetExp[847]	=	2003955
GetExp[848]	=	2006344
GetExp[849]	=	2008733
GetExp[850]	=	2011122
GetExp[851]	=	2013511
GetExp[852]	=	2015900
GetExp[853]	=	2018288
GetExp[854]	=	2020677
GetExp[855]	=	2023066
GetExp[856]	=	2025455
GetExp[857]	=	2027844
GetExp[858]	=	2030233
GetExp[859]	=	2032622
GetExp[860]	=	2035011
GetExp[861]	=	2037400
GetExp[862]	=	2039789
GetExp[863]	=	2042178
GetExp[864]	=	2044567
GetExp[865]	=	2046956
GetExp[866]	=	2049345
GetExp[867]	=	2051734
GetExp[868]	=	2054122
GetExp[869]	=	2056511
GetExp[870]	=	2058900
GetExp[871]	=	2061289
GetExp[872]	=	2063678
GetExp[873]	=	2066067
GetExp[874]	=	2068456
GetExp[875]	=	2070845
GetExp[876]	=	2073234
GetExp[877]	=	2075623
GetExp[878]	=	2078012
GetExp[879]	=	2080401
GetExp[880]	=	2082790
GetExp[881]	=	2085179
GetExp[882]	=	2087568
GetExp[883]	=	2089957
GetExp[884]	=	2092345
GetExp[885]	=	2094734
GetExp[886]	=	2097123
GetExp[887]	=	2099512
GetExp[888]	=	2101901
GetExp[889]	=	2104290
GetExp[890]	=	2106679
GetExp[891]	=	2109068
GetExp[892]	=	2111457
GetExp[893]	=	2113846
GetExp[894]	=	2116235
GetExp[895]	=	2118624
GetExp[896]	=	2121013
GetExp[897]	=	2123402
GetExp[898]	=	2125791
GetExp[899]	=	2128180
GetExp[900]	=	2130568
GetExp[901]	=	2132957
GetExp[902]	=	2135346
GetExp[903]	=	2137735
GetExp[904]	=	2140124
GetExp[905]	=	2142513
GetExp[906]	=	2144902
GetExp[907]	=	2147291
GetExp[908]	=	2149680
GetExp[909]	=	2152069
GetExp[910]	=	2154458
GetExp[911]	=	2156847
GetExp[912]	=	2159236
GetExp[913]	=	2161625
GetExp[914]	=	2164014
GetExp[915]	=	2166402
GetExp[916]	=	2168791
GetExp[917]	=	2171180
GetExp[918]	=	2173569
GetExp[919]	=	2175958
GetExp[920]	=	2178347
GetExp[921]	=	2180736
GetExp[922]	=	2183125
GetExp[923]	=	2185514
GetExp[924]	=	2187903
GetExp[925]	=	2190292
GetExp[926]	=	2192681
GetExp[927]	=	2195070
GetExp[928]	=	2197459
GetExp[929]	=	2199848
GetExp[930]	=	2202237
GetExp[931]	=	2204625
GetExp[932]	=	2207014
GetExp[933]	=	2209403
GetExp[934]	=	2211792
GetExp[935]	=	2214181
GetExp[936]	=	2216570
GetExp[937]	=	2218959
GetExp[938]	=	2221348
GetExp[939]	=	2223737
GetExp[940]	=	2226126
GetExp[941]	=	2228515
GetExp[942]	=	2230904
GetExp[943]	=	2233293
GetExp[944]	=	2235682
GetExp[945]	=	2238071
GetExp[946]	=	2240460
GetExp[947]	=	2242848
GetExp[948]	=	2245237
GetExp[949]	=	2247626
GetExp[950]	=	2250015
GetExp[951]	=	2252404
GetExp[952]	=	2254793
GetExp[953]	=	2257182
GetExp[954]	=	2259571
GetExp[955]	=	2261960
GetExp[956]	=	2264349
GetExp[957]	=	2266738
GetExp[958]	=	2269127
GetExp[959]	=	2271516
GetExp[960]	=	2273905
GetExp[961]	=	2276294
GetExp[962]	=	2278683
GetExp[963]	=	2281071
GetExp[964]	=	2283460
GetExp[965]	=	2285849
GetExp[966]	=	2288238
GetExp[967]	=	2290627
GetExp[968]	=	2293016
GetExp[969]	=	2295405
GetExp[970]	=	2297794
GetExp[971]	=	2300183
GetExp[972]	=	2302572
GetExp[973]	=	2304961
GetExp[974]	=	2307350
GetExp[975]	=	2309739
GetExp[976]	=	2312128
GetExp[977]	=	2314517
GetExp[978]	=	2316905
GetExp[979]	=	2319294
GetExp[980]	=	2321683
GetExp[981]	=	2324072
GetExp[982]	=	2326461
GetExp[983]	=	2328850
GetExp[984]	=	2331239
GetExp[985]	=	2333628
GetExp[986]	=	2336017
GetExp[987]	=	2338406
GetExp[988]	=	2340795
GetExp[989]	=	2343184
GetExp[990]	=	2345573
GetExp[991]	=	2347962
GetExp[992]	=	2350351
GetExp[993]	=	2352740
GetExp[994]	=	2355128
GetExp[995]	=	2357517
GetExp[996]	=	2359906
GetExp[997]	=	2362295
GetExp[998]	=	2364684
GetExp[999]	=	2367073
GetExp[1000]	=	2369462
GetExp[1001]	=	2371851
GetExp[1002]	=	2374240
GetExp[1003]	=	2376629
GetExp[1004]	=	2379018
GetExp[1005]	=	2381407
GetExp[1006]	=	2383796
GetExp[1007]	=	2386185
GetExp[1008]	=	2388574
GetExp[1009]	=	2390963
GetExp[1010]	=	2393351
GetExp[1011]	=	2395740
GetExp[1012]	=	2398129
GetExp[1013]	=	2400518
GetExp[1014]	=	2402907
GetExp[1015]	=	2405296
GetExp[1016]	=	2407685
GetExp[1017]	=	2410074
GetExp[1018]	=	2412463
GetExp[1019]	=	2414852
GetExp[1020]	=	2417241
GetExp[1021]	=	2419630
GetExp[1022]	=	2422019
GetExp[1023]	=	2424408
GetExp[1024]	=	2426797
GetExp[1025]	=	2429186
GetExp[1026]	=	2431574
GetExp[1027]	=	2433963
GetExp[1028]	=	2436352
GetExp[1029]	=	2438741
GetExp[1030]	=	2441130
GetExp[1031]	=	2443519
GetExp[1032]	=	2445908
GetExp[1033]	=	2448297
GetExp[1034]	=	2450686
GetExp[1035]	=	2453075
GetExp[1036]	=	2455464
GetExp[1037]	=	2457853
GetExp[1038]	=	2460242
GetExp[1039]	=	2462631
GetExp[1040]	=	2465020
GetExp[1041]	=	2467408
GetExp[1042]	=	2469797
GetExp[1043]	=	2472186
GetExp[1044]	=	2474575
GetExp[1045]	=	2476964
GetExp[1046]	=	2479353
GetExp[1047]	=	2481742
GetExp[1048]	=	2484131
GetExp[1049]	=	2486520
GetExp[1050]	=	2488909
GetExp[1051]	=	2491298
GetExp[1052]	=	2493687
GetExp[1053]	=	2496076
GetExp[1054]	=	2498465
GetExp[1055]	=	2500854
GetExp[1056]	=	2503243
GetExp[1057]	=	2505631
GetExp[1058]	=	2508020
GetExp[1059]	=	2510409
GetExp[1060]	=	2512798
GetExp[1061]	=	2515187
GetExp[1062]	=	2517576
GetExp[1063]	=	2519965
GetExp[1064]	=	2522354
GetExp[1065]	=	2524743
GetExp[1066]	=	2527132
GetExp[1067]	=	2529521
GetExp[1068]	=	2531910
GetExp[1069]	=	2534299
GetExp[1070]	=	2536688
GetExp[1071]	=	2539077
GetExp[1072]	=	2541466
GetExp[1073]	=	2543854
GetExp[1074]	=	2546243
GetExp[1075]	=	2548632
GetExp[1076]	=	2551021
GetExp[1077]	=	2553410
GetExp[1078]	=	2555799
GetExp[1079]	=	2558188
GetExp[1080]	=	2560577
GetExp[1081]	=	2562966
GetExp[1082]	=	2565355
GetExp[1083]	=	2567744
GetExp[1084]	=	2570133
GetExp[1085]	=	2572522
GetExp[1086]	=	2574911
GetExp[1087]	=	2577300
GetExp[1088]	=	2579689
GetExp[1089]	=	2582077
GetExp[1090]	=	2584466
GetExp[1091]	=	2586855
GetExp[1092]	=	2589244
GetExp[1093]	=	2591633
GetExp[1094]	=	2594022
GetExp[1095]	=	2596411
GetExp[1096]	=	2598800
GetExp[1097]	=	2601189
GetExp[1098]	=	2603578
GetExp[1099]	=	2605967
GetExp[1100]	=	2608356
GetExp[1101]	=	2610745
GetExp[1102]	=	2613134
GetExp[1103]	=	2615523
GetExp[1104]	=	2617911
GetExp[1105]	=	2620300
GetExp[1106]	=	2622689
GetExp[1107]	=	2625078
GetExp[1108]	=	2627467
GetExp[1109]	=	2629856
GetExp[1110]	=	2632245
GetExp[1111]	=	2634634
GetExp[1112]	=	2637023
GetExp[1113]	=	2639412
GetExp[1114]	=	2641801
GetExp[1115]	=	2644190
GetExp[1116]	=	2646579
GetExp[1117]	=	2648968
GetExp[1118]	=	2651357
GetExp[1119]	=	2653746
GetExp[1120]	=	2656134
GetExp[1121]	=	2658523
GetExp[1122]	=	2660912
GetExp[1123]	=	2663301
GetExp[1124]	=	2665690
GetExp[1125]	=	2668079
GetExp[1126]	=	2670468
GetExp[1127]	=	2672857
GetExp[1128]	=	2675246
GetExp[1129]	=	2677635
GetExp[1130]	=	2680024
GetExp[1131]	=	2682413
GetExp[1132]	=	2684802
GetExp[1133]	=	2687191
GetExp[1134]	=	2689580
GetExp[1135]	=	2691969
GetExp[1136]	=	2694357
GetExp[1137]	=	2696746
GetExp[1138]	=	2699135
GetExp[1139]	=	2701524
GetExp[1140]	=	2703913
GetExp[1141]	=	2706302
GetExp[1142]	=	2708691
GetExp[1143]	=	2711080
GetExp[1144]	=	2713469
GetExp[1145]	=	2715858
GetExp[1146]	=	2718247
GetExp[1147]	=	2720636
GetExp[1148]	=	2723025
GetExp[1149]	=	2725414
GetExp[1150]	=	2727803
GetExp[1151]	=	2730192
GetExp[1152]	=	2732580
GetExp[1153]	=	2734969
GetExp[1154]	=	2737358
GetExp[1155]	=	2739747
GetExp[1156]	=	2742136
GetExp[1157]	=	2744525
GetExp[1158]	=	2746914
GetExp[1159]	=	2749303
GetExp[1160]	=	2751692
GetExp[1161]	=	2754081
GetExp[1162]	=	2756470
GetExp[1163]	=	2758859
GetExp[1164]	=	2761248
GetExp[1165]	=	2763637
GetExp[1166]	=	2766026
GetExp[1167]	=	2768414
GetExp[1168]	=	2770803
GetExp[1169]	=	2773192
GetExp[1170]	=	2775581
GetExp[1171]	=	2777970
GetExp[1172]	=	2780359
GetExp[1173]	=	2782748
GetExp[1174]	=	2785137
GetExp[1175]	=	2787526
GetExp[1176]	=	2789915
GetExp[1177]	=	2792304
GetExp[1178]	=	2794693
GetExp[1179]	=	2797082
GetExp[1180]	=	2799471
GetExp[1181]	=	2801860
GetExp[1182]	=	2804249
GetExp[1183]	=	2806637
GetExp[1184]	=	2809026
GetExp[1185]	=	2811415
GetExp[1186]	=	2813804
GetExp[1187]	=	2816193
GetExp[1188]	=	2818582
GetExp[1189]	=	2820971
GetExp[1190]	=	2823360
GetExp[1191]	=	2825749
GetExp[1192]	=	2828138
GetExp[1193]	=	2830527
GetExp[1194]	=	2832916
GetExp[1195]	=	2835305
GetExp[1196]	=	2837694
GetExp[1197]	=	2840083
GetExp[1198]	=	2842472
GetExp[1199]	=	2844860
GetExp[1200]	=	2847249
GetExp[1201]	=	2849638
GetExp[1202]	=	2852027
GetExp[1203]	=	2854416
GetExp[1204]	=	2856805
GetExp[1205]	=	2859194
GetExp[1206]	=	2861583
GetExp[1207]	=	2863972
GetExp[1208]	=	2866361
GetExp[1209]	=	2868750
GetExp[1210]	=	2871139
GetExp[1211]	=	2873528
GetExp[1212]	=	2875917
GetExp[1213]	=	2878306
GetExp[1214]	=	2880694
GetExp[1215]	=	2883083
GetExp[1216]	=	2885472
GetExp[1217]	=	2887861
GetExp[1218]	=	2890250
GetExp[1219]	=	2892639
GetExp[1220]	=	2895028
GetExp[1221]	=	2897417
GetExp[1222]	=	2899806
GetExp[1223]	=	2902195
GetExp[1224]	=	2904584
GetExp[1225]	=	2906973
GetExp[1226]	=	2909362
GetExp[1227]	=	2911751
GetExp[1228]	=	2914140
GetExp[1229]	=	2916529
GetExp[1230]	=	2918917
GetExp[1231]	=	2921306
GetExp[1232]	=	2923695
GetExp[1233]	=	2926084
GetExp[1234]	=	2928473
GetExp[1235]	=	2930862
GetExp[1236]	=	2933251
GetExp[1237]	=	2935640
GetExp[1238]	=	2938029
GetExp[1239]	=	2940418
GetExp[1240]	=	2942807
GetExp[1241]	=	2945196
GetExp[1242]	=	2947585
GetExp[1243]	=	2949974
GetExp[1244]	=	2952363
GetExp[1245]	=	2954752
GetExp[1246]	=	2957140
GetExp[1247]	=	2959529
GetExp[1248]	=	2961918
GetExp[1249]	=	2964307
GetExp[1250]	=	2966696
GetExp[1251]	=	2969085
GetExp[1252]	=	2971474
GetExp[1253]	=	2973863
GetExp[1254]	=	2976252
GetExp[1255]	=	2978641
GetExp[1256]	=	2981030
GetExp[1257]	=	2983419
GetExp[1258]	=	2985808
GetExp[1259]	=	2988197
GetExp[1260]	=	2990586
GetExp[1261]	=	2992975
GetExp[1262]	=	2995363
GetExp[1263]	=	2997752
GetExp[1264]	=	3000141
GetExp[1265]	=	3002530
GetExp[1266]	=	3004919
GetExp[1267]	=	3007308
GetExp[1268]	=	3009697
GetExp[1269]	=	3012086
GetExp[1270]	=	3014475
GetExp[1271]	=	3016864
GetExp[1272]	=	3019253
GetExp[1273]	=	3021642
GetExp[1274]	=	3024031
GetExp[1275]	=	3026420
GetExp[1276]	=	3028809
GetExp[1277]	=	3031197
GetExp[1278]	=	3033586
GetExp[1279]	=	3035975
GetExp[1280]	=	3038364
GetExp[1281]	=	3040753
GetExp[1282]	=	3043142
GetExp[1283]	=	3045531
GetExp[1284]	=	3047920
GetExp[1285]	=	3050309
GetExp[1286]	=	3052698
GetExp[1287]	=	3055087
GetExp[1288]	=	3057476
GetExp[1289]	=	3059865
GetExp[1290]	=	3062254
GetExp[1291]	=	3064643
GetExp[1292]	=	3067032
GetExp[1293]	=	3069420
GetExp[1294]	=	3071809
GetExp[1295]	=	3074198
GetExp[1296]	=	3076587
GetExp[1297]	=	3078976
GetExp[1298]	=	3081365
GetExp[1299]	=	3083754
GetExp[1300]	=	3086143
GetExp[1301]	=	3088532
GetExp[1302]	=	3090921
GetExp[1303]	=	3093310
GetExp[1304]	=	3095699
GetExp[1305]	=	3098088
GetExp[1306]	=	3100477
GetExp[1307]	=	3102866
GetExp[1308]	=	3105255
GetExp[1309]	=	3107643
GetExp[1310]	=	3110032
GetExp[1311]	=	3112421
GetExp[1312]	=	3114810
GetExp[1313]	=	3117199
GetExp[1314]	=	3119588
GetExp[1315]	=	3121977
GetExp[1316]	=	3124366
GetExp[1317]	=	3126755
GetExp[1318]	=	3129144
GetExp[1319]	=	3131533
GetExp[1320]	=	3133922
GetExp[1321]	=	3136311
GetExp[1322]	=	3138700
GetExp[1323]	=	3141089
GetExp[1324]	=	3143478
GetExp[1325]	=	3145866
GetExp[1326]	=	3148255
GetExp[1327]	=	3150644
GetExp[1328]	=	3153033
GetExp[1329]	=	3155422
GetExp[1330]	=	3157811
GetExp[1331]	=	3160200
GetExp[1332]	=	3162589
GetExp[1333]	=	3164978
GetExp[1334]	=	3167367
GetExp[1335]	=	3169756
GetExp[1336]	=	3172145
GetExp[1337]	=	3174534
GetExp[1338]	=	3176923
GetExp[1339]	=	3179312
GetExp[1340]	=	3181700
GetExp[1341]	=	3184089
GetExp[1342]	=	3186478
GetExp[1343]	=	3188867
GetExp[1344]	=	3191256
GetExp[1345]	=	3193645
GetExp[1346]	=	3196034
GetExp[1347]	=	3198423
GetExp[1348]	=	3200812
GetExp[1349]	=	3203201
GetExp[1350]	=	3205590
GetExp[1351]	=	3207979
GetExp[1352]	=	3210368
GetExp[1353]	=	3212757
GetExp[1354]	=	3215146
GetExp[1355]	=	3217535
GetExp[1356]	=	3219923
GetExp[1357]	=	3222312
GetExp[1358]	=	3224701
GetExp[1359]	=	3227090
GetExp[1360]	=	3229479
GetExp[1361]	=	3231868
GetExp[1362]	=	3234257
GetExp[1363]	=	3236646
GetExp[1364]	=	3239035
GetExp[1365]	=	3241424
GetExp[1366]	=	3243813
GetExp[1367]	=	3246202
GetExp[1368]	=	3248591
GetExp[1369]	=	3250980
GetExp[1370]	=	3253369
GetExp[1371]	=	3255758
GetExp[1372]	=	3258146
GetExp[1373]	=	3260535
GetExp[1374]	=	3262924
GetExp[1375]	=	3265313
GetExp[1376]	=	3267702
GetExp[1377]	=	3270091
GetExp[1378]	=	3272480
GetExp[1379]	=	3274869
GetExp[1380]	=	3277258
GetExp[1381]	=	3279647
GetExp[1382]	=	3282036
GetExp[1383]	=	3284425
GetExp[1384]	=	3286814
GetExp[1385]	=	3289203
GetExp[1386]	=	3291592
GetExp[1387]	=	3293981
GetExp[1388]	=	3296369
GetExp[1389]	=	3298758
GetExp[1390]	=	3301147
GetExp[1391]	=	3303536
GetExp[1392]	=	3305925
GetExp[1393]	=	3308314
GetExp[1394]	=	3310703
GetExp[1395]	=	3313092
GetExp[1396]	=	3315481
GetExp[1397]	=	3317870
GetExp[1398]	=	3320259
GetExp[1399]	=	3322648
GetExp[1400]	=	3325037
GetExp[1401]	=	3327426
GetExp[1402]	=	3329815
GetExp[1403]	=	3332203
GetExp[1404]	=	3334592
GetExp[1405]	=	3336981
GetExp[1406]	=	3339370
GetExp[1407]	=	3341759
GetExp[1408]	=	3344148
GetExp[1409]	=	3346537
GetExp[1410]	=	3348926
GetExp[1411]	=	3351315
GetExp[1412]	=	3353704
GetExp[1413]	=	3356093
GetExp[1414]	=	3358482
GetExp[1415]	=	3360871
GetExp[1416]	=	3363260
GetExp[1417]	=	3365649
GetExp[1418]	=	3368038
GetExp[1419]	=	3370426
GetExp[1420]	=	3372815
GetExp[1421]	=	3375204
GetExp[1422]	=	3377593
GetExp[1423]	=	3379982
GetExp[1424]	=	3382371
GetExp[1425]	=	3384760
GetExp[1426]	=	3387149
GetExp[1427]	=	3389538
GetExp[1428]	=	3391927
GetExp[1429]	=	3394316
GetExp[1430]	=	3396705
GetExp[1431]	=	3399094
GetExp[1432]	=	3401483
GetExp[1433]	=	3403872
GetExp[1434]	=	3406261
GetExp[1435]	=	3408649
GetExp[1436]	=	3411038
GetExp[1437]	=	3413427
GetExp[1438]	=	3415816
GetExp[1439]	=	3418205
GetExp[1440]	=	3420594
GetExp[1441]	=	3422983
GetExp[1442]	=	3425372
GetExp[1443]	=	3427761
GetExp[1444]	=	3430150
GetExp[1445]	=	3432539
GetExp[1446]	=	3434928
GetExp[1447]	=	3437317
GetExp[1448]	=	3439706
GetExp[1449]	=	3442095
GetExp[1450]	=	3444483
GetExp[1451]	=	3446872
GetExp[1452]	=	3449261
GetExp[1453]	=	3451650
GetExp[1454]	=	3454039
GetExp[1455]	=	3456428
GetExp[1456]	=	3458817
GetExp[1457]	=	3461206
GetExp[1458]	=	3463595
GetExp[1459]	=	3465984
GetExp[1460]	=	3468373
GetExp[1461]	=	3470762
GetExp[1462]	=	3473151
GetExp[1463]	=	3475540
GetExp[1464]	=	3477929
GetExp[1465]	=	3480318
GetExp[1466]	=	3482706
GetExp[1467]	=	3485095
GetExp[1468]	=	3487484
GetExp[1469]	=	3489873
GetExp[1470]	=	3492262
GetExp[1471]	=	3494651
GetExp[1472]	=	3497040
GetExp[1473]	=	3499429
GetExp[1474]	=	3501818
GetExp[1475]	=	3504207
GetExp[1476]	=	3506596
GetExp[1477]	=	3508985
GetExp[1478]	=	3511374
GetExp[1479]	=	3513763
GetExp[1480]	=	3516152
GetExp[1481]	=	3518541
GetExp[1482]	=	3520929
GetExp[1483]	=	3523318
GetExp[1484]	=	3525707
GetExp[1485]	=	3528096
GetExp[1486]	=	3530485
GetExp[1487]	=	3532874
GetExp[1488]	=	3535263
GetExp[1489]	=	3537652
GetExp[1490]	=	3540041
GetExp[1491]	=	3542430
GetExp[1492]	=	3544819
GetExp[1493]	=	3547208
GetExp[1494]	=	3549597
GetExp[1495]	=	3551986
GetExp[1496]	=	3554375
GetExp[1497]	=	3556764
GetExp[1498]	=	3559152
GetExp[1499]	=	3561541
GetExp[1500]	=	3563930
GetExp[1501]	=	3566319
GetExp[1502]	=	3568708
GetExp[1503]	=	3571097
GetExp[1504]	=	3573486
GetExp[1505]	=	3575875
GetExp[1506]	=	3578264
GetExp[1507]	=	3580653
GetExp[1508]	=	3583042
GetExp[1509]	=	3585431
GetExp[1510]	=	3587820
GetExp[1511]	=	3590209
GetExp[1512]	=	3592598
GetExp[1513]	=	3594986
GetExp[1514]	=	3597375
GetExp[1515]	=	3599764
GetExp[1516]	=	3602153
GetExp[1517]	=	3604542
GetExp[1518]	=	3606931
GetExp[1519]	=	3609320
GetExp[1520]	=	3611709
GetExp[1521]	=	3614098
GetExp[1522]	=	3616487
GetExp[1523]	=	3618876
GetExp[1524]	=	3621265
GetExp[1525]	=	3623654
GetExp[1526]	=	3626043
GetExp[1527]	=	3628432
GetExp[1528]	=	3630821
GetExp[1529]	=	3633209
GetExp[1530]	=	3635598
GetExp[1531]	=	3637987
GetExp[1532]	=	3640376
GetExp[1533]	=	3642765
GetExp[1534]	=	3645154
GetExp[1535]	=	3647543
GetExp[1536]	=	3649932
GetExp[1537]	=	3652321
GetExp[1538]	=	3654710
GetExp[1539]	=	3657099
GetExp[1540]	=	3659488
GetExp[1541]	=	3661877
GetExp[1542]	=	3664266
GetExp[1543]	=	3666655
GetExp[1544]	=	3669044
GetExp[1545]	=	3671432
GetExp[1546]	=	3673821
GetExp[1547]	=	3676210
GetExp[1548]	=	3678599
GetExp[1549]	=	3680988
GetExp[1550]	=	3683377
GetExp[1551]	=	3685766
GetExp[1552]	=	3688155
GetExp[1553]	=	3690544
GetExp[1554]	=	3692933
GetExp[1555]	=	3695322
GetExp[1556]	=	3697711
GetExp[1557]	=	3700100
GetExp[1558]	=	3702489
GetExp[1559]	=	3704878
GetExp[1560]	=	3707267
GetExp[1561]	=	3709655
GetExp[1562]	=	3712044
GetExp[1563]	=	3714433
GetExp[1564]	=	3716822
GetExp[1565]	=	3719211
GetExp[1566]	=	3721600
GetExp[1567]	=	3723989
GetExp[1568]	=	3726378
GetExp[1569]	=	3728767
GetExp[1570]	=	3731156
GetExp[1571]	=	3733545
GetExp[1572]	=	3735934
GetExp[1573]	=	3738323
GetExp[1574]	=	3740712
GetExp[1575]	=	3743101
GetExp[1576]	=	3745489
GetExp[1577]	=	3747878
GetExp[1578]	=	3750267
GetExp[1579]	=	3752656
GetExp[1580]	=	3755045
GetExp[1581]	=	3757434
GetExp[1582]	=	3759823
GetExp[1583]	=	3762212
GetExp[1584]	=	3764601
GetExp[1585]	=	3766990
GetExp[1586]	=	3769379
GetExp[1587]	=	3771768
GetExp[1588]	=	3774157
GetExp[1589]	=	3776546
GetExp[1590]	=	3778935
GetExp[1591]	=	3781324
GetExp[1592]	=	3783712
GetExp[1593]	=	3786101
GetExp[1594]	=	3788490
GetExp[1595]	=	3790879
GetExp[1596]	=	3793268
GetExp[1597]	=	3795657
GetExp[1598]	=	3798046
GetExp[1599]	=	3800435
GetExp[1600]	=	3802824
GetExp[1601]	=	3805213
GetExp[1602]	=	3807602
GetExp[1603]	=	3809991
GetExp[1604]	=	3812380
GetExp[1605]	=	3814769
GetExp[1606]	=	3817158
GetExp[1607]	=	3819547
GetExp[1608]	=	3821935
GetExp[1609]	=	3824324
GetExp[1610]	=	3826713
GetExp[1611]	=	3829102
GetExp[1612]	=	3831491
GetExp[1613]	=	3833880
GetExp[1614]	=	3836269
GetExp[1615]	=	3838658
GetExp[1616]	=	3841047
GetExp[1617]	=	3843436
GetExp[1618]	=	3845825
GetExp[1619]	=	3848214
GetExp[1620]	=	3850603
GetExp[1621]	=	3852992
GetExp[1622]	=	3855381
GetExp[1623]	=	3857770
GetExp[1624]	=	3860158
GetExp[1625]	=	3862547
GetExp[1626]	=	3864936
GetExp[1627]	=	3867325
GetExp[1628]	=	3869714
GetExp[1629]	=	3872103
GetExp[1630]	=	3874492
GetExp[1631]	=	3876881
GetExp[1632]	=	3879270
GetExp[1633]	=	3881659
GetExp[1634]	=	3884048
GetExp[1635]	=	3886437
GetExp[1636]	=	3888826
GetExp[1637]	=	3891215
GetExp[1638]	=	3893604
GetExp[1639]	=	3895992
GetExp[1640]	=	3898381
GetExp[1641]	=	3900770
GetExp[1642]	=	3903159
GetExp[1643]	=	3905548
GetExp[1644]	=	3907937
GetExp[1645]	=	3910326
GetExp[1646]	=	3912715
GetExp[1647]	=	3915104
GetExp[1648]	=	3917493
GetExp[1649]	=	3919882
GetExp[1650]	=	3922271
GetExp[1651]	=	3924660
GetExp[1652]	=	3927049
GetExp[1653]	=	3929438
GetExp[1654]	=	3931827
GetExp[1655]	=	3934215
GetExp[1656]	=	3936604
GetExp[1657]	=	3938993
GetExp[1658]	=	3941382
GetExp[1659]	=	3943771
GetExp[1660]	=	3946160
GetExp[1661]	=	3948549
GetExp[1662]	=	3950938
GetExp[1663]	=	3953327
GetExp[1664]	=	3955716
GetExp[1665]	=	3958105
GetExp[1666]	=	3960494
GetExp[1667]	=	3962883
GetExp[1668]	=	3965272
GetExp[1669]	=	3967661
GetExp[1670]	=	3970050
GetExp[1671]	=	3972438
GetExp[1672]	=	3974827
GetExp[1673]	=	3977216
GetExp[1674]	=	3979605
GetExp[1675]	=	3981994
GetExp[1676]	=	3984383
GetExp[1677]	=	3986772
GetExp[1678]	=	3989161
GetExp[1679]	=	3991550
GetExp[1680]	=	3993939
GetExp[1681]	=	3996328
GetExp[1682]	=	3998717
GetExp[1683]	=	4001106
GetExp[1684]	=	4003495
GetExp[1685]	=	4005884
GetExp[1686]	=	4008273
GetExp[1687]	=	4010661
GetExp[1688]	=	4013050
GetExp[1689]	=	4015439
GetExp[1690]	=	4017828
GetExp[1691]	=	4020217
GetExp[1692]	=	4022606
GetExp[1693]	=	4024995
GetExp[1694]	=	4027384
GetExp[1695]	=	4029773
GetExp[1696]	=	4032162
GetExp[1697]	=	4034551
GetExp[1698]	=	4036940
GetExp[1699]	=	4039329
GetExp[1700]	=	4041718
GetExp[1701]	=	4044107
GetExp[1702]	=	4046495
GetExp[1703]	=	4048884
GetExp[1704]	=	4051273
GetExp[1705]	=	4053662
GetExp[1706]	=	4056051
GetExp[1707]	=	4058440
GetExp[1708]	=	4060829
GetExp[1709]	=	4063218
GetExp[1710]	=	4065607
GetExp[1711]	=	4067996
GetExp[1712]	=	4070385
GetExp[1713]	=	4072774
GetExp[1714]	=	4075163
GetExp[1715]	=	4077552
GetExp[1716]	=	4079941
GetExp[1717]	=	4082330
GetExp[1718]	=	4084718
GetExp[1719]	=	4087107
GetExp[1720]	=	4089496
GetExp[1721]	=	4091885
GetExp[1722]	=	4094274
GetExp[1723]	=	4096663
GetExp[1724]	=	4099052
GetExp[1725]	=	4101441
GetExp[1726]	=	4103830
GetExp[1727]	=	4106219
GetExp[1728]	=	4108608
GetExp[1729]	=	4110997
GetExp[1730]	=	4113386
GetExp[1731]	=	4115775
GetExp[1732]	=	4118164
GetExp[1733]	=	4120553
GetExp[1734]	=	4122941
GetExp[1735]	=	4125330
GetExp[1736]	=	4127719
GetExp[1737]	=	4130108
GetExp[1738]	=	4132497
GetExp[1739]	=	4134886
GetExp[1740]	=	4137275
GetExp[1741]	=	4139664
GetExp[1742]	=	4142053
GetExp[1743]	=	4144442
GetExp[1744]	=	4146831
GetExp[1745]	=	4149220
GetExp[1746]	=	4151609
GetExp[1747]	=	4153998
GetExp[1748]	=	4156387
GetExp[1749]	=	4158775
GetExp[1750]	=	4161164
GetExp[1751]	=	4163553
GetExp[1752]	=	4165942
GetExp[1753]	=	4168331
GetExp[1754]	=	4170720
GetExp[1755]	=	4173109
GetExp[1756]	=	4175498
GetExp[1757]	=	4177887
GetExp[1758]	=	4180276
GetExp[1759]	=	4182665
GetExp[1760]	=	4185054
GetExp[1761]	=	4187443
GetExp[1762]	=	4189832
GetExp[1763]	=	4192221
GetExp[1764]	=	4194610
GetExp[1765]	=	4196998
GetExp[1766]	=	4199387
GetExp[1767]	=	4201776
GetExp[1768]	=	4204165
GetExp[1769]	=	4206554
GetExp[1770]	=	4208943
GetExp[1771]	=	4211332
GetExp[1772]	=	4213721
GetExp[1773]	=	4216110
GetExp[1774]	=	4218499
GetExp[1775]	=	4220888
GetExp[1776]	=	4223277
GetExp[1777]	=	4225666
GetExp[1778]	=	4228055
GetExp[1779]	=	4230444
GetExp[1780]	=	4232833
GetExp[1781]	=	4235221
GetExp[1782]	=	4237610
GetExp[1783]	=	4239999
GetExp[1784]	=	4242388
GetExp[1785]	=	4244777
GetExp[1786]	=	4247166
GetExp[1787]	=	4249555
GetExp[1788]	=	4251944
GetExp[1789]	=	4254333
GetExp[1790]	=	4256722
GetExp[1791]	=	4259111
GetExp[1792]	=	4261500
GetExp[1793]	=	4263889
GetExp[1794]	=	4266278
GetExp[1795]	=	4268667
GetExp[1796]	=	4271056
GetExp[1797]	=	4273444
GetExp[1798]	=	4275833
GetExp[1799]	=	4278222
GetExp[1800]	=	4280611
GetExp[1801]	=	4283000
GetExp[1802]	=	4285389
GetExp[1803]	=	4287778
GetExp[1804]	=	4290167
GetExp[1805]	=	4292556
GetExp[1806]	=	4294945
GetExp[1807]	=	4297334
GetExp[1808]	=	4299723
GetExp[1809]	=	4302112
GetExp[1810]	=	4304501
GetExp[1811]	=	4306890
GetExp[1812]	=	4309278
GetExp[1813]	=	4311667
GetExp[1814]	=	4314056
GetExp[1815]	=	4316445
GetExp[1816]	=	4318834
GetExp[1817]	=	4321223
GetExp[1818]	=	4323612
GetExp[1819]	=	4326001
GetExp[1820]	=	4328390
GetExp[1821]	=	4330779
GetExp[1822]	=	4333168
GetExp[1823]	=	4335557
GetExp[1824]	=	4337946
GetExp[1825]	=	4340335
GetExp[1826]	=	4342724
GetExp[1827]	=	4345113
GetExp[1828]	=	4347501
GetExp[1829]	=	4349890
GetExp[1830]	=	4352279
GetExp[1831]	=	4354668
GetExp[1832]	=	4357057
GetExp[1833]	=	4359446
GetExp[1834]	=	4361835
GetExp[1835]	=	4364224
GetExp[1836]	=	4366613
GetExp[1837]	=	4369002
GetExp[1838]	=	4371391
GetExp[1839]	=	4373780
GetExp[1840]	=	4376169
GetExp[1841]	=	4378558
GetExp[1842]	=	4380947
GetExp[1843]	=	4383336
GetExp[1844]	=	4385724
GetExp[1845]	=	4388113
GetExp[1846]	=	4390502
GetExp[1847]	=	4392891
GetExp[1848]	=	4395280
GetExp[1849]	=	4397669
GetExp[1850]	=	4400058
GetExp[1851]	=	4402447
GetExp[1852]	=	4404836
GetExp[1853]	=	4407225
GetExp[1854]	=	4409614
GetExp[1855]	=	4412003
GetExp[1856]	=	4414392
GetExp[1857]	=	4416781
GetExp[1858]	=	4419170
GetExp[1859]	=	4421559
GetExp[1860]	=	4423947
GetExp[1861]	=	4426336
GetExp[1862]	=	4428725
GetExp[1863]	=	4431114
GetExp[1864]	=	4433503
GetExp[1865]	=	4435892
GetExp[1866]	=	4438281
GetExp[1867]	=	4440670
GetExp[1868]	=	4443059
GetExp[1869]	=	4445448
GetExp[1870]	=	4447837
GetExp[1871]	=	4450226
GetExp[1872]	=	4452615
GetExp[1873]	=	4455004
GetExp[1874]	=	4457393
GetExp[1875]	=	4459781
GetExp[1876]	=	4462170
GetExp[1877]	=	4464559
GetExp[1878]	=	4466948
GetExp[1879]	=	4469337
GetExp[1880]	=	4471726
GetExp[1881]	=	4474115
GetExp[1882]	=	4476504
GetExp[1883]	=	4478893
GetExp[1884]	=	4481282
GetExp[1885]	=	4483671
GetExp[1886]	=	4486060
GetExp[1887]	=	4488449
GetExp[1888]	=	4490838
GetExp[1889]	=	4493227
GetExp[1890]	=	4495616
GetExp[1891]	=	4498004
GetExp[1892]	=	4500393
GetExp[1893]	=	4502782
GetExp[1894]	=	4505171
GetExp[1895]	=	4507560
GetExp[1896]	=	4509949
GetExp[1897]	=	4512338
GetExp[1898]	=	4514727
GetExp[1899]	=	4517116
GetExp[1900]	=	4519505
GetExp[1901]	=	4521894
GetExp[1902]	=	4524283
GetExp[1903]	=	4526672
GetExp[1904]	=	4529061
GetExp[1905]	=	4531450
GetExp[1906]	=	4533839
GetExp[1907]	=	4536227
GetExp[1908]	=	4538616
GetExp[1909]	=	4541005
GetExp[1910]	=	4543394
GetExp[1911]	=	4545783
GetExp[1912]	=	4548172
GetExp[1913]	=	4550561
GetExp[1914]	=	4552950
GetExp[1915]	=	4555339
GetExp[1916]	=	4557728
GetExp[1917]	=	4560117
GetExp[1918]	=	4562506
GetExp[1919]	=	4564895
GetExp[1920]	=	4567284
GetExp[1921]	=	4569673
GetExp[1922]	=	4572062
GetExp[1923]	=	4574450
GetExp[1924]	=	4576839
GetExp[1925]	=	4579228
GetExp[1926]	=	4581617
GetExp[1927]	=	4584006
GetExp[1928]	=	4586395
GetExp[1929]	=	4588784
GetExp[1930]	=	4591173
GetExp[1931]	=	4593562
GetExp[1932]	=	4595951
GetExp[1933]	=	4598340
GetExp[1934]	=	4600729
GetExp[1935]	=	4603118
GetExp[1936]	=	4605507
GetExp[1937]	=	4607896
GetExp[1938]	=	4610284
GetExp[1939]	=	4612673
GetExp[1940]	=	4615062
GetExp[1941]	=	4617451
GetExp[1942]	=	4619840
GetExp[1943]	=	4622229
GetExp[1944]	=	4624618
GetExp[1945]	=	4627007
GetExp[1946]	=	4629396
GetExp[1947]	=	4631785
GetExp[1948]	=	4634174
GetExp[1949]	=	4636563
GetExp[1950]	=	4638952
GetExp[1951]	=	4641341
GetExp[1952]	=	4643730
GetExp[1953]	=	4646119
GetExp[1954]	=	4648507
GetExp[1955]	=	4650896
GetExp[1956]	=	4653285
GetExp[1957]	=	4655674
GetExp[1958]	=	4658063
GetExp[1959]	=	4660452
GetExp[1960]	=	4662841
GetExp[1961]	=	4665230
GetExp[1962]	=	4667619
GetExp[1963]	=	4670008
GetExp[1964]	=	4672397
GetExp[1965]	=	4674786
GetExp[1966]	=	4677175
GetExp[1967]	=	4679564
GetExp[1968]	=	4681953
GetExp[1969]	=	4684342
GetExp[1970]	=	4686730
GetExp[1971]	=	4689119
GetExp[1972]	=	4691508
GetExp[1973]	=	4693897
GetExp[1974]	=	4696286
GetExp[1975]	=	4698675
GetExp[1976]	=	4701064
GetExp[1977]	=	4703453
GetExp[1978]	=	4705842
GetExp[1979]	=	4708231
GetExp[1980]	=	4710620
GetExp[1981]	=	4713009
GetExp[1982]	=	4715398
GetExp[1983]	=	4717787
GetExp[1984]	=	4720176
GetExp[1985]	=	4722565
GetExp[1986]	=	4724953
GetExp[1987]	=	4727342
GetExp[1988]	=	4729731
GetExp[1989]	=	4732120
GetExp[1990]	=	4734509
GetExp[1991]	=	4736898
GetExp[1992]	=	4739287
GetExp[1993]	=	4741676
GetExp[1994]	=	4744065
GetExp[1995]	=	4746454
GetExp[1996]	=	4748843
GetExp[1997]	=	4751232
GetExp[1998]	=	4753621
GetExp[1999]	=	4756010
GetExp[2000]	=	4758399
GetExp[2001]	=	4760787
GetExp[2002]	=	4763176
GetExp[2003]	=	4765565
GetExp[2004]	=	4767954
GetExp[2005]	=	4770343
GetExp[2006]	=	4772732
GetExp[2007]	=	4775121
GetExp[2008]	=	4777510
GetExp[2009]	=	4779899
GetExp[2010]	=	4782288
GetExp[2011]	=	4784677
GetExp[2012]	=	4787066
GetExp[2013]	=	4789455
GetExp[2014]	=	4791844
GetExp[2015]	=	4794233
GetExp[2016]	=	4796622
GetExp[2017]	=	4799010
GetExp[2018]	=	4801399
GetExp[2019]	=	4803788
GetExp[2020]	=	4806177
GetExp[2021]	=	4808566
GetExp[2022]	=	4810955
GetExp[2023]	=	4813344
GetExp[2024]	=	4815733
GetExp[2025]	=	4818122
GetExp[2026]	=	4820511
GetExp[2027]	=	4822900
GetExp[2028]	=	4825289
GetExp[2029]	=	4827678
GetExp[2030]	=	4830067
GetExp[2031]	=	4832456
GetExp[2032]	=	4834845
GetExp[2033]	=	4837233
GetExp[2034]	=	4839622
GetExp[2035]	=	4842011
GetExp[2036]	=	4844400
GetExp[2037]	=	4846789
GetExp[2038]	=	4849178
GetExp[2039]	=	4851567
GetExp[2040]	=	4853956
GetExp[2041]	=	4856345
GetExp[2042]	=	4858734
GetExp[2043]	=	4861123
GetExp[2044]	=	4863512
GetExp[2045]	=	4865901
GetExp[2046]	=	4868290
GetExp[2047]	=	4870679
GetExp[2048]	=	4873067
GetExp[2049]	=	4875456
GetExp[2050]	=	4877845
GetExp[2051]	=	4880234
GetExp[2052]	=	4882623
GetExp[2053]	=	4885012
GetExp[2054]	=	4887401
GetExp[2055]	=	4889790
GetExp[2056]	=	4892179
GetExp[2057]	=	4894568
GetExp[2058]	=	4896957
GetExp[2059]	=	4899346
GetExp[2060]	=	4901735
GetExp[2061]	=	4904124
GetExp[2062]	=	4906513
GetExp[2063]	=	4908902
GetExp[2064]	=	4911290
GetExp[2065]	=	4913679
GetExp[2066]	=	4916068
GetExp[2067]	=	4918457
GetExp[2068]	=	4920846
GetExp[2069]	=	4923235
GetExp[2070]	=	4925624
GetExp[2071]	=	4928013
GetExp[2072]	=	4930402
GetExp[2073]	=	4932791
GetExp[2074]	=	4935180
GetExp[2075]	=	4937569
GetExp[2076]	=	4939958
GetExp[2077]	=	4942347
GetExp[2078]	=	4944736
GetExp[2079]	=	4947125
GetExp[2080]	=	4949513
GetExp[2081]	=	4951902
GetExp[2082]	=	4954291
GetExp[2083]	=	4956680
GetExp[2084]	=	4959069
GetExp[2085]	=	4961458
GetExp[2086]	=	4963847
GetExp[2087]	=	4966236
GetExp[2088]	=	4968625
GetExp[2089]	=	4971014
GetExp[2090]	=	4973403
GetExp[2091]	=	4975792
GetExp[2092]	=	4978181
GetExp[2093]	=	4980570
GetExp[2094]	=	4982959
GetExp[2095]	=	4985348
GetExp[2096]	=	4987736
GetExp[2097]	=	4990125
GetExp[2098]	=	4992514
GetExp[2099]	=	4994903
GetExp[2100]	=	4997292
GetExp[2101]	=	4999681
GetExp[2102]	=	5002070
GetExp[2103]	=	5004459
GetExp[2104]	=	5006848
GetExp[2105]	=	5009237
GetExp[2106]	=	5011626
GetExp[2107]	=	5014015
GetExp[2108]	=	5016404
GetExp[2109]	=	5018793
GetExp[2110]	=	5021182
GetExp[2111]	=	5023570
GetExp[2112]	=	5025959
GetExp[2113]	=	5028348
GetExp[2114]	=	5030737
GetExp[2115]	=	5033126
GetExp[2116]	=	5035515
GetExp[2117]	=	5037904
GetExp[2118]	=	5040293
GetExp[2119]	=	5042682
GetExp[2120]	=	5045071
GetExp[2121]	=	5047460
GetExp[2122]	=	5049849
GetExp[2123]	=	5052238
GetExp[2124]	=	5054627
GetExp[2125]	=	5057016
GetExp[2126]	=	5059405
GetExp[2127]	=	5061793
GetExp[2128]	=	5064182
GetExp[2129]	=	5066571
GetExp[2130]	=	5068960
GetExp[2131]	=	5071349
GetExp[2132]	=	5073738
GetExp[2133]	=	5076127
GetExp[2134]	=	5078516
GetExp[2135]	=	5080905
GetExp[2136]	=	5083294
GetExp[2137]	=	5085683
GetExp[2138]	=	5088072
GetExp[2139]	=	5090461
GetExp[2140]	=	5092850
GetExp[2141]	=	5095239
GetExp[2142]	=	5097628
GetExp[2143]	=	5100016
GetExp[2144]	=	5102405
GetExp[2145]	=	5104794
GetExp[2146]	=	5107183
GetExp[2147]	=	5109572
GetExp[2148]	=	5111961
GetExp[2149]	=	5114350
GetExp[2150]	=	5116739
GetExp[2151]	=	5119128
GetExp[2152]	=	5121517
GetExp[2153]	=	5123906
GetExp[2154]	=	5126295
GetExp[2155]	=	5128684
GetExp[2156]	=	5131073
GetExp[2157]	=	5133462
GetExp[2158]	=	5135851
GetExp[2159]	=	5138239
GetExp[2160]	=	5140628
GetExp[2161]	=	5143017
GetExp[2162]	=	5145406
GetExp[2163]	=	5147795
GetExp[2164]	=	5150184
GetExp[2165]	=	5152573
GetExp[2166]	=	5154962
GetExp[2167]	=	5157351
GetExp[2168]	=	5159740
GetExp[2169]	=	5162129
GetExp[2170]	=	5164518
GetExp[2171]	=	5166907
GetExp[2172]	=	5169296
GetExp[2173]	=	5171685
GetExp[2174]	=	5174073
GetExp[2175]	=	5176462
GetExp[2176]	=	5178851
GetExp[2177]	=	5181240
GetExp[2178]	=	5183629
GetExp[2179]	=	5186018
GetExp[2180]	=	5188407
GetExp[2181]	=	5190796
GetExp[2182]	=	5193185
GetExp[2183]	=	5195574
GetExp[2184]	=	5197963
GetExp[2185]	=	5200352
GetExp[2186]	=	5202741
GetExp[2187]	=	5205130
GetExp[2188]	=	5207519
GetExp[2189]	=	5209908
GetExp[2190]	=	5212296
GetExp[2191]	=	5214685
GetExp[2192]	=	5217074
GetExp[2193]	=	5219463
GetExp[2194]	=	5221852
GetExp[2195]	=	5224241
GetExp[2196]	=	5226630
GetExp[2197]	=	5229019
GetExp[2198]	=	5231408
GetExp[2199]	=	5233797
GetExp[2200]	=	5236186
GetExp[2201]	=	5238575
GetExp[2202]	=	5240964
GetExp[2203]	=	5243353
GetExp[2204]	=	5245742
GetExp[2205]	=	5248131
GetExp[2206]	=	5250519
GetExp[2207]	=	5252908
GetExp[2208]	=	5255297
GetExp[2209]	=	5257686
GetExp[2210]	=	5260075
GetExp[2211]	=	5262464
GetExp[2212]	=	5264853
GetExp[2213]	=	5267242
GetExp[2214]	=	5269631
GetExp[2215]	=	5272020
GetExp[2216]	=	5274409
GetExp[2217]	=	5276798
GetExp[2218]	=	5279187
GetExp[2219]	=	5281576
GetExp[2220]	=	5283965
GetExp[2221]	=	5286354
GetExp[2222]	=	5288742
GetExp[2223]	=	5291131
GetExp[2224]	=	5293520
GetExp[2225]	=	5295909
GetExp[2226]	=	5298298
GetExp[2227]	=	5300687
GetExp[2228]	=	5303076
GetExp[2229]	=	5305465
GetExp[2230]	=	5307854
GetExp[2231]	=	5310243
GetExp[2232]	=	5312632
GetExp[2233]	=	5315021
GetExp[2234]	=	5317410
GetExp[2235]	=	5319799
GetExp[2236]	=	5322188
GetExp[2237]	=	5324576
GetExp[2238]	=	5326965
GetExp[2239]	=	5329354
GetExp[2240]	=	5331743
GetExp[2241]	=	5334132
GetExp[2242]	=	5336521
GetExp[2243]	=	5338910
GetExp[2244]	=	5341299
GetExp[2245]	=	5343688
GetExp[2246]	=	5346077
GetExp[2247]	=	5348466
GetExp[2248]	=	5350855
GetExp[2249]	=	5353244
GetExp[2250]	=	5355633
GetExp[2251]	=	5358022
GetExp[2252]	=	5360411
GetExp[2253]	=	5362799
GetExp[2254]	=	5365188
GetExp[2255]	=	5367577
GetExp[2256]	=	5369966
GetExp[2257]	=	5372355
GetExp[2258]	=	5374744
GetExp[2259]	=	5377133
GetExp[2260]	=	5379522
GetExp[2261]	=	5381911
GetExp[2262]	=	5384300
GetExp[2263]	=	5386689
GetExp[2264]	=	5389078
GetExp[2265]	=	5391467
GetExp[2266]	=	5393856
GetExp[2267]	=	5396245
GetExp[2268]	=	5398634
GetExp[2269]	=	5401022
GetExp[2270]	=	5403411
GetExp[2271]	=	5405800
GetExp[2272]	=	5408189
GetExp[2273]	=	5410578
GetExp[2274]	=	5412967
GetExp[2275]	=	5415356
GetExp[2276]	=	5417745
GetExp[2277]	=	5420134
GetExp[2278]	=	5422523
GetExp[2279]	=	5424912
GetExp[2280]	=	5427301
GetExp[2281]	=	5429690
GetExp[2282]	=	5432079
GetExp[2283]	=	5434468
GetExp[2284]	=	5436857
GetExp[2285]	=	5439245
GetExp[2286]	=	5441634
GetExp[2287]	=	5444023
GetExp[2288]	=	5446412
GetExp[2289]	=	5448801
GetExp[2290]	=	5451190
GetExp[2291]	=	5453579
GetExp[2292]	=	5455968
GetExp[2293]	=	5458357
GetExp[2294]	=	5460746
GetExp[2295]	=	5463135
GetExp[2296]	=	5465524
GetExp[2297]	=	5467913
GetExp[2298]	=	5470302
GetExp[2299]	=	5472691
GetExp[2300]	=	5475079
GetExp[2301]	=	5477468
GetExp[2302]	=	5479857
GetExp[2303]	=	5482246
GetExp[2304]	=	5484635
GetExp[2305]	=	5487024
GetExp[2306]	=	5489413
GetExp[2307]	=	5491802
GetExp[2308]	=	5494191
GetExp[2309]	=	5496580
GetExp[2310]	=	5498969
GetExp[2311]	=	5501358
GetExp[2312]	=	5503747
GetExp[2313]	=	5506136
GetExp[2314]	=	5508525
GetExp[2315]	=	5510914
GetExp[2316]	=	5513302
GetExp[2317]	=	5515691
GetExp[2318]	=	5518080
GetExp[2319]	=	5520469
GetExp[2320]	=	5522858
GetExp[2321]	=	5525247
GetExp[2322]	=	5527636
GetExp[2323]	=	5530025
GetExp[2324]	=	5532414
GetExp[2325]	=	5534803
GetExp[2326]	=	5537192
GetExp[2327]	=	5539581
GetExp[2328]	=	5541970
GetExp[2329]	=	5544359
GetExp[2330]	=	5546748
GetExp[2331]	=	5549137
GetExp[2332]	=	5551525
GetExp[2333]	=	5553914
GetExp[2334]	=	5556303
GetExp[2335]	=	5558692
GetExp[2336]	=	5561081
GetExp[2337]	=	5563470
GetExp[2338]	=	5565859
GetExp[2339]	=	5568248
GetExp[2340]	=	5570637
GetExp[2341]	=	5573026
GetExp[2342]	=	5575415
GetExp[2343]	=	5577804
GetExp[2344]	=	5580193
GetExp[2345]	=	5582582
GetExp[2346]	=	5584971
GetExp[2347]	=	5587359
GetExp[2348]	=	5589748
GetExp[2349]	=	5592137
GetExp[2350]	=	5594526
GetExp[2351]	=	5596915
GetExp[2352]	=	5599304
GetExp[2353]	=	5601693
GetExp[2354]	=	5604082
GetExp[2355]	=	5606471
GetExp[2356]	=	5608860
GetExp[2357]	=	5611249
GetExp[2358]	=	5613638
GetExp[2359]	=	5616027
GetExp[2360]	=	5618416
GetExp[2361]	=	5620805
GetExp[2362]	=	5623194
GetExp[2363]	=	5625582
GetExp[2364]	=	5627971
GetExp[2365]	=	5630360
GetExp[2366]	=	5632749
GetExp[2367]	=	5635138
GetExp[2368]	=	5637527
GetExp[2369]	=	5639916
GetExp[2370]	=	5642305
GetExp[2371]	=	5644694
GetExp[2372]	=	5647083
GetExp[2373]	=	5649472
GetExp[2374]	=	5651861
GetExp[2375]	=	5654250
GetExp[2376]	=	5656639
GetExp[2377]	=	5659028
GetExp[2378]	=	5661417
GetExp[2379]	=	5663805
GetExp[2380]	=	5666194
GetExp[2381]	=	5668583
GetExp[2382]	=	5670972
GetExp[2383]	=	5673361
GetExp[2384]	=	5675750
GetExp[2385]	=	5678139
GetExp[2386]	=	5680528
GetExp[2387]	=	5682917
GetExp[2388]	=	5685306
GetExp[2389]	=	5687695
GetExp[2390]	=	5690084
GetExp[2391]	=	5692473
GetExp[2392]	=	5694862
GetExp[2393]	=	5697251
GetExp[2394]	=	5699640
GetExp[2395]	=	5702028
GetExp[2396]	=	5704417
GetExp[2397]	=	5706806
GetExp[2398]	=	5709195
GetExp[2399]	=	5711584
GetExp[2400]	=	5713973
GetExp[2401]	=	5716362
GetExp[2402]	=	5718751
GetExp[2403]	=	5721140
GetExp[2404]	=	5723529
GetExp[2405]	=	5725918
GetExp[2406]	=	5728307
GetExp[2407]	=	5730696
GetExp[2408]	=	5733085
GetExp[2409]	=	5735474
GetExp[2410]	=	5737862
GetExp[2411]	=	5740251
GetExp[2412]	=	5742640
GetExp[2413]	=	5745029
GetExp[2414]	=	5747418
GetExp[2415]	=	5749807
GetExp[2416]	=	5752196
GetExp[2417]	=	5754585
GetExp[2418]	=	5756974
GetExp[2419]	=	5759363
GetExp[2420]	=	5761752
GetExp[2421]	=	5764141
GetExp[2422]	=	5766530
GetExp[2423]	=	5768919
GetExp[2424]	=	5771308
GetExp[2425]	=	5773697
GetExp[2426]	=	5776085
GetExp[2427]	=	5778474
GetExp[2428]	=	5780863
GetExp[2429]	=	5783252
GetExp[2430]	=	5785641
GetExp[2431]	=	5788030
GetExp[2432]	=	5790419
GetExp[2433]	=	5792808
GetExp[2434]	=	5795197
GetExp[2435]	=	5797586
GetExp[2436]	=	5799975
GetExp[2437]	=	5802364
GetExp[2438]	=	5804753
GetExp[2439]	=	5807142
GetExp[2440]	=	5809531
GetExp[2441]	=	5811920
GetExp[2442]	=	5814308
GetExp[2443]	=	5816697
GetExp[2444]	=	5819086
GetExp[2445]	=	5821475
GetExp[2446]	=	5823864
GetExp[2447]	=	5826253
GetExp[2448]	=	5828642
GetExp[2449]	=	5831031
GetExp[2450]	=	5833420
GetExp[2451]	=	5835809
GetExp[2452]	=	5838198
GetExp[2453]	=	5840587
GetExp[2454]	=	5842976
GetExp[2455]	=	5845365
GetExp[2456]	=	5847754
GetExp[2457]	=	5850143
GetExp[2458]	=	5852531
GetExp[2459]	=	5854920
GetExp[2460]	=	5857309
GetExp[2461]	=	5859698
GetExp[2462]	=	5862087
GetExp[2463]	=	5864476
GetExp[2464]	=	5866865
GetExp[2465]	=	5869254
GetExp[2466]	=	5871643
GetExp[2467]	=	5874032
GetExp[2468]	=	5876421
GetExp[2469]	=	5878810
GetExp[2470]	=	5881199
GetExp[2471]	=	5883588
GetExp[2472]	=	5885977
GetExp[2473]	=	5888365
GetExp[2474]	=	5890754
GetExp[2475]	=	5893143
GetExp[2476]	=	5895532
GetExp[2477]	=	5897921
GetExp[2478]	=	5900310
GetExp[2479]	=	5902699
GetExp[2480]	=	5905088
GetExp[2481]	=	5907477
GetExp[2482]	=	5909866
GetExp[2483]	=	5912255
GetExp[2484]	=	5914644
GetExp[2485]	=	5917033
GetExp[2486]	=	5919422
GetExp[2487]	=	5921811
GetExp[2488]	=	5924200
GetExp[2489]	=	5926588
GetExp[2490]	=	5928977
GetExp[2491]	=	5931366
GetExp[2492]	=	5933755
GetExp[2493]	=	5936144
GetExp[2494]	=	5938533
GetExp[2495]	=	5940922
GetExp[2496]	=	5943311
GetExp[2497]	=	5945700
GetExp[2498]	=	5948089
GetExp[2499]	=	5950478
GetExp[2500]	=	5952867
GetExp[2501]	=	5955256
GetExp[2502]	=	5957645
GetExp[2503]	=	5960034
GetExp[2504]	=	5962423
GetExp[2505]	=	5964811
GetExp[2506]	=	5967200
GetExp[2507]	=	5969589
GetExp[2508]	=	5971978
GetExp[2509]	=	5974367
GetExp[2510]	=	5976756
GetExp[2511]	=	5979145
GetExp[2512]	=	5981534
GetExp[2513]	=	5983923
GetExp[2514]	=	5986312
GetExp[2515]	=	5988701
GetExp[2516]	=	5991090
GetExp[2517]	=	5993479
GetExp[2518]	=	5995868
GetExp[2519]	=	5998257
GetExp[2520]	=	6000646
GetExp[2521]	=	6003034
GetExp[2522]	=	6005423
GetExp[2523]	=	6007812
GetExp[2524]	=	6010201
GetExp[2525]	=	6012590
GetExp[2526]	=	6014979
GetExp[2527]	=	6017368
GetExp[2528]	=	6019757
GetExp[2529]	=	6022146
GetExp[2530]	=	6024535
GetExp[2531]	=	6026924
GetExp[2532]	=	6029313
GetExp[2533]	=	6031702
GetExp[2534]	=	6034091
GetExp[2535]	=	6036480
GetExp[2536]	=	6038868
GetExp[2537]	=	6041257
GetExp[2538]	=	6043646
GetExp[2539]	=	6046035
GetExp[2540]	=	6048424
GetExp[2541]	=	6050813
GetExp[2542]	=	6053202
GetExp[2543]	=	6055591
GetExp[2544]	=	6057980
GetExp[2545]	=	6060369
GetExp[2546]	=	6062758
GetExp[2547]	=	6065147
GetExp[2548]	=	6067536
GetExp[2549]	=	6069925
GetExp[2550]	=	6072314
GetExp[2551]	=	6074703
GetExp[2552]	=	6077091
GetExp[2553]	=	6079480
GetExp[2554]	=	6081869
GetExp[2555]	=	6084258
GetExp[2556]	=	6086647
GetExp[2557]	=	6089036
GetExp[2558]	=	6091425
GetExp[2559]	=	6093814
GetExp[2560]	=	6096203
GetExp[2561]	=	6098592
GetExp[2562]	=	6100981
GetExp[2563]	=	6103370
GetExp[2564]	=	6105759
GetExp[2565]	=	6108148
GetExp[2566]	=	6110537
GetExp[2567]	=	6112926
GetExp[2568]	=	6115314
GetExp[2569]	=	6117703
GetExp[2570]	=	6120092
GetExp[2571]	=	6122481
GetExp[2572]	=	6124870
GetExp[2573]	=	6127259
GetExp[2574]	=	6129648
GetExp[2575]	=	6132037
GetExp[2576]	=	6134426
GetExp[2577]	=	6136815
GetExp[2578]	=	6139204
GetExp[2579]	=	6141593
GetExp[2580]	=	6143982
GetExp[2581]	=	6146371
GetExp[2582]	=	6148760
GetExp[2583]	=	6151149
GetExp[2584]	=	6153537
GetExp[2585]	=	6155926
GetExp[2586]	=	6158315
GetExp[2587]	=	6160704
GetExp[2588]	=	6163093
GetExp[2589]	=	6165482
GetExp[2590]	=	6167871
GetExp[2591]	=	6170260
GetExp[2592]	=	6172649
GetExp[2593]	=	6175038
GetExp[2594]	=	6177427
GetExp[2595]	=	6179816
GetExp[2596]	=	6182205
GetExp[2597]	=	6184594
GetExp[2598]	=	6186983
GetExp[2599]	=	6189371
GetExp[2600]	=	6191760
GetExp[2601]	=	6194149
GetExp[2602]	=	6196538
GetExp[2603]	=	6198927
GetExp[2604]	=	6201316
GetExp[2605]	=	6203705
GetExp[2606]	=	6206094
GetExp[2607]	=	6208483
GetExp[2608]	=	6210872
GetExp[2609]	=	6213261
GetExp[2610]	=	6215650
GetExp[2611]	=	6218039
GetExp[2612]	=	6220428
GetExp[2613]	=	6222817
GetExp[2614]	=	6225206
GetExp[2615]	=	6227594
GetExp[2616]	=	6229983
GetExp[2617]	=	6232372
GetExp[2618]	=	6234761
GetExp[2619]	=	6237150
GetExp[2620]	=	6239539
GetExp[2621]	=	6241928
GetExp[2622]	=	6244317
GetExp[2623]	=	6246706
GetExp[2624]	=	6249095
GetExp[2625]	=	6251484
GetExp[2626]	=	6253873
GetExp[2627]	=	6256262
GetExp[2628]	=	6258651
GetExp[2629]	=	6261040
GetExp[2630]	=	6263429
GetExp[2631]	=	6265817
GetExp[2632]	=	6268206
GetExp[2633]	=	6270595
GetExp[2634]	=	6272984
GetExp[2635]	=	6275373
GetExp[2636]	=	6277762
GetExp[2637]	=	6280151
GetExp[2638]	=	6282540
GetExp[2639]	=	6284929
GetExp[2640]	=	6287318
GetExp[2641]	=	6289707
GetExp[2642]	=	6292096
GetExp[2643]	=	6294485
GetExp[2644]	=	6296874
GetExp[2645]	=	6299263
GetExp[2646]	=	6301651
GetExp[2647]	=	6304040
GetExp[2648]	=	6306429
GetExp[2649]	=	6308818
GetExp[2650]	=	6311207
GetExp[2651]	=	6313596
GetExp[2652]	=	6315985
GetExp[2653]	=	6318374
GetExp[2654]	=	6320763
GetExp[2655]	=	6323152
GetExp[2656]	=	6325541
GetExp[2657]	=	6327930
GetExp[2658]	=	6330319
GetExp[2659]	=	6332708
GetExp[2660]	=	6335097
GetExp[2661]	=	6337486
GetExp[2662]	=	6339874
GetExp[2663]	=	6342263
GetExp[2664]	=	6344652
GetExp[2665]	=	6347041
GetExp[2666]	=	6349430
GetExp[2667]	=	6351819
GetExp[2668]	=	6354208
GetExp[2669]	=	6356597
GetExp[2670]	=	6358986
GetExp[2671]	=	6361375
GetExp[2672]	=	6363764
GetExp[2673]	=	6366153
GetExp[2674]	=	6368542
GetExp[2675]	=	6370931
GetExp[2676]	=	6373320
GetExp[2677]	=	6375709
GetExp[2678]	=	6378097
GetExp[2679]	=	6380486
GetExp[2680]	=	6382875
GetExp[2681]	=	6385264
GetExp[2682]	=	6387653
GetExp[2683]	=	6390042
GetExp[2684]	=	6392431
GetExp[2685]	=	6394820
GetExp[2686]	=	6397209
GetExp[2687]	=	6399598
GetExp[2688]	=	6401987
GetExp[2689]	=	6404376
GetExp[2690]	=	6406765
GetExp[2691]	=	6409154
GetExp[2692]	=	6411543
GetExp[2693]	=	6413932
GetExp[2694]	=	6416320
GetExp[2695]	=	6418709
GetExp[2696]	=	6421098
GetExp[2697]	=	6423487
GetExp[2698]	=	6425876
GetExp[2699]	=	6428265
GetExp[2700]	=	6430654
GetExp[2701]	=	6433043
GetExp[2702]	=	6435432
GetExp[2703]	=	6437821
GetExp[2704]	=	6440210
GetExp[2705]	=	6442599
GetExp[2706]	=	6444988
GetExp[2707]	=	6447377
GetExp[2708]	=	6449766
GetExp[2709]	=	6452154
GetExp[2710]	=	6454543
GetExp[2711]	=	6456932
GetExp[2712]	=	6459321
GetExp[2713]	=	6461710
GetExp[2714]	=	6464099
GetExp[2715]	=	6466488
GetExp[2716]	=	6468877
GetExp[2717]	=	6471266
GetExp[2718]	=	6473655
GetExp[2719]	=	6476044
GetExp[2720]	=	6478433
GetExp[2721]	=	6480822
GetExp[2722]	=	6483211
GetExp[2723]	=	6485600
GetExp[2724]	=	6487989
GetExp[2725]	=	6490377
GetExp[2726]	=	6492766
GetExp[2727]	=	6495155
GetExp[2728]	=	6497544
GetExp[2729]	=	6499933
GetExp[2730]	=	6502322
GetExp[2731]	=	6504711
GetExp[2732]	=	6507100
GetExp[2733]	=	6509489
GetExp[2734]	=	6511878
GetExp[2735]	=	6514267
GetExp[2736]	=	6516656
GetExp[2737]	=	6519045
GetExp[2738]	=	6521434
GetExp[2739]	=	6523823
GetExp[2740]	=	6526212
GetExp[2741]	=	6528600
GetExp[2742]	=	6530989
GetExp[2743]	=	6533378
GetExp[2744]	=	6535767
GetExp[2745]	=	6538156
GetExp[2746]	=	6540545
GetExp[2747]	=	6542934
GetExp[2748]	=	6545323
GetExp[2749]	=	6547712
GetExp[2750]	=	6550101
GetExp[2751]	=	6552490
GetExp[2752]	=	6554879
GetExp[2753]	=	6557268
GetExp[2754]	=	6559657
GetExp[2755]	=	6562046
GetExp[2756]	=	6564435
GetExp[2757]	=	6566823
GetExp[2758]	=	6569212
GetExp[2759]	=	6571601
GetExp[2760]	=	6573990
GetExp[2761]	=	6576379
GetExp[2762]	=	6578768
GetExp[2763]	=	6581157
GetExp[2764]	=	6583546
GetExp[2765]	=	6585935
GetExp[2766]	=	6588324
GetExp[2767]	=	6590713
GetExp[2768]	=	6593102
GetExp[2769]	=	6595491
GetExp[2770]	=	6597880
GetExp[2771]	=	6600269
GetExp[2772]	=	6602657
GetExp[2773]	=	6605046
GetExp[2774]	=	6607435
GetExp[2775]	=	6609824
GetExp[2776]	=	6612213
GetExp[2777]	=	6614602
GetExp[2778]	=	6616991
GetExp[2779]	=	6619380
GetExp[2780]	=	6621769
GetExp[2781]	=	6624158
GetExp[2782]	=	6626547
GetExp[2783]	=	6628936
GetExp[2784]	=	6631325
GetExp[2785]	=	6633714
GetExp[2786]	=	6636103
GetExp[2787]	=	6638492
GetExp[2788]	=	6640880
GetExp[2789]	=	6643269
GetExp[2790]	=	6645658
GetExp[2791]	=	6648047
GetExp[2792]	=	6650436
GetExp[2793]	=	6652825
GetExp[2794]	=	6655214
GetExp[2795]	=	6657603
GetExp[2796]	=	6659992
GetExp[2797]	=	6662381
GetExp[2798]	=	6664770
GetExp[2799]	=	6667159
GetExp[2800]	=	6669548
GetExp[2801]	=	6671937
GetExp[2802]	=	6674326
GetExp[2803]	=	6676715
GetExp[2804]	=	6679103
GetExp[2805]	=	6681492
GetExp[2806]	=	6683881
GetExp[2807]	=	6686270
GetExp[2808]	=	6688659
GetExp[2809]	=	6691048
GetExp[2810]	=	6693437
GetExp[2811]	=	6695826
GetExp[2812]	=	6698215
GetExp[2813]	=	6700604
GetExp[2814]	=	6702993
GetExp[2815]	=	6705382
GetExp[2816]	=	6707771
GetExp[2817]	=	6710160
GetExp[2818]	=	6712549
GetExp[2819]	=	6714938
GetExp[2820]	=	6717326
GetExp[2821]	=	6719715
GetExp[2822]	=	6722104
GetExp[2823]	=	6724493
GetExp[2824]	=	6726882
GetExp[2825]	=	6729271
GetExp[2826]	=	6731660
GetExp[2827]	=	6734049
GetExp[2828]	=	6736438
GetExp[2829]	=	6738827
GetExp[2830]	=	6741216
GetExp[2831]	=	6743605
GetExp[2832]	=	6745994
GetExp[2833]	=	6748383
GetExp[2834]	=	6750772
GetExp[2835]	=	6753160
GetExp[2836]	=	6755549
GetExp[2837]	=	6757938
GetExp[2838]	=	6760327
GetExp[2839]	=	6762716
GetExp[2840]	=	6765105
GetExp[2841]	=	6767494
GetExp[2842]	=	6769883
GetExp[2843]	=	6772272
GetExp[2844]	=	6774661
GetExp[2845]	=	6777050
GetExp[2846]	=	6779439
GetExp[2847]	=	6781828
GetExp[2848]	=	6784217
GetExp[2849]	=	6786606
GetExp[2850]	=	6788995
GetExp[2851]	=	6791383
GetExp[2852]	=	6793772
GetExp[2853]	=	6796161
GetExp[2854]	=	6798550
GetExp[2855]	=	6800939
GetExp[2856]	=	6803328
GetExp[2857]	=	6805717
GetExp[2858]	=	6808106
GetExp[2859]	=	6810495
GetExp[2860]	=	6812884
GetExp[2861]	=	6815273
GetExp[2862]	=	6817662
GetExp[2863]	=	6820051
GetExp[2864]	=	6822440
GetExp[2865]	=	6824829
GetExp[2866]	=	6827218
GetExp[2867]	=	6829606
GetExp[2868]	=	6831995
GetExp[2869]	=	6834384
GetExp[2870]	=	6836773
GetExp[2871]	=	6839162
GetExp[2872]	=	6841551
GetExp[2873]	=	6843940
GetExp[2874]	=	6846329
GetExp[2875]	=	6848718
GetExp[2876]	=	6851107
GetExp[2877]	=	6853496
GetExp[2878]	=	6855885
GetExp[2879]	=	6858274
GetExp[2880]	=	6860663
GetExp[2881]	=	6863052
GetExp[2882]	=	6865441
GetExp[2883]	=	6867829
GetExp[2884]	=	6870218
GetExp[2885]	=	6872607
GetExp[2886]	=	6874996
GetExp[2887]	=	6877385
GetExp[2888]	=	6879774
GetExp[2889]	=	6882163
GetExp[2890]	=	6884552
GetExp[2891]	=	6886941
GetExp[2892]	=	6889330
GetExp[2893]	=	6891719
GetExp[2894]	=	6894108
GetExp[2895]	=	6896497
GetExp[2896]	=	6898886
GetExp[2897]	=	6901275
GetExp[2898]	=	6903663
GetExp[2899]	=	6906052
GetExp[2900]	=	6908441
GetExp[2901]	=	6910830
GetExp[2902]	=	6913219
GetExp[2903]	=	6915608
GetExp[2904]	=	6917997
GetExp[2905]	=	6920386
GetExp[2906]	=	6922775
GetExp[2907]	=	6925164
GetExp[2908]	=	6927553
GetExp[2909]	=	6929942
GetExp[2910]	=	6932331
GetExp[2911]	=	6934720
GetExp[2912]	=	6937109
GetExp[2913]	=	6939498
GetExp[2914]	=	6941886
GetExp[2915]	=	6944275
GetExp[2916]	=	6946664
GetExp[2917]	=	6949053
GetExp[2918]	=	6951442
GetExp[2919]	=	6953831
GetExp[2920]	=	6956220
GetExp[2921]	=	6958609
GetExp[2922]	=	6960998
GetExp[2923]	=	6963387
GetExp[2924]	=	6965776
GetExp[2925]	=	6968165
GetExp[2926]	=	6970554
GetExp[2927]	=	6972943
GetExp[2928]	=	6975332
GetExp[2929]	=	6977721
GetExp[2930]	=	6980109
GetExp[2931]	=	6982498
GetExp[2932]	=	6984887
GetExp[2933]	=	6987276
GetExp[2934]	=	6989665
GetExp[2935]	=	6992054
GetExp[2936]	=	6994443
GetExp[2937]	=	6996832
GetExp[2938]	=	6999221
GetExp[2939]	=	7001610
GetExp[2940]	=	7003999
GetExp[2941]	=	7006388
GetExp[2942]	=	7008777
GetExp[2943]	=	7011166
GetExp[2944]	=	7013555
GetExp[2945]	=	7015943
GetExp[2946]	=	7018332
GetExp[2947]	=	7020721
GetExp[2948]	=	7023110
GetExp[2949]	=	7025499
GetExp[2950]	=	7027888
GetExp[2951]	=	7030277
GetExp[2952]	=	7032666
GetExp[2953]	=	7035055
GetExp[2954]	=	7037444
GetExp[2955]	=	7039833
GetExp[2956]	=	7042222
GetExp[2957]	=	7044611
GetExp[2958]	=	7047000
GetExp[2959]	=	7049389
GetExp[2960]	=	7051778
GetExp[2961]	=	7054166
GetExp[2962]	=	7056555
GetExp[2963]	=	7058944
GetExp[2964]	=	7061333
GetExp[2965]	=	7063722
GetExp[2966]	=	7066111
GetExp[2967]	=	7068500
GetExp[2968]	=	7070889
GetExp[2969]	=	7073278
GetExp[2970]	=	7075667
GetExp[2971]	=	7078056
GetExp[2972]	=	7080445
GetExp[2973]	=	7082834
GetExp[2974]	=	7085223
GetExp[2975]	=	7087612
GetExp[2976]	=	7090001
GetExp[2977]	=	7092389
GetExp[2978]	=	7094778
GetExp[2979]	=	7097167
GetExp[2980]	=	7099556
GetExp[2981]	=	7101945
GetExp[2982]	=	7104334
GetExp[2983]	=	7106723
GetExp[2984]	=	7109112
GetExp[2985]	=	7111501
GetExp[2986]	=	7113890
GetExp[2987]	=	7116279
GetExp[2988]	=	7118668
GetExp[2989]	=	7121057
GetExp[2990]	=	7123446
GetExp[2991]	=	7125835
GetExp[2992]	=	7128224
GetExp[2993]	=	7130612
GetExp[2994]	=	7133001
GetExp[2995]	=	7135390
GetExp[2996]	=	7137779
GetExp[2997]	=	7140168
GetExp[2998]	=	7142557
GetExp[2999]	=	7144946
GetExp[3000]	=	7147335
GetExp[3001]	=	7149724
GetExp[3002]	=	7152113
GetExp[3003]	=	7154502
GetExp[3004]	=	7156891
GetExp[3005]	=	7159280
GetExp[3006]	=	7161669
GetExp[3007]	=	7164058
GetExp[3008]	=	7166446
GetExp[3009]	=	7168835
GetExp[3010]	=	7171224
GetExp[3011]	=	7173613
GetExp[3012]	=	7176002
GetExp[3013]	=	7178391
GetExp[3014]	=	7180780
GetExp[3015]	=	7183169
GetExp[3016]	=	7185558
GetExp[3017]	=	7187947
GetExp[3018]	=	7190336
GetExp[3019]	=	7192725
GetExp[3020]	=	7195114
GetExp[3021]	=	7197503
GetExp[3022]	=	7199892
GetExp[3023]	=	7202281
GetExp[3024]	=	7204669
GetExp[3025]	=	7207058
GetExp[3026]	=	7209447
GetExp[3027]	=	7211836
GetExp[3028]	=	7214225
GetExp[3029]	=	7216614
GetExp[3030]	=	7219003
GetExp[3031]	=	7221392
GetExp[3032]	=	7223781
GetExp[3033]	=	7226170
GetExp[3034]	=	7228559
GetExp[3035]	=	7230948
GetExp[3036]	=	7233337
GetExp[3037]	=	7235726
GetExp[3038]	=	7238115
GetExp[3039]	=	7240504
GetExp[3040]	=	7242892
GetExp[3041]	=	7245281
GetExp[3042]	=	7247670
GetExp[3043]	=	7250059
GetExp[3044]	=	7252448
GetExp[3045]	=	7254837
GetExp[3046]	=	7257226
GetExp[3047]	=	7259615
GetExp[3048]	=	7262004
GetExp[3049]	=	7264393
GetExp[3050]	=	7266782
GetExp[3051]	=	7269171
GetExp[3052]	=	7271560
GetExp[3053]	=	7273949
GetExp[3054]	=	7276338
GetExp[3055]	=	7278727
GetExp[3056]	=	7281115
GetExp[3057]	=	7283504
GetExp[3058]	=	7285893
GetExp[3059]	=	7288282
GetExp[3060]	=	7290671
GetExp[3061]	=	7293060
GetExp[3062]	=	7295449
GetExp[3063]	=	7297838
GetExp[3064]	=	7300227
GetExp[3065]	=	7302616
GetExp[3066]	=	7305005
GetExp[3067]	=	7307394
GetExp[3068]	=	7309783
GetExp[3069]	=	7312172
GetExp[3070]	=	7314561
GetExp[3071]	=	7316949
GetExp[3072]	=	7319338
GetExp[3073]	=	7321727
GetExp[3074]	=	7324116
GetExp[3075]	=	7326505
GetExp[3076]	=	7328894
GetExp[3077]	=	7331283
GetExp[3078]	=	7333672
GetExp[3079]	=	7336061
GetExp[3080]	=	7338450
GetExp[3081]	=	7340839
GetExp[3082]	=	7343228
GetExp[3083]	=	7345617
GetExp[3084]	=	7348006
GetExp[3085]	=	7350395
GetExp[3086]	=	7352784
GetExp[3087]	=	7355172
GetExp[3088]	=	7357561
GetExp[3089]	=	7359950
GetExp[3090]	=	7362339
GetExp[3091]	=	7364728
GetExp[3092]	=	7367117
GetExp[3093]	=	7369506
GetExp[3094]	=	7371895
GetExp[3095]	=	7374284
GetExp[3096]	=	7376673
GetExp[3097]	=	7379062
GetExp[3098]	=	7381451
GetExp[3099]	=	7383840
GetExp[3100]	=	7386229
GetExp[3101]	=	7388618
GetExp[3102]	=	7391007
GetExp[3103]	=	7393395
GetExp[3104]	=	7395784
GetExp[3105]	=	7398173
GetExp[3106]	=	7400562
GetExp[3107]	=	7402951
GetExp[3108]	=	7405340
GetExp[3109]	=	7407729
GetExp[3110]	=	7410118
GetExp[3111]	=	7412507
GetExp[3112]	=	7414896
GetExp[3113]	=	7417285
GetExp[3114]	=	7419674
GetExp[3115]	=	7422063
GetExp[3116]	=	7424452
GetExp[3117]	=	7426841
GetExp[3118]	=	7429230
GetExp[3119]	=	7431618
GetExp[3120]	=	7434007
GetExp[3121]	=	7436396
GetExp[3122]	=	7438785
GetExp[3123]	=	7441174
GetExp[3124]	=	7443563
GetExp[3125]	=	7445952
GetExp[3126]	=	7448341
GetExp[3127]	=	7450730
GetExp[3128]	=	7453119
GetExp[3129]	=	7455508
GetExp[3130]	=	7457897
GetExp[3131]	=	7460286
GetExp[3132]	=	7462675
GetExp[3133]	=	7465064
GetExp[3134]	=	7467452
GetExp[3135]	=	7469841
GetExp[3136]	=	7472230
GetExp[3137]	=	7474619
GetExp[3138]	=	7477008
GetExp[3139]	=	7479397
GetExp[3140]	=	7481786
GetExp[3141]	=	7484175
GetExp[3142]	=	7486564
GetExp[3143]	=	7488953
GetExp[3144]	=	7491342
GetExp[3145]	=	7493731
GetExp[3146]	=	7496120
GetExp[3147]	=	7498509
GetExp[3148]	=	7500898
GetExp[3149]	=	7503287
GetExp[3150]	=	7505675
GetExp[3151]	=	7508064
GetExp[3152]	=	7510453
GetExp[3153]	=	7512842
GetExp[3154]	=	7515231
GetExp[3155]	=	7517620
GetExp[3156]	=	7520009
GetExp[3157]	=	7522398
GetExp[3158]	=	7524787
GetExp[3159]	=	7527176
GetExp[3160]	=	7529565
GetExp[3161]	=	7531954
GetExp[3162]	=	7534343
GetExp[3163]	=	7536732
GetExp[3164]	=	7539121
GetExp[3165]	=	7541510
GetExp[3166]	=	7543898
GetExp[3167]	=	7546287
GetExp[3168]	=	7548676
GetExp[3169]	=	7551065
GetExp[3170]	=	7553454
GetExp[3171]	=	7555843
GetExp[3172]	=	7558232
GetExp[3173]	=	7560621
GetExp[3174]	=	7563010
GetExp[3175]	=	7565399
GetExp[3176]	=	7567788
GetExp[3177]	=	7570177
GetExp[3178]	=	7572566
GetExp[3179]	=	7574955
GetExp[3180]	=	7577344
GetExp[3181]	=	7579733
GetExp[3182]	=	7582121
GetExp[3183]	=	7584510
GetExp[3184]	=	7586899
GetExp[3185]	=	7589288
GetExp[3186]	=	7591677
GetExp[3187]	=	7594066
GetExp[3188]	=	7596455
GetExp[3189]	=	7598844
GetExp[3190]	=	7601233
GetExp[3191]	=	7603622
GetExp[3192]	=	7606011
GetExp[3193]	=	7608400
GetExp[3194]	=	7610789
GetExp[3195]	=	7613178
GetExp[3196]	=	7615567
GetExp[3197]	=	7617955
GetExp[3198]	=	7620344
GetExp[3199]	=	7622733
GetExp[3200]	=	7625122
GetExp[3201]	=	7627511
GetExp[3202]	=	7629900
GetExp[3203]	=	7632289
GetExp[3204]	=	7634678
GetExp[3205]	=	7637067
GetExp[3206]	=	7639456
GetExp[3207]	=	7641845
GetExp[3208]	=	7644234
GetExp[3209]	=	7646623
GetExp[3210]	=	7649012
GetExp[3211]	=	7651401
GetExp[3212]	=	7653790
GetExp[3213]	=	7656178
GetExp[3214]	=	7658567
GetExp[3215]	=	7660956
GetExp[3216]	=	7663345
GetExp[3217]	=	7665734
GetExp[3218]	=	7668123
GetExp[3219]	=	7670512
GetExp[3220]	=	7672901
GetExp[3221]	=	7675290
GetExp[3222]	=	7677679
GetExp[3223]	=	7680068
GetExp[3224]	=	7682457
GetExp[3225]	=	7684846
GetExp[3226]	=	7687235
GetExp[3227]	=	7689624
GetExp[3228]	=	7692013
GetExp[3229]	=	7694401
GetExp[3230]	=	7696790
GetExp[3231]	=	7699179
GetExp[3232]	=	7701568
GetExp[3233]	=	7703957
GetExp[3234]	=	7706346
GetExp[3235]	=	7708735
GetExp[3236]	=	7711124
GetExp[3237]	=	7713513
GetExp[3238]	=	7715902
GetExp[3239]	=	7718291
GetExp[3240]	=	7720680
GetExp[3241]	=	7723069
GetExp[3242]	=	7725458
GetExp[3243]	=	7727847
GetExp[3244]	=	7730235
GetExp[3245]	=	7732624
GetExp[3246]	=	7735013
GetExp[3247]	=	7737402
GetExp[3248]	=	7739791
GetExp[3249]	=	7742180
GetExp[3250]	=	7744569
GetExp[3251]	=	7746958
GetExp[3252]	=	7749347
GetExp[3253]	=	7751736
GetExp[3254]	=	7754125
GetExp[3255]	=	7756514
GetExp[3256]	=	7758903
GetExp[3257]	=	7761292
GetExp[3258]	=	7763681
GetExp[3259]	=	7766070
GetExp[3260]	=	7768458
GetExp[3261]	=	7770847
GetExp[3262]	=	7773236
GetExp[3263]	=	7775625
GetExp[3264]	=	7778014
GetExp[3265]	=	7780403
GetExp[3266]	=	7782792
GetExp[3267]	=	7785181
GetExp[3268]	=	7787570
GetExp[3269]	=	7789959
GetExp[3270]	=	7792348
GetExp[3271]	=	7794737
GetExp[3272]	=	7797126
GetExp[3273]	=	7799515
GetExp[3274]	=	7801904
GetExp[3275]	=	7804293
GetExp[3276]	=	7806681
GetExp[3277]	=	7809070
GetExp[3278]	=	7811459
GetExp[3279]	=	7813848
GetExp[3280]	=	7816237
GetExp[3281]	=	7818626
GetExp[3282]	=	7821015
GetExp[3283]	=	7823404
GetExp[3284]	=	7825793
GetExp[3285]	=	7828182
GetExp[3286]	=	7830571
GetExp[3287]	=	7832960
GetExp[3288]	=	7835349
GetExp[3289]	=	7837738
GetExp[3290]	=	7840127
GetExp[3291]	=	7842516
GetExp[3292]	=	7844904
GetExp[3293]	=	7847293
GetExp[3294]	=	7849682
GetExp[3295]	=	7852071
GetExp[3296]	=	7854460
GetExp[3297]	=	7856849
GetExp[3298]	=	7859238
GetExp[3299]	=	7861627
GetExp[3300]	=	7864016
GetExp[3301]	=	7866405
GetExp[3302]	=	7868794
GetExp[3303]	=	7871183
GetExp[3304]	=	7873572
GetExp[3305]	=	7875961
GetExp[3306]	=	7878350
GetExp[3307]	=	7880738
GetExp[3308]	=	7883127
GetExp[3309]	=	7885516
GetExp[3310]	=	7887905
GetExp[3311]	=	7890294
GetExp[3312]	=	7892683
GetExp[3313]	=	7895072
GetExp[3314]	=	7897461
GetExp[3315]	=	7899850
GetExp[3316]	=	7902239
GetExp[3317]	=	7904628
GetExp[3318]	=	7907017
GetExp[3319]	=	7909406
GetExp[3320]	=	7911795
GetExp[3321]	=	7914184
GetExp[3322]	=	7916573
GetExp[3323]	=	7918961
GetExp[3324]	=	7921350
GetExp[3325]	=	7923739
GetExp[3326]	=	7926128
GetExp[3327]	=	7928517
GetExp[3328]	=	7930906
GetExp[3329]	=	7933295
GetExp[3330]	=	7935684
GetExp[3331]	=	7938073
GetExp[3332]	=	7940462
GetExp[3333]	=	7942851
GetExp[3334]	=	7945240
GetExp[3335]	=	7947629
GetExp[3336]	=	7950018
GetExp[3337]	=	7952407
GetExp[3338]	=	7954796
GetExp[3339]	=	7957184
GetExp[3340]	=	7959573
GetExp[3341]	=	7961962
GetExp[3342]	=	7964351
GetExp[3343]	=	7966740
GetExp[3344]	=	7969129
GetExp[3345]	=	7971518
GetExp[3346]	=	7973907
GetExp[3347]	=	7976296
GetExp[3348]	=	7978685
GetExp[3349]	=	7981074
GetExp[3350]	=	7983463
GetExp[3351]	=	7985852
GetExp[3352]	=	7988241
GetExp[3353]	=	7990630
GetExp[3354]	=	7993019
GetExp[3355]	=	7995407
GetExp[3356]	=	7997796
GetExp[3357]	=	8000185
GetExp[3358]	=	8002574
GetExp[3359]	=	8004963
GetExp[3360]	=	8007352
GetExp[3361]	=	8009741
GetExp[3362]	=	8012130
GetExp[3363]	=	8014519
GetExp[3364]	=	8016908
GetExp[3365]	=	8019297
GetExp[3366]	=	8021686
GetExp[3367]	=	8024075
GetExp[3368]	=	8026464
GetExp[3369]	=	8028853
GetExp[3370]	=	8031241
GetExp[3371]	=	8033630
GetExp[3372]	=	8036019
GetExp[3373]	=	8038408
GetExp[3374]	=	8040797
GetExp[3375]	=	8043186
GetExp[3376]	=	8045575
GetExp[3377]	=	8047964
GetExp[3378]	=	8050353
GetExp[3379]	=	8052742
GetExp[3380]	=	8055131
GetExp[3381]	=	8057520
GetExp[3382]	=	8059909
GetExp[3383]	=	8062298
GetExp[3384]	=	8064687
GetExp[3385]	=	8067076
GetExp[3386]	=	8069464
GetExp[3387]	=	8071853
GetExp[3388]	=	8074242
GetExp[3389]	=	8076631
GetExp[3390]	=	8079020
GetExp[3391]	=	8081409
GetExp[3392]	=	8083798
GetExp[3393]	=	8086187
GetExp[3394]	=	8088576
GetExp[3395]	=	8090965
GetExp[3396]	=	8093354
GetExp[3397]	=	8095743
GetExp[3398]	=	8098132
GetExp[3399]	=	8100521
GetExp[3400]	=	8102910
GetExp[3401]	=	8105299
GetExp[3402]	=	8107687
GetExp[3403]	=	8110076
GetExp[3404]	=	8112465
GetExp[3405]	=	8114854
GetExp[3406]	=	8117243
GetExp[3407]	=	8119632
GetExp[3408]	=	8122021
GetExp[3409]	=	8124410
GetExp[3410]	=	8126799
GetExp[3411]	=	8129188
GetExp[3412]	=	8131577
GetExp[3413]	=	8133966
GetExp[3414]	=	8136355
GetExp[3415]	=	8138744
GetExp[3416]	=	8141133
GetExp[3417]	=	8143522
GetExp[3418]	=	8145910
GetExp[3419]	=	8148299
GetExp[3420]	=	8150688
GetExp[3421]	=	8153077
GetExp[3422]	=	8155466
GetExp[3423]	=	8157855
GetExp[3424]	=	8160244
GetExp[3425]	=	8162633
GetExp[3426]	=	8165022
GetExp[3427]	=	8167411
GetExp[3428]	=	8169800
GetExp[3429]	=	8172189
GetExp[3430]	=	8174578
GetExp[3431]	=	8176967
GetExp[3432]	=	8179356
GetExp[3433]	=	8181744
GetExp[3434]	=	8184133
GetExp[3435]	=	8186522
GetExp[3436]	=	8188911
GetExp[3437]	=	8191300
GetExp[3438]	=	8193689
GetExp[3439]	=	8196078
GetExp[3440]	=	8198467
GetExp[3441]	=	8200856
GetExp[3442]	=	8203245
GetExp[3443]	=	8205634
GetExp[3444]	=	8208023
GetExp[3445]	=	8210412
GetExp[3446]	=	8212801
GetExp[3447]	=	8215190
GetExp[3448]	=	8217579
GetExp[3449]	=	8219967
GetExp[3450]	=	8222356
GetExp[3451]	=	8224745
GetExp[3452]	=	8227134
GetExp[3453]	=	8229523
GetExp[3454]	=	8231912
GetExp[3455]	=	8234301
GetExp[3456]	=	8236690
GetExp[3457]	=	8239079
GetExp[3458]	=	8241468
GetExp[3459]	=	8243857
GetExp[3460]	=	8246246
GetExp[3461]	=	8248635
GetExp[3462]	=	8251024
GetExp[3463]	=	8253413
GetExp[3464]	=	8255802
GetExp[3465]	=	8258190
GetExp[3466]	=	8260579
GetExp[3467]	=	8262968
GetExp[3468]	=	8265357
GetExp[3469]	=	8267746
GetExp[3470]	=	8270135
GetExp[3471]	=	8272524
GetExp[3472]	=	8274913
GetExp[3473]	=	8277302
GetExp[3474]	=	8279691
GetExp[3475]	=	8282080
GetExp[3476]	=	8284469
GetExp[3477]	=	8286858
GetExp[3478]	=	8289247
GetExp[3479]	=	8291636
GetExp[3480]	=	8294024
GetExp[3481]	=	8296413
GetExp[3482]	=	8298802
GetExp[3483]	=	8301191
GetExp[3484]	=	8303580
GetExp[3485]	=	8305969
GetExp[3486]	=	8308358
GetExp[3487]	=	8310747
GetExp[3488]	=	8313136
GetExp[3489]	=	8315525
GetExp[3490]	=	8317914
GetExp[3491]	=	8320303
GetExp[3492]	=	8322692
GetExp[3493]	=	8325081
GetExp[3494]	=	8327470
GetExp[3495]	=	8329859
GetExp[3496]	=	8332247
GetExp[3497]	=	8334636
GetExp[3498]	=	8337025
GetExp[3499]	=	8339414
GetExp[3500]	=	8341803
GetExp[3501]	=	8344192
GetExp[3502]	=	8346581
GetExp[3503]	=	8348970
GetExp[3504]	=	8351359
GetExp[3505]	=	8353748
GetExp[3506]	=	8356137
GetExp[3507]	=	8358526
GetExp[3508]	=	8360915
GetExp[3509]	=	8363304
GetExp[3510]	=	8365693
GetExp[3511]	=	8368082
GetExp[3512]	=	8370470
GetExp[3513]	=	8372859
GetExp[3514]	=	8375248
GetExp[3515]	=	8377637
GetExp[3516]	=	8380026
GetExp[3517]	=	8382415
GetExp[3518]	=	8384804
GetExp[3519]	=	8387193
GetExp[3520]	=	8389582
GetExp[3521]	=	8391971
GetExp[3522]	=	8394360
GetExp[3523]	=	8396749
GetExp[3524]	=	8399138
GetExp[3525]	=	8401527
GetExp[3526]	=	8403916
GetExp[3527]	=	8406305
GetExp[3528]	=	8408693
GetExp[3529]	=	8411082
GetExp[3530]	=	8413471
GetExp[3531]	=	8415860
GetExp[3532]	=	8418249
GetExp[3533]	=	8420638
GetExp[3534]	=	8423027
GetExp[3535]	=	8425416
GetExp[3536]	=	8427805
GetExp[3537]	=	8430194
GetExp[3538]	=	8432583
GetExp[3539]	=	8434972
GetExp[3540]	=	8437361
GetExp[3541]	=	8439750
GetExp[3542]	=	8442139
GetExp[3543]	=	8444527
GetExp[3544]	=	8446916
GetExp[3545]	=	8449305
GetExp[3546]	=	8451694
GetExp[3547]	=	8454083
GetExp[3548]	=	8456472
GetExp[3549]	=	8458861
GetExp[3550]	=	8461250
GetExp[3551]	=	8463639
GetExp[3552]	=	8466028
GetExp[3553]	=	8468417
GetExp[3554]	=	8470806
GetExp[3555]	=	8473195
GetExp[3556]	=	8475584
GetExp[3557]	=	8477973
GetExp[3558]	=	8480362
GetExp[3559]	=	8482750
GetExp[3560]	=	8485139
GetExp[3561]	=	8487528
GetExp[3562]	=	8489917
GetExp[3563]	=	8492306
GetExp[3564]	=	8494695
GetExp[3565]	=	8497084
GetExp[3566]	=	8499473
GetExp[3567]	=	8501862
GetExp[3568]	=	8504251
GetExp[3569]	=	8506640
GetExp[3570]	=	8509029
GetExp[3571]	=	8511418
GetExp[3572]	=	8513807
GetExp[3573]	=	8516196
GetExp[3574]	=	8518585
GetExp[3575]	=	8520973
GetExp[3576]	=	8523362
GetExp[3577]	=	8525751
GetExp[3578]	=	8528140
GetExp[3579]	=	8530529
GetExp[3580]	=	8532918
GetExp[3581]	=	8535307
GetExp[3582]	=	8537696
GetExp[3583]	=	8540085
GetExp[3584]	=	8542474
GetExp[3585]	=	8544863
GetExp[3586]	=	8547252
GetExp[3587]	=	8549641
GetExp[3588]	=	8552030
GetExp[3589]	=	8554419
GetExp[3590]	=	8556808
GetExp[3591]	=	8559196
GetExp[3592]	=	8561585
GetExp[3593]	=	8563974
GetExp[3594]	=	8566363
GetExp[3595]	=	8568752
GetExp[3596]	=	8571141
GetExp[3597]	=	8573530
GetExp[3598]	=	8575919
GetExp[3599]	=	8578308
GetExp[3600]	=	8580697
GetExp[3601]	=	8583086
GetExp[3602]	=	8585475
GetExp[3603]	=	8587864
GetExp[3604]	=	8590253
GetExp[3605]	=	8592642
GetExp[3606]	=	8595030
GetExp[3607]	=	8597419
GetExp[3608]	=	8599808
GetExp[3609]	=	8602197
GetExp[3610]	=	8604586
GetExp[3611]	=	8606975
GetExp[3612]	=	8609364
GetExp[3613]	=	8611753
GetExp[3614]	=	8614142
GetExp[3615]	=	8616531
GetExp[3616]	=	8618920
GetExp[3617]	=	8621309
GetExp[3618]	=	8623698
GetExp[3619]	=	8626087
GetExp[3620]	=	8628476
GetExp[3621]	=	8630865
GetExp[3622]	=	8633253
GetExp[3623]	=	8635642
GetExp[3624]	=	8638031
GetExp[3625]	=	8640420
GetExp[3626]	=	8642809
GetExp[3627]	=	8645198
GetExp[3628]	=	8647587
GetExp[3629]	=	8649976
GetExp[3630]	=	8652365
GetExp[3631]	=	8654754
GetExp[3632]	=	8657143
GetExp[3633]	=	8659532
GetExp[3634]	=	8661921
GetExp[3635]	=	8664310
GetExp[3636]	=	8666699
GetExp[3637]	=	8669088
GetExp[3638]	=	8671476
GetExp[3639]	=	8673865
GetExp[3640]	=	8676254
GetExp[3641]	=	8678643
GetExp[3642]	=	8681032
GetExp[3643]	=	8683421
GetExp[3644]	=	8685810
GetExp[3645]	=	8688199
GetExp[3646]	=	8690588
GetExp[3647]	=	8692977
GetExp[3648]	=	8695366
GetExp[3649]	=	8697755
GetExp[3650]	=	8700144
GetExp[3651]	=	8702533
GetExp[3652]	=	8704922
GetExp[3653]	=	8707311
GetExp[3654]	=	8709699
GetExp[3655]	=	8712088
GetExp[3656]	=	8714477
GetExp[3657]	=	8716866
GetExp[3658]	=	8719255
GetExp[3659]	=	8721644
GetExp[3660]	=	8724033
GetExp[3661]	=	8726422
GetExp[3662]	=	8728811
GetExp[3663]	=	8731200
GetExp[3664]	=	8733589
GetExp[3665]	=	8735978
GetExp[3666]	=	8738367
GetExp[3667]	=	8740756
GetExp[3668]	=	8743145
GetExp[3669]	=	8745533
GetExp[3670]	=	8747922
GetExp[3671]	=	8750311
GetExp[3672]	=	8752700
GetExp[3673]	=	8755089
GetExp[3674]	=	8757478
GetExp[3675]	=	8759867
GetExp[3676]	=	8762256
GetExp[3677]	=	8764645
GetExp[3678]	=	8767034
GetExp[3679]	=	8769423
GetExp[3680]	=	8771812
GetExp[3681]	=	8774201
GetExp[3682]	=	8776590
GetExp[3683]	=	8778979
GetExp[3684]	=	8781368
GetExp[3685]	=	8783756
GetExp[3686]	=	8786145
GetExp[3687]	=	8788534
GetExp[3688]	=	8790923
GetExp[3689]	=	8793312
GetExp[3690]	=	8795701
GetExp[3691]	=	8798090
GetExp[3692]	=	8800479
GetExp[3693]	=	8802868
GetExp[3694]	=	8805257
GetExp[3695]	=	8807646
GetExp[3696]	=	8810035
GetExp[3697]	=	8812424
GetExp[3698]	=	8814813
GetExp[3699]	=	8817202
GetExp[3700]	=	8819591
GetExp[3701]	=	8821979
GetExp[3702]	=	8824368
GetExp[3703]	=	8826757
GetExp[3704]	=	8829146
GetExp[3705]	=	8831535
GetExp[3706]	=	8833924
GetExp[3707]	=	8836313
GetExp[3708]	=	8838702
GetExp[3709]	=	8841091
GetExp[3710]	=	8843480
GetExp[3711]	=	8845869
GetExp[3712]	=	8848258
GetExp[3713]	=	8850647
GetExp[3714]	=	8853036
GetExp[3715]	=	8855425
GetExp[3716]	=	8857814
GetExp[3717]	=	8860202
GetExp[3718]	=	8862591
GetExp[3719]	=	8864980
GetExp[3720]	=	8867369
GetExp[3721]	=	8869758
GetExp[3722]	=	8872147
GetExp[3723]	=	8874536
GetExp[3724]	=	8876925
GetExp[3725]	=	8879314
GetExp[3726]	=	8881703
GetExp[3727]	=	8884092
GetExp[3728]	=	8886481
GetExp[3729]	=	8888870
GetExp[3730]	=	8891259
GetExp[3731]	=	8893648
GetExp[3732]	=	8896036
GetExp[3733]	=	8898425
GetExp[3734]	=	8900814
GetExp[3735]	=	8903203
GetExp[3736]	=	8905592
GetExp[3737]	=	8907981
GetExp[3738]	=	8910370
GetExp[3739]	=	8912759
GetExp[3740]	=	8915148
GetExp[3741]	=	8917537
GetExp[3742]	=	8919926
GetExp[3743]	=	8922315
GetExp[3744]	=	8924704
GetExp[3745]	=	8927093
GetExp[3746]	=	8929482
GetExp[3747]	=	8931871
GetExp[3748]	=	8934259
GetExp[3749]	=	8936648
GetExp[3750]	=	8939037
GetExp[3751]	=	8941426
GetExp[3752]	=	8943815
GetExp[3753]	=	8946204
GetExp[3754]	=	8948593
GetExp[3755]	=	8950982
GetExp[3756]	=	8953371
GetExp[3757]	=	8955760
GetExp[3758]	=	8958149
GetExp[3759]	=	8960538
GetExp[3760]	=	8962927
GetExp[3761]	=	8965316
GetExp[3762]	=	8967705
GetExp[3763]	=	8970094
GetExp[3764]	=	8972482
GetExp[3765]	=	8974871
GetExp[3766]	=	8977260
GetExp[3767]	=	8979649
GetExp[3768]	=	8982038
GetExp[3769]	=	8984427
GetExp[3770]	=	8986816
GetExp[3771]	=	8989205
GetExp[3772]	=	8991594
GetExp[3773]	=	8993983
GetExp[3774]	=	8996372
GetExp[3775]	=	8998761
GetExp[3776]	=	9001150
GetExp[3777]	=	9003539
GetExp[3778]	=	9005928
GetExp[3779]	=	9008316
GetExp[3780]	=	9010705
GetExp[3781]	=	9013094
GetExp[3782]	=	9015483
GetExp[3783]	=	9017872
GetExp[3784]	=	9020261
GetExp[3785]	=	9022650
GetExp[3786]	=	9025039
GetExp[3787]	=	9027428
GetExp[3788]	=	9029817
GetExp[3789]	=	9032206
GetExp[3790]	=	9034595
GetExp[3791]	=	9036984
GetExp[3792]	=	9039373
GetExp[3793]	=	9041762
GetExp[3794]	=	9044151
GetExp[3795]	=	9046539
GetExp[3796]	=	9048928
GetExp[3797]	=	9051317
GetExp[3798]	=	9053706
GetExp[3799]	=	9056095
GetExp[3800]	=	9058484
GetExp[3801]	=	9060873
GetExp[3802]	=	9063262
GetExp[3803]	=	9065651
GetExp[3804]	=	9068040
GetExp[3805]	=	9070429
GetExp[3806]	=	9072818
GetExp[3807]	=	9075207
GetExp[3808]	=	9077596
GetExp[3809]	=	9079985
GetExp[3810]	=	9082374
GetExp[3811]	=	9084762
GetExp[3812]	=	9087151
GetExp[3813]	=	9089540
GetExp[3814]	=	9091929
GetExp[3815]	=	9094318
GetExp[3816]	=	9096707
GetExp[3817]	=	9099096
GetExp[3818]	=	9101485
GetExp[3819]	=	9103874
GetExp[3820]	=	9106263
GetExp[3821]	=	9108652
GetExp[3822]	=	9111041
GetExp[3823]	=	9113430
GetExp[3824]	=	9115819
GetExp[3825]	=	9118208
GetExp[3826]	=	9120597
GetExp[3827]	=	9122985
GetExp[3828]	=	9125374
GetExp[3829]	=	9127763
GetExp[3830]	=	9130152
GetExp[3831]	=	9132541
GetExp[3832]	=	9134930
GetExp[3833]	=	9137319
GetExp[3834]	=	9139708
GetExp[3835]	=	9142097
GetExp[3836]	=	9144486
GetExp[3837]	=	9146875
GetExp[3838]	=	9149264
GetExp[3839]	=	9151653
GetExp[3840]	=	9154042
GetExp[3841]	=	9156431
GetExp[3842]	=	9158819
GetExp[3843]	=	9161208
GetExp[3844]	=	9163597
GetExp[3845]	=	9165986
GetExp[3846]	=	9168375
GetExp[3847]	=	9170764
GetExp[3848]	=	9173153
GetExp[3849]	=	9175542
GetExp[3850]	=	9177931
GetExp[3851]	=	9180320
GetExp[3852]	=	9182709
GetExp[3853]	=	9185098
GetExp[3854]	=	9187487
GetExp[3855]	=	9189876
GetExp[3856]	=	9192265
GetExp[3857]	=	9194654
GetExp[3858]	=	9197042
GetExp[3859]	=	9199431
GetExp[3860]	=	9201820
GetExp[3861]	=	9204209
GetExp[3862]	=	9206598
GetExp[3863]	=	9208987
GetExp[3864]	=	9211376
GetExp[3865]	=	9213765
GetExp[3866]	=	9216154
GetExp[3867]	=	9218543
GetExp[3868]	=	9220932
GetExp[3869]	=	9223321
GetExp[3870]	=	9225710
GetExp[3871]	=	9228099
GetExp[3872]	=	9230488
GetExp[3873]	=	9232877
GetExp[3874]	=	9235265
GetExp[3875]	=	9237654
GetExp[3876]	=	9240043
GetExp[3877]	=	9242432
GetExp[3878]	=	9244821
GetExp[3879]	=	9247210
GetExp[3880]	=	9249599
GetExp[3881]	=	9251988
GetExp[3882]	=	9254377
GetExp[3883]	=	9256766
GetExp[3884]	=	9259155
GetExp[3885]	=	9261544
GetExp[3886]	=	9263933
GetExp[3887]	=	9266322
GetExp[3888]	=	9268711
GetExp[3889]	=	9271100
GetExp[3890]	=	9273488
GetExp[3891]	=	9275877
GetExp[3892]	=	9278266
GetExp[3893]	=	9280655
GetExp[3894]	=	9283044
GetExp[3895]	=	9285433
GetExp[3896]	=	9287822
GetExp[3897]	=	9290211
GetExp[3898]	=	9292600
GetExp[3899]	=	9294989
GetExp[3900]	=	9297378
GetExp[3901]	=	9299767
GetExp[3902]	=	9302156
GetExp[3903]	=	9304545
GetExp[3904]	=	9306934
GetExp[3905]	=	9309322
GetExp[3906]	=	9311711
GetExp[3907]	=	9314100
GetExp[3908]	=	9316489
GetExp[3909]	=	9318878
GetExp[3910]	=	9321267
GetExp[3911]	=	9323656
GetExp[3912]	=	9326045
GetExp[3913]	=	9328434
GetExp[3914]	=	9330823
GetExp[3915]	=	9333212
GetExp[3916]	=	9335601
GetExp[3917]	=	9337990
GetExp[3918]	=	9340379
GetExp[3919]	=	9342768
GetExp[3920]	=	9345157
GetExp[3921]	=	9347545
GetExp[3922]	=	9349934
GetExp[3923]	=	9352323
GetExp[3924]	=	9354712
GetExp[3925]	=	9357101
GetExp[3926]	=	9359490
GetExp[3927]	=	9361879
GetExp[3928]	=	9364268
GetExp[3929]	=	9366657
GetExp[3930]	=	9369046
GetExp[3931]	=	9371435
GetExp[3932]	=	9373824
GetExp[3933]	=	9376213
GetExp[3934]	=	9378602
GetExp[3935]	=	9380991
GetExp[3936]	=	9383380
GetExp[3937]	=	9385768
GetExp[3938]	=	9388157
GetExp[3939]	=	9390546
GetExp[3940]	=	9392935
GetExp[3941]	=	9395324
GetExp[3942]	=	9397713
GetExp[3943]	=	9400102
GetExp[3944]	=	9402491
GetExp[3945]	=	9404880
GetExp[3946]	=	9407269
GetExp[3947]	=	9409658
GetExp[3948]	=	9412047
GetExp[3949]	=	9414436
GetExp[3950]	=	9416825
GetExp[3951]	=	9419214
GetExp[3952]	=	9421603
GetExp[3953]	=	9423991
GetExp[3954]	=	9426380
GetExp[3955]	=	9428769
GetExp[3956]	=	9431158
GetExp[3957]	=	9433547
GetExp[3958]	=	9435936
GetExp[3959]	=	9438325
GetExp[3960]	=	9440714
GetExp[3961]	=	9443103
GetExp[3962]	=	9445492
GetExp[3963]	=	9447881
GetExp[3964]	=	9450270
GetExp[3965]	=	9452659
GetExp[3966]	=	9455048
GetExp[3967]	=	9457437
GetExp[3968]	=	9459825
GetExp[3969]	=	9462214
GetExp[3970]	=	9464603
GetExp[3971]	=	9466992
GetExp[3972]	=	9469381
GetExp[3973]	=	9471770
GetExp[3974]	=	9474159
GetExp[3975]	=	9476548
GetExp[3976]	=	9478937
GetExp[3977]	=	9481326
GetExp[3978]	=	9483715
GetExp[3979]	=	9486104
GetExp[3980]	=	9488493
GetExp[3981]	=	9490882
GetExp[3982]	=	9493271
GetExp[3983]	=	9495660
GetExp[3984]	=	9498048
GetExp[3985]	=	9500437
GetExp[3986]	=	9502826
GetExp[3987]	=	9505215
GetExp[3988]	=	9507604
GetExp[3989]	=	9509993
GetExp[3990]	=	9512382
GetExp[3991]	=	9514771
GetExp[3992]	=	9517160
GetExp[3993]	=	9519549
GetExp[3994]	=	9521938
GetExp[3995]	=	9524327
GetExp[3996]	=	9526716
GetExp[3997]	=	9529105
GetExp[3998]	=	9531494
GetExp[3999]	=	9533883
GetExp[4000]	=	9536271
GetExp[4001]	=	9538660
GetExp[4002]	=	9541049
GetExp[4003]	=	9543438
GetExp[4004]	=	9545827
GetExp[4005]	=	9548216
GetExp[4006]	=	9550605
GetExp[4007]	=	9552994
GetExp[4008]	=	9555383
GetExp[4009]	=	9557772
GetExp[4010]	=	9560161
GetExp[4011]	=	9562550
GetExp[4012]	=	9564939
GetExp[4013]	=	9567328
GetExp[4014]	=	9569717
GetExp[4015]	=	9572106
GetExp[4016]	=	9574494
GetExp[4017]	=	9576883
GetExp[4018]	=	9579272
GetExp[4019]	=	9581661
GetExp[4020]	=	9584050
GetExp[4021]	=	9586439
GetExp[4022]	=	9588828
GetExp[4023]	=	9591217
GetExp[4024]	=	9593606
GetExp[4025]	=	9595995
GetExp[4026]	=	9598384
GetExp[4027]	=	9600773
GetExp[4028]	=	9603162
GetExp[4029]	=	9605551
GetExp[4030]	=	9607940
GetExp[4031]	=	9610328
GetExp[4032]	=	9612717
GetExp[4033]	=	9615106
GetExp[4034]	=	9617495
GetExp[4035]	=	9619884
GetExp[4036]	=	9622273
GetExp[4037]	=	9624662
GetExp[4038]	=	9627051
GetExp[4039]	=	9629440
GetExp[4040]	=	9631829
GetExp[4041]	=	9634218
GetExp[4042]	=	9636607
GetExp[4043]	=	9638996
GetExp[4044]	=	9641385
GetExp[4045]	=	9643774
GetExp[4046]	=	9646163
GetExp[4047]	=	9648551
GetExp[4048]	=	9650940
GetExp[4049]	=	9653329
GetExp[4050]	=	9655718
GetExp[4051]	=	9658107
GetExp[4052]	=	9660496
GetExp[4053]	=	9662885
GetExp[4054]	=	9665274
GetExp[4055]	=	9667663
GetExp[4056]	=	9670052
GetExp[4057]	=	9672441
GetExp[4058]	=	9674830
GetExp[4059]	=	9677219
GetExp[4060]	=	9679608
GetExp[4061]	=	9681997
GetExp[4062]	=	9684386
GetExp[4063]	=	9686774
GetExp[4064]	=	9689163
GetExp[4065]	=	9691552
GetExp[4066]	=	9693941
GetExp[4067]	=	9696330
GetExp[4068]	=	9698719
GetExp[4069]	=	9701108
GetExp[4070]	=	9703497
GetExp[4071]	=	9705886
GetExp[4072]	=	9708275
GetExp[4073]	=	9710664
GetExp[4074]	=	9713053
GetExp[4075]	=	9715442
GetExp[4076]	=	9717831
GetExp[4077]	=	9720220
GetExp[4078]	=	9722608
GetExp[4079]	=	9724997
GetExp[4080]	=	9727386
GetExp[4081]	=	9729775
GetExp[4082]	=	9732164
GetExp[4083]	=	9734553
GetExp[4084]	=	9736942
GetExp[4085]	=	9739331
GetExp[4086]	=	9741720
GetExp[4087]	=	9744109
GetExp[4088]	=	9746498
GetExp[4089]	=	9748887
GetExp[4090]	=	9751276
GetExp[4091]	=	9753665
GetExp[4092]	=	9756054
GetExp[4093]	=	9758443
GetExp[4094]	=	9760831
GetExp[4095]	=	9763220
GetExp[4096]	=	9765609
GetExp[4097]	=	9767998
GetExp[4098]	=	9770387
GetExp[4099]	=	9772776
GetExp[4100]	=	9775165
GetExp[4101]	=	9777554
GetExp[4102]	=	9779943
GetExp[4103]	=	9782332
GetExp[4104]	=	9784721
GetExp[4105]	=	9787110
GetExp[4106]	=	9789499
GetExp[4107]	=	9791888
GetExp[4108]	=	9794277
GetExp[4109]	=	9796666
GetExp[4110]	=	9799054
GetExp[4111]	=	9801443
GetExp[4112]	=	9803832
GetExp[4113]	=	9806221
GetExp[4114]	=	9808610
GetExp[4115]	=	9810999
GetExp[4116]	=	9813388
GetExp[4117]	=	9815777
GetExp[4118]	=	9818166
GetExp[4119]	=	9820555
GetExp[4120]	=	9822944
GetExp[4121]	=	9825333
GetExp[4122]	=	9827722
GetExp[4123]	=	9830111
GetExp[4124]	=	9832500
GetExp[4125]	=	9834889
GetExp[4126]	=	9837277
GetExp[4127]	=	9839666
GetExp[4128]	=	9842055
GetExp[4129]	=	9844444
GetExp[4130]	=	9846833
GetExp[4131]	=	9849222
GetExp[4132]	=	9851611
GetExp[4133]	=	9854000
GetExp[4134]	=	9856389
GetExp[4135]	=	9858778
GetExp[4136]	=	9861167
GetExp[4137]	=	9863556
GetExp[4138]	=	9865945
GetExp[4139]	=	9868334
GetExp[4140]	=	9870723
GetExp[4141]	=	9873111
GetExp[4142]	=	9875500
GetExp[4143]	=	9877889
GetExp[4144]	=	9880278
GetExp[4145]	=	9882667
GetExp[4146]	=	9885056
GetExp[4147]	=	9887445
GetExp[4148]	=	9889834
GetExp[4149]	=	9892223
GetExp[4150]	=	9894612
GetExp[4151]	=	9897001
GetExp[4152]	=	9899390
GetExp[4153]	=	9901779
GetExp[4154]	=	9904168
GetExp[4155]	=	9906557
GetExp[4156]	=	9908946
GetExp[4157]	=	9911334
GetExp[4158]	=	9913723
GetExp[4159]	=	9916112
GetExp[4160]	=	9918501
GetExp[4161]	=	9920890
GetExp[4162]	=	9923279
GetExp[4163]	=	9925668
GetExp[4164]	=	9928057
GetExp[4165]	=	9930446
GetExp[4166]	=	9932835
GetExp[4167]	=	9935224
GetExp[4168]	=	9937613
GetExp[4169]	=	9940002
GetExp[4170]	=	9942391
GetExp[4171]	=	9944780
GetExp[4172]	=	9947169
GetExp[4173]	=	9949557
GetExp[4174]	=	9951946
GetExp[4175]	=	9954335
GetExp[4176]	=	9956724
GetExp[4177]	=	9959113
GetExp[4178]	=	9961502
GetExp[4179]	=	9963891
GetExp[4180]	=	9966280
GetExp[4181]	=	9968669
GetExp[4182]	=	9971058
GetExp[4183]	=	9973447
GetExp[4184]	=	9975836
GetExp[4185]	=	9978225
GetExp[4186]	=	9980614
GetExp[4187]	=	9983003
GetExp[4188]	=	9985392
GetExp[4189]	=	9987780
GetExp[4190]	=	9990169
GetExp[4191]	=	9992558
GetExp[4192]	=	9994947
GetExp[4193]	=	9997336
GetExp[4194]	=	9999725
GetExp[4195]	=	10002114
GetExp[4196]	=	10004503
GetExp[4197]	=	10006892
GetExp[4198]	=	10009281
GetExp[4199]	=	10011670
GetExp[4200]	=	10014059
GetExp[4201]	=	10016448
GetExp[4202]	=	10018837
GetExp[4203]	=	10021226
GetExp[4204]	=	10023614
GetExp[4205]	=	10026003
GetExp[4206]	=	10028392
GetExp[4207]	=	10030781
GetExp[4208]	=	10033170
GetExp[4209]	=	10035559
GetExp[4210]	=	10037948
GetExp[4211]	=	10040337
GetExp[4212]	=	10042726
GetExp[4213]	=	10045115
GetExp[4214]	=	10047504
GetExp[4215]	=	10049893
GetExp[4216]	=	10052282
GetExp[4217]	=	10054671
GetExp[4218]	=	10057060
GetExp[4219]	=	10059449
GetExp[4220]	=	10061837
GetExp[4221]	=	10064226
GetExp[4222]	=	10066615
GetExp[4223]	=	10069004
GetExp[4224]	=	10071393
GetExp[4225]	=	10073782
GetExp[4226]	=	10076171
GetExp[4227]	=	10078560
GetExp[4228]	=	10080949
GetExp[4229]	=	10083338
GetExp[4230]	=	10085727
GetExp[4231]	=	10088116
GetExp[4232]	=	10090505
GetExp[4233]	=	10092894
GetExp[4234]	=	10095283
GetExp[4235]	=	10097672
GetExp[4236]	=	10100060
GetExp[4237]	=	10102449
GetExp[4238]	=	10104838
GetExp[4239]	=	10107227
GetExp[4240]	=	10109616
GetExp[4241]	=	10112005
GetExp[4242]	=	10114394
GetExp[4243]	=	10116783
GetExp[4244]	=	10119172
GetExp[4245]	=	10121561
GetExp[4246]	=	10123950
GetExp[4247]	=	10126339
GetExp[4248]	=	10128728
GetExp[4249]	=	10131117
GetExp[4250]	=	10133506
GetExp[4251]	=	10135895
GetExp[4252]	=	10138283
GetExp[4253]	=	10140672
GetExp[4254]	=	10143061
GetExp[4255]	=	10145450
GetExp[4256]	=	10147839
GetExp[4257]	=	10150228
GetExp[4258]	=	10152617
GetExp[4259]	=	10155006
GetExp[4260]	=	10157395
GetExp[4261]	=	10159784
GetExp[4262]	=	10162173
GetExp[4263]	=	10164562
GetExp[4264]	=	10166951
GetExp[4265]	=	10169340
GetExp[4266]	=	10171729
GetExp[4267]	=	10174117
GetExp[4268]	=	10176506
GetExp[4269]	=	10178895
GetExp[4270]	=	10181284
GetExp[4271]	=	10183673
GetExp[4272]	=	10186062
GetExp[4273]	=	10188451
GetExp[4274]	=	10190840
GetExp[4275]	=	10193229
GetExp[4276]	=	10195618
GetExp[4277]	=	10198007
GetExp[4278]	=	10200396
GetExp[4279]	=	10202785
GetExp[4280]	=	10205174
GetExp[4281]	=	10207563
GetExp[4282]	=	10209952
GetExp[4283]	=	10212340
GetExp[4284]	=	10214729
GetExp[4285]	=	10217118
GetExp[4286]	=	10219507
GetExp[4287]	=	10221896
GetExp[4288]	=	10224285
GetExp[4289]	=	10226674
GetExp[4290]	=	10229063
GetExp[4291]	=	10231452
GetExp[4292]	=	10233841
GetExp[4293]	=	10236230
GetExp[4294]	=	10238619
GetExp[4295]	=	10241008
GetExp[4296]	=	10243397
GetExp[4297]	=	10245786
GetExp[4298]	=	10248175
GetExp[4299]	=	10250563
GetExp[4300]	=	10252952
GetExp[4301]	=	10255341
GetExp[4302]	=	10257730
GetExp[4303]	=	10260119
GetExp[4304]	=	10262508
GetExp[4305]	=	10264897
GetExp[4306]	=	10267286
GetExp[4307]	=	10269675
GetExp[4308]	=	10272064
GetExp[4309]	=	10274453
GetExp[4310]	=	10276842
GetExp[4311]	=	10279231
GetExp[4312]	=	10281620
GetExp[4313]	=	10284009
GetExp[4314]	=	10286398
GetExp[4315]	=	10288786
GetExp[4316]	=	10291175
GetExp[4317]	=	10293564
GetExp[4318]	=	10295953
GetExp[4319]	=	10298342
GetExp[4320]	=	10300731
GetExp[4321]	=	10303120
GetExp[4322]	=	10305509
GetExp[4323]	=	10307898
GetExp[4324]	=	10310287
GetExp[4325]	=	10312676
GetExp[4326]	=	10315065
GetExp[4327]	=	10317454
GetExp[4328]	=	10319843
GetExp[4329]	=	10322232
GetExp[4330]	=	10324620
GetExp[4331]	=	10327009
GetExp[4332]	=	10329398
GetExp[4333]	=	10331787
GetExp[4334]	=	10334176
GetExp[4335]	=	10336565
GetExp[4336]	=	10338954
GetExp[4337]	=	10341343
GetExp[4338]	=	10343732
GetExp[4339]	=	10346121
GetExp[4340]	=	10348510
GetExp[4341]	=	10350899
GetExp[4342]	=	10353288
GetExp[4343]	=	10355677
GetExp[4344]	=	10358066
GetExp[4345]	=	10360455
GetExp[4346]	=	10362843
GetExp[4347]	=	10365232
GetExp[4348]	=	10367621
GetExp[4349]	=	10370010
GetExp[4350]	=	10372399
GetExp[4351]	=	10374788
GetExp[4352]	=	10377177
GetExp[4353]	=	10379566
GetExp[4354]	=	10381955
GetExp[4355]	=	10384344
GetExp[4356]	=	10386733
GetExp[4357]	=	10389122
GetExp[4358]	=	10391511
GetExp[4359]	=	10393900
GetExp[4360]	=	10396289
GetExp[4361]	=	10398678
GetExp[4362]	=	10401066
GetExp[4363]	=	10403455
GetExp[4364]	=	10405844
GetExp[4365]	=	10408233
GetExp[4366]	=	10410622
GetExp[4367]	=	10413011
GetExp[4368]	=	10415400
GetExp[4369]	=	10417789
GetExp[4370]	=	10420178
GetExp[4371]	=	10422567
GetExp[4372]	=	10424956
GetExp[4373]	=	10427345
GetExp[4374]	=	10429734
GetExp[4375]	=	10432123
GetExp[4376]	=	10434512
GetExp[4377]	=	10436900
GetExp[4378]	=	10439289
GetExp[4379]	=	10441678
GetExp[4380]	=	10444067
GetExp[4381]	=	10446456
GetExp[4382]	=	10448845
GetExp[4383]	=	10451234
GetExp[4384]	=	10453623
GetExp[4385]	=	10456012
GetExp[4386]	=	10458401
GetExp[4387]	=	10460790
GetExp[4388]	=	10463179
GetExp[4389]	=	10465568
GetExp[4390]	=	10467957
GetExp[4391]	=	10470346
GetExp[4392]	=	10472735
GetExp[4393]	=	10475123
GetExp[4394]	=	10477512
GetExp[4395]	=	10479901
GetExp[4396]	=	10482290
GetExp[4397]	=	10484679
GetExp[4398]	=	10487068
GetExp[4399]	=	10489457
GetExp[4400]	=	10491846
GetExp[4401]	=	10494235
GetExp[4402]	=	10496624
GetExp[4403]	=	10499013
GetExp[4404]	=	10501402
GetExp[4405]	=	10503791
GetExp[4406]	=	10506180
GetExp[4407]	=	10508569
GetExp[4408]	=	10510958
GetExp[4409]	=	10513346
GetExp[4410]	=	10515735
GetExp[4411]	=	10518124
GetExp[4412]	=	10520513
GetExp[4413]	=	10522902
GetExp[4414]	=	10525291
GetExp[4415]	=	10527680
GetExp[4416]	=	10530069
GetExp[4417]	=	10532458
GetExp[4418]	=	10534847
GetExp[4419]	=	10537236
GetExp[4420]	=	10539625
GetExp[4421]	=	10542014
GetExp[4422]	=	10544403
GetExp[4423]	=	10546792
GetExp[4424]	=	10549181
GetExp[4425]	=	10551569
GetExp[4426]	=	10553958
GetExp[4427]	=	10556347
GetExp[4428]	=	10558736
GetExp[4429]	=	10561125
GetExp[4430]	=	10563514
GetExp[4431]	=	10565903
GetExp[4432]	=	10568292
GetExp[4433]	=	10570681
GetExp[4434]	=	10573070
GetExp[4435]	=	10575459
GetExp[4436]	=	10577848
GetExp[4437]	=	10580237
GetExp[4438]	=	10582626
GetExp[4439]	=	10585015
GetExp[4440]	=	10587403
GetExp[4441]	=	10589792
GetExp[4442]	=	10592181
GetExp[4443]	=	10594570
GetExp[4444]	=	10596959
GetExp[4445]	=	10599348
GetExp[4446]	=	10601737
GetExp[4447]	=	10604126
GetExp[4448]	=	10606515
GetExp[4449]	=	10608904
GetExp[4450]	=	10611293
GetExp[4451]	=	10613682
GetExp[4452]	=	10616071
GetExp[4453]	=	10618460
GetExp[4454]	=	10620849
GetExp[4455]	=	10623238
GetExp[4456]	=	10625626
GetExp[4457]	=	10628015
GetExp[4458]	=	10630404
GetExp[4459]	=	10632793
GetExp[4460]	=	10635182
GetExp[4461]	=	10637571
GetExp[4462]	=	10639960
GetExp[4463]	=	10642349
GetExp[4464]	=	10644738
GetExp[4465]	=	10647127
GetExp[4466]	=	10649516
GetExp[4467]	=	10651905
GetExp[4468]	=	10654294
GetExp[4469]	=	10656683
GetExp[4470]	=	10659072
GetExp[4471]	=	10661461
GetExp[4472]	=	10663849
GetExp[4473]	=	10666238
GetExp[4474]	=	10668627
GetExp[4475]	=	10671016
GetExp[4476]	=	10673405
GetExp[4477]	=	10675794
GetExp[4478]	=	10678183
GetExp[4479]	=	10680572
GetExp[4480]	=	10682961
GetExp[4481]	=	10685350
GetExp[4482]	=	10687739
GetExp[4483]	=	10690128
GetExp[4484]	=	10692517
GetExp[4485]	=	10694906
GetExp[4486]	=	10697295
GetExp[4487]	=	10699684
GetExp[4488]	=	10702072
GetExp[4489]	=	10704461
GetExp[4490]	=	10706850
GetExp[4491]	=	10709239
GetExp[4492]	=	10711628
GetExp[4493]	=	10714017
GetExp[4494]	=	10716406
GetExp[4495]	=	10718795
GetExp[4496]	=	10721184
GetExp[4497]	=	10723573
GetExp[4498]	=	10725962
GetExp[4499]	=	10728351
GetExp[4500]	=	10730740
GetExp[4501]	=	10733129
GetExp[4502]	=	10735518
GetExp[4503]	=	10737906
GetExp[4504]	=	10740295
GetExp[4505]	=	10742684
GetExp[4506]	=	10745073
GetExp[4507]	=	10747462
GetExp[4508]	=	10749851
GetExp[4509]	=	10752240
GetExp[4510]	=	10754629
GetExp[4511]	=	10757018
GetExp[4512]	=	10759407
GetExp[4513]	=	10761796
GetExp[4514]	=	10764185
GetExp[4515]	=	10766574
GetExp[4516]	=	10768963
GetExp[4517]	=	10771352
GetExp[4518]	=	10773741
GetExp[4519]	=	10776129
GetExp[4520]	=	10778518
GetExp[4521]	=	10780907
GetExp[4522]	=	10783296
GetExp[4523]	=	10785685
GetExp[4524]	=	10788074
GetExp[4525]	=	10790463
GetExp[4526]	=	10792852
GetExp[4527]	=	10795241
GetExp[4528]	=	10797630
GetExp[4529]	=	10800019
GetExp[4530]	=	10802408
GetExp[4531]	=	10804797
GetExp[4532]	=	10807186
GetExp[4533]	=	10809575
GetExp[4534]	=	10811964
GetExp[4535]	=	10814352
GetExp[4536]	=	10816741
GetExp[4537]	=	10819130
GetExp[4538]	=	10821519
GetExp[4539]	=	10823908
GetExp[4540]	=	10826297
GetExp[4541]	=	10828686
GetExp[4542]	=	10831075
GetExp[4543]	=	10833464
GetExp[4544]	=	10835853
GetExp[4545]	=	10838242
GetExp[4546]	=	10840631
GetExp[4547]	=	10843020
GetExp[4548]	=	10845409
GetExp[4549]	=	10847798
GetExp[4550]	=	10850187
GetExp[4551]	=	10852575
GetExp[4552]	=	10854964
GetExp[4553]	=	10857353
GetExp[4554]	=	10859742
GetExp[4555]	=	10862131
GetExp[4556]	=	10864520
GetExp[4557]	=	10866909
GetExp[4558]	=	10869298
GetExp[4559]	=	10871687
GetExp[4560]	=	10874076
GetExp[4561]	=	10876465
GetExp[4562]	=	10878854
GetExp[4563]	=	10881243
GetExp[4564]	=	10883632
GetExp[4565]	=	10886021
GetExp[4566]	=	10888409
GetExp[4567]	=	10890798
GetExp[4568]	=	10893187
GetExp[4569]	=	10895576
GetExp[4570]	=	10897965
GetExp[4571]	=	10900354
GetExp[4572]	=	10902743
GetExp[4573]	=	10905132
GetExp[4574]	=	10907521
GetExp[4575]	=	10909910
GetExp[4576]	=	10912299
GetExp[4577]	=	10914688
GetExp[4578]	=	10917077
GetExp[4579]	=	10919466
GetExp[4580]	=	10921855
GetExp[4581]	=	10924244
GetExp[4582]	=	10926632
GetExp[4583]	=	10929021
GetExp[4584]	=	10931410
GetExp[4585]	=	10933799
GetExp[4586]	=	10936188
GetExp[4587]	=	10938577
GetExp[4588]	=	10940966
GetExp[4589]	=	10943355
GetExp[4590]	=	10945744
GetExp[4591]	=	10948133
GetExp[4592]	=	10950522
GetExp[4593]	=	10952911
GetExp[4594]	=	10955300
GetExp[4595]	=	10957689
GetExp[4596]	=	10960078
GetExp[4597]	=	10962467
GetExp[4598]	=	10964855
GetExp[4599]	=	10967244
GetExp[4600]	=	10969633
GetExp[4601]	=	10972022
GetExp[4602]	=	10974411
GetExp[4603]	=	10976800
GetExp[4604]	=	10979189
GetExp[4605]	=	10981578
GetExp[4606]	=	10983967
GetExp[4607]	=	10986356
GetExp[4608]	=	10988745
GetExp[4609]	=	10991134
GetExp[4610]	=	10993523
GetExp[4611]	=	10995912
GetExp[4612]	=	10998301
GetExp[4613]	=	11000690
GetExp[4614]	=	11003078
GetExp[4615]	=	11005467
GetExp[4616]	=	11007856
GetExp[4617]	=	11010245
GetExp[4618]	=	11012634
GetExp[4619]	=	11015023
GetExp[4620]	=	11017412
GetExp[4621]	=	11019801
GetExp[4622]	=	11022190
GetExp[4623]	=	11024579
GetExp[4624]	=	11026968
GetExp[4625]	=	11029357
GetExp[4626]	=	11031746
GetExp[4627]	=	11034135
GetExp[4628]	=	11036524
GetExp[4629]	=	11038912
GetExp[4630]	=	11041301
GetExp[4631]	=	11043690
GetExp[4632]	=	11046079
GetExp[4633]	=	11048468
GetExp[4634]	=	11050857
GetExp[4635]	=	11053246
GetExp[4636]	=	11055635
GetExp[4637]	=	11058024
GetExp[4638]	=	11060413
GetExp[4639]	=	11062802
GetExp[4640]	=	11065191
GetExp[4641]	=	11067580
GetExp[4642]	=	11069969
GetExp[4643]	=	11072358
GetExp[4644]	=	11074747
GetExp[4645]	=	11077135
GetExp[4646]	=	11079524
GetExp[4647]	=	11081913
GetExp[4648]	=	11084302
GetExp[4649]	=	11086691
GetExp[4650]	=	11089080
GetExp[4651]	=	11091469
GetExp[4652]	=	11093858
GetExp[4653]	=	11096247
GetExp[4654]	=	11098636
GetExp[4655]	=	11101025
GetExp[4656]	=	11103414
GetExp[4657]	=	11105803
GetExp[4658]	=	11108192
GetExp[4659]	=	11110581
GetExp[4660]	=	11112970
GetExp[4661]	=	11115358
GetExp[4662]	=	11117747
GetExp[4663]	=	11120136
GetExp[4664]	=	11122525
GetExp[4665]	=	11124914
GetExp[4666]	=	11127303
GetExp[4667]	=	11129692
GetExp[4668]	=	11132081
GetExp[4669]	=	11134470
GetExp[4670]	=	11136859
GetExp[4671]	=	11139248
GetExp[4672]	=	11141637
GetExp[4673]	=	11144026
GetExp[4674]	=	11146415
GetExp[4675]	=	11148804
GetExp[4676]	=	11151192
GetExp[4677]	=	11153581
GetExp[4678]	=	11155970
GetExp[4679]	=	11158359
GetExp[4680]	=	11160748
GetExp[4681]	=	11163137
GetExp[4682]	=	11165526
GetExp[4683]	=	11167915
GetExp[4684]	=	11170304
GetExp[4685]	=	11172693
GetExp[4686]	=	11175082
GetExp[4687]	=	11177471
GetExp[4688]	=	11179860
GetExp[4689]	=	11182249
GetExp[4690]	=	11184638
GetExp[4691]	=	11187027
GetExp[4692]	=	11189415
GetExp[4693]	=	11191804
GetExp[4694]	=	11194193
GetExp[4695]	=	11196582
GetExp[4696]	=	11198971
GetExp[4697]	=	11201360
GetExp[4698]	=	11203749
GetExp[4699]	=	11206138
GetExp[4700]	=	11208527
GetExp[4701]	=	11210916
GetExp[4702]	=	11213305
GetExp[4703]	=	11215694
GetExp[4704]	=	11218083
GetExp[4705]	=	11220472
GetExp[4706]	=	11222861
GetExp[4707]	=	11225250
GetExp[4708]	=	11227638
GetExp[4709]	=	11230027
GetExp[4710]	=	11232416
GetExp[4711]	=	11234805
GetExp[4712]	=	11237194
GetExp[4713]	=	11239583
GetExp[4714]	=	11241972
GetExp[4715]	=	11244361
GetExp[4716]	=	11246750
GetExp[4717]	=	11249139
GetExp[4718]	=	11251528
GetExp[4719]	=	11253917
GetExp[4720]	=	11256306
GetExp[4721]	=	11258695
GetExp[4722]	=	11261084
GetExp[4723]	=	11263473
GetExp[4724]	=	11265861
GetExp[4725]	=	11268250
GetExp[4726]	=	11270639
GetExp[4727]	=	11273028
GetExp[4728]	=	11275417
GetExp[4729]	=	11277806
GetExp[4730]	=	11280195
GetExp[4731]	=	11282584
GetExp[4732]	=	11284973
GetExp[4733]	=	11287362
GetExp[4734]	=	11289751
GetExp[4735]	=	11292140
GetExp[4736]	=	11294529
GetExp[4737]	=	11296918
GetExp[4738]	=	11299307
GetExp[4739]	=	11301695
GetExp[4740]	=	11304084
GetExp[4741]	=	11306473
GetExp[4742]	=	11308862
GetExp[4743]	=	11311251
GetExp[4744]	=	11313640
GetExp[4745]	=	11316029
GetExp[4746]	=	11318418
GetExp[4747]	=	11320807
GetExp[4748]	=	11323196
GetExp[4749]	=	11325585
GetExp[4750]	=	11327974
GetExp[4751]	=	11330363
GetExp[4752]	=	11332752
GetExp[4753]	=	11335141
GetExp[4754]	=	11337530
GetExp[4755]	=	11339918
GetExp[4756]	=	11342307
GetExp[4757]	=	11344696
GetExp[4758]	=	11347085
GetExp[4759]	=	11349474
GetExp[4760]	=	11351863
GetExp[4761]	=	11354252
GetExp[4762]	=	11356641
GetExp[4763]	=	11359030
GetExp[4764]	=	11361419
GetExp[4765]	=	11363808
GetExp[4766]	=	11366197
GetExp[4767]	=	11368586
GetExp[4768]	=	11370975
GetExp[4769]	=	11373364
GetExp[4770]	=	11375753
GetExp[4771]	=	11378141
GetExp[4772]	=	11380530
GetExp[4773]	=	11382919
GetExp[4774]	=	11385308
GetExp[4775]	=	11387697
GetExp[4776]	=	11390086
GetExp[4777]	=	11392475
GetExp[4778]	=	11394864
GetExp[4779]	=	11397253
GetExp[4780]	=	11399642
GetExp[4781]	=	11402031
GetExp[4782]	=	11404420
GetExp[4783]	=	11406809
GetExp[4784]	=	11409198
GetExp[4785]	=	11411587
GetExp[4786]	=	11413976
GetExp[4787]	=	11416364
GetExp[4788]	=	11418753
GetExp[4789]	=	11421142
GetExp[4790]	=	11423531
GetExp[4791]	=	11425920
GetExp[4792]	=	11428309
GetExp[4793]	=	11430698
GetExp[4794]	=	11433087
GetExp[4795]	=	11435476
GetExp[4796]	=	11437865
GetExp[4797]	=	11440254
GetExp[4798]	=	11442643
GetExp[4799]	=	11445032
GetExp[4800]	=	11447421
GetExp[4801]	=	11449810
GetExp[4802]	=	11452198
GetExp[4803]	=	11454587
GetExp[4804]	=	11456976
GetExp[4805]	=	11459365
GetExp[4806]	=	11461754
GetExp[4807]	=	11464143
GetExp[4808]	=	11466532
GetExp[4809]	=	11468921
GetExp[4810]	=	11471310
GetExp[4811]	=	11473699
GetExp[4812]	=	11476088
GetExp[4813]	=	11478477
GetExp[4814]	=	11480866
GetExp[4815]	=	11483255
GetExp[4816]	=	11485644
GetExp[4817]	=	11488033
GetExp[4818]	=	11490421
GetExp[4819]	=	11492810
GetExp[4820]	=	11495199
GetExp[4821]	=	11497588
GetExp[4822]	=	11499977
GetExp[4823]	=	11502366
GetExp[4824]	=	11504755
GetExp[4825]	=	11507144
GetExp[4826]	=	11509533
GetExp[4827]	=	11511922
GetExp[4828]	=	11514311
GetExp[4829]	=	11516700
GetExp[4830]	=	11519089
GetExp[4831]	=	11521478
GetExp[4832]	=	11523867
GetExp[4833]	=	11526256
GetExp[4834]	=	11528644
GetExp[4835]	=	11531033
GetExp[4836]	=	11533422
GetExp[4837]	=	11535811
GetExp[4838]	=	11538200
GetExp[4839]	=	11540589
GetExp[4840]	=	11542978
GetExp[4841]	=	11545367
GetExp[4842]	=	11547756
GetExp[4843]	=	11550145
GetExp[4844]	=	11552534
GetExp[4845]	=	11554923
GetExp[4846]	=	11557312
GetExp[4847]	=	11559701
GetExp[4848]	=	11562090
GetExp[4849]	=	11564479
GetExp[4850]	=	11566867
GetExp[4851]	=	11569256
GetExp[4852]	=	11571645
GetExp[4853]	=	11574034
GetExp[4854]	=	11576423
GetExp[4855]	=	11578812
GetExp[4856]	=	11581201
GetExp[4857]	=	11583590
GetExp[4858]	=	11585979
GetExp[4859]	=	11588368
GetExp[4860]	=	11590757
GetExp[4861]	=	11593146
GetExp[4862]	=	11595535
GetExp[4863]	=	11597924
GetExp[4864]	=	11600313
GetExp[4865]	=	11602701
GetExp[4866]	=	11605090
GetExp[4867]	=	11607479
GetExp[4868]	=	11609868
GetExp[4869]	=	11612257
GetExp[4870]	=	11614646
GetExp[4871]	=	11617035
GetExp[4872]	=	11619424
GetExp[4873]	=	11621813
GetExp[4874]	=	11624202
GetExp[4875]	=	11626591
GetExp[4876]	=	11628980
GetExp[4877]	=	11631369
GetExp[4878]	=	11633758
GetExp[4879]	=	11636147
GetExp[4880]	=	11638536
GetExp[4881]	=	11640924
GetExp[4882]	=	11643313
GetExp[4883]	=	11645702
GetExp[4884]	=	11648091
GetExp[4885]	=	11650480
GetExp[4886]	=	11652869
GetExp[4887]	=	11655258
GetExp[4888]	=	11657647
GetExp[4889]	=	11660036
GetExp[4890]	=	11662425
GetExp[4891]	=	11664814
GetExp[4892]	=	11667203
GetExp[4893]	=	11669592
GetExp[4894]	=	11671981
GetExp[4895]	=	11674370
GetExp[4896]	=	11676759
GetExp[4897]	=	11679147
GetExp[4898]	=	11681536
GetExp[4899]	=	11683925
GetExp[4900]	=	11686314
GetExp[4901]	=	11688703
GetExp[4902]	=	11691092
GetExp[4903]	=	11693481
GetExp[4904]	=	11695870
GetExp[4905]	=	11698259
GetExp[4906]	=	11700648
GetExp[4907]	=	11703037
GetExp[4908]	=	11705426
GetExp[4909]	=	11707815
GetExp[4910]	=	11710204
GetExp[4911]	=	11712593
GetExp[4912]	=	11714982
GetExp[4913]	=	11717370
GetExp[4914]	=	11719759
GetExp[4915]	=	11722148
GetExp[4916]	=	11724537
GetExp[4917]	=	11726926
GetExp[4918]	=	11729315
GetExp[4919]	=	11731704
GetExp[4920]	=	11734093
GetExp[4921]	=	11736482
GetExp[4922]	=	11738871
GetExp[4923]	=	11741260
GetExp[4924]	=	11743649
GetExp[4925]	=	11746038
GetExp[4926]	=	11748427
GetExp[4927]	=	11750816
GetExp[4928]	=	11753204
GetExp[4929]	=	11755593
GetExp[4930]	=	11757982
GetExp[4931]	=	11760371
GetExp[4932]	=	11762760
GetExp[4933]	=	11765149
GetExp[4934]	=	11767538
GetExp[4935]	=	11769927
GetExp[4936]	=	11772316
GetExp[4937]	=	11774705
GetExp[4938]	=	11777094
GetExp[4939]	=	11779483
GetExp[4940]	=	11781872
GetExp[4941]	=	11784261
GetExp[4942]	=	11786650
GetExp[4943]	=	11789039
GetExp[4944]	=	11791427
GetExp[4945]	=	11793816
GetExp[4946]	=	11796205
GetExp[4947]	=	11798594
GetExp[4948]	=	11800983
GetExp[4949]	=	11803372
GetExp[4950]	=	11805761
GetExp[4951]	=	11808150
GetExp[4952]	=	11810539
GetExp[4953]	=	11812928
GetExp[4954]	=	11815317
GetExp[4955]	=	11817706
GetExp[4956]	=	11820095
GetExp[4957]	=	11822484
GetExp[4958]	=	11824873
GetExp[4959]	=	11827262
GetExp[4960]	=	11829650
GetExp[4961]	=	11832039
GetExp[4962]	=	11834428
GetExp[4963]	=	11836817
GetExp[4964]	=	11839206
GetExp[4965]	=	11841595
GetExp[4966]	=	11843984
GetExp[4967]	=	11846373
GetExp[4968]	=	11848762
GetExp[4969]	=	11851151
GetExp[4970]	=	11853540
GetExp[4971]	=	11855929
GetExp[4972]	=	11858318
GetExp[4973]	=	11860707
GetExp[4974]	=	11863096
GetExp[4975]	=	11865484
GetExp[4976]	=	11867873
GetExp[4977]	=	11870262
GetExp[4978]	=	11872651
GetExp[4979]	=	11875040
GetExp[4980]	=	11877429
GetExp[4981]	=	11879818
GetExp[4982]	=	11882207
GetExp[4983]	=	11884596
GetExp[4984]	=	11886985
GetExp[4985]	=	11889374
GetExp[4986]	=	11891763
GetExp[4987]	=	11894152
GetExp[4988]	=	11896541
GetExp[4989]	=	11898930
GetExp[4990]	=	11901319
GetExp[4991]	=	11903707
GetExp[4992]	=	11906096
GetExp[4993]	=	11908485
GetExp[4994]	=	11910874
GetExp[4995]	=	11913263
GetExp[4996]	=	11915652
GetExp[4997]	=	11918041
GetExp[4998]	=	11920430
GetExp[4999]	=	11922819
GetExp[5000]	=	11925208
GetExp[5001]	=	11927597
GetExp[5002]	=	11929986
GetExp[5003]	=	11932375
GetExp[5004]	=	11934764
GetExp[5005]	=	11937153
GetExp[5006]	=	11939542
GetExp[5007]	=	11941930
GetExp[5008]	=	11944319
GetExp[5009]	=	11946708
GetExp[5010]	=	11949097
GetExp[5011]	=	11951486
GetExp[5012]	=	11953875
GetExp[5013]	=	11956264
GetExp[5014]	=	11958653
GetExp[5015]	=	11961042
GetExp[5016]	=	11963431
GetExp[5017]	=	11965820
GetExp[5018]	=	11968209
GetExp[5019]	=	11970598
GetExp[5020]	=	11972987
GetExp[5021]	=	11975376
GetExp[5022]	=	11977765
GetExp[5023]	=	11980153
GetExp[5024]	=	11982542
GetExp[5025]	=	11984931
GetExp[5026]	=	11987320
GetExp[5027]	=	11989709
GetExp[5028]	=	11992098
GetExp[5029]	=	11994487
GetExp[5030]	=	11996876
GetExp[5031]	=	11999265
GetExp[5032]	=	12001654
GetExp[5033]	=	12004043
GetExp[5034]	=	12006432
GetExp[5035]	=	12008821
GetExp[5036]	=	12011210
GetExp[5037]	=	12013599
GetExp[5038]	=	12015987
GetExp[5039]	=	12018376
GetExp[5040]	=	12020765
GetExp[5041]	=	12023154
GetExp[5042]	=	12025543
GetExp[5043]	=	12027932
GetExp[5044]	=	12030321
GetExp[5045]	=	12032710
GetExp[5046]	=	12035099
GetExp[5047]	=	12037488
GetExp[5048]	=	12039877
GetExp[5049]	=	12042266
GetExp[5050]	=	12044655
GetExp[5051]	=	12047044
GetExp[5052]	=	12049433
GetExp[5053]	=	12051822
GetExp[5054]	=	12054210
GetExp[5055]	=	12056599
GetExp[5056]	=	12058988
GetExp[5057]	=	12061377
GetExp[5058]	=	12063766
GetExp[5059]	=	12066155
GetExp[5060]	=	12068544
GetExp[5061]	=	12070933
GetExp[5062]	=	12073322
GetExp[5063]	=	12075711
GetExp[5064]	=	12078100
GetExp[5065]	=	12080489
GetExp[5066]	=	12082878
GetExp[5067]	=	12085267
GetExp[5068]	=	12087656
GetExp[5069]	=	12090045
GetExp[5070]	=	12092433
GetExp[5071]	=	12094822
GetExp[5072]	=	12097211
GetExp[5073]	=	12099600
GetExp[5074]	=	12101989
GetExp[5075]	=	12104378
GetExp[5076]	=	12106767
GetExp[5077]	=	12109156
GetExp[5078]	=	12111545
GetExp[5079]	=	12113934
GetExp[5080]	=	12116323
GetExp[5081]	=	12118712
GetExp[5082]	=	12121101
GetExp[5083]	=	12123490
GetExp[5084]	=	12125879
GetExp[5085]	=	12128268
GetExp[5086]	=	12130656
GetExp[5087]	=	12133045
GetExp[5088]	=	12135434
GetExp[5089]	=	12137823
GetExp[5090]	=	12140212
GetExp[5091]	=	12142601
GetExp[5092]	=	12144990
GetExp[5093]	=	12147379
GetExp[5094]	=	12149768
GetExp[5095]	=	12152157
GetExp[5096]	=	12154546
GetExp[5097]	=	12156935
GetExp[5098]	=	12159324
GetExp[5099]	=	12161713
GetExp[5100]	=	12164102
GetExp[5101]	=	12166490
GetExp[5102]	=	12168879
GetExp[5103]	=	12171268
GetExp[5104]	=	12173657
GetExp[5105]	=	12176046
GetExp[5106]	=	12178435
GetExp[5107]	=	12180824
GetExp[5108]	=	12183213
GetExp[5109]	=	12185602
GetExp[5110]	=	12187991
GetExp[5111]	=	12190380
GetExp[5112]	=	12192769
GetExp[5113]	=	12195158
GetExp[5114]	=	12197547
GetExp[5115]	=	12199936
GetExp[5116]	=	12202325
GetExp[5117]	=	12204713
GetExp[5118]	=	12207102
GetExp[5119]	=	12209491
GetExp[5120]	=	12211880
GetExp[5121]	=	12214269
GetExp[5122]	=	12216658
GetExp[5123]	=	12219047
GetExp[5124]	=	12221436
GetExp[5125]	=	12223825
GetExp[5126]	=	12226214
GetExp[5127]	=	12228603
GetExp[5128]	=	12230992
GetExp[5129]	=	12233381
GetExp[5130]	=	12235770
GetExp[5131]	=	12238159
GetExp[5132]	=	12240548
GetExp[5133]	=	12242936
GetExp[5134]	=	12245325
GetExp[5135]	=	12247714
GetExp[5136]	=	12250103
GetExp[5137]	=	12252492
GetExp[5138]	=	12254881
GetExp[5139]	=	12257270
GetExp[5140]	=	12259659
GetExp[5141]	=	12262048
GetExp[5142]	=	12264437
GetExp[5143]	=	12266826
GetExp[5144]	=	12269215
GetExp[5145]	=	12271604
GetExp[5146]	=	12273993
GetExp[5147]	=	12276382
GetExp[5148]	=	12278771
GetExp[5149]	=	12281159
GetExp[5150]	=	12283548
GetExp[5151]	=	12285937
GetExp[5152]	=	12288326
GetExp[5153]	=	12290715
GetExp[5154]	=	12293104
GetExp[5155]	=	12295493
GetExp[5156]	=	12297882
GetExp[5157]	=	12300271
GetExp[5158]	=	12302660
GetExp[5159]	=	12305049
GetExp[5160]	=	12307438
GetExp[5161]	=	12309827
GetExp[5162]	=	12312216
GetExp[5163]	=	12314605
GetExp[5164]	=	12316993
GetExp[5165]	=	12319382
GetExp[5166]	=	12321771
GetExp[5167]	=	12324160
GetExp[5168]	=	12326549
GetExp[5169]	=	12328938
GetExp[5170]	=	12331327
GetExp[5171]	=	12333716
GetExp[5172]	=	12336105
GetExp[5173]	=	12338494
GetExp[5174]	=	12340883
GetExp[5175]	=	12343272
GetExp[5176]	=	12345661
GetExp[5177]	=	12348050
GetExp[5178]	=	12350439
GetExp[5179]	=	12352828
GetExp[5180]	=	12355216
GetExp[5181]	=	12357605
GetExp[5182]	=	12359994
GetExp[5183]	=	12362383
GetExp[5184]	=	12364772
GetExp[5185]	=	12367161
GetExp[5186]	=	12369550
GetExp[5187]	=	12371939
GetExp[5188]	=	12374328
GetExp[5189]	=	12376717
GetExp[5190]	=	12379106
GetExp[5191]	=	12381495
GetExp[5192]	=	12383884
GetExp[5193]	=	12386273
GetExp[5194]	=	12388662
GetExp[5195]	=	12391051
GetExp[5196]	=	12393439
GetExp[5197]	=	12395828
GetExp[5198]	=	12398217
GetExp[5199]	=	12400606
GetExp[5200]	=	12402995
GetExp[5201]	=	12405384
GetExp[5202]	=	12407773
GetExp[5203]	=	12410162
GetExp[5204]	=	12412551
GetExp[5205]	=	12414940
GetExp[5206]	=	12417329
GetExp[5207]	=	12419718
GetExp[5208]	=	12422107
GetExp[5209]	=	12424496
GetExp[5210]	=	12426885
GetExp[5211]	=	12429274
GetExp[5212]	=	12431662
GetExp[5213]	=	12434051
GetExp[5214]	=	12436440
GetExp[5215]	=	12438829
GetExp[5216]	=	12441218
GetExp[5217]	=	12443607
GetExp[5218]	=	12445996
GetExp[5219]	=	12448385
GetExp[5220]	=	12450774
GetExp[5221]	=	12453163
GetExp[5222]	=	12455552
GetExp[5223]	=	12457941
GetExp[5224]	=	12460330
GetExp[5225]	=	12462719
GetExp[5226]	=	12465108
GetExp[5227]	=	12467496
GetExp[5228]	=	12469885
GetExp[5229]	=	12472274
GetExp[5230]	=	12474663
GetExp[5231]	=	12477052
GetExp[5232]	=	12479441
GetExp[5233]	=	12481830
GetExp[5234]	=	12484219
GetExp[5235]	=	12486608
GetExp[5236]	=	12488997
GetExp[5237]	=	12491386
GetExp[5238]	=	12493775
GetExp[5239]	=	12496164
GetExp[5240]	=	12498553
GetExp[5241]	=	12500942
GetExp[5242]	=	12503331
GetExp[5243]	=	12505719
GetExp[5244]	=	12508108
GetExp[5245]	=	12510497
GetExp[5246]	=	12512886
GetExp[5247]	=	12515275
GetExp[5248]	=	12517664
GetExp[5249]	=	12520053
GetExp[5250]	=	12522442
GetExp[5251]	=	12524831
GetExp[5252]	=	12527220
GetExp[5253]	=	12529609
GetExp[5254]	=	12531998
GetExp[5255]	=	12534387
GetExp[5256]	=	12536776
GetExp[5257]	=	12539165
GetExp[5258]	=	12541554
GetExp[5259]	=	12543942
GetExp[5260]	=	12546331
GetExp[5261]	=	12548720
GetExp[5262]	=	12551109
GetExp[5263]	=	12553498
GetExp[5264]	=	12555887
GetExp[5265]	=	12558276
GetExp[5266]	=	12560665
GetExp[5267]	=	12563054
GetExp[5268]	=	12565443
GetExp[5269]	=	12567832
GetExp[5270]	=	12570221
GetExp[5271]	=	12572610
GetExp[5272]	=	12574999
GetExp[5273]	=	12577388
GetExp[5274]	=	12579776
GetExp[5275]	=	12582165
GetExp[5276]	=	12584554
GetExp[5277]	=	12586943
GetExp[5278]	=	12589332
GetExp[5279]	=	12591721
GetExp[5280]	=	12594110
GetExp[5281]	=	12596499
GetExp[5282]	=	12598888
GetExp[5283]	=	12601277
GetExp[5284]	=	12603666
GetExp[5285]	=	12606055
GetExp[5286]	=	12608444
GetExp[5287]	=	12610833
GetExp[5288]	=	12613222
GetExp[5289]	=	12615611
GetExp[5290]	=	12617999
GetExp[5291]	=	12620388
GetExp[5292]	=	12622777
GetExp[5293]	=	12625166
GetExp[5294]	=	12627555
GetExp[5295]	=	12629944
GetExp[5296]	=	12632333
GetExp[5297]	=	12634722
GetExp[5298]	=	12637111
GetExp[5299]	=	12639500
GetExp[5300]	=	12641889
GetExp[5301]	=	12644278
GetExp[5302]	=	12646667
GetExp[5303]	=	12649056
GetExp[5304]	=	12651445
GetExp[5305]	=	12653834
GetExp[5306]	=	12656222
GetExp[5307]	=	12658611
GetExp[5308]	=	12661000
GetExp[5309]	=	12663389
GetExp[5310]	=	12665778
GetExp[5311]	=	12668167
GetExp[5312]	=	12670556
GetExp[5313]	=	12672945
GetExp[5314]	=	12675334
GetExp[5315]	=	12677723
GetExp[5316]	=	12680112
GetExp[5317]	=	12682501
GetExp[5318]	=	12684890
GetExp[5319]	=	12687279
GetExp[5320]	=	12689668
GetExp[5321]	=	12692057
GetExp[5322]	=	12694445
GetExp[5323]	=	12696834
GetExp[5324]	=	12699223
GetExp[5325]	=	12701612
GetExp[5326]	=	12704001
GetExp[5327]	=	12706390
GetExp[5328]	=	12708779
GetExp[5329]	=	12711168
GetExp[5330]	=	12713557
GetExp[5331]	=	12715946
GetExp[5332]	=	12718335
GetExp[5333]	=	12720724
GetExp[5334]	=	12723113
GetExp[5335]	=	12725502
GetExp[5336]	=	12727891
GetExp[5337]	=	12730279
GetExp[5338]	=	12732668
GetExp[5339]	=	12735057
GetExp[5340]	=	12737446
GetExp[5341]	=	12739835
GetExp[5342]	=	12742224
GetExp[5343]	=	12744613
GetExp[5344]	=	12747002
GetExp[5345]	=	12749391
GetExp[5346]	=	12751780
GetExp[5347]	=	12754169
GetExp[5348]	=	12756558
GetExp[5349]	=	12758947
GetExp[5350]	=	12761336
GetExp[5351]	=	12763725
GetExp[5352]	=	12766114
GetExp[5353]	=	12768502
GetExp[5354]	=	12770891
GetExp[5355]	=	12773280
GetExp[5356]	=	12775669
GetExp[5357]	=	12778058
GetExp[5358]	=	12780447
GetExp[5359]	=	12782836
GetExp[5360]	=	12785225
GetExp[5361]	=	12787614
GetExp[5362]	=	12790003
GetExp[5363]	=	12792392
GetExp[5364]	=	12794781
GetExp[5365]	=	12797170
GetExp[5366]	=	12799559
GetExp[5367]	=	12801948
GetExp[5368]	=	12804337
GetExp[5369]	=	12806725
GetExp[5370]	=	12809114
GetExp[5371]	=	12811503
GetExp[5372]	=	12813892
GetExp[5373]	=	12816281
GetExp[5374]	=	12818670
GetExp[5375]	=	12821059
GetExp[5376]	=	12823448
GetExp[5377]	=	12825837
GetExp[5378]	=	12828226
GetExp[5379]	=	12830615
GetExp[5380]	=	12833004
GetExp[5381]	=	12835393
GetExp[5382]	=	12837782
GetExp[5383]	=	12840171
GetExp[5384]	=	12842560
GetExp[5385]	=	12844948
GetExp[5386]	=	12847337
GetExp[5387]	=	12849726
GetExp[5388]	=	12852115
GetExp[5389]	=	12854504
GetExp[5390]	=	12856893
GetExp[5391]	=	12859282
GetExp[5392]	=	12861671
GetExp[5393]	=	12864060
GetExp[5394]	=	12866449
GetExp[5395]	=	12868838
GetExp[5396]	=	12871227
GetExp[5397]	=	12873616
GetExp[5398]	=	12876005
GetExp[5399]	=	12878394
GetExp[5400]	=	12880782
GetExp[5401]	=	12883171
GetExp[5402]	=	12885560
GetExp[5403]	=	12887949
GetExp[5404]	=	12890338
GetExp[5405]	=	12892727
GetExp[5406]	=	12895116
GetExp[5407]	=	12897505
GetExp[5408]	=	12899894
GetExp[5409]	=	12902283
GetExp[5410]	=	12904672
GetExp[5411]	=	12907061
GetExp[5412]	=	12909450
GetExp[5413]	=	12911839
GetExp[5414]	=	12914228
GetExp[5415]	=	12916617
GetExp[5416]	=	12919005
GetExp[5417]	=	12921394
GetExp[5418]	=	12923783
GetExp[5419]	=	12926172
GetExp[5420]	=	12928561
GetExp[5421]	=	12930950
GetExp[5422]	=	12933339
GetExp[5423]	=	12935728
GetExp[5424]	=	12938117
GetExp[5425]	=	12940506
GetExp[5426]	=	12942895
GetExp[5427]	=	12945284
GetExp[5428]	=	12947673
GetExp[5429]	=	12950062
GetExp[5430]	=	12952451
GetExp[5431]	=	12954840
GetExp[5432]	=	12957228
GetExp[5433]	=	12959617
GetExp[5434]	=	12962006
GetExp[5435]	=	12964395
GetExp[5436]	=	12966784
GetExp[5437]	=	12969173
GetExp[5438]	=	12971562
GetExp[5439]	=	12973951
GetExp[5440]	=	12976340
GetExp[5441]	=	12978729
GetExp[5442]	=	12981118
GetExp[5443]	=	12983507
GetExp[5444]	=	12985896
GetExp[5445]	=	12988285
GetExp[5446]	=	12990674
GetExp[5447]	=	12993063
GetExp[5448]	=	12995451
GetExp[5449]	=	12997840
GetExp[5450]	=	13000229
GetExp[5451]	=	13002618
GetExp[5452]	=	13005007
GetExp[5453]	=	13007396
GetExp[5454]	=	13009785
GetExp[5455]	=	13012174
GetExp[5456]	=	13014563
GetExp[5457]	=	13016952
GetExp[5458]	=	13019341
GetExp[5459]	=	13021730
GetExp[5460]	=	13024119
GetExp[5461]	=	13026508
GetExp[5462]	=	13028897
GetExp[5463]	=	13031285
GetExp[5464]	=	13033674
GetExp[5465]	=	13036063
GetExp[5466]	=	13038452
GetExp[5467]	=	13040841
GetExp[5468]	=	13043230
GetExp[5469]	=	13045619
GetExp[5470]	=	13048008
GetExp[5471]	=	13050397
GetExp[5472]	=	13052786
GetExp[5473]	=	13055175
GetExp[5474]	=	13057564
GetExp[5475]	=	13059953
GetExp[5476]	=	13062342
GetExp[5477]	=	13064731
GetExp[5478]	=	13067120
GetExp[5479]	=	13069508
GetExp[5480]	=	13071897
GetExp[5481]	=	13074286
GetExp[5482]	=	13076675
GetExp[5483]	=	13079064
GetExp[5484]	=	13081453
GetExp[5485]	=	13083842
GetExp[5486]	=	13086231
GetExp[5487]	=	13088620
GetExp[5488]	=	13091009
GetExp[5489]	=	13093398
GetExp[5490]	=	13095787
GetExp[5491]	=	13098176
GetExp[5492]	=	13100565
GetExp[5493]	=	13102954
GetExp[5494]	=	13105343
GetExp[5495]	=	13107731
GetExp[5496]	=	13110120
GetExp[5497]	=	13112509
GetExp[5498]	=	13114898
GetExp[5499]	=	13117287
GetExp[5500]	=	13119676
GetExp[5501]	=	13122065
GetExp[5502]	=	13124454
GetExp[5503]	=	13126843
GetExp[5504]	=	13129232
GetExp[5505]	=	13131621
GetExp[5506]	=	13134010
GetExp[5507]	=	13136399
GetExp[5508]	=	13138788
GetExp[5509]	=	13141177
GetExp[5510]	=	13143565
GetExp[5511]	=	13145954
GetExp[5512]	=	13148343
GetExp[5513]	=	13150732
GetExp[5514]	=	13153121
GetExp[5515]	=	13155510
GetExp[5516]	=	13157899
GetExp[5517]	=	13160288
GetExp[5518]	=	13162677
GetExp[5519]	=	13165066
GetExp[5520]	=	13167455
GetExp[5521]	=	13169844
GetExp[5522]	=	13172233
GetExp[5523]	=	13174622
GetExp[5524]	=	13177011
GetExp[5525]	=	13179400
GetExp[5526]	=	13181788
GetExp[5527]	=	13184177
GetExp[5528]	=	13186566
GetExp[5529]	=	13188955
GetExp[5530]	=	13191344
GetExp[5531]	=	13193733
GetExp[5532]	=	13196122
GetExp[5533]	=	13198511
GetExp[5534]	=	13200900
GetExp[5535]	=	13203289
GetExp[5536]	=	13205678
GetExp[5537]	=	13208067
GetExp[5538]	=	13210456
GetExp[5539]	=	13212845
GetExp[5540]	=	13215234
GetExp[5541]	=	13217623
GetExp[5542]	=	13220011
GetExp[5543]	=	13222400
GetExp[5544]	=	13224789
GetExp[5545]	=	13227178
GetExp[5546]	=	13229567
GetExp[5547]	=	13231956
GetExp[5548]	=	13234345
GetExp[5549]	=	13236734
GetExp[5550]	=	13239123
GetExp[5551]	=	13241512
GetExp[5552]	=	13243901
GetExp[5553]	=	13246290
GetExp[5554]	=	13248679
GetExp[5555]	=	13251068
GetExp[5556]	=	13253457
GetExp[5557]	=	13255846
GetExp[5558]	=	13258234
GetExp[5559]	=	13260623
GetExp[5560]	=	13263012
GetExp[5561]	=	13265401
GetExp[5562]	=	13267790
GetExp[5563]	=	13270179
GetExp[5564]	=	13272568
GetExp[5565]	=	13274957
GetExp[5566]	=	13277346
GetExp[5567]	=	13279735
GetExp[5568]	=	13282124
GetExp[5569]	=	13284513
GetExp[5570]	=	13286902
GetExp[5571]	=	13289291
GetExp[5572]	=	13291680
GetExp[5573]	=	13294068
GetExp[5574]	=	13296457
GetExp[5575]	=	13298846
GetExp[5576]	=	13301235
GetExp[5577]	=	13303624
GetExp[5578]	=	13306013
GetExp[5579]	=	13308402
GetExp[5580]	=	13310791
GetExp[5581]	=	13313180
GetExp[5582]	=	13315569
GetExp[5583]	=	13317958
GetExp[5584]	=	13320347
GetExp[5585]	=	13322736
GetExp[5586]	=	13325125
GetExp[5587]	=	13327514
GetExp[5588]	=	13329903
GetExp[5589]	=	13332291
GetExp[5590]	=	13334680
GetExp[5591]	=	13337069
GetExp[5592]	=	13339458
GetExp[5593]	=	13341847
GetExp[5594]	=	13344236
GetExp[5595]	=	13346625
GetExp[5596]	=	13349014
GetExp[5597]	=	13351403
GetExp[5598]	=	13353792
GetExp[5599]	=	13356181
GetExp[5600]	=	13358570
GetExp[5601]	=	13360959
GetExp[5602]	=	13363348
GetExp[5603]	=	13365737
GetExp[5604]	=	13368126
GetExp[5605]	=	13370514
GetExp[5606]	=	13372903
GetExp[5607]	=	13375292
GetExp[5608]	=	13377681
GetExp[5609]	=	13380070
GetExp[5610]	=	13382459
GetExp[5611]	=	13384848
GetExp[5612]	=	13387237
GetExp[5613]	=	13389626
GetExp[5614]	=	13392015
GetExp[5615]	=	13394404
GetExp[5616]	=	13396793
GetExp[5617]	=	13399182
GetExp[5618]	=	13401571
GetExp[5619]	=	13403960
GetExp[5620]	=	13406349
GetExp[5621]	=	13408737
GetExp[5622]	=	13411126
GetExp[5623]	=	13413515
GetExp[5624]	=	13415904
GetExp[5625]	=	13418293
GetExp[5626]	=	13420682
GetExp[5627]	=	13423071
GetExp[5628]	=	13425460
GetExp[5629]	=	13427849
GetExp[5630]	=	13430238
GetExp[5631]	=	13432627
GetExp[5632]	=	13435016
GetExp[5633]	=	13437405
GetExp[5634]	=	13439794
GetExp[5635]	=	13442183
GetExp[5636]	=	13444571
GetExp[5637]	=	13446960
GetExp[5638]	=	13449349
GetExp[5639]	=	13451738
GetExp[5640]	=	13454127
GetExp[5641]	=	13456516
GetExp[5642]	=	13458905
GetExp[5643]	=	13461294
GetExp[5644]	=	13463683
GetExp[5645]	=	13466072
GetExp[5646]	=	13468461
GetExp[5647]	=	13470850
GetExp[5648]	=	13473239
GetExp[5649]	=	13475628
GetExp[5650]	=	13478017
GetExp[5651]	=	13480406
GetExp[5652]	=	13482794
GetExp[5653]	=	13485183
GetExp[5654]	=	13487572
GetExp[5655]	=	13489961
GetExp[5656]	=	13492350
GetExp[5657]	=	13494739
GetExp[5658]	=	13497128
GetExp[5659]	=	13499517
GetExp[5660]	=	13501906
GetExp[5661]	=	13504295
GetExp[5662]	=	13506684
GetExp[5663]	=	13509073
GetExp[5664]	=	13511462
GetExp[5665]	=	13513851
GetExp[5666]	=	13516240
GetExp[5667]	=	13518629
GetExp[5668]	=	13521017
GetExp[5669]	=	13523406
GetExp[5670]	=	13525795
GetExp[5671]	=	13528184
GetExp[5672]	=	13530573
GetExp[5673]	=	13532962
GetExp[5674]	=	13535351
GetExp[5675]	=	13537740
GetExp[5676]	=	13540129
GetExp[5677]	=	13542518
GetExp[5678]	=	13544907
GetExp[5679]	=	13547296
GetExp[5680]	=	13549685
GetExp[5681]	=	13552074
GetExp[5682]	=	13554463
GetExp[5683]	=	13556852
GetExp[5684]	=	13559240
GetExp[5685]	=	13561629
GetExp[5686]	=	13564018
GetExp[5687]	=	13566407
GetExp[5688]	=	13568796
GetExp[5689]	=	13571185
GetExp[5690]	=	13573574
GetExp[5691]	=	13575963
GetExp[5692]	=	13578352
GetExp[5693]	=	13580741
GetExp[5694]	=	13583130
GetExp[5695]	=	13585519
GetExp[5696]	=	13587908
GetExp[5697]	=	13590297
GetExp[5698]	=	13592686
GetExp[5699]	=	13595074
GetExp[5700]	=	13597463
GetExp[5701]	=	13599852
GetExp[5702]	=	13602241
GetExp[5703]	=	13604630
GetExp[5704]	=	13607019
GetExp[5705]	=	13609408
GetExp[5706]	=	13611797
GetExp[5707]	=	13614186
GetExp[5708]	=	13616575
GetExp[5709]	=	13618964
GetExp[5710]	=	13621353
GetExp[5711]	=	13623742
GetExp[5712]	=	13626131
GetExp[5713]	=	13628520
GetExp[5714]	=	13630909
GetExp[5715]	=	13633297
GetExp[5716]	=	13635686
GetExp[5717]	=	13638075
GetExp[5718]	=	13640464
GetExp[5719]	=	13642853
GetExp[5720]	=	13645242
GetExp[5721]	=	13647631
GetExp[5722]	=	13650020
GetExp[5723]	=	13652409
GetExp[5724]	=	13654798
GetExp[5725]	=	13657187
GetExp[5726]	=	13659576
GetExp[5727]	=	13661965
GetExp[5728]	=	13664354
GetExp[5729]	=	13666743
GetExp[5730]	=	13669132
GetExp[5731]	=	13671520
GetExp[5732]	=	13673909
GetExp[5733]	=	13676298
GetExp[5734]	=	13678687
GetExp[5735]	=	13681076
GetExp[5736]	=	13683465
GetExp[5737]	=	13685854
GetExp[5738]	=	13688243
GetExp[5739]	=	13690632
GetExp[5740]	=	13693021
GetExp[5741]	=	13695410
GetExp[5742]	=	13697799
GetExp[5743]	=	13700188
GetExp[5744]	=	13702577
GetExp[5745]	=	13704966
GetExp[5746]	=	13707355
GetExp[5747]	=	13709743
GetExp[5748]	=	13712132
GetExp[5749]	=	13714521
GetExp[5750]	=	13716910
GetExp[5751]	=	13719299
GetExp[5752]	=	13721688
GetExp[5753]	=	13724077
GetExp[5754]	=	13726466
GetExp[5755]	=	13728855
GetExp[5756]	=	13731244
GetExp[5757]	=	13733633
GetExp[5758]	=	13736022
GetExp[5759]	=	13738411
GetExp[5760]	=	13740800
GetExp[5761]	=	13743189
GetExp[5762]	=	13745577
GetExp[5763]	=	13747966
GetExp[5764]	=	13750355
GetExp[5765]	=	13752744
GetExp[5766]	=	13755133
GetExp[5767]	=	13757522
GetExp[5768]	=	13759911
GetExp[5769]	=	13762300
GetExp[5770]	=	13764689
GetExp[5771]	=	13767078
GetExp[5772]	=	13769467
GetExp[5773]	=	13771856
GetExp[5774]	=	13774245
GetExp[5775]	=	13776634
GetExp[5776]	=	13779023
GetExp[5777]	=	13781412
GetExp[5778]	=	13783800
GetExp[5779]	=	13786189
GetExp[5780]	=	13788578
GetExp[5781]	=	13790967
GetExp[5782]	=	13793356
GetExp[5783]	=	13795745
GetExp[5784]	=	13798134
GetExp[5785]	=	13800523
GetExp[5786]	=	13802912
GetExp[5787]	=	13805301
GetExp[5788]	=	13807690
GetExp[5789]	=	13810079
GetExp[5790]	=	13812468
GetExp[5791]	=	13814857
GetExp[5792]	=	13817246
GetExp[5793]	=	13819635
GetExp[5794]	=	13822023
GetExp[5795]	=	13824412
GetExp[5796]	=	13826801
GetExp[5797]	=	13829190
GetExp[5798]	=	13831579
GetExp[5799]	=	13833968
GetExp[5800]	=	13836357
GetExp[5801]	=	13838746
GetExp[5802]	=	13841135
GetExp[5803]	=	13843524
GetExp[5804]	=	13845913
GetExp[5805]	=	13848302
GetExp[5806]	=	13850691
GetExp[5807]	=	13853080
GetExp[5808]	=	13855469
GetExp[5809]	=	13857857
GetExp[5810]	=	13860246
GetExp[5811]	=	13862635
GetExp[5812]	=	13865024
GetExp[5813]	=	13867413
GetExp[5814]	=	13869802
GetExp[5815]	=	13872191
GetExp[5816]	=	13874580
GetExp[5817]	=	13876969
GetExp[5818]	=	13879358
GetExp[5819]	=	13881747
GetExp[5820]	=	13884136
GetExp[5821]	=	13886525
GetExp[5822]	=	13888914
GetExp[5823]	=	13891303
GetExp[5824]	=	13893692
GetExp[5825]	=	13896080
GetExp[5826]	=	13898469
GetExp[5827]	=	13900858
GetExp[5828]	=	13903247
GetExp[5829]	=	13905636
GetExp[5830]	=	13908025
GetExp[5831]	=	13910414
GetExp[5832]	=	13912803
GetExp[5833]	=	13915192
GetExp[5834]	=	13917581
GetExp[5835]	=	13919970
GetExp[5836]	=	13922359
GetExp[5837]	=	13924748
GetExp[5838]	=	13927137
GetExp[5839]	=	13929526
GetExp[5840]	=	13931915
GetExp[5841]	=	13934303
GetExp[5842]	=	13936692
GetExp[5843]	=	13939081
GetExp[5844]	=	13941470
GetExp[5845]	=	13943859
GetExp[5846]	=	13946248
GetExp[5847]	=	13948637
GetExp[5848]	=	13951026
GetExp[5849]	=	13953415
GetExp[5850]	=	13955804
GetExp[5851]	=	13958193
GetExp[5852]	=	13960582
GetExp[5853]	=	13962971
GetExp[5854]	=	13965360
GetExp[5855]	=	13967749
GetExp[5856]	=	13970138
GetExp[5857]	=	13972526
GetExp[5858]	=	13974915
GetExp[5859]	=	13977304
GetExp[5860]	=	13979693
GetExp[5861]	=	13982082
GetExp[5862]	=	13984471
GetExp[5863]	=	13986860
GetExp[5864]	=	13989249
GetExp[5865]	=	13991638
GetExp[5866]	=	13994027
GetExp[5867]	=	13996416
GetExp[5868]	=	13998805
GetExp[5869]	=	14001194
GetExp[5870]	=	14003583
GetExp[5871]	=	14005972
GetExp[5872]	=	14008360
GetExp[5873]	=	14010749
GetExp[5874]	=	14013138
GetExp[5875]	=	14015527
GetExp[5876]	=	14017916
GetExp[5877]	=	14020305
GetExp[5878]	=	14022694
GetExp[5879]	=	14025083
GetExp[5880]	=	14027472
GetExp[5881]	=	14029861
GetExp[5882]	=	14032250
GetExp[5883]	=	14034639
GetExp[5884]	=	14037028
GetExp[5885]	=	14039417
GetExp[5886]	=	14041806
GetExp[5887]	=	14044195
GetExp[5888]	=	14046583
GetExp[5889]	=	14048972
GetExp[5890]	=	14051361
GetExp[5891]	=	14053750
GetExp[5892]	=	14056139
GetExp[5893]	=	14058528
GetExp[5894]	=	14060917
GetExp[5895]	=	14063306
GetExp[5896]	=	14065695
GetExp[5897]	=	14068084
GetExp[5898]	=	14070473
GetExp[5899]	=	14072862
GetExp[5900]	=	14075251
GetExp[5901]	=	14077640
GetExp[5902]	=	14080029
GetExp[5903]	=	14082418
GetExp[5904]	=	14084806
GetExp[5905]	=	14087195
GetExp[5906]	=	14089584
GetExp[5907]	=	14091973
GetExp[5908]	=	14094362
GetExp[5909]	=	14096751
GetExp[5910]	=	14099140
GetExp[5911]	=	14101529
GetExp[5912]	=	14103918
GetExp[5913]	=	14106307
GetExp[5914]	=	14108696
GetExp[5915]	=	14111085
GetExp[5916]	=	14113474
GetExp[5917]	=	14115863
GetExp[5918]	=	14118252
GetExp[5919]	=	14120641
GetExp[5920]	=	14123029
GetExp[5921]	=	14125418
GetExp[5922]	=	14127807
GetExp[5923]	=	14130196
GetExp[5924]	=	14132585
GetExp[5925]	=	14134974
GetExp[5926]	=	14137363
GetExp[5927]	=	14139752
GetExp[5928]	=	14142141
GetExp[5929]	=	14144530
GetExp[5930]	=	14146919
GetExp[5931]	=	14149308
GetExp[5932]	=	14151697
GetExp[5933]	=	14154086
GetExp[5934]	=	14156475
GetExp[5935]	=	14158863
GetExp[5936]	=	14161252
GetExp[5937]	=	14163641
GetExp[5938]	=	14166030
GetExp[5939]	=	14168419
GetExp[5940]	=	14170808
GetExp[5941]	=	14173197
GetExp[5942]	=	14175586
GetExp[5943]	=	14177975
GetExp[5944]	=	14180364
GetExp[5945]	=	14182753
GetExp[5946]	=	14185142
GetExp[5947]	=	14187531
GetExp[5948]	=	14189920
GetExp[5949]	=	14192309
GetExp[5950]	=	14194698
GetExp[5951]	=	14197086
GetExp[5952]	=	14199475
GetExp[5953]	=	14201864
GetExp[5954]	=	14204253
GetExp[5955]	=	14206642
GetExp[5956]	=	14209031
GetExp[5957]	=	14211420
GetExp[5958]	=	14213809
GetExp[5959]	=	14216198
GetExp[5960]	=	14218587
GetExp[5961]	=	14220976
GetExp[5962]	=	14223365
GetExp[5963]	=	14225754
GetExp[5964]	=	14228143
GetExp[5965]	=	14230532
GetExp[5966]	=	14232921
GetExp[5967]	=	14235309
GetExp[5968]	=	14237698
GetExp[5969]	=	14240087
GetExp[5970]	=	14242476
GetExp[5971]	=	14244865
GetExp[5972]	=	14247254
GetExp[5973]	=	14249643
GetExp[5974]	=	14252032
GetExp[5975]	=	14254421
GetExp[5976]	=	14256810
GetExp[5977]	=	14259199
GetExp[5978]	=	14261588
GetExp[5979]	=	14263977
GetExp[5980]	=	14266366
GetExp[5981]	=	14268755
GetExp[5982]	=	14271144
GetExp[5983]	=	14273532
GetExp[5984]	=	14275921
GetExp[5985]	=	14278310
GetExp[5986]	=	14280699
GetExp[5987]	=	14283088
GetExp[5988]	=	14285477
GetExp[5989]	=	14287866
GetExp[5990]	=	14290255
GetExp[5991]	=	14292644
GetExp[5992]	=	14295033
GetExp[5993]	=	14297422
GetExp[5994]	=	14299811
GetExp[5995]	=	14302200
GetExp[5996]	=	14304589
GetExp[5997]	=	14306978
GetExp[5998]	=	14309366
GetExp[5999]	=	14311755
GetExp[6000]	=	14314144
GetExp[6001]	=	14316533
GetExp[6002]	=	14318922
GetExp[6003]	=	14321311
GetExp[6004]	=	14323700
GetExp[6005]	=	14326089
GetExp[6006]	=	14328478
GetExp[6007]	=	14330867
GetExp[6008]	=	14333256
GetExp[6009]	=	14335645
GetExp[6010]	=	14338034
GetExp[6011]	=	14340423
GetExp[6012]	=	14342812
GetExp[6013]	=	14345201
GetExp[6014]	=	14347589
GetExp[6015]	=	14349978
GetExp[6016]	=	14352367
GetExp[6017]	=	14354756
GetExp[6018]	=	14357145
GetExp[6019]	=	14359534
GetExp[6020]	=	14361923
GetExp[6021]	=	14364312
GetExp[6022]	=	14366701
GetExp[6023]	=	14369090
GetExp[6024]	=	14371479
GetExp[6025]	=	14373868
GetExp[6026]	=	14376257
GetExp[6027]	=	14378646
GetExp[6028]	=	14381035
GetExp[6029]	=	14383424
GetExp[6030]	=	14385812
GetExp[6031]	=	14388201
GetExp[6032]	=	14390590
GetExp[6033]	=	14392979
GetExp[6034]	=	14395368
GetExp[6035]	=	14397757
GetExp[6036]	=	14400146
GetExp[6037]	=	14402535
GetExp[6038]	=	14404924
GetExp[6039]	=	14407313
GetExp[6040]	=	14409702
GetExp[6041]	=	14412091
GetExp[6042]	=	14414480
GetExp[6043]	=	14416869
GetExp[6044]	=	14419258
GetExp[6045]	=	14421647
GetExp[6046]	=	14424035
GetExp[6047]	=	14426424
GetExp[6048]	=	14428813
GetExp[6049]	=	14431202
GetExp[6050]	=	14433591
GetExp[6051]	=	14435980
GetExp[6052]	=	14438369
GetExp[6053]	=	14440758
GetExp[6054]	=	14443147
GetExp[6055]	=	14445536
GetExp[6056]	=	14447925
GetExp[6057]	=	14450314
GetExp[6058]	=	14452703
GetExp[6059]	=	14455092
GetExp[6060]	=	14457481
GetExp[6061]	=	14459869
GetExp[6062]	=	14462258
GetExp[6063]	=	14464647
GetExp[6064]	=	14467036
GetExp[6065]	=	14469425
GetExp[6066]	=	14471814
GetExp[6067]	=	14474203
GetExp[6068]	=	14476592
GetExp[6069]	=	14478981
GetExp[6070]	=	14481370
GetExp[6071]	=	14483759
GetExp[6072]	=	14486148
GetExp[6073]	=	14488537
GetExp[6074]	=	14490926
GetExp[6075]	=	14493315
GetExp[6076]	=	14495704
GetExp[6077]	=	14498092
GetExp[6078]	=	14500481
GetExp[6079]	=	14502870
GetExp[6080]	=	14505259
GetExp[6081]	=	14507648
GetExp[6082]	=	14510037
GetExp[6083]	=	14512426
GetExp[6084]	=	14514815
GetExp[6085]	=	14517204
GetExp[6086]	=	14519593
GetExp[6087]	=	14521982
GetExp[6088]	=	14524371
GetExp[6089]	=	14526760
GetExp[6090]	=	14529149
GetExp[6091]	=	14531538
GetExp[6092]	=	14533927
GetExp[6093]	=	14536315
GetExp[6094]	=	14538704
GetExp[6095]	=	14541093
GetExp[6096]	=	14543482
GetExp[6097]	=	14545871
GetExp[6098]	=	14548260
GetExp[6099]	=	14550649
GetExp[6100]	=	14553038
GetExp[6101]	=	14555427
GetExp[6102]	=	14557816
GetExp[6103]	=	14560205
GetExp[6104]	=	14562594
GetExp[6105]	=	14564983
GetExp[6106]	=	14567372
GetExp[6107]	=	14569761
GetExp[6108]	=	14572149
GetExp[6109]	=	14574538
GetExp[6110]	=	14576927
GetExp[6111]	=	14579316
GetExp[6112]	=	14581705
GetExp[6113]	=	14584094
GetExp[6114]	=	14586483
GetExp[6115]	=	14588872
GetExp[6116]	=	14591261
GetExp[6117]	=	14593650
GetExp[6118]	=	14596039
GetExp[6119]	=	14598428
GetExp[6120]	=	14600817
GetExp[6121]	=	14603206
GetExp[6122]	=	14605595
GetExp[6123]	=	14607984
GetExp[6124]	=	14610372
GetExp[6125]	=	14612761
GetExp[6126]	=	14615150
GetExp[6127]	=	14617539
GetExp[6128]	=	14619928
GetExp[6129]	=	14622317
GetExp[6130]	=	14624706
GetExp[6131]	=	14627095
GetExp[6132]	=	14629484
GetExp[6133]	=	14631873
GetExp[6134]	=	14634262
GetExp[6135]	=	14636651
GetExp[6136]	=	14639040
GetExp[6137]	=	14641429
GetExp[6138]	=	14643818
GetExp[6139]	=	14646207
GetExp[6140]	=	14648595
GetExp[6141]	=	14650984
GetExp[6142]	=	14653373
GetExp[6143]	=	14655762
GetExp[6144]	=	14658151
GetExp[6145]	=	14660540
GetExp[6146]	=	14662929
GetExp[6147]	=	14665318
GetExp[6148]	=	14667707
GetExp[6149]	=	14670096
GetExp[6150]	=	14672485
GetExp[6151]	=	14674874
GetExp[6152]	=	14677263
GetExp[6153]	=	14679652
GetExp[6154]	=	14682041
GetExp[6155]	=	14684430
GetExp[6156]	=	14686818
GetExp[6157]	=	14689207
GetExp[6158]	=	14691596
GetExp[6159]	=	14693985
GetExp[6160]	=	14696374
GetExp[6161]	=	14698763
GetExp[6162]	=	14701152
GetExp[6163]	=	14703541
GetExp[6164]	=	14705930
GetExp[6165]	=	14708319
GetExp[6166]	=	14710708
GetExp[6167]	=	14713097
GetExp[6168]	=	14715486
GetExp[6169]	=	14717875
GetExp[6170]	=	14720264
GetExp[6171]	=	14722652
GetExp[6172]	=	14725041
GetExp[6173]	=	14727430
GetExp[6174]	=	14729819
GetExp[6175]	=	14732208
GetExp[6176]	=	14734597
GetExp[6177]	=	14736986
GetExp[6178]	=	14739375
GetExp[6179]	=	14741764
GetExp[6180]	=	14744153
GetExp[6181]	=	14746542
GetExp[6182]	=	14748931
GetExp[6183]	=	14751320
GetExp[6184]	=	14753709
GetExp[6185]	=	14756098
GetExp[6186]	=	14758487
GetExp[6187]	=	14760875
GetExp[6188]	=	14763264
GetExp[6189]	=	14765653
GetExp[6190]	=	14768042
GetExp[6191]	=	14770431
GetExp[6192]	=	14772820
GetExp[6193]	=	14775209
GetExp[6194]	=	14777598
GetExp[6195]	=	14779987
GetExp[6196]	=	14782376
GetExp[6197]	=	14784765
GetExp[6198]	=	14787154
GetExp[6199]	=	14789543
GetExp[6200]	=	14791932
GetExp[6201]	=	14794321
GetExp[6202]	=	14796710
GetExp[6203]	=	14799098
GetExp[6204]	=	14801487
GetExp[6205]	=	14803876
GetExp[6206]	=	14806265
GetExp[6207]	=	14808654
GetExp[6208]	=	14811043
GetExp[6209]	=	14813432
GetExp[6210]	=	14815821
GetExp[6211]	=	14818210
GetExp[6212]	=	14820599
GetExp[6213]	=	14822988
GetExp[6214]	=	14825377
GetExp[6215]	=	14827766
GetExp[6216]	=	14830155
GetExp[6217]	=	14832544
GetExp[6218]	=	14834933
GetExp[6219]	=	14837321
GetExp[6220]	=	14839710
GetExp[6221]	=	14842099
GetExp[6222]	=	14844488
GetExp[6223]	=	14846877
GetExp[6224]	=	14849266
GetExp[6225]	=	14851655
GetExp[6226]	=	14854044
GetExp[6227]	=	14856433
GetExp[6228]	=	14858822
GetExp[6229]	=	14861211
GetExp[6230]	=	14863600
GetExp[6231]	=	14865989
GetExp[6232]	=	14868378
GetExp[6233]	=	14870767
GetExp[6234]	=	14873155
GetExp[6235]	=	14875544
GetExp[6236]	=	14877933
GetExp[6237]	=	14880322
GetExp[6238]	=	14882711
GetExp[6239]	=	14885100
GetExp[6240]	=	14887489
GetExp[6241]	=	14889878
GetExp[6242]	=	14892267
GetExp[6243]	=	14894656
GetExp[6244]	=	14897045
GetExp[6245]	=	14899434
GetExp[6246]	=	14901823
GetExp[6247]	=	14904212
GetExp[6248]	=	14906601
GetExp[6249]	=	14908990
GetExp[6250]	=	14911378
GetExp[6251]	=	14913767
GetExp[6252]	=	14916156
GetExp[6253]	=	14918545
GetExp[6254]	=	14920934
GetExp[6255]	=	14923323
GetExp[6256]	=	14925712
GetExp[6257]	=	14928101
GetExp[6258]	=	14930490
GetExp[6259]	=	14932879
GetExp[6260]	=	14935268
GetExp[6261]	=	14937657
GetExp[6262]	=	14940046
GetExp[6263]	=	14942435
GetExp[6264]	=	14944824
GetExp[6265]	=	14947213
GetExp[6266]	=	14949601
GetExp[6267]	=	14951990
GetExp[6268]	=	14954379
GetExp[6269]	=	14956768
GetExp[6270]	=	14959157
GetExp[6271]	=	14961546
GetExp[6272]	=	14963935
GetExp[6273]	=	14966324
GetExp[6274]	=	14968713
GetExp[6275]	=	14971102
GetExp[6276]	=	14973491
GetExp[6277]	=	14975880
GetExp[6278]	=	14978269
GetExp[6279]	=	14980658
GetExp[6280]	=	14983047
GetExp[6281]	=	14985436
GetExp[6282]	=	14987824
GetExp[6283]	=	14990213
GetExp[6284]	=	14992602
GetExp[6285]	=	14994991
GetExp[6286]	=	14997380
GetExp[6287]	=	14999769
GetExp[6288]	=	15002158
GetExp[6289]	=	15004547
GetExp[6290]	=	15006936
GetExp[6291]	=	15009325
GetExp[6292]	=	15011714
GetExp[6293]	=	15014103
GetExp[6294]	=	15016492
GetExp[6295]	=	15018881
GetExp[6296]	=	15021270
GetExp[6297]	=	15023658
GetExp[6298]	=	15026047
GetExp[6299]	=	15028436
GetExp[6300]	=	15030825
GetExp[6301]	=	15033214
GetExp[6302]	=	15035603
GetExp[6303]	=	15037992
GetExp[6304]	=	15040381
GetExp[6305]	=	15042770
GetExp[6306]	=	15045159
GetExp[6307]	=	15047548
GetExp[6308]	=	15049937
GetExp[6309]	=	15052326
GetExp[6310]	=	15054715
GetExp[6311]	=	15057104
GetExp[6312]	=	15059493
GetExp[6313]	=	15061881
GetExp[6314]	=	15064270
GetExp[6315]	=	15066659
GetExp[6316]	=	15069048
GetExp[6317]	=	15071437
GetExp[6318]	=	15073826
GetExp[6319]	=	15076215
GetExp[6320]	=	15078604
GetExp[6321]	=	15080993
GetExp[6322]	=	15083382
GetExp[6323]	=	15085771
GetExp[6324]	=	15088160
GetExp[6325]	=	15090549
GetExp[6326]	=	15092938
GetExp[6327]	=	15095327
GetExp[6328]	=	15097716
GetExp[6329]	=	15100104
GetExp[6330]	=	15102493
GetExp[6331]	=	15104882
GetExp[6332]	=	15107271
GetExp[6333]	=	15109660
GetExp[6334]	=	15112049
GetExp[6335]	=	15114438
GetExp[6336]	=	15116827
GetExp[6337]	=	15119216
GetExp[6338]	=	15121605
GetExp[6339]	=	15123994
GetExp[6340]	=	15126383
GetExp[6341]	=	15128772
GetExp[6342]	=	15131161
GetExp[6343]	=	15133550
GetExp[6344]	=	15135939
GetExp[6345]	=	15138327
GetExp[6346]	=	15140716
GetExp[6347]	=	15143105
GetExp[6348]	=	15145494
GetExp[6349]	=	15147883
GetExp[6350]	=	15150272
GetExp[6351]	=	15152661
GetExp[6352]	=	15155050
GetExp[6353]	=	15157439
GetExp[6354]	=	15159828
GetExp[6355]	=	15162217
GetExp[6356]	=	15164606
GetExp[6357]	=	15166995
GetExp[6358]	=	15169384
GetExp[6359]	=	15171773
GetExp[6360]	=	15174161
GetExp[6361]	=	15176550
GetExp[6362]	=	15178939
GetExp[6363]	=	15181328
GetExp[6364]	=	15183717
GetExp[6365]	=	15186106
GetExp[6366]	=	15188495
GetExp[6367]	=	15190884
GetExp[6368]	=	15193273
GetExp[6369]	=	15195662
GetExp[6370]	=	15198051
GetExp[6371]	=	15200440
GetExp[6372]	=	15202829
GetExp[6373]	=	15205218
GetExp[6374]	=	15207607
GetExp[6375]	=	15209996
GetExp[6376]	=	15212384
GetExp[6377]	=	15214773
GetExp[6378]	=	15217162
GetExp[6379]	=	15219551
GetExp[6380]	=	15221940
GetExp[6381]	=	15224329
GetExp[6382]	=	15226718
GetExp[6383]	=	15229107
GetExp[6384]	=	15231496
GetExp[6385]	=	15233885
GetExp[6386]	=	15236274
GetExp[6387]	=	15238663
GetExp[6388]	=	15241052
GetExp[6389]	=	15243441
GetExp[6390]	=	15245830
GetExp[6391]	=	15248219
GetExp[6392]	=	15250607
GetExp[6393]	=	15252996
GetExp[6394]	=	15255385
GetExp[6395]	=	15257774
GetExp[6396]	=	15260163
GetExp[6397]	=	15262552
GetExp[6398]	=	15264941
GetExp[6399]	=	15267330
GetExp[6400]	=	15269719
GetExp[6401]	=	15272108
GetExp[6402]	=	15274497
GetExp[6403]	=	15276886
GetExp[6404]	=	15279275
GetExp[6405]	=	15281664
GetExp[6406]	=	15284053
GetExp[6407]	=	15286441
GetExp[6408]	=	15288830
GetExp[6409]	=	15291219
GetExp[6410]	=	15293608
GetExp[6411]	=	15295997
GetExp[6412]	=	15298386
GetExp[6413]	=	15300775
GetExp[6414]	=	15303164
GetExp[6415]	=	15305553
GetExp[6416]	=	15307942
GetExp[6417]	=	15310331
GetExp[6418]	=	15312720
GetExp[6419]	=	15315109
GetExp[6420]	=	15317498
GetExp[6421]	=	15319887
GetExp[6422]	=	15322276
GetExp[6423]	=	15324664
GetExp[6424]	=	15327053
GetExp[6425]	=	15329442
GetExp[6426]	=	15331831
GetExp[6427]	=	15334220
GetExp[6428]	=	15336609
GetExp[6429]	=	15338998
GetExp[6430]	=	15341387
GetExp[6431]	=	15343776
GetExp[6432]	=	15346165
GetExp[6433]	=	15348554
GetExp[6434]	=	15350943
GetExp[6435]	=	15353332
GetExp[6436]	=	15355721
GetExp[6437]	=	15358110
GetExp[6438]	=	15360499
GetExp[6439]	=	15362887
GetExp[6440]	=	15365276
GetExp[6441]	=	15367665
GetExp[6442]	=	15370054
GetExp[6443]	=	15372443
GetExp[6444]	=	15374832
GetExp[6445]	=	15377221
GetExp[6446]	=	15379610
GetExp[6447]	=	15381999
GetExp[6448]	=	15384388
GetExp[6449]	=	15386777
GetExp[6450]	=	15389166
GetExp[6451]	=	15391555
GetExp[6452]	=	15393944
GetExp[6453]	=	15396333
GetExp[6454]	=	15398722
GetExp[6455]	=	15401110
GetExp[6456]	=	15403499
GetExp[6457]	=	15405888
GetExp[6458]	=	15408277
GetExp[6459]	=	15410666
GetExp[6460]	=	15413055
GetExp[6461]	=	15415444
GetExp[6462]	=	15417833
GetExp[6463]	=	15420222
GetExp[6464]	=	15422611
GetExp[6465]	=	15425000
GetExp[6466]	=	15427389
GetExp[6467]	=	15429778
GetExp[6468]	=	15432167
GetExp[6469]	=	15434556
GetExp[6470]	=	15436944
GetExp[6471]	=	15439333
GetExp[6472]	=	15441722
GetExp[6473]	=	15444111
GetExp[6474]	=	15446500
GetExp[6475]	=	15448889
GetExp[6476]	=	15451278
GetExp[6477]	=	15453667
GetExp[6478]	=	15456056
GetExp[6479]	=	15458445
GetExp[6480]	=	15460834
GetExp[6481]	=	15463223
GetExp[6482]	=	15465612
GetExp[6483]	=	15468001
GetExp[6484]	=	15470390
GetExp[6485]	=	15472779
GetExp[6486]	=	15475167
GetExp[6487]	=	15477556
GetExp[6488]	=	15479945
GetExp[6489]	=	15482334
GetExp[6490]	=	15484723
GetExp[6491]	=	15487112
GetExp[6492]	=	15489501
GetExp[6493]	=	15491890
GetExp[6494]	=	15494279
GetExp[6495]	=	15496668
GetExp[6496]	=	15499057
GetExp[6497]	=	15501446
GetExp[6498]	=	15503835
GetExp[6499]	=	15506224
GetExp[6500]	=	15508613
GetExp[6501]	=	15511002
GetExp[6502]	=	15513390
GetExp[6503]	=	15515779
GetExp[6504]	=	15518168
GetExp[6505]	=	15520557
GetExp[6506]	=	15522946
GetExp[6507]	=	15525335
GetExp[6508]	=	15527724
GetExp[6509]	=	15530113
GetExp[6510]	=	15532502
GetExp[6511]	=	15534891
GetExp[6512]	=	15537280
GetExp[6513]	=	15539669
GetExp[6514]	=	15542058
GetExp[6515]	=	15544447
GetExp[6516]	=	15546836
GetExp[6517]	=	15549225
GetExp[6518]	=	15551613
GetExp[6519]	=	15554002
GetExp[6520]	=	15556391
GetExp[6521]	=	15558780
GetExp[6522]	=	15561169
GetExp[6523]	=	15563558
GetExp[6524]	=	15565947
GetExp[6525]	=	15568336
GetExp[6526]	=	15570725
GetExp[6527]	=	15573114
GetExp[6528]	=	15575503
GetExp[6529]	=	15577892
GetExp[6530]	=	15580281
GetExp[6531]	=	15582670
GetExp[6532]	=	15585059
GetExp[6533]	=	15587447
GetExp[6534]	=	15589836
GetExp[6535]	=	15592225
GetExp[6536]	=	15594614
GetExp[6537]	=	15597003
GetExp[6538]	=	15599392
GetExp[6539]	=	15601781
GetExp[6540]	=	15604170
GetExp[6541]	=	15606559
GetExp[6542]	=	15608948
GetExp[6543]	=	15611337
GetExp[6544]	=	15613726
GetExp[6545]	=	15616115
GetExp[6546]	=	15618504
GetExp[6547]	=	15620893
GetExp[6548]	=	15623282
GetExp[6549]	=	15625670
GetExp[6550]	=	15628059
GetExp[6551]	=	15630448
GetExp[6552]	=	15632837
GetExp[6553]	=	15635226
GetExp[6554]	=	15637615
GetExp[6555]	=	15640004
GetExp[6556]	=	15642393
GetExp[6557]	=	15644782
GetExp[6558]	=	15647171
GetExp[6559]	=	15649560
GetExp[6560]	=	15651949
GetExp[6561]	=	15654338
GetExp[6562]	=	15656727
GetExp[6563]	=	15659116
GetExp[6564]	=	15661505
GetExp[6565]	=	15663893
GetExp[6566]	=	15666282
GetExp[6567]	=	15668671
GetExp[6568]	=	15671060
GetExp[6569]	=	15673449
GetExp[6570]	=	15675838
GetExp[6571]	=	15678227
GetExp[6572]	=	15680616
GetExp[6573]	=	15683005
GetExp[6574]	=	15685394
GetExp[6575]	=	15687783
GetExp[6576]	=	15690172
GetExp[6577]	=	15692561
GetExp[6578]	=	15694950
GetExp[6579]	=	15697339
GetExp[6580]	=	15699728
GetExp[6581]	=	15702116
GetExp[6582]	=	15704505
GetExp[6583]	=	15706894
GetExp[6584]	=	15709283
GetExp[6585]	=	15711672
GetExp[6586]	=	15714061
GetExp[6587]	=	15716450
GetExp[6588]	=	15718839
GetExp[6589]	=	15721228
GetExp[6590]	=	15723617
GetExp[6591]	=	15726006
GetExp[6592]	=	15728395
GetExp[6593]	=	15730784
GetExp[6594]	=	15733173
GetExp[6595]	=	15735562
GetExp[6596]	=	15737950
GetExp[6597]	=	15740339
GetExp[6598]	=	15742728
GetExp[6599]	=	15745117
GetExp[6600]	=	15747506
GetExp[6601]	=	15749895
GetExp[6602]	=	15752284
GetExp[6603]	=	15754673
GetExp[6604]	=	15757062
GetExp[6605]	=	15759451
GetExp[6606]	=	15761840
GetExp[6607]	=	15764229
GetExp[6608]	=	15766618
GetExp[6609]	=	15769007
GetExp[6610]	=	15771396
GetExp[6611]	=	15773785
GetExp[6612]	=	15776173
GetExp[6613]	=	15778562
GetExp[6614]	=	15780951
GetExp[6615]	=	15783340
GetExp[6616]	=	15785729
GetExp[6617]	=	15788118
GetExp[6618]	=	15790507
GetExp[6619]	=	15792896
GetExp[6620]	=	15795285
GetExp[6621]	=	15797674
GetExp[6622]	=	15800063
GetExp[6623]	=	15802452
GetExp[6624]	=	15804841
GetExp[6625]	=	15807230
GetExp[6626]	=	15809619
GetExp[6627]	=	15812008
GetExp[6628]	=	15814396
GetExp[6629]	=	15816785
GetExp[6630]	=	15819174
GetExp[6631]	=	15821563
GetExp[6632]	=	15823952
GetExp[6633]	=	15826341
GetExp[6634]	=	15828730
GetExp[6635]	=	15831119
GetExp[6636]	=	15833508
GetExp[6637]	=	15835897
GetExp[6638]	=	15838286
GetExp[6639]	=	15840675
GetExp[6640]	=	15843064
GetExp[6641]	=	15845453
GetExp[6642]	=	15847842
GetExp[6643]	=	15850231
GetExp[6644]	=	15852619
GetExp[6645]	=	15855008
GetExp[6646]	=	15857397
GetExp[6647]	=	15859786
GetExp[6648]	=	15862175
GetExp[6649]	=	15864564
GetExp[6650]	=	15866953
GetExp[6651]	=	15869342
GetExp[6652]	=	15871731
GetExp[6653]	=	15874120
GetExp[6654]	=	15876509
GetExp[6655]	=	15878898
GetExp[6656]	=	15881287
GetExp[6657]	=	15883676
GetExp[6658]	=	15886065
GetExp[6659]	=	15888453
GetExp[6660]	=	15890842
GetExp[6661]	=	15893231
GetExp[6662]	=	15895620
GetExp[6663]	=	15898009
GetExp[6664]	=	15900398
GetExp[6665]	=	15902787
GetExp[6666]	=	15905176
GetExp[6667]	=	15907565
GetExp[6668]	=	15909954
GetExp[6669]	=	15912343
GetExp[6670]	=	15914732
GetExp[6671]	=	15917121
GetExp[6672]	=	15919510
GetExp[6673]	=	15921899
GetExp[6674]	=	15924288
GetExp[6675]	=	15926676
GetExp[6676]	=	15929065
GetExp[6677]	=	15931454
GetExp[6678]	=	15933843
GetExp[6679]	=	15936232
GetExp[6680]	=	15938621
GetExp[6681]	=	15941010
GetExp[6682]	=	15943399
GetExp[6683]	=	15945788
GetExp[6684]	=	15948177
GetExp[6685]	=	15950566
GetExp[6686]	=	15952955
GetExp[6687]	=	15955344
GetExp[6688]	=	15957733
GetExp[6689]	=	15960122
GetExp[6690]	=	15962511
GetExp[6691]	=	15964899
GetExp[6692]	=	15967288
GetExp[6693]	=	15969677
GetExp[6694]	=	15972066
GetExp[6695]	=	15974455
GetExp[6696]	=	15976844
GetExp[6697]	=	15979233
GetExp[6698]	=	15981622
GetExp[6699]	=	15984011
GetExp[6700]	=	15986400
GetExp[6701]	=	15988789
GetExp[6702]	=	15991178
GetExp[6703]	=	15993567
GetExp[6704]	=	15995956
GetExp[6705]	=	15998345
GetExp[6706]	=	16000733
GetExp[6707]	=	16003122
GetExp[6708]	=	16005511
GetExp[6709]	=	16007900
GetExp[6710]	=	16010289
GetExp[6711]	=	16012678
GetExp[6712]	=	16015067
GetExp[6713]	=	16017456
GetExp[6714]	=	16019845
GetExp[6715]	=	16022234
GetExp[6716]	=	16024623
GetExp[6717]	=	16027012
GetExp[6718]	=	16029401
GetExp[6719]	=	16031790
GetExp[6720]	=	16034179
GetExp[6721]	=	16036568
GetExp[6722]	=	16038956
GetExp[6723]	=	16041345
GetExp[6724]	=	16043734
GetExp[6725]	=	16046123
GetExp[6726]	=	16048512
GetExp[6727]	=	16050901
GetExp[6728]	=	16053290
GetExp[6729]	=	16055679
GetExp[6730]	=	16058068
GetExp[6731]	=	16060457
GetExp[6732]	=	16062846
GetExp[6733]	=	16065235
GetExp[6734]	=	16067624
GetExp[6735]	=	16070013
GetExp[6736]	=	16072402
GetExp[6737]	=	16074791
GetExp[6738]	=	16077179
GetExp[6739]	=	16079568
GetExp[6740]	=	16081957
GetExp[6741]	=	16084346
GetExp[6742]	=	16086735
GetExp[6743]	=	16089124
GetExp[6744]	=	16091513
GetExp[6745]	=	16093902
GetExp[6746]	=	16096291
GetExp[6747]	=	16098680
GetExp[6748]	=	16101069
GetExp[6749]	=	16103458
GetExp[6750]	=	16105847
GetExp[6751]	=	16108236
GetExp[6752]	=	16110625
GetExp[6753]	=	16113014
GetExp[6754]	=	16115402
GetExp[6755]	=	16117791
GetExp[6756]	=	16120180
GetExp[6757]	=	16122569
GetExp[6758]	=	16124958
GetExp[6759]	=	16127347
GetExp[6760]	=	16129736
GetExp[6761]	=	16132125
GetExp[6762]	=	16134514
GetExp[6763]	=	16136903
GetExp[6764]	=	16139292
GetExp[6765]	=	16141681
GetExp[6766]	=	16144070
GetExp[6767]	=	16146459
GetExp[6768]	=	16148848
GetExp[6769]	=	16151236
GetExp[6770]	=	16153625
GetExp[6771]	=	16156014
GetExp[6772]	=	16158403
GetExp[6773]	=	16160792
GetExp[6774]	=	16163181
GetExp[6775]	=	16165570
GetExp[6776]	=	16167959
GetExp[6777]	=	16170348
GetExp[6778]	=	16172737
GetExp[6779]	=	16175126
GetExp[6780]	=	16177515
GetExp[6781]	=	16179904
GetExp[6782]	=	16182293
GetExp[6783]	=	16184682
GetExp[6784]	=	16187071
GetExp[6785]	=	16189459
GetExp[6786]	=	16191848
GetExp[6787]	=	16194237
GetExp[6788]	=	16196626
GetExp[6789]	=	16199015
GetExp[6790]	=	16201404
GetExp[6791]	=	16203793
GetExp[6792]	=	16206182
GetExp[6793]	=	16208571
GetExp[6794]	=	16210960
GetExp[6795]	=	16213349
GetExp[6796]	=	16215738
GetExp[6797]	=	16218127
GetExp[6798]	=	16220516
GetExp[6799]	=	16222905
GetExp[6800]	=	16225294
GetExp[6801]	=	16227682
GetExp[6802]	=	16230071
GetExp[6803]	=	16232460
GetExp[6804]	=	16234849
GetExp[6805]	=	16237238
GetExp[6806]	=	16239627
GetExp[6807]	=	16242016
GetExp[6808]	=	16244405
GetExp[6809]	=	16246794
GetExp[6810]	=	16249183
GetExp[6811]	=	16251572
GetExp[6812]	=	16253961
GetExp[6813]	=	16256350
GetExp[6814]	=	16258739
GetExp[6815]	=	16261128
GetExp[6816]	=	16263517
GetExp[6817]	=	16265905
GetExp[6818]	=	16268294
GetExp[6819]	=	16270683
GetExp[6820]	=	16273072
GetExp[6821]	=	16275461
GetExp[6822]	=	16277850
GetExp[6823]	=	16280239
GetExp[6824]	=	16282628
GetExp[6825]	=	16285017
GetExp[6826]	=	16287406
GetExp[6827]	=	16289795
GetExp[6828]	=	16292184
GetExp[6829]	=	16294573
GetExp[6830]	=	16296962
GetExp[6831]	=	16299351
GetExp[6832]	=	16301739
GetExp[6833]	=	16304128
GetExp[6834]	=	16306517
GetExp[6835]	=	16308906
GetExp[6836]	=	16311295
GetExp[6837]	=	16313684
GetExp[6838]	=	16316073
GetExp[6839]	=	16318462
GetExp[6840]	=	16320851
GetExp[6841]	=	16323240
GetExp[6842]	=	16325629
GetExp[6843]	=	16328018
GetExp[6844]	=	16330407
GetExp[6845]	=	16332796
GetExp[6846]	=	16335185
GetExp[6847]	=	16337574
GetExp[6848]	=	16339962
GetExp[6849]	=	16342351
GetExp[6850]	=	16344740
GetExp[6851]	=	16347129
GetExp[6852]	=	16349518
GetExp[6853]	=	16351907
GetExp[6854]	=	16354296
GetExp[6855]	=	16356685
GetExp[6856]	=	16359074
GetExp[6857]	=	16361463
GetExp[6858]	=	16363852
GetExp[6859]	=	16366241
GetExp[6860]	=	16368630
GetExp[6861]	=	16371019
GetExp[6862]	=	16373408
GetExp[6863]	=	16375797
GetExp[6864]	=	16378185
GetExp[6865]	=	16380574
GetExp[6866]	=	16382963
GetExp[6867]	=	16385352
GetExp[6868]	=	16387741
GetExp[6869]	=	16390130
GetExp[6870]	=	16392519
GetExp[6871]	=	16394908
GetExp[6872]	=	16397297
GetExp[6873]	=	16399686
GetExp[6874]	=	16402075
GetExp[6875]	=	16404464
GetExp[6876]	=	16406853
GetExp[6877]	=	16409242
GetExp[6878]	=	16411631
GetExp[6879]	=	16414020
GetExp[6880]	=	16416408
GetExp[6881]	=	16418797
GetExp[6882]	=	16421186
GetExp[6883]	=	16423575
GetExp[6884]	=	16425964
GetExp[6885]	=	16428353
GetExp[6886]	=	16430742
GetExp[6887]	=	16433131
GetExp[6888]	=	16435520
GetExp[6889]	=	16437909
GetExp[6890]	=	16440298
GetExp[6891]	=	16442687
GetExp[6892]	=	16445076
GetExp[6893]	=	16447465
GetExp[6894]	=	16449854
GetExp[6895]	=	16452242
GetExp[6896]	=	16454631
GetExp[6897]	=	16457020
GetExp[6898]	=	16459409
GetExp[6899]	=	16461798
GetExp[6900]	=	16464187
GetExp[6901]	=	16466576
GetExp[6902]	=	16468965
GetExp[6903]	=	16471354
GetExp[6904]	=	16473743
GetExp[6905]	=	16476132
GetExp[6906]	=	16478521
GetExp[6907]	=	16480910
GetExp[6908]	=	16483299
GetExp[6909]	=	16485688
GetExp[6910]	=	16488077
GetExp[6911]	=	16490465
GetExp[6912]	=	16492854
GetExp[6913]	=	16495243
GetExp[6914]	=	16497632
GetExp[6915]	=	16500021
GetExp[6916]	=	16502410
GetExp[6917]	=	16504799
GetExp[6918]	=	16507188
GetExp[6919]	=	16509577
GetExp[6920]	=	16511966
GetExp[6921]	=	16514355
GetExp[6922]	=	16516744
GetExp[6923]	=	16519133
GetExp[6924]	=	16521522
GetExp[6925]	=	16523911
GetExp[6926]	=	16526300
GetExp[6927]	=	16528688
GetExp[6928]	=	16531077
GetExp[6929]	=	16533466
GetExp[6930]	=	16535855
GetExp[6931]	=	16538244
GetExp[6932]	=	16540633
GetExp[6933]	=	16543022
GetExp[6934]	=	16545411
GetExp[6935]	=	16547800
GetExp[6936]	=	16550189
GetExp[6937]	=	16552578
GetExp[6938]	=	16554967
GetExp[6939]	=	16557356
GetExp[6940]	=	16559745
GetExp[6941]	=	16562134
GetExp[6942]	=	16564523
GetExp[6943]	=	16566911
GetExp[6944]	=	16569300
GetExp[6945]	=	16571689
GetExp[6946]	=	16574078
GetExp[6947]	=	16576467
GetExp[6948]	=	16578856
GetExp[6949]	=	16581245
GetExp[6950]	=	16583634
GetExp[6951]	=	16586023
GetExp[6952]	=	16588412
GetExp[6953]	=	16590801
GetExp[6954]	=	16593190
GetExp[6955]	=	16595579
GetExp[6956]	=	16597968
GetExp[6957]	=	16600357
GetExp[6958]	=	16602745
GetExp[6959]	=	16605134
GetExp[6960]	=	16607523
GetExp[6961]	=	16609912
GetExp[6962]	=	16612301
GetExp[6963]	=	16614690
GetExp[6964]	=	16617079
GetExp[6965]	=	16619468
GetExp[6966]	=	16621857
GetExp[6967]	=	16624246
GetExp[6968]	=	16626635
GetExp[6969]	=	16629024
GetExp[6970]	=	16631413
GetExp[6971]	=	16633802
GetExp[6972]	=	16636191
GetExp[6973]	=	16638580
GetExp[6974]	=	16640968
GetExp[6975]	=	16643357
GetExp[6976]	=	16645746
GetExp[6977]	=	16648135
GetExp[6978]	=	16650524
GetExp[6979]	=	16652913
GetExp[6980]	=	16655302
GetExp[6981]	=	16657691
GetExp[6982]	=	16660080
GetExp[6983]	=	16662469
GetExp[6984]	=	16664858
GetExp[6985]	=	16667247
GetExp[6986]	=	16669636
GetExp[6987]	=	16672025
GetExp[6988]	=	16674414
GetExp[6989]	=	16676803
GetExp[6990]	=	16679191
GetExp[6991]	=	16681580
GetExp[6992]	=	16683969
GetExp[6993]	=	16686358
GetExp[6994]	=	16688747
GetExp[6995]	=	16691136
GetExp[6996]	=	16693525
GetExp[6997]	=	16695914
GetExp[6998]	=	16698303
GetExp[6999]	=	16700692
GetExp[7000]	=	16703081
GetExp[7001]	=	16705470
GetExp[7002]	=	16707859
GetExp[7003]	=	16710248
GetExp[7004]	=	16712637
GetExp[7005]	=	16715025
GetExp[7006]	=	16717414
GetExp[7007]	=	16719803
GetExp[7008]	=	16722192
GetExp[7009]	=	16724581
GetExp[7010]	=	16726970
GetExp[7011]	=	16729359
GetExp[7012]	=	16731748
GetExp[7013]	=	16734137
GetExp[7014]	=	16736526
GetExp[7015]	=	16738915
GetExp[7016]	=	16741304
GetExp[7017]	=	16743693
GetExp[7018]	=	16746082
GetExp[7019]	=	16748471
GetExp[7020]	=	16750860
GetExp[7021]	=	16753248
GetExp[7022]	=	16755637
GetExp[7023]	=	16758026
GetExp[7024]	=	16760415
GetExp[7025]	=	16762804
GetExp[7026]	=	16765193
GetExp[7027]	=	16767582
GetExp[7028]	=	16769971
GetExp[7029]	=	16772360
GetExp[7030]	=	16774749
GetExp[7031]	=	16777138
GetExp[7032]	=	16779527
GetExp[7033]	=	16781916
GetExp[7034]	=	16784305
GetExp[7035]	=	16786694
GetExp[7036]	=	16789083
GetExp[7037]	=	16791471
GetExp[7038]	=	16793860
GetExp[7039]	=	16796249
GetExp[7040]	=	16798638
GetExp[7041]	=	16801027
GetExp[7042]	=	16803416
GetExp[7043]	=	16805805
GetExp[7044]	=	16808194
GetExp[7045]	=	16810583
GetExp[7046]	=	16812972
GetExp[7047]	=	16815361
GetExp[7048]	=	16817750
GetExp[7049]	=	16820139
GetExp[7050]	=	16822528
GetExp[7051]	=	16824917
GetExp[7052]	=	16827306
GetExp[7053]	=	16829694
GetExp[7054]	=	16832083
GetExp[7055]	=	16834472
GetExp[7056]	=	16836861
GetExp[7057]	=	16839250
GetExp[7058]	=	16841639
GetExp[7059]	=	16844028
GetExp[7060]	=	16846417
GetExp[7061]	=	16848806
GetExp[7062]	=	16851195
GetExp[7063]	=	16853584
GetExp[7064]	=	16855973
GetExp[7065]	=	16858362
GetExp[7066]	=	16860751
GetExp[7067]	=	16863140
GetExp[7068]	=	16865528
GetExp[7069]	=	16867917
GetExp[7070]	=	16870306
GetExp[7071]	=	16872695
GetExp[7072]	=	16875084
GetExp[7073]	=	16877473
GetExp[7074]	=	16879862
GetExp[7075]	=	16882251
GetExp[7076]	=	16884640
GetExp[7077]	=	16887029
GetExp[7078]	=	16889418
GetExp[7079]	=	16891807
GetExp[7080]	=	16894196
GetExp[7081]	=	16896585
GetExp[7082]	=	16898974
GetExp[7083]	=	16901363
GetExp[7084]	=	16903751
GetExp[7085]	=	16906140
GetExp[7086]	=	16908529
GetExp[7087]	=	16910918
GetExp[7088]	=	16913307
GetExp[7089]	=	16915696
GetExp[7090]	=	16918085
GetExp[7091]	=	16920474
GetExp[7092]	=	16922863
GetExp[7093]	=	16925252
GetExp[7094]	=	16927641
GetExp[7095]	=	16930030
GetExp[7096]	=	16932419
GetExp[7097]	=	16934808
GetExp[7098]	=	16937197
GetExp[7099]	=	16939586
GetExp[7100]	=	16941974
GetExp[7101]	=	16944363
GetExp[7102]	=	16946752
GetExp[7103]	=	16949141
GetExp[7104]	=	16951530
GetExp[7105]	=	16953919
GetExp[7106]	=	16956308
GetExp[7107]	=	16958697
GetExp[7108]	=	16961086
GetExp[7109]	=	16963475
GetExp[7110]	=	16965864
GetExp[7111]	=	16968253
GetExp[7112]	=	16970642
GetExp[7113]	=	16973031
GetExp[7114]	=	16975420
GetExp[7115]	=	16977809
GetExp[7116]	=	16980197
GetExp[7117]	=	16982586
GetExp[7118]	=	16984975
GetExp[7119]	=	16987364
GetExp[7120]	=	16989753
GetExp[7121]	=	16992142
GetExp[7122]	=	16994531
GetExp[7123]	=	16996920
GetExp[7124]	=	16999309
GetExp[7125]	=	17001698
GetExp[7126]	=	17004087
GetExp[7127]	=	17006476
GetExp[7128]	=	17008865
GetExp[7129]	=	17011254
GetExp[7130]	=	17013643
GetExp[7131]	=	17016031
GetExp[7132]	=	17018420
GetExp[7133]	=	17020809
GetExp[7134]	=	17023198
GetExp[7135]	=	17025587
GetExp[7136]	=	17027976
GetExp[7137]	=	17030365
GetExp[7138]	=	17032754
GetExp[7139]	=	17035143
GetExp[7140]	=	17037532
GetExp[7141]	=	17039921
GetExp[7142]	=	17042310
GetExp[7143]	=	17044699
GetExp[7144]	=	17047088
GetExp[7145]	=	17049477
GetExp[7146]	=	17051866
GetExp[7147]	=	17054254
GetExp[7148]	=	17056643
GetExp[7149]	=	17059032
GetExp[7150]	=	17061421
GetExp[7151]	=	17063810
GetExp[7152]	=	17066199
GetExp[7153]	=	17068588
GetExp[7154]	=	17070977
GetExp[7155]	=	17073366
GetExp[7156]	=	17075755
GetExp[7157]	=	17078144
GetExp[7158]	=	17080533
GetExp[7159]	=	17082922
GetExp[7160]	=	17085311
GetExp[7161]	=	17087700
GetExp[7162]	=	17090089
GetExp[7163]	=	17092477
GetExp[7164]	=	17094866
GetExp[7165]	=	17097255
GetExp[7166]	=	17099644
GetExp[7167]	=	17102033
GetExp[7168]	=	17104422
GetExp[7169]	=	17106811
GetExp[7170]	=	17109200
GetExp[7171]	=	17111589
GetExp[7172]	=	17113978
GetExp[7173]	=	17116367
GetExp[7174]	=	17118756
GetExp[7175]	=	17121145
GetExp[7176]	=	17123534
GetExp[7177]	=	17125923
GetExp[7178]	=	17128312
GetExp[7179]	=	17130700
GetExp[7180]	=	17133089
GetExp[7181]	=	17135478
GetExp[7182]	=	17137867
GetExp[7183]	=	17140256
GetExp[7184]	=	17142645
GetExp[7185]	=	17145034
GetExp[7186]	=	17147423
GetExp[7187]	=	17149812
GetExp[7188]	=	17152201
GetExp[7189]	=	17154590
GetExp[7190]	=	17156979
GetExp[7191]	=	17159368
GetExp[7192]	=	17161757
GetExp[7193]	=	17164146
GetExp[7194]	=	17166534
GetExp[7195]	=	17168923
GetExp[7196]	=	17171312
GetExp[7197]	=	17173701
GetExp[7198]	=	17176090
GetExp[7199]	=	17178479
GetExp[7200]	=	17180868
GetExp[7201]	=	17183257
GetExp[7202]	=	17185646
GetExp[7203]	=	17188035
GetExp[7204]	=	17190424
GetExp[7205]	=	17192813
GetExp[7206]	=	17195202
GetExp[7207]	=	17197591
GetExp[7208]	=	17199980
GetExp[7209]	=	17202369
GetExp[7210]	=	17204757
GetExp[7211]	=	17207146
GetExp[7212]	=	17209535
GetExp[7213]	=	17211924
GetExp[7214]	=	17214313
GetExp[7215]	=	17216702
GetExp[7216]	=	17219091
GetExp[7217]	=	17221480
GetExp[7218]	=	17223869
GetExp[7219]	=	17226258
GetExp[7220]	=	17228647
GetExp[7221]	=	17231036
GetExp[7222]	=	17233425
GetExp[7223]	=	17235814
GetExp[7224]	=	17238203
GetExp[7225]	=	17240592
GetExp[7226]	=	17242980
GetExp[7227]	=	17245369
GetExp[7228]	=	17247758
GetExp[7229]	=	17250147
GetExp[7230]	=	17252536
GetExp[7231]	=	17254925
GetExp[7232]	=	17257314
GetExp[7233]	=	17259703
GetExp[7234]	=	17262092
GetExp[7235]	=	17264481
GetExp[7236]	=	17266870
GetExp[7237]	=	17269259
GetExp[7238]	=	17271648
GetExp[7239]	=	17274037
GetExp[7240]	=	17276426
GetExp[7241]	=	17278815
GetExp[7242]	=	17281203
GetExp[7243]	=	17283592
GetExp[7244]	=	17285981
GetExp[7245]	=	17288370
GetExp[7246]	=	17290759
GetExp[7247]	=	17293148
GetExp[7248]	=	17295537
GetExp[7249]	=	17297926
GetExp[7250]	=	17300315
GetExp[7251]	=	17302704
GetExp[7252]	=	17305093
GetExp[7253]	=	17307482
GetExp[7254]	=	17309871
GetExp[7255]	=	17312260
GetExp[7256]	=	17314649
GetExp[7257]	=	17317037
GetExp[7258]	=	17319426
GetExp[7259]	=	17321815
GetExp[7260]	=	17324204
GetExp[7261]	=	17326593
GetExp[7262]	=	17328982
GetExp[7263]	=	17331371
GetExp[7264]	=	17333760
GetExp[7265]	=	17336149
GetExp[7266]	=	17338538
GetExp[7267]	=	17340927
GetExp[7268]	=	17343316
GetExp[7269]	=	17345705
GetExp[7270]	=	17348094
GetExp[7271]	=	17350483
GetExp[7272]	=	17352872
GetExp[7273]	=	17355260
GetExp[7274]	=	17357649
GetExp[7275]	=	17360038
GetExp[7276]	=	17362427
GetExp[7277]	=	17364816
GetExp[7278]	=	17367205
GetExp[7279]	=	17369594
GetExp[7280]	=	17371983
GetExp[7281]	=	17374372
GetExp[7282]	=	17376761
GetExp[7283]	=	17379150
GetExp[7284]	=	17381539
GetExp[7285]	=	17383928
GetExp[7286]	=	17386317
GetExp[7287]	=	17388706
GetExp[7288]	=	17391095
GetExp[7289]	=	17393483
GetExp[7290]	=	17395872
GetExp[7291]	=	17398261
GetExp[7292]	=	17400650
GetExp[7293]	=	17403039
GetExp[7294]	=	17405428
GetExp[7295]	=	17407817
GetExp[7296]	=	17410206
GetExp[7297]	=	17412595
GetExp[7298]	=	17414984
GetExp[7299]	=	17417373
GetExp[7300]	=	17419762
GetExp[7301]	=	17422151
GetExp[7302]	=	17424540
GetExp[7303]	=	17426929
GetExp[7304]	=	17429317
GetExp[7305]	=	17431706
GetExp[7306]	=	17434095
GetExp[7307]	=	17436484
GetExp[7308]	=	17438873
GetExp[7309]	=	17441262
GetExp[7310]	=	17443651
GetExp[7311]	=	17446040
GetExp[7312]	=	17448429
GetExp[7313]	=	17450818
GetExp[7314]	=	17453207
GetExp[7315]	=	17455596
GetExp[7316]	=	17457985
GetExp[7317]	=	17460374
GetExp[7318]	=	17462763
GetExp[7319]	=	17465152
GetExp[7320]	=	17467540
GetExp[7321]	=	17469929
GetExp[7322]	=	17472318
GetExp[7323]	=	17474707
GetExp[7324]	=	17477096
GetExp[7325]	=	17479485
GetExp[7326]	=	17481874
GetExp[7327]	=	17484263
GetExp[7328]	=	17486652
GetExp[7329]	=	17489041
GetExp[7330]	=	17491430
GetExp[7331]	=	17493819
GetExp[7332]	=	17496208
GetExp[7333]	=	17498597
GetExp[7334]	=	17500986
GetExp[7335]	=	17503375
GetExp[7336]	=	17505763
GetExp[7337]	=	17508152
GetExp[7338]	=	17510541
GetExp[7339]	=	17512930
GetExp[7340]	=	17515319
GetExp[7341]	=	17517708
GetExp[7342]	=	17520097
GetExp[7343]	=	17522486
GetExp[7344]	=	17524875
GetExp[7345]	=	17527264
GetExp[7346]	=	17529653
GetExp[7347]	=	17532042
GetExp[7348]	=	17534431
GetExp[7349]	=	17536820
GetExp[7350]	=	17539209
GetExp[7351]	=	17541598
GetExp[7352]	=	17543986
GetExp[7353]	=	17546375
GetExp[7354]	=	17548764
GetExp[7355]	=	17551153
GetExp[7356]	=	17553542
GetExp[7357]	=	17555931
GetExp[7358]	=	17558320
GetExp[7359]	=	17560709
GetExp[7360]	=	17563098
GetExp[7361]	=	17565487
GetExp[7362]	=	17567876
GetExp[7363]	=	17570265
GetExp[7364]	=	17572654
GetExp[7365]	=	17575043
GetExp[7366]	=	17577432
GetExp[7367]	=	17579820
GetExp[7368]	=	17582209
GetExp[7369]	=	17584598
GetExp[7370]	=	17586987
GetExp[7371]	=	17589376
GetExp[7372]	=	17591765
GetExp[7373]	=	17594154
GetExp[7374]	=	17596543
GetExp[7375]	=	17598932
GetExp[7376]	=	17601321
GetExp[7377]	=	17603710
GetExp[7378]	=	17606099
GetExp[7379]	=	17608488
GetExp[7380]	=	17610877
GetExp[7381]	=	17613266
GetExp[7382]	=	17615655
GetExp[7383]	=	17618043
GetExp[7384]	=	17620432
GetExp[7385]	=	17622821
GetExp[7386]	=	17625210
GetExp[7387]	=	17627599
GetExp[7388]	=	17629988
GetExp[7389]	=	17632377
GetExp[7390]	=	17634766
GetExp[7391]	=	17637155
GetExp[7392]	=	17639544
GetExp[7393]	=	17641933
GetExp[7394]	=	17644322
GetExp[7395]	=	17646711
GetExp[7396]	=	17649100
GetExp[7397]	=	17651489
GetExp[7398]	=	17653878
GetExp[7399]	=	17656266
GetExp[7400]	=	17658655
GetExp[7401]	=	17661044
GetExp[7402]	=	17663433
GetExp[7403]	=	17665822
GetExp[7404]	=	17668211
GetExp[7405]	=	17670600
GetExp[7406]	=	17672989
GetExp[7407]	=	17675378
GetExp[7408]	=	17677767
GetExp[7409]	=	17680156
GetExp[7410]	=	17682545
GetExp[7411]	=	17684934
GetExp[7412]	=	17687323
GetExp[7413]	=	17689712
GetExp[7414]	=	17692101
GetExp[7415]	=	17694489
GetExp[7416]	=	17696878
GetExp[7417]	=	17699267
GetExp[7418]	=	17701656
GetExp[7419]	=	17704045
GetExp[7420]	=	17706434
GetExp[7421]	=	17708823
GetExp[7422]	=	17711212
GetExp[7423]	=	17713601
GetExp[7424]	=	17715990
GetExp[7425]	=	17718379
GetExp[7426]	=	17720768
GetExp[7427]	=	17723157
GetExp[7428]	=	17725546
GetExp[7429]	=	17727935
GetExp[7430]	=	17730323
GetExp[7431]	=	17732712
GetExp[7432]	=	17735101
GetExp[7433]	=	17737490
GetExp[7434]	=	17739879
GetExp[7435]	=	17742268
GetExp[7436]	=	17744657
GetExp[7437]	=	17747046
GetExp[7438]	=	17749435
GetExp[7439]	=	17751824
GetExp[7440]	=	17754213
GetExp[7441]	=	17756602
GetExp[7442]	=	17758991
GetExp[7443]	=	17761380
GetExp[7444]	=	17763769
GetExp[7445]	=	17766158
GetExp[7446]	=	17768546
GetExp[7447]	=	17770935
GetExp[7448]	=	17773324
GetExp[7449]	=	17775713
GetExp[7450]	=	17778102
GetExp[7451]	=	17780491
GetExp[7452]	=	17782880
GetExp[7453]	=	17785269
GetExp[7454]	=	17787658
GetExp[7455]	=	17790047
GetExp[7456]	=	17792436
GetExp[7457]	=	17794825
GetExp[7458]	=	17797214
GetExp[7459]	=	17799603
GetExp[7460]	=	17801992
GetExp[7461]	=	17804381
GetExp[7462]	=	17806769
GetExp[7463]	=	17809158
GetExp[7464]	=	17811547
GetExp[7465]	=	17813936
GetExp[7466]	=	17816325
GetExp[7467]	=	17818714
GetExp[7468]	=	17821103
GetExp[7469]	=	17823492
GetExp[7470]	=	17825881
GetExp[7471]	=	17828270
GetExp[7472]	=	17830659
GetExp[7473]	=	17833048
GetExp[7474]	=	17835437
GetExp[7475]	=	17837826
GetExp[7476]	=	17840215
GetExp[7477]	=	17842604
GetExp[7478]	=	17844992
GetExp[7479]	=	17847381
GetExp[7480]	=	17849770
GetExp[7481]	=	17852159
GetExp[7482]	=	17854548
GetExp[7483]	=	17856937
GetExp[7484]	=	17859326
GetExp[7485]	=	17861715
GetExp[7486]	=	17864104
GetExp[7487]	=	17866493
GetExp[7488]	=	17868882
GetExp[7489]	=	17871271
GetExp[7490]	=	17873660
GetExp[7491]	=	17876049
GetExp[7492]	=	17878438
GetExp[7493]	=	17880826
GetExp[7494]	=	17883215
GetExp[7495]	=	17885604
GetExp[7496]	=	17887993
GetExp[7497]	=	17890382
GetExp[7498]	=	17892771
GetExp[7499]	=	17895160
GetExp[7500]	=	17897549
GetExp[7501]	=	17899938
GetExp[7502]	=	17902327
GetExp[7503]	=	17904716
GetExp[7504]	=	17907105
GetExp[7505]	=	17909494
GetExp[7506]	=	17911883
GetExp[7507]	=	17914272
GetExp[7508]	=	17916661
GetExp[7509]	=	17919049
GetExp[7510]	=	17921438
GetExp[7511]	=	17923827
GetExp[7512]	=	17926216
GetExp[7513]	=	17928605
GetExp[7514]	=	17930994
GetExp[7515]	=	17933383
GetExp[7516]	=	17935772
GetExp[7517]	=	17938161
GetExp[7518]	=	17940550
GetExp[7519]	=	17942939
GetExp[7520]	=	17945328
GetExp[7521]	=	17947717
GetExp[7522]	=	17950106
GetExp[7523]	=	17952495
GetExp[7524]	=	17954884
GetExp[7525]	=	17957272
GetExp[7526]	=	17959661
GetExp[7527]	=	17962050
GetExp[7528]	=	17964439
GetExp[7529]	=	17966828
GetExp[7530]	=	17969217
GetExp[7531]	=	17971606
GetExp[7532]	=	17973995
GetExp[7533]	=	17976384
GetExp[7534]	=	17978773
GetExp[7535]	=	17981162
GetExp[7536]	=	17983551
GetExp[7537]	=	17985940
GetExp[7538]	=	17988329
GetExp[7539]	=	17990718
GetExp[7540]	=	17993106
GetExp[7541]	=	17995495
GetExp[7542]	=	17997884
GetExp[7543]	=	18000273
GetExp[7544]	=	18002662
GetExp[7545]	=	18005051
GetExp[7546]	=	18007440
GetExp[7547]	=	18009829
GetExp[7548]	=	18012218
GetExp[7549]	=	18014607
GetExp[7550]	=	18016996
GetExp[7551]	=	18019385
GetExp[7552]	=	18021774
GetExp[7553]	=	18024163
GetExp[7554]	=	18026552
GetExp[7555]	=	18028941
GetExp[7556]	=	18031329
GetExp[7557]	=	18033718
GetExp[7558]	=	18036107
GetExp[7559]	=	18038496
GetExp[7560]	=	18040885
GetExp[7561]	=	18043274
GetExp[7562]	=	18045663
GetExp[7563]	=	18048052
GetExp[7564]	=	18050441
GetExp[7565]	=	18052830
GetExp[7566]	=	18055219
GetExp[7567]	=	18057608
GetExp[7568]	=	18059997
GetExp[7569]	=	18062386
GetExp[7570]	=	18064775
GetExp[7571]	=	18067164
GetExp[7572]	=	18069552
GetExp[7573]	=	18071941
GetExp[7574]	=	18074330
GetExp[7575]	=	18076719
GetExp[7576]	=	18079108
GetExp[7577]	=	18081497
GetExp[7578]	=	18083886
GetExp[7579]	=	18086275
GetExp[7580]	=	18088664
GetExp[7581]	=	18091053
GetExp[7582]	=	18093442
GetExp[7583]	=	18095831
GetExp[7584]	=	18098220
GetExp[7585]	=	18100609
GetExp[7586]	=	18102998
GetExp[7587]	=	18105387
GetExp[7588]	=	18107775
GetExp[7589]	=	18110164
GetExp[7590]	=	18112553
GetExp[7591]	=	18114942
GetExp[7592]	=	18117331
GetExp[7593]	=	18119720
GetExp[7594]	=	18122109
GetExp[7595]	=	18124498
GetExp[7596]	=	18126887
GetExp[7597]	=	18129276
GetExp[7598]	=	18131665
GetExp[7599]	=	18134054
GetExp[7600]	=	18136443
GetExp[7601]	=	18138832
GetExp[7602]	=	18141221
GetExp[7603]	=	18143609
GetExp[7604]	=	18145998
GetExp[7605]	=	18148387
GetExp[7606]	=	18150776
GetExp[7607]	=	18153165
GetExp[7608]	=	18155554
GetExp[7609]	=	18157943
GetExp[7610]	=	18160332
GetExp[7611]	=	18162721
GetExp[7612]	=	18165110
GetExp[7613]	=	18167499
GetExp[7614]	=	18169888
GetExp[7615]	=	18172277
GetExp[7616]	=	18174666
GetExp[7617]	=	18177055
GetExp[7618]	=	18179444
GetExp[7619]	=	18181832
GetExp[7620]	=	18184221
GetExp[7621]	=	18186610
GetExp[7622]	=	18188999
GetExp[7623]	=	18191388
GetExp[7624]	=	18193777
GetExp[7625]	=	18196166
GetExp[7626]	=	18198555
GetExp[7627]	=	18200944
GetExp[7628]	=	18203333
GetExp[7629]	=	18205722
GetExp[7630]	=	18208111
GetExp[7631]	=	18210500
GetExp[7632]	=	18212889
GetExp[7633]	=	18215278
GetExp[7634]	=	18217667
GetExp[7635]	=	18220055
GetExp[7636]	=	18222444
GetExp[7637]	=	18224833
GetExp[7638]	=	18227222
GetExp[7639]	=	18229611
GetExp[7640]	=	18232000
GetExp[7641]	=	18234389
GetExp[7642]	=	18236778
GetExp[7643]	=	18239167
GetExp[7644]	=	18241556
GetExp[7645]	=	18243945
GetExp[7646]	=	18246334
GetExp[7647]	=	18248723
GetExp[7648]	=	18251112
GetExp[7649]	=	18253501
GetExp[7650]	=	18255890
GetExp[7651]	=	18258278
GetExp[7652]	=	18260667
GetExp[7653]	=	18263056
GetExp[7654]	=	18265445
GetExp[7655]	=	18267834
GetExp[7656]	=	18270223
GetExp[7657]	=	18272612
GetExp[7658]	=	18275001
GetExp[7659]	=	18277390
GetExp[7660]	=	18279779
GetExp[7661]	=	18282168
GetExp[7662]	=	18284557
GetExp[7663]	=	18286946
GetExp[7664]	=	18289335
GetExp[7665]	=	18291724
GetExp[7666]	=	18294112
GetExp[7667]	=	18296501
GetExp[7668]	=	18298890
GetExp[7669]	=	18301279
GetExp[7670]	=	18303668
GetExp[7671]	=	18306057
GetExp[7672]	=	18308446
GetExp[7673]	=	18310835
GetExp[7674]	=	18313224
GetExp[7675]	=	18315613
GetExp[7676]	=	18318002
GetExp[7677]	=	18320391
GetExp[7678]	=	18322780
GetExp[7679]	=	18325169
GetExp[7680]	=	18327558
GetExp[7681]	=	18329947
GetExp[7682]	=	18332335
GetExp[7683]	=	18334724
GetExp[7684]	=	18337113
GetExp[7685]	=	18339502
GetExp[7686]	=	18341891
GetExp[7687]	=	18344280
GetExp[7688]	=	18346669
GetExp[7689]	=	18349058
GetExp[7690]	=	18351447
GetExp[7691]	=	18353836
GetExp[7692]	=	18356225
GetExp[7693]	=	18358614
GetExp[7694]	=	18361003
GetExp[7695]	=	18363392
GetExp[7696]	=	18365781
GetExp[7697]	=	18368170
GetExp[7698]	=	18370558
GetExp[7699]	=	18372947
GetExp[7700]	=	18375336
GetExp[7701]	=	18377725
GetExp[7702]	=	18380114
GetExp[7703]	=	18382503
GetExp[7704]	=	18384892
GetExp[7705]	=	18387281
GetExp[7706]	=	18389670
GetExp[7707]	=	18392059
GetExp[7708]	=	18394448
GetExp[7709]	=	18396837
GetExp[7710]	=	18399226
GetExp[7711]	=	18401615
GetExp[7712]	=	18404004
GetExp[7713]	=	18406393
GetExp[7714]	=	18408781
GetExp[7715]	=	18411170
GetExp[7716]	=	18413559
GetExp[7717]	=	18415948
GetExp[7718]	=	18418337
GetExp[7719]	=	18420726
GetExp[7720]	=	18423115
GetExp[7721]	=	18425504
GetExp[7722]	=	18427893
GetExp[7723]	=	18430282
GetExp[7724]	=	18432671
GetExp[7725]	=	18435060
GetExp[7726]	=	18437449
GetExp[7727]	=	18439838
GetExp[7728]	=	18442227
GetExp[7729]	=	18444615
GetExp[7730]	=	18447004
GetExp[7731]	=	18449393
GetExp[7732]	=	18451782
GetExp[7733]	=	18454171
GetExp[7734]	=	18456560
GetExp[7735]	=	18458949
GetExp[7736]	=	18461338
GetExp[7737]	=	18463727
GetExp[7738]	=	18466116
GetExp[7739]	=	18468505
GetExp[7740]	=	18470894
GetExp[7741]	=	18473283
GetExp[7742]	=	18475672
GetExp[7743]	=	18478061
GetExp[7744]	=	18480450
GetExp[7745]	=	18482838
GetExp[7746]	=	18485227
GetExp[7747]	=	18487616
GetExp[7748]	=	18490005
GetExp[7749]	=	18492394
GetExp[7750]	=	18494783
GetExp[7751]	=	18497172
GetExp[7752]	=	18499561
GetExp[7753]	=	18501950
GetExp[7754]	=	18504339
GetExp[7755]	=	18506728
GetExp[7756]	=	18509117
GetExp[7757]	=	18511506
GetExp[7758]	=	18513895
GetExp[7759]	=	18516284
GetExp[7760]	=	18518673
GetExp[7761]	=	18521061
GetExp[7762]	=	18523450
GetExp[7763]	=	18525839
GetExp[7764]	=	18528228
GetExp[7765]	=	18530617
GetExp[7766]	=	18533006
GetExp[7767]	=	18535395
GetExp[7768]	=	18537784
GetExp[7769]	=	18540173
GetExp[7770]	=	18542562
GetExp[7771]	=	18544951
GetExp[7772]	=	18547340
GetExp[7773]	=	18549729
GetExp[7774]	=	18552118
GetExp[7775]	=	18554507
GetExp[7776]	=	18556896
GetExp[7777]	=	18559284
GetExp[7778]	=	18561673
GetExp[7779]	=	18564062
GetExp[7780]	=	18566451
GetExp[7781]	=	18568840
GetExp[7782]	=	18571229
GetExp[7783]	=	18573618
GetExp[7784]	=	18576007
GetExp[7785]	=	18578396
GetExp[7786]	=	18580785
GetExp[7787]	=	18583174
GetExp[7788]	=	18585563
GetExp[7789]	=	18587952
GetExp[7790]	=	18590341
GetExp[7791]	=	18592730
GetExp[7792]	=	18595118
GetExp[7793]	=	18597507
GetExp[7794]	=	18599896
GetExp[7795]	=	18602285
GetExp[7796]	=	18604674
GetExp[7797]	=	18607063
GetExp[7798]	=	18609452
GetExp[7799]	=	18611841
GetExp[7800]	=	18614230
GetExp[7801]	=	18616619
GetExp[7802]	=	18619008
GetExp[7803]	=	18621397
GetExp[7804]	=	18623786
GetExp[7805]	=	18626175
GetExp[7806]	=	18628564
GetExp[7807]	=	18630953
GetExp[7808]	=	18633341
GetExp[7809]	=	18635730
GetExp[7810]	=	18638119
GetExp[7811]	=	18640508
GetExp[7812]	=	18642897
GetExp[7813]	=	18645286
GetExp[7814]	=	18647675
GetExp[7815]	=	18650064
GetExp[7816]	=	18652453
GetExp[7817]	=	18654842
GetExp[7818]	=	18657231
GetExp[7819]	=	18659620
GetExp[7820]	=	18662009
GetExp[7821]	=	18664398
GetExp[7822]	=	18666787
GetExp[7823]	=	18669176
GetExp[7824]	=	18671564
GetExp[7825]	=	18673953
GetExp[7826]	=	18676342
GetExp[7827]	=	18678731
GetExp[7828]	=	18681120
GetExp[7829]	=	18683509
GetExp[7830]	=	18685898
GetExp[7831]	=	18688287
GetExp[7832]	=	18690676
GetExp[7833]	=	18693065
GetExp[7834]	=	18695454
GetExp[7835]	=	18697843
GetExp[7836]	=	18700232
GetExp[7837]	=	18702621
GetExp[7838]	=	18705010
GetExp[7839]	=	18707398
GetExp[7840]	=	18709787
GetExp[7841]	=	18712176
GetExp[7842]	=	18714565
GetExp[7843]	=	18716954
GetExp[7844]	=	18719343
GetExp[7845]	=	18721732
GetExp[7846]	=	18724121
GetExp[7847]	=	18726510
GetExp[7848]	=	18728899
GetExp[7849]	=	18731288
GetExp[7850]	=	18733677
GetExp[7851]	=	18736066
GetExp[7852]	=	18738455
GetExp[7853]	=	18740844
GetExp[7854]	=	18743233
GetExp[7855]	=	18745621
GetExp[7856]	=	18748010
GetExp[7857]	=	18750399
GetExp[7858]	=	18752788
GetExp[7859]	=	18755177
GetExp[7860]	=	18757566
GetExp[7861]	=	18759955
GetExp[7862]	=	18762344
GetExp[7863]	=	18764733
GetExp[7864]	=	18767122
GetExp[7865]	=	18769511
GetExp[7866]	=	18771900
GetExp[7867]	=	18774289
GetExp[7868]	=	18776678
GetExp[7869]	=	18779067
GetExp[7870]	=	18781456
GetExp[7871]	=	18783844
GetExp[7872]	=	18786233
GetExp[7873]	=	18788622
GetExp[7874]	=	18791011
GetExp[7875]	=	18793400
GetExp[7876]	=	18795789
GetExp[7877]	=	18798178
GetExp[7878]	=	18800567
GetExp[7879]	=	18802956
GetExp[7880]	=	18805345
GetExp[7881]	=	18807734
GetExp[7882]	=	18810123
GetExp[7883]	=	18812512
GetExp[7884]	=	18814901
GetExp[7885]	=	18817290
GetExp[7886]	=	18819679
GetExp[7887]	=	18822067
GetExp[7888]	=	18824456
GetExp[7889]	=	18826845
GetExp[7890]	=	18829234
GetExp[7891]	=	18831623
GetExp[7892]	=	18834012
GetExp[7893]	=	18836401
GetExp[7894]	=	18838790
GetExp[7895]	=	18841179
GetExp[7896]	=	18843568
GetExp[7897]	=	18845957
GetExp[7898]	=	18848346
GetExp[7899]	=	18850735
GetExp[7900]	=	18853124
GetExp[7901]	=	18855513
GetExp[7902]	=	18857901
GetExp[7903]	=	18860290
GetExp[7904]	=	18862679
GetExp[7905]	=	18865068
GetExp[7906]	=	18867457
GetExp[7907]	=	18869846
GetExp[7908]	=	18872235
GetExp[7909]	=	18874624
GetExp[7910]	=	18877013
GetExp[7911]	=	18879402
GetExp[7912]	=	18881791
GetExp[7913]	=	18884180
GetExp[7914]	=	18886569
GetExp[7915]	=	18888958
GetExp[7916]	=	18891347
GetExp[7917]	=	18893736
GetExp[7918]	=	18896124
GetExp[7919]	=	18898513
GetExp[7920]	=	18900902
GetExp[7921]	=	18903291
GetExp[7922]	=	18905680
GetExp[7923]	=	18908069
GetExp[7924]	=	18910458
GetExp[7925]	=	18912847
GetExp[7926]	=	18915236
GetExp[7927]	=	18917625
GetExp[7928]	=	18920014
GetExp[7929]	=	18922403
GetExp[7930]	=	18924792
GetExp[7931]	=	18927181
GetExp[7932]	=	18929570
GetExp[7933]	=	18931959
GetExp[7934]	=	18934347
GetExp[7935]	=	18936736
GetExp[7936]	=	18939125
GetExp[7937]	=	18941514
GetExp[7938]	=	18943903
GetExp[7939]	=	18946292
GetExp[7940]	=	18948681
GetExp[7941]	=	18951070
GetExp[7942]	=	18953459
GetExp[7943]	=	18955848
GetExp[7944]	=	18958237
GetExp[7945]	=	18960626
GetExp[7946]	=	18963015
GetExp[7947]	=	18965404
GetExp[7948]	=	18967793
GetExp[7949]	=	18970182
GetExp[7950]	=	18972570
GetExp[7951]	=	18974959
GetExp[7952]	=	18977348
GetExp[7953]	=	18979737
GetExp[7954]	=	18982126
GetExp[7955]	=	18984515
GetExp[7956]	=	18986904
GetExp[7957]	=	18989293
GetExp[7958]	=	18991682
GetExp[7959]	=	18994071
GetExp[7960]	=	18996460
GetExp[7961]	=	18998849
GetExp[7962]	=	19001238
GetExp[7963]	=	19003627
GetExp[7964]	=	19006016
GetExp[7965]	=	19008404
GetExp[7966]	=	19010793
GetExp[7967]	=	19013182
GetExp[7968]	=	19015571
GetExp[7969]	=	19017960
GetExp[7970]	=	19020349
GetExp[7971]	=	19022738
GetExp[7972]	=	19025127
GetExp[7973]	=	19027516
GetExp[7974]	=	19029905
GetExp[7975]	=	19032294
GetExp[7976]	=	19034683
GetExp[7977]	=	19037072
GetExp[7978]	=	19039461
GetExp[7979]	=	19041850
GetExp[7980]	=	19044239
GetExp[7981]	=	19046627
GetExp[7982]	=	19049016
GetExp[7983]	=	19051405
GetExp[7984]	=	19053794
GetExp[7985]	=	19056183
GetExp[7986]	=	19058572
GetExp[7987]	=	19060961
GetExp[7988]	=	19063350
GetExp[7989]	=	19065739
GetExp[7990]	=	19068128
GetExp[7991]	=	19070517
GetExp[7992]	=	19072906
GetExp[7993]	=	19075295
GetExp[7994]	=	19077684
GetExp[7995]	=	19080073
GetExp[7996]	=	19082462
GetExp[7997]	=	19084850
GetExp[7998]	=	19087239
GetExp[7999]	=	19089628
GetExp[8000]	=	19092017
GetExp[8001]	=	19094406
GetExp[8002]	=	19096795
GetExp[8003]	=	19099184
GetExp[8004]	=	19101573
GetExp[8005]	=	19103962
GetExp[8006]	=	19106351
GetExp[8007]	=	19108740
GetExp[8008]	=	19111129
GetExp[8009]	=	19113518
GetExp[8010]	=	19115907
GetExp[8011]	=	19118296
GetExp[8012]	=	19120685
GetExp[8013]	=	19123073
GetExp[8014]	=	19125462
GetExp[8015]	=	19127851
GetExp[8016]	=	19130240
GetExp[8017]	=	19132629
GetExp[8018]	=	19135018
GetExp[8019]	=	19137407
GetExp[8020]	=	19139796
GetExp[8021]	=	19142185
GetExp[8022]	=	19144574
GetExp[8023]	=	19146963
GetExp[8024]	=	19149352
GetExp[8025]	=	19151741
GetExp[8026]	=	19154130
GetExp[8027]	=	19156519
GetExp[8028]	=	19158907
GetExp[8029]	=	19161296
GetExp[8030]	=	19163685
GetExp[8031]	=	19166074
GetExp[8032]	=	19168463
GetExp[8033]	=	19170852
GetExp[8034]	=	19173241
GetExp[8035]	=	19175630
GetExp[8036]	=	19178019
GetExp[8037]	=	19180408
GetExp[8038]	=	19182797
GetExp[8039]	=	19185186
GetExp[8040]	=	19187575
GetExp[8041]	=	19189964
GetExp[8042]	=	19192353
GetExp[8043]	=	19194742
GetExp[8044]	=	19197130
GetExp[8045]	=	19199519
GetExp[8046]	=	19201908
GetExp[8047]	=	19204297
GetExp[8048]	=	19206686
GetExp[8049]	=	19209075
GetExp[8050]	=	19211464
GetExp[8051]	=	19213853
GetExp[8052]	=	19216242
GetExp[8053]	=	19218631
GetExp[8054]	=	19221020
GetExp[8055]	=	19223409
GetExp[8056]	=	19225798
GetExp[8057]	=	19228187
GetExp[8058]	=	19230576
GetExp[8059]	=	19232965
GetExp[8060]	=	19235353
GetExp[8061]	=	19237742
GetExp[8062]	=	19240131
GetExp[8063]	=	19242520
GetExp[8064]	=	19244909
GetExp[8065]	=	19247298
GetExp[8066]	=	19249687
GetExp[8067]	=	19252076
GetExp[8068]	=	19254465
GetExp[8069]	=	19256854
GetExp[8070]	=	19259243
GetExp[8071]	=	19261632
GetExp[8072]	=	19264021
GetExp[8073]	=	19266410
GetExp[8074]	=	19268799
GetExp[8075]	=	19271188
GetExp[8076]	=	19273576
GetExp[8077]	=	19275965
GetExp[8078]	=	19278354
GetExp[8079]	=	19280743
GetExp[8080]	=	19283132
GetExp[8081]	=	19285521
GetExp[8082]	=	19287910
GetExp[8083]	=	19290299
GetExp[8084]	=	19292688
GetExp[8085]	=	19295077
GetExp[8086]	=	19297466
GetExp[8087]	=	19299855
GetExp[8088]	=	19302244
GetExp[8089]	=	19304633
GetExp[8090]	=	19307022
GetExp[8091]	=	19309410
GetExp[8092]	=	19311799
GetExp[8093]	=	19314188
GetExp[8094]	=	19316577
GetExp[8095]	=	19318966
GetExp[8096]	=	19321355
GetExp[8097]	=	19323744
GetExp[8098]	=	19326133
GetExp[8099]	=	19328522
GetExp[8100]	=	19330911
GetExp[8101]	=	19333300
GetExp[8102]	=	19335689
GetExp[8103]	=	19338078
GetExp[8104]	=	19340467
GetExp[8105]	=	19342856
GetExp[8106]	=	19345245
GetExp[8107]	=	19347633
GetExp[8108]	=	19350022
GetExp[8109]	=	19352411
GetExp[8110]	=	19354800
GetExp[8111]	=	19357189
GetExp[8112]	=	19359578
GetExp[8113]	=	19361967
GetExp[8114]	=	19364356
GetExp[8115]	=	19366745
GetExp[8116]	=	19369134
GetExp[8117]	=	19371523
GetExp[8118]	=	19373912
GetExp[8119]	=	19376301
GetExp[8120]	=	19378690
GetExp[8121]	=	19381079
GetExp[8122]	=	19383468
GetExp[8123]	=	19385856
GetExp[8124]	=	19388245
GetExp[8125]	=	19390634
GetExp[8126]	=	19393023
GetExp[8127]	=	19395412
GetExp[8128]	=	19397801
GetExp[8129]	=	19400190
GetExp[8130]	=	19402579
GetExp[8131]	=	19404968
GetExp[8132]	=	19407357
GetExp[8133]	=	19409746
GetExp[8134]	=	19412135
GetExp[8135]	=	19414524
GetExp[8136]	=	19416913
GetExp[8137]	=	19419302
GetExp[8138]	=	19421690
GetExp[8139]	=	19424079
GetExp[8140]	=	19426468
GetExp[8141]	=	19428857
GetExp[8142]	=	19431246
GetExp[8143]	=	19433635
GetExp[8144]	=	19436024
GetExp[8145]	=	19438413
GetExp[8146]	=	19440802
GetExp[8147]	=	19443191
GetExp[8148]	=	19445580
GetExp[8149]	=	19447969
GetExp[8150]	=	19450358
GetExp[8151]	=	19452747
GetExp[8152]	=	19455136
GetExp[8153]	=	19457525
GetExp[8154]	=	19459913
GetExp[8155]	=	19462302
GetExp[8156]	=	19464691
GetExp[8157]	=	19467080
GetExp[8158]	=	19469469
GetExp[8159]	=	19471858
GetExp[8160]	=	19474247
GetExp[8161]	=	19476636
GetExp[8162]	=	19479025
GetExp[8163]	=	19481414
GetExp[8164]	=	19483803
GetExp[8165]	=	19486192
GetExp[8166]	=	19488581
GetExp[8167]	=	19490970
GetExp[8168]	=	19493359
GetExp[8169]	=	19495748
GetExp[8170]	=	19498136
GetExp[8171]	=	19500525
GetExp[8172]	=	19502914
GetExp[8173]	=	19505303
GetExp[8174]	=	19507692
GetExp[8175]	=	19510081
GetExp[8176]	=	19512470
GetExp[8177]	=	19514859
GetExp[8178]	=	19517248
GetExp[8179]	=	19519637
GetExp[8180]	=	19522026
GetExp[8181]	=	19524415
GetExp[8182]	=	19526804
GetExp[8183]	=	19529193
GetExp[8184]	=	19531582
GetExp[8185]	=	19533971
GetExp[8186]	=	19536359
GetExp[8187]	=	19538748
GetExp[8188]	=	19541137
GetExp[8189]	=	19543526
GetExp[8190]	=	19545915
GetExp[8191]	=	19548304
GetExp[8192]	=	19550693
GetExp[8193]	=	19553082
GetExp[8194]	=	19555471
GetExp[8195]	=	19557860
GetExp[8196]	=	19560249
GetExp[8197]	=	19562638
GetExp[8198]	=	19565027
GetExp[8199]	=	19567416
GetExp[8200]	=	19569805
GetExp[8201]	=	19572193
GetExp[8202]	=	19574582
GetExp[8203]	=	19576971
GetExp[8204]	=	19579360
GetExp[8205]	=	19581749
GetExp[8206]	=	19584138
GetExp[8207]	=	19586527
GetExp[8208]	=	19588916
GetExp[8209]	=	19591305
GetExp[8210]	=	19593694
GetExp[8211]	=	19596083
GetExp[8212]	=	19598472
GetExp[8213]	=	19600861
GetExp[8214]	=	19603250
GetExp[8215]	=	19605639
GetExp[8216]	=	19608028
GetExp[8217]	=	19610416
GetExp[8218]	=	19612805
GetExp[8219]	=	19615194
GetExp[8220]	=	19617583
GetExp[8221]	=	19619972
GetExp[8222]	=	19622361
GetExp[8223]	=	19624750
GetExp[8224]	=	19627139
GetExp[8225]	=	19629528
GetExp[8226]	=	19631917
GetExp[8227]	=	19634306
GetExp[8228]	=	19636695
GetExp[8229]	=	19639084
GetExp[8230]	=	19641473
GetExp[8231]	=	19643862
GetExp[8232]	=	19646251
GetExp[8233]	=	19648639
GetExp[8234]	=	19651028
GetExp[8235]	=	19653417
GetExp[8236]	=	19655806
GetExp[8237]	=	19658195
GetExp[8238]	=	19660584
GetExp[8239]	=	19662973
GetExp[8240]	=	19665362
GetExp[8241]	=	19667751
GetExp[8242]	=	19670140
GetExp[8243]	=	19672529
GetExp[8244]	=	19674918
GetExp[8245]	=	19677307
GetExp[8246]	=	19679696
GetExp[8247]	=	19682085
GetExp[8248]	=	19684474
GetExp[8249]	=	19686862
GetExp[8250]	=	19689251
GetExp[8251]	=	19691640
GetExp[8252]	=	19694029
GetExp[8253]	=	19696418
GetExp[8254]	=	19698807
GetExp[8255]	=	19701196
GetExp[8256]	=	19703585
GetExp[8257]	=	19705974
GetExp[8258]	=	19708363
GetExp[8259]	=	19710752
GetExp[8260]	=	19713141
GetExp[8261]	=	19715530
GetExp[8262]	=	19717919
GetExp[8263]	=	19720308
GetExp[8264]	=	19722696
GetExp[8265]	=	19725085
GetExp[8266]	=	19727474
GetExp[8267]	=	19729863
GetExp[8268]	=	19732252
GetExp[8269]	=	19734641
GetExp[8270]	=	19737030
GetExp[8271]	=	19739419
GetExp[8272]	=	19741808
GetExp[8273]	=	19744197
GetExp[8274]	=	19746586
GetExp[8275]	=	19748975
GetExp[8276]	=	19751364
GetExp[8277]	=	19753753
GetExp[8278]	=	19756142
GetExp[8279]	=	19758531
GetExp[8280]	=	19760919
GetExp[8281]	=	19763308
GetExp[8282]	=	19765697
GetExp[8283]	=	19768086
GetExp[8284]	=	19770475
GetExp[8285]	=	19772864
GetExp[8286]	=	19775253
GetExp[8287]	=	19777642
GetExp[8288]	=	19780031
GetExp[8289]	=	19782420
GetExp[8290]	=	19784809
GetExp[8291]	=	19787198
GetExp[8292]	=	19789587
GetExp[8293]	=	19791976
GetExp[8294]	=	19794365
GetExp[8295]	=	19796754
GetExp[8296]	=	19799142
GetExp[8297]	=	19801531
GetExp[8298]	=	19803920
GetExp[8299]	=	19806309
GetExp[8300]	=	19808698
GetExp[8301]	=	19811087
GetExp[8302]	=	19813476
GetExp[8303]	=	19815865
GetExp[8304]	=	19818254
GetExp[8305]	=	19820643
GetExp[8306]	=	19823032
GetExp[8307]	=	19825421
GetExp[8308]	=	19827810
GetExp[8309]	=	19830199
GetExp[8310]	=	19832588
GetExp[8311]	=	19834977
GetExp[8312]	=	19837365
GetExp[8313]	=	19839754
GetExp[8314]	=	19842143
GetExp[8315]	=	19844532
GetExp[8316]	=	19846921
GetExp[8317]	=	19849310
GetExp[8318]	=	19851699
GetExp[8319]	=	19854088
GetExp[8320]	=	19856477
GetExp[8321]	=	19858866
GetExp[8322]	=	19861255
GetExp[8323]	=	19863644
GetExp[8324]	=	19866033
GetExp[8325]	=	19868422
GetExp[8326]	=	19870811
GetExp[8327]	=	19873199
GetExp[8328]	=	19875588
GetExp[8329]	=	19877977
GetExp[8330]	=	19880366
GetExp[8331]	=	19882755
GetExp[8332]	=	19885144
GetExp[8333]	=	19887533
GetExp[8334]	=	19889922
GetExp[8335]	=	19892311
GetExp[8336]	=	19894700
GetExp[8337]	=	19897089
GetExp[8338]	=	19899478
GetExp[8339]	=	19901867
GetExp[8340]	=	19904256
GetExp[8341]	=	19906645
GetExp[8342]	=	19909034
GetExp[8343]	=	19911422
GetExp[8344]	=	19913811
GetExp[8345]	=	19916200
GetExp[8346]	=	19918589
GetExp[8347]	=	19920978
GetExp[8348]	=	19923367
GetExp[8349]	=	19925756
GetExp[8350]	=	19928145
GetExp[8351]	=	19930534
GetExp[8352]	=	19932923
GetExp[8353]	=	19935312
GetExp[8354]	=	19937701
GetExp[8355]	=	19940090
GetExp[8356]	=	19942479
GetExp[8357]	=	19944868
GetExp[8358]	=	19947257
GetExp[8359]	=	19949645
GetExp[8360]	=	19952034
GetExp[8361]	=	19954423
GetExp[8362]	=	19956812
GetExp[8363]	=	19959201
GetExp[8364]	=	19961590
GetExp[8365]	=	19963979
GetExp[8366]	=	19966368
GetExp[8367]	=	19968757
GetExp[8368]	=	19971146
GetExp[8369]	=	19973535
GetExp[8370]	=	19975924
GetExp[8371]	=	19978313
GetExp[8372]	=	19980702
GetExp[8373]	=	19983091
GetExp[8374]	=	19985480
GetExp[8375]	=	19987868
GetExp[8376]	=	19990257
GetExp[8377]	=	19992646
GetExp[8378]	=	19995035
GetExp[8379]	=	19997424
GetExp[8380]	=	19999813
GetExp[8381]	=	20002202
GetExp[8382]	=	20004591
GetExp[8383]	=	20006980
GetExp[8384]	=	20009369
GetExp[8385]	=	20011758
GetExp[8386]	=	20014147
GetExp[8387]	=	20016536
GetExp[8388]	=	20018925
GetExp[8389]	=	20021314
GetExp[8390]	=	20023702
GetExp[8391]	=	20026091
GetExp[8392]	=	20028480
GetExp[8393]	=	20030869
GetExp[8394]	=	20033258
GetExp[8395]	=	20035647
GetExp[8396]	=	20038036
GetExp[8397]	=	20040425
GetExp[8398]	=	20042814
GetExp[8399]	=	20045203
GetExp[8400]	=	20047592
GetExp[8401]	=	20049981
GetExp[8402]	=	20052370
GetExp[8403]	=	20054759
GetExp[8404]	=	20057148
GetExp[8405]	=	20059537
GetExp[8406]	=	20061925
GetExp[8407]	=	20064314
GetExp[8408]	=	20066703
GetExp[8409]	=	20069092
GetExp[8410]	=	20071481
GetExp[8411]	=	20073870
GetExp[8412]	=	20076259
GetExp[8413]	=	20078648
GetExp[8414]	=	20081037
GetExp[8415]	=	20083426
GetExp[8416]	=	20085815
GetExp[8417]	=	20088204
GetExp[8418]	=	20090593
GetExp[8419]	=	20092982
GetExp[8420]	=	20095371
GetExp[8421]	=	20097760
GetExp[8422]	=	20100148
GetExp[8423]	=	20102537
GetExp[8424]	=	20104926
GetExp[8425]	=	20107315
GetExp[8426]	=	20109704
GetExp[8427]	=	20112093
GetExp[8428]	=	20114482
GetExp[8429]	=	20116871
GetExp[8430]	=	20119260
GetExp[8431]	=	20121649
GetExp[8432]	=	20124038
GetExp[8433]	=	20126427
GetExp[8434]	=	20128816
GetExp[8435]	=	20131205
GetExp[8436]	=	20133594
GetExp[8437]	=	20135982
GetExp[8438]	=	20138371
GetExp[8439]	=	20140760
GetExp[8440]	=	20143149
GetExp[8441]	=	20145538
GetExp[8442]	=	20147927
GetExp[8443]	=	20150316
GetExp[8444]	=	20152705
GetExp[8445]	=	20155094
GetExp[8446]	=	20157483
GetExp[8447]	=	20159872
GetExp[8448]	=	20162261
GetExp[8449]	=	20164650
GetExp[8450]	=	20167039
GetExp[8451]	=	20169428
GetExp[8452]	=	20171817
GetExp[8453]	=	20174205
GetExp[8454]	=	20176594
GetExp[8455]	=	20178983
GetExp[8456]	=	20181372
GetExp[8457]	=	20183761
GetExp[8458]	=	20186150
GetExp[8459]	=	20188539
GetExp[8460]	=	20190928
GetExp[8461]	=	20193317
GetExp[8462]	=	20195706
GetExp[8463]	=	20198095
GetExp[8464]	=	20200484
GetExp[8465]	=	20202873
GetExp[8466]	=	20205262
GetExp[8467]	=	20207651
GetExp[8468]	=	20210040
GetExp[8469]	=	20212428
GetExp[8470]	=	20214817
GetExp[8471]	=	20217206
GetExp[8472]	=	20219595
GetExp[8473]	=	20221984
GetExp[8474]	=	20224373
GetExp[8475]	=	20226762
GetExp[8476]	=	20229151
GetExp[8477]	=	20231540
GetExp[8478]	=	20233929
GetExp[8479]	=	20236318
GetExp[8480]	=	20238707
GetExp[8481]	=	20241096
GetExp[8482]	=	20243485
GetExp[8483]	=	20245874
GetExp[8484]	=	20248263
GetExp[8485]	=	20250651
GetExp[8486]	=	20253040
GetExp[8487]	=	20255429
GetExp[8488]	=	20257818
GetExp[8489]	=	20260207
GetExp[8490]	=	20262596
GetExp[8491]	=	20264985
GetExp[8492]	=	20267374
GetExp[8493]	=	20269763
GetExp[8494]	=	20272152
GetExp[8495]	=	20274541
GetExp[8496]	=	20276930
GetExp[8497]	=	20279319
GetExp[8498]	=	20281708
GetExp[8499]	=	20284097
GetExp[8500]	=	20286485
GetExp[8501]	=	20288874
GetExp[8502]	=	20291263
GetExp[8503]	=	20293652
GetExp[8504]	=	20296041
GetExp[8505]	=	20298430
GetExp[8506]	=	20300819
GetExp[8507]	=	20303208
GetExp[8508]	=	20305597
GetExp[8509]	=	20307986
GetExp[8510]	=	20310375
GetExp[8511]	=	20312764
GetExp[8512]	=	20315153
GetExp[8513]	=	20317542
GetExp[8514]	=	20319931
GetExp[8515]	=	20322320
GetExp[8516]	=	20324708
GetExp[8517]	=	20327097
GetExp[8518]	=	20329486
GetExp[8519]	=	20331875
GetExp[8520]	=	20334264
GetExp[8521]	=	20336653
GetExp[8522]	=	20339042
GetExp[8523]	=	20341431
GetExp[8524]	=	20343820
GetExp[8525]	=	20346209
GetExp[8526]	=	20348598
GetExp[8527]	=	20350987
GetExp[8528]	=	20353376
GetExp[8529]	=	20355765
GetExp[8530]	=	20358154
GetExp[8531]	=	20360543
GetExp[8532]	=	20362931
GetExp[8533]	=	20365320
GetExp[8534]	=	20367709
GetExp[8535]	=	20370098
GetExp[8536]	=	20372487
GetExp[8537]	=	20374876
GetExp[8538]	=	20377265
GetExp[8539]	=	20379654
GetExp[8540]	=	20382043
GetExp[8541]	=	20384432
GetExp[8542]	=	20386821
GetExp[8543]	=	20389210
GetExp[8544]	=	20391599
GetExp[8545]	=	20393988
GetExp[8546]	=	20396377
GetExp[8547]	=	20398766
GetExp[8548]	=	20401154
GetExp[8549]	=	20403543
GetExp[8550]	=	20405932
GetExp[8551]	=	20408321
GetExp[8552]	=	20410710
GetExp[8553]	=	20413099
GetExp[8554]	=	20415488
GetExp[8555]	=	20417877
GetExp[8556]	=	20420266
GetExp[8557]	=	20422655
GetExp[8558]	=	20425044
GetExp[8559]	=	20427433
GetExp[8560]	=	20429822
GetExp[8561]	=	20432211
GetExp[8562]	=	20434600
GetExp[8563]	=	20436988
GetExp[8564]	=	20439377
GetExp[8565]	=	20441766
GetExp[8566]	=	20444155
GetExp[8567]	=	20446544
GetExp[8568]	=	20448933
GetExp[8569]	=	20451322
GetExp[8570]	=	20453711
GetExp[8571]	=	20456100
GetExp[8572]	=	20458489
GetExp[8573]	=	20460878
GetExp[8574]	=	20463267
GetExp[8575]	=	20465656
GetExp[8576]	=	20468045
GetExp[8577]	=	20470434
GetExp[8578]	=	20472823
GetExp[8579]	=	20475211
GetExp[8580]	=	20477600
GetExp[8581]	=	20479989
GetExp[8582]	=	20482378
GetExp[8583]	=	20484767
GetExp[8584]	=	20487156
GetExp[8585]	=	20489545
GetExp[8586]	=	20491934
GetExp[8587]	=	20494323
GetExp[8588]	=	20496712
GetExp[8589]	=	20499101
GetExp[8590]	=	20501490
GetExp[8591]	=	20503879
GetExp[8592]	=	20506268
GetExp[8593]	=	20508657
GetExp[8594]	=	20511046
GetExp[8595]	=	20513434
GetExp[8596]	=	20515823
GetExp[8597]	=	20518212
GetExp[8598]	=	20520601
GetExp[8599]	=	20522990
GetExp[8600]	=	20525379
GetExp[8601]	=	20527768
GetExp[8602]	=	20530157
GetExp[8603]	=	20532546
GetExp[8604]	=	20534935
GetExp[8605]	=	20537324
GetExp[8606]	=	20539713
GetExp[8607]	=	20542102
GetExp[8608]	=	20544491
GetExp[8609]	=	20546880
GetExp[8610]	=	20549269
GetExp[8611]	=	20551657
GetExp[8612]	=	20554046
GetExp[8613]	=	20556435
GetExp[8614]	=	20558824
GetExp[8615]	=	20561213
GetExp[8616]	=	20563602
GetExp[8617]	=	20565991
GetExp[8618]	=	20568380
GetExp[8619]	=	20570769
GetExp[8620]	=	20573158
GetExp[8621]	=	20575547
GetExp[8622]	=	20577936
GetExp[8623]	=	20580325
GetExp[8624]	=	20582714
GetExp[8625]	=	20585103
GetExp[8626]	=	20587491
GetExp[8627]	=	20589880
GetExp[8628]	=	20592269
GetExp[8629]	=	20594658
GetExp[8630]	=	20597047
GetExp[8631]	=	20599436
GetExp[8632]	=	20601825
GetExp[8633]	=	20604214
GetExp[8634]	=	20606603
GetExp[8635]	=	20608992
GetExp[8636]	=	20611381
GetExp[8637]	=	20613770
GetExp[8638]	=	20616159
GetExp[8639]	=	20618548
GetExp[8640]	=	20620937
GetExp[8641]	=	20623326
GetExp[8642]	=	20625714
GetExp[8643]	=	20628103
GetExp[8644]	=	20630492
GetExp[8645]	=	20632881
GetExp[8646]	=	20635270
GetExp[8647]	=	20637659
GetExp[8648]	=	20640048
GetExp[8649]	=	20642437
GetExp[8650]	=	20644826
GetExp[8651]	=	20647215
GetExp[8652]	=	20649604
GetExp[8653]	=	20651993
GetExp[8654]	=	20654382
GetExp[8655]	=	20656771
GetExp[8656]	=	20659160
GetExp[8657]	=	20661549
GetExp[8658]	=	20663937
GetExp[8659]	=	20666326
GetExp[8660]	=	20668715
GetExp[8661]	=	20671104
GetExp[8662]	=	20673493
GetExp[8663]	=	20675882
GetExp[8664]	=	20678271
GetExp[8665]	=	20680660
GetExp[8666]	=	20683049
GetExp[8667]	=	20685438
GetExp[8668]	=	20687827
GetExp[8669]	=	20690216
GetExp[8670]	=	20692605
GetExp[8671]	=	20694994
GetExp[8672]	=	20697383
GetExp[8673]	=	20699772
GetExp[8674]	=	20702160
GetExp[8675]	=	20704549
GetExp[8676]	=	20706938
GetExp[8677]	=	20709327
GetExp[8678]	=	20711716
GetExp[8679]	=	20714105
GetExp[8680]	=	20716494
GetExp[8681]	=	20718883
GetExp[8682]	=	20721272
GetExp[8683]	=	20723661
GetExp[8684]	=	20726050
GetExp[8685]	=	20728439
GetExp[8686]	=	20730828
GetExp[8687]	=	20733217
GetExp[8688]	=	20735606
GetExp[8689]	=	20737994
GetExp[8690]	=	20740383
GetExp[8691]	=	20742772
GetExp[8692]	=	20745161
GetExp[8693]	=	20747550
GetExp[8694]	=	20749939
GetExp[8695]	=	20752328
GetExp[8696]	=	20754717
GetExp[8697]	=	20757106
GetExp[8698]	=	20759495
GetExp[8699]	=	20761884
GetExp[8700]	=	20764273
GetExp[8701]	=	20766662
GetExp[8702]	=	20769051
GetExp[8703]	=	20771440
GetExp[8704]	=	20773829
GetExp[8705]	=	20776217
GetExp[8706]	=	20778606
GetExp[8707]	=	20780995
GetExp[8708]	=	20783384
GetExp[8709]	=	20785773
GetExp[8710]	=	20788162
GetExp[8711]	=	20790551
GetExp[8712]	=	20792940
GetExp[8713]	=	20795329
GetExp[8714]	=	20797718
GetExp[8715]	=	20800107
GetExp[8716]	=	20802496
GetExp[8717]	=	20804885
GetExp[8718]	=	20807274
GetExp[8719]	=	20809663
GetExp[8720]	=	20812052
GetExp[8721]	=	20814440
GetExp[8722]	=	20816829
GetExp[8723]	=	20819218
GetExp[8724]	=	20821607
GetExp[8725]	=	20823996
GetExp[8726]	=	20826385
GetExp[8727]	=	20828774
GetExp[8728]	=	20831163
GetExp[8729]	=	20833552
GetExp[8730]	=	20835941
GetExp[8731]	=	20838330
GetExp[8732]	=	20840719
GetExp[8733]	=	20843108
GetExp[8734]	=	20845497
GetExp[8735]	=	20847886
GetExp[8736]	=	20850274
GetExp[8737]	=	20852663
GetExp[8738]	=	20855052
GetExp[8739]	=	20857441
GetExp[8740]	=	20859830
GetExp[8741]	=	20862219
GetExp[8742]	=	20864608
GetExp[8743]	=	20866997
GetExp[8744]	=	20869386
GetExp[8745]	=	20871775
GetExp[8746]	=	20874164
GetExp[8747]	=	20876553
GetExp[8748]	=	20878942
GetExp[8749]	=	20881331
GetExp[8750]	=	20883720
GetExp[8751]	=	20886109
GetExp[8752]	=	20888497
GetExp[8753]	=	20890886
GetExp[8754]	=	20893275
GetExp[8755]	=	20895664
GetExp[8756]	=	20898053
GetExp[8757]	=	20900442
GetExp[8758]	=	20902831
GetExp[8759]	=	20905220
GetExp[8760]	=	20907609
GetExp[8761]	=	20909998
GetExp[8762]	=	20912387
GetExp[8763]	=	20914776
GetExp[8764]	=	20917165
GetExp[8765]	=	20919554
GetExp[8766]	=	20921943
GetExp[8767]	=	20924332
GetExp[8768]	=	20926720
GetExp[8769]	=	20929109
GetExp[8770]	=	20931498
GetExp[8771]	=	20933887
GetExp[8772]	=	20936276
GetExp[8773]	=	20938665
GetExp[8774]	=	20941054
GetExp[8775]	=	20943443
GetExp[8776]	=	20945832
GetExp[8777]	=	20948221
GetExp[8778]	=	20950610
GetExp[8779]	=	20952999
GetExp[8780]	=	20955388
GetExp[8781]	=	20957777
GetExp[8782]	=	20960166
GetExp[8783]	=	20962555
GetExp[8784]	=	20964943
GetExp[8785]	=	20967332
GetExp[8786]	=	20969721
GetExp[8787]	=	20972110
GetExp[8788]	=	20974499
GetExp[8789]	=	20976888
GetExp[8790]	=	20979277
GetExp[8791]	=	20981666
GetExp[8792]	=	20984055
GetExp[8793]	=	20986444
GetExp[8794]	=	20988833
GetExp[8795]	=	20991222
GetExp[8796]	=	20993611
GetExp[8797]	=	20996000
GetExp[8798]	=	20998389
GetExp[8799]	=	21000777
GetExp[8800]	=	21003166
GetExp[8801]	=	21005555
GetExp[8802]	=	21007944
GetExp[8803]	=	21010333
GetExp[8804]	=	21012722
GetExp[8805]	=	21015111
GetExp[8806]	=	21017500
GetExp[8807]	=	21019889
GetExp[8808]	=	21022278
GetExp[8809]	=	21024667
GetExp[8810]	=	21027056
GetExp[8811]	=	21029445
GetExp[8812]	=	21031834
GetExp[8813]	=	21034223
GetExp[8814]	=	21036612
GetExp[8815]	=	21039000
GetExp[8816]	=	21041389
GetExp[8817]	=	21043778
GetExp[8818]	=	21046167
GetExp[8819]	=	21048556
GetExp[8820]	=	21050945
GetExp[8821]	=	21053334
GetExp[8822]	=	21055723
GetExp[8823]	=	21058112
GetExp[8824]	=	21060501
GetExp[8825]	=	21062890
GetExp[8826]	=	21065279
GetExp[8827]	=	21067668
GetExp[8828]	=	21070057
GetExp[8829]	=	21072446
GetExp[8830]	=	21074835
GetExp[8831]	=	21077223
GetExp[8832]	=	21079612
GetExp[8833]	=	21082001
GetExp[8834]	=	21084390
GetExp[8835]	=	21086779
GetExp[8836]	=	21089168
GetExp[8837]	=	21091557
GetExp[8838]	=	21093946
GetExp[8839]	=	21096335
GetExp[8840]	=	21098724
GetExp[8841]	=	21101113
GetExp[8842]	=	21103502
GetExp[8843]	=	21105891
GetExp[8844]	=	21108280
GetExp[8845]	=	21110669
GetExp[8846]	=	21113058
GetExp[8847]	=	21115446
GetExp[8848]	=	21117835
GetExp[8849]	=	21120224
GetExp[8850]	=	21122613
GetExp[8851]	=	21125002
GetExp[8852]	=	21127391
GetExp[8853]	=	21129780
GetExp[8854]	=	21132169
GetExp[8855]	=	21134558
GetExp[8856]	=	21136947
GetExp[8857]	=	21139336
GetExp[8858]	=	21141725
GetExp[8859]	=	21144114
GetExp[8860]	=	21146503
GetExp[8861]	=	21148892
GetExp[8862]	=	21151280
GetExp[8863]	=	21153669
GetExp[8864]	=	21156058
GetExp[8865]	=	21158447
GetExp[8866]	=	21160836
GetExp[8867]	=	21163225
GetExp[8868]	=	21165614
GetExp[8869]	=	21168003
GetExp[8870]	=	21170392
GetExp[8871]	=	21172781
GetExp[8872]	=	21175170
GetExp[8873]	=	21177559
GetExp[8874]	=	21179948
GetExp[8875]	=	21182337
GetExp[8876]	=	21184726
GetExp[8877]	=	21187115
GetExp[8878]	=	21189503
GetExp[8879]	=	21191892
GetExp[8880]	=	21194281
GetExp[8881]	=	21196670
GetExp[8882]	=	21199059
GetExp[8883]	=	21201448
GetExp[8884]	=	21203837
GetExp[8885]	=	21206226
GetExp[8886]	=	21208615
GetExp[8887]	=	21211004
GetExp[8888]	=	21213393
GetExp[8889]	=	21215782
GetExp[8890]	=	21218171
GetExp[8891]	=	21220560
GetExp[8892]	=	21222949
GetExp[8893]	=	21225338
GetExp[8894]	=	21227726
GetExp[8895]	=	21230115
GetExp[8896]	=	21232504
GetExp[8897]	=	21234893
GetExp[8898]	=	21237282
GetExp[8899]	=	21239671
GetExp[8900]	=	21242060
GetExp[8901]	=	21244449
GetExp[8902]	=	21246838
GetExp[8903]	=	21249227
GetExp[8904]	=	21251616
GetExp[8905]	=	21254005
GetExp[8906]	=	21256394
GetExp[8907]	=	21258783
GetExp[8908]	=	21261172
GetExp[8909]	=	21263561
GetExp[8910]	=	21265949
GetExp[8911]	=	21268338
GetExp[8912]	=	21270727
GetExp[8913]	=	21273116
GetExp[8914]	=	21275505
GetExp[8915]	=	21277894
GetExp[8916]	=	21280283
GetExp[8917]	=	21282672
GetExp[8918]	=	21285061
GetExp[8919]	=	21287450
GetExp[8920]	=	21289839
GetExp[8921]	=	21292228
GetExp[8922]	=	21294617
GetExp[8923]	=	21297006
GetExp[8924]	=	21299395
GetExp[8925]	=	21301783
GetExp[8926]	=	21304172
GetExp[8927]	=	21306561
GetExp[8928]	=	21308950
GetExp[8929]	=	21311339
GetExp[8930]	=	21313728
GetExp[8931]	=	21316117
GetExp[8932]	=	21318506
GetExp[8933]	=	21320895
GetExp[8934]	=	21323284
GetExp[8935]	=	21325673
GetExp[8936]	=	21328062
GetExp[8937]	=	21330451
GetExp[8938]	=	21332840
GetExp[8939]	=	21335229
GetExp[8940]	=	21337618
GetExp[8941]	=	21340006
GetExp[8942]	=	21342395
GetExp[8943]	=	21344784
GetExp[8944]	=	21347173
GetExp[8945]	=	21349562
GetExp[8946]	=	21351951
GetExp[8947]	=	21354340
GetExp[8948]	=	21356729
GetExp[8949]	=	21359118
GetExp[8950]	=	21361507
GetExp[8951]	=	21363896
GetExp[8952]	=	21366285
GetExp[8953]	=	21368674
GetExp[8954]	=	21371063
GetExp[8955]	=	21373452
GetExp[8956]	=	21375841
GetExp[8957]	=	21378229
GetExp[8958]	=	21380618
GetExp[8959]	=	21383007
GetExp[8960]	=	21385396
GetExp[8961]	=	21387785
GetExp[8962]	=	21390174
GetExp[8963]	=	21392563
GetExp[8964]	=	21394952
GetExp[8965]	=	21397341
GetExp[8966]	=	21399730
GetExp[8967]	=	21402119
GetExp[8968]	=	21404508
GetExp[8969]	=	21406897
GetExp[8970]	=	21409286
GetExp[8971]	=	21411675
GetExp[8972]	=	21414064
GetExp[8973]	=	21416452
GetExp[8974]	=	21418841
GetExp[8975]	=	21421230
GetExp[8976]	=	21423619
GetExp[8977]	=	21426008
GetExp[8978]	=	21428397
GetExp[8979]	=	21430786
GetExp[8980]	=	21433175
GetExp[8981]	=	21435564
GetExp[8982]	=	21437953
GetExp[8983]	=	21440342
GetExp[8984]	=	21442731
GetExp[8985]	=	21445120
GetExp[8986]	=	21447509
GetExp[8987]	=	21449898
GetExp[8988]	=	21452286
GetExp[8989]	=	21454675
GetExp[8990]	=	21457064
GetExp[8991]	=	21459453
GetExp[8992]	=	21461842
GetExp[8993]	=	21464231
GetExp[8994]	=	21466620
GetExp[8995]	=	21469009
GetExp[8996]	=	21471398
GetExp[8997]	=	21473787
GetExp[8998]	=	21476176
GetExp[8999]	=	21478565
GetExp[9000]	=	21480954
GetExp[9001]	=	21483343
GetExp[9002]	=	21485732
GetExp[9003]	=	21488121
GetExp[9004]	=	21490509
GetExp[9005]	=	21492898
GetExp[9006]	=	21495287
GetExp[9007]	=	21497676
GetExp[9008]	=	21500065
GetExp[9009]	=	21502454
GetExp[9010]	=	21504843
GetExp[9011]	=	21507232
GetExp[9012]	=	21509621
GetExp[9013]	=	21512010
GetExp[9014]	=	21514399
GetExp[9015]	=	21516788
GetExp[9016]	=	21519177
GetExp[9017]	=	21521566
GetExp[9018]	=	21523955
GetExp[9019]	=	21526344
GetExp[9020]	=	21528732
GetExp[9021]	=	21531121
GetExp[9022]	=	21533510
GetExp[9023]	=	21535899
GetExp[9024]	=	21538288
GetExp[9025]	=	21540677
GetExp[9026]	=	21543066
GetExp[9027]	=	21545455
GetExp[9028]	=	21547844
GetExp[9029]	=	21550233
GetExp[9030]	=	21552622
GetExp[9031]	=	21555011
GetExp[9032]	=	21557400
GetExp[9033]	=	21559789
GetExp[9034]	=	21562178
GetExp[9035]	=	21564566
GetExp[9036]	=	21566955
GetExp[9037]	=	21569344
GetExp[9038]	=	21571733
GetExp[9039]	=	21574122
GetExp[9040]	=	21576511
GetExp[9041]	=	21578900
GetExp[9042]	=	21581289
GetExp[9043]	=	21583678
GetExp[9044]	=	21586067
GetExp[9045]	=	21588456
GetExp[9046]	=	21590845
GetExp[9047]	=	21593234
GetExp[9048]	=	21595623
GetExp[9049]	=	21598012
GetExp[9050]	=	21600401
GetExp[9051]	=	21602789
GetExp[9052]	=	21605178
GetExp[9053]	=	21607567
GetExp[9054]	=	21609956
GetExp[9055]	=	21612345
GetExp[9056]	=	21614734
GetExp[9057]	=	21617123
GetExp[9058]	=	21619512
GetExp[9059]	=	21621901
GetExp[9060]	=	21624290
GetExp[9061]	=	21626679
GetExp[9062]	=	21629068
GetExp[9063]	=	21631457
GetExp[9064]	=	21633846
GetExp[9065]	=	21636235
GetExp[9066]	=	21638624
GetExp[9067]	=	21641012
GetExp[9068]	=	21643401
GetExp[9069]	=	21645790
GetExp[9070]	=	21648179
GetExp[9071]	=	21650568
GetExp[9072]	=	21652957
GetExp[9073]	=	21655346
GetExp[9074]	=	21657735
GetExp[9075]	=	21660124
GetExp[9076]	=	21662513
GetExp[9077]	=	21664902
GetExp[9078]	=	21667291
GetExp[9079]	=	21669680
GetExp[9080]	=	21672069
GetExp[9081]	=	21674458
GetExp[9082]	=	21676847
GetExp[9083]	=	21679235
GetExp[9084]	=	21681624
GetExp[9085]	=	21684013
GetExp[9086]	=	21686402
GetExp[9087]	=	21688791
GetExp[9088]	=	21691180
GetExp[9089]	=	21693569
GetExp[9090]	=	21695958
GetExp[9091]	=	21698347
GetExp[9092]	=	21700736
GetExp[9093]	=	21703125
GetExp[9094]	=	21705514
GetExp[9095]	=	21707903
GetExp[9096]	=	21710292
GetExp[9097]	=	21712681
GetExp[9098]	=	21715069
GetExp[9099]	=	21717458
GetExp[9100]	=	21719847
GetExp[9101]	=	21722236
GetExp[9102]	=	21724625
GetExp[9103]	=	21727014
GetExp[9104]	=	21729403
GetExp[9105]	=	21731792
GetExp[9106]	=	21734181
GetExp[9107]	=	21736570
GetExp[9108]	=	21738959
GetExp[9109]	=	21741348
GetExp[9110]	=	21743737
GetExp[9111]	=	21746126
GetExp[9112]	=	21748515
GetExp[9113]	=	21750904
GetExp[9114]	=	21753292
GetExp[9115]	=	21755681
GetExp[9116]	=	21758070
GetExp[9117]	=	21760459
GetExp[9118]	=	21762848
GetExp[9119]	=	21765237
GetExp[9120]	=	21767626
GetExp[9121]	=	21770015
GetExp[9122]	=	21772404
GetExp[9123]	=	21774793
GetExp[9124]	=	21777182
GetExp[9125]	=	21779571
GetExp[9126]	=	21781960
GetExp[9127]	=	21784349
GetExp[9128]	=	21786738
GetExp[9129]	=	21789127
GetExp[9130]	=	21791515
GetExp[9131]	=	21793904
GetExp[9132]	=	21796293
GetExp[9133]	=	21798682
GetExp[9134]	=	21801071
GetExp[9135]	=	21803460
GetExp[9136]	=	21805849
GetExp[9137]	=	21808238
GetExp[9138]	=	21810627
GetExp[9139]	=	21813016
GetExp[9140]	=	21815405
GetExp[9141]	=	21817794
GetExp[9142]	=	21820183
GetExp[9143]	=	21822572
GetExp[9144]	=	21824961
GetExp[9145]	=	21827350
GetExp[9146]	=	21829738
GetExp[9147]	=	21832127
GetExp[9148]	=	21834516
GetExp[9149]	=	21836905
GetExp[9150]	=	21839294
GetExp[9151]	=	21841683
GetExp[9152]	=	21844072
GetExp[9153]	=	21846461
GetExp[9154]	=	21848850
GetExp[9155]	=	21851239
GetExp[9156]	=	21853628
GetExp[9157]	=	21856017
GetExp[9158]	=	21858406
GetExp[9159]	=	21860795
GetExp[9160]	=	21863184
GetExp[9161]	=	21865572
GetExp[9162]	=	21867961
GetExp[9163]	=	21870350
GetExp[9164]	=	21872739
GetExp[9165]	=	21875128
GetExp[9166]	=	21877517
GetExp[9167]	=	21879906
GetExp[9168]	=	21882295
GetExp[9169]	=	21884684
GetExp[9170]	=	21887073
GetExp[9171]	=	21889462
GetExp[9172]	=	21891851
GetExp[9173]	=	21894240
GetExp[9174]	=	21896629
GetExp[9175]	=	21899018
GetExp[9176]	=	21901407
GetExp[9177]	=	21903795
GetExp[9178]	=	21906184
GetExp[9179]	=	21908573
GetExp[9180]	=	21910962
GetExp[9181]	=	21913351
GetExp[9182]	=	21915740
GetExp[9183]	=	21918129
GetExp[9184]	=	21920518
GetExp[9185]	=	21922907
GetExp[9186]	=	21925296
GetExp[9187]	=	21927685
GetExp[9188]	=	21930074
GetExp[9189]	=	21932463
GetExp[9190]	=	21934852
GetExp[9191]	=	21937241
GetExp[9192]	=	21939630
GetExp[9193]	=	21942018
GetExp[9194]	=	21944407
GetExp[9195]	=	21946796
GetExp[9196]	=	21949185
GetExp[9197]	=	21951574
GetExp[9198]	=	21953963
GetExp[9199]	=	21956352
GetExp[9200]	=	21958741
GetExp[9201]	=	21961130
GetExp[9202]	=	21963519
GetExp[9203]	=	21965908
GetExp[9204]	=	21968297
GetExp[9205]	=	21970686
GetExp[9206]	=	21973075
GetExp[9207]	=	21975464
GetExp[9208]	=	21977853
GetExp[9209]	=	21980241
GetExp[9210]	=	21982630
GetExp[9211]	=	21985019
GetExp[9212]	=	21987408
GetExp[9213]	=	21989797
GetExp[9214]	=	21992186
GetExp[9215]	=	21994575
GetExp[9216]	=	21996964
GetExp[9217]	=	21999353
GetExp[9218]	=	22001742
GetExp[9219]	=	22004131
GetExp[9220]	=	22006520
GetExp[9221]	=	22008909
GetExp[9222]	=	22011298
GetExp[9223]	=	22013687
GetExp[9224]	=	22016075
GetExp[9225]	=	22018464
GetExp[9226]	=	22020853
GetExp[9227]	=	22023242
GetExp[9228]	=	22025631
GetExp[9229]	=	22028020
GetExp[9230]	=	22030409
GetExp[9231]	=	22032798
GetExp[9232]	=	22035187
GetExp[9233]	=	22037576
GetExp[9234]	=	22039965
GetExp[9235]	=	22042354
GetExp[9236]	=	22044743
GetExp[9237]	=	22047132
GetExp[9238]	=	22049521
GetExp[9239]	=	22051910
GetExp[9240]	=	22054298
GetExp[9241]	=	22056687
GetExp[9242]	=	22059076
GetExp[9243]	=	22061465
GetExp[9244]	=	22063854
GetExp[9245]	=	22066243
GetExp[9246]	=	22068632
GetExp[9247]	=	22071021
GetExp[9248]	=	22073410
GetExp[9249]	=	22075799
GetExp[9250]	=	22078188
GetExp[9251]	=	22080577
GetExp[9252]	=	22082966
GetExp[9253]	=	22085355
GetExp[9254]	=	22087744
GetExp[9255]	=	22090133
GetExp[9256]	=	22092521
GetExp[9257]	=	22094910
GetExp[9258]	=	22097299
GetExp[9259]	=	22099688
GetExp[9260]	=	22102077
GetExp[9261]	=	22104466
GetExp[9262]	=	22106855
GetExp[9263]	=	22109244
GetExp[9264]	=	22111633
GetExp[9265]	=	22114022
GetExp[9266]	=	22116411
GetExp[9267]	=	22118800
GetExp[9268]	=	22121189
GetExp[9269]	=	22123578
GetExp[9270]	=	22125967
GetExp[9271]	=	22128356
GetExp[9272]	=	22130744
GetExp[9273]	=	22133133
GetExp[9274]	=	22135522
GetExp[9275]	=	22137911
GetExp[9276]	=	22140300
GetExp[9277]	=	22142689
GetExp[9278]	=	22145078
GetExp[9279]	=	22147467
GetExp[9280]	=	22149856
GetExp[9281]	=	22152245
GetExp[9282]	=	22154634
GetExp[9283]	=	22157023
GetExp[9284]	=	22159412
GetExp[9285]	=	22161801
GetExp[9286]	=	22164190
GetExp[9287]	=	22166578
GetExp[9288]	=	22168967
GetExp[9289]	=	22171356
GetExp[9290]	=	22173745
GetExp[9291]	=	22176134
GetExp[9292]	=	22178523
GetExp[9293]	=	22180912
GetExp[9294]	=	22183301
GetExp[9295]	=	22185690
GetExp[9296]	=	22188079
GetExp[9297]	=	22190468
GetExp[9298]	=	22192857
GetExp[9299]	=	22195246
GetExp[9300]	=	22197635
GetExp[9301]	=	22200024
GetExp[9302]	=	22202413
GetExp[9303]	=	22204801
GetExp[9304]	=	22207190
GetExp[9305]	=	22209579
GetExp[9306]	=	22211968
GetExp[9307]	=	22214357
GetExp[9308]	=	22216746
GetExp[9309]	=	22219135
GetExp[9310]	=	22221524
GetExp[9311]	=	22223913
GetExp[9312]	=	22226302
GetExp[9313]	=	22228691
GetExp[9314]	=	22231080
GetExp[9315]	=	22233469
GetExp[9316]	=	22235858
GetExp[9317]	=	22238247
GetExp[9318]	=	22240636
GetExp[9319]	=	22243024
GetExp[9320]	=	22245413
GetExp[9321]	=	22247802
GetExp[9322]	=	22250191
GetExp[9323]	=	22252580
GetExp[9324]	=	22254969
GetExp[9325]	=	22257358
GetExp[9326]	=	22259747
GetExp[9327]	=	22262136
GetExp[9328]	=	22264525
GetExp[9329]	=	22266914
GetExp[9330]	=	22269303
GetExp[9331]	=	22271692
GetExp[9332]	=	22274081
GetExp[9333]	=	22276470
GetExp[9334]	=	22278858
GetExp[9335]	=	22281247
GetExp[9336]	=	22283636
GetExp[9337]	=	22286025
GetExp[9338]	=	22288414
GetExp[9339]	=	22290803
GetExp[9340]	=	22293192
GetExp[9341]	=	22295581
GetExp[9342]	=	22297970
GetExp[9343]	=	22300359
GetExp[9344]	=	22302748
GetExp[9345]	=	22305137
GetExp[9346]	=	22307526
GetExp[9347]	=	22309915
GetExp[9348]	=	22312304
GetExp[9349]	=	22314693
GetExp[9350]	=	22317081
GetExp[9351]	=	22319470
GetExp[9352]	=	22321859
GetExp[9353]	=	22324248
GetExp[9354]	=	22326637
GetExp[9355]	=	22329026
GetExp[9356]	=	22331415
GetExp[9357]	=	22333804
GetExp[9358]	=	22336193
GetExp[9359]	=	22338582
GetExp[9360]	=	22340971
GetExp[9361]	=	22343360
GetExp[9362]	=	22345749
GetExp[9363]	=	22348138
GetExp[9364]	=	22350527
GetExp[9365]	=	22352916
GetExp[9366]	=	22355304
GetExp[9367]	=	22357693
GetExp[9368]	=	22360082
GetExp[9369]	=	22362471
GetExp[9370]	=	22364860
GetExp[9371]	=	22367249
GetExp[9372]	=	22369638
GetExp[9373]	=	22372027
GetExp[9374]	=	22374416
GetExp[9375]	=	22376805
GetExp[9376]	=	22379194
GetExp[9377]	=	22381583
GetExp[9378]	=	22383972
GetExp[9379]	=	22386361
GetExp[9380]	=	22388750
GetExp[9381]	=	22391139
GetExp[9382]	=	22393527
GetExp[9383]	=	22395916
GetExp[9384]	=	22398305
GetExp[9385]	=	22400694
GetExp[9386]	=	22403083
GetExp[9387]	=	22405472
GetExp[9388]	=	22407861
GetExp[9389]	=	22410250
GetExp[9390]	=	22412639
GetExp[9391]	=	22415028
GetExp[9392]	=	22417417
GetExp[9393]	=	22419806
GetExp[9394]	=	22422195
GetExp[9395]	=	22424584
GetExp[9396]	=	22426973
GetExp[9397]	=	22429361
GetExp[9398]	=	22431750
GetExp[9399]	=	22434139
GetExp[9400]	=	22436528
GetExp[9401]	=	22438917
GetExp[9402]	=	22441306
GetExp[9403]	=	22443695
GetExp[9404]	=	22446084
GetExp[9405]	=	22448473
GetExp[9406]	=	22450862
GetExp[9407]	=	22453251
GetExp[9408]	=	22455640
GetExp[9409]	=	22458029
GetExp[9410]	=	22460418
GetExp[9411]	=	22462807
GetExp[9412]	=	22465196
GetExp[9413]	=	22467584
GetExp[9414]	=	22469973
GetExp[9415]	=	22472362
GetExp[9416]	=	22474751
GetExp[9417]	=	22477140
GetExp[9418]	=	22479529
GetExp[9419]	=	22481918
GetExp[9420]	=	22484307
GetExp[9421]	=	22486696
GetExp[9422]	=	22489085
GetExp[9423]	=	22491474
GetExp[9424]	=	22493863
GetExp[9425]	=	22496252
GetExp[9426]	=	22498641
GetExp[9427]	=	22501030
GetExp[9428]	=	22503419
GetExp[9429]	=	22505807
GetExp[9430]	=	22508196
GetExp[9431]	=	22510585
GetExp[9432]	=	22512974
GetExp[9433]	=	22515363
GetExp[9434]	=	22517752
GetExp[9435]	=	22520141
GetExp[9436]	=	22522530
GetExp[9437]	=	22524919
GetExp[9438]	=	22527308
GetExp[9439]	=	22529697
GetExp[9440]	=	22532086
GetExp[9441]	=	22534475
GetExp[9442]	=	22536864
GetExp[9443]	=	22539253
GetExp[9444]	=	22541642
GetExp[9445]	=	22544030
GetExp[9446]	=	22546419
GetExp[9447]	=	22548808
GetExp[9448]	=	22551197
GetExp[9449]	=	22553586
GetExp[9450]	=	22555975
GetExp[9451]	=	22558364
GetExp[9452]	=	22560753
GetExp[9453]	=	22563142
GetExp[9454]	=	22565531
GetExp[9455]	=	22567920
GetExp[9456]	=	22570309
GetExp[9457]	=	22572698
GetExp[9458]	=	22575087
GetExp[9459]	=	22577476
GetExp[9460]	=	22579864
GetExp[9461]	=	22582253
GetExp[9462]	=	22584642
GetExp[9463]	=	22587031
GetExp[9464]	=	22589420
GetExp[9465]	=	22591809
GetExp[9466]	=	22594198
GetExp[9467]	=	22596587
GetExp[9468]	=	22598976
GetExp[9469]	=	22601365
GetExp[9470]	=	22603754
GetExp[9471]	=	22606143
GetExp[9472]	=	22608532
GetExp[9473]	=	22610921
GetExp[9474]	=	22613310
GetExp[9475]	=	22615699
GetExp[9476]	=	22618087
GetExp[9477]	=	22620476
GetExp[9478]	=	22622865
GetExp[9479]	=	22625254
GetExp[9480]	=	22627643
GetExp[9481]	=	22630032
GetExp[9482]	=	22632421
GetExp[9483]	=	22634810
GetExp[9484]	=	22637199
GetExp[9485]	=	22639588
GetExp[9486]	=	22641977
GetExp[9487]	=	22644366
GetExp[9488]	=	22646755
GetExp[9489]	=	22649144
GetExp[9490]	=	22651533
GetExp[9491]	=	22653922
GetExp[9492]	=	22656310
GetExp[9493]	=	22658699
GetExp[9494]	=	22661088
GetExp[9495]	=	22663477
GetExp[9496]	=	22665866
GetExp[9497]	=	22668255
GetExp[9498]	=	22670644
GetExp[9499]	=	22673033
GetExp[9500]	=	22675422
GetExp[9501]	=	22677811
GetExp[9502]	=	22680200
GetExp[9503]	=	22682589
GetExp[9504]	=	22684978
GetExp[9505]	=	22687367
GetExp[9506]	=	22689756
GetExp[9507]	=	22692145
GetExp[9508]	=	22694533
GetExp[9509]	=	22696922
GetExp[9510]	=	22699311
GetExp[9511]	=	22701700
GetExp[9512]	=	22704089
GetExp[9513]	=	22706478
GetExp[9514]	=	22708867
GetExp[9515]	=	22711256
GetExp[9516]	=	22713645
GetExp[9517]	=	22716034
GetExp[9518]	=	22718423
GetExp[9519]	=	22720812
GetExp[9520]	=	22723201
GetExp[9521]	=	22725590
GetExp[9522]	=	22727979
GetExp[9523]	=	22730367
GetExp[9524]	=	22732756
GetExp[9525]	=	22735145
GetExp[9526]	=	22737534
GetExp[9527]	=	22739923
GetExp[9528]	=	22742312
GetExp[9529]	=	22744701
GetExp[9530]	=	22747090
GetExp[9531]	=	22749479
GetExp[9532]	=	22751868
GetExp[9533]	=	22754257
GetExp[9534]	=	22756646
GetExp[9535]	=	22759035
GetExp[9536]	=	22761424
GetExp[9537]	=	22763813
GetExp[9538]	=	22766202
GetExp[9539]	=	22768590
GetExp[9540]	=	22770979
GetExp[9541]	=	22773368
GetExp[9542]	=	22775757
GetExp[9543]	=	22778146
GetExp[9544]	=	22780535
GetExp[9545]	=	22782924
GetExp[9546]	=	22785313
GetExp[9547]	=	22787702
GetExp[9548]	=	22790091
GetExp[9549]	=	22792480
GetExp[9550]	=	22794869
GetExp[9551]	=	22797258
GetExp[9552]	=	22799647
GetExp[9553]	=	22802036
GetExp[9554]	=	22804425
GetExp[9555]	=	22806813
GetExp[9556]	=	22809202
GetExp[9557]	=	22811591
GetExp[9558]	=	22813980
GetExp[9559]	=	22816369
GetExp[9560]	=	22818758
GetExp[9561]	=	22821147
GetExp[9562]	=	22823536
GetExp[9563]	=	22825925
GetExp[9564]	=	22828314
GetExp[9565]	=	22830703
GetExp[9566]	=	22833092
GetExp[9567]	=	22835481
GetExp[9568]	=	22837870
GetExp[9569]	=	22840259
GetExp[9570]	=	22842647
GetExp[9571]	=	22845036
GetExp[9572]	=	22847425
GetExp[9573]	=	22849814
GetExp[9574]	=	22852203
GetExp[9575]	=	22854592
GetExp[9576]	=	22856981
GetExp[9577]	=	22859370
GetExp[9578]	=	22861759
GetExp[9579]	=	22864148
GetExp[9580]	=	22866537
GetExp[9581]	=	22868926
GetExp[9582]	=	22871315
GetExp[9583]	=	22873704
GetExp[9584]	=	22876093
GetExp[9585]	=	22878482
GetExp[9586]	=	22880870
GetExp[9587]	=	22883259
GetExp[9588]	=	22885648
GetExp[9589]	=	22888037
GetExp[9590]	=	22890426
GetExp[9591]	=	22892815
GetExp[9592]	=	22895204
GetExp[9593]	=	22897593
GetExp[9594]	=	22899982
GetExp[9595]	=	22902371
GetExp[9596]	=	22904760
GetExp[9597]	=	22907149
GetExp[9598]	=	22909538
GetExp[9599]	=	22911927
GetExp[9600]	=	22914316
GetExp[9601]	=	22916705
GetExp[9602]	=	22919093
GetExp[9603]	=	22921482
GetExp[9604]	=	22923871
GetExp[9605]	=	22926260
GetExp[9606]	=	22928649
GetExp[9607]	=	22931038
GetExp[9608]	=	22933427
GetExp[9609]	=	22935816
GetExp[9610]	=	22938205
GetExp[9611]	=	22940594
GetExp[9612]	=	22942983
GetExp[9613]	=	22945372
GetExp[9614]	=	22947761
GetExp[9615]	=	22950150
GetExp[9616]	=	22952539
GetExp[9617]	=	22954928
GetExp[9618]	=	22957316
GetExp[9619]	=	22959705
GetExp[9620]	=	22962094
GetExp[9621]	=	22964483
GetExp[9622]	=	22966872
GetExp[9623]	=	22969261
GetExp[9624]	=	22971650
GetExp[9625]	=	22974039
GetExp[9626]	=	22976428
GetExp[9627]	=	22978817
GetExp[9628]	=	22981206
GetExp[9629]	=	22983595
GetExp[9630]	=	22985984
GetExp[9631]	=	22988373
GetExp[9632]	=	22990762
GetExp[9633]	=	22993150
GetExp[9634]	=	22995539
GetExp[9635]	=	22997928
GetExp[9636]	=	23000317
GetExp[9637]	=	23002706
GetExp[9638]	=	23005095
GetExp[9639]	=	23007484
GetExp[9640]	=	23009873
GetExp[9641]	=	23012262
GetExp[9642]	=	23014651
GetExp[9643]	=	23017040
GetExp[9644]	=	23019429
GetExp[9645]	=	23021818
GetExp[9646]	=	23024207
GetExp[9647]	=	23026596
GetExp[9648]	=	23028985
GetExp[9649]	=	23031373
GetExp[9650]	=	23033762
GetExp[9651]	=	23036151
GetExp[9652]	=	23038540
GetExp[9653]	=	23040929
GetExp[9654]	=	23043318
GetExp[9655]	=	23045707
GetExp[9656]	=	23048096
GetExp[9657]	=	23050485
GetExp[9658]	=	23052874
GetExp[9659]	=	23055263
GetExp[9660]	=	23057652
GetExp[9661]	=	23060041
GetExp[9662]	=	23062430
GetExp[9663]	=	23064819
GetExp[9664]	=	23067208
GetExp[9665]	=	23069596
GetExp[9666]	=	23071985
GetExp[9667]	=	23074374
GetExp[9668]	=	23076763
GetExp[9669]	=	23079152
GetExp[9670]	=	23081541
GetExp[9671]	=	23083930
GetExp[9672]	=	23086319
GetExp[9673]	=	23088708
GetExp[9674]	=	23091097
GetExp[9675]	=	23093486
GetExp[9676]	=	23095875
GetExp[9677]	=	23098264
GetExp[9678]	=	23100653
GetExp[9679]	=	23103042
GetExp[9680]	=	23105431
GetExp[9681]	=	23107819
GetExp[9682]	=	23110208
GetExp[9683]	=	23112597
GetExp[9684]	=	23114986
GetExp[9685]	=	23117375
GetExp[9686]	=	23119764
GetExp[9687]	=	23122153
GetExp[9688]	=	23124542
GetExp[9689]	=	23126931
GetExp[9690]	=	23129320
GetExp[9691]	=	23131709
GetExp[9692]	=	23134098
GetExp[9693]	=	23136487
GetExp[9694]	=	23138876
GetExp[9695]	=	23141265
GetExp[9696]	=	23143653
GetExp[9697]	=	23146042
GetExp[9698]	=	23148431
GetExp[9699]	=	23150820
GetExp[9700]	=	23153209
GetExp[9701]	=	23155598
GetExp[9702]	=	23157987
GetExp[9703]	=	23160376
GetExp[9704]	=	23162765
GetExp[9705]	=	23165154
GetExp[9706]	=	23167543
GetExp[9707]	=	23169932
GetExp[9708]	=	23172321
GetExp[9709]	=	23174710
GetExp[9710]	=	23177099
GetExp[9711]	=	23179488
GetExp[9712]	=	23181876
GetExp[9713]	=	23184265
GetExp[9714]	=	23186654
GetExp[9715]	=	23189043
GetExp[9716]	=	23191432
GetExp[9717]	=	23193821
GetExp[9718]	=	23196210
GetExp[9719]	=	23198599
GetExp[9720]	=	23200988
GetExp[9721]	=	23203377
GetExp[9722]	=	23205766
GetExp[9723]	=	23208155
GetExp[9724]	=	23210544
GetExp[9725]	=	23212933
GetExp[9726]	=	23215322
GetExp[9727]	=	23217711
GetExp[9728]	=	23220099
GetExp[9729]	=	23222488
GetExp[9730]	=	23224877
GetExp[9731]	=	23227266
GetExp[9732]	=	23229655
GetExp[9733]	=	23232044
GetExp[9734]	=	23234433
GetExp[9735]	=	23236822
GetExp[9736]	=	23239211
GetExp[9737]	=	23241600
GetExp[9738]	=	23243989
GetExp[9739]	=	23246378
GetExp[9740]	=	23248767
GetExp[9741]	=	23251156
GetExp[9742]	=	23253545
GetExp[9743]	=	23255934
GetExp[9744]	=	23258322
GetExp[9745]	=	23260711
GetExp[9746]	=	23263100
GetExp[9747]	=	23265489
GetExp[9748]	=	23267878
GetExp[9749]	=	23270267
GetExp[9750]	=	23272656
GetExp[9751]	=	23275045
GetExp[9752]	=	23277434
GetExp[9753]	=	23279823
GetExp[9754]	=	23282212
GetExp[9755]	=	23284601
GetExp[9756]	=	23286990
GetExp[9757]	=	23289379
GetExp[9758]	=	23291768
GetExp[9759]	=	23294156
GetExp[9760]	=	23296545
GetExp[9761]	=	23298934
GetExp[9762]	=	23301323
GetExp[9763]	=	23303712
GetExp[9764]	=	23306101
GetExp[9765]	=	23308490
GetExp[9766]	=	23310879
GetExp[9767]	=	23313268
GetExp[9768]	=	23315657
GetExp[9769]	=	23318046
GetExp[9770]	=	23320435
GetExp[9771]	=	23322824
GetExp[9772]	=	23325213
GetExp[9773]	=	23327602
GetExp[9774]	=	23329991
GetExp[9775]	=	23332379
GetExp[9776]	=	23334768
GetExp[9777]	=	23337157
GetExp[9778]	=	23339546
GetExp[9779]	=	23341935
GetExp[9780]	=	23344324
GetExp[9781]	=	23346713
GetExp[9782]	=	23349102
GetExp[9783]	=	23351491
GetExp[9784]	=	23353880
GetExp[9785]	=	23356269
GetExp[9786]	=	23358658
GetExp[9787]	=	23361047
GetExp[9788]	=	23363436
GetExp[9789]	=	23365825
GetExp[9790]	=	23368214
GetExp[9791]	=	23370602
GetExp[9792]	=	23372991
GetExp[9793]	=	23375380
GetExp[9794]	=	23377769
GetExp[9795]	=	23380158
GetExp[9796]	=	23382547
GetExp[9797]	=	23384936
GetExp[9798]	=	23387325
GetExp[9799]	=	23389714
GetExp[9800]	=	23392103
GetExp[9801]	=	23394492
GetExp[9802]	=	23396881
GetExp[9803]	=	23399270
GetExp[9804]	=	23401659
GetExp[9805]	=	23404048
GetExp[9806]	=	23406437
GetExp[9807]	=	23408825
GetExp[9808]	=	23411214
GetExp[9809]	=	23413603
GetExp[9810]	=	23415992
GetExp[9811]	=	23418381
GetExp[9812]	=	23420770
GetExp[9813]	=	23423159
GetExp[9814]	=	23425548
GetExp[9815]	=	23427937
GetExp[9816]	=	23430326
GetExp[9817]	=	23432715
GetExp[9818]	=	23435104
GetExp[9819]	=	23437493
GetExp[9820]	=	23439882
GetExp[9821]	=	23442271
GetExp[9822]	=	23444659
GetExp[9823]	=	23447048
GetExp[9824]	=	23449437
GetExp[9825]	=	23451826
GetExp[9826]	=	23454215
GetExp[9827]	=	23456604
GetExp[9828]	=	23458993
GetExp[9829]	=	23461382
GetExp[9830]	=	23463771
GetExp[9831]	=	23466160
GetExp[9832]	=	23468549
GetExp[9833]	=	23470938
GetExp[9834]	=	23473327
GetExp[9835]	=	23475716
GetExp[9836]	=	23478105
GetExp[9837]	=	23480494
GetExp[9838]	=	23482882
GetExp[9839]	=	23485271
GetExp[9840]	=	23487660
GetExp[9841]	=	23490049
GetExp[9842]	=	23492438
GetExp[9843]	=	23494827
GetExp[9844]	=	23497216
GetExp[9845]	=	23499605
GetExp[9846]	=	23501994
GetExp[9847]	=	23504383
GetExp[9848]	=	23506772
GetExp[9849]	=	23509161
GetExp[9850]	=	23511550
GetExp[9851]	=	23513939
GetExp[9852]	=	23516328
GetExp[9853]	=	23518717
GetExp[9854]	=	23521105
GetExp[9855]	=	23523494
GetExp[9856]	=	23525883
GetExp[9857]	=	23528272
GetExp[9858]	=	23530661
GetExp[9859]	=	23533050
GetExp[9860]	=	23535439
GetExp[9861]	=	23537828
GetExp[9862]	=	23540217
GetExp[9863]	=	23542606
GetExp[9864]	=	23544995
GetExp[9865]	=	23547384
GetExp[9866]	=	23549773
GetExp[9867]	=	23552162
GetExp[9868]	=	23554551
GetExp[9869]	=	23556939
GetExp[9870]	=	23559328
GetExp[9871]	=	23561717
GetExp[9872]	=	23564106
GetExp[9873]	=	23566495
GetExp[9874]	=	23568884
GetExp[9875]	=	23571273
GetExp[9876]	=	23573662
GetExp[9877]	=	23576051
GetExp[9878]	=	23578440
GetExp[9879]	=	23580829
GetExp[9880]	=	23583218
GetExp[9881]	=	23585607
GetExp[9882]	=	23587996
GetExp[9883]	=	23590385
GetExp[9884]	=	23592774
GetExp[9885]	=	23595162
GetExp[9886]	=	23597551
GetExp[9887]	=	23599940
GetExp[9888]	=	23602329
GetExp[9889]	=	23604718
GetExp[9890]	=	23607107
GetExp[9891]	=	23609496
GetExp[9892]	=	23611885
GetExp[9893]	=	23614274
GetExp[9894]	=	23616663
GetExp[9895]	=	23619052
GetExp[9896]	=	23621441
GetExp[9897]	=	23623830
GetExp[9898]	=	23626219
GetExp[9899]	=	23628608
GetExp[9900]	=	23630997
GetExp[9901]	=	23633385
GetExp[9902]	=	23635774
GetExp[9903]	=	23638163
GetExp[9904]	=	23640552
GetExp[9905]	=	23642941
GetExp[9906]	=	23645330
GetExp[9907]	=	23647719
GetExp[9908]	=	23650108
GetExp[9909]	=	23652497
GetExp[9910]	=	23654886
GetExp[9911]	=	23657275
GetExp[9912]	=	23659664
GetExp[9913]	=	23662053
GetExp[9914]	=	23664442
GetExp[9915]	=	23666831
GetExp[9916]	=	23669220
GetExp[9917]	=	23671608
GetExp[9918]	=	23673997
GetExp[9919]	=	23676386
GetExp[9920]	=	23678775
GetExp[9921]	=	23681164
GetExp[9922]	=	23683553
GetExp[9923]	=	23685942
GetExp[9924]	=	23688331
GetExp[9925]	=	23690720
GetExp[9926]	=	23693109
GetExp[9927]	=	23695498
GetExp[9928]	=	23697887
GetExp[9929]	=	23700276
GetExp[9930]	=	23702665
GetExp[9931]	=	23705054
GetExp[9932]	=	23707442
GetExp[9933]	=	23709831
GetExp[9934]	=	23712220
GetExp[9935]	=	23714609
GetExp[9936]	=	23716998
GetExp[9937]	=	23719387
GetExp[9938]	=	23721776
GetExp[9939]	=	23724165
GetExp[9940]	=	23726554
GetExp[9941]	=	23728943
GetExp[9942]	=	23731332
GetExp[9943]	=	23733721
GetExp[9944]	=	23736110
GetExp[9945]	=	23738499
GetExp[9946]	=	23740888
GetExp[9947]	=	23743277
GetExp[9948]	=	23745665
GetExp[9949]	=	23748054
GetExp[9950]	=	23750443
GetExp[9951]	=	23752832
GetExp[9952]	=	23755221
GetExp[9953]	=	23757610
GetExp[9954]	=	23759999
GetExp[9955]	=	23762388
GetExp[9956]	=	23764777
GetExp[9957]	=	23767166
GetExp[9958]	=	23769555
GetExp[9959]	=	23771944
GetExp[9960]	=	23774333
GetExp[9961]	=	23776722
GetExp[9962]	=	23779111
GetExp[9963]	=	23781500
GetExp[9964]	=	23783888
GetExp[9965]	=	23786277
GetExp[9966]	=	23788666
GetExp[9967]	=	23791055
GetExp[9968]	=	23793444
GetExp[9969]	=	23795833
GetExp[9970]	=	23798222
GetExp[9971]	=	23800611
GetExp[9972]	=	23803000
GetExp[9973]	=	23805389
GetExp[9974]	=	23807778
GetExp[9975]	=	23810167
GetExp[9976]	=	23812556
GetExp[9977]	=	23814945
GetExp[9978]	=	23817334
GetExp[9979]	=	23819723
GetExp[9980]	=	23822111
GetExp[9981]	=	23824500
GetExp[9982]	=	23826889
GetExp[9983]	=	23829278
GetExp[9984]	=	23831667
GetExp[9985]	=	23834056
GetExp[9986]	=	23836445
GetExp[9987]	=	23838834
GetExp[9988]	=	23841223
GetExp[9989]	=	23843612
GetExp[9990]	=	23846001
GetExp[9991]	=	23848390
GetExp[9992]	=	23850779
GetExp[9993]	=	23853168
GetExp[9994]	=	23855557
GetExp[9995]	=	23857945
GetExp[9996]	=	23860334
GetExp[9997]	=	23862723
GetExp[9998]	=	23865112
GetExp[9999]	=	23867501
GetExp[10000]	=	23869890

	
function AddExp_1 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_1 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_1 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_1 = math.floor(exp_up * 0.8)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_1 = math.floor(exp_up * 0.058)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_1 = math.floor(exp_up * 0.0063)
	else
		exp_1 = math.floor(exp_up * 0.0025)
	end
	AddExp ( role, npc, exp_1, exp_1)
end

function AddExp_2 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_2 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_2 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_2 = math.floor(exp_up * 0.9)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_2 = math.floor(exp_up * 0.3)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_2 = math.floor(exp_up * 0.22)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_2 = math.floor(exp_up * 0.068)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_2 = math.floor(exp_up * 0.0073)
	else
		exp_2 = math.floor(exp_up * 0.0035)
	end
	AddExp ( role, npc, exp_2, exp_2)
end

function AddExp_3 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_3 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_3 = math.floor(exp_up * 1.2)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_3 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_3 = math.floor(exp_up * 0.5)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_3 = math.floor(exp_up * 0.24)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_3 = math.floor(exp_up * 0.078)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_3 = math.floor(exp_up * 0.0083)
	else
		exp_3 = math.floor(exp_up * 0.0045)
	end
	AddExp ( role, npc, exp_3, exp_3)
end

function AddExp_4 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_4 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_4 = math.floor(exp_up * 1.4)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_4 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_4 = math.floor(exp_up * 0.8)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_4 = math.floor(exp_up * 0.4)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_4 = math.floor(exp_up * 0.088)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_4 = math.floor(exp_up * 0.0083)
	else
		exp_4 = math.floor(exp_up * 0.0055)
	end
	AddExp ( role, npc, exp_4, exp_4)
end

function AddExp_5 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_5 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_5 = math.floor(exp_up * 1.6)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_5 = math.floor(exp_up * 1.1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_5 = math.floor(exp_up * 1)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_5 = math.floor(exp_up * 0.44)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_5 = math.floor(exp_up * 0.098)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_5 = math.floor(exp_up * 0.0093)
	else
		exp_5 = math.floor(exp_up * 0.0065)
	end
	AddExp ( role, npc, exp_5, exp_5)
end

function AddExp_6 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_6 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_6 = math.floor(exp_up * 1.8)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_6 = math.floor(exp_up * 0.5)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_6 = math.floor(exp_up * 0.11)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_6 = math.floor(exp_up * 0.0105)
	else
		exp_6 = math.floor(exp_up * 0.0075)
	end
	AddExp ( role, npc, exp_6, exp_6)
end

function CheckTeam ( role )
--	SystemNotice( role, "进入1")
	local player = {}
	player[1] = role
	player[2] = GetTeamCha( role , 0 )
	player[3] = GetTeamCha( role , 1 )
	player[4] = GetTeamCha( role , 2 )
	player[5] = GetTeamCha( role , 3 )
	local n1 = 0
	local n2 = 0
	local n3 = 0

	for j = 0 , 5 , 1 do	
		if ValidCha( player[j] )== 1  then					--被加入组队经验分配的角色必须存在
			local lv_p = GetChaAttr ( player[j] , ATTR_LV )
--			SystemNotice( role, "进入2")
--			SystemNotice( role, "玩家等级"..lv_p)
			if lv_p >= 20 and lv_p <= 30 then
				n1 = n1 + 1
			elseif lv_p > 30 and lv_p <= 40 then
				n2 = n2 + 1
			elseif lv_p > 40 then
				n3 = n3 + 1
			end
		end
	end
--	SystemNotice( role , "队伍内共有20到30级人数:"..n1..",31到40级人数:"..n2..",40级以上人数:"..n3)
	if n1 >= 1 and n2 >= 1 and n3>= 1 then
		return LUA_TRUE
	end
end

function CheckTime ( role )
	local now_week= os.date("%w")		-------------星期几（十进制） 
	local now_hour= os.date("%H")		-------------时 
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
--	SystemNotice( role, "星期"..now_week.."时间"..now_hour)
	if now_week == 6 then 
		if now_hour >= 18 and now_hour < 21 then
			return LUA_TRUE
		elseif now_hour >= 9 and now_hour < 12 then
			return LUA_TRUE
		end
	end
end


--Leo的兑换检测
function Can_Exchange(sSrcItem,sSrcNum,sTagItem,sTagNum)
	local Data
	for Data in ChangeItemList do
		 if ChangeItemList[Data][1] == sSrcItem and  ChangeItemList[Data][2] == sSrcNum and ChangeItemList[Data][3] == sTagItem and ChangeItemList[Data][4] == sTagNum then
			return LUA_TRUE
		 end
	end
	return LUA_FALSE
end


function CheckTeam1 ( role , value )
	local player = {}
	player[1] = role
	player[2] = GetTeamCha( role , 0 )
	player[3] = GetTeamCha( role , 1 )
	player[4] = GetTeamCha( role , 2 )
	player[5] = GetTeamCha( role , 3 )

	local n = 0

	for j = 0 , 5 , 1 do	
		if ValidCha( player[j] )== 1  then					--被加入组队经验分配的角色必须存在
			n = n+1
		end
	end
	if n >= value then
		return LUA_TRUE
	end
end

function SetTestTime ( role )
	local i = CheckBagItem( role,579 )
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	local now_second=  os.date("%S")		-------------秒
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_second= tonumber(now_second)		-------------秒
--	SystemNotice( role , "证书数量为"..i)
--	SystemNotice( role , "现在时间为"..now_month.."月"..now_day.."日"..now_hour.."时"..now_miniute.."分"..now_second.."秒")
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		SetItemAttr(Item, ITEMATTR_VAL_STA, now_month )		-------------月 	
		SetItemAttr(Item, ITEMATTR_VAL_STR, now_day )		-------------日  
		SetItemAttr(Item, ITEMATTR_VAL_CON, now_hour )		-------------时   
		SetItemAttr(Item, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
		SetItemAttr(Item, ITEMATTR_VAL_AGI, now_second )		-------------秒
		SetItemAttr(Item, ITEMATTR_MAXENERGY, 0)
		SynChaKitbag(role,13)
		return LUA_TRUE
	end
end

function RenewTestTime1 ( role )
	local i = CheckBagItem( role,579 )
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	local now_second=  os.date("%S")		-------------秒
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_second= tonumber(now_second)		-------------秒 
--	SystemNotice( role , "证书数量为"..i)
--	SystemNotice( role , "现在时间为"..now_month.."月"..now_day.."日"..now_hour.."时"..now_miniute.."分"..now_second.."秒")
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
--		SystemNotice( role , "1")
		local n = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
--		SystemNotice( role , "原n="..n)
		local old_month = GetItemAttr ( Item, ITEMATTR_VAL_STA )
		local old_day = GetItemAttr ( Item, ITEMATTR_VAL_STR )
		local old_hour = GetItemAttr ( Item, ITEMATTR_VAL_CON )
--		SystemNotice( role , "原month="..old_month)
--		SystemNotice( role , "原day="..old_day)
--		SystemNotice( role , "原hour="..old_hour)
		local old_miniute = GetItemAttr ( Item, ITEMATTR_VAL_DEX )
		local old_second = GetItemAttr ( Item, ITEMATTR_VAL_AGI )
--		SystemNotice( role , "原miniute="..old_miniute)
--		SystemNotice( role , "原second="..old_second)
		local used_time=(now_second - old_second)+(now_miniute - old_miniute)*60+(now_hour - old_hour)*3600+(now_day - old_day)*86400+(now_month - old_month)*259200
--		SystemNotice( role , "花费时间为"..used_time)
		if used_time <= 30 then
			n = n + 1
		end
--		SystemNotice( role , "答对次数为"..n)
		SetItemAttr(Item, ITEMATTR_VAL_STA, now_month )		-------------月 	
		SetItemAttr(Item, ITEMATTR_VAL_STR, now_day )		-------------日  
		SetItemAttr(Item, ITEMATTR_VAL_CON, now_hour )		-------------时   
		SetItemAttr(Item, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
		SetItemAttr(Item, ITEMATTR_VAL_AGI, now_second )		-------------秒
		SetItemAttr(Item, ITEMATTR_MAXENERGY, n)
		SynChaKitbag(role,13)
		return LUA_TRUE
	end
end

function RenewTestTime2 ( role )
	local i = CheckBagItem( role,579 )
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时
	local now_miniute= os.date("%M")	-------------分
	local now_second=  os.date("%S")		-------------秒
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日     
	now_hour= tonumber(now_hour)			-------------时     
	now_miniute= tonumber(now_miniute)	 	-------------分     
	now_second= tonumber(now_second)		-------------秒     
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		SetItemAttr(Item, ITEMATTR_VAL_STA, now_month )		-------------月 	
		SetItemAttr(Item, ITEMATTR_VAL_STR, now_day )		-------------日  
		SetItemAttr(Item, ITEMATTR_VAL_CON, now_hour )		-------------时   
		SetItemAttr(Item, ITEMATTR_VAL_DEX, now_miniute )		-------------分   
		SetItemAttr(Item, ITEMATTR_VAL_AGI, now_second )		-------------秒
		return LUA_TRUE
	end
end


function CheckRightNum ( role )
	local i = CheckBagItem( role,579 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		local n = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
		if n == 8 then
			return LUA_TRUE
		end
	end
end

function CheckErroNum ( role )
	local i = CheckBagItem( role,579 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 579 )
		local n = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
		if n < 8 then
			return LUA_TRUE
		end
	end
end

function CheckRealNpc ( role , value )
	local now_hour= os.date("%H")		-------------时
	now_hour= tonumber(now_hour)			-------------时 
	local n = ( now_hour/4 - math.floor ( now_hour/4 )) * 4
	if n == value then
		return LUA_TRUE
	else
		SystemNotice( role, "一阵头晕眼花之后,你被假的库拉托斯传回了白银")
	end
end

---------------------------------------------------kokora--------------------------------------------------

---------------------------------------------------金秋十月大闸蟹活动之给予7200耐久值的蟹苗
function Givecrab( character  )	
	local c1=0
	local c2=0
	c1,c2 =MakeItem(character, 58, 1, 4)			--value才是道具ID   C2是返回的创建道具位置编号
	local Item_CRAB = GetChaItem ( character , 2 , c2 )			--从角色的背包位 2 取位置 C2的道具的指针
	
	local CRAB_NOW = 7200                                                                              
	
	SetItemAttr(Item_CRAB, ITEMATTR_MAXENERGY, CRAB_NOW)						--设置最大耐久
	SetItemAttr(Item_CRAB, ITEMATTR_ENERGY, CRAB_NOW)								 --设置当前耐久，该值在每分钟后会扣一点
	RefreshCha( character )
	SystemNotice (character , "蟹苗必须放置在背包栏第2格才会茁壮成长！" )
end


---------------------------------------------------金秋十月大闸蟹活动之判断蟹苗耐久是否为0
function crablife( character )
	local Crab_Num = 0
	Crab_Num = CheckBagItem(  character , 58 )		--检查背包内58号道具的数量
	
	if Crab_Num == 1 then				--如果58号道具的数量大于等于1
		local crab = GetChaItem2 (  character , 2 , 58 )			--取到角色背包内道具ID为58的道具的指针
		local ENERGY = GetItemAttr(crab, ITEMATTR_ENERGY)
		if ENERGY ==0 then
			return LUA_TRUE
		end
	else
		SystemNotice( character, "请确保您的身上只有一只蟹苗")
	end

end

---------------------------------------------------kokora--------------------------------------------------

--海盗罗盘给道具

function GiveZNZItem ( role )
		SystemNotice(role ,"进来了")
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 10000 )
	--SystemNotice(role ,"star=="..star)
	if star<=8000 then
		GiveItem ( role , 0 , 2999  , 1 , 4  )
	elseif star>=8001 and star<=9500 then
		local el = math.random ( 1, 15 )
		if el<=5  then
			GiveItem ( role , 0 , 0227  , 1 , 4 )
		elseif el>=6 and el<=7 then
			GiveItem ( role , 0 , 3111  , 1 , 4 )
		elseif el>=8 and el<=9 then
			GiveItem ( role , 0 , 3109  , 1 , 4 )
		elseif el>=10 and el<=11 then
			GiveItem ( role , 0 , 3110  , 1 , 4 )
		elseif el>=12 and el<=13 then
			GiveItem ( role , 0 , 3112  , 1 , 4 )
		elseif el>=14 and el<=15 then
			GiveItem ( role , 0 , 3113  , 1 , 4 )
		end


	elseif star>=9501 and star<=9800 then
		local el1= math.random ( 1, 5 )
		if el1==1  then
			GiveItem ( role , 0 , 0863  , 1 , 4 )
			local message = cha_name.."人品爆发,根据洛克藏宝图探索到 炎玉" 
			Notice ( message )
		elseif el1==2 then
			GiveItem ( role , 0 , 0860  , 1 , 4 )
			local message1 = cha_name.."人品爆发,根据洛克藏宝图探索到 风灵石" 
			Notice ( message1 )
		elseif el1==3 then
			GiveItem ( role , 0 , 0861  , 1 , 4 )
			local message2 = cha_name.."人品爆发,根据洛克藏宝图探索到 鹰眼石" 
			Notice ( message2 )
		elseif el1==4 then
			GiveItem ( role , 0 , 0862  , 1 , 4 )
			local message3 = cha_name.."人品爆发,根据洛克藏宝图探索到 岩玉" 
			Notice ( message3 )
		elseif el1==5 then
			GiveItem ( role , 0 , 1028  , 1 , 4 )
			local message4 = cha_name.."人品爆发,根据洛克藏宝图探索到 摩力符石" 
			Notice ( message4 )
		end
	
	
	elseif star>=9801 and star<=9998 then
		local el2= math.random ( 1, 100 )
		if el2<=50  then
			GiveItem ( role , 0 , 0992  , 1 , 4 )
			local message5 = cha_name.."人品爆发,根据洛克藏宝图探索到 成长快餐" 
			Notice ( message5 )
		elseif el2>=51 and el2<=74 then
			GiveItem ( role , 0 , 0853  , 1 , 4 )
			local message6 = cha_name.."人品爆发,根据洛克藏宝图探索到 假期欢乐杂志" 
			Notice ( message6 )
		elseif el2>=75 and el2<=100 then
			GiveItem ( role , 0 , 1012  , 1 , 4 )
			local message7 = cha_name.."人品爆发,根据洛克藏宝图探索到 加纳之神" 
			Notice ( message7 )
		end

	elseif star>=9899 and star<=10000 then
		local el3= math.random ( 1, 100 )
		if el3==63  then
			GiveItem ( role , 0 , 0096  , 1 , 4 )
			local message8= cha_name.."人品爆发,根据洛克藏宝图探索到 船长之首" 
			Notice ( message8 )
		elseif el3==98  then
			GiveItem ( role , 0 , 0094  , 1 , 4 )
			local message9 = cha_name.."人品爆发,根据洛克藏宝图探索到 元帅之首" 
			Notice ( message9 )
		end
	end
end

-------------------------------------------------------------------------------------
--				Leo的读书系统函数   
-------------------------------------------------------------------------------------
--学生证属性对应
--ITEMATTR_FORGE                 学历 值：0，1，2，3，4 对应   幼儿园，小学，初中，高中，大学
--ITEMATTR_MAXENERGY            最大经验
--ITEMATTR_MAXURE          最大学分
--ITEMATTR_ENERGY                     当前经验
--ITEMATTR_URE                  当前学分

--书本属性对应
--ITEMATTR_URE                          当前耐久
--ITEMATTR_MAXURE                  最大耐久
---------------------------------------------------------------------------------
-- 函数列表
-- Check_Skill_Rad( Skill_Level )                                              --通过技能等级取得技能的经验加成值
-- Check_Equip_Rad( Buff_Equip_ID )		                              --通过辅助品ID取得辅助品的经验加成值
--  Check_Item_Rad(role)															  --通过角色取加成经验的状态
-- Check_Exp_Increase( Book_ID )	                                          --通过书ID取到书本的经验增长值
-- Add_BookEXP(role , Certificate , Book_ID , Skill_Level)    --向学生证里添加经验的函数，在Reading_Book中调用
-- Take_BookDurability(role , Book)                                           --扣除主手装备的书的耐久函数，在Reading_Book中调用
-- Reading_Book(role,Skill_Level)											   --             主函数               读书函数，本函数在角色进入读书状态时由服务器每隔一分钟调用一次
function Check_Skill_Rad( Skill_Level )			--取得技能的经验加成值	
		local Skill_Rad												--Lua为什么没有switch!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		if Skill_Level == 2 then
			Skill_Rad = 0.05
		elseif Skill_Level == 3 then
			Skill_Rad = 0.10
		elseif Skill_Level == 4 then
			Skill_Rad = 0.15
		elseif Skill_Level == 5 then
			Skill_Rad = 0.2
		else
			Skill_Rad = 0
		end

		return Skill_Rad
end

function Check_Equip_Rad( Buff_Equip_ID )		--取得辅助品的经验加成值
		local Equip_Rad
		if Buff_Equip_ID == 3285then
			Equip_Rad = 0.05
		elseif Buff_Equip_ID == 3287 then
			Equip_Rad = 0.1
		else
			Equip_Rad = 0
		end
		
		return Equip_Rad
end

function Check_Item_Rad(role)							--通过角色取加成经验的状态
	local stateLV_Apple
	local Item_Rad
	
	stateLV_Apple = GetChaStateLv ( role , STATE_APPLE )		--取智慧果状态等级
	
	if stateLV_Apple == 1 then
		Item_Rad = 0.3

	elseif stateLV_Apple == 2 then
		Item_Rad = 0.5
	else
		Item_Rad = 0
	end
	
	return Item_Rad
end

function Check_Exp_Increase( Book_ID )		--通过ID取到书本的经验增长值
		local Book_ID_mod
		local Book_Exp_Increase
		
		--缩放比率
		if Book_ID >= 3243 and Book_ID <= 3246 then            --未转职   初级
				Book_Exp_Increase = 1
		elseif Book_ID >= 3247 and Book_ID <= 3250 then     --中级
				Book_Exp_Increase = 3
		elseif Book_ID >= 3251 and Book_ID <= 3254 then     --高级
				Book_Exp_Increase =5
		elseif Book_ID >= 3255 and Book_ID <= 3260 then		--转职  初级
				Book_Exp_Increase = 9
		elseif Book_ID >= 3261 and Book_ID <= 3266 then      --中级
				Book_Exp_Increase = 13
		elseif Book_ID >= 3267 and Book_ID <= 3272 then       --高级
				Book_Exp_Increase = 18
		elseif Book_ID >= 3273 and Book_ID <= 3278 then       --实用技巧大全
				Book_Exp_Increase = 24
		else
				Book_Exp_Increase = 0
		end
		
		return Book_Exp_Increase
end

function Add_BookEXP(role , Certificate , Book_ID , Skill_Level)    --向项链里添加经验的函数，在Reading_Book中调用
		
		local Role_Level
		local Buff_Equip
		local Buff_Equip_ID
		local Exp_Increase				--经验成长量
		local Skill_Rad
		local Equip_Rad
		local Item_Rad
		local DoubleEffect
		
		Role_Level = Lv( role )
		Buff_Equip= GetChaItem ( role , 1 , 6 )                        --取右手装备指针
		Buff_Equip_ID = GetItemID( Buff_Equip )
		
		Skill_Rad = Check_Skill_Rad(Skill_Level)					--取技能对经验的加成值
		Equip_Rad = Check_Equip_Rad(Buff_Equip_ID)		--取装备对经验的加成值
		Item_Rad = Check_Item_Rad(role)								--取角色状态对经验的加成值
		Exp_Increase = Check_Exp_Increase( Book_ID )		--取经验增长值

		Exp_Increase = Exp_Increase * ( 1 + Skill_Rad + Equip_Rad + Item_Rad )		--修正后结果
		
		--开始加经验
		local Book_Exp_Now = GetItemAttr( Certificate , ITEMATTR_ENERGY )			--取当前经验
		local Book_Exp_Max =  GetItemAttr( Certificate , ITEMATTR_MAXENERGY )	--取最大就经验
		
		Book_Exp_Now = Book_Exp_Now + Exp_Increase
		
		if Book_Exp_Now >= Book_Exp_Max then
			Book_Exp_Now = Book_Exp_Max
		end
		
		SetItemAttr ( Certificate , ITEMATTR_ENERGY , Book_Exp_Now )
end

function  Take_BookDurability(role , Book , Certificate)  --扣除主手装备的耐久函数，在Reading_Book中调用
--		SystemNotice(role , "Deducting durability")		
		
		local Durability_Reduce = 250					--耐久减少量
		local Book_Dur_Now = GetItemAttr( Book , ITEMATTR_URE )
		local Book_Dur_Max = GetItemAttr( Book , ITEMATTR_MAXURE )
		
		local Certificate_Exp_Now = GetItemAttr( Certificate , ITEMATTR_ENERGY )	--取学生证当前经验
		local Certificate_Exp_Max = GetItemAttr( Certificate , ITEMATTR_MAXENERGY )	--取学生证最大就经验
		
		if Certificate_Exp_Now == Certificate_Exp_Max then
			SystemNotice(role, "\209\242\243\228\229\237\247\229\241\234\224\255 \202\224\240\242\224 \231\224\239\238\235\237\229\237\224 ")
			return 0
		end
		SystemNotice(role,"\207\238\235\243\247\229\237 \238\239\251\242 \237\224 \209\242\243\228\229\237\247\229\241\234\243\254 \202\224\240\242\243 ")
		Book_Dur_Now =  Book_Dur_Now - Durability_Reduce
		
		if Book_Dur_Now <=0 then
			Book_Dur_Now = 0
		end
		
		SetItemAttr ( Book , ITEMATTR_URE , Book_Dur_Now )
end

function Reading_Book(role,Skill_Level)			--读书函数，本函数在角色进入读书状态时调用
		--1：检测是否可以读书，不可读书退出函数
		--2：标记读书开关为读书状态
		--3：开始处理：向书里累计经验
		--4：开始处理：扣除书的耐久
--		SystemNotice( role , "Star Reading" )
		
		local Book
		local Book_ID

		local Certificate
		local Certificate_ID
		
		Book = GetChaItem ( role , 1 , 9 )                        --取住手装备指针
		Book_ID =  GetItemID( Book )           								   --取该装备ID

		Certificate = GetChaItem ( role , 1 , 5 )                --取项链装备指针
		Certificate_ID = GetItemID( Certificate )                 --取该装备ID
		local Book_Dur = GetItemAttr( Book , ITEMATTR_URE )
		if Book_Dur > 0 then
			if  Certificate_ID == 3289 then							             	--如果ID等于学生证
				if  Book_ID >= 3243 and  Book_ID <= 3278 then
					Take_BookDurability( role , Book , Certificate)     --扣除书耐久
					Add_BookEXP( role , Certificate , Book_ID,Skill_Level )	    --向学生证里添加经验
					Refreshcha( role )
				else
					SystemNotice(role,"\211 \226\224\241 \237\229\242 \202\237\232\227\232")
				end
			else
				SystemNotice(role,"\211 \226\224\241 \237\229\242 \209\242\243\228\229\237\247\229\241\234\238\233 \202\224\240\242\251 ")
			end
		else
			SystemNotice(role,"Book's durability reached 0, please get a new Book!")
		end
end

----学分最大值
	Reading_Credit = {}
	Reading_Credit[0] = 150
	Reading_Credit[1] = 250
	Reading_Credit[2] = 400
	Reading_Credit[3] = 800
	Reading_Credit[4] = 4500	
	
----经验最大值
	Reading_EXP = {}
	Reading_EXP[0] = 120
	Reading_EXP[1] = 700
	Reading_EXP[2] = 1700
	Reading_EXP[3] = 3000
	Reading_EXP[4] = 5000
	


-------检测学生证中经验是否存满          --不调用
function CheckXSZExp( character )
	local xsz_num = 0
	xsz_num = CheckBagItem( character, 3289 )
	if xsz_num ~= 1 then
		--SystemNotice ( character , "Put the Student Card in your inventory!")
		return 0
	end
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local exp_xsz = GetItemAttr ( role_xsz , ITEMATTR_ENERGY )
	local mexp_xsz = GetItemAttr ( role_xsz, ITEMATTR_MAXENERGY)
	-- SystemNotice( character , ""..exp_xsz)
	-- SystemNotice( character , ""..mexp_xsz)
	if exp_xsz == mexp_xsz then
		return LUA_TRUE
	end

	return LUA_FALSE
end

------检测学生证中学分是否存满
function CheckXSZCh( character )
	local xsz_num = 0
	xsz_num = CheckBagItem( character, 3289 )
	if xsz_num ~= 1 then
			--SystemNotice( character , "Put the Student Card in your inventory!")
			return 0
	end
	local role_xsz = GetChaItem2 ( character , 2 , 3289 )
	local ch_xsz = GetItemAttr ( role_xsz , ITEMATTR_URE )
	local mch_xsz = GetItemAttr ( role_xsz , ITEMATTR_MAXURE )
	if ch_xsz == mch_xsz then
		return LUA_TRUE
	end
	
	return	LUA_FALSE
end

function ReadBookTime()					---------------设定READINGBOOK函数调用间隔
--	Notice( "时间设定")
	return 600*100
end

function ReadBookSkillId()				--------------设定READINGBOOK函数技能标号
--	Notice( "技能编号设定")
	return 461
end

-------------------------------------------------------------------------------------
--				Leo  end
-------------------------------------------------------------------------------------
--给教堂使用证书并加注使用时间--------function


function AuctionEnd (role)
	local sc = CheckBagItem( role, 3025 )	                    -------------080317kokora change	
	if sc <=0 then
		SystemNotice( role ,"请确保您身上携有教堂竞标卡")
		return 0
	end
	--local s = DelBagItem ( role , 3025 , 1 ) 
	local item_number = CheckBagItem( role, 3066 )		
	if item_number >=1 then
		SystemNotice( role ,"请确保您身上没有教堂使用证书")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"请确保有2个剩余空间")
		return 0
	end
	GiveItem ( role , 0 , 7722 , 10 , 4) ---------------嘉宾宝箱
	DelBagItem(role,3025,1)
	local r1=0
	local r2=0
	r1,r2 =MakeItem ( role , 3066  , 1 , 4 )
	local Item_new = GetChaItem ( role , 2 , r2 )
	
	----------记录时间
	
	local now_month= os.date("%m")		-------------月
	local now_day= os.date("%d")		-------------日
	local now_hour= os.date("%H")		-------------时 
	local now_miniute= os.date("%M")	-------------分
	local now_day1= 0
	local now_month1= 0
	local now_hour1= 0
	local now_miniute1= 0
	    
	now_month= tonumber(now_month)		-------------月     
	now_day= tonumber(now_day)			-------------日    
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute

if CheckDateNum==1830  then 

	now_hour1= 18
	now_miniute1= 0
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=26 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>26 then 
		    now_day1=(now_day+5)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=25 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+5)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=23 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>23 then 
		    now_day1=(now_day+5)-28
		    now_month1=now_month+1
		    	
	         end 

	end
	
elseif CheckDateNum==1910  then 
	now_hour1= 20
	now_miniute1= 10	
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=26 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>26 then 
		    now_day1=(now_day+5)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=25 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+5)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=23 then 
		    now_day1=now_day+5
		    now_month1=now_month
		 elseif now_day>23 then 
		    now_day1=(now_day+5)-28
		    now_month1=now_month+1
	         end 
	end

elseif CheckDateNum==1950  then 
	now_hour1= 18
	now_miniute1= 0  
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=25 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+6)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=24 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>24 then 
		    now_day1=(now_day+6)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=22 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>22 then 
		    now_day1=(now_day+6)-28
		    now_month1=now_month+1
	         end 
	end

elseif CheckDateNum==2030  then 

	 now_hour1= 20
	 now_miniute1= 10
	if now_month==1 or now_month==3 or now_month==5 or now_month==7 or now_month==8 or now_month==10 or now_month==12 then 
		 if now_day<=25 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>25 then 
		    now_day1=(now_day+6)-31
		    now_month1=now_month+1
	         end 
	end

	if now_month==4 or now_month==6 or now_month==9 or now_month==11 then 
		 if now_day<=24 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>24 then 
		    now_day1=(now_day+6)-30
		    now_month1=now_month+1
	         end 
	end

	if now_month==2 then 
		 if now_day<=22 then 
		    now_day1=now_day+6
		    now_month1=now_month
		 elseif now_day>22 then 
		    now_day1=(now_day+6)-28
		    now_month1=now_month+1
	         end 
	end

end
	--SystemNotice ( role , "now_month1=="..now_month1 )
	--SystemNotice ( role , "now_day1=="..now_day1 )
	--SystemNotice ( role , "now_hour1=="..now_hour1 )
	--SystemNotice ( role , "now_miniute1=="..now_miniute1 )
---------------------加注时间
	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month1 )		-------------月 	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day1 )		-------------日  
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour1 )		-------------时 
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute1 )		-------------分
	SynChaKitbag(role,13)
end

--------------竞标资格
function YORN (role)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <2 then
		SystemNotice(role ,"请确保有2个剩余空间")
		return  0
	end

	local item_number1 = CheckBagItem( role, 3066 )		
	if item_number1 >=1 then
		SystemNotice( role ,"请确保您身上没有教堂使用证书")
		return 0
	end
	
	local item_number2 = CheckBagItem( role, 3078 )		
	if item_number2 >=1 then
		SystemNotice( role ,"请确保您身上没有请柬")
		return  0
	end
	
	local item_number3 = CheckBagItem( role, 3025 )		
	if item_number3 <1 then
		SystemNotice( role ,"请确保您身上有教堂竞标卡")
		return  0
	end
	 return  1
end

----检查学生证经验必须大于0
function HasReadExp( role )
		local xsz_num = 0
	xsz_num = CheckBagItem(  role, 3289 )
	if xsz_num ~= 1 then
		--SystemNotice (  role , "Put the Student Card in your inventory!")
		return 0
	end
	local role_xsz = GetChaItem2 (  role , 2 , 3289 )
	local exp_xsz = GetItemAttr ( role_xsz , ITEMATTR_ENERGY )
	
	if exp_xsz > 0 then
		return LUA_TRUE
	end
	
	return LUA_FALSE
end

---------------Fairy Coin Chest
function GiveBragiItem ( role , value )
	local pinzhi = 0
	local ChaName = GetChaDefaultName ( role )
	local a = math.random ( 1 , 100000000 )
	if a >= 1 and a <= 10000000 then						
		AddExpAll ( role , 1, 1, 2 )
	elseif a >= 10000001 and a <= 12200000 then		
		AddExpAll ( role , 2, 2, 2 )
	elseif a >= 12200001 and a <= 42200000 then		
		AddExpAll( role, 100000, 1000000, 1)
	elseif a >= 42200001 and a <= 62200000 then					
		GiveItem ( role , 0 , 3848 , 10 , 4 )
	elseif a >= 62200001 and a <= 65500000 then					
		local c = math.random ( 1 , 35 )
		if c >= 1 and c <= 33 then
			local Item_Id = c + 3301					
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		else
			local Item_Id = c + 54						
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		end
	elseif a >= 65500001 and a <= 67500000 then					
		GiveItem ( role , 0 , 3098 , 3 , 4 )
		GiveItem ( role , 0 , 3099 , 3 , 4 )
	elseif a >= 67500001 and a <= 87500000 then					
		local d = math.random ( 1 , 16 )
		if d == 1 then 
			GiveItem ( role , 0 , 3056 , 3 , 4 )
		elseif d == 2 then
			GiveItem ( role , 0 , 3057 , 3 , 4 )
		elseif d == 3 then
			GiveItem ( role , 0 , 3058 , 3 , 4 )
		elseif d == 4 then
			GiveItem ( role , 0 , 3059 , 3 , 4 )
		elseif d == 5 then
			GiveItem ( role , 0 , 3060 , 3 , 4 )
		elseif d == 6 then
			GiveItem ( role , 0 , 3050 , 3 , 4 )
		elseif d == 7 then
			GiveItem ( role , 0 , 3051 , 3 , 4 )
		elseif d == 8 then
			GiveItem ( role , 0 , 3052 , 3 , 4 )
		elseif d == 9 then
			GiveItem ( role , 0 , 3053 , 3 , 4 )
		elseif d == 10 then
			GiveItem ( role , 0 , 3048 , 3 , 4 )
		elseif d == 11 then
			GiveItem ( role , 0 , 332 , 3 , 4 )
		elseif d == 12 then
			GiveItem ( role , 0 , 563 , 3 , 4 )
		elseif d == 13 then
			GiveItem ( role , 0 , 583 , 3 , 4 )
		elseif d == 14 then
			GiveItem ( role , 0 , 2447 , 3 , 4 )
		elseif d == 15 then
			GiveItem ( role , 0 , 2491 , 3 , 4 )
		elseif d == 16 then
			GiveItem ( role , 0 , 2844 , 3 , 4 )
		end
	elseif a >= 87500001 and a <= 93500000 then					----精炼石
		GiveItem ( role , 0 , 885 , 1 , 4 )
	elseif a >= 93500001 and a <= 94500000 then					----宝石
		local e = math.random ( 1 , 11 )
		if e >= 1 and e <= 4 then
			local Item_Id = e + 859
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		else
			local Item_Id = e + 873
			GiveItem ( role , 0 , Item_Id , 1 , 4 )
		end
	else		
		local f = math.random ( 1 , 58 )
		if value == 1 then
			pinzhi = 4
		elseif value == 2 then
			pinzhi = 16
		elseif value == 3 then
			pinzhi = 22
		else
			SystemNotice( role , "Your character looks so good, I don't know what are you doing here.")
		end
		if f == 1 then
			GiveItem ( role , 0 , 0299 , 1 , pinzhi) 
		elseif f == 2 then
			GiveItem ( role , 0 , 0475 , 1 , pinzhi) 
		elseif f == 3 then
			GiveItem ( role , 0 , 0651 , 1 , pinzhi) 
		elseif f == 4 then
			GiveItem ( role , 0 , 0304 , 1 , pinzhi) 
		elseif f == 5 then
			GiveItem ( role , 0 , 0480 , 1 , pinzhi) 
		elseif f == 6 then
			GiveItem ( role , 0 , 0656 , 1 , pinzhi) 
		elseif f == 7 then
			GiveItem ( role , 0 , 0229 , 1 , pinzhi) 
		elseif f == 8 then
			GiveItem ( role , 0 , 653 , 1 , pinzhi)  
		elseif f == 9 then
			GiveItem ( role , 0 , 0230 , 1 , pinzhi) 
		elseif f == 10 then
			GiveItem ( role , 0 , 477 , 1 , pinzhi)  
		elseif f == 11 then
			GiveItem ( role , 0 , 0371 , 1 , pinzhi) 
		elseif f == 12 then
			GiveItem ( role , 0 , 0547 , 1 , pinzhi)  
		elseif f == 13 then
			GiveItem ( role , 0 , 0723 , 1 , pinzhi) 
		elseif f == 14 then
			GiveItem ( role , 0 , 0394 , 1 , pinzhi) 
		elseif f == 15 then
			GiveItem ( role , 0 , 0570 , 1 , pinzhi)  
		elseif f == 16 then
			GiveItem ( role , 0 , 0746 , 1 , pinzhi) 
		elseif f == 17 then
			GiveItem ( role , 0 , 0382 , 1 , pinzhi) 
		elseif f == 18 then
			GiveItem ( role , 0 , 0558 , 1 , pinzhi)  
		elseif f == 19 then
			GiveItem ( role , 0 , 0734 , 1 , pinzhi) 
		elseif f == 20 then
			GiveItem ( role , 0 , 2204 , 1 , pinzhi) 
		elseif f == 21 then
			GiveItem ( role , 0 , 0393 , 1 , pinzhi) 
		elseif f == 22 then
			GiveItem ( role , 0 , 0569 , 1 , pinzhi)  
		elseif f == 23 then
			GiveItem ( role , 0 , 0745 , 1 , pinzhi) 
		elseif f == 24 then
			GiveItem ( role , 0 , 2215 , 1 , pinzhi) 
		elseif f == 25 then
			GiveItem ( role , 0 , 0385 , 1 , pinzhi) 
		elseif f == 26 then
			GiveItem ( role , 0 , 0561 , 1 , pinzhi)  
		elseif f == 27 then
			GiveItem ( role , 0 , 0737 , 1 , pinzhi) 
		elseif f == 28 then
			GiveItem ( role , 0 , 2207 , 1 , pinzhi) 
		elseif f == 29 then
			GiveItem ( role , 0 , 0364 , 1 , pinzhi) 
		elseif f == 30 then
			GiveItem ( role , 0 , 0540 , 1 , pinzhi)  
		elseif f == 31 then
			GiveItem ( role , 0 , 0716 , 1 , pinzhi) 
		elseif f == 32 then
			GiveItem ( role , 0 , 2201 , 1 , pinzhi) 
		elseif f == 33 then
			GiveItem ( role , 0 , 0355 , 1 , pinzhi) 
		elseif f == 34 then
			GiveItem ( role , 0 , 0531 , 1 , pinzhi)  
		elseif f == 35 then
			GiveItem ( role , 0 , 0707 , 1 , pinzhi) 
		elseif f == 36 then
			GiveItem ( role , 0 , 2192 , 1 , pinzhi) 
		elseif f == 37 then
			GiveItem ( role , 0 , 0358 , 1 , pinzhi) 
		elseif f == 38 then
			GiveItem ( role , 0 , 0534 , 1 , pinzhi)  
		elseif f == 39 then
			GiveItem ( role , 0 , 0710 , 1 , pinzhi) 
		elseif f == 40 then
			GiveItem ( role , 0 , 2195 , 1 , pinzhi) 
		elseif f == 41 then
			GiveItem ( role , 0 , 0312 , 1 , pinzhi) 
		elseif f == 42 then
			GiveItem ( role , 0 , 0488 , 1 , pinzhi)  
		elseif f == 43 then
			GiveItem ( role , 0 , 0664 , 1 , pinzhi) 
		elseif f == 44 then
			GiveItem ( role , 0 , 0317 , 1 , pinzhi) 
		elseif f == 45 then
			GiveItem ( role , 0 , 0493 , 1 , pinzhi)  
		elseif f == 46 then
			GiveItem ( role , 0 , 0669 , 1 , pinzhi) 
		elseif f == 47 then
			GiveItem ( role , 0 , 0345 , 1 , pinzhi) 
		elseif f == 48 then
			GiveItem ( role , 0 , 0521 , 1 , pinzhi)  
		elseif f == 49 then
			GiveItem ( role , 0 , 0697 , 1 , pinzhi) 
		elseif f == 50 then
			GiveItem ( role , 0 , 0344 , 1 , pinzhi) 
		elseif f == 51 then
			GiveItem ( role , 0 , 0520 , 1 , pinzhi)  
		elseif f == 52 then
			GiveItem ( role , 0 , 0696 , 1 , pinzhi) 
		elseif f == 53 then
			GiveItem ( role , 0 , 0369 , 1 , pinzhi) 
		elseif f == 54 then
			GiveItem ( role , 0 , 0545 , 1 , pinzhi)  
		elseif f == 55 then
			GiveItem ( role , 0 , 0721 , 1 , pinzhi) 
		elseif f == 56 then
			GiveItem ( role , 0 , 0377 , 1 , pinzhi) 
		elseif f == 57 then
			GiveItem ( role , 0 , 0553 , 1 , pinzhi)  
		elseif f == 58 then
			GiveItem ( role , 0 , 0729 , 1 , pinzhi) 
		end
	end
end


	GetExp	=	{}		------------取等级对应总经验
	GetExp[1]	=	0
	GetExp[2]	=	5
	GetExp[3]	=	15
	GetExp[4]	=	35
	GetExp[5]	=	101
	GetExp[6]	=	250
	GetExp[7]	=	500
	GetExp[8]	=	1000
	GetExp[9]	=	1974
	GetExp[10]	=	3208
	GetExp[11]	=	4986
	GetExp[12]	=	7468
	GetExp[13]	=	10844
	GetExp[14]	=	15338
	GetExp[15]	=	21210
	GetExp[16]	=	28766
	GetExp[17]	=	38356
	GetExp[18]	=	50382
	GetExp[19]	=	65306
	GetExp[20]	=	83656
	GetExp[21]	=	106032
	GetExp[22]	=	133112
	GetExp[23]	=	165668
	GetExp[24]	=	204564
	GetExp[25]	=	250780
	GetExp[26]	=	305412
	GetExp[27]	=	369692
	GetExp[28]	=	444998
	GetExp[29]	=	532870
	GetExp[30]	=	635026
	GetExp[31]	=	753378
	GetExp[32]	=	890062
	GetExp[33]	=	1047438
	GetExp[34]	=	1228138
	GetExp[35]	=	1435074
	GetExp[36]	=	1671470
	GetExp[37]	=	1940892
	GetExp[38]	=	2247288
	GetExp[39]	=	2595010
	GetExp[40]	=	2988860
	GetExp[41]	=	3434132
	GetExp[42]	=	3936658
	GetExp[43]	=	4502856
	GetExp[44]	=	5139778
	GetExp[45]	=	5855180
	GetExp[46]	=	6657576
	GetExp[47]	=	7556310
	GetExp[48]	=	8561630
	GetExp[49]	=	9684764
	GetExp[50]	=	10938016
	GetExp[51]	=	12334856
	GetExp[52]	=	13890020
	GetExp[53]	=	15619622
	GetExp[54]	=	17541282
	GetExp[55]	=	19674240
	GetExp[56]	=	22039516
	GetExp[57]	=	24660044
	GetExp[58]	=	27560852
	GetExp[59]	=	30769230
	GetExp[60]	=	37746418
	GetExp[61]	=	45876427
	GetExp[62]	=	59571153
	GetExp[63]	=	75703638
	GetExp[64]	=	94615279
	GetExp[65]	=	116688304
	GetExp[66]	=	155291059
	GetExp[67]	=	186418013
	GetExp[68]	=	238159614
	GetExp[69]	=	298622278
	GetExp[70]	=	368975850
	GetExp[71]	=	450525549
	GetExp[72]	=	568409779
	GetExp[73]	=	679324744
	GetExp[74]	=	806544569
	GetExp[75]	=	952091724
	GetExp[76]	=	1188099236
	GetExp[77]	=	1480429211
	GetExp[78]	=	1776125584
	GetExp[79]	=	2091634902
	GetExp[80]	=	2425349810
	GetExp[81]	=	2440895086
	GetExp[82]	=	2458896515
	GetExp[83]	=	2479742169
	GetExp[84]	=	2503881436
	GetExp[85]	=	2531834707
	GetExp[86]	=	2564204594
	GetExp[87]	=	2601688923
	GetExp[88]	=	2645095775
	GetExp[89]	=	2695360909
	GetExp[90]	=	2753567934
	GetExp[91]	=	2820971668
	GetExp[92]	=	2899025191
	GetExp[93]	=	2989411170
	GetExp[94]	=	3094078133
	GetExp[95]	=	3215282476
	GetExp[96]	=	3355637105
	GetExp[97]	=	3518167765
	GetExp[98]	=	3706378269
	GetExp[99]	=	3924326032
	GetExp[100]	=	4176709541
	GetExp[101]	=	4297812541
	GetExp[102]	=	4399999999
	GetExp[101]	=	4499999999
	GetExp[104]	=	4599999999
	GetExp[105]	=	4699999999

function AddReadingBook ( role )
	local job = GetChaAttr( role, ATTR_JOB)
	local Book_Id = 0
	if job == 1 then
		Book_Id = 3243
	elseif job == 2 then
		Book_Id = 3244
	elseif job == 4 then
		Book_Id = 3246
	elseif job == 5 then
		Book_Id = 3245
	elseif job == 8 then
		Book_Id = 3256
	elseif job == 9 then
		Book_Id = 3255
	elseif job == 12 then
		Book_Id = 3257
	elseif job == 13 then
		Book_Id = 3258
	elseif job == 14 then
		Book_Id = 3259
	elseif job == 16 then
		Book_Id = 3260
	else
		Book_Id = 3288
	end
	GiveItem( role , 0, Book_Id, 1, 4 )
	return LUA_TRUE
end


function AddExpPer ( role , value )			----------给予玩家当前等级升级所需百分比的经验
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_add = math.floor ( exp_up * value / 100 )
	local now_exp = GetChaAttr ( role , ATTR_CEXP )
	local new_exp = now_exp + exp_add
	local cha_name = GetChaDefaultName ( role )
	SetChaAttrI( role , ATTR_CEXP , new_exp )
	SystemNotice( role , "玩家"..cha_name.."获得了"..exp_add.."点经验")
	return LUA_TRUE
end
function AddExpAll ( role, value1, value2, type)	------------------添加经验
--	SystemNotice( role , "value1="..value1.."value2="..value2.."type="..type)
	local exp_now = GetChaAttr ( role, ATTR_CEXP )
	if type == 1 then							--------按数字加经验
		local exp_add = math.random ( value1, value2)
		local lv = GetChaAttr ( role, ATTR_LV )
		if lv < 80 then
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			exp_add = exp_add/50
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		end
	elseif type == 2 then							----------按百分比加经验
		local per_exp = math.random ( value1, value2)
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv < 80 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add = math.floor( ( exp_up * per_exp ) / 100 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		elseif lv >= 80 and lv < 100 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add =  math.floor ( ( exp_up * per_exp ) / 5000 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			exp_new = exp_now + 10000
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		end
	end
end


function AddExpNextLv1( role ) -----------------将玩家等级提升一级
	local exp_add = GetChaAttr ( role, ATTR_NLEXP )
	local cha_name = GetChaDefaultName ( role )
	SetChaAttrI( role , ATTR_CEXP , exp_add )	
	RefreshCha( role )
	Notice ( "玩家"..cha_name.."点秋香，双修成功，等级提升1级")
	return LUA_TRUE
end

function AddExpNextLv2( role ) -----------------将玩家等级提升一级
	local exp_add = GetChaAttr ( role, ATTR_NLEXP )
	local cha_name = GetChaDefaultName ( role )
	SetChaAttrI( role , ATTR_CEXP , exp_add )
	RefreshCha( role )
	Notice ( "玩家"..cha_name.."点秋香，天人合一，等级提升1级")
	return LUA_TRUE
end


---------------------------------------------------给予1440耐久值的陈年红酒
function AddChaHJ( character  )	
	local c1=0
	local c2=0
	c1,c2 =MakeItem(character, 2967, 1, 4)			--value才是道具ID   C2是返回的创建道具位置编号
	local Item_Rwine = GetChaItem ( character , 2 , c2 )			--从角色的背包位 2 取位置 C2的道具的指针
	
	local Rwine_NOW = 1440                                                                              
	
	SetItemAttr(Item_Rwine, ITEMATTR_MAXENERGY, Rwine_NOW)						--设置最大耐久
	SetItemAttr(Item_Rwine, ITEMATTR_ENERGY, Rwine_NOW)								 --设置当前耐久，该值在每分钟后会扣一点
	RefreshCha( character )
	SystemNotice (character , "陈年红酒必须放置在背包栏第2格才会更加醇香" )
end


---------------------------------------------------判断陈年红酒耐久是否为0
function CheckHJ ( character )
	local Rwine_Num = 0
	Rwine_Num = CheckBagItem(  character , 2967 )		--检查背包内2977号道具的数量
	if Rwine_Num == 1 then				--如果2977号道具的数量大于等于1
		local Rwine = GetChaItem2 (  character , 2 , 2967 )			--取到角色背包内道具ID为2977的道具的指针
		local ENERGY = GetItemAttr(Rwine, ITEMATTR_ENERGY)
		if ENERGY ==0 then
			return LUA_TRUE
		end
	else
		SystemNotice( character, "请确保您的身上只有一瓶陈年红酒")
	end

end

function CreatBBBB( role , MonsterID )
	local x , y = GetChaPos(role)
	x = x + 10
	y = y + 10
	local Refresh = 3600
	local life = 3600000
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	local Role_ID = GetRoleID(role)	---------新的
	BBBB[ Role_ID ] = new
	local hit = GetChaAttr( new , ATTR_HIT )
	--SystemNotice( role , "hit=="..hit )
	hit = 225
	SetCharaAttr ( hit , new , ATTR_HIT )
	--SystemNotice( role , "hit00=="..hit )



	return LUA_TRUE
end



function CheckBBBB( role )
	local Role_ID = GetRoleID(role)	
	local BBBB = BBBB[ Role_ID ]
	if BBBB~= nil and BBBB~= 0 then 
		local ISLive = ValidCha( BBBB )
		--SystemNotice( role , "ISLive==" ..ISLive)
		--local hit = GetChaAttr( BBBB , ATTR_HIT )
		--SystemNotice( role , "hit00==" ..hit)
		--if hit== 225 then
			local x01 , y01 = GetChaPos(role)
			local x02 , y02 = GetChaPos(BBBB)
			local X_red = math.abs( x01 - x02 )
			local Y_red = math.abs( y01 - y02 )
			if X_red <= 2000 and Y_red <= 2000 then
				KillCha( BBBB )-------新的
				return LUA_TRUE
			else
				SystemNotice( role , "你押送的东西不在你的身边啊" )
				return LUA_FALSE
			end
		--else
			--SystemNotice( role , "这只不是你要护送的那个圣诞老人啊!" )
			--return LUA_FALSE
		--end
	
	else
		SystemNotice( role , "你押送的东西不在你的身边啊" )
		return LUA_FALSE
	end
end

-----情人节戒指兑换判断条件-----
function ValentinesRingJudge(role)
	local Ring_Num = 0
	local t = {}			--调用各个队友的指针
		t[0] = role 
		t[1] = GetTeamCha(role, 0 )  
		t[2] = GetTeamCha(role, 1 )   
		t[3] = GetTeamCha(role, 2 )    
		t[4] = GetTeamCha(role, 3 )
	local t_Num = {}		--记录各个队友身上戒指数量
	t_Num[0]	= 0
	t_Num[1]	= 0
	t_Num[2]	= 0
	t_Num[3]	= 0
	t_Num[4]	= 0
	local i = 1
	for i = 1 , 4, 1 do
		if t[i] ~= nil then
			local Ring_Num_Add = CheckBagItem(  t[i] , 2521 )	
			if Ring_Num_Add == 1 then

				local retbag = HasLeaveBagGrid(  t[i], 1)
				if retbag ~= LUA_TRUE then
					SystemNotice(role,"对方背包空格少于1个无法兑换")
					SystemNotice(t[i],"背包空格少于1个无法兑换")
					return LUA_FALSE
				end	
				local NocLock =KitbagLock( t[i], 0 )
				if NocLock == LUA_FALSE then
					SystemNotice( role , "对方道具栏已锁定")
					SystemNotice( t[i] , "道具栏已锁定")
					return LUA_FALSE
				end

				t_Num[i] = 1		--如果有戒指，把值设为1，供后面做判断用
				Ring_Num = Ring_Num + Ring_Num_Add	--将队伍中戒指总数记录，供后面做判断用
				local USED_Ring_Num = CheckBagItem(  t[i] , 2520 )	--判断此队友身上是否已经有绑定的戒指
				if USED_Ring_Num >= 1 then
					SystemNotice(role,"你队友中有人想重婚")
					SystemNotice(t[i],"重婚是重罪")
					return LUA_FALSE		
				end
			end
		end
	end
	
	if Ring_Num == 1 then				--如果队伍中戒指总数为1，就将此人与接任务的人结合
		return LUA_TRUE
	elseif Ring_Num > 1 then
		SystemNotice(role,"我国提倡一夫一妻制……")
		return LUA_FALSE
	else
		SystemNotice(role,"请找个人先。")
		return LUA_FALSE
	end
end
-----情人节戒指记录信息
function ValentinesRing(role)
	local Ring_Num = 0
	local t = {}			--调用各个队友的指针
		t[0] = role 
		t[1] = GetTeamCha(role, 0 )  
		t[2] = GetTeamCha(role, 1 )   
		t[3] = GetTeamCha(role, 2 )    
		t[4] = GetTeamCha(role, 3 )
	local t_Num = {}		--记录各个队友身上戒指数量
		t_Num[0]	= 0
		t_Num[1]	= 0
		t_Num[2]	= 0
		t_Num[3]	= 0
		t_Num[4]	= 0
	local i = 1
	for i = 1 , 4, 1 do
		if t[i] ~= nil then
			local Ring_Num_Add = CheckBagItem(  t[i] , 2521 )	
			if Ring_Num_Add == 1 then
				t_Num[i] = 1		--如果有戒指，把值设为1，供后面做判断用
				Ring_Num = Ring_Num + Ring_Num_Add	--将队伍中戒指总数记录，供后面做判断用
				local USED_Ring_Num = CheckBagItem(  t[i] , 2520 )	--判断此队友身上是否已经有绑定的戒指
				if USED_Ring_Num >= 1 then
					SystemNotice(role,"你队友中有人想重婚")
					SystemNotice(t[i],"重婚是重罪")
					return LUA_FALSE		
				end
			end
		end
	end
	
	if Ring_Num == 1 then				--如果队伍中戒指总数为1，就将此人与接任务的人结合
		local i = 1
		for i = 1 , 4 ,1 do
			if t_Num[i] == 1 then
				
				local RoleType = GetChaID(role)
				local TeamerType = GetChaID(t[i])
				if (RoleType<=2 and TeamerType>=3) or (RoleType>=3 and TeamerType<=2) then		--性别判断
					--将接任务玩家的信息记录在对方戒指中
					local ID_Num = GetRoleID(role)	--取得接任务玩家的ID号，并记录在戒指中

					GiveItem ( t[i] , 0 , 2520  , 1 , 4  )
					local a = DelBagItem ( t[i] , 2521 , 1) 

					local Item = GetChaItem2 ( t[i] , 2 , 2520 )	--取得合适队友的情人节戒指指针
					
					local Num_JZ = GetItemForgeParam ( Item , 1 )
					Num_JZ = TansferNum ( Num_JZ )
					Num_JZ = ID_Num	---用精练信息位记录角色ID号
					SetItemForgeParam ( Item , 1 , Num_JZ )
					AddChaSkill ( t[i] , SK_QLZX, 1 , 1 , 0 ) 
					--将合适队友的信息记录在接任务玩家的戒指中
					local ID_Num1 = GetRoleID(t[i])	--取得合适队友的ID号，并记录在戒指中

					GiveItem ( role , 0 , 2520  , 1 , 4  )
					local b = DelBagItem ( role , 2521 , 1) 

					local Item1 = GetChaItem2 ( role , 2 , 2520 )	--取得接任务玩家的情人节戒指指针

					local Num_JZ1 = GetItemForgeParam ( Item1 , 1 )
					Num_JZ1 = TansferNum ( Num_JZ1 )
					Num_JZ1 = ID_Num1	---用精练信息位记录角色ID号
					SetItemForgeParam ( Item1 , 1 , Num_JZ1 )
					AddChaSkill ( role , SK_QLZX, 1 , 1 , 0 ) 
				--	Notice("完事了")
				else
					SystemNotice(role,"请注意你们的性别……")
				end
			end
		end
		return LUA_TRUE
	elseif Ring_Num > 1 then
		SystemNotice(role,"我国提倡一夫一妻制……")
		return LUA_FALSE
	else
		SystemNotice(role,"请找个人先。")
		return LUA_FALSE
	end
end

function Checksailexpless ( role , value )
	local sail_role = GetChaAttr ( role , ATTR_CSAILEXP )
	if sail_role < value then
		return LUA_TRUE
	end
end

function Checksailexpmore ( role , value )
	local sail_role = GetChaAttr ( role , ATTR_CSAILEXP )
	if sail_role >= value then
		return LUA_TRUE
	end
end




---------------------------------------------------圣王的宝藏之判断月光宝盒耐久是否为0
function ItemAttrNum( role ,p1,p2,p3,p4)----p1：道具编号，p2：道具某项属性，p3：要求的属性值，p4：大于（1），小于（2），等于（0），大于等于（3），小于等于（4）
	local ItemAttr={}
	ItemAttr[1]=ITEMATTR_VAL_STR
	ItemAttr[2]=ITEMATTR_VAL_AGI
	ItemAttr[3]=ITEMATTR_VAL_DEX
	ItemAttr[4]=ITEMATTR_VAL_CON
	ItemAttr[5]=ITEMATTR_VAL_STA
	ItemAttr[6]=ITEMATTR_URE
	ItemAttr[7]=ITEMATTR_ENERGY
	local item_num = 0
	local item=0	
	item_num = CheckBagItem(  role , p1  )		--检查背包内p1号道具的数量-+
	
	if item_num~=1 then
		SystemNotice( role, "请确保您身上只有一个月光宝盒")
		return LUA_FALSE
	else
		item=GetChaItem2 (  role , 2 , p1 )-----------------取道具指针
		local itemattrnum=GetItemAttr(item,ItemAttr[p2])--------取道具的p2属性
		if p4==0 and itemattrnum==p3 then ------------要求属性等于p3
			return LUA_TRUE
		elseif p4==1 and itemattrnum>p3 then ------------要求属性大于p3
			return LUA_TRUE
		elseif  p4==2 and itemattrnum<p3 then ------------要求属性小于p3
			return LUA_TRUE
		elseif  p4==3 and itemattrnum>=p3 then ------------要求属性大于等于p3
			return LUA_TRUE
		elseif  p4==4 and itemattrnum<=p3 then ------------要求属性小于等于p3
			return LUA_TRUE			
		else
			return LUA_FALSE			
		end
	end
end

---------------------------------------------------判断角色捐赠物品是否合法--奥运活动
function CheckChaItem( role )
	local ItemBag = 2									
	local item = GetChaItem(role, 2, 2)                               --- 取角色背包栏第3格道具 
	local itemattrnum = GetItemAttr(item, ITEMATTR_ENERGY)            ---取角色背包栏第3格道具 的能量值
	local itemtypenum = GetItemType(item)                             ---取角色背包栏第3格道具 的类型
	local item_ID = GetItemID(item)	
	--local R1 = 0	
	if  item == nil then
		SystemNotice(role,"请将您要捐赠的道具放在背包第三格")
		return LUA_FALSE
	elseif item_ID == 5842  then
		SystemNotice(role,"火炬可不能用来捐赠哦")
		return LUA_FALSE		
	elseif itemattrnum<3000 then
		SystemNotice( role, "请确保您要捐赠的道具品质为绿色以上的装备")
		return LUA_FALSE
	elseif itemtypenum~=1 and itemtypenum~=2 and itemtypenum~=3 and itemtypenum~=4 and itemtypenum~=5 and itemtypenum~=6 and itemtypenum~=7 and itemtypenum~=9 and itemtypenum~=10 and itemtypenum~=11 and itemtypenum~=22 and itemtypenum~=23 and itemtypenum~=24 then	 
		SystemNotice( role, "请确保您要捐赠的物品是装备或武器")
		return LUA_FALSE
	--elseif R1 == 0 then
		--SystemNotice( role, "移除道具失败")
		--return LUA_FALSE
	else		
		--RemoveChaItem ( role , item_ID , 1 , 2 , -1 , 2 , 0  )
		--RemoveChaItem ( role , 3669    , 1 , 1 , -1 , 2 , 1  )
		SystemNotice(role ,"Item_ID======"..item_ID)
		return LUA_TRUE
	end	
end


function ClearItemNum2( role )
	local ItemBag = 2									
	local item = GetChaItem(role, 2, 2)                               --- 取角色背包栏第3格道具 
	local itemattrnum = GetItemAttr(item, ITEMATTR_ENERGY)            ---取角色背包栏第3格道具 的能量值
	local itemtypenum = GetItemType(item)                             ---取角色背包栏第3格道具 的类型
	local item_ID = GetItemID(item)	
	--local R1 = 0	
	if  item == nil then
		--SystemNotice(role,"请将您要捐赠的道具放在背包第三格")
		return LUA_FALSE
	elseif item_ID == 5842  then
		--SystemNotice(role,"火炬可不能用来捐赠哦")
		return LUA_FALSE		
	elseif itemattrnum<3000 then
		--SystemNotice( role, "请确保您要捐赠的道具品质为绿色以上的装备")
		return LUA_FALSE
	elseif itemtypenum~=1 and itemtypenum~=2 and itemtypenum~=3 and itemtypenum~=4 and itemtypenum~=5 and itemtypenum~=6 and itemtypenum~=7 and itemtypenum~=9 and itemtypenum~=10 and itemtypenum~=11 and itemtypenum~=22 and itemtypenum~=23 and itemtypenum~=24 then	 
		--SystemNotice( role, "请确保您要捐赠的物品是装备或武器")
		return LUA_FALSE
	else		
		SystemNotice(role ,"Item_ID======"..item_ID)
		return item_ID
	end
end


-----------开启彩票对奖 by Lee
function CheckTime_cpopen ( role )
	local now_week= os.date("%w")		-------------星期几（十进制） 
	local now_hour= os.date("%H")		-------------时 
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
--	SystemNotice( role, "星期"..now_week.."时间"..now_hour)
	if now_week == 7 or now_week == 1 or  now_week == 2 or  now_week == 5 or  now_week == 3 or  now_week == 4  then
		if now_week == 6 then
			if now_hour <19 and now_hour > 20 then
				return LUA_TRUE
			end
	
		end
        end
end
-----------------关闭彩票填写 by eric
function CheckTime_cpcolse ( role )
	local now_week= os.date("%w")		-------------星期几（十进制） 
	local now_hour= os.date("%H")		-------------时 
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
--	SystemNotice( role, "星期"..now_week.."时间"..now_hour)
	if now_week == 7 or now_week == 1 or  now_week == 2 or  now_week == 5 or  now_week == 3 or  now_week == 4  then
		if now_week == 6 then
			if now_hour <19 and now_hour > 22 then
				return LUA_TRUE
			end
		end
	end
end

------------兑换彩票一等奖  by Peter
function DuiHhuan1( role )
--		SystemNotice( role, "come here!11")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU   then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

			if  no1==Nom1 and  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 and no6==Nom6	then
				  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
--				SystemNotice( role, "return LUA_TRUE")
				return LUA_TRUE
			 else
--				SystemNotice( role, "return LUA_FALSE")
				return LUA_FALSE
			 end
		 end
end
     
---------------兑换彩票二等奖 by Peter
function DuiHhuan2( role )
--		SystemNotice( role, "come here!22")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		if  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 and no6==Nom6 then
			 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
---			SystemNotice( role, "return LUA_TRUE1")
			return LUA_TRUE
		elseif  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 and no1==Nom1 then
		 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
---			SystemNotice( role, "return LUA_TRUE2")
			return LUA_TRUE
		else
---			SystemNotice( role, "return LUA_FALSE")
			return LUA_FALSE
		end

	end

end
-------------兑换彩票三等奖 by Peter
function DuiHhuan3( role )
--		SystemNotice( role, "come here!33")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		
		if  no1==Nom1 and no2==Nom2 and no3==Nom3 and no4==Nom4  then
			  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
--			SystemNotice( role, "return LUA_TRUE1")
			return LUA_TRUE
		elseif  no2==Nom2 and no3==Nom3 and no4==Nom4 and no5==Nom5 then
			  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
--			SystemNotice( role, "return LUA_TRUE2")
			return LUA_TRUE
                elseif  no3==Nom3 and no4==Nom4 and no5==Nom5 and no6==Nom6 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
---			SystemNotice( role, "return LUA_TRUE2")
			return LUA_TRUE
		 else
---			SystemNotice( role, "return LUA_FALSE")
			return LUA_FALSE
	       end
	end
end
----------兑换彩票四等奖 by Peter
function DuiHhuan4( role )
--		SystemNotice( role, "come here!44")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		 if  no1==Nom1 and  no2==Nom2 and no3==Nom3  then 
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			return LUA_TRUE
		  elseif no2==Nom2 and no3==Nom3 and no4==Nom4 then
		   RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		elseif no3==Nom3 and no4==Nom4 and no5==Nom5  then
		 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 elseif no4==Nom4 and no5 == Nom5 and no6 == Nom6  then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 else
			return LUA_FALSE
		end
	 end
end
-------------兑换彩票五等奖 by Peter
function DuiHhuan5( role )
--		SystemNotice( role, "come here!55")
		local issue = GetLotteryIssue()
--		SystemNotice( role, "issue=="..issue)
		local crab = GetChaItem ( role , 2 , 0  )
		 local caipiaoID= GetItemID (crab)
		 local caipiaoqi = GetTicketIssue(crab)
--		SystemNotice( role, "caipiaoqi=="..caipiaoqi)
		local caipiaoU=issue-1
		if  caipiaoqi ==0 then 
		return LUA_FALSE
		 end
--		SystemNotice( role, "caipiaoU=="..caipiaoU)
		 if  caipiaoID==5828 and caipiaoqi == caipiaoU  then   --判断彩票期号             
			 local  no1 =GetWinLotteryItemno(caipiaoU, 1)         --中奖号码个位
--			SystemNotice( role, "no1=="..no1)
			local  no2 =GetWinLotteryItemno(caipiaoU, 2)          --中奖号码十位
			local  no3 =GetWinLotteryItemno(caipiaoU, 3)          --中奖号码百位
			local  no4 =GetWinLotteryItemno(caipiaoU, 4)          --中奖号码千位
			local  no5 =GetWinLotteryItemno(caipiaoU, 5)          --中奖号码万位
			local  no6 =GetWinLotteryItemno(caipiaoU, 6)          --中奖号码十万位
			 local  Nom1 =GetTicketItemno(crab, 1)         --彩票号码个位
			local  Nom2 =GetTicketItemno(crab, 2)          --彩票号码十位
			local  Nom3 =GetTicketItemno(crab, 3)          --彩票号码百位
			local  Nom4 =GetTicketItemno(crab, 4)          --彩票号码千位
--			SystemNotice( role, "Nom4=="..Nom4)
			local  Nom5 =GetTicketItemno(crab, 5)          --彩票号码万位
--			SystemNotice( role, "Nom5=="..Nom5)
			local  Nom6 =GetTicketItemno(crab, 6)          --彩票号码十万位
--			SystemNotice( role, "Nom6=="..Nom6)
			if  Nom1=="X" then  
				Nom1=no1 
--				SystemNotice( role, "Nom1=="..Nom1)
			elseif   Nom2=="X" then  
				Nom2=no2  
--				SystemNotice( role, "Nom2=="..Nom2)
			elseif   Nom3=="X" then 
				Nom3=no3  
--				SystemNotice( role, "Nom3=="..Nom3)
			elseif   Nom4=="X" then 
				Nom4=no4  
--				SystemNotice( role, "Nom4=="..Nom4)
			elseif   Nom5=="X" then  
				Nom5=no5  
--				SystemNotice( role, "Nom5=="..Nom5)
			elseif   Nom6=="X" then  
				Nom6=no6  	
--				SystemNotice( role, "Nom6=="..Nom6)
			end

		 if  no1==Nom1 and  no2==Nom2 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		elseif no2==Nom2 and no3==Nom3  then
		 RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 elseif no3==Nom3 and no4==Nom4 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 elseif no4==Nom4 and no5==Nom5  then 
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		 elseif  no5==Nom5 and no6==Nom6 then
		  RemoveChaItem ( role , 5828, 1 , 2 , 0 , 2 , 1 , 1)                  --强制移除包栏第一格的物品
			 return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
end

function FireworksChurch(role)
	local t = {} 
		t[0] = 839
		t[1] = 838
		t[2] = 366
		t[3] = 369
		t[4] = 363

	local i = math.random( 0, 4 )
	return PlayEffect( role, t[i] )
end

--[[泽黻鲨� 镳钼屦觇 
镱腠钽?觐祜脲牝?95BB 理耔腩?]]--
function CheckItem_ZHONGSHEN ( role )

	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local head = GetChaItem ( role , 1 , 0 )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	local Head_ID = GetItemID ( head )
            local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
            local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
	local head_gem_id = GetItemAttr ( head , ITEMATTR_VAL_FUSIONID )

		body_gem_id=Body_ID
		hand_gem_id=Hand_ID
		foot_gem_id=Foot_ID
		head_gem_id=Head_ID
	if body_gem_id ~= 6070 and body_gem_id ~= 6074 and body_gem_id ~= 6079 and body_gem_id ~= 6083 then
	   return 0
	end
	if hand_gem_id ~= 6071 and hand_gem_id ~= 6075 and hand_gem_id ~= 6080 and hand_gem_id ~= 6084 then
	   return 0
	end
	if foot_gem_id ~= 6072 and foot_gem_id ~= 6076 and foot_gem_id ~= 6081 and foot_gem_id ~= 6085 then 
	   return 0
	end
	if head_gem_id ~= 6073 and head_gem_id ~= 6077 and head_gem_id ~= 6078 and head_gem_id ~= 6082 then
	   return 0
	end
	return 1
end

--砚鬻屙桢 95BB
function ZhongShenTaoZhuang(role,now_tick)
	local ZhongShen_Value = CheckItem_ZHONGSHEN (role)
	if ZhongShen_Value ~= 0 then
		local statelv = 1
		local statetime = 3600
		AddState ( role , role , STATE_zhongshen , statelv , statetime )
		return
	else
		local statelv_ZhongShen = GetChaStateLv ( role , STATE_zhongshen )
		if statelv_ZhongShen~=0 then
				RemoveState ( role ,STATE_zhongshen ) 
			return
			end
		return
	end
end

function Elf_LvUp_5 ( role , Item_Num , Item_Traget , attr_type )
     local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --力量
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --体质
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --专注
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --敏捷
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --精神
    local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
    local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

    local Lv = str + agi + dex + con + sta
    local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

    local a = 1
    SystemNotice (role , "\192\226\242\238\236\224\242\232\247\229\241\234\224\255 \239\240\238\234\224\247\234\224 \212\229\232 ")	
    if Lv >= 1200 then
        a = 0
	SystemNotice (role , "\212\229\255 \228\238\241\242\232\227\235\224 \241\226\238\229\227\238 \239\240\229\228\229\235\224 ")	
    end
    
    local b = Percentage_Random ( a )
    
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) --取精灵成长度
        --local item_maxenerge = GetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ) --取精灵成长度最大值
   
    if b == 1 then                        --成长则增加属性，扣除所有成长值 -- ITEMATTR_ENERGY
            AddItemEffect(role , Item_Traget , 0  )
        item_energe = 0 
        
                attr_type_num = attr_type_num + 2
        SetItemAttr ( Item_Traget , attr_type , attr_type_num )

        local Item_MAXENERGY = 240 * ( Lv + 2 )
        
        if Item_MAXENERGY > 6480 then
            Item_MAXENERGY = 6480
        end


        local Item_MAXURE_NUM = Elf_MaxURE + 2000

        if Item_MAXURE_NUM > 32000 then
            Item_MAXURE_NUM = 32000
        end
        
        SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
        SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
        ResetItemFinalAttr(Item_Traget)
            AddItemEffect(role , Item_Traget , 1  )
    else                            --未获成长则仅扣除一半的成长值
        item_energe = 0.5 * item_energe   
    end
        SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )

end

function Elf_LvUp_6 ( role , Item_Num , Item_Traget , attr_type )
     local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )       --力量
        local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )       --体质
        local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )       --专注
        local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )       --敏捷
        local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )       --精神
    local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
    local Elf_MaxURE = GetItemAttr(Item_Traget,ITEMATTR_MAXURE) 

    local Lv = str + agi + dex + con + sta
    local attr_type_num = GetItemAttr( Item_Traget ,attr_type )

    local a = 1
    SystemNotice (role , "\192\226\242\238\236\224\242\232\247\229\241\234\224\255 \239\240\238\234\224\247\234\224 \212\229\232 ")	
    if Lv >= 1400 then
        a = 0
	SystemNotice (role , "\212\229\255 \228\238\241\242\232\227\235\224 \241\226\238\229\227\238 \239\240\229\228\229\235\224 ")	
    end
    
    local b = Percentage_Random ( a )
    
        local item_energe = GetItemAttr( Item_Traget ,ITEMATTR_ENERGY ) --取精灵成长度
        --local item_maxenerge = GetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ) --取精灵成长度最大值
   
    if b == 1 then                        --成长则增加属性，扣除所有成长值 -- ITEMATTR_ENERGY
            AddItemEffect(role , Item_Traget , 0  )
        item_energe = 0 
        
                attr_type_num = attr_type_num + 2
        SetItemAttr ( Item_Traget , attr_type , attr_type_num )

        local Item_MAXENERGY = 240 * ( Lv + 2 )
        
        if Item_MAXENERGY > 6480 then
            Item_MAXENERGY = 6480
        end


        local Item_MAXURE_NUM = Elf_MaxURE + 2000

        if Item_MAXURE_NUM > 32000 then
            Item_MAXURE_NUM = 32000
        end
        
        SetItemAttr ( Item_Traget , ITEMATTR_MAXENERGY , Item_MAXENERGY )
        SetItemAttr ( Item_Traget , ITEMATTR_MAXURE , Item_MAXURE_NUM )
        ResetItemFinalAttr(Item_Traget)
            AddItemEffect(role , Item_Traget , 1  )
    else                            --未获成长则仅扣除一半的成长值
        item_energe = 0.5 * item_energe   
    end
        SetItemAttr ( Item_Traget , ITEMATTR_ENERGY , item_energe )

end


function Lvup_Agi_4 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_AGI -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Str_4 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_STR -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Con_4 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_CON -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Dex_4 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_DEX -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Sta_4 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_STA -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_4 ( role , Item_Num , Item_Traget , attr_type )
end


function Lvup_Agi_5 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_AGI -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_5 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Str_5 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_STR -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_5 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Con_5 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_CON -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_5 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Dex_5 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_DEX -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_5 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Sta_5 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_STA -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_5 ( role , Item_Num , Item_Traget , attr_type )
end

function Lvup_Agi_6 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_AGI -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_6 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Str_6 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_STR -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_6 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Con_6 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_CON -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_6 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Dex_6 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_DEX -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_6 ( role , Item_Num , Item_Traget , attr_type )
end
function Lvup_Sta_6 ( role , Item_Num ,Item_Traget )
local attr_type = ITEMATTR_VAL_STA -- 玉蜞磬怆桠噱?镟疣戾蝠 - 楞?
Elf_LvUp_6 ( role , Item_Num , Item_Traget , attr_type )
end



function FastCombiner(cha,itemid,lvl)
  
	local CombineLvl = {}
	CombineLvl[4] = {pieces=8, MoneyNeed = 8000000}  --4 лвл
	CombineLvl[5] = {pieces=16, MoneyNeed = 30000000} --5 лвл
	CombineLvl[6] = {pieces=32, MoneyNeed = 100000000} --6 лвл
	
	if(KitbagLock(cha, 0) ~= LUA_TRUE)then 
		--HelpInfo(cha,0,'Сначала снимите замок!') 
		HelpInfo(cha,0,'\209\237\224\247\224\235\224 \241\237\232\236\232\242\229 \231\224\236\238\234!') 
		return
	end
	
	local bag,gemSlot,gemLv,array = GetKbCap(cha),0,0,{}
	for i = 0,bag-1 do
		gemSlot = GetChaItem(cha,2,i)
		if(GetItemID(gemSlot) == itemid)then
			gemLv = GetItemAttr(gemSlot,ITEMATTR_VAL_BaoshiLV)
			if(gemLv == 1)then
				table.insert(array,i)
			end
		end
	end
	
	if(table.getn(array) < CombineLvl[lvl].pieces)then
		--HelpInfo(cha,0,'Вам нужно '..CombineLvl[lvl].pieces..' самоцветов  '..GetItemName(itemid)..' для комбайна!')
		HelpInfo(cha,0,'\194\224\236 \237\243\230\237\238 '..CombineLvl[lvl].pieces..' '..GetItemName(itemid)..' \228\235\255 \234\238\236\225\232\237\232\240\238\226\224\237\232\255!')
		return
	end
	
	local MoneyCha = GetChaAttr ( cha , ATTR_GD )
	if(MoneyCha < CombineLvl[lvl].MoneyNeed )then
		HelpInfo(cha, 0, '\194\224\236 \237\243\230\237\238 '..CombineLvl[lvl].MoneyNeed.." \231\238\235\238\242\224, \247\242\238\225\251 \241\234\238\236\225\232\237\232\240\238\226\224\242\252 \241\224\236\238\246\226\229\242 "..lvl.." \243\240\238\226\237\255!")
		return 
	else
		TakeMoney(cha,0,CombineLvl[lvl].MoneyNeed)
	end
	
	local rem = 1
	for k,j in pairs(array) do
		if(rem <= CombineLvl[lvl].pieces)then
			RemoveChaItem(cha,0,1,2,j,2,1)
			rem = rem + 1	
		else
			break
		end
	end
	
	--BickerNotice(cha,GetItemName(itemid)..' успешно скомбинирован '..lvl..' уровня!')
	BickerNotice(cha,GetItemName(itemid)..' \243\241\239\229\248\237\238 \241\234\238\236\225\232\237\232\240\238\226\224\237 '..lvl..' \243\240\238\226\237\255!')
	GiveItem(cha,0,itemid,1,100+lvl)
  
end

function AddSkillNPC ( role )
    local job = GetChaAttr(role, ATTR_JOB)    -- Проверям профессию персонажа
	---Проверяем голду---
	local checkgd = GetChaAttr(role , ATTR_GD)
	if checkgd < 50000 then
		--PopupNotice("Чтобы воспользоваться изучением, заплатите 50.000 золота! ")
		PopupNotice("\215\242\238\225\251 \226\238\241\239\238\235\252\231\238\226\224\242\252\241\255 \232\231\243\247\229\237\232\229\236, \231\224\239\235\224\242\232\242\229 50.000 \231\238\235\238\242\224!")
		return 0
	else
		TakeMoney(role,0,50000)
	end
    if (job == 1) then                        -- Мечник
local sk_add = {}
sk_add[0] = SK_CHF;
sk_add[1] = SK_JDZZ;
sk_add[2] = SK_JSSL;
sk_add[3] = SK_GTYZ;
sk_add[4] = SK_HYZ;
sk_add[5] = SK_PJ;
sk_add[6] = SK_KB;
sk_add[7] = SK_HX;
	 
local sk_name = {}
sk_name[0] = "\205\224\241\236\229\248\234\224 ";
sk_name[1] = "\202\238\237\246\229\237\242\240\224\246\232\255 ";
sk_name[2] = "\204\224\241\242\229\240 \194\235\224\228\229\237\232\255 \204\229\247\238\236 ";
sk_name[3] = "\209\242\224\235\252\237\224\255 \194\238\235\255 ";
sk_name[4] = "\200\235\235\254\231\238\240\237\251\233 \211\228\224\240 ";
sk_name[5] = "\193\240\238\237\229\235\238\236 ";
sk_name[6] = "\193\229\240\241\229\240\234 ";
sk_name[7] = "\208\251\234 \210\232\227\240\224 "; 
	
local sk_lvl = 1    -- Уровень умения
 
for i = 0, 7 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
    else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
    end
end   
    elseif (job == 2) then                    -- Охотник
local sk_add = {}
sk_add[0] = SK_GJSL;
sk_add[1] = SK_JFB;
sk_add[2] = SK_LZJ;
sk_add[3] = SK_FNQ;
sk_add[4] = SK_BDJ;
sk_add[5] = SK_LXJY;
sk_add[6] = SK_DJ;
	
local sk_name = {}
sk_name[0] = "\204\224\241\242\229\240 \209\242\240\229\235\234\238\226\238\227\238 \206\240\243\230\232\255 ";
sk_name[1] = "\207\243\242\252 \194\229\242\240\224 ";
sk_name[2] = "\196\226\238\233\237\238\233 \194\251\241\242\240\229\235 ";
sk_name[3] = "\194\238\238\228\243\248\229\226\235\229\237\232\229 ";
sk_name[4] = "\203\229\228\255\237\224\255 \209\242\240\229\235\224 ";
sk_name[5] = "\204\229\242\229\238\240\232\242\237\251\233 \196\238\230\228\252 ";
sk_name[6] = "\206\242\240\224\226\235\229\237\224\255 \209\242\240\229\235\224 ";
	
local sk_lvl = 1    -- Уровень умения
 
for i = 0, 6 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
    else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
    end
end
    elseif (job == 4) then                    -- Мореплавотель
local sk_add = {}
sk_add[0] = SK_JR;
sk_add[1] = SK_LJ;
sk_add[2] = SK_SL;
sk_add[3] = SK_BKZJ;
sk_add[4] = SK_JF;
sk_add[5] = SK_HZCR;

local sk_name = {}
sk_name[0] = "\211\241\229\240\228\232\229 ";
sk_name[1] = "\204\238\235\237\232\255 ";
sk_name[2] = "\194\238\228\238\242\238\234 ";
sk_name[3] = "\193\240\238\237\255 \232\231 \208\224\234\238\226\232\237 ";
sk_name[4] = "\210\238\240\237\224\228\238 ";
sk_name[5] = "\194\238\228\238\240\238\241\235\232 ";
	
local sk_lvl = 1    -- Уровень умения
 
for i = 0, 5 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
    else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
    end
end
    elseif (job == 5) then                    -- Знахарка
local sk_add = {}
sk_add[0] = SK_XZY;
sk_add[1] = SK_XLCZ;
sk_add[2] = SK_XLZH;
sk_add[3] = SK_SHPF;
sk_add[4] = SK_JSJC;
sk_add[5] = SK_HFS;
sk_add[6] = SK_FZLZ;
sk_add[7] = SK_FH;
	
local sk_name = {}
sk_name[0] = "\200\241\246\229\235\229\237\232\229 ";
sk_name[1] = "\207\240\232\231\240\224\247\237\251\233 \211\228\224\240 ";
sk_name[2] = "\207\240\232\231\240\224\247\237\251\233 \206\227\238\237\252 ";
sk_name[3] = "\199\224\234\224\235\234\224 ";
sk_name[4] = "\209\232\235\224 ";
sk_name[5] = "\194\238\241\241\242\224\237\238\226\235\229\237\232\229 ";
sk_name[6] = "\204\238\249\252 \193\243\240\232 ";
sk_name[7] = "\194\238\241\234\240\229\248\229\237\232\229 ";	
	
local sk_lvl = 1    -- Уровень умения
 
for i = 0, 7 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
    else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
    end
end	
    elseif (job == 8) then                    -- Чемпион
local sk_add = {}
sk_add[0] = SK_CHF;
sk_add[1] = SK_JDZZ;
sk_add[2] = SK_JSSL;
sk_add[3] = SK_GTYZ;
sk_add[4] = SK_HYZ;
sk_add[5] = SK_PJ;
sk_add[6] = SK_KB;
sk_add[7] = SK_HX;
sk_add[8] = SK_PAX;
sk_add[9] = SK_JJSL;
sk_add[10] = SK_QHTZ;
sk_add[11] = SK_ZJ;
sk_add[12] = SK_LH;
sk_add[13] = SK_MNRX;
sk_add[14] = SK_SWZQ;
 
local sk_name = {}
sk_name[0] = "\205\224\241\236\229\248\234\224 ";
sk_name[1] = "\202\238\237\246\229\237\242\240\224\246\232\255 ";
sk_name[2] = "\204\224\241\242\229\240 \194\235\224\228\229\237\232\255 \204\229\247\238\236 ";
sk_name[3] = "\209\242\224\235\252\237\224\255 \194\238\235\255 ";
sk_name[4] = "\200\235\235\254\231\238\240\237\251\233 \211\228\224\240 ";
sk_name[5] = "\193\240\238\237\229\235\238\236 ";
sk_name[6] = "\193\229\240\241\229\240\234 ";
sk_name[7] = "\208\251\234 \210\232\227\240\224 "; 
sk_name[8] = "\208\251\234 ";
sk_name[9] = "\204\224\241\242\229\240 \193\238\235\252\248\238\227\238 \204\229\247\224 ";
sk_name[10] = "\211\241\232\235\229\237\232\229 ";
sk_name[11] = "\204\238\227\243\247\232\233 \211\228\224\240 ";
sk_name[12] = "\194\238\233 ";
sk_name[13] = "\202\240\238\226\224\226\251\233 \193\251\234 ";
sk_name[14] = "\207\229\240\226\238\225\251\242\237\224\255 \223\240\238\241\242\252 ";

local sk_lvl = 1    -- Уровень умения
 
for i = 0, 14 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
    else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
    end
end
    elseif (job == 9) then                    -- Воитель
        -- Тело функции
local sk_add = {}
sk_add[0] = SK_CHF;
sk_add[1] = SK_JDZZ;
sk_add[2] = SK_JSSL;
sk_add[3] = SK_GTYZ;
sk_add[4] = SK_HYZ;
sk_add[5] = SK_PJ;
sk_add[6] = SK_KB;
sk_add[7] = SK_HX;
sk_add[8] = SK_FSZ;
sk_add[9] = SK_LQHB;
sk_add[10] = SK_PXKG;
sk_add[11] = SK_DB;
sk_add[12] = SK_GWZ;
sk_add[13] = SK_YS;
 
local sk_name = {}
sk_name[0] = "\205\224\241\236\229\248\234\224 ";
sk_name[1] = "\202\238\237\246\229\237\242\240\224\246\232\255 ";
sk_name[2] = "\204\224\241\242\229\240 \194\235\224\228\229\237\232\255 \204\229\247\238\236 ";
sk_name[3] = "\209\242\224\235\252\237\224\255 \194\238\235\255 ";
sk_name[4] = "\200\235\235\254\231\238\240\237\251\233 \211\228\224\240 ";
sk_name[5] = "\193\240\238\237\229\235\238\236 ";
sk_name[6] = "\193\229\240\241\229\240\234 ";
sk_name[7] = "\208\251\234 \210\232\227\240\224 "; 
sk_name[8] = "\208\243\225\234\224 \196\226\243\236\255 \204\229\247\224\236\232 ";
sk_name[9] = "\209\237\238\240\238\226\234\224 ";
sk_name[10] = "\202\240\238\226\224\226\238\229 \193\229\231\243\236\232\229 ";
sk_name[11] = "\223\228\238\226\232\242\251\233 \196\240\238\242\232\234 ";
sk_name[12] = "\210\229\237\229\226\238\233 \211\228\224\240 ";
sk_name[13] = "\209\234\240\251\242\237\238\241\242\252 ";

local sk_lvl = 1    -- Уровень умения
 
for i = 0, 13 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
    else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
    end
end
    elseif (job == 12) then                    -- Стрелок
        -- Тело функции
local sk_add = {}
sk_add[0] = SK_GJSL;
sk_add[1] = SK_JFB;
sk_add[2] = SK_LZJ;
sk_add[3] = SK_FNQ;
sk_add[4] = SK_BDJ;
sk_add[5] = SK_LXJY;
sk_add[6] = SK_DJ;
sk_add[7] = SK_HQSL;
sk_add[8] = SK_RSD;
sk_add[9] = SK_TJ;
sk_add[10] = SK_SJ;
sk_add[11] = SK_BT;
sk_add[12] = SK_JGS;

local sk_name = {}
sk_name[0] = "\204\224\241\242\229\240 \209\242\240\229\235\234\238\226\238\227\238 \206\240\243\230\232\255 ";
sk_name[1] = "\207\243\242\252 \194\229\242\240\224 ";
sk_name[2] = "\196\226\238\233\237\238\233 \194\251\241\242\240\229\235 ";
sk_name[3] = "\194\238\238\228\243\248\229\226\235\229\237\232\229 ";
sk_name[4] = "\203\229\228\255\237\224\255 \209\242\240\229\235\224 ";
sk_name[5] = "\204\229\242\229\238\240\232\242\237\251\233 \196\238\230\228\252 ";
sk_name[6] = "\206\242\240\224\226\235\229\237\224\255 \209\242\240\229\235\224 ";
sk_name[7] = "\204\224\241\242\229\240 \206\227\237\229\241\242\240\229\235\252\237\238\227\238 \206\240\243\230\232\255 ";
sk_name[8] = "\199\224\230\232\227\224\242\229\235\252\237\224\255 \207\243\235\255 ";
sk_name[9] = "\202\224\235\229\247\224\249\232\233 \194\251\241\242\240\229\235 ";
sk_name[10] = "\206\241\235\224\225\235\229\237\232\229 ";
sk_name[11] = "\194\251\241\242\240\229\235 \226 \195\238\235\238\226\243 ";
 
local sk_lvl = 1    -- Уровень умения
 
for i = 0, 12 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
        SystemNotice( role, "\211\236\229\237\232\229 "..sk_name[i].."\243\230\229 \232\231\243\247\229\237\238 " )
    else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
        SystemNotice( role, "\211\236\229\237\232\229 "..sk_name[i]..""..sk_lvl.." \243\240\238\226\237\255 \232\231\243\247\229\237\238 " )
    end
end
    elseif (job == 13) then                    -- Целительница
        --Тело функции
local sk_add = {}
sk_add[0] = SK_XZY;
sk_add[1] = SK_XLCZ;
sk_add[2] = SK_XLZH;
sk_add[3] = SK_SHPF;
sk_add[4] = SK_JSJC;
sk_add[5] = SK_HFS;
sk_add[6] = SK_FZLZ;
sk_add[7] = SK_FH;
sk_add[8] = SK_SY;
sk_add[9] = SK_SYZY;
sk_add[10] = SK_JSFB;
sk_add[11] = SK_XLPZ;
sk_add[12] = SK_TSHD;
sk_add[13] = SK_HFWQ;
sk_add[14] = SK_CRXSF;

local sk_name = {}
sk_name[0] = "\200\241\246\229\235\229\237\232\229 ";
sk_name[1] = "\207\240\232\231\240\224\247\237\251\233 \211\228\224\240 ";
sk_name[2] = "\207\240\232\231\240\224\247\237\251\233 \206\227\238\237\252 ";
sk_name[3] = "\199\224\234\224\235\234\224 ";
sk_name[4] = "\209\232\235\224 ";
sk_name[5] = "\194\238\241\241\242\224\237\238\226\235\229\237\232\229 ";
sk_name[6] = "\204\238\249\252 \193\243\240\232 ";
sk_name[7] = "\194\238\241\234\240\229\248\229\237\232\229 ";
sk_name[8] = "\193\235\224\227\238\228\224\242\252 \195\238\241\239\238\228\237\255 ";
sk_name[9] = "\200\241\242\232\237\237\238\229 \199\240\229\237\232\229 ";
sk_name[10] = "\194\238\240\238\237\234\224 \210\238\240\237\224\228\238 ";
sk_name[11] = "\204\224\227\232\247\229\241\234\232\233 \217\232\242 ";
sk_name[12] = "\192\237\227\229\235\252\241\234\232\233 \217\232\242 ";
sk_name[13] = "\200\241\246\229\235\255\254\249\232\233 \200\241\242\238\247\237\232\234 ";

local sk_lvl = 1    -- Уровень умения
 
for i = 0, 14 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
     else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
    end
end
    elseif (job == 14) then                    -- Колдунья
        -- Тело функции
local sk_add = {}
sk_add[0] = SK_XZY;
sk_add[1] = SK_XLCZ;
sk_add[2] = SK_XLZH;
sk_add[3] = SK_SHPF;
sk_add[4] = SK_JSJC;
sk_add[5] = SK_HFS;
sk_add[6] = SK_FZLZ;
sk_add[7] = SK_FH;
sk_add[8] = SK_SY;
sk_add[9] = SK_SYZY;
sk_add[10] = SK_ZZZH;
sk_add[11] = SK_SYNZ;
sk_add[12] = SK_AYZZ;
sk_add[13] = SK_XZFY;
 
local sk_name = {}
sk_name[0] = "\200\241\246\229\235\229\237\232\229 ";
sk_name[1] = "\207\240\232\231\240\224\247\237\251\233 \211\228\224\240 ";
sk_name[2] = "\207\240\232\231\240\224\247\237\251\233 \206\227\238\237\252 ";
sk_name[3] = "\199\224\234\224\235\234\224 ";
sk_name[4] = "\209\232\235\224 ";
sk_name[5] = "\194\238\241\241\242\224\237\238\226\235\229\237\232\229 ";
sk_name[6] = "\204\238\249\252 \193\243\240\232 ";
sk_name[7] = "\194\238\241\234\240\229\248\229\237\232\229 ";
sk_name[8] = "\193\235\224\227\238\228\224\242\252 \195\238\241\239\238\228\237\255 ";
sk_name[9] = "\200\241\242\232\237\237\238\229 \199\240\229\237\232\229 ";
sk_name[10] = "\207\240\238\234\235\255\242\251\233 \206\227\238\237\252 ";
sk_name[11] = "\193\229\231\228\238\237\237\238\229 \193\238\235\238\242\238 ";
sk_name[12] = "\208\238\241\247\229\240\234 \210\229\237\232 ";
sk_name[13] = "\207\229\247\224\242\252 \209\242\224\240\229\233\248\232\237\251 ";

local sk_lvl = 1    -- Уровень умения
 
for i = 0, 13 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
    else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
    end
end
    elseif (job == 16) then                    -- Покоритель Морей
        -- Тело функции
local sk_add = {}
sk_add[0] = SK_JR;
sk_add[1] = SK_LJ;
sk_add[2] = SK_SL;
sk_add[3] = SK_BKZJ;
sk_add[4] = SK_JF;
sk_add[5] = SK_HZCR;
sk_add[6] = SK_BKCJ;
sk_add[7] = SK_SF;
sk_add[8] = SK_XW;
sk_add[9] = SK_LM;
sk_add[10] = SK_MW;

 
local sk_name = {}
sk_name[0] = "\200\241\246\229\235\229\237\232\229 ";
sk_name[1] = "\207\240\232\231\240\224\247\237\251\233 \211\228\224\240 ";
sk_name[2] = "\207\240\232\231\240\224\247\237\251\233 \206\227\238\237\252 ";
sk_name[3] = "\199\224\234\224\235\234\224 ";
sk_name[4] = "\209\232\235\224 ";
sk_name[5] = "\194\238\241\241\242\224\237\238\226\235\229\237\232\229 ";
sk_name[6] = "\204\238\249\252 \193\243\240\232 ";
sk_name[7] = "\194\238\241\234\240\229\248\229\237\232\229 ";


sk_name[8] = "\194\232\245\240\252 ";
sk_name[9] = "\195\240\238\231\238\226\224\255 \199\224\226\229\241\224 ";
sk_name[10] = "\210\243\236\224\237 ";
 
local sk_lvl = 1    -- Уровень умения
 
for i = 0, 10 do
    local form_sklv = GetSkillLv( role , sk_add[i] )
 
    if form_sklv ~= 0 then
    else
        AddChaSkill( role, sk_add[i], sk_lvl, 1, 1 )
    end
end
    end
end
	
function Leaveprison ( role )
    AddState( role, role, STATE_BKDB, 10, 3600)
    local br = math.random ( 1, 3)
    if br==1 then
        SetSpawnPos ( role, "Shaitan City")
        MoveCity ( role, "Shaitan City")
    elseif br == 2 then
        SetSpawnPos ( role, "Shaitan City")
        MoveCity ( role, "Shaitan City")
    else
        SetSpawnPos ( role, "Shaitan City")
        MoveCity ( role, "Shaitan City")
    end
    return LUA_TRUE
end
 
function Checkjlktime ( role )
    local jiluka_num = CheckBagItem ( role, 5724)
    if jiluka_num == 1 then
        local jiluka = GetChaItem2 (  role , 2 , 5724 )
        local ENERGY = GetItemAttr(jiluka, ITEMATTR_ENERGY)
        if ENERGY ==0 then
            return LUA_TRUE
        end
    else
        SystemNotice( role, "\206\242\239\240\224\226\235\255\233\242\229\241\252 \234 \205\224\247\224\235\252\237\232\234\243 \242\254\240\252\236\251 (273, 212) \232 \243\231\237\224\233\242\229 \228\224\235\252\237\229\233\248\232\229 \243\234\224\231\224\237\232\255.")
    end
 
end
 
function Givejiluka ( role )
    local r1=0
    local r2=0
    r1,r2 =MakeItem ( role , 5724  , 1 , 4 )
    local Item_new = GetChaItem ( role , 2 , r2 )
    SetItemAttr( Item_new, ITEMATTR_ENERGY, 3600)
    SetItemAttr( Item_new, ITEMATTR_MAXENERGY, 3600)
    return LUA_TRUE
end


--Возвращает количество персонажей, которые в отряде с игроком.
function GetPlayerCountInPartyWithRole(role)

	local count = 0
	
	for i = 0, 4, 1 do
		if ValidCha(GetTeamCha(role , i)) == 1 then
			count = count + 1
		end
	end
	
	return count

end

--Проверяет расы персонажей.
function CheckChaType(player1, player2)

	local TypeFirstPlayer  = GetChaTypeID(player1)
	local TypeSecondPlayer = GetChaTypeID(player2)
	
	--Раса + раса
	if TypeFirstPlayer == TypeSecondPlayer then
		return 0
	end
	
	--Ланс + Карциз или Карциз + Ланс
	if TypeFirstPlayer == 1 and TypeSecondPlayer == 2 or
	   TypeFirstPlayer == 2 and TypeSecondPlayer == 1 then
		return 0
	end
	
	--Филисс + Ами или Ами + Филисс
	if TypeFirstPlayer == 3 and TypeSecondPlayer == 4 or
	   TypeFirstPlayer == 4 and TypeSecondPlayer == 3 then
		return 0
	end
	
	return 1
	
end

--Проверяет свадебные наряды
function CheckWeddingDress(role)

	local ChaType = GetChaTypeID(role)              --Раса персонажа
	local Body  = GetItemID(GetEquipItemP(role, 2)) --Тело
	local Glove = GetItemID(GetEquipItemP(role, 3)) --Перчатки
	local Shoes = GetItemID(GetEquipItemP(role, 4)) --Ботинки
	
	--Ланс
	if ChaType == 1 then
		if Body  ~= 5221 or
		   Glove ~= 5222 or
           Shoes ~= 5223 then
		   
			return 0
		end
		
	--Карциз
	elseif ChaType == 2 then
		if Body  ~= 5238 or
		   Glove ~= 5239 or
           Shoes ~= 5240 then
		   
			return 0
		end
	
	--Филлис
	elseif ChaType == 3 then
		if Body  ~= 5245 or
		   Glove ~= 5246 or
           Shoes ~= 5247 then
		   
			return 0
		end
		
	--Ами
	elseif ChaType == 4 then
		if Body  ~= 5253 or
		   Glove ~= 5254 or
           Shoes ~= 5255 then
		   
			return 0
		end
	
	--Неизвестно :) Вряд ли мы сюда попадем, но все равно вернем 0.
	else
		return 0
	end
	
	return 1
end

--Проверяет поженен персонаж или нет
function CheckIsMarried(role)
	
	local sc = CheckBagItem(role, 2520)
	if sc > 0 then
		return 0
	end
	
	return 1

end

--Выдача Свадебного сертификата
function GiveWeddingCertificate(role)


	
	--В отряде ли персонаж?
	if IsInTeam(role) == 0 then
		SystemNotice(role, "Чтобы получить Свадебный Сертификат молодожены должны быть в группе!")
		return 0
	end

	--Персонаж должен быть в отряде ТОЛЬКО со своей половинкой
	if GetPlayerCountInPartyWithRole(role) > 1 then
		SystemNotice(role, "Пожалуйста, останьтесь наедине в группе со своей половинкой!")
		return 0
	end

	
	local player = {}
	player[1] = role
	player[2] = GetTeamCha(role, 0)

	--Проверим, может из персонажей уже кто-то поженился
	if CheckIsMarried(player[1]) == 1 then
		SystemNotice(player[1], "Вы уже поженены!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." уже поженился на другом человеке!")
		
		return 0
	end
	
	if CheckIsMarried(player[2]) == 1 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." уже поженился на другом человеке!")
		SystemNotice(player[2], "Вы уже поженены!")
		
		return 0
	end
	
	--Проверим расы персонажей
	if CheckChaType(player[1], player[2]) == 0 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." неподоходящая для Вас пара!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." неподоходящая для Вас пара!")
		
		return 0
	end
	
	--Проверим свадебные наряды у обеих сторон
	if CheckWeddingDress(player[1]) == 0 then
		SystemNotice(player[1], "Наденьте свадебный наряд!")
		SystemNotice(player[2], "Ваша половинка должна надеть свадбеный наряд!")
		
		return 0
	end
	
	if CheckWeddingDress(player[2]) == 0 then
		SystemNotice(player[1], "Ваша половинка должна надеть свадбеный наряд!")
		SystemNotice(player[2], "Наденьте свадебный наряд!")
		
		return 0
	end
	
	--Проверим Кольцо Св. Валентина у обеих сторон
	local RingFirstPlayer = CheckBagItem(player[1], 2521)
	if RingFirstPlayer == 0 then
		SystemNotice(player[1], "У Вас нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У Вашей половинки нет Кольца Св. Валентина!")
		
		return 0
	end
	
	local RingSecondPlayer = CheckBagItem(player[2], 2521)
	if RingSecondPlayer  == 0 then
		SystemNotice(player[1], "У Вашей половинки нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У Вас нет Кольца Св. Валентина!")
		
		return 0
	end
	
	--Проверим наличие 10 000 000
	local MoneyPlayer = GetChaAttr(player[1] , ATTR_GD)
	if MoneyPlayer < WD_GOLD then
		SystemNotice(player[1], "У Вас недостаточно золота! Вам нужно "..WD_GOLD.." золота, чтобы получить Свадебный сертификат!")
		SystemNotice(player[2], "У Вашей половинки недостаточно золота! Требуется "..WD_GOLD.." золота!")
		
		return 0
	end
	
	--Проверим наличие Свадебного Сертификата.
	local CertificatePlayer = CheckBagItem(player[1], 2913)
	if CertificatePlayer == 1 then
		SystemNotice(player[1], "У Вас уже есть Свадебный сертификат! Очередь Вашей половинки!")
		SystemNotice(player[2], "Ваша очередь получать Свадебный сертификат!")
		
		return 0
	end
	
	--Проверим свободную ячейку в инвентаре
	local FreeSlots = GetChaFreeBagGridNum(player[1])
	if FreeSlots < 1 then 
		SystemNotice(player[1], "У вас нет свободных ячеек в инвентаре! Освободите одну.")
		SystemNotice(player[2], "У Вашей половинки нет свободных ячеек в инвентаре!")
		
		return 0
	end
	
	

	
	--1. Заберем деньги
	TakeMoney(player[1], nil, WD_GOLD)
	
	--2. Дадим  Свадебный Сертификат
	GiveItem(player[1], 0, 2913, 1, 1)
	
	--3. Обновим персонажа
	RefreshCha(player[1])
	
	--4. Скажем об этом второй половине
	if CheckBagItem(player[2], 2913) == 0 then
		SystemNotice(player[2], "Ваша половинка получила свадебный сертификат! Теперь Ваша очередь!")
	else
		SystemNotice(player[2], "Ваша половинка получила свадебный сертификат!")
	end

	
	return 1
	
end

--Конец аукциона
function AuctionEnd(role)


	--Проверки


	--Проверка наличия Ставочной карты
	local sc = CheckBagItem(role, 3025)	
	if sc <= 0 then
		SystemNotice(role, "\207\238\230\224\235\243\233\241\242\224, \239\238\228\242\226\229\240\228\232\242\229, \247\242\238 \243 \194\224\241 \241 \241\238\225\238\233 \229\241\242\252 \209\242\224\226\238\247\237\224\255 \234\224\240\242\238\247\234\224")
		return 0
	end
	
	--Проверка наличия Разрешительного Церковного Буклета
	local item_number = CheckBagItem(role, 3066)		
	if item_number >= 1 then
		SystemNotice(role, "\211 \194\224\241 \243\230\229 \229\241\242\252 \208\224\231\240\229\248\232\242\229\235\252\237\251\233 \214\229\240\234\238\226\237\251\233 \193\243\234\235\229\242!")
		return 0
	end
	
	--Проверка наличия 2-ух свободных ячеек в инвентаре
	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet < 2 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 2 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \232\237\226\229\237\242\224\240\229")
		return 0
	end
	

	
	--1. Выдаем 10 х Гостевой Сундук
	GiveItem (role, 0, 7722, 10, 4)
	--2. Забираем Ставочную карту
	DelBagItem(role, 3025, 1)
	
	--3. Настройка и выдача Разрешительного Церковного Буклета
	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem(role, 3066, 1, 4)
	local Item_new = GetChaItem(role, 2, r2)
	
	
	local now_month    = os.date("%m")
	local now_day      = os.date("%d")
	local now_hour     = os.date("%H") 
	local now_miniute  = os.date("%M")
	local now_day1     = 0
	local now_month1   = 0
	local now_hour1    = 0
	local now_miniute1 = 0
	    
	now_month   = tonumber(now_month)   
	now_day     = tonumber(now_day)  
	now_hour    = tonumber(now_hour)		
	now_miniute = tonumber(now_miniute)
	
	local CheckDateNum = now_hour * 100 + now_miniute

	--18:00
	if CheckDateNum == 1830 then 
		now_hour1    = 18
		now_miniute1 = 0
		if now_month == 1 or now_month == 3 or now_month == 5 or now_month == 7 or now_month == 8 or now_month == 10 or now_month == 12 then 
			if now_day <= 26 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 26 then 
				now_day1   = (now_day + 5) - 31
				now_month1 = now_month + 1
			end 
		end
		if now_month == 4 or now_month == 6 or now_month == 9 or now_month == 11 then 
			if now_day <= 25 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 25 then 
				now_day1   = (now_day + 5) - 30
				now_month1 = now_month + 1
			end 
		end
		if now_month == 2 then 
			if now_day <= 23 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 23 then 
				now_day1   = (now_day + 5) - 28
				now_month1 = now_month + 1 	
			end 
		end
	--19:10
	elseif CheckDateNum == 1910 then 
		now_hour1    = 20
		now_miniute1 = 10	
		if now_month == 1 or now_month == 3 or now_month == 5 or now_month == 7 or now_month == 8 or now_month == 10 or now_month == 12 then 
			if now_day <= 26 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 26 then 
				now_day1   = (now_day + 5) - 31
				now_month1 = now_month + 1
			end 
		end
		if now_month == 4 or now_month == 6 or now_month == 9 or now_month == 11 then 
			if now_day <= 25 then 
				now_day1   = now_day + 5
				now_month1 = now_month
			elseif now_day > 25 then 
				now_day1   = (now_day + 5) - 30
				now_month1 = now_month + 1
			end 
		end
		if now_month == 2 then 
			if now_day <= 23 then 
				now_day1 = now_day + 5
				now_month1 = now_month
			elseif now_day > 23 then 
				now_day1   = (now_day + 5) - 28
				now_month1 = now_month + 1
			end 
		end
	--19:50
	elseif CheckDateNum == 1950 then 
		now_hour1    = 18
		now_miniute1 = 0  
		if now_month == 1 or now_month == 3 or now_month == 5 or now_month == 7 or now_month == 8 or now_month == 10 or now_month == 12 then 
			if now_day <= 25 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 25 then 
				now_day1   = (now_day + 6) - 31
				now_month1 = now_month + 1
			end 
		end
		if now_month == 4 or now_month == 6 or now_month == 9 or now_month == 11 then 
			if now_day <= 24 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 24 then 
				now_day1   = (now_day + 6) - 30
				now_month1 = now_month + 1
			end 
		end
		if now_month == 2 then 
			if now_day <= 22 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 22 then 
				now_day1   = (now_day + 6) - 28
				now_month1 = now_month + 1
			end 
		end
	--20:30
	elseif CheckDateNum == 2030 then 
		 now_hour1    = 20
		 now_miniute1 = 10
		if now_month == 1 or now_month == 3 or now_month == 5 or now_month == 7 or now_month == 8 or now_month == 10 or now_month == 12 then 
			if now_day <= 25 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 25 then 
				now_day1   = (now_day + 6) - 31
				now_month1 = now_month + 1
			end 
		end
		if now_month == 4 or now_month == 6 or now_month == 9 or now_month == 11 then 
			if now_day <= 24 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 24 then 
				now_day1   = (now_day + 6) - 30
				now_month1 = now_month + 1
			end 
		end
		if now_month == 2 then 
			if now_day <= 22 then 
				now_day1   = now_day + 6
				now_month1 = now_month
			elseif now_day > 22 then 
				now_day1   = (now_day + 6) - 28
				now_month1 = now_month + 1
			end 
		end
	end

	SetItemAttr(Item_new, ITEMATTR_VAL_STA, now_month1)	
	SetItemAttr(Item_new, ITEMATTR_VAL_STR, now_day1)
	SetItemAttr(Item_new, ITEMATTR_VAL_CON, now_hour1)
	SetItemAttr(Item_new, ITEMATTR_VAL_DEX, now_miniute1)
	
	SynChaKitbag(role, 13)
end

--Проверка для участия на аукционе
function YORN(role)

	local Item_CanGet = GetChaFreeBagGridNum(role)
	if Item_CanGet < 2 then
		SystemNotice(role ,"\210\240\229\225\243\229\242\241\255 2 \241\226\238\225\238\228\237\251\229 \255\247\229\233\234\232 \226 \232\237\226\229\237\242\224\240\229")
		return  0
	end

	local item_number1 = CheckBagItem(role, 3066)		
	if item_number1 >= 1 then
		SystemNotice(role, "\211 \194\224\241 \243\230\229 \229\241\242\252 \208\224\231\240\229\248\232\242\229\235\252\237\251\233 \214\229\240\234\238\226\237\251\233 \193\243\234\235\229\242!")
		return 0
	end
	
	local item_number2 = CheckBagItem(role, 3078)		
	if item_number2 >= 1 then
		SystemNotice( role ,"\211 \194\224\241 \243\230\229 \229\241\242\252 \207\240\232\227\235\224\241\232\242\229\235\252\237\251\233 \225\232\235\229\242\251!")
		return  0
	end
	
	local item_number3 = CheckBagItem(role, 3025)		
	if item_number3 < 1 then
		SystemNotice( role ,"\207\238\230\224\235\243\233\241\242\224, \239\238\228\242\226\229\240\228\232\242\229, \247\242\238 \243 \194\224\241 \241 \241\238\225\238\233 \229\241\242\252 \209\242\224\226\238\247\237\224\255 \234\224\240\242\238\247\234\224")
		return  0
	end
	
	return  1
end

--Получение Гостевого Сундука (Пригласительных билетов)
function ChangeItem(character, npc)
	local Item_CanGet = GetChaFreeBagGridNum(character)
	if Item_CanGet < 1 then
		SystemNotice(character, "Требуется 1 свободная ячейка в инвентаре, чтобы получить Гостевой Сундук")
		return 0
	end
	
	local am1 = CheckBagItem(character, 3066 )			
	if am1 < 1 then
		SystemNotice(character, "У Вас нет Разрешительного Церковного Буклета!")
		return 0
	end
	
	local Money_Need = 50000
	local Money_Have = GetChaAttr(character, ATTR_GD)
	if Money_Need > Money_Have then
		SystemNotice(character, "Недостаточно денег! Нужно "..Money_Need.." монет.")
		return 0
	else
		TakeMoney(character, nil, Money_Need)
	end

	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem(character, 7722, 10 , 4)
	local Item_el = GetChaItem(character, 2, r2)

	local item_old    = GetChaItem2(character, 2, 3066)
	local old_month   = GetItemAttr(item_old, ITEMATTR_VAL_STA)	
	local old_day     = GetItemAttr(item_old, ITEMATTR_VAL_STR)
	local old_hour    = GetItemAttr(item_old, ITEMATTR_VAL_CON)  
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)
	

	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )
	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )  
	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )
	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )

	SynChaKitbag(character, 13)
end

--Запуск фейерверков свидетелей
function LaunchFirework(role, npc)
	PlayEffect(npc, math.random(1, WD_FIREWORK_COUNT))
end

--Свадьба
function Wedding(role)


	--Проверки и инициализация

	
	--В отряде ли персонаж?
	if IsInTeam(role) == 0 then
		SystemNotice(role, "Чтобы начать церемонию бракосочетания, Вы, вместе со своей половинкой, должны быть в группе!")
		return 0
	end

	--Персонаж должен быть в отряде ТОЛЬКО со своей половинкой
	if GetPlayerCountInPartyWithRole(role) > 1 then
		SystemNotice(role, "Пожалуйста, останьтесь наедине в группе со своей половинкой!")
		return 0
	end

	
	local player = {}
	player[1] = role
	player[2] = GetTeamCha(role, 0)

	
	--Проверим расы персонажей
	if CheckChaType(player[1], player[2]) == 0 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." неподоходящая для Вас пара!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." неподоходящая для Вас пара!")
		
		return 0
	end
	
	--Проверим свадебные наряды у обеих сторон
	if CheckWeddingDress(player[1]) == 0 then
		SystemNotice(player[1], "Наденьте свадебный наряд!")
		SystemNotice(player[2], "Ваша половинка должна надеть свадбеный наряд!")
		
		return 0
	end
	
	if CheckWeddingDress(player[2]) == 0 then
		SystemNotice(player[1], "Ваша половинка должна надеть свадбеный наряд!")
		SystemNotice(player[2], "Наденьте свадебный наряд!")
		
		return 0
	end
	
	--Проверим Кольцо Св. Валентина у обеих сторон
	local RingFirstPlayer = CheckBagItem(player[1], 2521)
	if RingFirstPlayer == 0 then
		SystemNotice(player[1], "У Вас нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У Вашей половинки нет Кольца Св. Валентина!")
		
		return 0
	end
	
	local RingSecondPlayer = CheckBagItem(player[2], 2521)
	if RingSecondPlayer  == 0 then
		SystemNotice(player[1], "У Вашей половинки нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У Вас нет Кольца Св. Валентина!")
		
		return 0
	end
	
	--Проверим наличие Свадебного Сертификата у обеих сторон
	local CertificateFirstPlayer = CheckBagItem(player[1], 2913)
	if CertificateFirstPlayer == 1 then
		SystemNotice(player[1], "У Вас нет Свадебного сертификата!")
		SystemNotice(player[2], "У Вашей половинки нет Свадебного сертификата!")
		
		return 0
	end
	
	local CertificateSecondPlayer = CheckBagItem(player[2], 2913)
	if CertificateSecondPlayer == 1 then
		SystemNotice(player[1], "У Вашей половинки нет Свадебного сертификата!")
		SystemNotice(player[2], "У Вас нет Свадебного сертификата!")
		
		return 0
	end
	
	--Проверим свободную ячейку в инвентаре
	local FreeSlotsFirstPlayer = GetChaFreeBagGridNum(player[1])
	if FreeSlotsFirstPlayer < 1 then 
		SystemNotice(player[1], "У вас нет свободных ячеек в инвентаре! Освободите одну.")
		SystemNotice(player[2], "У Вашей половинки нет свободных ячеек в инвентаре!")
		
		return 0
	end
	
	local FreeSlotsSecondPlayer = GetChaFreeBagGridNum(player[2])
	if FreeSlotsFirstSecondPlayer < 1 then
		SystemNotice(player[1], "У Вашей половинки нет свободных ячеек в инвентаре!")
		SystemNotice(player[2], "У вас нет свободных ячеек в инвентаре! Освободите одну.")
		
		return 0
	end

	

	--Действие

	
	--1. Забираем Кольца Дня Св. Валентина
	TakeItem(player[1], 0, 2521, 1)
	TakeItem(player[2], 0, 2521, 1)
	
	--2. Забираем Свадебные сертификаты
	TakeItem(player[1], 0, 2913, 1)
	TakeItem(player[2], 0, 2913, 1)
	
	--3. Проиграем эффект сердечек на поженившихся персонажах
	PlayEffect(player[1], 370)
	PlayEffect(player[2], 370)
	
	--4. Учим скилл "Узы любви"
	AddChaSkill(player[1], SK_QLZX, 1, 1, 0)
	AddChaSkill(player[2], SK_QLZX, 1, 1, 0)
	
	--5. Выдаем и настраиваем кольца
	GiveItem(player[1], 0, 2520, 1, 4)
	GiveItem(player[2], 0, 2520, 1, 4)
	
	local FirstPlayerID  = GetRoleID(player[1]) 
	local SecondPlayerID = GetRoleID(player[2])
	
	local FirstPlayerRing  = GetChaItem2(player[1], 2, 2520)
	local SecondPlayerRing = GetChaItem2(player[2], 2, 2520)
	
	SetItemForgeParam(FirstPlayerRing, 1, SecondPlayerID) 
	SetItemForgeParam(SecondPlayerRing, 1, FirstPlayerID)
	
	--6. Выводим глобальное сообщение о свадьбе.
	local msg = "Поздравляем "..GetChaDefaultName(player[1]).. " и "..GetChaDefaultName(player[2]).." со сва?乍瞌咬唰? Желаем им самог??лучшего и т.п."
	Notice(msg)
	
	
	
	return 1
	
end
	
function UnfuseNpc(role)
	local Apparel = GetChaItem(role,2,3)
	local ApparelID = GetItemID(Apparel)
	local MainApparelID = ApparelID
	if Apparel == nil then
		HelpInfo(role,0,"\194\251 \228\238\235\230\237\251 \239\238\235\238\230\232\242\252 \226\229\249\252 \226 4 \241\235\238\242 \232\237\226\229\237\242\224\240\255. ")
		return
	end

	if MainApparelID > 15000 then
		MainApparelID = GetItemAttr(Apparel,ITEMATTR_VAL_FUSIONID)
	else
		HelpInfo(role,0,"\194 \226\224\248\229\233 \224\239\239\224\240\229\235\232 \238\242\241\243\242\241\242\226\243\229\242 \226\229\249\252! ")
		return
	end

	local ApparelFusedID = GetItemAttr(Apparel,ITEMATTR_VAL_FUSIONID)
	if ApparelFusedID == 0 then
		HelpInfo(role,0,"\194 \226\224\248\229\233 \224\239\239\224\240\229\235\232 \238\242\241\243\242\241\242\226\243\229\242 \226\229\249\252! ")
		return
	end

	local EquipGems = GetItemForgeParam(Apparel,1)
	local r1 = 0
	local r2 = 0
	r1,r2 = MakeItem(role,MainApparelID,1,18)
	GiveItem(role,0,ApparelID,1,1)
	local Remove = 0
	Remove = RemoveChaItem(role,MainApparelID,2,2,3,2,1)
	if Remove == 0 then
		HelpInfo(role,0,"\206\248\232\225\234\224 \243\228\224\235\229\237\232\255 \239\240\229\228\236\229\242\224! ")
		return
	end

	local NewEquip = GetChaItem(role,2,r2)
	local ParanTransfered = SetItemForgeParam(NewEquip,1,EquipGems)
	if ParanTransfered == 0 then
		HelpInfo(role,0,"\205\229 \243\228\224\235\238\241\252 \239\229\240\229\237\229\241\242\232 \245\224\240\224\234\242\229\240\232\241\242\232\234\232! ")
		return
	else
		HelpInfo(role,0,"\194\229\249\252 \243\241\239\229\248\237\238 \226\251\242\224\249\229\237\224 \232\231 \224\239\239\224\240\229\235\232! ")
		RefreshCha(role)
	end
end	
	
	
function HandleChat( role, message )
	-- Проверяем что персонаж GM
	if (message == "&goto" ) then
	if (GetGmLv(role) > 0) and (GetGmLv(role) < 99) then
		MoveCity ( role, "") --Выкидываем с сервера
	end
	--if (message == "/Помощь" ) then
	elseif (message == "/\207\238\236\238\249\252" ) then
		--HelpInfo(role, 0, "Подсказка:_/Time - время;_/Combine - комбинирование;_/About - о сервере;_/Hair - парикмахер;_/Repair - ремонт;_/GetStone - вытащить самоцвет;_/Unfuse - Вытащить вещь из аппарели;_/MobZones - информация о мини-боссах.")
		HelpInfo(role, 0, "\207\238\228\241\234\224\231\234\224:_/\194\240\229\236\255 - \226\240\229\236\255;_/\202\238\236\225\232\237\232\240\238\226\224\237\232\229 - \234\238\236\225\232\237\232\240\238\226\224\237\232\229;_/\207\224\240\232\234\236\224\245\229\240 - \239\224\240\232\234\236\224\245\229\240;_/\208\229\236\238\237\242 - \240\229\236\238\237\242;_/\194\251\242\224\249\232\242\252\209\224\236\238\246\226\229\242 - \226\251\242\224\249\232\242\252 \241\224\236\238\246\226\229\242;_/\194\251\242\224\249\232\242\252\200\231\192\239\239\224\240\229\235\232 - \194\251\242\224\249\232\242\252 \226\229\249\252 \232\231 \224\239\239\224\240\229\235\232;_/\193\238\241\241\251 - \232\237\244\238\240\236\224\246\232\255 \238 \236\232\237\232-\225\238\241\241\224\245.")
		return 0
	--Время сервера
	--elseif (message == "/Время" ) then
	elseif (message == "/\194\240\229\236\255" ) then
		local now_hour= os.date("%H")		
		local now_miniute= os.date("%M")	
		local now_scend=  os.date("%S")		
		now_hour= tonumber(now_hour)		-- Берем часы
		now_miniute= tonumber(now_miniute)	-- Берем минуты
		now_scend= tonumber(now_scend)		-- Берем секунды
		--Вывод в систему
		--PopupNotice(role, "Время сервера: "..now_hour..":"..now_miniute..":"..now_scend.."")
		PopupNotice(role, "\194\240\229\236\255 \241\229\240\226\229\240\224: "..now_hour..":"..now_miniute..":"..now_scend.."")
		return 0
	--Комбинирование самоцветов
	--elseif (message == "/Комбинирование" ) then
	elseif (message == "/\202\238\236\225\232\237\232\240\238\226\224\237\232\229" ) then
		OpenUnite(role, role)
		return 0
	--Парикмахер
	--elseif (message == "/Парикмахер" ) then
	elseif (message == "/\207\224\240\232\234\236\224\245\229\240" ) then
		OpenHair(role, role)
		return 0
	--Ремонт
	--elseif (message == "/Ремонт" ) then
	elseif (message == "/\208\229\236\238\237\242" ) then
		OpenRepair(role, role)
		return 0
	--Вытащить самоцвет
	--elseif (message == "/ВытащитьСамоцвет" ) then
	elseif (message == "/\194\251\242\224\249\232\242\252\209\224\236\238\246\226\229\242" ) then
		OpenGetStone(role, role)
		return 0
	--elseif (message == "/ВытащитьИзАппарели" ) then
	elseif (message == "/\194\251\242\224\249\232\242\252\200\231\192\239\239\224\240\229\235\232" ) then
		UnfuseNpc(role)
		return 0
	elseif (message == "/"..CBS.Conf.ChatCommand) then
		CBS.Chat.Check(role)
		return 0	
	elseif (message == "/Stats") then
		local NameCha = GetChaDefaultName(role)
		local Connect, ConnectID = LuaSQL(SQL_CONNECTION[1].SQL_CONNECT, SQL_CONNECTION[1].SQL_HOST, SQL_CONNECTION[1].SQL_UID, SQL_CONNECTION[1].SQL_PWD)
		local QuerPK = "SELECT pk, pvp, KillMobs, Reset FROM GameDB.dbo.character WHERE cha_name = '"..NameCha.."'"
		if Connect == 1 then	
			local Success, Query = LuaSQL("query", ConnectID, QuerPK)
			if Success == 1 then
				local Data = LuaSQL("fetch", ConnectID, Query)
				--Ваша статистика. PVP, PK, Убито монстров.
				HelpInfo(role, 0, "***********\194\224\248\224 \241\242\224\242\232\241\242\232\234\224***********_PK = "..Data["pk"].."_PVP = "..Data["pvp"].."_\211\225\232\242\238 \236\238\237\241\242\240\238\226 = "..Data["KillMobs"].."_\208\229\241\229\242 = "..Data["Reset"].."_*************************************")
			else
				--SystemNotice(role, "Ошибка №2. Сообщите администрации.")
				SystemNotice(role, "\206\248\232\225\234\224 №2. \209\238\238\225\249\232\242\229 \224\228\236\232\237\232\241\242\240\224\246\232\232.")
			end
		else
			SystemNotice(role, "No connect")
		end
		return 0
	elseif (string.find(message, "/reforge") == 1) then
		--Проверяем на VIP
		local Check_VIP = GetChaStateLv ( role , 238 ) 
		if Check_VIP == 0 then
			return 0
		end
	-- Разбиваем строку по пробелам --
		local msg = explode(" ", message)
		local slot_one = msg[1]
		local slot_two = msg[2]
		local Item_One = GetChaItem ( role , 2 , slot_one  )
		local NumOne = GetItemForgeParam ( Item_One , 1 )
		local Item_Two = GetChaItem ( role , 2 , slot_two  )
		local NumTwo = GetItemForgeParam ( Item_Two , 1 )
		local ItemType_One = GetItemType ( Item_One )
		local ItemType_Two = GetItemType ( Item_Two )
		local star=0
		if ItemType_One ~= 22 and ItemType_Two ~=27 then
			star = 1
		end
		if ItemType_Two~=27  then
			if ItemType_One ~= ItemType_Two then
				PopupNotice( role ,"Неверный тип предмета!" )
				return 0
			end
		elseif ItemType_Two==27 and star == 1 then
			PopupNotice( role ,"Неверный тип предмета!" )
			return 0
		end

		local i = 0
		NumOne = TansferNum ( NumOne )
		NumTwo = TansferNum ( NumTwo )
		NumOne = SetNum_Part1 ( NumOne , 3 )
		i = SetItemForgeParam ( Item_One , 1 , NumOne )
		NumTwo = SetNum_Part1 ( NumTwo , 3 )
		i = SetItemForgeParam ( Item_Two , 1 , NumTwo )
		local ItemOne_Stone = {}
		local ItemOne_StoneLv = {}
		local ItemOne_StoneID = {}
		ItemOne_Stone[0] = GetNum_Part2 ( NumOne )
		ItemOne_Stone[1] = GetNum_Part4 ( NumOne )
		ItemOne_Stone[2] = GetNum_Part6 ( NumOne )
		ItemOne_StoneLv[0] = GetNum_Part3 ( NumOne )
		ItemOne_StoneLv[1] = GetNum_Part5 ( NumOne )
		ItemOne_StoneLv[2] = GetNum_Part7 ( NumOne )
		ItemOne_StoneID[0] = StoneTpye_ID[ItemOne_Stone[0]]
		ItemOne_StoneID[1] = StoneTpye_ID[ItemOne_Stone[1]]
		ItemOne_StoneID[2] = StoneTpye_ID[ItemOne_Stone[2]]

		NumTwo = SetNum_Part2 ( NumTwo , ItemOne_Stone[0] )
		NumTwo = SetNum_Part3 ( NumTwo , ItemOne_StoneLv[0] )
		NumTwo = SetNum_Part4 ( NumTwo , ItemOne_Stone[1] )
		NumTwo = SetNum_Part5 ( NumTwo , ItemOne_StoneLv[1] )
		NumTwo = SetNum_Part6 ( NumTwo , ItemOne_Stone[2] )
		NumTwo = SetNum_Part7 ( NumTwo , ItemOne_StoneLv[2] )
		SetItemForgeParam ( Item_Two , 1 , NumTwo )

		NumOne = SetNum_Part2 ( NumOne , 0 )
		NumOne = SetNum_Part3 ( NumOne , 0 )
		NumOne = SetNum_Part4 ( NumOne , 0 )
		NumOne = SetNum_Part5 ( NumOne , 0 )
		NumOne = SetNum_Part6 ( NumOne , 0 )
		NumOne = SetNum_Part7 ( NumOne , 0 )
		SetItemForgeParam ( Item_One , 1 , NumOne )

		PopupNotice( role ,"Перенос самоцветов успешно завершен!" )
		return 0
	end
	return 1
end

--------------------------
-- Начало автокормления --
--------------------------
function UseAutoFruit(role)
    if (IsPlayer(role) == 1) then
        local ElfItem, FruitItem = GetChaItem(role, 2, 1), GetChaItem(role, 2, 3)
        local ElfType, FruitID = GetItemType(ElfItem), GetItemID(FruitItem)
        if (ElfType == 59) then
            if (AutoFruit[FruitID] ~= nil) then
                local ChaIsBoat = GetCtrlBoat(role)
                if (ChaIsBoat == nil) then
                    local Elf_Str = GetItemAttr(ElfItem, ITEMATTR_VAL_STR)
                    local Elf_Con = GetItemAttr(ElfItem, ITEMATTR_VAL_CON)
                    local Elf_Agi = GetItemAttr(ElfItem, ITEMATTR_VAL_AGI)
                    local Elf_Dex = GetItemAttr(ElfItem, ITEMATTR_VAL_DEX)
                    local Elf_Sta = GetItemAttr(ElfItem, ITEMATTR_VAL_STA)
                    local Elf_Lv = Elf_Str + Elf_Con + Elf_Agi + Elf_Dex + Elf_Sta
                    if (Elf_Lv >= AutoFruit[FruitID].min_lv and (Elf_Lv + AutoFruit[FruitID].count_up) <= AutoFruit[FruitID].max_lv) then
                        local Check_Exp = CheckElf_EXP(role, ElfItem)
                        if (Check_Exp == 1) then
                            if (DelBagItem2(role, FruitItem, 1)) then
                                AutoFruit[FruitID].func(role, FruitID, ElfItem)
                                RegainFairyStamina(role, ElfItem, ElfType)
                            end
                        end
                    end
                end
            end
        end
    end
end

function RegainFairyStamina(role, ElfItem, ElfType)
	if (IsPlayer(role) == 1) then
		if (ElfType == 59) then
			local Elf_MaxURE = GetItemAttr(ElfItem, ITEMATTR_MAXURE)
			local Elf_URE = GetItemAttr(ElfItem, ITEMATTR_URE)
			if (Elf_URE ~= Elf_MaxURE) then
				SetItemAttr( ElfItem, ITEMATTR_URE, Elf_MaxURE )
				ResetItemFinalAttr(ElfItem)
				return 1
			end
		end
	end
	return 0
end
-------------------------
-- Конец автокормления --
-------------------------

-------------------
-- Кикаем игрока --
-------------------
function KickCha(role)
	local pkt = GetPacket()
	WriteCmd(pkt,1505)
	SendPacket(role,pkt)
end
-----------------------
-- Ежедневные квесты --
-----------------------
-- Вернет начало следующего дня в формате Unix.
function GetNextDayInUnix(Time)

	local timeFinishQuest = os.date("*t", Time)
	
	local hour = tonumber(timeFinishQuest.hour) * 3600
	local minute = tonumber(timeFinishQuest.min) * 60
	local second = tonumber(timeFinishQuest.sec)
	
	local MinusToZero = (hour + minute + second)
	local nextDayUnix = (Time + 86400) - MinusToZero
	
	return nextDayUnix
	
end

-- Создаст новый файл для записи если его нету.
function FilePreparation(role)

  local playerID = GetRoleID(role)
  
  if (file_exists(GetResPath(EveryDayQuest.patch)..playerID..".txt") == false) then
  
     local WFile = io.open(GetResPath(EveryDayQuest.patch)..playerID..".txt", "w")
	 WFile:close()
  
  end
   
end

-- Отсортирует файл
function SortQuestFile(role)

  local playerID = GetRoleID(role)
  
  if (file_exists(GetResPath(EveryDayQuest.patch)..playerID..".txt") == true) then
  
	  local RFile = io.open(GetResPath(EveryDayQuest.patch)..playerID..".txt", "r")
	  
	  local newQuestArray  = {}
	  
	  for RLine in RFile:lines() do 
		
			local RStr = explode(",", RLine)
			local QuestId = tonumber(RStr[1])
			local QuestTime = tonumber(RStr[2])
			
			table.insert(newQuestArray, {QuestId, QuestTime})
		
	  end

	  RFile:close()
	  
	  table.sort(newQuestArray, function(a,b) return b[1] > a[1] end)
	  
	  local WFile = io.open(GetResPath(EveryDayQuest.patch)..playerID..".txt", "w")
	  
	  for i = 1, table.getn(newQuestArray), 1 do
	  
		WFile:write(newQuestArray[i][1]..","..newQuestArray[i][2], "\n")
	  
	  end
	  
	  WFile:close()
  
  end
   
end

-- Вернет наличие квеста в файле
function QuestCompleteTime(role, questID)

  local questOk = FALSE
 
  local playerID = GetRoleID(role)
	 
  if (file_exists(GetResPath(EveryDayQuest.patch)..playerID..".txt") == true) then
  
	  local RFile = io.open(GetResPath(EveryDayQuest.patch)..playerID..".txt", "r")
	  
	  for RLine in RFile:lines() do 
		
			local RStr = explode(",", RLine)
			
			if (tonumber(RStr[1]) == questID) then
				
				questOk = tonumber(RStr[2])
				break
			
			end
		
	  end

	  RFile:close()
  
  end
  
  return questOk

end

-- Обновит старый квест в файле.
function UpdateOldQuest(role, quest_id)

  local playerID = GetRoleID(role)
  	 
  if (file_exists(GetResPath(EveryDayQuest.patch)..playerID..".txt") == true) then
  
	  local RFile = io.open(GetResPath(EveryDayQuest.patch)..playerID..".txt", "r")
	  
	  local questCount = 1
	  local newQuestArray  = {}
	  
	  for RLine in RFile:lines() do 
		
			local RStr = explode(",", RLine)
			
			local QuestId = tonumber(RStr[1])
			local QuestTime = tonumber(RStr[2])
			
			if (QuestId == quest_id) then
			
				QuestTime = os.time()
			
			end
			
			newQuestArray[questCount] = {Id = QuestId, Time = QuestTime}
			
			questCount = questCount + 1
		
	  end

	  RFile:close()
	  
	  os.remove(GetResPath(EveryDayQuest.patch)..playerID..".txt")
	  
	  local WFile = io.open(GetResPath(EveryDayQuest.patch)..playerID..".txt", "w")
	  
	  for i = 1, size(newQuestArray), 1 do
	  
		WFile:write(newQuestArray[i].Id..","..newQuestArray[i].Time, "\n")
	  
	  end
	  
	  WFile:close()
  
  end

end

-- Добавит новый квест в файл.
function AddNewQuest(role, questID)

	local playerID = GetRoleID(role)
	local WFile = io.open(GetResPath(EveryDayQuest.patch)..playerID..".txt", "a+")
	WFile:write(questID..","..os.time(), "\n")
	WFile:close()

end

-- Сохранит данные о квесте.
function SaveQuest(role, questID)

  FilePreparation(role)
	
  if (QuestCompleteTime(role, questID) ~= FALSE) then
  
		UpdateOldQuest(role, questID)
		SortQuestFile(role)
  
  else
  
		AddNewQuest(role, questID)
		SortQuestFile(role)
	
  end
  
end

-- Вернет можно ли повторно пройти квест
function IsStartQuestAgain(questTime)
	
	if (questTime == FALSE) then return 1 end
	local nextDayStartUNIX = GetNextDayInUnix(questTime)
	local nowTimeUNIX = os.time()
	
	if (nowTimeUNIX >= nextDayStartUNIX) then
	
		return 1
	
	end
	
	return 0

end

-- Можно ли взять квест
function IsGiveQuest(role, questID)

	local questTime = QuestCompleteTime(role, questID)
	local result = IsStartQuestAgain(questTime)
	
	return result

end

-----------------------------
-- Конец ежедневых квестов --
-----------------------------


-----------------------
-- Проверка на Ресет --
-----------------------
function Check_Reset(role, check)
	local reset = GetChaAttr( role, ATTR_CSAILEXP)
	if reset >= check then
		return 1
	elseif reset < check then
		return 0
	end
end


-------------
-- PK очки --
-------------
function PK_points(role)
	local NameCha = GetChaDefaultName(role)
	local Connect, ConnectID = LuaSQL(SQL_CONNECTION[1].SQL_CONNECT, SQL_CONNECTION[1].SQL_HOST, SQL_CONNECTION[1].SQL_UID, SQL_CONNECTION[1].SQL_PWD)
	local QuerPK = "SELECT pk FROM GameDB.dbo.character WHERE cha_name = '"..NameCha.."'"
	if Connect == 1 then	
		local Success, Query = LuaSQL("query", ConnectID, QuerPK)
		if Success == 1 then
				local Data = LuaSQL("fetch", ConnectID, Query)
				HelpInfo(role, 0, "***********\194\224\248\224 \241\242\224\242\232\241\242\232\234\224***********_PK = "..Data["pk"].."._ _PK \238\247\234\232 \228\224\254\242\241\255 \231\224 \243\225\232\233\241\242\226\238 \239\229\240\241\238\237\224\230\229\233 _\226 \235\254\225\238\233 \231\238\237\229, \234\240\238\236\229 \192\240\229\237.")
		else
			--SystemNotice(role, "Ошибка №2. Сообщите администрации.")
			PopupNotice(role, "\206\248\232\225\234\224 №2. \209\238\238\225\249\232\242\229 \224\228\236\232\237\232\241\242\240\224\246\232\232.")
		end
	else
		PopupNotice(role, "No connect")
	end
end

--------------
-- PVP очки --
--------------
function PVP_points(role)
	local NameCha = GetChaDefaultName(role)
	local Connect, ConnectID = LuaSQL(SQL_CONNECTION[1].SQL_CONNECT, SQL_CONNECTION[1].SQL_HOST, SQL_CONNECTION[1].SQL_UID, SQL_CONNECTION[1].SQL_PWD)
	local QuerPVP = "SELECT pvp FROM GameDB.dbo.character WHERE cha_name = '"..NameCha.."'"
	if Connect == 1 then	
		local Success, Query = LuaSQL("query", ConnectID, QuerPVP)
		if Success == 1 then
				local Data = LuaSQL("fetch", ConnectID, Query)
				HelpInfo(role, 0, "***********\194\224\248\224 \241\242\224\242\232\241\242\232\234\224***********_PVP = "..Data["pvp"].."._ _PVP \238\247\234\232 \228\224\254\242\241\255 \231\224 \243\225\232\233\241\242\226\238 \239\229\240\241\238\237\224\230\229\233_\237\224 \192\240\229\237\229.")
			else
			--SystemNotice(role, "Ошибка №2. Сообщите администрации.")
			PopupNotice(role, "\206\248\232\225\234\224 №2. \209\238\238\225\249\232\242\229 \224\228\236\232\237\232\241\242\240\224\246\232\232.")
		end
	else
		PopupNotice(role, "No connect")
	end
end

-------------------------------------------------------
-- Функция "взять" определенный столбец от персонажа --
-------------------------------------------------------
--Персонаж, столбец, количество
function take_sql(role, column, price)
	--Берем ник персонажа
	local NameCha = GetChaDefaultName(role)
	--Проверка соединения с базой
	local Connect, ConnectID = LuaSQL(SQL_CONNECTION[1].SQL_CONNECT, SQL_CONNECTION[1].SQL_HOST, SQL_CONNECTION[1].SQL_UID, SQL_CONNECTION[1].SQL_PWD)
	if Connect == 1 then
		--Берем столбец, вписанный в триггере и ищем его у персонажа под ником, который обратился.
		local QuerCol = "SELECT "..column.." FROM GameDB.dbo.character WHERE cha_name = '"..NameCha.."'"
		--Делаем запрос столбца в БД
		local Success, Query = LuaSQL("query", ConnectID, QuerCol )
			--Если запрос прошел, то..
			if Success == 1 then
				--Переменная, которую мы взяли
				local Data_Col = LuaSQL("fetch", ConnectID, Query)
				--Отнимаем от переменной заданное количество
				local Data_Col_Result = Data_Col - price
				PopupNotice("You have take - "..price.." points["..column.."]. Now you have - "..Data_Col_Result.." points")
			else
				PopupNotice( role, "Ошибка: take_sql №2. Сообщите администрации. ")
			end
	else
		PopupNotice( role, "Ошибка: take_sql №1. Сообщите администрации. ")
	end
end


------------------------------------------------------------------------------------------
--										Пример											--
------------------------------------------------------------------------------------------
-- 									Нужно зафоржить 1 слот								--
-- ForgeItemInSlot(role, item, gem1_id, gem1_lv)										--
------------------------------------------------------------------------------------------
-- 									Нужно зафоржить 2 слота								--
-- ForgeItemInSlot(role, item, gem1_id, gem1_lv, gem2_id, gem2_lv)						--
------------------------------------------------------------------------------------------
-- 									Нужно зафоржить 3 слота								--
-- ForgeItemInSlot(role, item, gem1_id, gem1_lv, gem2_id, gem2_lv, gem3_id, gem3_lv)	--
------------------------------------------------------------------------------------------
function ForgeItemInSlot(...)
	local argCount = arg.n
	if (argCount == 4 or argCount == 6 or argCount == 8) then
		local forgeItem = arg[2]
		if (forgeItem ~= nil) then
			local forgeItemName = GetItemName(GetItemID(forgeItem))
			local forgeItemParam = GetItemForgeParam(forgeItem,1)
			local Item_Stone = {}
			local Item_StoneLv = {}
			local SocketCount = 0
			local FinalForgeLv = 0
			Item_Stone[0] = 0                          
			Item_StoneLv[0] = 0      
			if (argCount >= 4) then
				forgeItemParam = TansferNum(forgeItemParam)
				Item_Stone[0] = GetNum_Part2(forgeItemParam)
				Item_StoneLv[0] = GetNum_Part3(forgeItemParam)
				Item_Stone[0] = 0
				Item_StoneLv[0] = 0
				if(StoneTpye_ID_Invert[arg[3]] ~= nil) then
					Item_Stone[0] = StoneTpye_ID_Invert[arg[3]] 
					Item_StoneLv[0] = arg[4]           
				end
				forgeItemParam = SetNum_Part2(forgeItemParam, Item_Stone[0])           
				forgeItemParam = SetNum_Part3(forgeItemParam, Item_StoneLv[0])       
				SetItemForgeParam(forgeItem, 1, forgeItemParam)
				if (Item_Stone[0] ~= 0 and Item_StoneLv[0] ~= 0) then
					SocketCount = SocketCount + 1
					FinalForgeLv = FinalForgeLv + arg[4]
				end
			end
			forgeItemParam = TansferNum(forgeItemParam)
			Item_Stone[1] = GetNum_Part2(forgeItemParam)
			Item_StoneLv[1] = GetNum_Part3(forgeItemParam)
			Item_Stone[1] = 0                          
			Item_StoneLv[1] = 0      
			if (argCount >= 6) then
				if(StoneTpye_ID_Invert[arg[5]] ~= nil) then
					Item_Stone[1] = StoneTpye_ID_Invert[arg[5]] 
					Item_StoneLv[1] = arg[6]            
				end
				if (Item_Stone[1] ~= 0 and Item_StoneLv[1] ~= 0) then
					SocketCount = SocketCount + 1
					FinalForgeLv = FinalForgeLv + arg[6]
				end
			end
			forgeItemParam = SetNum_Part4(forgeItemParam, Item_Stone[1])           
			forgeItemParam = SetNum_Part5(forgeItemParam, Item_StoneLv[1])   
			SetItemForgeParam(forgeItem, 1, forgeItemParam)
			forgeItemParam = TansferNum(forgeItemParam)
			Item_Stone[2] = GetNum_Part2(forgeItemParam)
			Item_StoneLv[2] = GetNum_Part3(forgeItemParam)
			Item_Stone[2] = 0                   
			Item_StoneLv[2] = 0  
			if (argCount >= 8) then
				if(StoneTpye_ID_Invert[arg[7]] ~= nil) then
					Item_Stone[2] = StoneTpye_ID_Invert[arg[7]] 
					Item_StoneLv[2] = arg[8]                
				end        
				if (Item_Stone[2] ~= 0 and Item_StoneLv[2] ~= 0) then
					SocketCount = SocketCount + 1
					FinalForgeLv = FinalForgeLv + arg[8]
				end
			end
			forgeItemParam = SetNum_Part6(forgeItemParam, Item_Stone[2])           
			forgeItemParam = SetNum_Part7(forgeItemParam, Item_StoneLv[2])       
			SetItemForgeParam(forgeItem, 1, forgeItemParam)
			if (SocketCount > 0) then
				local Socket = GetItemForgeParam(forgeItem, 1)
				Socket = TansferNum(Socket)
				Socket = SetNum_Part1(Socket, SocketCount)
				SetItemForgeParam(forgeItem, 1, Socket)
			end
			check_item_final_data(forgeItem)
			SynChaKitbag(arg[1],13)
			if (FinalForgeLv > 0) then
				PopupNotice(arg[1],"Предмет "..forgeItemName.." зафоржен до + "..FinalForgeLv.."!")
			end
		else
			PopupNotice( arg[1], "В выбранной ячейке нет предмета...")
		end
	else
		PopupNotice( arg[1], "Неверное кол-во параметров вызова!")
	end
end

------------------------------------------
-- Проверка на форж для разговора с НПС --
------------------------------------------
function CheckForge(role, check)
	----------------------
	-- Проверка на форж --
	----------------------
	--Проверяем тело на форж
	local checkBody = EquipForgeCheck(role, enumEQUIP_BODY, '>', check)
	--Проверяем перчатки на форж
	local checkGloves = EquipForgeCheck(role, enumEQUIP_GLOVE, '>', check)
	--Проверяем ботинки на форж
	local checkBoots = EquipForgeCheck(role, enumEQUIP_SHOES, '>', check)
	--Проверяем оружие слева в инвентаре на форж
	local checkWeap = EquipForgeCheck(role, enumEQUIP_RHAND, '>', check)
	--Проверяем оружие справа в инвентаре на форж
	local checkWeap2 = EquipForgeCheck(role, enumEQUIP_LHAND, '>', 3)
	--Проверяем ожерелье на форж
	local checkNeck = EquipForgeCheck(role, enumEQUIP_NECK, '>', check)
	--Проверяем кольцо слева в инвентаре на форж
	local checkRingL = EquipForgeCheck(role, enumEQUIP_HAND1, '>', check)
	--Проверяем кольцо справа в инвентаре на форж
	local checkRingR = EquipForgeCheck(role, enumEQUIP_HAND2, '>', check)
	
	local count = check + 1
	if (checkBody == true and checkGloves == true and checkBoots == true and (checkWeap == true or checkWeap2 == true) and checkNeck == true and checkRingL == true and checkRingR == true) then
		return 1
	else
		Dbag = DelBagItem(Cha, 8129, 1)
		if Dbag == 1 then
			return 1
		else
		--HelpInfo( role, 0, "у тебя должен быть форж:_1. Тело +4 или выше;_2. Перчатки +4 или выше;_3. Ботинки +4 или выше;_4. Оружие +4 или выше;_5. Ожерелье +4 или выше;_6. Кольца +4 или выше. ")
		HelpInfo( role, 0,  "\211 \242\229\225\255 \228\238\235\230\229\237 \225\251\242\252 \244\238\240\230:_1. \210\229\235\238 "..count.." \232\235\232 \226\251\248\229;_2. \207\229\240\247\224\242\234\232 "..count.." \232\235\232 \226\251\248\229;_3. \193\238\242\232\237\234\232 "..count.." \232\235\232 \226\251\248\229;_4. \206\240\243\230\232\229 "..count.." \232\235\232 \226\251\248\229;_5. \206\230\229\240\229\235\252\229 "..count.." \232\235\232 \226\251\248\229;_6. \202\238\235\252\246\224 "..count.." \232\235\232 \226\251\248\229.")
		return 0
		end
	end
end

function CheckGM(role, GMLVL)
	local GmLvl = GetGmLv(role)
	if GmLvl == GMLVL then
		return 1
	else
		return 0
	end
end