print( "Loading Variable.lua" )
---------------------------------------
-- Переменная для ежедневных квестов --
---------------------------------------
EveryDayQuest = {}
EveryDayQuest.patch = "script/Quests/"

-----------
-- Если систему миников отключаем, то ставим тут 0 и миники появляются на карте по координатам
-----------
Mini_Boss_System_OFF = 1
----------

OnlineEvent = false --Хз, что это

For_start = 0 --Переменная для первых двух недель со старта сервера.

BBBB = {}								-- Используется в функции Dead_Punish (exp_and_level.lua)
MFRADIX=100 							-- Используется в function.lua. Меняет прирост многих характеристик
CRTRADIX=100 							-- Используется в function.lua. Меняет прирост многих характеристик
TestGuildLv = 0							-- Неизвестно
ReadyToFight = 0						-- Используется в Снежной Войне, но код был закомментирован
ATTR_RADIX = 1000						-- Используется в function.lua. Меняет прирост многих характеристик
AREA_SAFE				= 2				-- Используется в функции CheckExpShare
EXP_RAID				= 1				-- Рейты на опыт
MF_RAID					= 1				-- Рейты на выпадение предметов
GOLD_RAID 				= 1				-- Золото ( Изначально = 1 )
Resource_RAID_ADJUST	= 1				-- Рейты на ресурсы
TeamExp_RAID			= 1			-- Рейты в отряде
ELEEXP_GETRAD 			= 324			-- Рейты на рост феи

LV_LIMIT				= 50			-- Используется в функции Shengji_Shuxingchengzhang (AttrCalculate.lua)
A_B_C					= 8				-- Неизвестно
Money_Moscow			= 1000000		-- Переменная количества золота выдаваемое в Хаосе Москвы
How_Many_Active			= 0				-- Сколько человек на карте (К примеру в Хаосе Москвы)

STATE_zhongshen	=	229	
Every_5_minute = 0      
Every_5_minute1 = 0
Every_5_minute2 = 0
Every_5_minute3 = 0
NOWTIME_TE=0
NOWTIME_YI=0
NOWTIME_HEI=0
JINISI_TIME=2100

COOL_DOWNS = {}

--------------------------------------------
--					Шансы				  --
--------------------------------------------
-- Массив шансов
ForgeChanse = {}
	
-- Шанс комбинирования самоцветов
ForgeChanse["Combine Gem"] = {}
ForgeChanse["Combine Gem"][1] = 1 	-- 100%
ForgeChanse["Combine Gem"][2] = 1 	-- 100%
ForgeChanse["Combine Gem"][3] = 1 	-- 100%
ForgeChanse["Combine Gem"][4] = 0.8 -- 80%
ForgeChanse["Combine Gem"][5] = 0.7 -- 70%
ForgeChanse["Combine Gem"][6] = 0.6 -- 60%
ForgeChanse["Combine Gem"][7] = 0.5 -- 50%
ForgeChanse["Combine Gem"][8] = 0.4 -- 40%
ForgeChanse["Combine Gem"][9] = 0.3 -- 30%
-- Шанс комбинирования рефов
ForgeChanse["Combine Ref"] = {}
ForgeChanse["Combine Ref"][1] = 1 	-- 100%
ForgeChanse["Combine Ref"][2] = 1 	-- 100%
ForgeChanse["Combine Ref"][3] = 1 	-- 100%
ForgeChanse["Combine Ref"][4] = 0.8 -- 80%
ForgeChanse["Combine Ref"][5] = 0.7 -- 70%
ForgeChanse["Combine Ref"][6] = 0.6 -- 60%
ForgeChanse["Combine Ref"][7] = 0.5 -- 50%
ForgeChanse["Combine Ref"][8] = 0.4 -- 40%
ForgeChanse["Combine Ref"][9] = 0.3 -- 30%
-- Шанс вставки самоцветов
ForgeChanse["Insert Gem"] = {}
ForgeChanse["Insert Gem"][1] = 1 	-- 100%
ForgeChanse["Insert Gem"][2] = 1 	-- 100%
ForgeChanse["Insert Gem"][3] = 1 	-- 100%
ForgeChanse["Insert Gem"][4] = 0.8 	-- 80%
ForgeChanse["Insert Gem"][5] = 0.7 	-- 70%
ForgeChanse["Insert Gem"][6] = 0.6 	-- 60%
ForgeChanse["Insert Gem"][7] = 0.5 	-- 50%
ForgeChanse["Insert Gem"][8] = 0.4 	-- 40%
ForgeChanse["Insert Gem"][9] = 0.3 	-- 30%
--------------------------------------------------
--				Конец шансов					--
--------------------------------------------------

---------------------------------------------------------------------
-- Массив с предметами обменников (ЧР, Торговец древесиной и т.д.) --
---------------------------------------------------------------------
--                         Структура:                              --
-- 1 - ID предмета, который необходимо продавцу отдать             --
-- 2 - Кол-во предметов, которые необходимо отдать продавцу        --
-- 3 - ID предмета, который вы получите                            --
-- 4 - Кол-во предметов, которые вы получаете                      --
---------------------------------------------------------------------
ChangeItemList = {}
ChangeItemList[	1	]=	{	8041	,	1	,	3603	,	1	}
ChangeItemList[	2	]=	{	8042	,	1	,	3604	,	1	}
ChangeItemList[	3	]=	{	4837	,	1	,	5012	,	1	}
ChangeItemList[	4	]=	{	1000	,	50	,	2679	,	1	}
ChangeItemList[	5	]=	{	0855	,	50	,	1055	,	1	}
	

----------------------------------
-- Автоматическое кормление фей --
----------------------------------
AutoFruit = {}
--Фрукты с 0 по 50 уровень
AutoFruit[222] = {func = Lvup_Str, min_lv = 0, max_lv = 50, count_up = 1}
AutoFruit[223] = {func = Lvup_Agi, min_lv = 0, max_lv = 50, count_up = 1}
AutoFruit[224] = {func = Lvup_Dex, min_lv = 0, max_lv = 50, count_up = 1}
AutoFruit[225] = {func = Lvup_Con, min_lv = 0, max_lv = 50, count_up = 1}
AutoFruit[226] = {func = Lvup_Sta, min_lv = 0, max_lv = 50, count_up = 1}
--Фрукты с 50 по 100 уровень
AutoFruit[276] = {func = Lvup_Str_1, min_lv = 50, max_lv = 100, count_up = 1}
AutoFruit[277] = {func = Lvup_Agi_1, min_lv = 50, max_lv = 100, count_up = 1}
AutoFruit[278] = {func = Lvup_Dex_1, min_lv = 50, max_lv = 100, count_up = 1}
AutoFruit[279] = {func = Lvup_Con_1, min_lv = 50, max_lv = 100, count_up = 1}
AutoFruit[280] = {func = Lvup_Sta_1, min_lv = 50, max_lv = 100, count_up = 1}

---------------------------------------------------------------
--                Даритель подарков(Начало)                  --
---------------------------------------------------------------
PlayUseBox1				= {}
PlayUseBox2				= {}
PlayUseBox3				= {}
---------------------------------------------------------------
--                 Даритель подарков(Конец)                  --
---------------------------------------------------------------

-------------------------------------
-- Используется для квеста "Бытие" --
-------------------------------------
JNSTime_Flag_Num=13
JNSTime_Flag={}
JNSTime_Flag[1]				=0
JNSTime_Flag[2]				=31
JNSTime_Flag[3]				=59
JNSTime_Flag[4]				=90
JNSTime_Flag[5]				=120
JNSTime_Flag[6]				=151
JNSTime_Flag[7]				=181
JNSTime_Flag[8]				=212
JNSTime_Flag[9]				=243
JNSTime_Flag[10]			=273
JNSTime_Flag[11]			=304
JNSTime_Flag[12]			=334
JNSTime_Flag[13]			=365

-----------------------------------------
-- Массив с опытом для игровых уровней --
-----------------------------------------
DEXP_Num = 400									
DEXP	={}								
DEXP[1]	=	0
DEXP[2]	=	15
DEXP[3]	=	15
DEXP[4]	=	18
DEXP[5]	=	18
DEXP[6]	=	18
DEXP[7]	=	18
DEXP[8]	=	21
DEXP[9]	=	21
DEXP[10]	=	21
DEXP[11]	=	24
DEXP[12]	=	24
DEXP[13]	=	27
DEXP[14]	=	27
DEXP[15]	=	27
DEXP[16]	=	30
DEXP[17]	=	30
DEXP[18]	=	33
DEXP[19]	=	33
DEXP[20]	=	36
DEXP[21]	=	39
DEXP[22]	=	39
DEXP[23]	=	42
DEXP[24]	=	45
DEXP[25]	=	45
DEXP[26]	=	48
DEXP[27]	=	51
DEXP[28]	=	54
DEXP[29]	=	57
DEXP[30]	=	60
DEXP[31]	=	63
DEXP[32]	=	66
DEXP[33]	=	69
DEXP[34]	=	72
DEXP[35]	=	75
DEXP[36]	=	78
DEXP[37]	=	84
DEXP[38]	=	87
DEXP[39]	=	90
DEXP[40]	=	96
DEXP[41]	=	102
DEXP[42]	=	105
DEXP[43]	=	111
DEXP[44]	=	117
DEXP[45]	=	123
DEXP[46]	=	129
DEXP[47]	=	135
DEXP[48]	=	141
DEXP[49]	=	150
DEXP[50]	=	156
DEXP[51]	=	165
DEXP[52]	=	171
DEXP[53]	=	180
DEXP[54]	=	189
DEXP[55]	=	198
DEXP[56]	=	210
DEXP[57]	=	219
DEXP[58]	=	231
DEXP[59]	=	243
DEXP[60]	=	255
DEXP[61]	=	267
DEXP[62]	=	279
DEXP[63]	=	294
DEXP[64]	=	309
DEXP[65]	=	324
DEXP[66]	=	342
DEXP[67]	=	357
DEXP[68]	=	375
DEXP[69]	=	393
DEXP[70]	=	414
DEXP[71]	=	435
DEXP[72]	=	456
DEXP[73]	=	480
DEXP[74]	=	504
DEXP[75]	=	528
DEXP[76]	=	555
DEXP[77]	=	582
DEXP[78]	=	612
DEXP[79]	=	642
DEXP[80]	=	675
DEXP[81]	=	708
DEXP[82]	=	744
DEXP[83]	=	780
DEXP[84]	=	819
DEXP[85]	=	861
DEXP[86]	=	903
DEXP[87]	=	948
DEXP[88]	=	996
DEXP[89]	=	1047
DEXP[90]	=	1098
DEXP[91]	=	1152
DEXP[92]	=	1212
DEXP[93]	=	1272
DEXP[94]	=	1335
DEXP[95]	=	1401
DEXP[96]	=	1473
DEXP[97]	=	1545
DEXP[98]	=	1623
DEXP[99]	=	1704
DEXP[100]	=	1788
DEXP[101]	=	1878
DEXP[102]	=	1974
DEXP[103]	=	2070
DEXP[104]	=	2175
DEXP[105]	=	2283
DEXP[106]	=	2397
DEXP[107]	=	2517
DEXP[108]	=	2643
DEXP[109]	=	2775
DEXP[110]	=	2913
DEXP[111]	=	3060
DEXP[112]	=	3213
DEXP[113]	=	3375
DEXP[114]	=	3543
DEXP[115]	=	3720
DEXP[116]	=	3906
DEXP[117]	=	4101
DEXP[118]	=	4305
DEXP[119]	=	4521
DEXP[120]	=	4746
DEXP[121]	=	4983
DEXP[122]	=	5235
DEXP[123]	=	5496
DEXP[124]	=	5769
DEXP[125]	=	6060
DEXP[126]	=	6363
DEXP[127]	=	6681
DEXP[128]	=	7014
DEXP[129]	=	7365
DEXP[130]	=	7734
DEXP[131]	=	8118
DEXP[132]	=	8526
DEXP[133]	=	8952
DEXP[134]	=	9399
DEXP[135]	=	9870
DEXP[136]	=	10362
DEXP[137]	=	10881
DEXP[138]	=	11424
DEXP[139]	=	11997
DEXP[140]	=	12594
DEXP[141]	=	13224
DEXP[142]	=	13887
DEXP[143]	=	14580
DEXP[144]	=	15309
DEXP[145]	=	16074
DEXP[146]	=	16878
DEXP[147]	=	17724
DEXP[148]	=	18609
DEXP[149]	=	19539
DEXP[150]	=	20517
DEXP[151]	=	21543
DEXP[152]	=	22620
DEXP[153]	=	23751
DEXP[154]	=	24939
DEXP[155]	=	26184
DEXP[156]	=	27495
DEXP[157]	=	28869
DEXP[158]	=	30312
DEXP[159]	=	31827
DEXP[160]	=	33420
DEXP[161]	=	35091
DEXP[162]	=	36846
DEXP[163]	=	38688
DEXP[164]	=	40623
DEXP[165]	=	42654
DEXP[166]	=	44784
DEXP[167]	=	47025
DEXP[168]	=	49377
DEXP[169]	=	51846
DEXP[170]	=	54438
DEXP[171]	=	57159
DEXP[172]	=	60018
DEXP[173]	=	63018
DEXP[174]	=	66168
DEXP[175]	=	69477
DEXP[176]	=	72951
DEXP[177]	=	76599
DEXP[178]	=	80427
DEXP[179]	=	84450
DEXP[180]	=	88671
DEXP[181]	=	93105
DEXP[182]	=	97761
DEXP[183]	=	102648
DEXP[184]	=	107781
DEXP[185]	=	113169
DEXP[186]	=	118830
DEXP[187]	=	124770
DEXP[188]	=	131010
DEXP[189]	=	137559
DEXP[190]	=	144438
DEXP[191]	=	151659
DEXP[192]	=	159243
DEXP[193]	=	167205
DEXP[194]	=	175563
DEXP[195]	=	184344
DEXP[196]	=	193560
DEXP[197]	=	203238
DEXP[198]	=	213399
DEXP[199]	=	224070
DEXP[200]	=	235272
DEXP[201]	=	247038
DEXP[202]	=	259389
DEXP[203]	=	272358
DEXP[204]	=	285975
DEXP[205]	=	300276
DEXP[206]	=	315288
DEXP[207]	=	331053
DEXP[208]	=	347607
DEXP[209]	=	364986
DEXP[210]	=	383235
DEXP[211]	=	402396
DEXP[212]	=	422517
DEXP[213]	=	443643
DEXP[214]	=	465825
DEXP[215]	=	489117
DEXP[216]	=	513573
DEXP[217]	=	539250
DEXP[218]	=	566214
DEXP[219]	=	594525
DEXP[220]	=	624249
DEXP[221]	=	655461
DEXP[222]	=	688236
DEXP[223]	=	722646
DEXP[224]	=	758781
DEXP[225]	=	796719
DEXP[226]	=	836556
DEXP[227]	=	878382
DEXP[228]	=	922302
DEXP[229]	=	968415
DEXP[230]	=	1016838
DEXP[231]	=	1067679
DEXP[232]	=	1121064
DEXP[233]	=	1177116
DEXP[234]	=	1235973
DEXP[235]	=	1297770
DEXP[236]	=	1362660
DEXP[237]	=	1430793
DEXP[238]	=	1502331
DEXP[239]	=	1577448
DEXP[240]	=	1656321
DEXP[241]	=	1739136
DEXP[242]	=	1826094
DEXP[243]	=	1917399
DEXP[244]	=	2013267
DEXP[245]	=	2113932
DEXP[246]	=	2219628
DEXP[247]	=	2330610
DEXP[248]	=	2447139
DEXP[249]	=	2569497
DEXP[250]	=	2697972
DEXP[251]	=	2832870
DEXP[252]	=	2974515
DEXP[253]	=	3123240
DEXP[254]	=	3279402
DEXP[255]	=	3443373
DEXP[256]	=	3615540
DEXP[257]	=	3796317
DEXP[258]	=	3986133
DEXP[259]	=	4185441
DEXP[260]	=	4394712
DEXP[261]	=	4614447
DEXP[262]	=	4845171
DEXP[263]	=	5087427
DEXP[264]	=	5341800
DEXP[265]	=	5608890
DEXP[266]	=	5889333
DEXP[267]	=	6183801
DEXP[268]	=	6492990
DEXP[269]	=	6817641
DEXP[270]	=	7158522
DEXP[271]	=	7516449
DEXP[272]	=	7892271
DEXP[273]	=	8286885
DEXP[274]	=	8701230
DEXP[275]	=	9136290
DEXP[276]	=	9593106
DEXP[277]	=	10072761
DEXP[278]	=	10576398
DEXP[279]	=	11105217
DEXP[280]	=	11660478
DEXP[281]	=	12243504
DEXP[282]	=	12855678
DEXP[283]	=	13498461
DEXP[284]	=	14173386
DEXP[285]	=	14882055
DEXP[286]	=	15626157
DEXP[287]	=	16407465
DEXP[288]	=	17227839
DEXP[289]	=	18089229
DEXP[290]	=	18993693
DEXP[291]	=	19943376
DEXP[292]	=	20940546
DEXP[293]	=	21987573
DEXP[294]	=	23086950
DEXP[295]	=	24241299
DEXP[296]	=	25453365
DEXP[297]	=	26726031
DEXP[298]	=	28062333
DEXP[299]	=	29465451
DEXP[300]	=	30938724
DEXP[301]	=	32485659
DEXP[302]	=	34109943
DEXP[303]	=	35815440
DEXP[304]	=	37606212
DEXP[305]	=	39486522
DEXP[306]	=	41460849
DEXP[307]	=	43533891
DEXP[308]	=	45710583
DEXP[309]	=	47996115
DEXP[310]	=	50395920
DEXP[311]	=	52915716
DEXP[312]	=	55561500
DEXP[313]	=	58339575
DEXP[314]	=	61256556
DEXP[315]	=	64319382
DEXP[316]	=	67535352
DEXP[317]	=	70912119
DEXP[318]	=	74457726
DEXP[319]	=	78180612
DEXP[320]	=	82089642
DEXP[321]	=	86194125
DEXP[322]	=	90503832
DEXP[323]	=	95029023
DEXP[324]	=	99780474
DEXP[325]	=	104769498
DEXP[326]	=	110007972
DEXP[327]	=	115508370
DEXP[328]	=	121283790
DEXP[329]	=	127347978
DEXP[330]	=	133715376
DEXP[331]	=	140401146
DEXP[332]	=	147421203
DEXP[333]	=	154792263
DEXP[334]	=	162531876
DEXP[335]	=	170658471
DEXP[336]	=	179191395
DEXP[337]	=	188150964
DEXP[338]	=	197558511
DEXP[339]	=	207436437
DEXP[340]	=	217808259
DEXP[341]	=	228698673
DEXP[342]	=	240133605
DEXP[343]	=	252140286
DEXP[344]	=	264747300
DEXP[345]	=	277984665
DEXP[346]	=	291883899
DEXP[347]	=	306478095
DEXP[348]	=	321801999
DEXP[349]	=	337892100
DEXP[350]	=	354786705
DEXP[351]	=	372526038
DEXP[352]	=	391152342
DEXP[353]	=	410709957
DEXP[354]	=	431245455
DEXP[355]	=	452807727
DEXP[356]	=	475448115
DEXP[357]	=	499220520
DEXP[358]	=	524181546
DEXP[359]	=	550390623
DEXP[360]	=	577910154
DEXP[361]	=	606805662
DEXP[362]	=	637145946
DEXP[363]	=	669003243
DEXP[364]	=	702453405
DEXP[365]	=	737576076
DEXP[366]	=	774454881
DEXP[367]	=	813177624
DEXP[368]	=	853836504
DEXP[369]	=	896528331
DEXP[370]	=	941354748
DEXP[371]	=	988422483
DEXP[372]	=	1037843607
DEXP[373]	=	1089735789
DEXP[374]	=	1144222578
DEXP[375]	=	1201433706
DEXP[376]	=	1261505391
DEXP[377]	=	1324580661
DEXP[378]	=	1390809696
DEXP[379]	=	1460350179
DEXP[380]	=	1533367689
DEXP[381]	=	1610036073
DEXP[382]	=	1690537878
DEXP[383]	=	1775064771
DEXP[384]	=	1863818010
DEXP[385]	=	1957008909
DEXP[386]	=	2054859354
DEXP[387]	=	2157602322
DEXP[388]	=	2265482439
DEXP[389]	=	2378756562
DEXP[390]	=	2497694388
DEXP[391]	=	2622579108
DEXP[392]	=	2753708064
DEXP[393]	=	2891393466
DEXP[394]	=	3035963139
DEXP[395]	=	3187761297
DEXP[396]	=	3347149362
DEXP[397]	=	3514506831
DEXP[398]	=	3690232173
DEXP[399]	=	3874743780
DEXP[400]	=	4068480969


	-------------------------------
	-- Массив с характеристиками --
	-------------------------------
STAR_ATTR_Num	= 47 -- Кол-во характеристик
STAR_ATTR		= {}
STAR_ATTR[1]	= "Бонус Силы "
STAR_ATTR[2]	= "Бонус Ловкости "
STAR_ATTR[3]	= "Бонус Точности "
STAR_ATTR[4]	= "Бонус Телосложения "
STAR_ATTR[5]	= "Бонус Духа "
STAR_ATTR[6]	= "Бонус Удачи "
STAR_ATTR[7]	= "Добавление частоты коэффициента атаки "
STAR_ATTR[8]	= "Добавление коэффициента расстояния атаки "
STAR_ATTR[9]	= "Минимальный коэффициент бонуса атаки "
STAR_ATTR[10]	= "Максимальный коэффициент бонуса атаки "
STAR_ATTR[11]	= "Бонус Защиты "
STAR_ATTR[12]	= "Бонус Макс. Здоровья"
STAR_ATTR[13]	= "Бонус макс. Маны "
STAR_ATTR[14]	= "Бонус Уклонения "
STAR_ATTR[15]	= "Бонус Попадания "
STAR_ATTR[16]	= "Бонус Скорости атаки "
STAR_ATTR[17]	= "Бонус Выпадения % вещей "
STAR_ATTR[18]	= "Бонус востановления Здоровья "
STAR_ATTR[19]	= "Бонус востановления Маны "
STAR_ATTR[20]	= "Бонус Скорость передвежения "
STAR_ATTR[21]	= "Бонус Скорости сбора "
STAR_ATTR[22]	= "Бонус Физического сопративления "
STAR_ATTR[23]	= "Бонуса нет "
STAR_ATTR[24]	= "Бонуса нет "
STAR_ATTR[25]	= "Бонуса нет "
STAR_ATTR[26]	= "Бонус постояной Силы "
STAR_ATTR[27]	= "Бонус постояной Ловкости "
STAR_ATTR[28]	= "Бонус посотяной Точности "
STAR_ATTR[29]	= "Бонус постояного Телосложения "
STAR_ATTR[30]	= "Бонус постояного Духа "
STAR_ATTR[31]	= "Бонус постояной Удачи "
STAR_ATTR[32]	= "Бонус постояного Попадания "
STAR_ATTR[33]	= "Бонус постояного нападения с добавлением атаки "
STAR_ATTR[34]	= "Бонус минимальной Силы атаки "
STAR_ATTR[35]	= "Бонус максимальной Силы атаки "
STAR_ATTR[36]	= "Бонус постояной Защиты "
STAR_ATTR[37]	= "Бонус постояно максимального Здоровья "
STAR_ATTR[38]	= "Бонус постояно максимальной Маны "
STAR_ATTR[39]	= "Бонус постояного Уклонения "
STAR_ATTR[40]	= "Бонус постояного Попадания "
STAR_ATTR[41]	= "Бонус постояной Скорости атаки "
STAR_ATTR[42]	= "Бонус постояного выпадения % вещей "
STAR_ATTR[43]	= "Бонус постояного востановления Здоровья "
STAR_ATTR[44]	= "Бонус постояного востановления Маны "
STAR_ATTR[45]	= "Бонус постояной Скорости передвежения "
STAR_ATTR[46]	= "Бонус постояной Скорости сбор "
STAR_ATTR[47]	= "Бонус постояного Физического Сопротивления "

	-----------------------------------------------------------------------------------------------------------------------
	-- В принципе не нужный массив. Отголоски данного массива есть в forge.lua, но они бессмысленны  и закомментированы. --
	--                                                                                                      //by insider --
	-----------------------------------------------------------------------------------------------------------------------
WORD_Num = 52
WORD={}
WORD[1]="A"
WORD[2]="B"
WORD[3]="C"
WORD[4]="D"
WORD[5]="E"
WORD[6]="F"
WORD[7]="G"
WORD[8]="H"
WORD[9]="I"
WORD[10]="G"
WORD[11]="K"
WORD[12]="L"
WORD[13]="M"
WORD[14]="N"
WORD[15]="O"
WORD[16]="P"
WORD[17]="Q"
WORD[18]="R"
WORD[19]="S"
WORD[20]="T"
WORD[21]="U"
WORD[22]="V"
WORD[23]="W"
WORD[24]="X"
WORD[25]="Y"
WORD[26]="Z"
WORD[27]="a"
WORD[28]="b"
WORD[29]="c"
WORD[30]="d"
WORD[31]="e"
WORD[32]="f"
WORD[33]="g"
WORD[34]="h"
WORD[35]="i"
WORD[36]="g"
WORD[37]="k"
WORD[38]="l"
WORD[39]="m"
WORD[40]="n"
WORD[41]="o"
WORD[42]="p"
WORD[43]="q"
WORD[44]="r"
WORD[45]="s"
WORD[46]="t"
WORD[47]="u"
WORD[48]="v"
WORD[49]="w"
WORD[50]="x"
WORD[51]="y"
WORD[52]="z"

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--                                                    Массивы для предмета Кровожадный Сундук (ID 0459) (Начало)                                                       --
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

A1	=	1849
A2 	=	1849
A3 	=	1849
A4 	=	1849
A5 	=	1849
A6 	=	1849
A7 	=	1849
A8 	=	1849
A9 	=	1849
A10	=	1849
A11	=	1849
A12	=	1849
A13	=	1849
A14	=	1849
A15	=	1849
A16	=	1849
A17	=	1849
A18	=	1849
A19	=	1849
A20	=	1849
A21	=	1849
A22	=	1849
A23	=	1849
A24	=	1849

B1	=	1 
B2 	=	1 
B3 	=	1 
B4 	=	1 
B5 	=	1 
B6 	=	1 
B7 	=	1 
B8 	=	1 
B9 	=	1 
B10	=	1 
B11	=	1 
B12	=	1 
B13	=	1 
B14	=	1 
B15	=	1 
B16	=	1 
B17	=	1 
B18	=	1 
B19	=	1 
B20	=	1 
B21	=	1 
B22	=	1 
B23	=	1 
B24	=	1 
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--                                                    Массивы для предмета Кровожадный Сундук (ID 0459) (Конец)                                                        --
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--                                                    Массивы для предмета Суп Перерождения (ID 2315) (Начало)                                                         --
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
C1=183
N1=5
N2=5
N3=5
N4=5
N5=5
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--                                                    Массивы для предмета Суп Перерождения (ID 2315) (Конец)                                                          --
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--                                                    Массивы для предмета Пагона Реинкарнации (ID 0240) (Начало)                                                      --
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SI=183
SN=1
SA1=5
SA2=5
SA3=5
SA4=5
SA5=5
SE=15
			
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--                                                      Массивы для предмета Камень памяти (ID 2314) (Начало)                                                          --
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
STONE_ID			= 0878
STONE_LV			= 2
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--                                                      Массивы для предмета Камень памяти (ID 2314) (Конец)                                                           --
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

RYZ_Rongyu_Min = -300  -- Минимальное кол-во очков чести
RYZ_Rongyu_Max = 30000 -- Максимальное кол-во очков чести

--ЖХНЁ№ЦОп
UnNormalMonster_Num =		13
UnNormalMonster_ID = { }
UnNormalMonster_ID [0]	=	1
UnNormalMonster_ID [1]	=	2
UnNormalMonster_ID [2]	=	3
UnNormalMonster_ID [3]	=	4
UnNormalMonster_ID [4]	=	728
UnNormalMonster_ID [5]	=	729
UnNormalMonster_ID [6]	=	730
UnNormalMonster_ID [7]	=	731
UnNormalMonster_ID [8]	=	739
UnNormalMonster_ID [9]	=	740
UnNormalMonster_ID [10]	=	742
UnNormalMonster_ID [11]	=	743
UnNormalMonster_ID [12]	=	744
UnNormalMonster_ID [13]	=	745

--PKµє№Ш±ХјЖКэ-----------
PK_Win_CountNum		=	60

----------------------------------------------------------------------------------------------------
--PKµєРиТЄЙѕіэµДµАѕЯ
PK_BagItemDelCheckNum = 6
PK_BagItemDelCheck_ID = { }
PK_BagItemDelCheck_ID [0] = 1854
PK_BagItemDelCheck_ID [1] = 1855
PK_BagItemDelCheck_ID [2] = 1856
PK_BagItemDelCheck_ID [3] = 1857
PK_BagItemDelCheck_ID [4] = 1858
PK_BagItemDelCheck_ID [5] = 1859
PK_BagItemDelCheck_ID [6] = 1860
--PK_BagItemDelCheck_ID [7] = 4661



--КҐХЅ№Ш±Х-----------
SZ_Win_CountNum		=	60
SZ_Win_CountNum2	=	60
GUILDNOTICE = 6
GUILDCLOSESHOW = {}
GUILDCLOSESHOW[1] = 900
GUILDCLOSESHOW[2] = 600
GUILDCLOSESHOW[3] = 300
GUILDCLOSESHOW[4] = 180
GUILDCLOSESHOW[5] = 120
GUILDCLOSESHOW[6] = 60
GUILDWARCLOSETIME = 10800

GUILDNOTICE2 = 6
GUILDCLOSESHOW2 = {}
GUILDCLOSESHOW2[1] = 900
GUILDCLOSESHOW2[2] = 600
GUILDCLOSESHOW2[3] = 300
GUILDCLOSESHOW2[4] = 180
GUILDCLOSESHOW2[5] = 120
GUILDCLOSESHOW2[6] = 60
GUILDWARCLOSETIME2 = 10800

 


--НЛіцКҐХЅµШНј»бЙѕіэµДµАѕЯ
SZ_BagItemDelCheckNum = 4
SZ_BagItemDelCheck_ID = { }
SZ_BagItemDelCheck_ID [0] = 4661
SZ_BagItemDelCheck_ID [1] = 2964
SZ_BagItemDelCheck_ID [2] = 3001
SZ_BagItemDelCheck_ID [3] = 2381 ---КШ»¤ЙсХЩ»ЅИЇ




--ЛАЙс№ҐВФЦРТЄЙѕіэµДµАѕЯ--ЛАЙсЧЁКфІї·ЦїЄКј
SS_BagItemDelCheckNum = 2
SS_BagItemDelCheck_ID = { }
SS_BagItemDelCheck_ID [1] = 1855		--ЅшИлУАєгµШУьµДГЕЖ±
SS_BagItemDelCheck_ID [2] = 1856		--Й±ЛАЙс±ШРлК№УГµДµАѕЯ

CRY = {}
CRY[5]=0
CRY[6]=0
CRY[7]=0
CRY[8]=0
CRY[9]=0
CRY[10]=0
CRY[11]=0
CRY[12]=0
CRY[13]=0
CRY[14]=0
CRY[15]=0
CRY[16]=0
CRY[17]=0
CRY[18]=0
CRY[19]=0

AZRAEL = {}
AZRAEL[5]=0
AZRAEL[6]=0
AZRAEL[7]=0
AZRAEL[8]=0
AZRAEL[9]=0
AZRAEL[10]=0
AZRAEL[11]=0
AZRAEL[12]=0
AZRAEL[13]=0
AZRAEL[14]=0
AZRAEL[15]=0
AZRAEL[16]=0
AZRAEL[17]=0
AZRAEL[18]=0
AZRAEL[19]=0

SUMMON = {}
SUMMON[1]=0
SUMMON[2]=0
SUMMON[3]=0
SUMMON[4]=0
SUMMON[5]=0

HELLCLOSETIME = 300
MAXNOTICE = 17
NOTICETIME = {}
NOTICETIME[1] = 300
NOTICETIME[2] = 240
NOTICETIME[3] = 180
NOTICETIME[4] = 120
NOTICETIME[5] = 60
NOTICETIME[6] = 30
NOTICETIME[7] = 15
NOTICETIME[8] = 10
NOTICETIME[9] = 9
NOTICETIME[10] = 8
NOTICETIME[11] = 7
NOTICETIME[12] = 6
NOTICETIME[13] = 5
NOTICETIME[14] = 4
NOTICETIME[15] = 3
NOTICETIME[16] = 2
NOTICETIME[17] = 1

--ЛАЙсЧЁКфІї·Ц


--µАѕЯКµАэ»ЇКВјюАаРН
NPC_SALE		=	0	--npcВтВф
MONSTER_BAOLIAO		=	1	--№ЦОп±©БП
PLAYER_HECHENG		=	2	--НжјТєПіЙ
QUEST_AWARD_1		=	3	--ИООс»сИЎ1
QUEST_AWARD_2		=	4	--ИООс»сИЎ2
QUEST_AWARD_3		=	5	--ИООс»сИЎ3
QUEST_AWARD_4		=	6	--ИООс»сИЎ4
QUEST_AWARD_5		=	7	--ИООс»сИЎ5
QUEST_AWARD_6		=	8	--ИООс»сИЎ6
QUEST_AWARD_7		=	9	--ИООс»сИЎ7
QUEST_AWARD_8		=	10	--ИООс»сИЎ8
PLAYER_XSBOX		=	11	--РВКЦ±¦Пд

PLAYER_CCFSBOXA		=	12
PLAYER_CCFSBOXB		=	13
PLAYER_CCFSBOXC		=	14
PLAYER_CCFSBOXD		=	15
PLAYER_CCFSBOXE		=	16
PLAYER_CCFSBOXF 	=	17
PLAYER_CCFSBOXG		=	18
PLAYER_CCFSBOXH		=	19
PLAYER_CCFSBOXI		=	20
PLAYER_ZSITEM		=	22	--ЧПЙ«Ч°±ё
PLAYER_HSSR		=	23	--єЪКРЙМИЛ
PLAYER_HSSRA		=	24	--єЪКРЙМИЛA

QUEST_AWARD_SCBOX	=	95	--ЙМіЗПдЧУ
QUEST_AWARD_SDJ		=	96	--КҐµ®»»ИЎАсЖ·
QUEST_AWARD_RYZ		=	97	--ИЩУюЦ¤»сµГ
QUEST_AWARD_WZX		=	98	--Ц°ТµИООс±¦Пд
QUEST_AWARD_RAND	=	99	--Лж»ъЦ°ТµИООс




--ёЅјУКфРФМЧЧ°ГыіЖ¶ФУ¦ЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ

ITEMSERIES_DRAGON	=  1		--ѕЮБъМЧЧ°ЈЁБ¦БїЈ©
ITEMSERIES_TAITAN	=  2		--М©М№МЧЧ°ЈЁМеЦКЈ©
ITEMSERIES_HUNTER	=  3		--БФКЦМЧЧ°ЈЁЧЁЧўЈ©
ITEMSERIES_DELIVER	=  4		--РЕК№МЧЧ°ЈЁГфЅЭЈ©
ITEMSERIES_HOLY		=  5		--ЙсКҐМЧЧ°ЈЁѕ«ЙсЈ©

--ёЅјУКфРФёЕВКЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ

Itemattr_Baoliao  =  { }





--µАѕЯЖ·ЦКЛж»ъёЕВКЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ

Item_Baoliao = { }				--№ЦОп±©БП --ґУЧоёЯј¶Ж·ЦКїЄКјЛж»ъЈ¬ёЯј¶ОпЖ·УЕПИЈ¬ПаБЪµИј¶µДКэЦµІоЦµОЄКµјКёЕВК
Item_Baoliao [0]	=		0	--
Item_Baoliao [1]	=		0	--
Item_Baoliao [2]	=		0	--
Item_Baoliao [3]	=		0	--
Item_Baoliao [4]	=		0	--
Item_Baoliao [5]	=		1	--ЙсУчЦ®...
Item_Baoliao [6]	=		5	--НхХЯЦ®...	
Item_Baoliao [7]	=		10	--НіЛ§Ц®...
Item_Baoliao [8]	=		40	--ЧїФЅЦ®...
Item_Baoliao [9]	=		80	--ЖХНЁРН...

Item_Attr_0 = { }					
Item_Attr_0 [0]		=		0	--5ёцёЅјУКфРФ
Item_Attr_0 [1]		=		0	--4ёцёЅјУКфРФ
Item_Attr_0 [2]		=		1	--3ёцёЅјУКфРФ
Item_Attr_0 [3]		=		4	--2ёцёЅјУКфРФ
Item_Attr_0 [4]		=		50	--1ёцёЅјУКфРФ


Item_Mission_1 = { }					
Item_Mission_1 [0]	=		0	--
Item_Mission_1 [1]	=		0	--
Item_Mission_1 [2]	=		0	--
Item_Mission_1 [3]	=		0	--
Item_Mission_1 [4]	=		0	-- 
Item_Mission_1 [5]	=		0	--ЙсУчЦ®... 
Item_Mission_1 [6]	=		0	--НхХЯЦ®... 
Item_Mission_1 [7]	=		1	--НіЛ§Ц®... 
Item_Mission_1 [8]	=		10	--ЧїФЅЦ®... 
Item_Mission_1 [9]	=		50	--ЖХНЁРН... 

Item_Attr_1 = { }					
Item_Attr_1 [0]		=		0						--5ёцёЅјУКфРФ      
Item_Attr_1 [1]		=		0						--4ёцёЅјУКфРФ      
Item_Attr_1 [2]		=		0						--3ёцёЅјУКфРФ      
Item_Attr_1 [3]		=		0						--2ёцёЅјУКфРФ      
Item_Attr_1 [4]		=		0						--1ёцёЅјУКфРФ      





Item_Mission_2 = { }					                                                          
Item_Mission_2 [0]	=		0						--                
Item_Mission_2 [1]	=		0						--                
Item_Mission_2 [2]	=		0						--                
Item_Mission_2 [3]	=		0						--                
Item_Mission_2 [4]	=		0						--                
Item_Mission_2 [5]	=		0						--ЙсУчЦ®...    
Item_Mission_2 [6]	=		1						--НхХЯЦ®...    
Item_Mission_2 [7]	=		5						--НіЛ§Ц®...    
Item_Mission_2 [8]	=		20						--ЧїФЅЦ®...    
Item_Mission_2 [9]	=		80						--ЖХНЁРН...    

Item_Attr_2 = { }							
Item_Attr_2 [0]		=		0						--5ёцёЅјУКфРФ      
Item_Attr_2 [1]		=		0						--4ёцёЅјУКфРФ      
Item_Attr_2 [2]		=		0						--3ёцёЅјУКфРФ      
Item_Attr_2 [3]		=		10						--2ёцёЅјУКфРФ      
Item_Attr_2 [4]		=		30						--1ёцёЅјУКфРФ      



Item_Mission_3 = { }					                                                          
Item_Mission_3 [0]		=		0						--                
Item_Mission_3 [1]		=		0						--                
Item_Mission_3 [2]		=		0						--                
Item_Mission_3 [3]		=		0						--                
Item_Mission_3 [4]		=		0						--                
Item_Mission_3 [5]		=		0						--ЙсУчЦ®...    
Item_Mission_3 [6]		=		1						--НхХЯЦ®...    
Item_Mission_3 [7]		=		5						--НіЛ§Ц®...    
Item_Mission_3 [8]		=		50						--ЧїФЅЦ®...    
Item_Mission_3 [9]		=		100						--ЖХНЁРН...    

Item_Attr_3 = { }									
Item_Attr_3 [0]		=		0						--5ёцёЅјУКфРФ 
Item_Attr_3 [1]		=		0						--4ёцёЅјУКфРФ 
Item_Attr_3 [2]		=		0						--3ёцёЅјУКфРФ 
Item_Attr_3 [3]		=		10						--2ёцёЅјУКфРФ 
Item_Attr_3 [4]		=		60						--1ёцёЅјУКфРФ 
												                              
												                              



Item_Mission_4 = { }					                                                          
Item_Mission_4 [0]		=		0						--                
Item_Mission_4 [1]		=		0						--                
Item_Mission_4 [2]		=		0						--                
Item_Mission_4 [3]		=		0						--                
Item_Mission_4 [4]		=		0						--                
Item_Mission_4 [5]		=		1						--ЙсУчЦ®...    
Item_Mission_4 [6]		=		5						--НхХЯЦ®...    
Item_Mission_4 [7]		=		15						--НіЛ§Ц®...    
Item_Mission_4 [8]		=		90						--ЧїФЅЦ®...    
Item_Mission_4 [9]		=		100						--ЖХНЁРН...    

Item_Attr_4 = { }					
Item_Attr_4 [0]		=		0						--5ёцёЅјУКфРФ      
Item_Attr_4 [1]		=		0						--4ёцёЅјУКфРФ      
Item_Attr_4 [2]		=		1						--3ёцёЅјУКфРФ      
Item_Attr_4 [3]		=		20						--2ёцёЅјУКфРФ      
Item_Attr_4 [4]		=		100						--1ёцёЅјУКфРФ      


Item_Mission_5 = { }					                                                          
Item_Mission_5 [0]		=		0						--                
Item_Mission_5 [1]		=		0						--                
Item_Mission_5 [2]		=		0						--                
Item_Mission_5 [3]		=		0						--                
Item_Mission_5 [4]		=		0						--                
Item_Mission_5 [5]		=		1						--ЙсУчЦ®...    
Item_Mission_5 [6]		=		15						--НхХЯЦ®...    
Item_Mission_5 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_5 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_5 [9]		=		100						--ЖХНЁРН...    

Item_Attr_5 = { }					
Item_Attr_5 [0]		=		0						--5ёцёЅјУКфРФ      
Item_Attr_5 [1]		=		0						--4ёцёЅјУКфРФ      
Item_Attr_5 [2]		=		1						--3ёцёЅјУКфРФ      
Item_Attr_5 [3]		=		5						--2ёцёЅјУКфРФ      
Item_Attr_5 [4]		=		100						--1ёцёЅјУКфРФ

Item_Mission_94 = { }					                                                                -----------------kokora   
Item_Mission_94 [0]		=		0						--                
Item_Mission_94 [1]		=		0						--                
Item_Mission_94 [2]		=		0						--                
Item_Mission_94 [3]		=		0						--                
Item_Mission_94 [4]		=		0						--                
Item_Mission_94 [5]		=		0						--ЙсУчЦ®...    
Item_Mission_94 [6]		=		1						--НхХЯЦ®...    
Item_Mission_94 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_94 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_94 [9]		=		100						--ЖХНЁРН...    

Item_Attr_94 = { }					
Item_Attr_94 [0]		=		0						--5ёцёЅјУКфРФ      
Item_Attr_94 [1]		=		0						--4ёцёЅјУКфРФ      
Item_Attr_94 [2]		=		1						--3ёцёЅјУКфРФ      
Item_Attr_94 [3]		=		20						--2ёцёЅјУКфРФ      
Item_Attr_94 [4]		=		90						--1ёцёЅјУКфРФ

Item_Mission_95 = { }					                                                          
Item_Mission_95 [0]		=		0						--                
Item_Mission_95 [1]		=		0						--                
Item_Mission_95 [2]		=		0						--                
Item_Mission_95 [3]		=		0						--                
Item_Mission_95 [4]		=		0						--                
Item_Mission_95 [5]		=		0						--ЙсУчЦ®...    
Item_Mission_95 [6]		=		0						--НхХЯЦ®...    
Item_Mission_95 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_95 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_95 [9]		=		100						--ЖХНЁРН...    

Item_Attr_95 = { }					
Item_Attr_95 [0]		=		0						--5ёцёЅјУКфРФ      
Item_Attr_95 [1]		=		0						--4ёцёЅјУКфРФ      
Item_Attr_95 [2]		=		1						--3ёцёЅјУКфРФ      
Item_Attr_95 [3]		=		4						--2ёцёЅјУКфРФ      
Item_Attr_95 [4]		=		50						--1ёцёЅјУКфРФ

Item_Mission_96 = { }					                                                          
Item_Mission_96 [0]		=		0						--                
Item_Mission_96 [1]		=		0						--                
Item_Mission_96 [2]		=		0						--                
Item_Mission_96 [3]		=		0						--                
Item_Mission_96 [4]		=		0						--                
Item_Mission_96 [5]		=		10						--ЙсУчЦ®...    
Item_Mission_96 [6]		=		20						--НхХЯЦ®...    
Item_Mission_96 [7]		=		50						--НіЛ§Ц®...    
Item_Mission_96 [8]		=		90						--ЧїФЅЦ®...    
Item_Mission_96 [9]		=		100						--ЖХНЁРН...    

Item_Attr_96 = { }					
Item_Attr_96 [0]		=		0						--5ёцёЅјУКфРФ      
Item_Attr_96 [1]		=		0						--4ёцёЅјУКфРФ      
Item_Attr_96 [2]		=		2						--3ёцёЅјУКфРФ      
Item_Attr_96 [3]		=		20						--2ёцёЅјУКфРФ      
Item_Attr_96 [4]		=		100						--1ёцёЅјУКфРФ 


Item_Mission_97 = { }					                                                          
Item_Mission_97 [0]		=		0						--                
Item_Mission_97 [1]		=		0						--                
Item_Mission_97 [2]		=		0						--                
Item_Mission_97 [3]		=		0						--                
Item_Mission_97 [4]		=		0						--                
Item_Mission_97 [5]		=		0						--ЙсУчЦ®...    
Item_Mission_97 [6]		=		0						--НхХЯЦ®...    
Item_Mission_97 [7]		=		0						--НіЛ§Ц®...    
Item_Mission_97 [8]		=		0						--ЧїФЅЦ®...    
Item_Mission_97 [9]		=		100						--ЖХНЁРН...    

Item_Attr_97 = { }					
Item_Attr_97 [0]		=		100						--5ёцёЅјУКфРФ      
Item_Attr_97 [1]		=		100						--4ёцёЅјУКфРФ      
Item_Attr_97 [2]		=		100						--3ёцёЅјУКфРФ      
Item_Attr_97 [3]		=		100						--2ёцёЅјУКфРФ      
Item_Attr_97 [4]		=		100						--1ёцёЅјУКфРФ 


Item_Mission_98 = { }					                                                          
Item_Mission_98 [0]		=		0						--                
Item_Mission_98 [1]		=		0						--                
Item_Mission_98 [2]		=		0						--                
Item_Mission_98 [3]		=		0						--                
Item_Mission_98 [4]		=		0						--                
Item_Mission_98 [5]		=		10						--ЙсУчЦ®...    
Item_Mission_98 [6]		=		20						--НхХЯЦ®...    
Item_Mission_98 [7]		=		50						--НіЛ§Ц®...    
Item_Mission_98 [8]		=		90						--ЧїФЅЦ®...    
Item_Mission_98 [9]		=		100						--ЖХНЁРН...    

Item_Attr_98 = { }					
Item_Attr_98 [0]		=		0						--5ёцёЅјУКфРФ      
Item_Attr_98 [1]		=		0						--4ёцёЅјУКфРФ      
Item_Attr_98 [2]		=		2						--3ёцёЅјУКфРФ      
Item_Attr_98 [3]		=		20						--2ёцёЅјУКфРФ      
Item_Attr_98 [4]		=		100						--1ёцёЅјУКфРФ 



Item_Mission_99 = { }					                                                          
Item_Mission_99 [0]		=		0						--                
Item_Mission_99 [1]		=		0						--                
Item_Mission_99 [2]		=		0						--                
Item_Mission_99 [3]		=		0						--                
Item_Mission_99 [4]		=		0						--                
Item_Mission_99 [5]		=		1						--ЙсУчЦ®...    
Item_Mission_99 [6]		=		5						--НхХЯЦ®...    
Item_Mission_99 [7]		=		20						--НіЛ§Ц®...    
Item_Mission_99 [8]		=		50						--ЧїФЅЦ®...    
Item_Mission_99 [9]		=		100						--ЖХНЁРН...    

Item_Attr_99 = { }					
Item_Attr_99 [0]		=		0						--5ёцёЅјУКфРФ      
Item_Attr_99 [1]		=		0						--4ёцёЅјУКфРФ      
Item_Attr_99 [2]		=		2						--3ёцёЅјУКфРФ      
Item_Attr_99 [3]		=		20						--2ёцёЅјУКфРФ      
Item_Attr_99 [4]		=		100						--1ёцёЅјУКфРФ      

Item_Mission_11 = { }
Item_Mission_11 [0]		=		0						--                
Item_Mission_11 [1]		=		0						--                
Item_Mission_11 [2]		=		0						--                
Item_Mission_11 [3]		=		0						--                
Item_Mission_11 [4]		=		0						--                
Item_Mission_11 [5]		=		0						--ЙсУчЦ®...    
Item_Mission_11 [6]		=		0						--НхХЯЦ®...    
Item_Mission_11 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_11 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_11 [9]		=		100						--ЖХНЁРН...    

Item_Attr_11 = { }					
Item_Attr_11 [0]		=		0						--5ёцёЅјУКфРФ
Item_Attr_11 [1]		=		0						--4ёцёЅјУКфРФ
Item_Attr_11 [2]		=		1						--3ёцёЅјУКфРФ
Item_Attr_11 [3]		=		4						--2ёцёЅјУКфРФ
Item_Attr_11 [4]		=		50						--1ёцёЅјУКфРФ    



Item_Mission_12 = { }
Item_Mission_12 [0]		=		0						--                
Item_Mission_12 [1]		=		0						--                
Item_Mission_12 [2]		=		0						--                
Item_Mission_12 [3]		=		0						--                
Item_Mission_12 [4]		=		0						--                
Item_Mission_12 [5]		=		0						--ЙсУчЦ®...    
Item_Mission_12 [6]		=		0						--НхХЯЦ®...    
Item_Mission_12 [7]		=		0						--НіЛ§Ц®...    
Item_Mission_12 [8]		=		0						--ЧїФЅЦ®...    
Item_Mission_12 [9]		=		100						--ЖХНЁРН...    

Item_Attr_12 = { }					
Item_Attr_12 [0]		=		0						--5ёцёЅјУКфРФ
Item_Attr_12 [1]		=		0						--4ёцёЅјУКфРФ
Item_Attr_12 [2]		=		0						--3ёцёЅјУКфРФ
Item_Attr_12 [3]		=		0						--2ёцёЅјУКфРФ
Item_Attr_12 [4]		=		0						--1ёцёЅјУКфРФ    




Item_Mission_13 = { }
Item_Mission_13 [0]		=		0						--                
Item_Mission_13 [1]		=		0						--                
Item_Mission_13 [2]		=		0						--                
Item_Mission_13 [3]		=		0						--                
Item_Mission_13 [4]		=		0						--                
Item_Mission_13 [5]		=		0						--ЙсУчЦ®...    
Item_Mission_13 [6]		=		0						--НхХЯЦ®...    
Item_Mission_13 [7]		=		0						--НіЛ§Ц®...    
Item_Mission_13 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_13 [9]		=		100						--ЖХНЁРН...    

Item_Attr_13 = { }					
Item_Attr_13 [0]		=		0						--5ёцёЅјУКфРФ
Item_Attr_13 [1]		=		0						--4ёцёЅјУКфРФ
Item_Attr_13 [2]		=		0						--3ёцёЅјУКфРФ
Item_Attr_13 [3]		=		0						--2ёцёЅјУКфРФ
Item_Attr_13 [4]		=		0						--1ёцёЅјУКфРФ   


Item_Mission_14 = { }
Item_Mission_14 [0]		=		0						--                
Item_Mission_14 [1]		=		0						--                
Item_Mission_14 [2]		=		0						--                
Item_Mission_14 [3]		=		0						--                
Item_Mission_14 [4]		=		0						--                
Item_Mission_14 [5]		=		0						--ЙсУчЦ®...    
Item_Mission_14 [6]		=		0						--НхХЯЦ®...    
Item_Mission_14 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_14 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_14 [9]		=		100						--ЖХНЁРН...    

Item_Attr_14 = { }					
Item_Attr_14 [0]		=		0						--5ёцёЅјУКфРФ
Item_Attr_14 [1]		=		0						--4ёцёЅјУКфРФ
Item_Attr_14 [2]		=		0						--3ёцёЅјУКфРФ
Item_Attr_14 [3]		=		0						--2ёцёЅјУКфРФ
Item_Attr_14 [4]		=		0						--1ёцёЅјУКфРФ   


Item_Mission_15 = { }
Item_Mission_15 [0]		=		0						--                
Item_Mission_15 [1]		=		0						--                
Item_Mission_15 [2]		=		0						--                
Item_Mission_15 [3]		=		0						--                
Item_Mission_15 [4]		=		0						--                
Item_Mission_15 [5]		=		0						--ЙсУчЦ®...    
Item_Mission_15 [6]		=		100						--НхХЯЦ®...    
Item_Mission_15 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_15 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_15 [9]		=		100						--ЖХНЁРН...    

Item_Attr_15 = { }					
Item_Attr_15 [0]		=		0						--5ёцёЅјУКфРФ
Item_Attr_15 [1]		=		0						--4ёцёЅјУКфРФ
Item_Attr_15 [2]		=		0						--3ёцёЅјУКфРФ
Item_Attr_15 [3]		=		0						--2ёцёЅјУКфРФ
Item_Attr_15 [4]		=		0						--1ёцёЅјУКфРФ  


Item_Mission_16 = { }
Item_Mission_16 [0]		=		0						--                
Item_Mission_16 [1]		=		0						--                
Item_Mission_16 [2]		=		0						--                
Item_Mission_16 [3]		=		0						--                
Item_Mission_16 [4]		=		0						--                
Item_Mission_16 [5]		=		100						--ЙсУчЦ®...    
Item_Mission_16 [6]		=		100						--НхХЯЦ®...    
Item_Mission_16 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_16 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_16 [9]		=		100						--ЖХНЁРН...    

Item_Attr_16 = { }					
Item_Attr_16 [0]		=		0					--5ёцёЅјУКфРФ
Item_Attr_16 [1]		=		0					--4ёцёЅјУКфРФ
Item_Attr_16 [2]		=		0					--3ёцёЅјУКфРФ
Item_Attr_16 [3]		=		0					--2ёцёЅјУКфРФ
Item_Attr_16 [4]		=		0						--1ёцёЅјУКфРФ  

Item_Mission_17 = { }
Item_Mission_17 [0]		=		0						--                
Item_Mission_17 [1]		=		0						--                
Item_Mission_17 [2]		=		0						--                
Item_Mission_17 [3]		=		0						--                
Item_Mission_17 [4]		=		100						--                
Item_Mission_17 [5]		=		100						--ЙсУчЦ®...    
Item_Mission_17 [6]		=		100						--НхХЯЦ®...    
Item_Mission_17 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_17 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_17 [9]		=		100						--ЖХНЁРН...    
	     
Item_Attr_17 = { }					
Item_Attr_17 [0]		=		0					--5ёцёЅјУКфРФ
Item_Attr_17 [1]		=		0					--4ёцёЅјУКфРФ
Item_Attr_17 [2]		=		0					--3ёцёЅјУКфРФ
Item_Attr_17 [3]		=		0					--2ёцёЅјУКфРФ
Item_Attr_17 [4]		=		0						--1ёцёЅјУКфРФ  


Item_Mission_18 = { }
Item_Mission_18 [0]		=		0						--                
Item_Mission_18 [1]		=		0						--                
Item_Mission_18 [2]		=		0						--                
Item_Mission_18 [3]		=		100						--                
Item_Mission_18 [4]		=		100						--                
Item_Mission_18 [5]		=		100						--ЙсУчЦ®...    
Item_Mission_18 [6]		=		100						--НхХЯЦ®...    
Item_Mission_18 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_18 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_18 [9]		=		100						--ЖХНЁРН...    
	     
Item_Attr_18 = { }					
Item_Attr_18 [0]		=		0					--5ёцёЅјУКфРФ
Item_Attr_18 [1]		=		0					--4ёцёЅјУКфРФ
Item_Attr_18 [2]		=		0					--3ёцёЅјУКфРФ
Item_Attr_18 [3]		=		0					--2ёцёЅјУКфРФ
Item_Attr_18 [4]		=		0						--1ёцёЅјУКфРФ  

Item_Mission_19 = { }
Item_Mission_19 [0]		=		0						--                
Item_Mission_19 [1]		=		0						--                
Item_Mission_19 [2]		=		100						--                
Item_Mission_19 [3]		=		100						--                
Item_Mission_19 [4]		=		100						--                
Item_Mission_19 [5]		=		100						--ЙсУчЦ®...    
Item_Mission_19 [6]		=		100						--НхХЯЦ®...    
Item_Mission_19 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_19 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_19 [9]		=		100						--ЖХНЁРН...    
	     
Item_Attr_19 = { }					
Item_Attr_19 [0]		=		0					--5ёцёЅјУКфРФ
Item_Attr_19 [1]		=		0					--4ёцёЅјУКфРФ
Item_Attr_19 [2]		=		0					--3ёцёЅјУКфРФ
Item_Attr_19 [3]		=		0					--2ёцёЅјУКфРФ
Item_Attr_19 [4]		=		0						--1ёцёЅјУКфРФ  


Item_Mission_20 = { }
Item_Mission_20 [0]		=		0						--                
Item_Mission_20 [1]		=		100						--                
Item_Mission_20 [2]		=		100						--                
Item_Mission_20 [3]		=		100						--                
Item_Mission_20 [4]		=		100						--                
Item_Mission_20 [5]		=		100						--ЙсУчЦ®...    
Item_Mission_20 [6]		=		100						--НхХЯЦ®...    
Item_Mission_20 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_20 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_20 [9]		=		100						--ЖХНЁРН...    
	     
Item_Attr_20 = { }					
Item_Attr_20 [0]		=		0						--5ёцёЅјУКфРФ
Item_Attr_20 [1]		=		0						--4ёцёЅјУКфРФ
Item_Attr_20 [2]		=		0						--3ёцёЅјУКфРФ
Item_Attr_20 [3]		=		0						--2ёцёЅјУКфРФ
Item_Attr_20 [4]		=		0						--1ёцёЅјУКфРФ

Item_Mission_22 = { }
Item_Mission_22 [0]		=		0						--                
Item_Mission_22 [1]		=		0						--                
Item_Mission_22 [2]		=		0						--                
Item_Mission_22 [3]		=		0						--                
Item_Mission_22 [4]		=		100						--                
Item_Mission_22 [5]		=		100						--ЙсУчЦ®...    
Item_Mission_22 [6]		=		100						--НхХЯЦ®...    
Item_Mission_22 [7]		=		100						--НіЛ§Ц®...    
Item_Mission_22 [8]		=		100						--ЧїФЅЦ®...    
Item_Mission_22 [9]		=		100						--ЖХНЁРН...    
	     
Item_Attr_22 = { }					
Item_Attr_22 [0]		=		0							--5ёцёЅјУКфРФ
Item_Attr_22 [1]		=		0							--4ёцёЅјУКфРФ
Item_Attr_22 [2]		=		1							--3ёцёЅјУКфРФ
Item_Attr_22 [3]		=		4							--2ёцёЅјУКфРФ
Item_Attr_22 [4]		=		50							--1ёцёЅјУКфРФ

Item_Mission_23 = { }
Item_Mission_23 [0]		=		0							--                
Item_Mission_23 [1]		=		0							--                
Item_Mission_23 [2]		=		0							--                
Item_Mission_23 [3]		=		0							--                
Item_Mission_23 [4]		=		3							--                
Item_Mission_23 [5]		=		6							--ЙсУчЦ®...    
Item_Mission_23 [6]		=		25							--НхХЯЦ®...    
Item_Mission_23 [7]		=		50							--НіЛ§Ц®...    
Item_Mission_23 [8]		=		70							--ЧїФЅЦ®...    
Item_Mission_23 [9]		=		100							--ЖХНЁРН...    
	     
Item_Attr_23 = { }					
Item_Attr_23 [0]		=		0							--5ёцёЅјУКфРФ
Item_Attr_23 [1]		=		0							--4ёцёЅјУКфРФ
Item_Attr_23 [2]		=		1							--3ёцёЅјУКфРФ
Item_Attr_23 [3]		=		5							--2ёцёЅјУКфРФ
Item_Attr_23 [4]		=		60							--1ёцёЅјУКфРФ

Item_Mission_24 = { }
Item_Mission_24 [0]		=		0							--                
Item_Mission_24 [1]		=		0							--                
Item_Mission_24 [2]		=		0							--                
Item_Mission_24 [3]		=		0							--                
Item_Mission_24 [4]		=		0							--                
Item_Mission_24 [5]		=		1							--ЙсУчЦ®...    
Item_Mission_24 [6]		=		5							--НхХЯЦ®...    
Item_Mission_24 [7]		=		20							--НіЛ§Ц®...    
Item_Mission_24 [8]		=		65							--ЧїФЅЦ®...    
Item_Mission_24 [9]		=		99							--ЖХНЁРН...    
	     
Item_Attr_24 = { }					
Item_Attr_24 [0]		=		0							--5ёцёЅјУКфРФ
Item_Attr_24 [1]		=		0							--4ёцёЅјУКфРФ
Item_Attr_24 [2]		=		1							--3ёцёЅјУКфРФ
Item_Attr_24 [3]		=		4							--2ёцёЅјУКфРФ
Item_Attr_24 [4]		=		50							--1ёцёЅјУКфРФ

--ЙиЦГЧ°±ё»сµГїЧКэµДёЕВК

Item_HoleNum_Monster = { }
Item_HoleNum_Monster [0]		=		75						--0ёц¶ґ
Item_HoleNum_Monster [1]		=		99						--1ёц¶ґ
Item_HoleNum_Monster [2]		=		100				--2ёц¶ґ						
Item_HoleNum_Monster [3]		=		100						--3ёц¶ґ

Item_HoleNum_Hecheng = { }
Item_HoleNum_Hecheng [0]		=		25						--0ёц¶ґ
Item_HoleNum_Hecheng [1]		=		75						--1ёц¶ґ
Item_HoleNum_Hecheng [2]		=		100						--2ёц¶ґ						
Item_HoleNum_Hecheng [3]		=		100						--3ёц¶ґ

Item_HoleNum_Mission_1 = { }
Item_HoleNum_Mission_1 [0]		=		25						--0ёц¶ґ
Item_HoleNum_Mission_1 [1]		=		75						--1ёц¶ґ
Item_HoleNum_Mission_1 [2]		=		100						--2ёц¶ґ						
Item_HoleNum_Mission_1 [3]		=		100						--3ёц¶ґ




--єЅєЈјјДЬПыєДєЅєЈѕ­СйЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ
--јјДЬјЧ°ејУ№МЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ
sk_jbjg = { } 
sk_jbjg [1]				=		625
sk_jbjg [2]				=		3439    
sk_jbjg [3]				=		12209  
sk_jbjg [4]				=		29679  
sk_jbjg [5]				=		58849  
sk_jbjg [6]				=		102719 
sk_jbjg [7]				=		164289 
sk_jbjg [8]				=		246559 
sk_jbjg [9]				=		352529 
sk_jbjg [10]			=		485199 

--јјДЬ»рЕЪКмБ·ЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ
sk_hpsl = { } 
sk_hpsl [1]				=		671
sk_hpsl [2]				=		4641            
sk_hpsl [3]				=		14911          
sk_hpsl [4]				=		34481          
sk_hpsl [5]				=		66351          
sk_hpsl [6]				=		113521         
sk_hpsl [7]				=		178991         
sk_hpsl [8]				=		265761         
sk_hpsl [9]				=		376831         
sk_hpsl [10]			=		515201         

--јјДЬґ¬МеЗї»ЇЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ
sk_ctqh = { } 
sk_ctqh [1]			=		1105
sk_ctqh [2]			=		6095      
sk_ctqh [3]			=		17985    
sk_ctqh [4]			=		39775    
sk_ctqh [5]			=		74465    
sk_ctqh [6]			=		125055   
sk_ctqh [7]			=		194545   
sk_ctqh [8]			=		285935   
sk_ctqh [9]			=		402225   
sk_ctqh [10]			=		546415   

--јјДЬІЩ·«КхЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ
sk_cfs = { } 
sk_cfs [1]				=		1695
sk_cfs [2]				=		7825         
sk_cfs [3]				=		21455       
sk_cfs [4]				=		45585       
sk_cfs [5]				=		83215       
sk_cfs [6]				=		137345      
sk_cfs [7]				=		210975      
sk_cfs [8]				=		307105      
sk_cfs [9]				=		428735      
sk_cfs [10]				=		578865      


--јјДЬІ№ёшА©ИЭЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ
sk_bjkr = { } 
sk_bjkr [1]				=		2465
sk_bjkr [2]				=		9855         
sk_bjkr [3]				=		25345       
sk_bjkr [4]				=		51935       
sk_bjkr [5]				=		92625       
sk_bjkr [6]				=		150415      
sk_bjkr [7]				=		228305      
sk_bjkr [8]				=		329295      
sk_bjkr [9]				=		456385      
sk_bjkr [10]			=		612575      










--ґґЅЁєЈѕь№¤»бЛщРиОпЖ·
Guild1_ItemMax		=	1

Guild1_item = {}
Guild1_count = {}
								Guild1_fame	=	0
								Guild1_Gold	=	100000000
Guild1_item[1]	=	1780				Guild1_count[1]	=	1
Guild1_item[2]	=	-1				Guild1_count[2]	=	-1
Guild1_item[3]	=	-1				Guild1_count[3]	=	-1
Guild1_item[4]	=	-1				Guild1_count[4]	=	-1
Guild1_item[5]	=	-1				Guild1_count[5]	=	-1

--ґґЅЁєЈµБ№¤»бЛщРиОпЖ·
Guild2_ItemMax		=	1

Guild2_item = {}
Guild2_count = {}
								Guild2_fame	=	0
								Guild2_Gold	=	100000000
Guild2_item[1]	=	1780				Guild2_count[1]	=	1
Guild2_item[2]	=	-1				Guild2_count[2]	=	-1
Guild2_item[3]	=	-1				Guild2_count[3]	=	-1
Guild2_item[4]	=	-1				Guild2_count[4]	=	-1
Guild2_item[5]	=	-1				Guild2_count[5]	=	-1

----јУИлєЈѕь№¤»бЛщРиМхјю
	JOINGUILD_NAVY_FAME	=	0			--јУИлєЈѕьГыЙщ

  --јУИлєЈµБ№¤»бЛщРиМхјю
	JOINGUILD_PIRATE_FAME	=	0			--јУИлєЈµБГыЙщ
--
--


SK_DPSL		=	73					--јјДЬ¶ЬЕЖКмБ·
SK_LZJ		=	90					--јјДЬБ¬»чјэ
SK_LXJY		=	112					--јјДЬБчРЗјэУк
SK_LH		=	107					--јјДЬАЗєї
SK_SSD		=	114					--јјДЬЙўЙдµЇ
SK_CTD		=	115					--јјДЬґ©НёµЇ
SK_DZY		=	117					--јјДЬґуЦОУъ
SK_HX		=	127					--јјДЬ»ўРҐ
SK_RSD		=	113					--јјДЬИјЙХ
SK_JJSL		=	67					--јјДЬѕЮЅЈКмБ·
SK_KB		=	84					--јјДЬїс±©
SK_FSZ		=	109					--јјДЬЛ«КЦЅЈјУіЙ.............
SK_XZFY		=	104					--јјДЬПНХЯ·вУЎ
SK_YMSL		=	108					--јјДЬТ°ВщЛйБС
--SK_BC		=	84					--јјДЬ±іґМ
SK_CLXZ		=	76					--јјДЬґФБЦРРХЯ
SK_FZLZ		=	101					--јјДЬ·зЦ®БмЦч
SK_GJSL		=	74					--јјДЬ№­јэКмБ·

SK_HFWQ		=	122					--јјДЬ»ШёґОВИЄ
SK_JSFB		=	102					--јјДЬј«ЛЩ·з±©
SK_JFZ		=	64					--јјДЬјІ·зХ¶
SK_QXYJ		=	65					--јјДЬЗ№РµСРѕї
SK_SHTZ		=	71					--јјДЬКЮ»ЇМеЦК
SK_TSHD		=	103					--јјДЬМмК№»¤¶Ь
SK_TSQY		=	45					--јјДЬМмК№ЖнФё
SK_TJ		=	94					--јјДЬНИѕС
SK_XZY		=	97					--јјДЬРЎЦОУъ
SK_XLZH		=	100					--јјДЬРДБйЦ®»р
SK_ZZZH		=	119					--јјДЬЧзЦдЦ®»р
SK_SMYB		=	73					--јјДЬЙбГьТ»І«
SK_YS		=	123					--јјДЬТюЙн
--SK_GZ		=	86					--јјДЬ№нХ¶
SK_MB		=	88					--јјДЬВй±Ф
SK_DB		=	87					--јјДЬ¶ѕпЪ
--SK_JD		=	78					јјДЬЅв¶ѕ
--SK_ZJCM		=	79					јјДЬЦХј«ґМГ¤
--SK_ZHZD		=	80					јјДЬХЪ»¤Ц®¶Ь
SK_ZJFT		=	110					--јјДЬѕЈј¬Ц®¶Ь
--SK_BSHD		=	82					јјДЬ±щЛЄ»¤¶Ь
SK_HXDJ		=	111					--јјДЬ»ШРэ¶Ь»ч
SK_HXQJ		=	92					--јјДЬезРЗЗї»ч
SK_HQSL		=	78					--јјДЬ»рЗ№КмБ·
--SK_JLHY		=	86					--јјДЬѕ«Б¶»рТ©
--SK_RDGJ		=	87					--јјДЬИхµг№Ґ»ч
SK_BT		=	96					--јјДЬ±©Н·
SK_SY		=	80					--јјДЬЙсУУ
--SK_QY		=	90					јјДЬЖнФё
SK_ZF		=	91					--јјДЬЧЈёЈ
SK_HFS		=	98					--јјДЬ»ШёґКх
SK_DHFS		=	118					--јјДЬґу»ШёґКх
--SK_LYZY		=	94					јјДЬБТСжЦ®Тн
--SK_SHZG		=	95					јјДЬКҐ»рЦ®№в
--SK_SZWZ		=	96					јјДЬКҐЦ°ОЖХВ
--SK_XYZG		=	97					јјДЬРТФЛЦ®№в

SK_SYZY		=	116					--јјДЬКҐСЫЦ®Тн
SK_AYZZ		=	105					--јјДЬ°µУ°Ц®ХВ
--SK_CLCY		=	101					јјДЬґФБЦґ©ФЅ
--SK_HYPS		=	102					јјДЬ»рСжЕзЙд
SK_JSSL		=	62					--јјДЬЅЈКхКмБ·
SK_GTYZ		=	63					--јјДЬёЦМъТвЦѕ
SK_QHTZ		=	64					--јјДЬЗї»ЇМеЦК
SK_LQHB		=	65					--јјДЬБйЗЙ»Ш±Ь
SK_JDZZ		=	66					--јјДЬЅЈµАЧЁЧў
SK_HYZ		=	81					--јјДЬ»ГУ°Х¶
SK_ZJ		=	82					--јјДЬЦШ»ч
SK_MNRX		=	68					--јјДЬВщЕЈИИСЄ
SK_SWZQ		=	83					--јјДЬКЮНхЦ®И­
SK_HYS		=	69					--јјДЬ»ГУ°ЙБ
SK_PXKG		=	70					--јјДЬЖЖСЄїс№Ґ
SK_GWZ		=	86					--јјДЬ№нОиХ¶
SK_TZHF		=	72					--јјДЬМеЦК»Шёґ
SK_JFB		=	75					--јјДЬјІ·зІЅ
SK_YY		=	89					--јјДЬУҐСЫ
SK_LDC		=	91					--јјДЬБФµ¶ґМ
SK_JSJC		=	79					--јјДЬѕ«ЙсјУіЦ
SK_XLCZ		=	99					--јјДЬРДБйіеЧІ
SK_BDJ		=	93					--јјДЬ±щ¶іјэ
SK_LRWZ		=	77					--јјДЬБФИЛО±Ч°
SK_SJ		=	95					--јјДЬКЦѕС
SK_SDBZ		=	120					--јјДЬЙБ¶г±ЪХП
SK_SYNZ		=	121					--јјДЬЙоФЁДаХУ
SK_XLPZ		=	106					--јјДЬРДБйЖБХП
SK_FH		=	124					--јјДЬёґ»о
ITEM_RELIFE	=	3143						--ёґ»ојјДЬПыєДОпЖ·

SK_TTCB		=	125					--јјДЬНјМЪіз°Э
SK_DYYJ		=	126					--јјДЬµЇТ©СРѕї
SK_JR		=	210					--јјДЬјбИН
SK_SL		=	211					--јјДЬЛіБч
SK_BKZJ		=	212					--јјДЬ±ґїЗЧ°јЧ
SK_JF		=	213					--јјДЬм«·з
SK_LJ		=	214					--јјДЬАЧ»ч
SK_HZCR		=	215					--јјДЬєЈФеІшИЖ
SK_BKCJ		=	216					--јјДЬ±ґїЗіе»ч
SK_SF		=	217					--јјДЬЛі·з
SK_XW		=	218					--јјДЬдцОР
SK_MW		=	219					--јјДЬГФОн
SK_LM		=	220					--јјДЬАЧД»
SK_PJ		=	222					--јјДЬЖЖјЧ
SK_FNQ		=	223					--јјДЬ·ЬЖр
SK_DJ		=	224					--јјДЬ¶ѕјэ
SK_SHPF		=	225					--јјДЬКЇ»ЇЖ¤·ф
SK_HPSL		=	226					--јјДЬ»рЕЪКмБ·
SK_JBJG		=	227					--јјДЬјЧ°ејУ№М
SK_CFS		=	228					--јјДЬІЩ·«Кх
SK_CTQH		=	229					--јјДЬґ¬МеЗї»Ї
SK_BJCR		=	230					--јјДЬІ№ёшА©ИЭ
SK_BY		=	231					--јјДЬІ¶Уг
SK_DL		=	232					--јјДЬґтАМ
SK_SWCX		=	234						--јјДЬЛАНці°Р¦
SK_XN		=	235					--јјДЬСЄЕ­
SK_NT		=	236					--јјДЬДаМ¶
SK_DIZ		=	237					--јјДЬµШХр
SK_XIK		=	238					--јјДЬРЧїі
SK_BIW		=	239					--јјДЬ±щОЗ
SK_Fer		=	240					--јјДЬ·зИР
SK_BAT		=	241					--јјДЬ°ЪМЇ
SK_CHF		=	242					--јјДЬі°·н
SK_PAX		=	243					--јјДЬЕШПш
SK_FUZ		=	244					--јјДЬёґЦЖ
SK_HZTX		=	245					--јјДЬєЈФеН»П®
SK_SMDJ		=	246					--јјДЬЛ®Дёµз»ч
SK_WZXF		=	247					--јјДЬОЪФфРэ·з
SK_SYZM		=	248					--јјДЬциУгЦВГьТ»»ч
SK_KDZB		=	249					--јјДЬтттЅЧФ±¬
SK_SHJNY	=	250					--јјДЬЙП№Е1
SK_SHJNE	=	251					--јјДЬЙП№Е2
SK_BOMB  	=	252					--јјДЬ±¬ХЁ

SK_BLYZ		=	255					--±щБйУУЧф
SK_MLCH		=	256					--Д§Б¦ґЯ»Ї


SK_JSDD		=	257					--Ѕ©К¬ЖХНЁ№Ґ»ч
SK_JSMF		=	258					--Ѕ©К¬Ф¶іМ№Ґ»ч 
SK_HDSMF	=       259					--єьµАКїД§·Ё
SK_HYMF		=       260					--єьСэД§·Ё                                                        
SK_HYMH		=	261					--єьСэД§·Ё-чИ»у                       
SK_HXMF		=	262					--єьПЙД§·Ё
SK_HXFWMF	=	263					--єьПЙ·¶О§Д§·Ё
SK_TZJSMagic	=	264					--јАК¦Д§·Ё№Ґ»ч
SK_QZMF		=	265					--Зхі¤Д§·Ё
SK_XZSB		=	266					--РэЧЄ»УОиКЦ±Ы
SK_QX		=	267					--И®РҐ
SK_SD		=	268					--К¬¶ѕ
SK_BLGJ		=	269					--±щБъ№Ґ»ч

SK_JXJBFW	=	270					--»ъРµѕЮ±ш·¶О§
SK_CRXSF	=	271					--і¤Р·ИЮКшёї
SK_SXZZZ	=	272					--Л®ПЙЧУЧзЦд
SK_XBLBD	=	273					--РЎ±щБъ±щ¶і
SK_BHSD		=	274					--±щБъИєМе±щ¶і
SK_HLKJ		=	275					--єЪБъїЦѕе
SK_HLLM		=	276					--єЪБъ-БъГщ
SK_BlackLY	=	277					--єЪБъ-БъТн
SK_BlackLX	=	278					--єЪБъ-БъПў
SK_BlackHeal	=	279					--ЖрЛА»ШЙъ
SK_JLFT	=	280					--ѕ«БйёЅМе
SK_SHAR		=	284					--јјДЬ»ГУ°Х¶
SK_JGS =	290					--ѕ«БйёЅМе
SK_JLZB	=	311					--ѕ«БйЧФ±¬	
SK_JLTX1			=	312				--ѕ«БйМШР§1	
SK_JLTX2			=	313				--ѕ«БйМШР§2	
SK_JLTX3			=	314				--ѕ«БйМШР§3	
SK_JLTX4			=	315				--ѕ«БйМШР§4	
SK_JLTX5			=	316				--ѕ«БйМШР§5	
SK_JLTX6			=	317				--ѕ«БйМШР§6	
SK_JLTX7			=	318				--ѕ«БйМШР§7	
SK_JLTX8			=	319				--ѕ«БйМШР§8	


SK_KS			=	200					--јјДЬїіКч
SK_WK			=	201					--јјДЬНЪїу
SK_PKQX			=	254					--јјДЬЗАРЮ
SK_ZHIZAO		=	338				----------------ЦЖФм
SK_PENGREN		=	339				----------------ЦэФм
SK_ZHUZAO		=	340				----------------Елвї
SK_FENJIE		=	341				----------------·ЦЅв
SK_WYZ			=	453				----------------rebirth skills
SK_CYN			=	454				----------------rebirth skills
SK_BSJ			=	455				----------------rebirth skills
SK_HLP			=	456				---------------rebirth skills
SK_EMZZ			=	457				----------------rebirth skills
SK_SSSP			=	458				----------------rebirth skills
SK_ZSSL			=	459				----------------ЧЄЙъЙсБ¦
SK_DS			=	461				----------------јјДЬ¶БКй
SK_QLZX			=	467				----------------З§АпЧ·С°
SK_MLCJ		=	494
SK_FNZ 		=	496
SK_HW 		=	497
SK_NLD	 	=	498
SK_NLSFW	=	499


FCARDID 	=	7470


STATE_RS	=	1					--burn 33 per sec
STATE_HFWQ	=	2					-- healing springИЄ
STATE_ZZZH	=	3					--cursed fire
STATE_ZD	=	4					--poison 12 damage
STATE_SDBZ	=	5					--counterguard ( watever that is)
STATE_SYZY	=	6					--true sight
STATE_SYNZ	=	7					--abyss mire
STATE_LQ	=	9					--lignting curtain
STATE_WQ	=	10					--fog 
STATE_FQ	=	11					--pretty but not as bright
STATE_XW	=	12					--whirlpool
STATE_MW	=	13					--fog
STATE_LM	=	14					--lightning curtain 100 dam
STATE_CHF	=	15					--taunt
STATE_BOMB	=	16					--watermine explosion
STATE_PKMNYS	=	17					--Bull Potion

STATE_PKZDYS	=	19					--Battle Potion
STATE_PKKBYS	=	20					--Beserk Potion
STATE_DPSL	=	21					--Sheild Mastery
STATE_HX	=	22					--Tiger Roar
STATE_JJSL	=	23					--Great Sword Mastery
STATE_KB	=	24					--berserk
STATE_FSZ	=	84					--dual hand weapon bonus
STATE_JNJZ	=	26					--ЧґМ¬јјДЬЅыЦ№
STATE_ZMYJ	=	27					--ЧґМ¬ЦВГьТ»»ч
STATE_CLXZ	=	28					--ЧґМ¬ґФБЦРРХЯ
STATE_FZLZ	=	29					--ЧґМ¬·зЦ®БмЦч
STATE_GJSL	=	30					--ЧґМ¬№­јэКмБ·
STATE_HYS	=	31					--ЧґМ¬»ГУ°ЙБ

STATE_JSFB	=	33					--ЧґМ¬ј«ЛЩ·з±©
STATE_JFZ	=	34					--ЧґМ¬јІ·зХ¶
STATE_QXYJ	=	35					--ЧґМ¬З№РµСРѕї
STATE_SHTZ	=	36					--ЧґМ¬КЮ»ЇМеЦК
STATE_TSHD	=	37					--ЧґМ¬МмК№»¤¶Ь
STATE_TSQY	=	38					--ЧґМ¬МмК№ЖнФё
STATE_TJ	=	39					--ЧґМ¬НИѕС
STATE_XLZH	=	40					--ЧґМ¬РДБйЦ®»р
STATE_PKJSYS	=	41					--ЧґМ¬ѕ«ЙсТ©Л®
STATE_PKSFYS	=	42					--ЧґМ¬КЇ·фТ©Л®
STATE_YS	=	43					--ЧґМ¬ТюЙн
STATE_PKJZYS	=	44					--ЧґМ¬ѕ«ЧјТ©Л®
STATE_XY	=	45					--ЧґМ¬СЈФО
STATE_MB	=	46					--ЧґМ¬Вй±Ф
STATE_PKWD	=	47					--ЧґМ¬ОЮµР
STATE_SBJYGZ	=	48				--ЧґМ¬ѕ­Сй№ыЧУ
STATE_SBBLGZ	=	49				--ЧґМ¬µфБП№ыЧУ
STATE_MLCH	=	50				--ЧґМ¬Д§Б¦ґЯ»Ї
STATE_BSHD	=	51					--ЧґМ¬±щЛЄ»¤¶Ь
STATE_BD	=	52					--ЧґМ¬±щ¶і

STATE_HQSL	=	53					--ЧґМ¬»рЗ№КмБ·
STATE_JLHY	=	54					--ЧґМ¬ѕ«Б¶»рТ©
STATE_RDGJ	=	55					--ЧґМ¬Ихµг№Ґ»ч
STATE_SY	=	56					--ЧґМ¬ЙсУУ
STATE_QY	=	57					--ЧґМ¬ЖнФё
STATE_ZF	=	58					--ЧґМ¬ЧЈёЈ
STATE_LYZY	=	59					--ЧґМ¬БТСжЦ®Тн
STATE_SHZG	=	60					--ЧґМ¬КҐ»рЦ®№в
STATE_SZWZ	=	61					--ЧґМ¬КҐЦ°ОЖХВ
STATE_XYZG	=	62					--ЧґМ¬РТФЛЦ®№в
STATE_PKDYK	=	63					--ЧґМ¬µЇТ©ївГ»АІ
STATE_PKLC	=	64					--ЧґМ¬БёІЦГ»АІ
STATE_GJJZ	=	65					--ЧґМ¬№Ґ»чЅыЦ№
STATE_CLCY	=	66					--ЧґМ¬ґФБЦґ©ФЅ

STATE_SJ	=	68					--ЧґМ¬КЦѕС
STATE_JSSL	=	69					--ЧґМ¬ЅЈКхКмБ·
STATE_GTYZ	=	70					--ЧґМ¬ёЦМъТвЦѕ
STATE_QHTZ	=	71					--ЧґМ¬Зї»ЇМеЦК
STATE_LQHB	=	72					--ЧґМ¬БйЗЙ»Ш±Ь
STATE_JDZZ	=	73					--ЧґМ¬ЅЈµАЧЁЧў
STATE_MNRX	=	74					--ЧґМ¬ВщЕЈИИСЄ
STATE_HYS	=	75					--ЧґМ¬»ГУ°ЙБ
STATE_PXKG	=	76					--ЧґМ¬ЖЖСЄїс№Ґ
STATE_TZHF	=	77					--ЧґМ¬МеЦК»Шёґ
STATE_JFB	=	78					--ЧґМ¬јІ·зІЅ
STATE_YY	=	79					--ЧґМ¬УҐСЫ
STATE_JSJC	=	80					--ЧґМ¬ѕ«ЙсјУіЦ
STATE_BDJ	=	81					--ЧґМ¬±щ¶іјэ
STATE_LRWZ	=	82					--ЧґМ¬БФИЛО±Ч°

STATE_MFD	=	83					--ЧґМ¬Д§·Ё¶Ь
STATE_JY	=	85					--ЧґМ¬Ѕ»ТЧ
STATE_JF	=	86					--ЧґМ¬м«·з
STATE_HZCR	=	87					--ЧґМ¬єЈФеІшИЖ
STATE_SF	=	88					--ЧґМ¬Лі·з
STATE_PJ	=	89				--ЧґМ¬ЖЖјЧ
STATE_FNQ	=	90				--ЧґМ¬·ЬЖр
STATE_DJ	=	91				--ЧґМ¬¶ѕјэ
STATE_SHPF	=	92				--ЧґМ¬КЇ»ЇЖ¤·ф
STATE_XN	=	93				--ЧґМ¬СЄЕ­
STATE_NT	=	94				--ЧґМ¬ДаМ¶
STATE_DIZ	=	95				--ЧґМ¬µШХр
STATE_BIW	=	96				--ЧґМ¬±щОЗ
STATE_MCK	=	97				--ЧґМ¬К№УГДѕІДА¦
STATE_SWCX	=	98				--ЧґМ¬ЛАНці°Р¦
STATE_BAT	=	99				--ЧґМ¬°ЪМЇ


STATE_YSLLQH		=	102				--Т©Л®Б¦БїјУіЙ
STATE_YSMJQH		=	103				--Т©Л®ГфЅЭјУіЙ
STATE_YSLQQH		=	104				--Т©Л®ЧЁЧўјУіЙ
STATE_YSTZQH		=	105				--Т©Л®МеЦКјУіЙ
STATE_YSJSQH		=	106				--Т©Л®ѕ«ЙсјУіЙ
STATE_JLGLJB		=	107				--ѕ«Б¶іЙ№¦ВКјУ±¶
STATE_HCGLJB		=	108				--єПіЙіЙ№¦ВКјУ±¶
STATE_DENGLONG		=	109				--µЖБэЧґМ¬
STATE_MEIGUI		=	110				--Гµ№е»ЁЧґМ¬
STATE_YPCXHFSM		=	111				--Т©Ж·іЦРш»ШёґЙъГь
STATE_CFZJiu1		=	112				--ґє·зХтѕЖ1
STATE_CFZJiu2		=	113				--ґє·зХтѕЖ2
STATE_JSDD		=	114				--Ѕ©К¬ґш¶ѕ
STATE_HYMH		=	115				--єьСэД§·Ё-чИ»у
STATE_HLKJ		=	116				--єЪБъ-їЦѕе
STATE_HLLM		=	117				--єЪБъ-БъГщ
STATE_CRXSF		=	118				--і¤ИЮР·-Кшёї
STATE_MarchElf		=	119				--ИэФВѕ«Бй
STATE_YSMspd		=	120				--Т©Л®ЛЩ¶ИЗї»Ї
STATE_YSBoatMspd	=	121				--Т©Л®ґ¬Ц»ЛЩ¶ИЗї»Ї
STATE_YSBoatDEF		=	122				--Т©Л®ґ¬Ц»·АУщЗї»Ї
STATE_TTISW		=	123				--ґє·зХтЧґМ¬
STATE_PKSBYS		=	124				--ЧґМ¬°¬ІЭЈЁЙБ±ЬТ©Л®Ј©
STATE_BlackHX		=	125				--єЪБъ»ўРҐ
STATE_ZDSBJYGZ		=	127				--Чй¶Уѕ­СйЧґМ¬
STATE_KUANGZ			=	128				--їсХЅКх
STATE_QUANS			=	129				--И«ЙнЧ°јЧ
STATE_QINGZ			=	130				--ЗбЧ°Т©Л®
STATE_JLDS			=	131				--іиОп¶ѕКЙ
STATE_JLFT1			=	132				--ѕ«БйёЅМе
STATE_CJBBT			=	133				--і¬ИЛ°ф°фМЗ
STATE_JRQKL			=	134				--ѕЮИЛЗЙїЛБ¦
STATE_WLRSD			=	135				--НцБйИјЙХµЇ
STATE_WLJS			=	136				--НцБйјУЛЩ
STATE_YWGJ			=	142				--СМОн№Ґ»ч
STATE_KLCS			=	138				--чјчГІшЙн
STATE_KLHD			=	139				--чјчГ»¤¶Ь
STATE_WLCX			=	140				--НцБйі°Р¦
STATE_ZZZX			=	141				--ЧзЦдЦ®СЄ
STATE_WLDB			=	142				--НцБй¶ѕпЪ
STATE_WLJY			=	143				--НцБй»чФО
STATE_WLXW			=	137				--НцБйдцОР
STATE_WLNH			=	146				--НцБйЕ­єр
STATE_JLJSGZ			=	147				--ѕ«БйЛ«±¶іЙі¤	
STATE_JLTX1			=	148				--ѕ«БйМШР§1	
STATE_JLTX2			=	149				--ѕ«БйМШР§2	
STATE_JLTX3			=	150				--ѕ«БйМШР§3	
STATE_JLTX4			=	151				--ѕ«БйМШР§4	
STATE_JLTX5			=	152				--ѕ«БйМШР§5	
STATE_JLTX6			=	153				--ѕ«БйМШР§6	
STATE_JLTX7			=	154				--ѕ«БйМШР§7	
STATE_JLTX8			=	155				--ѕ«БйМШР§8	
STATE_CZZX			=	156				--ґїХжЦ®РД
STATE_KALA			=	157				--їЁА­µДК¤Аы
STATE_5MBS			=	158				--5Гл±ШЛА
STATE_ShanGD			=	159				--ЙБ№вµЇ
STATE_FuShe			=	160				--·шЙд
STATE_PSQ			=	161				--ґ¬Ц»ЕзЙдЖч
STATE_PRD			=	162				--ЖЖИРµЇ
STATE_CZRSD			=	163				--ґ¬Ц»ИјЙХµЇ
STATE_XUEYU			=	165				--ЧоґуHPОпАнµЦї№Аа
STATE_MANTOU			=	166				--ВшН·јУ№ҐАа
STATE_NVER			=	167				--Е®¶щємјУѕ«Аа
STATE_JLFT2			=	168				--fairy of str
STATE_JLFT3			=	169				--fairy of con
STATE_JLFT4			=	170				--fairy of spr
STATE_JLFT5			=	171				--fairy of acc
STATE_JLFT6			=	172				--fairy of agi
STATE_JLFT7			=	173				--fairy
STATE_JLFT8			=	174				--fairy
STATE_FSZQ                      =       176                             --break armour
STATE_ZYZZ                      =       177                             --deaf
STATE_DZFS                      =       178                             --earthquake
STATE_LD                        =       179                             --electricity, slows movement
STATE_HYFS                      =       180                             --red circle and dots with crossbones, makes me untouchable
STATE_CZQX                      =       181                             --invisible
STATE_LEIDA                     =       182                             --true sight
STATE_FSD                       =       183                             --poison no damage
STATE_Slrs                      =       184                             --burn (like magma)
STATE_Myrs                      =       185                             --burn again
STATE_LST                       =       186                             --slow, from baby ice dragons, ice around feet
STATE_HFZQ                      =       187                             --rebirth cleric skill
STATE_EMYY                      =       188                             --rebirth sm skill? cant get animation to work
STATE_YNZL                      =       189                             --rebirth voy skill
STATE_JHKML                     =       190                             --rebirth champ skill
STATE_BDH                       =       191                             --±щ¶і»·
STATE_DHZ			=	194				--µ°»ЖфХјУ·АУщ
STATE_DSZ			=	195				--¶№ЙіфХјУЛЩ
STATE_APPLE			=	196					----------------Л«±¶¶БКйР§ВК
STATE_GOLD			=	197					--------------АПЧУ°®ёёЗЧ
-----------------198
STATE_SPHMHF			=	199				--»єВэ»Шёґ·ЁБ¦Аа
STATE_BBRING1			=	200				--85BBЕЈЅдјУіЙ
STATE_BBRING2    		= 	201
STATE_BBRING3    		= 	202
STATE_BBRING4     		= 	203
STATE_BBRING5  			= 	204
STATE_BBRING6   	  	=	205
STATE_PET_SHARPSHOOTER = 206
STATE_RAPIDDRUG			=	207				--ЗбЧ°Т©Л®
STATE_WARSIT			=	208				--ХЅїсТ©јБ
STATE_DARKDRESS			=	209				--РюБъЧ°јЧ
STATE_DEMON			=	210				--ёЅД§ХлјБ
STATE_GREATSH			=	211				--ѕЮјЧХлјБ
STATE_MIRAGE			=	212				--»ГБйХлјБ
STATE_DEVOTE			=	213				--ЧЁЧўХлјБ
STATE_VIGOUR			=	214				--Б¦їсХлјБ
STATE_SHIPDRIVE			=	215				--ґ¬Ц»¶ЇБ¦·«
STATE_SHIPRECOVER		=	216				--ґ¬Ц»·АУщјЧ
STATE_BKDB			=	217				--І»їЙИлУь
STATE_XZDLL			=	218				--The Strenght in the Heart

STATE_MOWQ			=	219				-- devils curse part b
STATE_TELF			=	221				-- Thunder Spirit
STATE_LELF			=	222				-- Light Spirit
STATE_DELF			=	223				-- Darkness Spirit
STATE_CAPE1			=	234				
STATE_CAPE2			=	235				
STATE_CAPE3			=	236				
STATE_CAPE4			=	237		
VIPNECKY	=	238
STATE_CAPE5			=	239				
STATE_CAPE6			=	240				
STATE_CAPE7			=	241				
STATE_CAPE8			=	242
STATE_CAPE9			=	243				
STATE_CAPE10			=	244				
STATE_CAPE11			=	245				
STATE_CAPE12			=	246		












dmg = 0					--ЙЛє¦
sus = 1					--№Ґ»чЧґМ¬
hpdmg = 0					--hpЙЛє¦
dmgsa = 1					--ЙЛє¦±¶Кэ
dis = 0					--ѕаАл
dis_eff = 0					--ѕаАлР§№ы
sklv = 0					--јјДЬµИј¶

ItemAttr_Rad	=	 { } 
ItemAttr_Rad	[	0	]	=	0	--	-1	ОЮМШКвКфРФјУіЙ
ItemAttr_Rad	[	1	]	=	10	--	ВщБ¦Ц®	+str
ItemAttr_Rad	[	2	]	=	10	--	±ШЦРЦ®	+dex
ItemAttr_Rad	[	3	]	=	10	--	ЗїМеЦ®	+con
ItemAttr_Rad	[	4	]	=	5	--	јІ·зЦ®	+agi
ItemAttr_Rad	[	5	]	=	10	--	КҐПНЦ®	+sta
ItemAttr_Rad	[	6	]	=	0	--	-1	0
ItemAttr_Rad	[	7	]	=	0	--	-1	0
ItemAttr_Rad	[	8	]	=	0	--	-1	0
ItemAttr_Rad	[	9	]	=	0	--	-1	0
ItemAttr_Rad	[	10	]	=	0	--	-1	0
ItemAttr_Rad	[	11	]	=	10	--	єЪБъЦ®	+str +dex
ItemAttr_Rad	[	12	]	=	10	--	ємБъЦ®	+str +con
ItemAttr_Rad	[	13	]	=	5	--	А¶БъЦ®	+str +agi 
ItemAttr_Rad	[	14	]	=	10	--	ТшБъЦ®	+str +sta
ItemAttr_Rad	[	15	]	=	10	--	°ЩБъЦ®	+dex +con
ItemAttr_Rad	[	16	]	=	5	--	ВМБъЦ®	+dex +agi
ItemAttr_Rad	[	17	]	=	10	--	»ЖБъЦ®	+dex +sta
ItemAttr_Rad	[	18	]	=	5	--	ЅрБъЦ®	+con +agi
ItemAttr_Rad	[	19	]	=	10	--	КҐБъЦ®	+con +sta
ItemAttr_Rad	[	20	]	=	5	--	Д§БъЦ®	+agi +sta
ItemAttr_Rad	[	21	]	=	0	--	-1	0
ItemAttr_Rad	[	22	]	=	0	--	-1	0
ItemAttr_Rad	[	23	]	=	0	--	-1	0
ItemAttr_Rad	[	24	]	=	0	--	-1	0
ItemAttr_Rad	[	25	]	=	0	--	-1	0
ItemAttr_Rad	[	26	]	=	0	--	-1	0
ItemAttr_Rad	[	27	]	=	0	--	-1	0
ItemAttr_Rad	[	28	]	=	0	--	-1	0
ItemAttr_Rad	[	29	]	=	0	--	-1	0
ItemAttr_Rad	[	30	]	=	0	--	-1	0
ItemAttr_Rad	[	31	]	=	0	--	-1	0
ItemAttr_Rad	[	32	]	=	0	--	-1	0
ItemAttr_Rad	[	33	]	=	0	--	-1	0
ItemAttr_Rad	[	34	]	=	0	--	-1	0
ItemAttr_Rad	[	35	]	=	0	--	-1	0
ItemAttr_Rad	[	36	]	=	0	--	-1	0
ItemAttr_Rad	[	37	]	=	0	--	-1	0
ItemAttr_Rad	[	38	]	=	0	--	-1	0
ItemAttr_Rad	[	39	]	=	0	--	-1	0
ItemAttr_Rad	[	40	]	=	0	--	-1	0
ItemAttr_Rad	[	41	]	=	0	--	-1	0
ItemAttr_Rad	[	42	]	=	0	--	-1	0
ItemAttr_Rad	[	43	]	=	0	--	-1	0
ItemAttr_Rad	[	44	]	=	0	--	-1	0
ItemAttr_Rad	[	45	]	=	0	--	-1	0
ItemAttr_Rad	[	46	]	=	0	--	-1	0
ItemAttr_Rad	[	47	]	=	0	--	-1	0
ItemAttr_Rad	[	48	]	=	0	--	-1	0
ItemAttr_Rad	[	49	]	=	0	--	-1	0
ItemAttr_Rad	[	50	]	=	10	--	їЁА­Ц®	+str +dex +con
ItemAttr_Rad	[	51	]	=	5	--	їЁА­Ц®	+str +dex +agi
ItemAttr_Rad	[	52	]	=	10	--	їЁА­Ц®	+str +dex +sta
ItemAttr_Rad	[	53	]	=	5	--	їЁА­Ц®	+str +con +agi
ItemAttr_Rad	[	54	]	=	10	--	їЁА­Ц®	+str +con +sta
ItemAttr_Rad	[	55	]	=	5	--	їЁА­Ц®	+str +agi +sta
ItemAttr_Rad	[	56	]	=	5	--	їЁА­Ц®	+dex +con +agi
ItemAttr_Rad	[	57	]	=	10	--	їЁА­Ц®	+dex +con +sta
ItemAttr_Rad	[	58	]	=	5	--	їЁА­Ц®	+dex +agi +sta
ItemAttr_Rad	[	59	]	=	5	--	їЁА­Ц®	+con +agi +sta
ItemAttr_Rad	[	60	]	=	0	--	-1	0
ItemAttr_Rad	[	61	]	=	0	--	-1	0
ItemAttr_Rad	[	62	]	=	0	--	-1	0
ItemAttr_Rad	[	63	]	=	0	--	-1	0
ItemAttr_Rad	[	64	]	=	0	--	-1	0
ItemAttr_Rad	[	65	]	=	0	--	-1	0
ItemAttr_Rad	[	66	]	=	0	--	-1	0
ItemAttr_Rad	[	67	]	=	0	--	-1	0
ItemAttr_Rad	[	68	]	=	0	--	-1	0
ItemAttr_Rad	[	69	]	=	0	--	-1	0
ItemAttr_Rad	[	70	]	=	0	--	-1	0
ItemAttr_Rad	[	71	]	=	0	--	-1	0
ItemAttr_Rad	[	72	]	=	0	--	-1	0
ItemAttr_Rad	[	73	]	=	0	--	-1	0
ItemAttr_Rad	[	74	]	=	0	--	-1	0
ItemAttr_Rad	[	75	]	=	0	--	-1	0
ItemAttr_Rad	[	76	]	=	0	--	-1	0
ItemAttr_Rad	[	77	]	=	0	--	-1	0
ItemAttr_Rad	[	78	]	=	0	--	-1	0
ItemAttr_Rad	[	79	]	=	0	--	-1	0
ItemAttr_Rad	[	80	]	=	0	--	-1	0
ItemAttr_Rad	[	81	]	=	0	--	-1	0
ItemAttr_Rad	[	82	]	=	0	--	-1	0
ItemAttr_Rad	[	83	]	=	0	--	-1	0
ItemAttr_Rad	[	84	]	=	0	--	-1	0
ItemAttr_Rad	[	85	]	=	0	--	-1	0
ItemAttr_Rad	[	86	]	=	0	--	-1	0
ItemAttr_Rad	[	87	]	=	0	--	-1	0
ItemAttr_Rad	[	88	]	=	0	--	-1	0
ItemAttr_Rad	[	89	]	=	0	--	-1	0
ItemAttr_Rad	[	90	]	=	10	--	О¬¶ыЦ®	 +str +dex +con +agi
ItemAttr_Rad	[	91	]	=	10	--	О¬¶ыЦ®	 +str +dex +con +sta
ItemAttr_Rad	[	92	]	=	10	--	О¬¶ыЦ®	 +str +dex +agi +sta
ItemAttr_Rad	[	93	]	=	10	--	О¬¶ыЦ®	 +str +con +agi +sta
ItemAttr_Rad	[	94	]	=	10	--	О¬¶ыЦ®	 +dex +con +agi +sta
ItemAttr_Rad	[	95	]	=	0	--	-1	0
ItemAttr_Rad	[	96	]	=	0	--	-1	0
ItemAttr_Rad	[	97	]	=	0	--	-1	0
ItemAttr_Rad	[	98	]	=	0	--	-1	0
ItemAttr_Rad	[	99	]	=	0	--	-1	0




--	»ЄАц±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_HLBX_Qua	=	7	 				BaoXiang_HLBX_Mxcount	=	109										

--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_HLBX	=	{}					BaoXiang_HLBX_Rad	=	{}					BaoXiang_HLBX_Count	=	{}			
	BaoXiang_HLBX	[	1	]	=	0004		BaoXiang_HLBX_Rad	[	1	]	=	1		BaoXiang_HLBX_Count	[	1	]	=	1
	BaoXiang_HLBX	[	2	]	=	0005		BaoXiang_HLBX_Rad	[	2	]	=	1		BaoXiang_HLBX_Count	[	2	]	=	1
	BaoXiang_HLBX	[	3	]	=	0006		BaoXiang_HLBX_Rad	[	3	]	=	1		BaoXiang_HLBX_Count	[	3	]	=	1
	BaoXiang_HLBX	[	4	]	=	0015		BaoXiang_HLBX_Rad	[	4	]	=	1		BaoXiang_HLBX_Count	[	4	]	=	1
	BaoXiang_HLBX	[	5	]	=	0016		BaoXiang_HLBX_Rad	[	5	]	=	1		BaoXiang_HLBX_Count	[	5	]	=	1
	BaoXiang_HLBX	[	6	]	=	0017		BaoXiang_HLBX_Rad	[	6	]	=	1		BaoXiang_HLBX_Count	[	6	]	=	1
	BaoXiang_HLBX	[	7	]	=	0039		BaoXiang_HLBX_Rad	[	7	]	=	1		BaoXiang_HLBX_Count	[	7	]	=	1
	BaoXiang_HLBX	[	8	]	=	0040		BaoXiang_HLBX_Rad	[	8	]	=	1		BaoXiang_HLBX_Count	[	8	]	=	1
	BaoXiang_HLBX	[	9	]	=	0041		BaoXiang_HLBX_Rad	[	9	]	=	1		BaoXiang_HLBX_Count	[	9	]	=	1
	BaoXiang_HLBX	[	10	]	=	0076		BaoXiang_HLBX_Rad	[	10	]	=	1		BaoXiang_HLBX_Count	[	10	]	=	1
	BaoXiang_HLBX	[	11	]	=	0077		BaoXiang_HLBX_Rad	[	11	]	=	1		BaoXiang_HLBX_Count	[	11	]	=	1
	BaoXiang_HLBX	[	12	]	=	0078		BaoXiang_HLBX_Rad	[	12	]	=	1		BaoXiang_HLBX_Count	[	12	]	=	1
	BaoXiang_HLBX	[	13	]	=	0100		BaoXiang_HLBX_Rad	[	13	]	=	1		BaoXiang_HLBX_Count	[	13	]	=	1
	BaoXiang_HLBX	[	14	]	=	0103		BaoXiang_HLBX_Rad	[	14	]	=	1		BaoXiang_HLBX_Count	[	14	]	=	1
	BaoXiang_HLBX	[	15	]	=	4303		BaoXiang_HLBX_Rad	[	15	]	=	1		BaoXiang_HLBX_Count	[	15	]	=	1
	BaoXiang_HLBX	[	16	]	=	0101		BaoXiang_HLBX_Rad	[	16	]	=	1		BaoXiang_HLBX_Count	[	16	]	=	1
	BaoXiang_HLBX	[	17	]	=	0102		BaoXiang_HLBX_Rad	[	17	]	=	1		BaoXiang_HLBX_Count	[	17	]	=	1
	BaoXiang_HLBX	[	18	]	=	4300		BaoXiang_HLBX_Rad	[	18	]	=	1		BaoXiang_HLBX_Count	[	18	]	=	1
	BaoXiang_HLBX	[	19	]	=	3122		BaoXiang_HLBX_Rad	[	19	]	=	15		BaoXiang_HLBX_Count	[	19	]	=	20
	BaoXiang_HLBX	[	20	]	=	3123		BaoXiang_HLBX_Rad	[	20	]	=	14		BaoXiang_HLBX_Count	[	20	]	=	15
	BaoXiang_HLBX	[	21	]	=	3124		BaoXiang_HLBX_Rad	[	21	]	=	13		BaoXiang_HLBX_Count	[	21	]	=	10
	BaoXiang_HLBX	[	22	]	=	3125		BaoXiang_HLBX_Rad	[	22	]	=	12		BaoXiang_HLBX_Count	[	22	]	=	9
	BaoXiang_HLBX	[	23	]	=	3126		BaoXiang_HLBX_Rad	[	23	]	=	11		BaoXiang_HLBX_Count	[	23	]	=	8
	BaoXiang_HLBX	[	24	]	=	3127		BaoXiang_HLBX_Rad	[	24	]	=	10		BaoXiang_HLBX_Count	[	24	]	=	7
	BaoXiang_HLBX	[	25	]	=	3128		BaoXiang_HLBX_Rad	[	25	]	=	9		BaoXiang_HLBX_Count	[	25	]	=	6
	BaoXiang_HLBX	[	26	]	=	3133		BaoXiang_HLBX_Rad	[	26	]	=	8		BaoXiang_HLBX_Count	[	26	]	=	10
	BaoXiang_HLBX	[	27	]	=	3134		BaoXiang_HLBX_Rad	[	27	]	=	7		BaoXiang_HLBX_Count	[	27	]	=	9
	BaoXiang_HLBX	[	28	]	=	3135		BaoXiang_HLBX_Rad	[	28	]	=	6		BaoXiang_HLBX_Count	[	28	]	=	8
	BaoXiang_HLBX	[	29	]	=	3136		BaoXiang_HLBX_Rad	[	29	]	=	5		BaoXiang_HLBX_Count	[	29	]	=	7
	BaoXiang_HLBX	[	30	]	=	3137		BaoXiang_HLBX_Rad	[	30	]	=	4		BaoXiang_HLBX_Count	[	30	]	=	6
	BaoXiang_HLBX	[	31	]	=	3138		BaoXiang_HLBX_Rad	[	31	]	=	3		BaoXiang_HLBX_Count	[	31	]	=	5
	BaoXiang_HLBX	[	32	]	=	3139		BaoXiang_HLBX_Rad	[	32	]	=	2		BaoXiang_HLBX_Count	[	32	]	=	4
	BaoXiang_HLBX	[	33	]	=	3140		BaoXiang_HLBX_Rad	[	33	]	=	1		BaoXiang_HLBX_Count	[	33	]	=	3
	BaoXiang_HLBX	[	34	]	=	0293		BaoXiang_HLBX_Rad	[	34	]	=	1		BaoXiang_HLBX_Count	[	34	]	=	1
	BaoXiang_HLBX	[	35	]	=	0295		BaoXiang_HLBX_Rad	[	35	]	=	1		BaoXiang_HLBX_Count	[	35	]	=	1
	BaoXiang_HLBX	[	36	]	=	0299		BaoXiang_HLBX_Rad	[	36	]	=	1		BaoXiang_HLBX_Count	[	36	]	=	1
	BaoXiang_HLBX	[	37	]	=	0300		BaoXiang_HLBX_Rad	[	37	]	=	1		BaoXiang_HLBX_Count	[	37	]	=	1
	BaoXiang_HLBX	[	38	]	=	0301		BaoXiang_HLBX_Rad	[	38	]	=	1		BaoXiang_HLBX_Count	[	38	]	=	1
	BaoXiang_HLBX	[	39	]	=	0302		BaoXiang_HLBX_Rad	[	39	]	=	1		BaoXiang_HLBX_Count	[	39	]	=	1
	BaoXiang_HLBX	[	40	]	=	0307		BaoXiang_HLBX_Rad	[	40	]	=	1		BaoXiang_HLBX_Count	[	40	]	=	1
	BaoXiang_HLBX	[	41	]	=	0310		BaoXiang_HLBX_Rad	[	41	]	=	1		BaoXiang_HLBX_Count	[	41	]	=	1
	BaoXiang_HLBX	[	42	]	=	0312		BaoXiang_HLBX_Rad	[	42	]	=	1		BaoXiang_HLBX_Count	[	42	]	=	1
	BaoXiang_HLBX	[	43	]	=	0314		BaoXiang_HLBX_Rad	[	43	]	=	1		BaoXiang_HLBX_Count	[	43	]	=	1
	BaoXiang_HLBX	[	44	]	=	0315		BaoXiang_HLBX_Rad	[	44	]	=	1		BaoXiang_HLBX_Count	[	44	]	=	1
	BaoXiang_HLBX	[	45	]	=	0316		BaoXiang_HLBX_Rad	[	45	]	=	1		BaoXiang_HLBX_Count	[	45	]	=	1
	BaoXiang_HLBX	[	46	]	=	0339		BaoXiang_HLBX_Rad	[	46	]	=	1		BaoXiang_HLBX_Count	[	46	]	=	1
	BaoXiang_HLBX	[	47	]	=	0341		BaoXiang_HLBX_Rad	[	47	]	=	1		BaoXiang_HLBX_Count	[	47	]	=	1
	BaoXiang_HLBX	[	48	]	=	0342		BaoXiang_HLBX_Rad	[	48	]	=	1		BaoXiang_HLBX_Count	[	48	]	=	1
	BaoXiang_HLBX	[	49	]	=	0343		BaoXiang_HLBX_Rad	[	49	]	=	1		BaoXiang_HLBX_Count	[	49	]	=	1
	BaoXiang_HLBX	[	50	]	=	0344		BaoXiang_HLBX_Rad	[	50	]	=	1		BaoXiang_HLBX_Count	[	50	]	=	1
	BaoXiang_HLBX	[	51	]	=	0345		BaoXiang_HLBX_Rad	[	51	]	=	1		BaoXiang_HLBX_Count	[	51	]	=	1
	BaoXiang_HLBX	[	52	]	=	0350		BaoXiang_HLBX_Rad	[	52	]	=	1		BaoXiang_HLBX_Count	[	52	]	=	1
	BaoXiang_HLBX	[	53	]	=	0353		BaoXiang_HLBX_Rad	[	53	]	=	1		BaoXiang_HLBX_Count	[	53	]	=	1
	BaoXiang_HLBX	[	54	]	=	0354		BaoXiang_HLBX_Rad	[	54	]	=	1		BaoXiang_HLBX_Count	[	54	]	=	1
	BaoXiang_HLBX	[	55	]	=	0355		BaoXiang_HLBX_Rad	[	55	]	=	1		BaoXiang_HLBX_Count	[	55	]	=	1
	BaoXiang_HLBX	[	56	]	=	0356		BaoXiang_HLBX_Rad	[	56	]	=	1		BaoXiang_HLBX_Count	[	56	]	=	1
	BaoXiang_HLBX	[	57	]	=	0357		BaoXiang_HLBX_Rad	[	57	]	=	1		BaoXiang_HLBX_Count	[	57	]	=	1
	BaoXiang_HLBX	[	58	]	=	0358		BaoXiang_HLBX_Rad	[	58	]	=	1		BaoXiang_HLBX_Count	[	58	]	=	1
	BaoXiang_HLBX	[	59	]	=	0361		BaoXiang_HLBX_Rad	[	59	]	=	1		BaoXiang_HLBX_Count	[	59	]	=	1
	BaoXiang_HLBX	[	60	]	=	0362		BaoXiang_HLBX_Rad	[	60	]	=	1		BaoXiang_HLBX_Count	[	60	]	=	1
	BaoXiang_HLBX	[	61	]	=	0363		BaoXiang_HLBX_Rad	[	61	]	=	1		BaoXiang_HLBX_Count	[	61	]	=	1
	BaoXiang_HLBX	[	62	]	=	0364		BaoXiang_HLBX_Rad	[	62	]	=	1		BaoXiang_HLBX_Count	[	62	]	=	1
	BaoXiang_HLBX	[	63	]	=	0367		BaoXiang_HLBX_Rad	[	63	]	=	1		BaoXiang_HLBX_Count	[	63	]	=	1
	BaoXiang_HLBX	[	64	]	=	0368		BaoXiang_HLBX_Rad	[	64	]	=	1		BaoXiang_HLBX_Count	[	64	]	=	1
	BaoXiang_HLBX	[	65	]	=	0369		BaoXiang_HLBX_Rad	[	65	]	=	1		BaoXiang_HLBX_Count	[	65	]	=	1
	BaoXiang_HLBX	[	66	]	=	0370		BaoXiang_HLBX_Rad	[	66	]	=	1		BaoXiang_HLBX_Count	[	66	]	=	1
	BaoXiang_HLBX	[	67	]	=	0371		BaoXiang_HLBX_Rad	[	67	]	=	1		BaoXiang_HLBX_Count	[	67	]	=	1
	BaoXiang_HLBX	[	68	]	=	0374		BaoXiang_HLBX_Rad	[	68	]	=	1		BaoXiang_HLBX_Count	[	68	]	=	1
	BaoXiang_HLBX	[	69	]	=	0375		BaoXiang_HLBX_Rad	[	69	]	=	1		BaoXiang_HLBX_Count	[	69	]	=	1
	BaoXiang_HLBX	[	70	]	=	0376		BaoXiang_HLBX_Rad	[	70	]	=	1		BaoXiang_HLBX_Count	[	70	]	=	1
	BaoXiang_HLBX	[	71	]	=	0377		BaoXiang_HLBX_Rad	[	71	]	=	1		BaoXiang_HLBX_Count	[	71	]	=	1
	BaoXiang_HLBX	[	72	]	=	0378		BaoXiang_HLBX_Rad	[	72	]	=	1		BaoXiang_HLBX_Count	[	72	]	=	1
	BaoXiang_HLBX	[	73	]	=	0379		BaoXiang_HLBX_Rad	[	73	]	=	1		BaoXiang_HLBX_Count	[	73	]	=	1
	BaoXiang_HLBX	[	74	]	=	0382		BaoXiang_HLBX_Rad	[	74	]	=	1		BaoXiang_HLBX_Count	[	74	]	=	1
	BaoXiang_HLBX	[	75	]	=	0820		BaoXiang_HLBX_Rad	[	75	]	=	1		BaoXiang_HLBX_Count	[	75	]	=	1
	BaoXiang_HLBX	[	76	]	=	0821		BaoXiang_HLBX_Rad	[	76	]	=	1		BaoXiang_HLBX_Count	[	76	]	=	1
	BaoXiang_HLBX	[	77	]	=	0870		BaoXiang_HLBX_Rad	[	77	]	=	1		BaoXiang_HLBX_Count	[	77	]	=	1
	BaoXiang_HLBX	[	78	]	=	0871		BaoXiang_HLBX_Rad	[	78	]	=	1		BaoXiang_HLBX_Count	[	78	]	=	1
	BaoXiang_HLBX	[	79	]	=	0875		BaoXiang_HLBX_Rad	[	79	]	=	1		BaoXiang_HLBX_Count	[	79	]	=	1
	BaoXiang_HLBX	[	80	]	=	0876		BaoXiang_HLBX_Rad	[	80	]	=	1		BaoXiang_HLBX_Count	[	80	]	=	1
	BaoXiang_HLBX	[	81	]	=	1787		BaoXiang_HLBX_Rad	[	81	]	=	20		BaoXiang_HLBX_Count	[	81	]	=	2
	BaoXiang_HLBX	[	82	]	=	1788		BaoXiang_HLBX_Rad	[	82	]	=	20		BaoXiang_HLBX_Count	[	82	]	=	2
	BaoXiang_HLBX	[	83	]	=	1789		BaoXiang_HLBX_Rad	[	83	]	=	20		BaoXiang_HLBX_Count	[	83	]	=	2
	BaoXiang_HLBX	[	84	]	=	1790		BaoXiang_HLBX_Rad	[	84	]	=	20		BaoXiang_HLBX_Count	[	84	]	=	2
	BaoXiang_HLBX	[	85	]	=	1791		BaoXiang_HLBX_Rad	[	85	]	=	20		BaoXiang_HLBX_Count	[	85	]	=	2
	BaoXiang_HLBX	[	86	]	=	1792		BaoXiang_HLBX_Rad	[	86	]	=	20		BaoXiang_HLBX_Count	[	86	]	=	2
	BaoXiang_HLBX	[	87	]	=	1793		BaoXiang_HLBX_Rad	[	87	]	=	20		BaoXiang_HLBX_Count	[	87	]	=	2
	BaoXiang_HLBX	[	88	]	=	1797		BaoXiang_HLBX_Rad	[	88	]	=	10		BaoXiang_HLBX_Count	[	88	]	=	1
	BaoXiang_HLBX	[	89	]	=	1798		BaoXiang_HLBX_Rad	[	89	]	=	10		BaoXiang_HLBX_Count	[	89	]	=	1
	BaoXiang_HLBX	[	90	]	=	1799		BaoXiang_HLBX_Rad	[	90	]	=	10		BaoXiang_HLBX_Count	[	90	]	=	1
	BaoXiang_HLBX	[	91	]	=	1800		BaoXiang_HLBX_Rad	[	91	]	=	10		BaoXiang_HLBX_Count	[	91	]	=	1
	BaoXiang_HLBX	[	92	]	=	1801		BaoXiang_HLBX_Rad	[	92	]	=	10		BaoXiang_HLBX_Count	[	92	]	=	1
	BaoXiang_HLBX	[	93	]	=	1802		BaoXiang_HLBX_Rad	[	93	]	=	10		BaoXiang_HLBX_Count	[	93	]	=	1
	BaoXiang_HLBX	[	94	]	=	1803		BaoXiang_HLBX_Rad	[	94	]	=	10		BaoXiang_HLBX_Count	[	94	]	=	1
	BaoXiang_HLBX	[	95	]	=	1804		BaoXiang_HLBX_Rad	[	95	]	=	10		BaoXiang_HLBX_Count	[	95	]	=	1
	BaoXiang_HLBX	[	96	]	=	1805		BaoXiang_HLBX_Rad	[	96	]	=	10		BaoXiang_HLBX_Count	[	96	]	=	1
	BaoXiang_HLBX	[	97	]	=	1806		BaoXiang_HLBX_Rad	[	97	]	=	10		BaoXiang_HLBX_Count	[	97	]	=	1
	BaoXiang_HLBX	[	98	]	=	1807		BaoXiang_HLBX_Rad	[	98	]	=	10		BaoXiang_HLBX_Count	[	98	]	=	1
	BaoXiang_HLBX	[	99	]	=	1808		BaoXiang_HLBX_Rad	[	99	]	=	10		BaoXiang_HLBX_Count	[	99	]	=	1
	BaoXiang_HLBX	[	100	]	=	1809		BaoXiang_HLBX_Rad	[	100	]	=	10		BaoXiang_HLBX_Count	[	100	]	=	1
	BaoXiang_HLBX	[	101	]	=	1810		BaoXiang_HLBX_Rad	[	101	]	=	10		BaoXiang_HLBX_Count	[	101	]	=	1
	BaoXiang_HLBX	[	102	]	=	1811		BaoXiang_HLBX_Rad	[	102	]	=	10		BaoXiang_HLBX_Count	[	102	]	=	1
	BaoXiang_HLBX	[	103	]	=	4606		BaoXiang_HLBX_Rad	[	103	]	=	10		BaoXiang_HLBX_Count	[	103	]	=	2
	BaoXiang_HLBX	[	104	]	=	4607		BaoXiang_HLBX_Rad	[	104	]	=	10		BaoXiang_HLBX_Count	[	104	]	=	1
	BaoXiang_HLBX	[	105	]	=	4608		BaoXiang_HLBX_Rad	[	105	]	=	10		BaoXiang_HLBX_Count	[	105	]	=	2
	BaoXiang_HLBX	[	106	]	=	4609		BaoXiang_HLBX_Rad	[	106	]	=	10		BaoXiang_HLBX_Count	[	106	]	=	1
	BaoXiang_HLBX	[	107	]	=	4610		BaoXiang_HLBX_Rad	[	107	]	=	10		BaoXiang_HLBX_Count	[	107	]	=	1
	BaoXiang_HLBX	[	108	]	=	0453		BaoXiang_HLBX_Rad	[	108	]	=	20 		BaoXiang_HLBX_Count	[	108	]	=	1
	BaoXiang_HLBX	[	109	]	=	0455		BaoXiang_HLBX_Rad	[	109	]	=	20 		BaoXiang_HLBX_Count	[	109	]	=	1
																			
																				
--	ЙсГШ±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_SMBX_Qua	=	7	 				BaoXiang_SMBX_Mxcount	=	166										

--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_SMBX	=	{}					BaoXiang_SMBX_Rad	=	{}					BaoXiang_SMBX_Count	=	{}			
	BaoXiang_SMBX	[	1	]	=	4636		BaoXiang_SMBX_Rad	[	1	]	=	1		BaoXiang_SMBX_Count	[	1	]	=	1
	BaoXiang_SMBX	[	2	]	=	4637		BaoXiang_SMBX_Rad	[	2	]	=	1		BaoXiang_SMBX_Count	[	2	]	=	1
	BaoXiang_SMBX	[	3	]	=	4638		BaoXiang_SMBX_Rad	[	3	]	=	1		BaoXiang_SMBX_Count	[	3	]	=	1
	BaoXiang_SMBX	[	4	]	=	4639		BaoXiang_SMBX_Rad	[	4	]	=	1		BaoXiang_SMBX_Count	[	4	]	=	1
	BaoXiang_SMBX	[	5	]	=	4640		BaoXiang_SMBX_Rad	[	5	]	=	1		BaoXiang_SMBX_Count	[	5	]	=	1
	BaoXiang_SMBX	[	6	]	=	4691		BaoXiang_SMBX_Rad	[	6	]	=	1		BaoXiang_SMBX_Count	[	6	]	=	1
	BaoXiang_SMBX	[	7	]	=	4692		BaoXiang_SMBX_Rad	[	7	]	=	1		BaoXiang_SMBX_Count	[	7	]	=	1
	BaoXiang_SMBX	[	8	]	=	4693		BaoXiang_SMBX_Rad	[	8	]	=	1		BaoXiang_SMBX_Count	[	8	]	=	1
	BaoXiang_SMBX	[	9	]	=	4694		BaoXiang_SMBX_Rad	[	9	]	=	1		BaoXiang_SMBX_Count	[	9	]	=	1
	BaoXiang_SMBX	[	10	]	=	4695		BaoXiang_SMBX_Rad	[	10	]	=	1		BaoXiang_SMBX_Count	[	10	]	=	1
	BaoXiang_SMBX	[	11	]	=	0125		BaoXiang_SMBX_Rad	[	11	]	=	1		BaoXiang_SMBX_Count	[	11	]	=	1
	BaoXiang_SMBX	[	12	]	=	0301		BaoXiang_SMBX_Rad	[	12	]	=	1		BaoXiang_SMBX_Count	[	12	]	=	1
	BaoXiang_SMBX	[	13	]	=	0302		BaoXiang_SMBX_Rad	[	13	]	=	1		BaoXiang_SMBX_Count	[	13	]	=	1
	BaoXiang_SMBX	[	14	]	=	0315		BaoXiang_SMBX_Rad	[	14	]	=	1		BaoXiang_SMBX_Count	[	14	]	=	1
	BaoXiang_SMBX	[	15	]	=	0342		BaoXiang_SMBX_Rad	[	15	]	=	1		BaoXiang_SMBX_Count	[	15	]	=	1
	BaoXiang_SMBX	[	16	]	=	0356		BaoXiang_SMBX_Rad	[	16	]	=	1		BaoXiang_SMBX_Count	[	16	]	=	1
	BaoXiang_SMBX	[	17	]	=	0362		BaoXiang_SMBX_Rad	[	17	]	=	1		BaoXiang_SMBX_Count	[	17	]	=	1
	BaoXiang_SMBX	[	18	]	=	0375		BaoXiang_SMBX_Rad	[	18	]	=	1		BaoXiang_SMBX_Count	[	18	]	=	1
	BaoXiang_SMBX	[	19	]	=	0378		BaoXiang_SMBX_Rad	[	19	]	=	1		BaoXiang_SMBX_Count	[	19	]	=	1
	BaoXiang_SMBX	[	20	]	=	0388		BaoXiang_SMBX_Rad	[	20	]	=	1		BaoXiang_SMBX_Count	[	20	]	=	1
	BaoXiang_SMBX	[	21	]	=	0477		BaoXiang_SMBX_Rad	[	21	]	=	1		BaoXiang_SMBX_Count	[	21	]	=	1
	BaoXiang_SMBX	[	22	]	=	0478		BaoXiang_SMBX_Rad	[	22	]	=	1		BaoXiang_SMBX_Count	[	22	]	=	1
	BaoXiang_SMBX	[	23	]	=	0491		BaoXiang_SMBX_Rad	[	23	]	=	1		BaoXiang_SMBX_Count	[	23	]	=	1
	BaoXiang_SMBX	[	24	]	=	0518		BaoXiang_SMBX_Rad	[	24	]	=	1		BaoXiang_SMBX_Count	[	24	]	=	1
	BaoXiang_SMBX	[	25	]	=	0532		BaoXiang_SMBX_Rad	[	25	]	=	1		BaoXiang_SMBX_Count	[	25	]	=	1
	BaoXiang_SMBX	[	26	]	=	0538		BaoXiang_SMBX_Rad	[	26	]	=	1		BaoXiang_SMBX_Count	[	26	]	=	1
	BaoXiang_SMBX	[	27	]	=	0551		BaoXiang_SMBX_Rad	[	27	]	=	1		BaoXiang_SMBX_Count	[	27	]	=	1
	BaoXiang_SMBX	[	28	]	=	0554		BaoXiang_SMBX_Rad	[	28	]	=	1		BaoXiang_SMBX_Count	[	28	]	=	1
	BaoXiang_SMBX	[	29	]	=	0564		BaoXiang_SMBX_Rad	[	29	]	=	1		BaoXiang_SMBX_Count	[	29	]	=	1
	BaoXiang_SMBX	[	30	]	=	0653		BaoXiang_SMBX_Rad	[	30	]	=	1		BaoXiang_SMBX_Count	[	30	]	=	1
	BaoXiang_SMBX	[	31	]	=	0654		BaoXiang_SMBX_Rad	[	31	]	=	1		BaoXiang_SMBX_Count	[	31	]	=	1
	BaoXiang_SMBX	[	32	]	=	0667		BaoXiang_SMBX_Rad	[	32	]	=	1		BaoXiang_SMBX_Count	[	32	]	=	1
	BaoXiang_SMBX	[	33	]	=	0694		BaoXiang_SMBX_Rad	[	33	]	=	1		BaoXiang_SMBX_Count	[	33	]	=	1
	BaoXiang_SMBX	[	34	]	=	0708		BaoXiang_SMBX_Rad	[	34	]	=	1		BaoXiang_SMBX_Count	[	34	]	=	1
	BaoXiang_SMBX	[	35	]	=	0714		BaoXiang_SMBX_Rad	[	35	]	=	1		BaoXiang_SMBX_Count	[	35	]	=	1
	BaoXiang_SMBX	[	36	]	=	0727		BaoXiang_SMBX_Rad	[	36	]	=	1		BaoXiang_SMBX_Count	[	36	]	=	1
	BaoXiang_SMBX	[	37	]	=	0730		BaoXiang_SMBX_Rad	[	37	]	=	1		BaoXiang_SMBX_Count	[	37	]	=	1
	BaoXiang_SMBX	[	38	]	=	0740		BaoXiang_SMBX_Rad	[	38	]	=	1		BaoXiang_SMBX_Count	[	38	]	=	1
	BaoXiang_SMBX	[	39	]	=	2193		BaoXiang_SMBX_Rad	[	39	]	=	1		BaoXiang_SMBX_Count	[	39	]	=	1
	BaoXiang_SMBX	[	40	]	=	2199		BaoXiang_SMBX_Rad	[	40	]	=	1		BaoXiang_SMBX_Count	[	40	]	=	1
	BaoXiang_SMBX	[	41	]	=	2210		BaoXiang_SMBX_Rad	[	41	]	=	1		BaoXiang_SMBX_Count	[	41	]	=	1
	BaoXiang_SMBX	[	42	]	=	4301		BaoXiang_SMBX_Rad	[	42	]	=	1		BaoXiang_SMBX_Count	[	42	]	=	1
	BaoXiang_SMBX	[	43	]	=	4641		BaoXiang_SMBX_Rad	[	43	]	=	1		BaoXiang_SMBX_Count	[	43	]	=	1
	BaoXiang_SMBX	[	44	]	=	4642		BaoXiang_SMBX_Rad	[	44	]	=	1		BaoXiang_SMBX_Count	[	44	]	=	1
	BaoXiang_SMBX	[	45	]	=	4643		BaoXiang_SMBX_Rad	[	45	]	=	1		BaoXiang_SMBX_Count	[	45	]	=	1
	BaoXiang_SMBX	[	46	]	=	4644		BaoXiang_SMBX_Rad	[	46	]	=	1		BaoXiang_SMBX_Count	[	46	]	=	1
	BaoXiang_SMBX	[	47	]	=	4645		BaoXiang_SMBX_Rad	[	47	]	=	1		BaoXiang_SMBX_Count	[	47	]	=	1
	BaoXiang_SMBX	[	48	]	=	4696		BaoXiang_SMBX_Rad	[	48	]	=	1		BaoXiang_SMBX_Count	[	48	]	=	1
	BaoXiang_SMBX	[	49	]	=	4697		BaoXiang_SMBX_Rad	[	49	]	=	1		BaoXiang_SMBX_Count	[	49	]	=	1
	BaoXiang_SMBX	[	50	]	=	4698		BaoXiang_SMBX_Rad	[	50	]	=	1		BaoXiang_SMBX_Count	[	50	]	=	1
	BaoXiang_SMBX	[	51	]	=	4699		BaoXiang_SMBX_Rad	[	51	]	=	1		BaoXiang_SMBX_Count	[	51	]	=	1
	BaoXiang_SMBX	[	52	]	=	0229		BaoXiang_SMBX_Rad	[	52	]	=	1		BaoXiang_SMBX_Count	[	52	]	=	1
	BaoXiang_SMBX	[	53	]	=	0299		BaoXiang_SMBX_Rad	[	53	]	=	1		BaoXiang_SMBX_Count	[	53	]	=	1
	BaoXiang_SMBX	[	54	]	=	0312		BaoXiang_SMBX_Rad	[	54	]	=	1		BaoXiang_SMBX_Count	[	54	]	=	1
	BaoXiang_SMBX	[	55	]	=	0345		BaoXiang_SMBX_Rad	[	55	]	=	1		BaoXiang_SMBX_Count	[	55	]	=	1
	BaoXiang_SMBX	[	56	]	=	0355		BaoXiang_SMBX_Rad	[	56	]	=	1		BaoXiang_SMBX_Count	[	56	]	=	1
	BaoXiang_SMBX	[	57	]	=	0369		BaoXiang_SMBX_Rad	[	57	]	=	1		BaoXiang_SMBX_Count	[	57	]	=	1
	BaoXiang_SMBX	[	58	]	=	0371		BaoXiang_SMBX_Rad	[	58	]	=	1		BaoXiang_SMBX_Count	[	58	]	=	1
	BaoXiang_SMBX	[	59	]	=	0382		BaoXiang_SMBX_Rad	[	59	]	=	1		BaoXiang_SMBX_Count	[	59	]	=	1
	BaoXiang_SMBX	[	60	]	=	0385		BaoXiang_SMBX_Rad	[	60	]	=	1		BaoXiang_SMBX_Count	[	60	]	=	1
	BaoXiang_SMBX	[	61	]	=	0475		BaoXiang_SMBX_Rad	[	61	]	=	1		BaoXiang_SMBX_Count	[	61	]	=	1
	BaoXiang_SMBX	[	62	]	=	0488		BaoXiang_SMBX_Rad	[	62	]	=	1		BaoXiang_SMBX_Count	[	62	]	=	1
	BaoXiang_SMBX	[	63	]	=	0521		BaoXiang_SMBX_Rad	[	63	]	=	1		BaoXiang_SMBX_Count	[	63	]	=	1
	BaoXiang_SMBX	[	64	]	=	0531		BaoXiang_SMBX_Rad	[	64	]	=	1		BaoXiang_SMBX_Count	[	64	]	=	1
	BaoXiang_SMBX	[	65	]	=	0545		BaoXiang_SMBX_Rad	[	65	]	=	1		BaoXiang_SMBX_Count	[	65	]	=	1
	BaoXiang_SMBX	[	66	]	=	0547		BaoXiang_SMBX_Rad	[	66	]	=	1		BaoXiang_SMBX_Count	[	66	]	=	1
	BaoXiang_SMBX	[	67	]	=	0558		BaoXiang_SMBX_Rad	[	67	]	=	1		BaoXiang_SMBX_Count	[	67	]	=	1
	BaoXiang_SMBX	[	68	]	=	0561		BaoXiang_SMBX_Rad	[	68	]	=	1		BaoXiang_SMBX_Count	[	68	]	=	1
	BaoXiang_SMBX	[	69	]	=	0639		BaoXiang_SMBX_Rad	[	69	]	=	1		BaoXiang_SMBX_Count	[	69	]	=	1
	BaoXiang_SMBX	[	70	]	=	0651		BaoXiang_SMBX_Rad	[	70	]	=	1		BaoXiang_SMBX_Count	[	70	]	=	1
	BaoXiang_SMBX	[	71	]	=	0664		BaoXiang_SMBX_Rad	[	71	]	=	1		BaoXiang_SMBX_Count	[	71	]	=	1
	BaoXiang_SMBX	[	72	]	=	0697		BaoXiang_SMBX_Rad	[	72	]	=	1		BaoXiang_SMBX_Count	[	72	]	=	1
	BaoXiang_SMBX	[	73	]	=	0707		BaoXiang_SMBX_Rad	[	73	]	=	1		BaoXiang_SMBX_Count	[	73	]	=	1
	BaoXiang_SMBX	[	74	]	=	0721		BaoXiang_SMBX_Rad	[	74	]	=	1		BaoXiang_SMBX_Count	[	74	]	=	1
	BaoXiang_SMBX	[	75	]	=	0723		BaoXiang_SMBX_Rad	[	75	]	=	1		BaoXiang_SMBX_Count	[	75	]	=	1
	BaoXiang_SMBX	[	76	]	=	0734		BaoXiang_SMBX_Rad	[	76	]	=	1		BaoXiang_SMBX_Count	[	76	]	=	1
	BaoXiang_SMBX	[	77	]	=	0737		BaoXiang_SMBX_Rad	[	77	]	=	1		BaoXiang_SMBX_Count	[	77	]	=	1
	BaoXiang_SMBX	[	78	]	=	0821		BaoXiang_SMBX_Rad	[	78	]	=	1		BaoXiang_SMBX_Count	[	78	]	=	1
	BaoXiang_SMBX	[	79	]	=	0871		BaoXiang_SMBX_Rad	[	79	]	=	1		BaoXiang_SMBX_Count	[	79	]	=	1
	BaoXiang_SMBX	[	80	]	=	0876		BaoXiang_SMBX_Rad	[	80	]	=	1		BaoXiang_SMBX_Count	[	80	]	=	1
	BaoXiang_SMBX	[	81	]	=	2192		BaoXiang_SMBX_Rad	[	81	]	=	1		BaoXiang_SMBX_Count	[	81	]	=	1
	BaoXiang_SMBX	[	82	]	=	2204		BaoXiang_SMBX_Rad	[	82	]	=	1		BaoXiang_SMBX_Count	[	82	]	=	1
	BaoXiang_SMBX	[	83	]	=	2207		BaoXiang_SMBX_Rad	[	83	]	=	1		BaoXiang_SMBX_Count	[	83	]	=	1
	BaoXiang_SMBX	[	84	]	=	4646		BaoXiang_SMBX_Rad	[	84	]	=	1		BaoXiang_SMBX_Count	[	84	]	=	1
	BaoXiang_SMBX	[	85	]	=	4647		BaoXiang_SMBX_Rad	[	85	]	=	1		BaoXiang_SMBX_Count	[	85	]	=	1
	BaoXiang_SMBX	[	86	]	=	4648		BaoXiang_SMBX_Rad	[	86	]	=	1		BaoXiang_SMBX_Count	[	86	]	=	1
	BaoXiang_SMBX	[	87	]	=	4649		BaoXiang_SMBX_Rad	[	87	]	=	1		BaoXiang_SMBX_Count	[	87	]	=	1
	BaoXiang_SMBX	[	88	]	=	4650		BaoXiang_SMBX_Rad	[	88	]	=	1		BaoXiang_SMBX_Count	[	88	]	=	1
	BaoXiang_SMBX	[	89	]	=	4701		BaoXiang_SMBX_Rad	[	89	]	=	1		BaoXiang_SMBX_Count	[	89	]	=	1
	BaoXiang_SMBX	[	90	]	=	4702		BaoXiang_SMBX_Rad	[	90	]	=	1		BaoXiang_SMBX_Count	[	90	]	=	1
	BaoXiang_SMBX	[	91	]	=	4703		BaoXiang_SMBX_Rad	[	91	]	=	1		BaoXiang_SMBX_Count	[	91	]	=	1
	BaoXiang_SMBX	[	92	]	=	4704		BaoXiang_SMBX_Rad	[	92	]	=	1		BaoXiang_SMBX_Count	[	92	]	=	1
	BaoXiang_SMBX	[	93	]	=	4705		BaoXiang_SMBX_Rad	[	93	]	=	1		BaoXiang_SMBX_Count	[	93	]	=	1
	BaoXiang_SMBX	[	94	]	=	0021		BaoXiang_SMBX_Rad	[	94	]	=	1		BaoXiang_SMBX_Count	[	94	]	=	1
	BaoXiang_SMBX	[	95	]	=	0023		BaoXiang_SMBX_Rad	[	95	]	=	1		BaoXiang_SMBX_Count	[	95	]	=	1
	BaoXiang_SMBX	[	96	]	=	0045		BaoXiang_SMBX_Rad	[	96	]	=	1		BaoXiang_SMBX_Count	[	96	]	=	1
	BaoXiang_SMBX	[	97	]	=	0084		BaoXiang_SMBX_Rad	[	97	]	=	1		BaoXiang_SMBX_Count	[	97	]	=	1
	BaoXiang_SMBX	[	98	]	=	0108		BaoXiang_SMBX_Rad	[	98	]	=	1		BaoXiang_SMBX_Count	[	98	]	=	1
	BaoXiang_SMBX	[	99	]	=	0126		BaoXiang_SMBX_Rad	[	99	]	=	1		BaoXiang_SMBX_Count	[	99	]	=	1
	BaoXiang_SMBX	[	100	]	=	0228		BaoXiang_SMBX_Rad	[	100	]	=	1		BaoXiang_SMBX_Count	[	100	]	=	1
	BaoXiang_SMBX	[	101	]	=	0303		BaoXiang_SMBX_Rad	[	101	]	=	1		BaoXiang_SMBX_Count	[	101	]	=	1
	BaoXiang_SMBX	[	102	]	=	0316		BaoXiang_SMBX_Rad	[	102	]	=	1		BaoXiang_SMBX_Count	[	102	]	=	1
	BaoXiang_SMBX	[	103	]	=	0343		BaoXiang_SMBX_Rad	[	103	]	=	1		BaoXiang_SMBX_Count	[	103	]	=	1
	BaoXiang_SMBX	[	104	]	=	0357		BaoXiang_SMBX_Rad	[	104	]	=	1		BaoXiang_SMBX_Count	[	104	]	=	1
	BaoXiang_SMBX	[	105	]	=	0363		BaoXiang_SMBX_Rad	[	105	]	=	1		BaoXiang_SMBX_Count	[	105	]	=	1
	BaoXiang_SMBX	[	106	]	=	0376		BaoXiang_SMBX_Rad	[	106	]	=	1		BaoXiang_SMBX_Count	[	106	]	=	1
	BaoXiang_SMBX	[	107	]	=	0379		BaoXiang_SMBX_Rad	[	107	]	=	1		BaoXiang_SMBX_Count	[	107	]	=	1
	BaoXiang_SMBX	[	108	]	=	0391		BaoXiang_SMBX_Rad	[	108	]	=	1		BaoXiang_SMBX_Count	[	108	]	=	1
	BaoXiang_SMBX	[	109	]	=	0479		BaoXiang_SMBX_Rad	[	109	]	=	1		BaoXiang_SMBX_Count	[	109	]	=	1
	BaoXiang_SMBX	[	110	]	=	0492		BaoXiang_SMBX_Rad	[	110	]	=	1		BaoXiang_SMBX_Count	[	110	]	=	1
	BaoXiang_SMBX	[	111	]	=	0519		BaoXiang_SMBX_Rad	[	111	]	=	1		BaoXiang_SMBX_Count	[	111	]	=	1
	BaoXiang_SMBX	[	112	]	=	0533		BaoXiang_SMBX_Rad	[	112	]	=	1		BaoXiang_SMBX_Count	[	112	]	=	1
	BaoXiang_SMBX	[	113	]	=	0539		BaoXiang_SMBX_Rad	[	113	]	=	1		BaoXiang_SMBX_Count	[	113	]	=	1
	BaoXiang_SMBX	[	114	]	=	0552		BaoXiang_SMBX_Rad	[	114	]	=	1		BaoXiang_SMBX_Count	[	114	]	=	1
	BaoXiang_SMBX	[	115	]	=	0555		BaoXiang_SMBX_Rad	[	115	]	=	1		BaoXiang_SMBX_Count	[	115	]	=	1
	BaoXiang_SMBX	[	116	]	=	0567		BaoXiang_SMBX_Rad	[	116	]	=	1		BaoXiang_SMBX_Count	[	116	]	=	1
	BaoXiang_SMBX	[	117	]	=	0655		BaoXiang_SMBX_Rad	[	117	]	=	1		BaoXiang_SMBX_Count	[	117	]	=	1
	BaoXiang_SMBX	[	118	]	=	0668		BaoXiang_SMBX_Rad	[	118	]	=	1		BaoXiang_SMBX_Count	[	118	]	=	1
	BaoXiang_SMBX	[	119	]	=	0695		BaoXiang_SMBX_Rad	[	119	]	=	1		BaoXiang_SMBX_Count	[	119	]	=	1
	BaoXiang_SMBX	[	120	]	=	0709		BaoXiang_SMBX_Rad	[	120	]	=	1		BaoXiang_SMBX_Count	[	120	]	=	1
	BaoXiang_SMBX	[	121	]	=	0715		BaoXiang_SMBX_Rad	[	121	]	=	1		BaoXiang_SMBX_Count	[	121	]	=	1
	BaoXiang_SMBX	[	122	]	=	0728		BaoXiang_SMBX_Rad	[	122	]	=	1		BaoXiang_SMBX_Count	[	122	]	=	1
	BaoXiang_SMBX	[	123	]	=	0731		BaoXiang_SMBX_Rad	[	123	]	=	1		BaoXiang_SMBX_Count	[	123	]	=	1
	BaoXiang_SMBX	[	124	]	=	0743		BaoXiang_SMBX_Rad	[	124	]	=	1		BaoXiang_SMBX_Count	[	124	]	=	1
	BaoXiang_SMBX	[	125	]	=	2194		BaoXiang_SMBX_Rad	[	125	]	=	1		BaoXiang_SMBX_Count	[	125	]	=	1
	BaoXiang_SMBX	[	126	]	=	2200		BaoXiang_SMBX_Rad	[	126	]	=	1		BaoXiang_SMBX_Count	[	126	]	=	1
	BaoXiang_SMBX	[	127	]	=	2213		BaoXiang_SMBX_Rad	[	127	]	=	1		BaoXiang_SMBX_Count	[	127	]	=	1
	BaoXiang_SMBX	[	128	]	=	4302		BaoXiang_SMBX_Rad	[	128	]	=	1		BaoXiang_SMBX_Count	[	128	]	=	1
	BaoXiang_SMBX	[	129	]	=	4651		BaoXiang_SMBX_Rad	[	129	]	=	1		BaoXiang_SMBX_Count	[	129	]	=	1
	BaoXiang_SMBX	[	130	]	=	4652		BaoXiang_SMBX_Rad	[	130	]	=	1		BaoXiang_SMBX_Count	[	130	]	=	1
	BaoXiang_SMBX	[	131	]	=	4653		BaoXiang_SMBX_Rad	[	131	]	=	1		BaoXiang_SMBX_Count	[	131	]	=	1
	BaoXiang_SMBX	[	132	]	=	4654		BaoXiang_SMBX_Rad	[	132	]	=	1		BaoXiang_SMBX_Count	[	132	]	=	1
	BaoXiang_SMBX	[	133	]	=	4655		BaoXiang_SMBX_Rad	[	133	]	=	1		BaoXiang_SMBX_Count	[	133	]	=	1
	BaoXiang_SMBX	[	134	]	=	4706		BaoXiang_SMBX_Rad	[	134	]	=	1		BaoXiang_SMBX_Count	[	134	]	=	1
	BaoXiang_SMBX	[	135	]	=	4707		BaoXiang_SMBX_Rad	[	135	]	=	1		BaoXiang_SMBX_Count	[	135	]	=	1
	BaoXiang_SMBX	[	136	]	=	4708		BaoXiang_SMBX_Rad	[	136	]	=	1		BaoXiang_SMBX_Count	[	136	]	=	1
	BaoXiang_SMBX	[	137	]	=	4709		BaoXiang_SMBX_Rad	[	137	]	=	1		BaoXiang_SMBX_Count	[	137	]	=	1
	BaoXiang_SMBX	[	138	]	=	0230		BaoXiang_SMBX_Rad	[	138	]	=	1		BaoXiang_SMBX_Count	[	138	]	=	1
	BaoXiang_SMBX	[	139	]	=	0304		BaoXiang_SMBX_Rad	[	139	]	=	1		BaoXiang_SMBX_Count	[	139	]	=	1
	BaoXiang_SMBX	[	140	]	=	0317		BaoXiang_SMBX_Rad	[	140	]	=	1		BaoXiang_SMBX_Count	[	140	]	=	1
	BaoXiang_SMBX	[	141	]	=	0344		BaoXiang_SMBX_Rad	[	141	]	=	1		BaoXiang_SMBX_Count	[	141	]	=	1
	BaoXiang_SMBX	[	142	]	=	0358		BaoXiang_SMBX_Rad	[	142	]	=	1		BaoXiang_SMBX_Count	[	142	]	=	1
	BaoXiang_SMBX	[	143	]	=	0364		BaoXiang_SMBX_Rad	[	143	]	=	1		BaoXiang_SMBX_Count	[	143	]	=	1
	BaoXiang_SMBX	[	144	]	=	0377		BaoXiang_SMBX_Rad	[	144	]	=	1		BaoXiang_SMBX_Count	[	144	]	=	1
	BaoXiang_SMBX	[	145	]	=	0393		BaoXiang_SMBX_Rad	[	145	]	=	1		BaoXiang_SMBX_Count	[	145	]	=	1
	BaoXiang_SMBX	[	146	]	=	0394		BaoXiang_SMBX_Rad	[	146	]	=	1		BaoXiang_SMBX_Count	[	146	]	=	1
	BaoXiang_SMBX	[	147	]	=	0480		BaoXiang_SMBX_Rad	[	147	]	=	1		BaoXiang_SMBX_Count	[	147	]	=	1
	BaoXiang_SMBX	[	148	]	=	0493		BaoXiang_SMBX_Rad	[	148	]	=	1		BaoXiang_SMBX_Count	[	148	]	=	1
	BaoXiang_SMBX	[	149	]	=	0520		BaoXiang_SMBX_Rad	[	149	]	=	1		BaoXiang_SMBX_Count	[	149	]	=	1
	BaoXiang_SMBX	[	150	]	=	0534		BaoXiang_SMBX_Rad	[	150	]	=	1		BaoXiang_SMBX_Count	[	150	]	=	1
	BaoXiang_SMBX	[	151	]	=	0540		BaoXiang_SMBX_Rad	[	151	]	=	1		BaoXiang_SMBX_Count	[	151	]	=	1
	BaoXiang_SMBX	[	152	]	=	0553		BaoXiang_SMBX_Rad	[	152	]	=	1		BaoXiang_SMBX_Count	[	152	]	=	1
	BaoXiang_SMBX	[	153	]	=	0569		BaoXiang_SMBX_Rad	[	153	]	=	1		BaoXiang_SMBX_Count	[	153	]	=	1
	BaoXiang_SMBX	[	154	]	=	0570		BaoXiang_SMBX_Rad	[	154	]	=	1		BaoXiang_SMBX_Count	[	154	]	=	1
	BaoXiang_SMBX	[	155	]	=	0656		BaoXiang_SMBX_Rad	[	155	]	=	1		BaoXiang_SMBX_Count	[	155	]	=	1
	BaoXiang_SMBX	[	156	]	=	0669		BaoXiang_SMBX_Rad	[	156	]	=	1		BaoXiang_SMBX_Count	[	156	]	=	1
	BaoXiang_SMBX	[	157	]	=	0696		BaoXiang_SMBX_Rad	[	157	]	=	1		BaoXiang_SMBX_Count	[	157	]	=	1
	BaoXiang_SMBX	[	158	]	=	0710		BaoXiang_SMBX_Rad	[	158	]	=	1		BaoXiang_SMBX_Count	[	158	]	=	1
	BaoXiang_SMBX	[	159	]	=	0716		BaoXiang_SMBX_Rad	[	159	]	=	1		BaoXiang_SMBX_Count	[	159	]	=	1
	BaoXiang_SMBX	[	160	]	=	0729		BaoXiang_SMBX_Rad	[	160	]	=	1		BaoXiang_SMBX_Count	[	160	]	=	1
	BaoXiang_SMBX	[	161	]	=	0745		BaoXiang_SMBX_Rad	[	161	]	=	1		BaoXiang_SMBX_Count	[	161	]	=	1
	BaoXiang_SMBX	[	162	]	=	0746		BaoXiang_SMBX_Rad	[	162	]	=	1		BaoXiang_SMBX_Count	[	162	]	=	1
	BaoXiang_SMBX	[	163	]	=	1477		BaoXiang_SMBX_Rad	[	163	]	=	1		BaoXiang_SMBX_Count	[	163	]	=	1
	BaoXiang_SMBX	[	164	]	=	2195		BaoXiang_SMBX_Rad	[	164	]	=	1		BaoXiang_SMBX_Count	[	164	]	=	1
	BaoXiang_SMBX	[	165	]	=	2201		BaoXiang_SMBX_Rad	[	165	]	=	1		BaoXiang_SMBX_Count	[	165	]	=	1
	BaoXiang_SMBX	[	166	]	=	2215		BaoXiang_SMBX_Rad	[	166	]	=	1		BaoXiang_SMBX_Count	[	166	]	=	1
																				
--	ОпЧКПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_WZX_Qua	=	98	 				BaoXiang_WZX_Mxcount	=	153									
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_WZX	=	{}					BaoXiang_WZX_Rad	=	{}					BaoXiang_WZX_Count	=	{}			
	BaoXiang_WZX	[	1	]	=	0004		BaoXiang_WZX_Rad	[	1	]	=	1		BaoXiang_WZX_Count	[	1	]	=	1
	BaoXiang_WZX	[	2	]	=	0005		BaoXiang_WZX_Rad	[	2	]	=	1		BaoXiang_WZX_Count	[	2	]	=	1
	BaoXiang_WZX	[	3	]	=	0006		BaoXiang_WZX_Rad	[	3	]	=	1		BaoXiang_WZX_Count	[	3	]	=	1
	BaoXiang_WZX	[	4	]	=	0015		BaoXiang_WZX_Rad	[	4	]	=	1		BaoXiang_WZX_Count	[	4	]	=	1
	BaoXiang_WZX	[	5	]	=	0016		BaoXiang_WZX_Rad	[	5	]	=	1		BaoXiang_WZX_Count	[	5	]	=	1
	BaoXiang_WZX	[	6	]	=	0017		BaoXiang_WZX_Rad	[	6	]	=	1		BaoXiang_WZX_Count	[	6	]	=	1
	BaoXiang_WZX	[	7	]	=	0039		BaoXiang_WZX_Rad	[	7	]	=	1		BaoXiang_WZX_Count	[	7	]	=	1
	BaoXiang_WZX	[	8	]	=	0040		BaoXiang_WZX_Rad	[	8	]	=	1		BaoXiang_WZX_Count	[	8	]	=	1
	BaoXiang_WZX	[	9	]	=	0041		BaoXiang_WZX_Rad	[	9	]	=	1		BaoXiang_WZX_Count	[	9	]	=	1
	BaoXiang_WZX	[	10	]	=	0076		BaoXiang_WZX_Rad	[	10	]	=	1		BaoXiang_WZX_Count	[	10	]	=	1
	BaoXiang_WZX	[	11	]	=	0077		BaoXiang_WZX_Rad	[	11	]	=	1		BaoXiang_WZX_Count	[	11	]	=	1
	BaoXiang_WZX	[	12	]	=	0078		BaoXiang_WZX_Rad	[	12	]	=	1		BaoXiang_WZX_Count	[	12	]	=	1
	BaoXiang_WZX	[	13	]	=	0100		BaoXiang_WZX_Rad	[	13	]	=	1		BaoXiang_WZX_Count	[	13	]	=	1
	BaoXiang_WZX	[	14	]	=	0103		BaoXiang_WZX_Rad	[	14	]	=	1		BaoXiang_WZX_Count	[	14	]	=	1
	BaoXiang_WZX	[	15	]	=	4303		BaoXiang_WZX_Rad	[	15	]	=	1		BaoXiang_WZX_Count	[	15	]	=	1
	BaoXiang_WZX	[	16	]	=	0101		BaoXiang_WZX_Rad	[	16	]	=	1		BaoXiang_WZX_Count	[	16	]	=	1
	BaoXiang_WZX	[	17	]	=	0102		BaoXiang_WZX_Rad	[	17	]	=	1		BaoXiang_WZX_Count	[	17	]	=	1
	BaoXiang_WZX	[	18	]	=	4300		BaoXiang_WZX_Rad	[	18	]	=	1		BaoXiang_WZX_Count	[	18	]	=	1
	BaoXiang_WZX	[	19	]	=	3122		BaoXiang_WZX_Rad	[	19	]	=	25		BaoXiang_WZX_Count	[	19	]	=	20
	BaoXiang_WZX	[	20	]	=	3123		BaoXiang_WZX_Rad	[	20	]	=	25		BaoXiang_WZX_Count	[	20	]	=	15
	BaoXiang_WZX	[	21	]	=	3124		BaoXiang_WZX_Rad	[	21	]	=	25		BaoXiang_WZX_Count	[	21	]	=	10
	BaoXiang_WZX	[	22	]	=	3125		BaoXiang_WZX_Rad	[	22	]	=	25		BaoXiang_WZX_Count	[	22	]	=	9
	BaoXiang_WZX	[	23	]	=	3126		BaoXiang_WZX_Rad	[	23	]	=	25		BaoXiang_WZX_Count	[	23	]	=	8
	BaoXiang_WZX	[	24	]	=	3127		BaoXiang_WZX_Rad	[	24	]	=	20		BaoXiang_WZX_Count	[	24	]	=	7
	BaoXiang_WZX	[	25	]	=	3128		BaoXiang_WZX_Rad	[	25	]	=	20		BaoXiang_WZX_Count	[	25	]	=	6
	BaoXiang_WZX	[	26	]	=	3133		BaoXiang_WZX_Rad	[	26	]	=	20		BaoXiang_WZX_Count	[	26	]	=	10
	BaoXiang_WZX	[	27	]	=	3134		BaoXiang_WZX_Rad	[	27	]	=	20		BaoXiang_WZX_Count	[	27	]	=	9
	BaoXiang_WZX	[	28	]	=	3135		BaoXiang_WZX_Rad	[	28	]	=	20		BaoXiang_WZX_Count	[	28	]	=	8
	BaoXiang_WZX	[	29	]	=	3136		BaoXiang_WZX_Rad	[	29	]	=	20		BaoXiang_WZX_Count	[	29	]	=	7
	BaoXiang_WZX	[	30	]	=	3137		BaoXiang_WZX_Rad	[	30	]	=	20		BaoXiang_WZX_Count	[	30	]	=	6
	BaoXiang_WZX	[	31	]	=	3138		BaoXiang_WZX_Rad	[	31	]	=	20		BaoXiang_WZX_Count	[	31	]	=	5
	BaoXiang_WZX	[	32	]	=	3139		BaoXiang_WZX_Rad	[	32	]	=	20		BaoXiang_WZX_Count	[	32	]	=	4
	BaoXiang_WZX	[	33	]	=	3140		BaoXiang_WZX_Rad	[	33	]	=	20		BaoXiang_WZX_Count	[	33	]	=	3
	BaoXiang_WZX	[	34	]	=	0293		BaoXiang_WZX_Rad	[	34	]	=	1		BaoXiang_WZX_Count	[	34	]	=	1
	BaoXiang_WZX	[	35	]	=	0295		BaoXiang_WZX_Rad	[	35	]	=	1		BaoXiang_WZX_Count	[	35	]	=	1
	BaoXiang_WZX	[	36	]	=	0299		BaoXiang_WZX_Rad	[	36	]	=	1		BaoXiang_WZX_Count	[	36	]	=	1
	BaoXiang_WZX	[	37	]	=	0300		BaoXiang_WZX_Rad	[	37	]	=	1		BaoXiang_WZX_Count	[	37	]	=	1
	BaoXiang_WZX	[	38	]	=	0301		BaoXiang_WZX_Rad	[	38	]	=	1		BaoXiang_WZX_Count	[	38	]	=	1
	BaoXiang_WZX	[	39	]	=	0302		BaoXiang_WZX_Rad	[	39	]	=	1		BaoXiang_WZX_Count	[	39	]	=	1
	BaoXiang_WZX	[	40	]	=	0307		BaoXiang_WZX_Rad	[	40	]	=	1		BaoXiang_WZX_Count	[	40	]	=	1
	BaoXiang_WZX	[	41	]	=	0310		BaoXiang_WZX_Rad	[	41	]	=	1		BaoXiang_WZX_Count	[	41	]	=	1
	BaoXiang_WZX	[	42	]	=	0312		BaoXiang_WZX_Rad	[	42	]	=	1		BaoXiang_WZX_Count	[	42	]	=	1
	BaoXiang_WZX	[	43	]	=	0314		BaoXiang_WZX_Rad	[	43	]	=	1		BaoXiang_WZX_Count	[	43	]	=	1
	BaoXiang_WZX	[	44	]	=	0315		BaoXiang_WZX_Rad	[	44	]	=	1		BaoXiang_WZX_Count	[	44	]	=	1
	BaoXiang_WZX	[	45	]	=	0316		BaoXiang_WZX_Rad	[	45	]	=	1		BaoXiang_WZX_Count	[	45	]	=	1
	BaoXiang_WZX	[	46	]	=	0339		BaoXiang_WZX_Rad	[	46	]	=	1		BaoXiang_WZX_Count	[	46	]	=	1
	BaoXiang_WZX	[	47	]	=	0341		BaoXiang_WZX_Rad	[	47	]	=	1		BaoXiang_WZX_Count	[	47	]	=	1
	BaoXiang_WZX	[	48	]	=	0342		BaoXiang_WZX_Rad	[	48	]	=	1		BaoXiang_WZX_Count	[	48	]	=	1
	BaoXiang_WZX	[	49	]	=	0343		BaoXiang_WZX_Rad	[	49	]	=	1		BaoXiang_WZX_Count	[	49	]	=	1
	BaoXiang_WZX	[	50	]	=	0344		BaoXiang_WZX_Rad	[	50	]	=	1		BaoXiang_WZX_Count	[	50	]	=	1
	BaoXiang_WZX	[	51	]	=	0345		BaoXiang_WZX_Rad	[	51	]	=	1		BaoXiang_WZX_Count	[	51	]	=	1
	BaoXiang_WZX	[	52	]	=	0350		BaoXiang_WZX_Rad	[	52	]	=	1		BaoXiang_WZX_Count	[	52	]	=	1
	BaoXiang_WZX	[	53	]	=	0353		BaoXiang_WZX_Rad	[	53	]	=	1		BaoXiang_WZX_Count	[	53	]	=	1
	BaoXiang_WZX	[	54	]	=	0354		BaoXiang_WZX_Rad	[	54	]	=	1		BaoXiang_WZX_Count	[	54	]	=	1
	BaoXiang_WZX	[	55	]	=	0355		BaoXiang_WZX_Rad	[	55	]	=	1		BaoXiang_WZX_Count	[	55	]	=	1
	BaoXiang_WZX	[	56	]	=	0356		BaoXiang_WZX_Rad	[	56	]	=	1		BaoXiang_WZX_Count	[	56	]	=	1
	BaoXiang_WZX	[	57	]	=	0357		BaoXiang_WZX_Rad	[	57	]	=	1		BaoXiang_WZX_Count	[	57	]	=	1
	BaoXiang_WZX	[	58	]	=	0358		BaoXiang_WZX_Rad	[	58	]	=	1		BaoXiang_WZX_Count	[	58	]	=	1
	BaoXiang_WZX	[	59	]	=	0361		BaoXiang_WZX_Rad	[	59	]	=	1		BaoXiang_WZX_Count	[	59	]	=	1
	BaoXiang_WZX	[	60	]	=	0362		BaoXiang_WZX_Rad	[	60	]	=	1		BaoXiang_WZX_Count	[	60	]	=	1
	BaoXiang_WZX	[	61	]	=	0363		BaoXiang_WZX_Rad	[	61	]	=	1		BaoXiang_WZX_Count	[	61	]	=	1
	BaoXiang_WZX	[	62	]	=	0364		BaoXiang_WZX_Rad	[	62	]	=	1		BaoXiang_WZX_Count	[	62	]	=	1
	BaoXiang_WZX	[	63	]	=	0367		BaoXiang_WZX_Rad	[	63	]	=	1		BaoXiang_WZX_Count	[	63	]	=	1
	BaoXiang_WZX	[	64	]	=	0368		BaoXiang_WZX_Rad	[	64	]	=	1		BaoXiang_WZX_Count	[	64	]	=	1
	BaoXiang_WZX	[	65	]	=	0369		BaoXiang_WZX_Rad	[	65	]	=	1		BaoXiang_WZX_Count	[	65	]	=	1
	BaoXiang_WZX	[	66	]	=	0370		BaoXiang_WZX_Rad	[	66	]	=	1		BaoXiang_WZX_Count	[	66	]	=	1
	BaoXiang_WZX	[	67	]	=	0371		BaoXiang_WZX_Rad	[	67	]	=	1		BaoXiang_WZX_Count	[	67	]	=	1
	BaoXiang_WZX	[	68	]	=	0374		BaoXiang_WZX_Rad	[	68	]	=	1		BaoXiang_WZX_Count	[	68	]	=	1
	BaoXiang_WZX	[	69	]	=	0375		BaoXiang_WZX_Rad	[	69	]	=	1		BaoXiang_WZX_Count	[	69	]	=	1
	BaoXiang_WZX	[	70	]	=	0376		BaoXiang_WZX_Rad	[	70	]	=	1		BaoXiang_WZX_Count	[	70	]	=	1
	BaoXiang_WZX	[	71	]	=	0377		BaoXiang_WZX_Rad	[	71	]	=	1		BaoXiang_WZX_Count	[	71	]	=	1
	BaoXiang_WZX	[	72	]	=	0378		BaoXiang_WZX_Rad	[	72	]	=	1		BaoXiang_WZX_Count	[	72	]	=	1
	BaoXiang_WZX	[	73	]	=	0379		BaoXiang_WZX_Rad	[	73	]	=	1		BaoXiang_WZX_Count	[	73	]	=	1
	BaoXiang_WZX	[	74	]	=	0382		BaoXiang_WZX_Rad	[	74	]	=	1		BaoXiang_WZX_Count	[	74	]	=	1
	BaoXiang_WZX	[	75	]	=	0820		BaoXiang_WZX_Rad	[	75	]	=	1		BaoXiang_WZX_Count	[	75	]	=	1
	BaoXiang_WZX	[	76	]	=	0821		BaoXiang_WZX_Rad	[	76	]	=	1		BaoXiang_WZX_Count	[	76	]	=	1
	BaoXiang_WZX	[	77	]	=	0870		BaoXiang_WZX_Rad	[	77	]	=	1		BaoXiang_WZX_Count	[	77	]	=	1
	BaoXiang_WZX	[	78	]	=	0871		BaoXiang_WZX_Rad	[	78	]	=	1		BaoXiang_WZX_Count	[	78	]	=	1
	BaoXiang_WZX	[	79	]	=	0875		BaoXiang_WZX_Rad	[	79	]	=	1		BaoXiang_WZX_Count	[	79	]	=	1
	BaoXiang_WZX	[	80	]	=	0876		BaoXiang_WZX_Rad	[	80	]	=	1		BaoXiang_WZX_Count	[	80	]	=	1
	BaoXiang_WZX	[	81	]	=	1787		BaoXiang_WZX_Rad	[	81	]	=	15		BaoXiang_WZX_Count	[	81	]	=	2
	BaoXiang_WZX	[	82	]	=	1788		BaoXiang_WZX_Rad	[	82	]	=	15		BaoXiang_WZX_Count	[	82	]	=	2
	BaoXiang_WZX	[	83	]	=	1789		BaoXiang_WZX_Rad	[	83	]	=	15		BaoXiang_WZX_Count	[	83	]	=	2
	BaoXiang_WZX	[	84	]	=	1790		BaoXiang_WZX_Rad	[	84	]	=	15		BaoXiang_WZX_Count	[	84	]	=	2
	BaoXiang_WZX	[	85	]	=	1791		BaoXiang_WZX_Rad	[	85	]	=	15		BaoXiang_WZX_Count	[	85	]	=	2
	BaoXiang_WZX	[	86	]	=	1792		BaoXiang_WZX_Rad	[	86	]	=	15		BaoXiang_WZX_Count	[	86	]	=	2
	BaoXiang_WZX	[	87	]	=	1793		BaoXiang_WZX_Rad	[	87	]	=	15		BaoXiang_WZX_Count	[	87	]	=	2
	BaoXiang_WZX	[	88	]	=	1797		BaoXiang_WZX_Rad	[	88	]	=	15		BaoXiang_WZX_Count	[	88	]	=	1
	BaoXiang_WZX	[	89	]	=	1798		BaoXiang_WZX_Rad	[	89	]	=	15		BaoXiang_WZX_Count	[	89	]	=	1
	BaoXiang_WZX	[	90	]	=	1799		BaoXiang_WZX_Rad	[	90	]	=	15		BaoXiang_WZX_Count	[	90	]	=	1
	BaoXiang_WZX	[	91	]	=	1800		BaoXiang_WZX_Rad	[	91	]	=	15		BaoXiang_WZX_Count	[	91	]	=	1
	BaoXiang_WZX	[	92	]	=	1801		BaoXiang_WZX_Rad	[	92	]	=	15		BaoXiang_WZX_Count	[	92	]	=	1
	BaoXiang_WZX	[	93	]	=	1802		BaoXiang_WZX_Rad	[	93	]	=	15		BaoXiang_WZX_Count	[	93	]	=	1
	BaoXiang_WZX	[	94	]	=	1803		BaoXiang_WZX_Rad	[	94	]	=	15		BaoXiang_WZX_Count	[	94	]	=	1
	BaoXiang_WZX	[	95	]	=	1804		BaoXiang_WZX_Rad	[	95	]	=	15		BaoXiang_WZX_Count	[	95	]	=	1
	BaoXiang_WZX	[	96	]	=	1805		BaoXiang_WZX_Rad	[	96	]	=	15		BaoXiang_WZX_Count	[	96	]	=	1
	BaoXiang_WZX	[	97	]	=	1806		BaoXiang_WZX_Rad	[	97	]	=	15		BaoXiang_WZX_Count	[	97	]	=	1
	BaoXiang_WZX	[	98	]	=	1807		BaoXiang_WZX_Rad	[	98	]	=	300		BaoXiang_WZX_Count	[	98	]	=	1
	BaoXiang_WZX	[	99	]	=	1808		BaoXiang_WZX_Rad	[	99	]	=	15		BaoXiang_WZX_Count	[	99	]	=	1
	BaoXiang_WZX	[	100	]	=	1809		BaoXiang_WZX_Rad	[	100	]	=	15		BaoXiang_WZX_Count	[	100	]	=	1
	BaoXiang_WZX	[	101	]	=	1810		BaoXiang_WZX_Rad	[	101	]	=	15		BaoXiang_WZX_Count	[	101	]	=	1
	BaoXiang_WZX	[	102	]	=	1811		BaoXiang_WZX_Rad	[	102	]	=	15		BaoXiang_WZX_Count	[	102	]	=	1
	BaoXiang_WZX	[	103	]	=	4606		BaoXiang_WZX_Rad	[	103	]	=	1		BaoXiang_WZX_Count	[	103	]	=	1
	BaoXiang_WZX	[	104	]	=	4607		BaoXiang_WZX_Rad	[	104	]	=	1		BaoXiang_WZX_Count	[	104	]	=	1
	BaoXiang_WZX	[	105	]	=	4608		BaoXiang_WZX_Rad	[	105	]	=	1		BaoXiang_WZX_Count	[	105	]	=	1
	BaoXiang_WZX	[	106	]	=	4609		BaoXiang_WZX_Rad	[	106	]	=	1		BaoXiang_WZX_Count	[	106	]	=	1
	BaoXiang_WZX	[	107	]	=	4610		BaoXiang_WZX_Rad	[	107	]	=	1		BaoXiang_WZX_Count	[	107	]	=	1
	BaoXiang_WZX	[	108	]	=	4636		BaoXiang_WZX_Rad	[	108	]	=	1		BaoXiang_WZX_Count	[	108	]	=	1
	BaoXiang_WZX	[	109	]	=	4637		BaoXiang_WZX_Rad	[	109	]	=	1		BaoXiang_WZX_Count	[	109	]	=	1
	BaoXiang_WZX	[	110	]	=	4638		BaoXiang_WZX_Rad	[	110	]	=	1		BaoXiang_WZX_Count	[	110	]	=	1
	BaoXiang_WZX	[	111	]	=	4639		BaoXiang_WZX_Rad	[	111	]	=	1		BaoXiang_WZX_Count	[	111	]	=	1
	BaoXiang_WZX	[	112	]	=	4640		BaoXiang_WZX_Rad	[	112	]	=	1		BaoXiang_WZX_Count	[	112	]	=	1
	BaoXiang_WZX	[	113	]	=	4691		BaoXiang_WZX_Rad	[	113	]	=	1		BaoXiang_WZX_Count	[	113	]	=	1
	BaoXiang_WZX	[	114	]	=	4692		BaoXiang_WZX_Rad	[	114	]	=	1		BaoXiang_WZX_Count	[	114	]	=	1
	BaoXiang_WZX	[	115	]	=	4693		BaoXiang_WZX_Rad	[	115	]	=	1		BaoXiang_WZX_Count	[	115	]	=	1
	BaoXiang_WZX	[	116	]	=	4694		BaoXiang_WZX_Rad	[	116	]	=	1		BaoXiang_WZX_Count	[	116	]	=	1
	BaoXiang_WZX	[	117	]	=	4695		BaoXiang_WZX_Rad	[	117	]	=	1		BaoXiang_WZX_Count	[	117	]	=	1
	BaoXiang_WZX	[	118	]	=	4641		BaoXiang_WZX_Rad	[	118	]	=	1		BaoXiang_WZX_Count	[	118	]	=	1
	BaoXiang_WZX	[	119	]	=	4642		BaoXiang_WZX_Rad	[	119	]	=	1		BaoXiang_WZX_Count	[	119	]	=	1
	BaoXiang_WZX	[	120	]	=	4643		BaoXiang_WZX_Rad	[	120	]	=	1		BaoXiang_WZX_Count	[	120	]	=	1
	BaoXiang_WZX	[	121	]	=	4644		BaoXiang_WZX_Rad	[	121	]	=	1		BaoXiang_WZX_Count	[	121	]	=	1
	BaoXiang_WZX	[	122	]	=	4645		BaoXiang_WZX_Rad	[	122	]	=	1		BaoXiang_WZX_Count	[	122	]	=	1
	BaoXiang_WZX	[	123	]	=	4696		BaoXiang_WZX_Rad	[	123	]	=	1		BaoXiang_WZX_Count	[	123	]	=	1
	BaoXiang_WZX	[	124	]	=	4697		BaoXiang_WZX_Rad	[	124	]	=	1		BaoXiang_WZX_Count	[	124	]	=	1
	BaoXiang_WZX	[	125	]	=	4698		BaoXiang_WZX_Rad	[	125	]	=	1		BaoXiang_WZX_Count	[	125	]	=	1
	BaoXiang_WZX	[	126	]	=	4699		BaoXiang_WZX_Rad	[	126	]	=	1		BaoXiang_WZX_Count	[	126	]	=	1
	BaoXiang_WZX	[	127	]	=	4646		BaoXiang_WZX_Rad	[	127	]	=	1		BaoXiang_WZX_Count	[	127	]	=	1
	BaoXiang_WZX	[	128	]	=	4647		BaoXiang_WZX_Rad	[	128	]	=	1		BaoXiang_WZX_Count	[	128	]	=	1
	BaoXiang_WZX	[	129	]	=	4648		BaoXiang_WZX_Rad	[	129	]	=	1		BaoXiang_WZX_Count	[	129	]	=	1
	BaoXiang_WZX	[	130	]	=	4649		BaoXiang_WZX_Rad	[	130	]	=	1		BaoXiang_WZX_Count	[	130	]	=	1
	BaoXiang_WZX	[	131	]	=	4650		BaoXiang_WZX_Rad	[	131	]	=	1		BaoXiang_WZX_Count	[	131	]	=	1
	BaoXiang_WZX	[	132	]	=	4701		BaoXiang_WZX_Rad	[	132	]	=	1		BaoXiang_WZX_Count	[	132	]	=	1
	BaoXiang_WZX	[	133	]	=	4702		BaoXiang_WZX_Rad	[	133	]	=	1		BaoXiang_WZX_Count	[	133	]	=	1
	BaoXiang_WZX	[	134	]	=	4703		BaoXiang_WZX_Rad	[	134	]	=	1		BaoXiang_WZX_Count	[	134	]	=	1
	BaoXiang_WZX	[	135	]	=	4704		BaoXiang_WZX_Rad	[	135	]	=	1		BaoXiang_WZX_Count	[	135	]	=	1
	BaoXiang_WZX	[	136	]	=	4705		BaoXiang_WZX_Rad	[	136	]	=	1		BaoXiang_WZX_Count	[	136	]	=	1
	BaoXiang_WZX	[	137	]	=	4651		BaoXiang_WZX_Rad	[	137	]	=	1		BaoXiang_WZX_Count	[	137	]	=	1
	BaoXiang_WZX	[	138	]	=	4652		BaoXiang_WZX_Rad	[	138	]	=	1		BaoXiang_WZX_Count	[	138	]	=	1
	BaoXiang_WZX	[	139	]	=	4653		BaoXiang_WZX_Rad	[	139	]	=	1		BaoXiang_WZX_Count	[	139	]	=	1
	BaoXiang_WZX	[	140	]	=	4654		BaoXiang_WZX_Rad	[	140	]	=	1		BaoXiang_WZX_Count	[	140	]	=	1
	BaoXiang_WZX	[	141	]	=	4655		BaoXiang_WZX_Rad	[	141	]	=	1		BaoXiang_WZX_Count	[	141	]	=	1
	BaoXiang_WZX	[	142	]	=	4706		BaoXiang_WZX_Rad	[	142	]	=	1		BaoXiang_WZX_Count	[	142	]	=	1
	BaoXiang_WZX	[	143	]	=	4707		BaoXiang_WZX_Rad	[	143	]	=	1		BaoXiang_WZX_Count	[	143	]	=	1
	BaoXiang_WZX	[	144	]	=	4708		BaoXiang_WZX_Rad	[	144	]	=	1		BaoXiang_WZX_Count	[	144	]	=	1
	BaoXiang_WZX	[	145	]	=	4709		BaoXiang_WZX_Rad	[	145	]	=	1		BaoXiang_WZX_Count	[	145	]	=	1
	BaoXiang_WZX	[	146	]	=	4543		BaoXiang_WZX_Rad	[	146	]	=	20		BaoXiang_WZX_Count	[	146	]	=	20
	BaoXiang_WZX	[	147	]	=	4544		BaoXiang_WZX_Rad	[	147	]	=	20		BaoXiang_WZX_Count	[	147	]	=	10
	BaoXiang_WZX	[	148	]	=	4545		BaoXiang_WZX_Rad	[	148	]	=	20		BaoXiang_WZX_Count	[	148	]	=	15
	BaoXiang_WZX	[	149	]	=	4546		BaoXiang_WZX_Rad	[	149	]	=	20		BaoXiang_WZX_Count	[	149	]	=	10
	BaoXiang_WZX	[	150	]	=	1478		BaoXiang_WZX_Rad	[	150	]	=	20		BaoXiang_WZX_Count	[	150	]	=	20
	BaoXiang_WZX	[	151	]	=	0227		BaoXiang_WZX_Rad	[	151	]	=	60 		BaoXiang_WZX_Count	[	151	]	=	1
	BaoXiang_WZX	[	152	]	=	0453		BaoXiang_WZX_Rad	[	152	]	=	60 		BaoXiang_WZX_Count	[	152	]	=	1
	BaoXiang_WZX	[	153	]	=	0455		BaoXiang_WZX_Rad	[	153	]	=	60 		BaoXiang_WZX_Count	[	153	]	=	1
																		
																				
																				
--	чјчГЦ®ЅЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_KLJS_Qua	=	5	 				BaoXiang_KLJS_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_KLJS	=	{}					BaoXiang_KLJS_Rad	=	{}					BaoXiang_KLJS_Count	=	{}			
	BaoXiang_KLJS	[	1	]	=	1928		BaoXiang_KLJS_Rad	[	1	]	=	1		BaoXiang_KLJS_Count	[	1	]	=	1
	BaoXiang_KLJS	[	2	]	=	1935		BaoXiang_KLJS_Rad	[	2	]	=	1		BaoXiang_KLJS_Count	[	2	]	=	1
	BaoXiang_KLJS	[	3	]	=	1939		BaoXiang_KLJS_Rad	[	3	]	=	1		BaoXiang_KLJS_Count	[	3	]	=	1
	BaoXiang_KLJS	[	4	]	=	3798		BaoXiang_KLJS_Rad	[	4	]	=	1		BaoXiang_KLJS_Count	[	4	]	=	1
																				
																				
--	чјчГЦ®БФИЛЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_KLLR_Qua	=	5	 				BaoXiang_KLLR_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_KLLR	=	{}					BaoXiang_KLLR_Rad	=	{}					BaoXiang_KLLR_Count	=	{}			
	BaoXiang_KLLR	[	1	]	=	1943		BaoXiang_KLLR_Rad	[	1	]	=	1		BaoXiang_KLLR_Count	[	1	]	=	1
	BaoXiang_KLLR	[	2	]	=	1947		BaoXiang_KLLR_Rad	[	2	]	=	1		BaoXiang_KLLR_Count	[	2	]	=	1
	BaoXiang_KLLR	[	3	]	=	1951		BaoXiang_KLLR_Rad	[	3	]	=	1		BaoXiang_KLLR_Count	[	3	]	=	1
	BaoXiang_KLLR	[	4	]	=	3805		BaoXiang_KLLR_Rad	[	4	]	=	1		BaoXiang_KLLR_Count	[	4	]	=	1
																				
																				
--	чјчГЦ®ТЅЙъЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_KLYS_Qua	=	5	 				BaoXiang_KLYS_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_KLYS	=	{}					BaoXiang_KLYS_Rad	=	{}					BaoXiang_KLYS_Count	=	{}			
	BaoXiang_KLYS	[	1	]	=	1955		BaoXiang_KLYS_Rad	[	1	]	=	1		BaoXiang_KLYS_Count	[	1	]	=	1
	BaoXiang_KLYS	[	2	]	=	1962		BaoXiang_KLYS_Rad	[	2	]	=	1		BaoXiang_KLYS_Count	[	2	]	=	1
	BaoXiang_KLYS	[	3	]	=	1969		BaoXiang_KLYS_Rad	[	3	]	=	1		BaoXiang_KLYS_Count	[	3	]	=	1
	BaoXiang_KLYS	[	4	]	=	3809		BaoXiang_KLYS_Rad	[	4	]	=	1		BaoXiang_KLYS_Count	[	4	]	=	1
																				
																				
--	чјчГЦ®Г°ПХХЯЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_KLMX_Qua	=	5	 				BaoXiang_KLMX_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_KLMX	=	{}					BaoXiang_KLMX_Rad	=	{}					BaoXiang_KLMX_Count	=	{}			
	BaoXiang_KLMX	[	1	]	=	1976		BaoXiang_KLMX_Rad	[	1	]	=	1		BaoXiang_KLMX_Count	[	1	]	=	1
	BaoXiang_KLMX	[	2	]	=	1980		BaoXiang_KLMX_Rad	[	2	]	=	1		BaoXiang_KLMX_Count	[	2	]	=	1
	BaoXiang_KLMX	[	3	]	=	1984		BaoXiang_KLMX_Rad	[	3	]	=	1		BaoXiang_KLMX_Count	[	3	]	=	1
	BaoXiang_KLMX	[	4	]	=	3816		BaoXiang_KLMX_Rad	[	4	]	=	1		BaoXiang_KLMX_Count	[	4	]	=	1
																				
																				
--	ЦдКхЦ®Л«ЅЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_ZSSJ_Qua	=	5	 				BaoXiang_ZSSJ_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_ZSSJ	=	{}					BaoXiang_ZSSJ_Rad	=	{}					BaoXiang_ZSSJ_Count	=	{}			
	BaoXiang_ZSSJ	[	1	]	=	1929		BaoXiang_ZSSJ_Rad	[	1	]	=	1		BaoXiang_ZSSJ_Count	[	1	]	=	1
	BaoXiang_ZSSJ	[	2	]	=	1936		BaoXiang_ZSSJ_Rad	[	2	]	=	1		BaoXiang_ZSSJ_Count	[	2	]	=	1
	BaoXiang_ZSSJ	[	3	]	=	1940		BaoXiang_ZSSJ_Rad	[	3	]	=	1		BaoXiang_ZSSJ_Count	[	3	]	=	1
	BaoXiang_ZSSJ	[	4	]	=	3799		BaoXiang_ZSSJ_Rad	[	4	]	=	1		BaoXiang_ZSSJ_Count	[	4	]	=	1
																				
																				
--	ЦдКхЦ®ѕЮЅЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_ZSJS_Qua	=	5	 				BaoXiang_ZSJS_Mxcount	=	2										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_ZSJS	=	{}					BaoXiang_ZSJS_Rad	=	{}					BaoXiang_ZSJS_Count	=	{}			
	BaoXiang_ZSJS	[	1	]	=	3802		BaoXiang_ZSJS_Rad	[	1	]	=	1		BaoXiang_ZSJS_Count	[	1	]	=	1
	BaoXiang_ZSJS	[	2	]	=	1932		BaoXiang_ZSJS_Rad	[	2	]	=	1		BaoXiang_ZSJS_Count	[	2	]	=	1
																				
																				
--	ЦдКхЦ®ѕС»чКЦЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_ZSJJ_Qua	=	5	 				BaoXiang_ZSJJ_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_ZSJJ	=	{}					BaoXiang_ZSJJ_Rad	=	{}					BaoXiang_ZSJJ_Count	=	{}			
	BaoXiang_ZSJJ	[	1	]	=	1944		BaoXiang_ZSJJ_Rad	[	1	]	=	1		BaoXiang_ZSJJ_Count	[	1	]	=	1
	BaoXiang_ZSJJ	[	2	]	=	1948		BaoXiang_ZSJJ_Rad	[	2	]	=	1		BaoXiang_ZSJJ_Count	[	2	]	=	1
	BaoXiang_ZSJJ	[	3	]	=	1952		BaoXiang_ZSJJ_Rad	[	3	]	=	1		BaoXiang_ZSJJ_Count	[	3	]	=	1
	BaoXiang_ZSJJ	[	4	]	=	3806		BaoXiang_ZSJJ_Rad	[	4	]	=	1		BaoXiang_ZSJJ_Count	[	4	]	=	1
																				
																				
--	ЦдКхЦ®КҐЦ°ХЯЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_ZSSZ_Qua	=	5	 				BaoXiang_ZSSZ_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_ZSSZ	=	{}					BaoXiang_ZSSZ_Rad	=	{}					BaoXiang_ZSSZ_Count	=	{}			
	BaoXiang_ZSSZ	[	1	]	=	1959		BaoXiang_ZSSZ_Rad	[	1	]	=	1		BaoXiang_ZSSZ_Count	[	1	]	=	1
	BaoXiang_ZSSZ	[	2	]	=	1966		BaoXiang_ZSSZ_Rad	[	2	]	=	1		BaoXiang_ZSSZ_Count	[	2	]	=	1
	BaoXiang_ZSSZ	[	3	]	=	1973		BaoXiang_ZSSZ_Rad	[	3	]	=	1		BaoXiang_ZSSZ_Count	[	3	]	=	1
	BaoXiang_ZSSZ	[	4	]	=	3813		BaoXiang_ZSSZ_Rad	[	4	]	=	1		BaoXiang_ZSSZ_Count	[	4	]	=	1
																				
																				
--	ЦдКхЦ®·вУЎК¦Ч°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_ZSFY_Qua	=	5	 				BaoXiang_ZSFY_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_ZSFY	=	{}					BaoXiang_ZSFY_Rad	=	{}					BaoXiang_ZSFY_Count	=	{}			
	BaoXiang_ZSFY	[	1	]	=	3810		BaoXiang_ZSFY_Rad	[	1	]	=	1		BaoXiang_ZSFY_Count	[	1	]	=	1
	BaoXiang_ZSFY	[	2	]	=	1956		BaoXiang_ZSFY_Rad	[	2	]	=	1		BaoXiang_ZSFY_Count	[	2	]	=	1
	BaoXiang_ZSFY	[	3	]	=	1963		BaoXiang_ZSFY_Rad	[	3	]	=	1		BaoXiang_ZSFY_Count	[	3	]	=	1
	BaoXiang_ZSFY	[	4	]	=	1970		BaoXiang_ZSFY_Rad	[	4	]	=	1		BaoXiang_ZSFY_Count	[	4	]	=	1
																				
																				
--	ЦдКхЦ®єЅєЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_ZSHH_Qua	=	5	 				BaoXiang_ZSHH_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_ZSHH	=	{}					BaoXiang_ZSHH_Rad	=	{}					BaoXiang_ZSHH_Count	=	{}			
	BaoXiang_ZSHH	[	1	]	=	1977		BaoXiang_ZSHH_Rad	[	1	]	=	1		BaoXiang_ZSHH_Count	[	1	]	=	1
	BaoXiang_ZSHH	[	2	]	=	1981		BaoXiang_ZSHH_Rad	[	2	]	=	1		BaoXiang_ZSHH_Count	[	2	]	=	1
	BaoXiang_ZSHH	[	3	]	=	1985		BaoXiang_ZSHH_Rad	[	3	]	=	1		BaoXiang_ZSHH_Count	[	3	]	=	1
	BaoXiang_ZSHH	[	4	]	=	3817		BaoXiang_ZSHH_Rad	[	4	]	=	1		BaoXiang_ZSHH_Count	[	4	]	=	1
																				
																				
--	»ГБйЦ®Л«ЅЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_HLSJ_Qua	=	5	 				BaoXiang_HLSJ_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_HLSJ	=	{}					BaoXiang_HLSJ_Rad	=	{}					BaoXiang_HLSJ_Count	=	{}			
	BaoXiang_HLSJ	[	1	]	=	1930		BaoXiang_HLSJ_Rad	[	1	]	=	1		BaoXiang_HLSJ_Count	[	1	]	=	1
	BaoXiang_HLSJ	[	2	]	=	1937		BaoXiang_HLSJ_Rad	[	2	]	=	1		BaoXiang_HLSJ_Count	[	2	]	=	1
	BaoXiang_HLSJ	[	3	]	=	1941		BaoXiang_HLSJ_Rad	[	3	]	=	1		BaoXiang_HLSJ_Count	[	3	]	=	1
	BaoXiang_HLSJ	[	4	]	=	3800		BaoXiang_HLSJ_Rad	[	4	]	=	1		BaoXiang_HLSJ_Count	[	4	]	=	1
																				
																				
--	»ГБйЦ®ѕЮЅЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_HLJS_Qua	=	5	 				BaoXiang_HLJS_Mxcount	=	2										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_HLJS	=	{}					BaoXiang_HLJS_Rad	=	{}					BaoXiang_HLJS_Count	=	{}			
	BaoXiang_HLJS	[	1	]	=	1933		BaoXiang_HLJS_Rad	[	1	]	=	1		BaoXiang_HLJS_Count	[	1	]	=	1
	BaoXiang_HLJS	[	2	]	=	3803		BaoXiang_HLJS_Rad	[	2	]	=	1		BaoXiang_HLJS_Count	[	2	]	=	1
																				
																				
--	»ГБйЦ®ѕС»чКЦЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_HLJJ_Qua	=	5	 				BaoXiang_HLJJ_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_HLJJ	=	{}					BaoXiang_HLJJ_Rad	=	{}					BaoXiang_HLJJ_Count	=	{}			
	BaoXiang_HLJJ	[	1	]	=	1945		BaoXiang_HLJJ_Rad	[	1	]	=	1		BaoXiang_HLJJ_Count	[	1	]	=	1
	BaoXiang_HLJJ	[	2	]	=	1949		BaoXiang_HLJJ_Rad	[	2	]	=	1		BaoXiang_HLJJ_Count	[	2	]	=	1
	BaoXiang_HLJJ	[	3	]	=	1953		BaoXiang_HLJJ_Rad	[	3	]	=	1		BaoXiang_HLJJ_Count	[	3	]	=	1
	BaoXiang_HLJJ	[	4	]	=	3807		BaoXiang_HLJJ_Rad	[	4	]	=	1		BaoXiang_HLJJ_Count	[	4	]	=	1
																				
																				
--	»ГБйЦ®КҐЦ°ХЯЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_HLSZ_Qua	=	5	 				BaoXiang_HLSZ_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_HLSZ	=	{}					BaoXiang_HLSZ_Rad	=	{}					BaoXiang_HLSZ_Count	=	{}			
	BaoXiang_HLSZ	[	1	]	=	1960		BaoXiang_HLSZ_Rad	[	1	]	=	1		BaoXiang_HLSZ_Count	[	1	]	=	1
	BaoXiang_HLSZ	[	2	]	=	1967		BaoXiang_HLSZ_Rad	[	2	]	=	1		BaoXiang_HLSZ_Count	[	2	]	=	1
	BaoXiang_HLSZ	[	3	]	=	1974		BaoXiang_HLSZ_Rad	[	3	]	=	1		BaoXiang_HLSZ_Count	[	3	]	=	1
	BaoXiang_HLSZ	[	4	]	=	3814		BaoXiang_HLSZ_Rad	[	4	]	=	1		BaoXiang_HLSZ_Count	[	4	]	=	1
																				
																				
--	»ГБйЦ®·вУЎК¦Ч°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_HLFY_Qua	=	5	 				BaoXiang_HLFY_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_HLFY	=	{}					BaoXiang_HLFY_Rad	=	{}					BaoXiang_HLFY_Count	=	{}			
	BaoXiang_HLFY	[	1	]	=	1957		BaoXiang_HLFY_Rad	[	1	]	=	1		BaoXiang_HLFY_Count	[	1	]	=	1
	BaoXiang_HLFY	[	2	]	=	1964		BaoXiang_HLFY_Rad	[	2	]	=	1		BaoXiang_HLFY_Count	[	2	]	=	1
	BaoXiang_HLFY	[	3	]	=	1971		BaoXiang_HLFY_Rad	[	3	]	=	1		BaoXiang_HLFY_Count	[	3	]	=	1
	BaoXiang_HLFY	[	4	]	=	3811		BaoXiang_HLFY_Rad	[	4	]	=	1		BaoXiang_HLFY_Count	[	4	]	=	1
																				
																				
--	»ГБйЦ®єЅєЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_HLHH_Qua	=	5	 				BaoXiang_HLHH_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_HLHH	=	{}					BaoXiang_HLHH_Rad	=	{}					BaoXiang_HLHH_Count	=	{}			
	BaoXiang_HLHH	[	1	]	=	1978		BaoXiang_HLHH_Rad	[	1	]	=	1		BaoXiang_HLHH_Count	[	1	]	=	1
	BaoXiang_HLHH	[	2	]	=	1982		BaoXiang_HLHH_Rad	[	2	]	=	1		BaoXiang_HLHH_Count	[	2	]	=	1
	BaoXiang_HLHH	[	3	]	=	1986		BaoXiang_HLHH_Rad	[	3	]	=	1		BaoXiang_HLHH_Count	[	3	]	=	1
	BaoXiang_HLHH	[	4	]	=	3818		BaoXiang_HLHH_Rad	[	4	]	=	1		BaoXiang_HLHH_Count	[	4	]	=	1
																				
																				
--	ГФЦ®Л«ЅЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_MSJ_Qua	=	5	 				BaoXiang_MSJ_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_MSJ	=	{}					BaoXiang_MSJ_Rad	=	{}					BaoXiang_MSJ_Count	=	{}			
	BaoXiang_MSJ	[	1	]	=	1931		BaoXiang_MSJ_Rad	[	1	]	=	1		BaoXiang_MSJ_Count	[	1	]	=	1
	BaoXiang_MSJ	[	2	]	=	1938		BaoXiang_MSJ_Rad	[	2	]	=	1		BaoXiang_MSJ_Count	[	2	]	=	1
	BaoXiang_MSJ	[	3	]	=	1942		BaoXiang_MSJ_Rad	[	3	]	=	1		BaoXiang_MSJ_Count	[	3	]	=	1
	BaoXiang_MSJ	[	4	]	=	3801		BaoXiang_MSJ_Rad	[	4	]	=	1		BaoXiang_MSJ_Count	[	4	]	=	1
																				
																				
--	ГФЦ®ѕЮЅЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_MJS_Qua	=	5	 				BaoXiang_MJS_Mxcount	=	2										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_MJS	=	{}					BaoXiang_MJS_Rad	=	{}					BaoXiang_MJS_Count	=	{}			
	BaoXiang_MJS	[	1	]	=	1934		BaoXiang_MJS_Rad	[	1	]	=	1		BaoXiang_MJS_Count	[	1	]	=	1
	BaoXiang_MJS	[	2	]	=	3804		BaoXiang_MJS_Rad	[	2	]	=	1		BaoXiang_MJS_Count	[	2	]	=	1
																				
																				
--	ГФЦ®ѕС»чКЦЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_MJJ_Qua	=	5	 				BaoXiang_MJJ_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_MJJ	=	{}					BaoXiang_MJJ_Rad	=	{}					BaoXiang_MJJ_Count	=	{}			
	BaoXiang_MJJ	[	1	]	=	1946		BaoXiang_MJJ_Rad	[	1	]	=	1		BaoXiang_MJJ_Count	[	1	]	=	1
	BaoXiang_MJJ	[	2	]	=	1950		BaoXiang_MJJ_Rad	[	2	]	=	1		BaoXiang_MJJ_Count	[	2	]	=	1
	BaoXiang_MJJ	[	3	]	=	1954		BaoXiang_MJJ_Rad	[	3	]	=	1		BaoXiang_MJJ_Count	[	3	]	=	1
	BaoXiang_MJJ	[	4	]	=	3808		BaoXiang_MJJ_Rad	[	4	]	=	1		BaoXiang_MJJ_Count	[	4	]	=	1
																				
																				
--	ГФЦ®КҐЦ°ХЯЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_MSZ_Qua	=	5	 				BaoXiang_MSZ_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_MSZ	=	{}					BaoXiang_MSZ_Rad	=	{}					BaoXiang_MSZ_Count	=	{}			
	BaoXiang_MSZ	[	1	]	=	1961		BaoXiang_MSZ_Rad	[	1	]	=	1		BaoXiang_MSZ_Count	[	1	]	=	1
	BaoXiang_MSZ	[	2	]	=	1968		BaoXiang_MSZ_Rad	[	2	]	=	1		BaoXiang_MSZ_Count	[	2	]	=	1
	BaoXiang_MSZ	[	3	]	=	1975		BaoXiang_MSZ_Rad	[	3	]	=	1		BaoXiang_MSZ_Count	[	3	]	=	1
	BaoXiang_MSZ	[	4	]	=	3815		BaoXiang_MSZ_Rad	[	4	]	=	1		BaoXiang_MSZ_Count	[	4	]	=	1
																				
																				
--	ГФЦ®·вУЎК¦Ч°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_MFY_Qua	=	5	 				BaoXiang_MFY_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_MFY	=	{}					BaoXiang_MFY_Rad	=	{}					BaoXiang_MFY_Count	=	{}			
	BaoXiang_MFY	[	1	]	=	1958		BaoXiang_MFY_Rad	[	1	]	=	1		BaoXiang_MFY_Count	[	1	]	=	1
	BaoXiang_MFY	[	2	]	=	1965		BaoXiang_MFY_Rad	[	2	]	=	1		BaoXiang_MFY_Count	[	2	]	=	1
	BaoXiang_MFY	[	3	]	=	1972		BaoXiang_MFY_Rad	[	3	]	=	1		BaoXiang_MFY_Count	[	3	]	=	1
	BaoXiang_MFY	[	4	]	=	3812		BaoXiang_MFY_Rad	[	4	]	=	1		BaoXiang_MFY_Count	[	4	]	=	1
																				
																				
--	ГФЦ®єЅєЈКїЧ°±ёПд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_MHH_Qua	=	5	 				BaoXiang_MHH_Mxcount	=	4										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_MHH	=	{}					BaoXiang_MHH_Rad	=	{}					BaoXiang_MHH_Count	=	{}			
	BaoXiang_MHH	[	1	]	=	1979		BaoXiang_MHH_Rad	[	1	]	=	1		BaoXiang_MHH_Count	[	1	]	=	1
	BaoXiang_MHH	[	2	]	=	1983		BaoXiang_MHH_Rad	[	2	]	=	1		BaoXiang_MHH_Count	[	2	]	=	1
	BaoXiang_MHH	[	3	]	=	1987		BaoXiang_MHH_Rad	[	3	]	=	1		BaoXiang_MHH_Count	[	3	]	=	1
	BaoXiang_MHH	[	4	]	=	3819		BaoXiang_MHH_Rad	[	4	]	=	1		BaoXiang_MHH_Count	[	4	]	=	1
																				
																				
--	·ПБй±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_FLBX_Qua	=	5	 				BaoXiang_FLBX_Mxcount	=	8										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_FLBX	=	{}					BaoXiang_FLBX_Rad	=	{}					BaoXiang_FLBX_Count	=	{}			
	BaoXiang_FLBX	[	1	]	=	1884		BaoXiang_FLBX_Rad	[	1	]	=	1		BaoXiang_FLBX_Count	[	1	]	=	1
	BaoXiang_FLBX	[	2	]	=	1891		BaoXiang_FLBX_Rad	[	2	]	=	1		BaoXiang_FLBX_Count	[	2	]	=	1
	BaoXiang_FLBX	[	3	]	=	1898		BaoXiang_FLBX_Rad	[	3	]	=	1		BaoXiang_FLBX_Count	[	3	]	=	1
	BaoXiang_FLBX	[	4	]	=	1902		BaoXiang_FLBX_Rad	[	4	]	=	1		BaoXiang_FLBX_Count	[	4	]	=	1
	BaoXiang_FLBX	[	5	]	=	1906		BaoXiang_FLBX_Rad	[	5	]	=	1		BaoXiang_FLBX_Count	[	5	]	=	1
	BaoXiang_FLBX	[	6	]	=	1910		BaoXiang_FLBX_Rad	[	6	]	=	1		BaoXiang_FLBX_Count	[	6	]	=	1
	BaoXiang_FLBX	[	7	]	=	1920		BaoXiang_FLBX_Rad	[	7	]	=	1		BaoXiang_FLBX_Count	[	7	]	=	1
	BaoXiang_FLBX	[	8	]	=	1924		BaoXiang_FLBX_Rad	[	8	]	=	1		BaoXiang_FLBX_Count	[	8	]	=	1
																				
																				
--	ХУФу±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_ZZBX_Qua	=	5	 				BaoXiang_ZZBX_Mxcount	=	12										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_ZZBX	=	{}					BaoXiang_ZZBX_Rad	=	{}					BaoXiang_ZZBX_Count	=	{}			
	BaoXiang_ZZBX	[	1	]	=	1907		BaoXiang_ZZBX_Rad	[	1	]	=	1		BaoXiang_ZZBX_Count	[	1	]	=	1
	BaoXiang_ZZBX	[	2	]	=	1911		BaoXiang_ZZBX_Rad	[	2	]	=	1		BaoXiang_ZZBX_Count	[	2	]	=	1
	BaoXiang_ZZBX	[	3	]	=	1914		BaoXiang_ZZBX_Rad	[	3	]	=	1		BaoXiang_ZZBX_Count	[	3	]	=	1
	BaoXiang_ZZBX	[	4	]	=	1921		BaoXiang_ZZBX_Rad	[	4	]	=	1		BaoXiang_ZZBX_Count	[	4	]	=	1
	BaoXiang_ZZBX	[	5	]	=	1925		BaoXiang_ZZBX_Rad	[	5	]	=	1		BaoXiang_ZZBX_Count	[	5	]	=	1
	BaoXiang_ZZBX	[	6	]	=	1917		BaoXiang_ZZBX_Rad	[	6	]	=	1		BaoXiang_ZZBX_Count	[	6	]	=	1
	BaoXiang_ZZBX	[	7	]	=	1885		BaoXiang_ZZBX_Rad	[	7	]	=	1		BaoXiang_ZZBX_Count	[	7	]	=	1
	BaoXiang_ZZBX	[	8	]	=	1888		BaoXiang_ZZBX_Rad	[	8	]	=	1		BaoXiang_ZZBX_Count	[	8	]	=	1
	BaoXiang_ZZBX	[	9	]	=	1892		BaoXiang_ZZBX_Rad	[	9	]	=	1		BaoXiang_ZZBX_Count	[	9	]	=	1
	BaoXiang_ZZBX	[	10	]	=	1895		BaoXiang_ZZBX_Rad	[	10	]	=	1		BaoXiang_ZZBX_Count	[	10	]	=	1
	BaoXiang_ZZBX	[	11	]	=	1899		BaoXiang_ZZBX_Rad	[	11	]	=	1		BaoXiang_ZZBX_Count	[	11	]	=	1
	BaoXiang_ZZBX	[	12	]	=	1903		BaoXiang_ZZBX_Rad	[	12	]	=	1		BaoXiang_ZZBX_Count	[	12	]	=	1
																				
																				
--	Д§·Ѕ±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_MFBX_Qua	=	5	 				BaoXiang_MFBX_Mxcount	=	22										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_MFBX	=	{}					BaoXiang_MFBX_Rad	=	{}					BaoXiang_MFBX_Count	=	{}			
	BaoXiang_MFBX	[	1	]	=	1908		BaoXiang_MFBX_Rad	[	1	]	=	1		BaoXiang_MFBX_Count	[	1	]	=	1
	BaoXiang_MFBX	[	2	]	=	1912		BaoXiang_MFBX_Rad	[	2	]	=	1		BaoXiang_MFBX_Count	[	2	]	=	1
	BaoXiang_MFBX	[	3	]	=	1915		BaoXiang_MFBX_Rad	[	3	]	=	1		BaoXiang_MFBX_Count	[	3	]	=	1
	BaoXiang_MFBX	[	4	]	=	1922		BaoXiang_MFBX_Rad	[	4	]	=	1		BaoXiang_MFBX_Count	[	4	]	=	1
	BaoXiang_MFBX	[	5	]	=	1926		BaoXiang_MFBX_Rad	[	5	]	=	1		BaoXiang_MFBX_Count	[	5	]	=	1
	BaoXiang_MFBX	[	6	]	=	1918		BaoXiang_MFBX_Rad	[	6	]	=	1		BaoXiang_MFBX_Count	[	6	]	=	1
	BaoXiang_MFBX	[	7	]	=	1886		BaoXiang_MFBX_Rad	[	7	]	=	1		BaoXiang_MFBX_Count	[	7	]	=	1
	BaoXiang_MFBX	[	8	]	=	1889		BaoXiang_MFBX_Rad	[	8	]	=	1		BaoXiang_MFBX_Count	[	8	]	=	1
	BaoXiang_MFBX	[	9	]	=	1893		BaoXiang_MFBX_Rad	[	9	]	=	1		BaoXiang_MFBX_Count	[	9	]	=	1
	BaoXiang_MFBX	[	10	]	=	1896		BaoXiang_MFBX_Rad	[	10	]	=	1		BaoXiang_MFBX_Count	[	10	]	=	1
	BaoXiang_MFBX	[	11	]	=	1900		BaoXiang_MFBX_Rad	[	11	]	=	1		BaoXiang_MFBX_Count	[	11	]	=	1
	BaoXiang_MFBX	[	12	]	=	1904		BaoXiang_MFBX_Rad	[	12	]	=	1		BaoXiang_MFBX_Count	[	12	]	=	1
	BaoXiang_MFBX	[	13	]	=	1988		BaoXiang_MFBX_Rad	[	13	]	=	1		BaoXiang_MFBX_Count	[	13	]	=	1
	BaoXiang_MFBX	[	14	]	=	1989		BaoXiang_MFBX_Rad	[	14	]	=	1		BaoXiang_MFBX_Count	[	14	]	=	1
	BaoXiang_MFBX	[	15	]	=	1990		BaoXiang_MFBX_Rad	[	15	]	=	1		BaoXiang_MFBX_Count	[	15	]	=	1
	BaoXiang_MFBX	[	16	]	=	1991		BaoXiang_MFBX_Rad	[	16	]	=	1		BaoXiang_MFBX_Count	[	16	]	=	1
	BaoXiang_MFBX	[	17	]	=	1992		BaoXiang_MFBX_Rad	[	17	]	=	1		BaoXiang_MFBX_Count	[	17	]	=	1
	BaoXiang_MFBX	[	18	]	=	1993		BaoXiang_MFBX_Rad	[	18	]	=	1		BaoXiang_MFBX_Count	[	18	]	=	1
	BaoXiang_MFBX	[	19	]	=	1994		BaoXiang_MFBX_Rad	[	19	]	=	1		BaoXiang_MFBX_Count	[	19	]	=	1
	BaoXiang_MFBX	[	20	]	=	1995		BaoXiang_MFBX_Rad	[	20	]	=	1		BaoXiang_MFBX_Count	[	20	]	=	1
	BaoXiang_MFBX	[	21	]	=	1996		BaoXiang_MFBX_Rad	[	21	]	=	1		BaoXiang_MFBX_Count	[	21	]	=	1
	BaoXiang_MFBX	[	22	]	=	1997		BaoXiang_MFBX_Rad	[	22	]	=	1		BaoXiang_MFBX_Count	[	22	]	=	1
																				
																				
--	ГФЦ®±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_MZBX_Qua	=	5	 				BaoXiang_MZBX_Mxcount	=	12										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_MZBX	=	{}					BaoXiang_MZBX_Rad	=	{}					BaoXiang_MZBX_Count	=	{}			
	BaoXiang_MZBX	[	1	]	=	1887		BaoXiang_MZBX_Rad	[	1	]	=	1		BaoXiang_MZBX_Count	[	1	]	=	1
	BaoXiang_MZBX	[	2	]	=	1890		BaoXiang_MZBX_Rad	[	2	]	=	1		BaoXiang_MZBX_Count	[	2	]	=	1
	BaoXiang_MZBX	[	3	]	=	1894		BaoXiang_MZBX_Rad	[	3	]	=	1		BaoXiang_MZBX_Count	[	3	]	=	1
	BaoXiang_MZBX	[	4	]	=	1897		BaoXiang_MZBX_Rad	[	4	]	=	1		BaoXiang_MZBX_Count	[	4	]	=	1
	BaoXiang_MZBX	[	5	]	=	1901		BaoXiang_MZBX_Rad	[	5	]	=	1		BaoXiang_MZBX_Count	[	5	]	=	1
	BaoXiang_MZBX	[	6	]	=	1905		BaoXiang_MZBX_Rad	[	6	]	=	1		BaoXiang_MZBX_Count	[	6	]	=	1
	BaoXiang_MZBX	[	7	]	=	1909		BaoXiang_MZBX_Rad	[	7	]	=	1		BaoXiang_MZBX_Count	[	7	]	=	1
	BaoXiang_MZBX	[	8	]	=	1913		BaoXiang_MZBX_Rad	[	8	]	=	1		BaoXiang_MZBX_Count	[	8	]	=	1
	BaoXiang_MZBX	[	9	]	=	1916		BaoXiang_MZBX_Rad	[	9	]	=	1		BaoXiang_MZBX_Count	[	9	]	=	1
	BaoXiang_MZBX	[	10	]	=	1923		BaoXiang_MZBX_Rad	[	10	]	=	1		BaoXiang_MZBX_Count	[	10	]	=	1
	BaoXiang_MZBX	[	11	]	=	1927		BaoXiang_MZBX_Rad	[	11	]	=	1		BaoXiang_MZBX_Count	[	11	]	=	1
	BaoXiang_MZBX	[	12	]	=	1919		BaoXiang_MZBX_Rad	[	12	]	=	1		BaoXiang_MZBX_Count	[	12	]	=	1

--	КҐµ®НаЧУ±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_SDWZBOX_Qua	=	5	 				BaoXiang_SDWZBOX_Mxcount	=	19										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_SDWZBOX	=	{}					BaoXiang_SDWZBOX_Rad	=	{}					BaoXiang_SDWZBOX_Count	=	{}			
	BaoXiang_SDWZBOX	[	1	]	=	0863		BaoXiang_SDWZBOX_Rad	[	1	]	=	1		BaoXiang_SDWZBOX_Count	[	1	]	=	1
	BaoXiang_SDWZBOX	[	2	]	=	0862		BaoXiang_SDWZBOX_Rad	[	2	]	=	1		BaoXiang_SDWZBOX_Count	[	2	]	=	1
	BaoXiang_SDWZBOX	[	3	]	=	0861		BaoXiang_SDWZBOX_Rad	[	3	]	=	2		BaoXiang_SDWZBOX_Count	[	3	]	=	1
	BaoXiang_SDWZBOX	[	4	]	=	0860		BaoXiang_SDWZBOX_Rad	[	4	]	=	2		BaoXiang_SDWZBOX_Count	[	4	]	=	1
	BaoXiang_SDWZBOX	[	5	]	=	1012		BaoXiang_SDWZBOX_Rad	[	5	]	=	1		BaoXiang_SDWZBOX_Count	[	5	]	=	1
	BaoXiang_SDWZBOX	[	6	]	=	0899		BaoXiang_SDWZBOX_Rad	[	6	]	=	5		BaoXiang_SDWZBOX_Count	[	6	]	=	1
	BaoXiang_SDWZBOX	[	7	]	=	0900		BaoXiang_SDWZBOX_Rad	[	7	]	=	5		BaoXiang_SDWZBOX_Count	[	7	]	=	1
	BaoXiang_SDWZBOX	[	8	]	=	0901		BaoXiang_SDWZBOX_Rad	[	8	]	=	5		BaoXiang_SDWZBOX_Count	[	8	]	=	1
	BaoXiang_SDWZBOX	[	9	]	=	0902		BaoXiang_SDWZBOX_Rad	[	9	]	=	5		BaoXiang_SDWZBOX_Count	[	9	]	=	1
	BaoXiang_SDWZBOX	[	10	]	=	0903		BaoXiang_SDWZBOX_Rad	[	10	]	=	5		BaoXiang_SDWZBOX_Count	[	10	]	=	1
	BaoXiang_SDWZBOX	[	18	]	=	0885		BaoXiang_SDWZBOX_Rad	[	11	]	=	5		BaoXiang_SDWZBOX_Count	[	11	]	=	1
	BaoXiang_SDWZBOX	[	11	]	=	0878		BaoXiang_SDWZBOX_Rad	[	12	]	=	7		BaoXiang_SDWZBOX_Count	[	12	]	=	1
	BaoXiang_SDWZBOX	[	12	]	=	0879		BaoXiang_SDWZBOX_Rad	[	13	]	=	8		BaoXiang_SDWZBOX_Count	[	13	]	=	1
	BaoXiang_SDWZBOX	[	13	]	=	0880		BaoXiang_SDWZBOX_Rad	[	14	]	=	8		BaoXiang_SDWZBOX_Count	[	14	]	=	1
	BaoXiang_SDWZBOX	[	14	]	=	0881		BaoXiang_SDWZBOX_Rad	[	15	]	=	8		BaoXiang_SDWZBOX_Count	[	15	]	=	1
	BaoXiang_SDWZBOX	[	15	]	=	0882		BaoXiang_SDWZBOX_Rad	[	16	]	=	8		BaoXiang_SDWZBOX_Count	[	16	]	=	1
	BaoXiang_SDWZBOX	[	16	]	=	0883		BaoXiang_SDWZBOX_Rad	[	17	]	=	8		BaoXiang_SDWZBOX_Count	[	17	]	=	1
	BaoXiang_SDWZBOX	[	17	]	=	0884		BaoXiang_SDWZBOX_Rad	[	18	]	=	8		BaoXiang_SDWZBOX_Count	[	18	]	=	1
	BaoXiang_SDWZBOX	[	19	]	=	0887		BaoXiang_SDWZBOX_Rad	[	19	]	=	8		BaoXiang_SDWZBOX_Count	[	19	]	=	1
																				
--	КҐµ®АсєР±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_SDLHBOX_Qua	=	5	 				BaoXiang_SDLHBOX_Mxcount	=	150										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК							ОпЖ·КэДї					
	BaoXiang_SDLHBOX	=	{}					BaoXiang_SDLHBOX_Rad	=	{}					BaoXiang_SDLHBOX_Count	=	{}			
	BaoXiang_SDLHBOX	[	1	]	=	0004		BaoXiang_SDLHBOX_Rad	[	1	]	=	1		BaoXiang_SDLHBOX_Count	[	1	]	=	1
	BaoXiang_SDLHBOX	[	2	]	=	0005		BaoXiang_SDLHBOX_Rad	[	2	]	=	1		BaoXiang_SDLHBOX_Count	[	2	]	=	1
	BaoXiang_SDLHBOX	[	3	]	=	0006		BaoXiang_SDLHBOX_Rad	[	3	]	=	1		BaoXiang_SDLHBOX_Count	[	3	]	=	1
	BaoXiang_SDLHBOX	[	4	]	=	0015		BaoXiang_SDLHBOX_Rad	[	4	]	=	1		BaoXiang_SDLHBOX_Count	[	4	]	=	1
	BaoXiang_SDLHBOX	[	5	]	=	0016		BaoXiang_SDLHBOX_Rad	[	5	]	=	1		BaoXiang_SDLHBOX_Count	[	5	]	=	1
	BaoXiang_SDLHBOX	[	6	]	=	0017		BaoXiang_SDLHBOX_Rad	[	6	]	=	1		BaoXiang_SDLHBOX_Count	[	6	]	=	1
	BaoXiang_SDLHBOX	[	7	]	=	0039		BaoXiang_SDLHBOX_Rad	[	7	]	=	1		BaoXiang_SDLHBOX_Count	[	7	]	=	1
	BaoXiang_SDLHBOX	[	8	]	=	0040		BaoXiang_SDLHBOX_Rad	[	8	]	=	1		BaoXiang_SDLHBOX_Count	[	8	]	=	1
	BaoXiang_SDLHBOX	[	9	]	=	0041		BaoXiang_SDLHBOX_Rad	[	9	]	=	1		BaoXiang_SDLHBOX_Count	[	9	]	=	1
	BaoXiang_SDLHBOX	[	10	]	=	0076		BaoXiang_SDLHBOX_Rad	[	10	]	=	1		BaoXiang_SDLHBOX_Count	[	10	]	=	1
	BaoXiang_SDLHBOX	[	11	]	=	0077		BaoXiang_SDLHBOX_Rad	[	11	]	=	1		BaoXiang_SDLHBOX_Count	[	11	]	=	1
	BaoXiang_SDLHBOX	[	12	]	=	0078		BaoXiang_SDLHBOX_Rad	[	12	]	=	1		BaoXiang_SDLHBOX_Count	[	12	]	=	1
	BaoXiang_SDLHBOX	[	13	]	=	0100		BaoXiang_SDLHBOX_Rad	[	13	]	=	1		BaoXiang_SDLHBOX_Count	[	13	]	=	1
	BaoXiang_SDLHBOX	[	14	]	=	0103		BaoXiang_SDLHBOX_Rad	[	14	]	=	1		BaoXiang_SDLHBOX_Count	[	14	]	=	1
	BaoXiang_SDLHBOX	[	15	]	=	4303		BaoXiang_SDLHBOX_Rad	[	15	]	=	1		BaoXiang_SDLHBOX_Count	[	15	]	=	1
	BaoXiang_SDLHBOX	[	16	]	=	0101		BaoXiang_SDLHBOX_Rad	[	16	]	=	1		BaoXiang_SDLHBOX_Count	[	16	]	=	1
	BaoXiang_SDLHBOX	[	17	]	=	0102		BaoXiang_SDLHBOX_Rad	[	17	]	=	1		BaoXiang_SDLHBOX_Count	[	17	]	=	1
	BaoXiang_SDLHBOX	[	18	]	=	4300		BaoXiang_SDLHBOX_Rad	[	18	]	=	1		BaoXiang_SDLHBOX_Count	[	18	]	=	1
	BaoXiang_SDLHBOX	[	19	]	=	3122		BaoXiang_SDLHBOX_Rad	[	19	]	=	25		BaoXiang_SDLHBOX_Count	[	19	]	=	10
	BaoXiang_SDLHBOX	[	20	]	=	3123		BaoXiang_SDLHBOX_Rad	[	20	]	=	25		BaoXiang_SDLHBOX_Count	[	20	]	=	8
	BaoXiang_SDLHBOX	[	21	]	=	3124		BaoXiang_SDLHBOX_Rad	[	21	]	=	25		BaoXiang_SDLHBOX_Count	[	21	]	=	5
	BaoXiang_SDLHBOX	[	22	]	=	3125		BaoXiang_SDLHBOX_Rad	[	22	]	=	25		BaoXiang_SDLHBOX_Count	[	22	]	=	4
	BaoXiang_SDLHBOX	[	23	]	=	3126		BaoXiang_SDLHBOX_Rad	[	23	]	=	25		BaoXiang_SDLHBOX_Count	[	23	]	=	4
	BaoXiang_SDLHBOX	[	24	]	=	3127		BaoXiang_SDLHBOX_Rad	[	24	]	=	20		BaoXiang_SDLHBOX_Count	[	24	]	=	3
	BaoXiang_SDLHBOX	[	25	]	=	3128		BaoXiang_SDLHBOX_Rad	[	25	]	=	20		BaoXiang_SDLHBOX_Count	[	25	]	=	3
	BaoXiang_SDLHBOX	[	26	]	=	3133		BaoXiang_SDLHBOX_Rad	[	26	]	=	20		BaoXiang_SDLHBOX_Count	[	26	]	=	5
	BaoXiang_SDLHBOX	[	27	]	=	3134		BaoXiang_SDLHBOX_Rad	[	27	]	=	20		BaoXiang_SDLHBOX_Count	[	27	]	=	4
	BaoXiang_SDLHBOX	[	28	]	=	3135		BaoXiang_SDLHBOX_Rad	[	28	]	=	20		BaoXiang_SDLHBOX_Count	[	28	]	=	4
	BaoXiang_SDLHBOX	[	29	]	=	3136		BaoXiang_SDLHBOX_Rad	[	29	]	=	20		BaoXiang_SDLHBOX_Count	[	29	]	=	3
	BaoXiang_SDLHBOX	[	30	]	=	3137		BaoXiang_SDLHBOX_Rad	[	30	]	=	20		BaoXiang_SDLHBOX_Count	[	30	]	=	3
	BaoXiang_SDLHBOX	[	31	]	=	3138		BaoXiang_SDLHBOX_Rad	[	31	]	=	20		BaoXiang_SDLHBOX_Count	[	31	]	=	2
	BaoXiang_SDLHBOX	[	32	]	=	3139		BaoXiang_SDLHBOX_Rad	[	32	]	=	20		BaoXiang_SDLHBOX_Count	[	32	]	=	2
	BaoXiang_SDLHBOX	[	33	]	=	3140		BaoXiang_SDLHBOX_Rad	[	33	]	=	20		BaoXiang_SDLHBOX_Count	[	33	]	=	1
	BaoXiang_SDLHBOX	[	34	]	=	0293		BaoXiang_SDLHBOX_Rad	[	34	]	=	1		BaoXiang_SDLHBOX_Count	[	34	]	=	1
	BaoXiang_SDLHBOX	[	35	]	=	0295		BaoXiang_SDLHBOX_Rad	[	35	]	=	1		BaoXiang_SDLHBOX_Count	[	35	]	=	1
	BaoXiang_SDLHBOX	[	36	]	=	0299		BaoXiang_SDLHBOX_Rad	[	36	]	=	1		BaoXiang_SDLHBOX_Count	[	36	]	=	1
	BaoXiang_SDLHBOX	[	37	]	=	0300		BaoXiang_SDLHBOX_Rad	[	37	]	=	1		BaoXiang_SDLHBOX_Count	[	37	]	=	1
	BaoXiang_SDLHBOX	[	38	]	=	0301		BaoXiang_SDLHBOX_Rad	[	38	]	=	1		BaoXiang_SDLHBOX_Count	[	38	]	=	1
	BaoXiang_SDLHBOX	[	39	]	=	0302		BaoXiang_SDLHBOX_Rad	[	39	]	=	1		BaoXiang_SDLHBOX_Count	[	39	]	=	1
	BaoXiang_SDLHBOX	[	40	]	=	0307		BaoXiang_SDLHBOX_Rad	[	40	]	=	1		BaoXiang_SDLHBOX_Count	[	40	]	=	1
	BaoXiang_SDLHBOX	[	41	]	=	0310		BaoXiang_SDLHBOX_Rad	[	41	]	=	1		BaoXiang_SDLHBOX_Count	[	41	]	=	1
	BaoXiang_SDLHBOX	[	42	]	=	0312		BaoXiang_SDLHBOX_Rad	[	42	]	=	1		BaoXiang_SDLHBOX_Count	[	42	]	=	1
	BaoXiang_SDLHBOX	[	43	]	=	0314		BaoXiang_SDLHBOX_Rad	[	43	]	=	1		BaoXiang_SDLHBOX_Count	[	43	]	=	1
	BaoXiang_SDLHBOX	[	44	]	=	0315		BaoXiang_SDLHBOX_Rad	[	44	]	=	1		BaoXiang_SDLHBOX_Count	[	44	]	=	1
	BaoXiang_SDLHBOX	[	45	]	=	0316		BaoXiang_SDLHBOX_Rad	[	45	]	=	1		BaoXiang_SDLHBOX_Count	[	45	]	=	1
	BaoXiang_SDLHBOX	[	46	]	=	0339		BaoXiang_SDLHBOX_Rad	[	46	]	=	1		BaoXiang_SDLHBOX_Count	[	46	]	=	1
	BaoXiang_SDLHBOX	[	47	]	=	0341		BaoXiang_SDLHBOX_Rad	[	47	]	=	1		BaoXiang_SDLHBOX_Count	[	47	]	=	1
	BaoXiang_SDLHBOX	[	48	]	=	0342		BaoXiang_SDLHBOX_Rad	[	48	]	=	1		BaoXiang_SDLHBOX_Count	[	48	]	=	1
	BaoXiang_SDLHBOX	[	49	]	=	0343		BaoXiang_SDLHBOX_Rad	[	49	]	=	1		BaoXiang_SDLHBOX_Count	[	49	]	=	1
	BaoXiang_SDLHBOX	[	50	]	=	0344		BaoXiang_SDLHBOX_Rad	[	50	]	=	1		BaoXiang_SDLHBOX_Count	[	50	]	=	1
	BaoXiang_SDLHBOX	[	51	]	=	0345		BaoXiang_SDLHBOX_Rad	[	51	]	=	1		BaoXiang_SDLHBOX_Count	[	51	]	=	1
	BaoXiang_SDLHBOX	[	52	]	=	0350		BaoXiang_SDLHBOX_Rad	[	52	]	=	1		BaoXiang_SDLHBOX_Count	[	52	]	=	1
	BaoXiang_SDLHBOX	[	53	]	=	0353		BaoXiang_SDLHBOX_Rad	[	53	]	=	1		BaoXiang_SDLHBOX_Count	[	53	]	=	1
	BaoXiang_SDLHBOX	[	54	]	=	0354		BaoXiang_SDLHBOX_Rad	[	54	]	=	1		BaoXiang_SDLHBOX_Count	[	54	]	=	1
	BaoXiang_SDLHBOX	[	55	]	=	0355		BaoXiang_SDLHBOX_Rad	[	55	]	=	1		BaoXiang_SDLHBOX_Count	[	55	]	=	1
	BaoXiang_SDLHBOX	[	56	]	=	0356		BaoXiang_SDLHBOX_Rad	[	56	]	=	1		BaoXiang_SDLHBOX_Count	[	56	]	=	1
	BaoXiang_SDLHBOX	[	57	]	=	0357		BaoXiang_SDLHBOX_Rad	[	57	]	=	1		BaoXiang_SDLHBOX_Count	[	57	]	=	1
	BaoXiang_SDLHBOX	[	58	]	=	0358		BaoXiang_SDLHBOX_Rad	[	58	]	=	1		BaoXiang_SDLHBOX_Count	[	58	]	=	1
	BaoXiang_SDLHBOX	[	59	]	=	0361		BaoXiang_SDLHBOX_Rad	[	59	]	=	1		BaoXiang_SDLHBOX_Count	[	59	]	=	1
	BaoXiang_SDLHBOX	[	60	]	=	0362		BaoXiang_SDLHBOX_Rad	[	60	]	=	1		BaoXiang_SDLHBOX_Count	[	60	]	=	1
	BaoXiang_SDLHBOX	[	61	]	=	0363		BaoXiang_SDLHBOX_Rad	[	61	]	=	1		BaoXiang_SDLHBOX_Count	[	61	]	=	1
	BaoXiang_SDLHBOX	[	62	]	=	0364		BaoXiang_SDLHBOX_Rad	[	62	]	=	1		BaoXiang_SDLHBOX_Count	[	62	]	=	1
	BaoXiang_SDLHBOX	[	63	]	=	0367		BaoXiang_SDLHBOX_Rad	[	63	]	=	1		BaoXiang_SDLHBOX_Count	[	63	]	=	1
	BaoXiang_SDLHBOX	[	64	]	=	0368		BaoXiang_SDLHBOX_Rad	[	64	]	=	1		BaoXiang_SDLHBOX_Count	[	64	]	=	1
	BaoXiang_SDLHBOX	[	65	]	=	0369		BaoXiang_SDLHBOX_Rad	[	65	]	=	1		BaoXiang_SDLHBOX_Count	[	65	]	=	1
	BaoXiang_SDLHBOX	[	66	]	=	0370		BaoXiang_SDLHBOX_Rad	[	66	]	=	1		BaoXiang_SDLHBOX_Count	[	66	]	=	1
	BaoXiang_SDLHBOX	[	67	]	=	0371		BaoXiang_SDLHBOX_Rad	[	67	]	=	1		BaoXiang_SDLHBOX_Count	[	67	]	=	1
	BaoXiang_SDLHBOX	[	68	]	=	0374		BaoXiang_SDLHBOX_Rad	[	68	]	=	1		BaoXiang_SDLHBOX_Count	[	68	]	=	1
	BaoXiang_SDLHBOX	[	69	]	=	0375		BaoXiang_SDLHBOX_Rad	[	69	]	=	1		BaoXiang_SDLHBOX_Count	[	69	]	=	1
	BaoXiang_SDLHBOX	[	70	]	=	0376		BaoXiang_SDLHBOX_Rad	[	70	]	=	1		BaoXiang_SDLHBOX_Count	[	70	]	=	1
	BaoXiang_SDLHBOX	[	71	]	=	0377		BaoXiang_SDLHBOX_Rad	[	71	]	=	1		BaoXiang_SDLHBOX_Count	[	71	]	=	1
	BaoXiang_SDLHBOX	[	72	]	=	0378		BaoXiang_SDLHBOX_Rad	[	72	]	=	1		BaoXiang_SDLHBOX_Count	[	72	]	=	1
	BaoXiang_SDLHBOX	[	73	]	=	0379		BaoXiang_SDLHBOX_Rad	[	73	]	=	1		BaoXiang_SDLHBOX_Count	[	73	]	=	1
	BaoXiang_SDLHBOX	[	74	]	=	0382		BaoXiang_SDLHBOX_Rad	[	74	]	=	1		BaoXiang_SDLHBOX_Count	[	74	]	=	1
	BaoXiang_SDLHBOX	[	75	]	=	0820		BaoXiang_SDLHBOX_Rad	[	75	]	=	1		BaoXiang_SDLHBOX_Count	[	75	]	=	1
	BaoXiang_SDLHBOX	[	76	]	=	0821		BaoXiang_SDLHBOX_Rad	[	76	]	=	1		BaoXiang_SDLHBOX_Count	[	76	]	=	1
	BaoXiang_SDLHBOX	[	77	]	=	0870		BaoXiang_SDLHBOX_Rad	[	77	]	=	1		BaoXiang_SDLHBOX_Count	[	77	]	=	1
	BaoXiang_SDLHBOX	[	78	]	=	0871		BaoXiang_SDLHBOX_Rad	[	78	]	=	1		BaoXiang_SDLHBOX_Count	[	78	]	=	1
	BaoXiang_SDLHBOX	[	79	]	=	0875		BaoXiang_SDLHBOX_Rad	[	79	]	=	1		BaoXiang_SDLHBOX_Count	[	79	]	=	1
	BaoXiang_SDLHBOX	[	80	]	=	0876		BaoXiang_SDLHBOX_Rad	[	80	]	=	1		BaoXiang_SDLHBOX_Count	[	80	]	=	1
	BaoXiang_SDLHBOX	[	81	]	=	1787		BaoXiang_SDLHBOX_Rad	[	81	]	=	15		BaoXiang_SDLHBOX_Count	[	81	]	=	2
	BaoXiang_SDLHBOX	[	82	]	=	1788		BaoXiang_SDLHBOX_Rad	[	82	]	=	15		BaoXiang_SDLHBOX_Count	[	82	]	=	2
	BaoXiang_SDLHBOX	[	83	]	=	1789		BaoXiang_SDLHBOX_Rad	[	83	]	=	15		BaoXiang_SDLHBOX_Count	[	83	]	=	2
	BaoXiang_SDLHBOX	[	84	]	=	1790		BaoXiang_SDLHBOX_Rad	[	84	]	=	15		BaoXiang_SDLHBOX_Count	[	84	]	=	2
	BaoXiang_SDLHBOX	[	85	]	=	1791		BaoXiang_SDLHBOX_Rad	[	85	]	=	15		BaoXiang_SDLHBOX_Count	[	85	]	=	2
	BaoXiang_SDLHBOX	[	86	]	=	1792		BaoXiang_SDLHBOX_Rad	[	86	]	=	15		BaoXiang_SDLHBOX_Count	[	86	]	=	2
	BaoXiang_SDLHBOX	[	87	]	=	1793		BaoXiang_SDLHBOX_Rad	[	87	]	=	15		BaoXiang_SDLHBOX_Count	[	87	]	=	2
	BaoXiang_SDLHBOX	[	88	]	=	1797		BaoXiang_SDLHBOX_Rad	[	88	]	=	15		BaoXiang_SDLHBOX_Count	[	88	]	=	1
	BaoXiang_SDLHBOX	[	89	]	=	1798		BaoXiang_SDLHBOX_Rad	[	89	]	=	15		BaoXiang_SDLHBOX_Count	[	89	]	=	1
	BaoXiang_SDLHBOX	[	90	]	=	1799		BaoXiang_SDLHBOX_Rad	[	90	]	=	15		BaoXiang_SDLHBOX_Count	[	90	]	=	1
	BaoXiang_SDLHBOX	[	91	]	=	1800		BaoXiang_SDLHBOX_Rad	[	91	]	=	15		BaoXiang_SDLHBOX_Count	[	91	]	=	1
	BaoXiang_SDLHBOX	[	92	]	=	1801		BaoXiang_SDLHBOX_Rad	[	92	]	=	15		BaoXiang_SDLHBOX_Count	[	92	]	=	1
	BaoXiang_SDLHBOX	[	93	]	=	1802		BaoXiang_SDLHBOX_Rad	[	93	]	=	15		BaoXiang_SDLHBOX_Count	[	93	]	=	1
	BaoXiang_SDLHBOX	[	94	]	=	1803		BaoXiang_SDLHBOX_Rad	[	94	]	=	15		BaoXiang_SDLHBOX_Count	[	94	]	=	1
	BaoXiang_SDLHBOX	[	95	]	=	1804		BaoXiang_SDLHBOX_Rad	[	95	]	=	15		BaoXiang_SDLHBOX_Count	[	95	]	=	1
	BaoXiang_SDLHBOX	[	96	]	=	1805		BaoXiang_SDLHBOX_Rad	[	96	]	=	15		BaoXiang_SDLHBOX_Count	[	96	]	=	1
	BaoXiang_SDLHBOX	[	97	]	=	1806		BaoXiang_SDLHBOX_Rad	[	97	]	=	15		BaoXiang_SDLHBOX_Count	[	97	]	=	1
	BaoXiang_SDLHBOX	[	98	]	=	1807		BaoXiang_SDLHBOX_Rad	[	98	]	=	300		BaoXiang_SDLHBOX_Count	[	98	]	=	1
	BaoXiang_SDLHBOX	[	99	]	=	1808		BaoXiang_SDLHBOX_Rad	[	99	]	=	15		BaoXiang_SDLHBOX_Count	[	99	]	=	1
	BaoXiang_SDLHBOX	[	100	]	=	1809		BaoXiang_SDLHBOX_Rad	[	100	]	=	15		BaoXiang_SDLHBOX_Count	[	100	]	=	1
	BaoXiang_SDLHBOX	[	101	]	=	1810		BaoXiang_SDLHBOX_Rad	[	101	]	=	15		BaoXiang_SDLHBOX_Count	[	101	]	=	1
	BaoXiang_SDLHBOX	[	102	]	=	1811		BaoXiang_SDLHBOX_Rad	[	102	]	=	15		BaoXiang_SDLHBOX_Count	[	102	]	=	1
	BaoXiang_SDLHBOX	[	103	]	=	4606		BaoXiang_SDLHBOX_Rad	[	103	]	=	1		BaoXiang_SDLHBOX_Count	[	103	]	=	1
	BaoXiang_SDLHBOX	[	104	]	=	4607		BaoXiang_SDLHBOX_Rad	[	104	]	=	1		BaoXiang_SDLHBOX_Count	[	104	]	=	1
	BaoXiang_SDLHBOX	[	105	]	=	4608		BaoXiang_SDLHBOX_Rad	[	105	]	=	1		BaoXiang_SDLHBOX_Count	[	105	]	=	1
	BaoXiang_SDLHBOX	[	106	]	=	4609		BaoXiang_SDLHBOX_Rad	[	106	]	=	1		BaoXiang_SDLHBOX_Count	[	106	]	=	1
	BaoXiang_SDLHBOX	[	107	]	=	4610		BaoXiang_SDLHBOX_Rad	[	107	]	=	1		BaoXiang_SDLHBOX_Count	[	107	]	=	1
	BaoXiang_SDLHBOX	[	108	]	=	4636		BaoXiang_SDLHBOX_Rad	[	108	]	=	1		BaoXiang_SDLHBOX_Count	[	108	]	=	1
	BaoXiang_SDLHBOX	[	109	]	=	4637		BaoXiang_SDLHBOX_Rad	[	109	]	=	1		BaoXiang_SDLHBOX_Count	[	109	]	=	1
	BaoXiang_SDLHBOX	[	110	]	=	4638		BaoXiang_SDLHBOX_Rad	[	110	]	=	1		BaoXiang_SDLHBOX_Count	[	110	]	=	1
	BaoXiang_SDLHBOX	[	111	]	=	4639		BaoXiang_SDLHBOX_Rad	[	111	]	=	1		BaoXiang_SDLHBOX_Count	[	111	]	=	1
	BaoXiang_SDLHBOX	[	112	]	=	4640		BaoXiang_SDLHBOX_Rad	[	112	]	=	1		BaoXiang_SDLHBOX_Count	[	112	]	=	1
	BaoXiang_SDLHBOX	[	113	]	=	4691		BaoXiang_SDLHBOX_Rad	[	113	]	=	1		BaoXiang_SDLHBOX_Count	[	113	]	=	1
	BaoXiang_SDLHBOX	[	114	]	=	4692		BaoXiang_SDLHBOX_Rad	[	114	]	=	1		BaoXiang_SDLHBOX_Count	[	114	]	=	1
	BaoXiang_SDLHBOX	[	115	]	=	4693		BaoXiang_SDLHBOX_Rad	[	115	]	=	1		BaoXiang_SDLHBOX_Count	[	115	]	=	1
	BaoXiang_SDLHBOX	[	116	]	=	4694		BaoXiang_SDLHBOX_Rad	[	116	]	=	1		BaoXiang_SDLHBOX_Count	[	116	]	=	1
	BaoXiang_SDLHBOX	[	117	]	=	4695		BaoXiang_SDLHBOX_Rad	[	117	]	=	1		BaoXiang_SDLHBOX_Count	[	117	]	=	1
	BaoXiang_SDLHBOX	[	118	]	=	4641		BaoXiang_SDLHBOX_Rad	[	118	]	=	1		BaoXiang_SDLHBOX_Count	[	118	]	=	1
	BaoXiang_SDLHBOX	[	119	]	=	4642		BaoXiang_SDLHBOX_Rad	[	119	]	=	1		BaoXiang_SDLHBOX_Count	[	119	]	=	1
	BaoXiang_SDLHBOX	[	120	]	=	4643		BaoXiang_SDLHBOX_Rad	[	120	]	=	1		BaoXiang_SDLHBOX_Count	[	120	]	=	1
	BaoXiang_SDLHBOX	[	121	]	=	4644		BaoXiang_SDLHBOX_Rad	[	121	]	=	1		BaoXiang_SDLHBOX_Count	[	121	]	=	1
	BaoXiang_SDLHBOX	[	122	]	=	4645		BaoXiang_SDLHBOX_Rad	[	122	]	=	1		BaoXiang_SDLHBOX_Count	[	122	]	=	1
	BaoXiang_SDLHBOX	[	123	]	=	4696		BaoXiang_SDLHBOX_Rad	[	123	]	=	1		BaoXiang_SDLHBOX_Count	[	123	]	=	1
	BaoXiang_SDLHBOX	[	124	]	=	4697		BaoXiang_SDLHBOX_Rad	[	124	]	=	1		BaoXiang_SDLHBOX_Count	[	124	]	=	1
	BaoXiang_SDLHBOX	[	125	]	=	4698		BaoXiang_SDLHBOX_Rad	[	125	]	=	1		BaoXiang_SDLHBOX_Count	[	125	]	=	1
	BaoXiang_SDLHBOX	[	126	]	=	4699		BaoXiang_SDLHBOX_Rad	[	126	]	=	1		BaoXiang_SDLHBOX_Count	[	126	]	=	1
	BaoXiang_SDLHBOX	[	127	]	=	4646		BaoXiang_SDLHBOX_Rad	[	127	]	=	1		BaoXiang_SDLHBOX_Count	[	127	]	=	1
	BaoXiang_SDLHBOX	[	128	]	=	4647		BaoXiang_SDLHBOX_Rad	[	128	]	=	1		BaoXiang_SDLHBOX_Count	[	128	]	=	1
	BaoXiang_SDLHBOX	[	129	]	=	4648		BaoXiang_SDLHBOX_Rad	[	129	]	=	1		BaoXiang_SDLHBOX_Count	[	129	]	=	1
	BaoXiang_SDLHBOX	[	130	]	=	4649		BaoXiang_SDLHBOX_Rad	[	130	]	=	1		BaoXiang_SDLHBOX_Count	[	130	]	=	1
	BaoXiang_SDLHBOX	[	131	]	=	4650		BaoXiang_SDLHBOX_Rad	[	131	]	=	1		BaoXiang_SDLHBOX_Count	[	131	]	=	1
	BaoXiang_SDLHBOX	[	132	]	=	4701		BaoXiang_SDLHBOX_Rad	[	132	]	=	1		BaoXiang_SDLHBOX_Count	[	132	]	=	1
	BaoXiang_SDLHBOX	[	133	]	=	4702		BaoXiang_SDLHBOX_Rad	[	133	]	=	1		BaoXiang_SDLHBOX_Count	[	133	]	=	1
	BaoXiang_SDLHBOX	[	134	]	=	4703		BaoXiang_SDLHBOX_Rad	[	134	]	=	1		BaoXiang_SDLHBOX_Count	[	134	]	=	1
	BaoXiang_SDLHBOX	[	135	]	=	4704		BaoXiang_SDLHBOX_Rad	[	135	]	=	1		BaoXiang_SDLHBOX_Count	[	135	]	=	1
	BaoXiang_SDLHBOX	[	136	]	=	4705		BaoXiang_SDLHBOX_Rad	[	136	]	=	1		BaoXiang_SDLHBOX_Count	[	136	]	=	1
	BaoXiang_SDLHBOX	[	137	]	=	4651		BaoXiang_SDLHBOX_Rad	[	137	]	=	1		BaoXiang_SDLHBOX_Count	[	137	]	=	1
	BaoXiang_SDLHBOX	[	138	]	=	4652		BaoXiang_SDLHBOX_Rad	[	138	]	=	1		BaoXiang_SDLHBOX_Count	[	138	]	=	1
	BaoXiang_SDLHBOX	[	139	]	=	4653		BaoXiang_SDLHBOX_Rad	[	139	]	=	1		BaoXiang_SDLHBOX_Count	[	139	]	=	1
	BaoXiang_SDLHBOX	[	140	]	=	4654		BaoXiang_SDLHBOX_Rad	[	140	]	=	1		BaoXiang_SDLHBOX_Count	[	140	]	=	1
	BaoXiang_SDLHBOX	[	141	]	=	4655		BaoXiang_SDLHBOX_Rad	[	141	]	=	1		BaoXiang_SDLHBOX_Count	[	141	]	=	1
	BaoXiang_SDLHBOX	[	142	]	=	4706		BaoXiang_SDLHBOX_Rad	[	142	]	=	1		BaoXiang_SDLHBOX_Count	[	142	]	=	1
	BaoXiang_SDLHBOX	[	143	]	=	4707		BaoXiang_SDLHBOX_Rad	[	143	]	=	1		BaoXiang_SDLHBOX_Count	[	143	]	=	1
	BaoXiang_SDLHBOX	[	144	]	=	4708		BaoXiang_SDLHBOX_Rad	[	144	]	=	1		BaoXiang_SDLHBOX_Count	[	144	]	=	1
	BaoXiang_SDLHBOX	[	145	]	=	4709		BaoXiang_SDLHBOX_Rad	[	145	]	=	1		BaoXiang_SDLHBOX_Count	[	145	]	=	1
	BaoXiang_SDLHBOX	[	146	]	=	4543		BaoXiang_SDLHBOX_Rad	[	146	]	=	20		BaoXiang_SDLHBOX_Count	[	146	]	=	10
	BaoXiang_SDLHBOX	[	147	]	=	4544		BaoXiang_SDLHBOX_Rad	[	147	]	=	20		BaoXiang_SDLHBOX_Count	[	147	]	=	5
	BaoXiang_SDLHBOX	[	148	]	=	4545		BaoXiang_SDLHBOX_Rad	[	148	]	=	20		BaoXiang_SDLHBOX_Count	[	148	]	=	8
	BaoXiang_SDLHBOX	[	149	]	=	4546		BaoXiang_SDLHBOX_Rad	[	149	]	=	20		BaoXiang_SDLHBOX_Count	[	149	]	=	5
	BaoXiang_SDLHBOX	[	150	]	=	1478		BaoXiang_SDLHBOX_Rad	[	150	]	=	20		BaoXiang_SDLHBOX_Count	[	150	]	=	10


--	єГФЛ°ь±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_HYBOX_Qua	=	5	 				BaoXiang_HYBOX_Mxcount	=	22										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BaoXiang_HYBOX	=	{}					BaoXiang_HYBOX_Rad	=	{}					BaoXiang_HYBOX_Count	=	{}			
	BaoXiang_HYBOX	[	1	]	=	3851		BaoXiang_HYBOX_Rad	[	1	]	=	1 		BaoXiang_HYBOX_Count	[	1	]	=	1
	BaoXiang_HYBOX	[	2	]	=	3852		BaoXiang_HYBOX_Rad	[	2	]	=	1 		BaoXiang_HYBOX_Count	[	2	]	=	1
	BaoXiang_HYBOX	[	3	]	=	3853		BaoXiang_HYBOX_Rad	[	3	]	=	1 		BaoXiang_HYBOX_Count	[	3	]	=	1
	BaoXiang_HYBOX	[	4	]	=	3855		BaoXiang_HYBOX_Rad	[	4	]	=	1 		BaoXiang_HYBOX_Count	[	4	]	=	1
	BaoXiang_HYBOX	[	5	]	=	3856		BaoXiang_HYBOX_Rad	[	5	]	=	1 		BaoXiang_HYBOX_Count	[	5	]	=	1
	BaoXiang_HYBOX	[	6	]	=	3857		BaoXiang_HYBOX_Rad	[	6	]	=	1 		BaoXiang_HYBOX_Count	[	6	]	=	1
	BaoXiang_HYBOX	[	7	]	=	3858		BaoXiang_HYBOX_Rad	[	7	]	=	1 		BaoXiang_HYBOX_Count	[	7	]	=	1
	BaoXiang_HYBOX	[	8	]	=	3859		BaoXiang_HYBOX_Rad	[	8	]	=	1 		BaoXiang_HYBOX_Count	[	8	]	=	1
	BaoXiang_HYBOX	[	9	]	=	3860		BaoXiang_HYBOX_Rad	[	9	]	=	1 		BaoXiang_HYBOX_Count	[	9	]	=	1
	BaoXiang_HYBOX	[	10	]	=	3861		BaoXiang_HYBOX_Rad	[	10	]	=	1 		BaoXiang_HYBOX_Count	[	10	]	=	1
	BaoXiang_HYBOX	[	11	]	=	3862		BaoXiang_HYBOX_Rad	[	11	]	=	1 		BaoXiang_HYBOX_Count	[	11	]	=	1
	BaoXiang_HYBOX	[	12	]	=	3863		BaoXiang_HYBOX_Rad	[	12	]	=	1 		BaoXiang_HYBOX_Count	[	12	]	=	1
	BaoXiang_HYBOX	[	13	]	=	3864		BaoXiang_HYBOX_Rad	[	13	]	=	1 		BaoXiang_HYBOX_Count	[	13	]	=	1
	BaoXiang_HYBOX	[	14	]	=	3865		BaoXiang_HYBOX_Rad	[	14	]	=	1 		BaoXiang_HYBOX_Count	[	14	]	=	1
	BaoXiang_HYBOX	[	15	]	=	3866		BaoXiang_HYBOX_Rad	[	15	]	=	1 		BaoXiang_HYBOX_Count	[	15	]	=	1
	BaoXiang_HYBOX	[	16	]	=	3869		BaoXiang_HYBOX_Rad	[	16	]	=	1 		BaoXiang_HYBOX_Count	[	16	]	=	1
	BaoXiang_HYBOX	[	17	]	=	3870		BaoXiang_HYBOX_Rad	[	17	]	=	1 		BaoXiang_HYBOX_Count	[	17	]	=	1
	BaoXiang_HYBOX	[	18	]	=	3871		BaoXiang_HYBOX_Rad	[	18	]	=	1 		BaoXiang_HYBOX_Count	[	18	]	=	1
	BaoXiang_HYBOX	[	19	]	=	3872		BaoXiang_HYBOX_Rad	[	19	]	=	1 		BaoXiang_HYBOX_Count	[	19	]	=	1
	BaoXiang_HYBOX	[	20	]	=	3873		BaoXiang_HYBOX_Rad	[	20	]	=	1 		BaoXiang_HYBOX_Count	[	20	]	=	1
	BaoXiang_HYBOX	[	21	]	=	3874		BaoXiang_HYBOX_Rad	[	21	]	=	1 		BaoXiang_HYBOX_Count	[	21	]	=	1
	BaoXiang_HYBOX	[	22	]	=	3875		BaoXiang_HYBOX_Rad	[	22	]	=	1 		BaoXiang_HYBOX_Count	[	22	]	=	1
																				
																				
																				
																				
																				
--	єиФЛ°ь±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_HYUNBOX_Qua	=	5	 				BaoXiang_HYUNBOX_Mxcount	=	53										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BaoXiang_HYUNBOX	=	{}					BaoXiang_HYUNBOX_Rad	=	{}					BaoXiang_HYUNBOX_Count	=	{}			
	BaoXiang_HYUNBOX	[	1	]	=	3851		BaoXiang_HYUNBOX_Rad	[	1	]	=	200 		BaoXiang_HYUNBOX_Count	[	1	]	=	1
	BaoXiang_HYUNBOX	[	2	]	=	3852		BaoXiang_HYUNBOX_Rad	[	2	]	=	300 		BaoXiang_HYUNBOX_Count	[	2	]	=	1
	BaoXiang_HYUNBOX	[	3	]	=	3853		BaoXiang_HYUNBOX_Rad	[	3	]	=	200 		BaoXiang_HYUNBOX_Count	[	3	]	=	1
	BaoXiang_HYUNBOX	[	4	]	=	3855		BaoXiang_HYUNBOX_Rad	[	4	]	=	200 		BaoXiang_HYUNBOX_Count	[	4	]	=	1
	BaoXiang_HYUNBOX	[	5	]	=	3856		BaoXiang_HYUNBOX_Rad	[	5	]	=	200 		BaoXiang_HYUNBOX_Count	[	5	]	=	1
	BaoXiang_HYUNBOX	[	6	]	=	3857		BaoXiang_HYUNBOX_Rad	[	6	]	=	200 		BaoXiang_HYUNBOX_Count	[	6	]	=	1
	BaoXiang_HYUNBOX	[	7	]	=	3858		BaoXiang_HYUNBOX_Rad	[	7	]	=	200 		BaoXiang_HYUNBOX_Count	[	7	]	=	1
	BaoXiang_HYUNBOX	[	8	]	=	3859		BaoXiang_HYUNBOX_Rad	[	8	]	=	200 		BaoXiang_HYUNBOX_Count	[	8	]	=	1
	BaoXiang_HYUNBOX	[	9	]	=	3860		BaoXiang_HYUNBOX_Rad	[	9	]	=	200 		BaoXiang_HYUNBOX_Count	[	9	]	=	1
	BaoXiang_HYUNBOX	[	10	]	=	3861		BaoXiang_HYUNBOX_Rad	[	10	]	=	200 		BaoXiang_HYUNBOX_Count	[	10	]	=	1
	BaoXiang_HYUNBOX	[	11	]	=	3862		BaoXiang_HYUNBOX_Rad	[	11	]	=	200 		BaoXiang_HYUNBOX_Count	[	11	]	=	1
	BaoXiang_HYUNBOX	[	12	]	=	3863		BaoXiang_HYUNBOX_Rad	[	12	]	=	200 		BaoXiang_HYUNBOX_Count	[	12	]	=	1
	BaoXiang_HYUNBOX	[	13	]	=	3864		BaoXiang_HYUNBOX_Rad	[	13	]	=	200 		BaoXiang_HYUNBOX_Count	[	13	]	=	1
	BaoXiang_HYUNBOX	[	14	]	=	3865		BaoXiang_HYUNBOX_Rad	[	14	]	=	200 		BaoXiang_HYUNBOX_Count	[	14	]	=	1
	BaoXiang_HYUNBOX	[	15	]	=	3866		BaoXiang_HYUNBOX_Rad	[	15	]	=	400 		BaoXiang_HYUNBOX_Count	[	15	]	=	1
	BaoXiang_HYUNBOX	[	16	]	=	3869		BaoXiang_HYUNBOX_Rad	[	16	]	=	200 		BaoXiang_HYUNBOX_Count	[	16	]	=	1
	BaoXiang_HYUNBOX	[	17	]	=	3870		BaoXiang_HYUNBOX_Rad	[	17	]	=	200 		BaoXiang_HYUNBOX_Count	[	17	]	=	1
	BaoXiang_HYUNBOX	[	18	]	=	3871		BaoXiang_HYUNBOX_Rad	[	18	]	=	200 		BaoXiang_HYUNBOX_Count	[	18	]	=	1
	BaoXiang_HYUNBOX	[	19	]	=	3872		BaoXiang_HYUNBOX_Rad	[	19	]	=	200 		BaoXiang_HYUNBOX_Count	[	19	]	=	1
	BaoXiang_HYUNBOX	[	20	]	=	3873		BaoXiang_HYUNBOX_Rad	[	20	]	=	600 		BaoXiang_HYUNBOX_Count	[	20	]	=	1
	BaoXiang_HYUNBOX	[	21	]	=	3874		BaoXiang_HYUNBOX_Rad	[	21	]	=	200 		BaoXiang_HYUNBOX_Count	[	21	]	=	1
	BaoXiang_HYUNBOX	[	22	]	=	3875		BaoXiang_HYUNBOX_Rad	[	22	]	=	200 		BaoXiang_HYUNBOX_Count	[	22	]	=	1
	BaoXiang_HYUNBOX	[	23	]	=	3828		BaoXiang_HYUNBOX_Rad	[	23	]	=	175 		BaoXiang_HYUNBOX_Count	[	23	]	=	1
	BaoXiang_HYUNBOX	[	24	]	=	3829		BaoXiang_HYUNBOX_Rad	[	24	]	=	175 		BaoXiang_HYUNBOX_Count	[	24	]	=	1
	BaoXiang_HYUNBOX	[	25	]	=	3830		BaoXiang_HYUNBOX_Rad	[	25	]	=	175 		BaoXiang_HYUNBOX_Count	[	25	]	=	1
	BaoXiang_HYUNBOX	[	26	]	=	3831		BaoXiang_HYUNBOX_Rad	[	26	]	=	175 		BaoXiang_HYUNBOX_Count	[	26	]	=	1
	BaoXiang_HYUNBOX	[	27	]	=	3832		BaoXiang_HYUNBOX_Rad	[	27	]	=	175 		BaoXiang_HYUNBOX_Count	[	27	]	=	1
	BaoXiang_HYUNBOX	[	28	]	=	3833		BaoXiang_HYUNBOX_Rad	[	28	]	=	175 		BaoXiang_HYUNBOX_Count	[	28	]	=	1
	BaoXiang_HYUNBOX	[	29	]	=	3834		BaoXiang_HYUNBOX_Rad	[	29	]	=	175 		BaoXiang_HYUNBOX_Count	[	29	]	=	1
	BaoXiang_HYUNBOX	[	30	]	=	3835		BaoXiang_HYUNBOX_Rad	[	30	]	=	175 		BaoXiang_HYUNBOX_Count	[	30	]	=	1
	BaoXiang_HYUNBOX	[	31	]	=	3836		BaoXiang_HYUNBOX_Rad	[	31	]	=	175 		BaoXiang_HYUNBOX_Count	[	31	]	=	1
	BaoXiang_HYUNBOX	[	32	]	=	3837		BaoXiang_HYUNBOX_Rad	[	32	]	=	175 		BaoXiang_HYUNBOX_Count	[	32	]	=	1
	BaoXiang_HYUNBOX	[	33	]	=	3838		BaoXiang_HYUNBOX_Rad	[	33	]	=	175 		BaoXiang_HYUNBOX_Count	[	33	]	=	1
	BaoXiang_HYUNBOX	[	34	]	=	3839		BaoXiang_HYUNBOX_Rad	[	34	]	=	175 		BaoXiang_HYUNBOX_Count	[	34	]	=	1
	BaoXiang_HYUNBOX	[	35	]	=	3840		BaoXiang_HYUNBOX_Rad	[	35	]	=	175 		BaoXiang_HYUNBOX_Count	[	35	]	=	1
	BaoXiang_HYUNBOX	[	36	]	=	3841		BaoXiang_HYUNBOX_Rad	[	36	]	=	175 		BaoXiang_HYUNBOX_Count	[	36	]	=	1
	BaoXiang_HYUNBOX	[	37	]	=	3842		BaoXiang_HYUNBOX_Rad	[	37	]	=	175 		BaoXiang_HYUNBOX_Count	[	37	]	=	1
	BaoXiang_HYUNBOX	[	38	]	=	3843		BaoXiang_HYUNBOX_Rad	[	38	]	=	175 		BaoXiang_HYUNBOX_Count	[	38	]	=	1
	BaoXiang_HYUNBOX	[	39	]	=	3844		BaoXiang_HYUNBOX_Rad	[	39	]	=	1000 		BaoXiang_HYUNBOX_Count	[	39	]	=	1
	BaoXiang_HYUNBOX	[	40	]	=	3845		BaoXiang_HYUNBOX_Rad	[	40	]	=	1000 		BaoXiang_HYUNBOX_Count	[	40	]	=	1
	BaoXiang_HYUNBOX	[	41	]	=	0899		BaoXiang_HYUNBOX_Rad	[	41	]	=	6 		BaoXiang_HYUNBOX_Count	[	41	]	=	1
	BaoXiang_HYUNBOX	[	42	]	=	0900		BaoXiang_HYUNBOX_Rad	[	42	]	=	6 		BaoXiang_HYUNBOX_Count	[	42	]	=	1
	BaoXiang_HYUNBOX	[	43	]	=	0901		BaoXiang_HYUNBOX_Rad	[	43	]	=	6 		BaoXiang_HYUNBOX_Count	[	43	]	=	1
	BaoXiang_HYUNBOX	[	44	]	=	0902		BaoXiang_HYUNBOX_Rad	[	44	]	=	6 		BaoXiang_HYUNBOX_Count	[	44	]	=	1
	BaoXiang_HYUNBOX	[	45	]	=	0903		BaoXiang_HYUNBOX_Rad	[	45	]	=	6 		BaoXiang_HYUNBOX_Count	[	45	]	=	1
	BaoXiang_HYUNBOX	[	46	]	=	3131		BaoXiang_HYUNBOX_Rad	[	46	]	=	21 		BaoXiang_HYUNBOX_Count	[	46	]	=	1
	BaoXiang_HYUNBOX	[	47	]	=	3140		BaoXiang_HYUNBOX_Rad	[	47	]	=	21 		BaoXiang_HYUNBOX_Count	[	47	]	=	1
	BaoXiang_HYUNBOX	[	48	]	=	3133		BaoXiang_HYUNBOX_Rad	[	48	]	=	21 		BaoXiang_HYUNBOX_Count	[	48	]	=	1
	BaoXiang_HYUNBOX	[	49	]	=	3139		BaoXiang_HYUNBOX_Rad	[	49	]	=	21 		BaoXiang_HYUNBOX_Count	[	49	]	=	1
	BaoXiang_HYUNBOX	[	50	]	=	3135		BaoXiang_HYUNBOX_Rad	[	50	]	=	23 		BaoXiang_HYUNBOX_Count	[	50	]	=	1
	BaoXiang_HYUNBOX	[	51	]	=	3138		BaoXiang_HYUNBOX_Rad	[	51	]	=	21 		BaoXiang_HYUNBOX_Count	[	51	]	=	1
	BaoXiang_HYUNBOX	[	52	]	=	3136		BaoXiang_HYUNBOX_Rad	[	52	]	=	21 		BaoXiang_HYUNBOX_Count	[	52	]	=	1
	BaoXiang_HYUNBOX	[	53	]	=	3137		BaoXiang_HYUNBOX_Rad	[	53	]	=	21 		BaoXiang_HYUNBOX_Count	[	53	]	=	1
																				
																				
																				
																				
																				
																				
--	ё»№у°ь±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_FGBOX_Qua	=	5	 				BaoXiang_FGBOX_Mxcount	=	41										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BaoXiang_FGBOX	=	{}					BaoXiang_FGBOX_Rad	=	{}					BaoXiang_FGBOX_Count	=	{}			
	BaoXiang_FGBOX	[	1	]	=	3828		BaoXiang_FGBOX_Rad	[	1	]	=	32 		BaoXiang_FGBOX_Count	[	1	]	=	1
	BaoXiang_FGBOX	[	2	]	=	3829		BaoXiang_FGBOX_Rad	[	2	]	=	32 		BaoXiang_FGBOX_Count	[	2	]	=	1
	BaoXiang_FGBOX	[	3	]	=	3830		BaoXiang_FGBOX_Rad	[	3	]	=	32 		BaoXiang_FGBOX_Count	[	3	]	=	1
	BaoXiang_FGBOX	[	4	]	=	3831		BaoXiang_FGBOX_Rad	[	4	]	=	32 		BaoXiang_FGBOX_Count	[	4	]	=	1
	BaoXiang_FGBOX	[	5	]	=	3832		BaoXiang_FGBOX_Rad	[	5	]	=	32 		BaoXiang_FGBOX_Count	[	5	]	=	1
	BaoXiang_FGBOX	[	6	]	=	3833		BaoXiang_FGBOX_Rad	[	6	]	=	32 		BaoXiang_FGBOX_Count	[	6	]	=	1
	BaoXiang_FGBOX	[	7	]	=	3834		BaoXiang_FGBOX_Rad	[	7	]	=	32 		BaoXiang_FGBOX_Count	[	7	]	=	1
	BaoXiang_FGBOX	[	8	]	=	3835		BaoXiang_FGBOX_Rad	[	8	]	=	32 		BaoXiang_FGBOX_Count	[	8	]	=	1
	BaoXiang_FGBOX	[	9	]	=	3836		BaoXiang_FGBOX_Rad	[	9	]	=	32 		BaoXiang_FGBOX_Count	[	9	]	=	1
	BaoXiang_FGBOX	[	10	]	=	3837		BaoXiang_FGBOX_Rad	[	10	]	=	32 		BaoXiang_FGBOX_Count	[	10	]	=	1
	BaoXiang_FGBOX	[	11	]	=	3838		BaoXiang_FGBOX_Rad	[	11	]	=	32 		BaoXiang_FGBOX_Count	[	11	]	=	1
	BaoXiang_FGBOX	[	12	]	=	3839		BaoXiang_FGBOX_Rad	[	12	]	=	32 		BaoXiang_FGBOX_Count	[	12	]	=	1
	BaoXiang_FGBOX	[	13	]	=	3840		BaoXiang_FGBOX_Rad	[	13	]	=	32 		BaoXiang_FGBOX_Count	[	13	]	=	1
	BaoXiang_FGBOX	[	14	]	=	3841		BaoXiang_FGBOX_Rad	[	14	]	=	32 		BaoXiang_FGBOX_Count	[	14	]	=	1
	BaoXiang_FGBOX	[	15	]	=	3842		BaoXiang_FGBOX_Rad	[	15	]	=	36 		BaoXiang_FGBOX_Count	[	15	]	=	1
	BaoXiang_FGBOX	[	16	]	=	3843		BaoXiang_FGBOX_Rad	[	16	]	=	36 		BaoXiang_FGBOX_Count	[	16	]	=	1
	BaoXiang_FGBOX	[	17	]	=	1787		BaoXiang_FGBOX_Rad	[	17	]	=	42 		BaoXiang_FGBOX_Count	[	17	]	=	1
	BaoXiang_FGBOX	[	18	]	=	1788		BaoXiang_FGBOX_Rad	[	18	]	=	44 		BaoXiang_FGBOX_Count	[	18	]	=	1
	BaoXiang_FGBOX	[	19	]	=	1789		BaoXiang_FGBOX_Rad	[	19	]	=	42 		BaoXiang_FGBOX_Count	[	19	]	=	1
	BaoXiang_FGBOX	[	20	]	=	1790		BaoXiang_FGBOX_Rad	[	20	]	=	42 		BaoXiang_FGBOX_Count	[	20	]	=	1
	BaoXiang_FGBOX	[	21	]	=	1791		BaoXiang_FGBOX_Rad	[	21	]	=	44 		BaoXiang_FGBOX_Count	[	21	]	=	1
	BaoXiang_FGBOX	[	22	]	=	1792		BaoXiang_FGBOX_Rad	[	22	]	=	42 		BaoXiang_FGBOX_Count	[	22	]	=	1
	BaoXiang_FGBOX	[	23	]	=	1793		BaoXiang_FGBOX_Rad	[	23	]	=	44 		BaoXiang_FGBOX_Count	[	23	]	=	1
	BaoXiang_FGBOX	[	24	]	=	0893		BaoXiang_FGBOX_Rad	[	24	]	=	2 		BaoXiang_FGBOX_Count	[	24	]	=	1
	BaoXiang_FGBOX	[	25	]	=	0894		BaoXiang_FGBOX_Rad	[	25	]	=	4 		BaoXiang_FGBOX_Count	[	25	]	=	1
	BaoXiang_FGBOX	[	26	]	=	0895		BaoXiang_FGBOX_Rad	[	26	]	=	4 		BaoXiang_FGBOX_Count	[	26	]	=	1
	BaoXiang_FGBOX	[	27	]	=	0896		BaoXiang_FGBOX_Rad	[	27	]	=	4 		BaoXiang_FGBOX_Count	[	27	]	=	1
	BaoXiang_FGBOX	[	28	]	=	0897		BaoXiang_FGBOX_Rad	[	28	]	=	2 		BaoXiang_FGBOX_Count	[	28	]	=	1
	BaoXiang_FGBOX	[	29	]	=	0898		BaoXiang_FGBOX_Rad	[	29	]	=	4 		BaoXiang_FGBOX_Count	[	29	]	=	1
	BaoXiang_FGBOX	[	30	]	=	0878		BaoXiang_FGBOX_Rad	[	30	]	=	1 		BaoXiang_FGBOX_Count	[	30	]	=	1
	BaoXiang_FGBOX	[	31	]	=	3844		BaoXiang_FGBOX_Rad	[	31	]	=	10 		BaoXiang_FGBOX_Count	[	31	]	=	1
	BaoXiang_FGBOX	[	32	]	=	3845		BaoXiang_FGBOX_Rad	[	32	]	=	10 		BaoXiang_FGBOX_Count	[	32	]	=	1
	BaoXiang_FGBOX	[	33	]	=	3131		BaoXiang_FGBOX_Rad	[	33	]	=	174 		BaoXiang_FGBOX_Count	[	33	]	=	1
	BaoXiang_FGBOX	[	34	]	=	3132		BaoXiang_FGBOX_Rad	[	34	]	=	174 		BaoXiang_FGBOX_Count	[	34	]	=	1
	BaoXiang_FGBOX	[	35	]	=	3133		BaoXiang_FGBOX_Rad	[	35	]	=	174 		BaoXiang_FGBOX_Count	[	35	]	=	1
	BaoXiang_FGBOX	[	36	]	=	3121		BaoXiang_FGBOX_Rad	[	36	]	=	174 		BaoXiang_FGBOX_Count	[	36	]	=	1
	BaoXiang_FGBOX	[	37	]	=	3130		BaoXiang_FGBOX_Rad	[	37	]	=	174 		BaoXiang_FGBOX_Count	[	37	]	=	1
	BaoXiang_FGBOX	[	38	]	=	3119		BaoXiang_FGBOX_Rad	[	38	]	=	174 		BaoXiang_FGBOX_Count	[	38	]	=	1
	BaoXiang_FGBOX	[	39	]	=	3122		BaoXiang_FGBOX_Rad	[	39	]	=	174 		BaoXiang_FGBOX_Count	[	39	]	=	1
	BaoXiang_FGBOX	[	40	]	=	3141		BaoXiang_FGBOX_Rad	[	40	]	=	174 		BaoXiang_FGBOX_Count	[	40	]	=	1
	BaoXiang_FGBOX	[	41	]	=	3129		BaoXiang_FGBOX_Rad	[	41	]	=	174 		BaoXiang_FGBOX_Count	[	41	]	=	1
																				
																				
																				
--	°µµ­РнФёКЇ±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_ADBOX_Qua	=	5	 				BaoXiang_ADBOX_Mxcount	=	139										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BaoXiang_ADBOX	=	{}					BaoXiang_ADBOX_Rad	=	{}					BaoXiang_ADBOX_Count	=	{}			
	BaoXiang_ADBOX	[	1	]	=	3909		BaoXiang_ADBOX_Rad	[	1	]	=	600 		BaoXiang_ADBOX_Count	[	1	]	=	1
	BaoXiang_ADBOX	[	2	]	=	3345		BaoXiang_ADBOX_Rad	[	2	]	=	300 		BaoXiang_ADBOX_Count	[	2	]	=	1
	BaoXiang_ADBOX	[	3	]	=	3346		BaoXiang_ADBOX_Rad	[	3	]	=	300 		BaoXiang_ADBOX_Count	[	3	]	=	1
	BaoXiang_ADBOX	[	4	]	=	3347		BaoXiang_ADBOX_Rad	[	4	]	=	300 		BaoXiang_ADBOX_Count	[	4	]	=	1
	BaoXiang_ADBOX	[	5	]	=	0002		BaoXiang_ADBOX_Rad	[	5	]	=	8 		BaoXiang_ADBOX_Count	[	5	]	=	1
	BaoXiang_ADBOX	[	6	]	=	0003		BaoXiang_ADBOX_Rad	[	6	]	=	8 		BaoXiang_ADBOX_Count	[	6	]	=	1
	BaoXiang_ADBOX	[	7	]	=	0004		BaoXiang_ADBOX_Rad	[	7	]	=	8 		BaoXiang_ADBOX_Count	[	7	]	=	1
	BaoXiang_ADBOX	[	8	]	=	0010		BaoXiang_ADBOX_Rad	[	8	]	=	8 		BaoXiang_ADBOX_Count	[	8	]	=	1
	BaoXiang_ADBOX	[	9	]	=	0011		BaoXiang_ADBOX_Rad	[	9	]	=	8 		BaoXiang_ADBOX_Count	[	9	]	=	1
	BaoXiang_ADBOX	[	10	]	=	0012		BaoXiang_ADBOX_Rad	[	10	]	=	8 		BaoXiang_ADBOX_Count	[	10	]	=	1
	BaoXiang_ADBOX	[	11	]	=	0013		BaoXiang_ADBOX_Rad	[	11	]	=	8 		BaoXiang_ADBOX_Count	[	11	]	=	1
	BaoXiang_ADBOX	[	12	]	=	0014		BaoXiang_ADBOX_Rad	[	12	]	=	8 		BaoXiang_ADBOX_Count	[	12	]	=	1
	BaoXiang_ADBOX	[	13	]	=	0015		BaoXiang_ADBOX_Rad	[	13	]	=	8 		BaoXiang_ADBOX_Count	[	13	]	=	1
	BaoXiang_ADBOX	[	14	]	=	0025		BaoXiang_ADBOX_Rad	[	14	]	=	8 		BaoXiang_ADBOX_Count	[	14	]	=	1
	BaoXiang_ADBOX	[	15	]	=	0026		BaoXiang_ADBOX_Rad	[	15	]	=	8 		BaoXiang_ADBOX_Count	[	15	]	=	1
	BaoXiang_ADBOX	[	16	]	=	0027		BaoXiang_ADBOX_Rad	[	16	]	=	8 		BaoXiang_ADBOX_Count	[	16	]	=	1
	BaoXiang_ADBOX	[	17	]	=	0032		BaoXiang_ADBOX_Rad	[	17	]	=	8 		BaoXiang_ADBOX_Count	[	17	]	=	1
	BaoXiang_ADBOX	[	18	]	=	0033		BaoXiang_ADBOX_Rad	[	18	]	=	8 		BaoXiang_ADBOX_Count	[	18	]	=	1
	BaoXiang_ADBOX	[	19	]	=	0034		BaoXiang_ADBOX_Rad	[	19	]	=	8 		BaoXiang_ADBOX_Count	[	19	]	=	1
	BaoXiang_ADBOX	[	20	]	=	0037		BaoXiang_ADBOX_Rad	[	20	]	=	8 		BaoXiang_ADBOX_Count	[	20	]	=	1
	BaoXiang_ADBOX	[	21	]	=	0038		BaoXiang_ADBOX_Rad	[	21	]	=	8 		BaoXiang_ADBOX_Count	[	21	]	=	1
	BaoXiang_ADBOX	[	22	]	=	0039		BaoXiang_ADBOX_Rad	[	22	]	=	8 		BaoXiang_ADBOX_Count	[	22	]	=	1
	BaoXiang_ADBOX	[	23	]	=	0074		BaoXiang_ADBOX_Rad	[	23	]	=	8 		BaoXiang_ADBOX_Count	[	23	]	=	1
	BaoXiang_ADBOX	[	24	]	=	0075		BaoXiang_ADBOX_Rad	[	24	]	=	8 		BaoXiang_ADBOX_Count	[	24	]	=	1
	BaoXiang_ADBOX	[	25	]	=	0076		BaoXiang_ADBOX_Rad	[	25	]	=	8 		BaoXiang_ADBOX_Count	[	25	]	=	1
	BaoXiang_ADBOX	[	26	]	=	0081		BaoXiang_ADBOX_Rad	[	26	]	=	8 		BaoXiang_ADBOX_Count	[	26	]	=	1
	BaoXiang_ADBOX	[	27	]	=	0082		BaoXiang_ADBOX_Rad	[	27	]	=	8 		BaoXiang_ADBOX_Count	[	27	]	=	1
	BaoXiang_ADBOX	[	28	]	=	0098		BaoXiang_ADBOX_Rad	[	28	]	=	8 		BaoXiang_ADBOX_Count	[	28	]	=	1
	BaoXiang_ADBOX	[	29	]	=	0099		BaoXiang_ADBOX_Rad	[	29	]	=	8 		BaoXiang_ADBOX_Count	[	29	]	=	1
	BaoXiang_ADBOX	[	30	]	=	0100		BaoXiang_ADBOX_Rad	[	30	]	=	8 		BaoXiang_ADBOX_Count	[	30	]	=	1
	BaoXiang_ADBOX	[	31	]	=	0101		BaoXiang_ADBOX_Rad	[	31	]	=	8 		BaoXiang_ADBOX_Count	[	31	]	=	1
	BaoXiang_ADBOX	[	32	]	=	0104		BaoXiang_ADBOX_Rad	[	32	]	=	8 		BaoXiang_ADBOX_Count	[	32	]	=	1
	BaoXiang_ADBOX	[	33	]	=	0105		BaoXiang_ADBOX_Rad	[	33	]	=	8 		BaoXiang_ADBOX_Count	[	33	]	=	1
	BaoXiang_ADBOX	[	34	]	=	0106		BaoXiang_ADBOX_Rad	[	34	]	=	8 		BaoXiang_ADBOX_Count	[	34	]	=	1
	BaoXiang_ADBOX	[	35	]	=	0122		BaoXiang_ADBOX_Rad	[	35	]	=	8 		BaoXiang_ADBOX_Count	[	35	]	=	1
	BaoXiang_ADBOX	[	36	]	=	0123		BaoXiang_ADBOX_Rad	[	36	]	=	8 		BaoXiang_ADBOX_Count	[	36	]	=	1
	BaoXiang_ADBOX	[	37	]	=	0124		BaoXiang_ADBOX_Rad	[	37	]	=	8 		BaoXiang_ADBOX_Count	[	37	]	=	1
	BaoXiang_ADBOX	[	38	]	=	0291		BaoXiang_ADBOX_Rad	[	38	]	=	8 		BaoXiang_ADBOX_Count	[	38	]	=	1
	BaoXiang_ADBOX	[	39	]	=	0293		BaoXiang_ADBOX_Rad	[	39	]	=	8 		BaoXiang_ADBOX_Count	[	39	]	=	1
	BaoXiang_ADBOX	[	40	]	=	0295		BaoXiang_ADBOX_Rad	[	40	]	=	8 		BaoXiang_ADBOX_Count	[	40	]	=	1
	BaoXiang_ADBOX	[	41	]	=	0297		BaoXiang_ADBOX_Rad	[	41	]	=	8 		BaoXiang_ADBOX_Count	[	41	]	=	1
	BaoXiang_ADBOX	[	42	]	=	0298		BaoXiang_ADBOX_Rad	[	42	]	=	8 		BaoXiang_ADBOX_Count	[	42	]	=	1
	BaoXiang_ADBOX	[	43	]	=	0300		BaoXiang_ADBOX_Rad	[	43	]	=	8 		BaoXiang_ADBOX_Count	[	43	]	=	1
	BaoXiang_ADBOX	[	44	]	=	0306		BaoXiang_ADBOX_Rad	[	44	]	=	8 		BaoXiang_ADBOX_Count	[	44	]	=	1
	BaoXiang_ADBOX	[	45	]	=	0307		BaoXiang_ADBOX_Rad	[	45	]	=	8 		BaoXiang_ADBOX_Count	[	45	]	=	1
	BaoXiang_ADBOX	[	46	]	=	0311		BaoXiang_ADBOX_Rad	[	46	]	=	8 		BaoXiang_ADBOX_Count	[	46	]	=	1
	BaoXiang_ADBOX	[	47	]	=	0313		BaoXiang_ADBOX_Rad	[	47	]	=	8 		BaoXiang_ADBOX_Count	[	47	]	=	1
	BaoXiang_ADBOX	[	48	]	=	0314		BaoXiang_ADBOX_Rad	[	48	]	=	8 		BaoXiang_ADBOX_Count	[	48	]	=	1
	BaoXiang_ADBOX	[	49	]	=	0336		BaoXiang_ADBOX_Rad	[	49	]	=	8 		BaoXiang_ADBOX_Count	[	49	]	=	1
	BaoXiang_ADBOX	[	50	]	=	0337		BaoXiang_ADBOX_Rad	[	50	]	=	8 		BaoXiang_ADBOX_Count	[	50	]	=	1
	BaoXiang_ADBOX	[	51	]	=	0338		BaoXiang_ADBOX_Rad	[	51	]	=	8 		BaoXiang_ADBOX_Count	[	51	]	=	1
	BaoXiang_ADBOX	[	52	]	=	0339		BaoXiang_ADBOX_Rad	[	52	]	=	8 		BaoXiang_ADBOX_Count	[	52	]	=	1
	BaoXiang_ADBOX	[	53	]	=	0340		BaoXiang_ADBOX_Rad	[	53	]	=	8 		BaoXiang_ADBOX_Count	[	53	]	=	1
	BaoXiang_ADBOX	[	54	]	=	0341		BaoXiang_ADBOX_Rad	[	54	]	=	8 		BaoXiang_ADBOX_Count	[	54	]	=	1
	BaoXiang_ADBOX	[	55	]	=	0352		BaoXiang_ADBOX_Rad	[	55	]	=	8 		BaoXiang_ADBOX_Count	[	55	]	=	1
	BaoXiang_ADBOX	[	56	]	=	0353		BaoXiang_ADBOX_Rad	[	56	]	=	8 		BaoXiang_ADBOX_Count	[	56	]	=	1
	BaoXiang_ADBOX	[	57	]	=	0354		BaoXiang_ADBOX_Rad	[	57	]	=	8 		BaoXiang_ADBOX_Count	[	57	]	=	1
	BaoXiang_ADBOX	[	58	]	=	0350		BaoXiang_ADBOX_Rad	[	58	]	=	8 		BaoXiang_ADBOX_Count	[	58	]	=	1
	BaoXiang_ADBOX	[	59	]	=	0360		BaoXiang_ADBOX_Rad	[	59	]	=	8 		BaoXiang_ADBOX_Count	[	59	]	=	1
	BaoXiang_ADBOX	[	60	]	=	0361		BaoXiang_ADBOX_Rad	[	60	]	=	8 		BaoXiang_ADBOX_Count	[	60	]	=	1
	BaoXiang_ADBOX	[	61	]	=	0362		BaoXiang_ADBOX_Rad	[	61	]	=	8 		BaoXiang_ADBOX_Count	[	61	]	=	1
	BaoXiang_ADBOX	[	62	]	=	0467		BaoXiang_ADBOX_Rad	[	62	]	=	8 		BaoXiang_ADBOX_Count	[	62	]	=	1
	BaoXiang_ADBOX	[	63	]	=	0469		BaoXiang_ADBOX_Rad	[	63	]	=	8 		BaoXiang_ADBOX_Count	[	63	]	=	1
	BaoXiang_ADBOX	[	64	]	=	0471		BaoXiang_ADBOX_Rad	[	64	]	=	8 		BaoXiang_ADBOX_Count	[	64	]	=	1
	BaoXiang_ADBOX	[	65	]	=	0473		BaoXiang_ADBOX_Rad	[	65	]	=	8 		BaoXiang_ADBOX_Count	[	65	]	=	1
	BaoXiang_ADBOX	[	66	]	=	0474		BaoXiang_ADBOX_Rad	[	66	]	=	8 		BaoXiang_ADBOX_Count	[	66	]	=	1
	BaoXiang_ADBOX	[	67	]	=	0476		BaoXiang_ADBOX_Rad	[	67	]	=	8 		BaoXiang_ADBOX_Count	[	67	]	=	1
	BaoXiang_ADBOX	[	68	]	=	0482		BaoXiang_ADBOX_Rad	[	68	]	=	8 		BaoXiang_ADBOX_Count	[	68	]	=	1
	BaoXiang_ADBOX	[	69	]	=	0483		BaoXiang_ADBOX_Rad	[	69	]	=	8 		BaoXiang_ADBOX_Count	[	69	]	=	1
	BaoXiang_ADBOX	[	70	]	=	0486		BaoXiang_ADBOX_Rad	[	70	]	=	8 		BaoXiang_ADBOX_Count	[	70	]	=	1
	BaoXiang_ADBOX	[	71	]	=	0487		BaoXiang_ADBOX_Rad	[	71	]	=	8 		BaoXiang_ADBOX_Count	[	71	]	=	1
	BaoXiang_ADBOX	[	72	]	=	0490		BaoXiang_ADBOX_Rad	[	72	]	=	8 		BaoXiang_ADBOX_Count	[	72	]	=	1
	BaoXiang_ADBOX	[	73	]	=	0513		BaoXiang_ADBOX_Rad	[	73	]	=	8 		BaoXiang_ADBOX_Count	[	73	]	=	1
	BaoXiang_ADBOX	[	74	]	=	0514		BaoXiang_ADBOX_Rad	[	74	]	=	8 		BaoXiang_ADBOX_Count	[	74	]	=	1
	BaoXiang_ADBOX	[	75	]	=	0515		BaoXiang_ADBOX_Rad	[	75	]	=	8 		BaoXiang_ADBOX_Count	[	75	]	=	1
	BaoXiang_ADBOX	[	76	]	=	0516		BaoXiang_ADBOX_Rad	[	76	]	=	8 		BaoXiang_ADBOX_Count	[	76	]	=	1
	BaoXiang_ADBOX	[	77	]	=	0517		BaoXiang_ADBOX_Rad	[	77	]	=	8 		BaoXiang_ADBOX_Count	[	77	]	=	1
	BaoXiang_ADBOX	[	78	]	=	0536		BaoXiang_ADBOX_Rad	[	78	]	=	8 		BaoXiang_ADBOX_Count	[	78	]	=	1
	BaoXiang_ADBOX	[	79	]	=	0537		BaoXiang_ADBOX_Rad	[	79	]	=	8 		BaoXiang_ADBOX_Count	[	79	]	=	1
	BaoXiang_ADBOX	[	80	]	=	0542		BaoXiang_ADBOX_Rad	[	80	]	=	8 		BaoXiang_ADBOX_Count	[	80	]	=	1
	BaoXiang_ADBOX	[	81	]	=	0543		BaoXiang_ADBOX_Rad	[	81	]	=	8 		BaoXiang_ADBOX_Count	[	81	]	=	1
	BaoXiang_ADBOX	[	82	]	=	0544		BaoXiang_ADBOX_Rad	[	82	]	=	8 		BaoXiang_ADBOX_Count	[	82	]	=	1
	BaoXiang_ADBOX	[	83	]	=	0546		BaoXiang_ADBOX_Rad	[	83	]	=	8 		BaoXiang_ADBOX_Count	[	83	]	=	1
	BaoXiang_ADBOX	[	84	]	=	0549		BaoXiang_ADBOX_Rad	[	84	]	=	8 		BaoXiang_ADBOX_Count	[	84	]	=	1
	BaoXiang_ADBOX	[	85	]	=	0550		BaoXiang_ADBOX_Rad	[	85	]	=	8 		BaoXiang_ADBOX_Count	[	85	]	=	1
	BaoXiang_ADBOX	[	86	]	=	0557		BaoXiang_ADBOX_Rad	[	86	]	=	8 		BaoXiang_ADBOX_Count	[	86	]	=	1
	BaoXiang_ADBOX	[	87	]	=	0562		BaoXiang_ADBOX_Rad	[	87	]	=	8 		BaoXiang_ADBOX_Count	[	87	]	=	1
	BaoXiang_ADBOX	[	88	]	=	0565		BaoXiang_ADBOX_Rad	[	88	]	=	8 		BaoXiang_ADBOX_Count	[	88	]	=	1
	BaoXiang_ADBOX	[	89	]	=	0566		BaoXiang_ADBOX_Rad	[	89	]	=	8 		BaoXiang_ADBOX_Count	[	89	]	=	1
	BaoXiang_ADBOX	[	90	]	=	0568		BaoXiang_ADBOX_Rad	[	90	]	=	8 		BaoXiang_ADBOX_Count	[	90	]	=	1
	BaoXiang_ADBOX	[	91	]	=	0649		BaoXiang_ADBOX_Rad	[	91	]	=	8 		BaoXiang_ADBOX_Count	[	91	]	=	1
	BaoXiang_ADBOX	[	92	]	=	0650		BaoXiang_ADBOX_Rad	[	92	]	=	8 		BaoXiang_ADBOX_Count	[	92	]	=	1
	BaoXiang_ADBOX	[	93	]	=	0652		BaoXiang_ADBOX_Rad	[	93	]	=	8 		BaoXiang_ADBOX_Count	[	93	]	=	1
	BaoXiang_ADBOX	[	94	]	=	0658		BaoXiang_ADBOX_Rad	[	94	]	=	8 		BaoXiang_ADBOX_Count	[	94	]	=	1
	BaoXiang_ADBOX	[	95	]	=	0659		BaoXiang_ADBOX_Rad	[	95	]	=	8 		BaoXiang_ADBOX_Count	[	95	]	=	1
	BaoXiang_ADBOX	[	96	]	=	0662		BaoXiang_ADBOX_Rad	[	96	]	=	8 		BaoXiang_ADBOX_Count	[	96	]	=	1
	BaoXiang_ADBOX	[	97	]	=	0665		BaoXiang_ADBOX_Rad	[	97	]	=	8 		BaoXiang_ADBOX_Count	[	97	]	=	1
	BaoXiang_ADBOX	[	98	]	=	0666		BaoXiang_ADBOX_Rad	[	98	]	=	8 		BaoXiang_ADBOX_Count	[	98	]	=	1
	BaoXiang_ADBOX	[	99	]	=	0689		BaoXiang_ADBOX_Rad	[	99	]	=	7 		BaoXiang_ADBOX_Count	[	99	]	=	1
	BaoXiang_ADBOX	[	100	]	=	0690		BaoXiang_ADBOX_Rad	[	100	]	=	7 		BaoXiang_ADBOX_Count	[	100	]	=	1
	BaoXiang_ADBOX	[	101	]	=	0691		BaoXiang_ADBOX_Rad	[	101	]	=	7 		BaoXiang_ADBOX_Count	[	101	]	=	1
	BaoXiang_ADBOX	[	102	]	=	0692		BaoXiang_ADBOX_Rad	[	102	]	=	7 		BaoXiang_ADBOX_Count	[	102	]	=	1
	BaoXiang_ADBOX	[	103	]	=	0693		BaoXiang_ADBOX_Rad	[	103	]	=	7 		BaoXiang_ADBOX_Count	[	103	]	=	1
	BaoXiang_ADBOX	[	104	]	=	0702		BaoXiang_ADBOX_Rad	[	104	]	=	7 		BaoXiang_ADBOX_Count	[	104	]	=	1
	BaoXiang_ADBOX	[	105	]	=	0704		BaoXiang_ADBOX_Rad	[	105	]	=	7 		BaoXiang_ADBOX_Count	[	105	]	=	1
	BaoXiang_ADBOX	[	106	]	=	0705		BaoXiang_ADBOX_Rad	[	106	]	=	7 		BaoXiang_ADBOX_Count	[	106	]	=	1
	BaoXiang_ADBOX	[	107	]	=	0706		BaoXiang_ADBOX_Rad	[	107	]	=	7 		BaoXiang_ADBOX_Count	[	107	]	=	1
	BaoXiang_ADBOX	[	108	]	=	0712		BaoXiang_ADBOX_Rad	[	108	]	=	7 		BaoXiang_ADBOX_Count	[	108	]	=	1
	BaoXiang_ADBOX	[	109	]	=	0713		BaoXiang_ADBOX_Rad	[	109	]	=	7 		BaoXiang_ADBOX_Count	[	109	]	=	1
	BaoXiang_ADBOX	[	110	]	=	0718		BaoXiang_ADBOX_Rad	[	110	]	=	7 		BaoXiang_ADBOX_Count	[	110	]	=	1
	BaoXiang_ADBOX	[	111	]	=	0719		BaoXiang_ADBOX_Rad	[	111	]	=	7 		BaoXiang_ADBOX_Count	[	111	]	=	1
	BaoXiang_ADBOX	[	112	]	=	0720		BaoXiang_ADBOX_Rad	[	112	]	=	7 		BaoXiang_ADBOX_Count	[	112	]	=	1
	BaoXiang_ADBOX	[	113	]	=	0722		BaoXiang_ADBOX_Rad	[	113	]	=	7 		BaoXiang_ADBOX_Count	[	113	]	=	1
	BaoXiang_ADBOX	[	114	]	=	0725		BaoXiang_ADBOX_Rad	[	114	]	=	7 		BaoXiang_ADBOX_Count	[	114	]	=	1
	BaoXiang_ADBOX	[	115	]	=	0726		BaoXiang_ADBOX_Rad	[	115	]	=	7 		BaoXiang_ADBOX_Count	[	115	]	=	1
	BaoXiang_ADBOX	[	116	]	=	0733		BaoXiang_ADBOX_Rad	[	116	]	=	7 		BaoXiang_ADBOX_Count	[	116	]	=	1
	BaoXiang_ADBOX	[	117	]	=	0738		BaoXiang_ADBOX_Rad	[	117	]	=	7 		BaoXiang_ADBOX_Count	[	117	]	=	1
	BaoXiang_ADBOX	[	118	]	=	0741		BaoXiang_ADBOX_Rad	[	118	]	=	7 		BaoXiang_ADBOX_Count	[	118	]	=	1
	BaoXiang_ADBOX	[	119	]	=	0742		BaoXiang_ADBOX_Rad	[	119	]	=	7 		BaoXiang_ADBOX_Count	[	119	]	=	1
	BaoXiang_ADBOX	[	120	]	=	0744		BaoXiang_ADBOX_Rad	[	120	]	=	7 		BaoXiang_ADBOX_Count	[	120	]	=	1
	BaoXiang_ADBOX	[	121	]	=	0763		BaoXiang_ADBOX_Rad	[	121	]	=	7 		BaoXiang_ADBOX_Count	[	121	]	=	1
	BaoXiang_ADBOX	[	122	]	=	0770		BaoXiang_ADBOX_Rad	[	122	]	=	7 		BaoXiang_ADBOX_Count	[	122	]	=	1
	BaoXiang_ADBOX	[	123	]	=	0777		BaoXiang_ADBOX_Rad	[	123	]	=	7 		BaoXiang_ADBOX_Count	[	123	]	=	1
	BaoXiang_ADBOX	[	124	]	=	0781		BaoXiang_ADBOX_Rad	[	124	]	=	7 		BaoXiang_ADBOX_Count	[	124	]	=	1
	BaoXiang_ADBOX	[	125	]	=	0785		BaoXiang_ADBOX_Rad	[	125	]	=	7 		BaoXiang_ADBOX_Count	[	125	]	=	1
	BaoXiang_ADBOX	[	126	]	=	0789		BaoXiang_ADBOX_Rad	[	126	]	=	7 		BaoXiang_ADBOX_Count	[	126	]	=	1
	BaoXiang_ADBOX	[	127	]	=	0799		BaoXiang_ADBOX_Rad	[	127	]	=	7 		BaoXiang_ADBOX_Count	[	127	]	=	1
	BaoXiang_ADBOX	[	128	]	=	0803		BaoXiang_ADBOX_Rad	[	128	]	=	7 		BaoXiang_ADBOX_Count	[	128	]	=	1
	BaoXiang_ADBOX	[	129	]	=	3138		BaoXiang_ADBOX_Rad	[	129	]	=	737 		BaoXiang_ADBOX_Count	[	129	]	=	1
	BaoXiang_ADBOX	[	130	]	=	3139		BaoXiang_ADBOX_Rad	[	130	]	=	737 		BaoXiang_ADBOX_Count	[	130	]	=	1
	BaoXiang_ADBOX	[	131	]	=	3136		BaoXiang_ADBOX_Rad	[	131	]	=	737 		BaoXiang_ADBOX_Count	[	131	]	=	1
	BaoXiang_ADBOX	[	132	]	=	3140		BaoXiang_ADBOX_Rad	[	132	]	=	737 		BaoXiang_ADBOX_Count	[	132	]	=	1
	BaoXiang_ADBOX	[	133	]	=	3123		BaoXiang_ADBOX_Rad	[	133	]	=	737 		BaoXiang_ADBOX_Count	[	133	]	=	1
	BaoXiang_ADBOX	[	134	]	=	3125		BaoXiang_ADBOX_Rad	[	134	]	=	737 		BaoXiang_ADBOX_Count	[	134	]	=	1
	BaoXiang_ADBOX	[	135	]	=	3122		BaoXiang_ADBOX_Rad	[	135	]	=	736 		BaoXiang_ADBOX_Count	[	135	]	=	1
	BaoXiang_ADBOX	[	136	]	=	3126		BaoXiang_ADBOX_Rad	[	136	]	=	736 		BaoXiang_ADBOX_Count	[	136	]	=	1
	BaoXiang_ADBOX	[	137	]	=	3127		BaoXiang_ADBOX_Rad	[	137	]	=	736 		BaoXiang_ADBOX_Count	[	137	]	=	1
	BaoXiang_ADBOX	[	138	]	=	3138		BaoXiang_ADBOX_Rad	[	138	]	=	736 		BaoXiang_ADBOX_Count	[	138	]	=	1
	BaoXiang_ADBOX	[	139	]	=	3135		BaoXiang_ADBOX_Rad	[	139	]	=	736 		BaoXiang_ADBOX_Count	[	139	]	=	1
																				
																				
																				
																				
																				
																				
																				
																				
																				
																				
																				
																				
--	ЙБ№вРнФёКЇ±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_SGBOX_Qua	=	5	 				BaoXiang_SGBOX_Mxcount	=	78										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BaoXiang_SGBOX	=	{}					BaoXiang_SGBOX_Rad	=	{}					BaoXiang_SGBOX_Count	=	{}			
	BaoXiang_SGBOX	[	1	]	=	3909		BaoXiang_SGBOX_Rad	[	1	]	=	60000 		BaoXiang_SGBOX_Count	[	1	]	=	1
	BaoXiang_SGBOX	[	2	]	=	3345		BaoXiang_SGBOX_Rad	[	2	]	=	10000 		BaoXiang_SGBOX_Count	[	2	]	=	1
	BaoXiang_SGBOX	[	3	]	=	3346		BaoXiang_SGBOX_Rad	[	3	]	=	10000 		BaoXiang_SGBOX_Count	[	3	]	=	1
	BaoXiang_SGBOX	[	4	]	=	3347		BaoXiang_SGBOX_Rad	[	4	]	=	10000 		BaoXiang_SGBOX_Count	[	4	]	=	1
	BaoXiang_SGBOX	[	5	]	=	0006		BaoXiang_SGBOX_Rad	[	5	]	=	333 		BaoXiang_SGBOX_Count	[	5	]	=	1
	BaoXiang_SGBOX	[	6	]	=	0017		BaoXiang_SGBOX_Rad	[	6	]	=	333 		BaoXiang_SGBOX_Count	[	6	]	=	1
	BaoXiang_SGBOX	[	7	]	=	0041		BaoXiang_SGBOX_Rad	[	7	]	=	333 		BaoXiang_SGBOX_Count	[	7	]	=	1
	BaoXiang_SGBOX	[	8	]	=	0078		BaoXiang_SGBOX_Rad	[	8	]	=	333 		BaoXiang_SGBOX_Count	[	8	]	=	1
	BaoXiang_SGBOX	[	9	]	=	0230		BaoXiang_SGBOX_Rad	[	9	]	=	333 		BaoXiang_SGBOX_Count	[	9	]	=	1
	BaoXiang_SGBOX	[	10	]	=	0304		BaoXiang_SGBOX_Rad	[	10	]	=	333 		BaoXiang_SGBOX_Count	[	10	]	=	1
	BaoXiang_SGBOX	[	11	]	=	0317		BaoXiang_SGBOX_Rad	[	11	]	=	333 		BaoXiang_SGBOX_Count	[	11	]	=	1
	BaoXiang_SGBOX	[	12	]	=	0344		BaoXiang_SGBOX_Rad	[	12	]	=	333 		BaoXiang_SGBOX_Count	[	12	]	=	1
	BaoXiang_SGBOX	[	13	]	=	0358		BaoXiang_SGBOX_Rad	[	13	]	=	333 		BaoXiang_SGBOX_Count	[	13	]	=	1
	BaoXiang_SGBOX	[	14	]	=	0364		BaoXiang_SGBOX_Rad	[	14	]	=	333 		BaoXiang_SGBOX_Count	[	14	]	=	1
	BaoXiang_SGBOX	[	15	]	=	0377		BaoXiang_SGBOX_Rad	[	15	]	=	333 		BaoXiang_SGBOX_Count	[	15	]	=	1
	BaoXiang_SGBOX	[	16	]	=	0393		BaoXiang_SGBOX_Rad	[	16	]	=	333 		BaoXiang_SGBOX_Count	[	16	]	=	1
	BaoXiang_SGBOX	[	17	]	=	0394		BaoXiang_SGBOX_Rad	[	17	]	=	333 		BaoXiang_SGBOX_Count	[	17	]	=	1
	BaoXiang_SGBOX	[	18	]	=	0480		BaoXiang_SGBOX_Rad	[	18	]	=	333 		BaoXiang_SGBOX_Count	[	18	]	=	1
	BaoXiang_SGBOX	[	19	]	=	0493		BaoXiang_SGBOX_Rad	[	19	]	=	333 		BaoXiang_SGBOX_Count	[	19	]	=	1
	BaoXiang_SGBOX	[	20	]	=	0520		BaoXiang_SGBOX_Rad	[	20	]	=	333 		BaoXiang_SGBOX_Count	[	20	]	=	1
	BaoXiang_SGBOX	[	21	]	=	0534		BaoXiang_SGBOX_Rad	[	21	]	=	333 		BaoXiang_SGBOX_Count	[	21	]	=	1
	BaoXiang_SGBOX	[	22	]	=	0540		BaoXiang_SGBOX_Rad	[	22	]	=	333 		BaoXiang_SGBOX_Count	[	22	]	=	1
	BaoXiang_SGBOX	[	23	]	=	0553		BaoXiang_SGBOX_Rad	[	23	]	=	333 		BaoXiang_SGBOX_Count	[	23	]	=	1
	BaoXiang_SGBOX	[	24	]	=	0569		BaoXiang_SGBOX_Rad	[	24	]	=	333 		BaoXiang_SGBOX_Count	[	24	]	=	1
	BaoXiang_SGBOX	[	25	]	=	0570		BaoXiang_SGBOX_Rad	[	25	]	=	333 		BaoXiang_SGBOX_Count	[	25	]	=	1
	BaoXiang_SGBOX	[	26	]	=	0656		BaoXiang_SGBOX_Rad	[	26	]	=	333 		BaoXiang_SGBOX_Count	[	26	]	=	1
	BaoXiang_SGBOX	[	27	]	=	0669		BaoXiang_SGBOX_Rad	[	27	]	=	333 		BaoXiang_SGBOX_Count	[	27	]	=	1
	BaoXiang_SGBOX	[	28	]	=	0696		BaoXiang_SGBOX_Rad	[	28	]	=	333 		BaoXiang_SGBOX_Count	[	28	]	=	1
	BaoXiang_SGBOX	[	29	]	=	0710		BaoXiang_SGBOX_Rad	[	29	]	=	333 		BaoXiang_SGBOX_Count	[	29	]	=	1
	BaoXiang_SGBOX	[	30	]	=	0716		BaoXiang_SGBOX_Rad	[	30	]	=	333 		BaoXiang_SGBOX_Count	[	30	]	=	1
	BaoXiang_SGBOX	[	31	]	=	0729		BaoXiang_SGBOX_Rad	[	31	]	=	333 		BaoXiang_SGBOX_Count	[	31	]	=	1
	BaoXiang_SGBOX	[	32	]	=	0745		BaoXiang_SGBOX_Rad	[	32	]	=	333 		BaoXiang_SGBOX_Count	[	32	]	=	1
	BaoXiang_SGBOX	[	33	]	=	0746		BaoXiang_SGBOX_Rad	[	33	]	=	334 		BaoXiang_SGBOX_Count	[	33	]	=	1
	BaoXiang_SGBOX	[	34	]	=	3828		BaoXiang_SGBOX_Rad	[	34	]	=	625 		BaoXiang_SGBOX_Count	[	34	]	=	1
	BaoXiang_SGBOX	[	35	]	=	3829		BaoXiang_SGBOX_Rad	[	35	]	=	625 		BaoXiang_SGBOX_Count	[	35	]	=	1
	BaoXiang_SGBOX	[	36	]	=	3830		BaoXiang_SGBOX_Rad	[	36	]	=	625 		BaoXiang_SGBOX_Count	[	36	]	=	1
	BaoXiang_SGBOX	[	37	]	=	3831		BaoXiang_SGBOX_Rad	[	37	]	=	625 		BaoXiang_SGBOX_Count	[	37	]	=	1
	BaoXiang_SGBOX	[	38	]	=	3832		BaoXiang_SGBOX_Rad	[	38	]	=	625 		BaoXiang_SGBOX_Count	[	38	]	=	1
	BaoXiang_SGBOX	[	39	]	=	3833		BaoXiang_SGBOX_Rad	[	39	]	=	625 		BaoXiang_SGBOX_Count	[	39	]	=	1
	BaoXiang_SGBOX	[	40	]	=	3834		BaoXiang_SGBOX_Rad	[	40	]	=	625 		BaoXiang_SGBOX_Count	[	40	]	=	1
	BaoXiang_SGBOX	[	41	]	=	3835		BaoXiang_SGBOX_Rad	[	41	]	=	625 		BaoXiang_SGBOX_Count	[	41	]	=	1
	BaoXiang_SGBOX	[	42	]	=	3836		BaoXiang_SGBOX_Rad	[	42	]	=	625 		BaoXiang_SGBOX_Count	[	42	]	=	1
	BaoXiang_SGBOX	[	43	]	=	3837		BaoXiang_SGBOX_Rad	[	43	]	=	625 		BaoXiang_SGBOX_Count	[	43	]	=	1
	BaoXiang_SGBOX	[	44	]	=	3838		BaoXiang_SGBOX_Rad	[	44	]	=	625 		BaoXiang_SGBOX_Count	[	44	]	=	1
	BaoXiang_SGBOX	[	45	]	=	3839		BaoXiang_SGBOX_Rad	[	45	]	=	625 		BaoXiang_SGBOX_Count	[	45	]	=	1
	BaoXiang_SGBOX	[	46	]	=	3840		BaoXiang_SGBOX_Rad	[	46	]	=	625 		BaoXiang_SGBOX_Count	[	46	]	=	1
	BaoXiang_SGBOX	[	47	]	=	3841		BaoXiang_SGBOX_Rad	[	47	]	=	625 		BaoXiang_SGBOX_Count	[	47	]	=	1
	BaoXiang_SGBOX	[	48	]	=	3842		BaoXiang_SGBOX_Rad	[	48	]	=	625 		BaoXiang_SGBOX_Count	[	48	]	=	1
	BaoXiang_SGBOX	[	49	]	=	3843		BaoXiang_SGBOX_Rad	[	49	]	=	625 		BaoXiang_SGBOX_Count	[	49	]	=	1
	BaoXiang_SGBOX	[	50	]	=	0879		BaoXiang_SGBOX_Rad	[	50	]	=	2500 		BaoXiang_SGBOX_Count	[	50	]	=	1
	BaoXiang_SGBOX	[	51	]	=	0880		BaoXiang_SGBOX_Rad	[	51	]	=	2500 		BaoXiang_SGBOX_Count	[	51	]	=	1
	BaoXiang_SGBOX	[	52	]	=	0881		BaoXiang_SGBOX_Rad	[	52	]	=	2500 		BaoXiang_SGBOX_Count	[	52	]	=	1
	BaoXiang_SGBOX	[	53	]	=	0882		BaoXiang_SGBOX_Rad	[	53	]	=	2500 		BaoXiang_SGBOX_Count	[	53	]	=	1
	BaoXiang_SGBOX	[	54	]	=	0883		BaoXiang_SGBOX_Rad	[	54	]	=	2500 		BaoXiang_SGBOX_Count	[	54	]	=	1
	BaoXiang_SGBOX	[	55	]	=	0884		BaoXiang_SGBOX_Rad	[	55	]	=	2500 		BaoXiang_SGBOX_Count	[	55	]	=	1
	BaoXiang_SGBOX	[	56	]	=	0885		BaoXiang_SGBOX_Rad	[	56	]	=	2500 		BaoXiang_SGBOX_Count	[	56	]	=	1
	BaoXiang_SGBOX	[	57	]	=	0887		BaoXiang_SGBOX_Rad	[	57	]	=	2500 		BaoXiang_SGBOX_Count	[	57	]	=	1
	BaoXiang_SGBOX	[	58	]	=	0007		BaoXiang_SGBOX_Rad	[	58	]	=	2 		BaoXiang_SGBOX_Count	[	58	]	=	1
	BaoXiang_SGBOX	[	59	]	=	0042		BaoXiang_SGBOX_Rad	[	59	]	=	1 		BaoXiang_SGBOX_Count	[	59	]	=	1
	BaoXiang_SGBOX	[	60	]	=	0018		BaoXiang_SGBOX_Rad	[	60	]	=	1 		BaoXiang_SGBOX_Count	[	60	]	=	1
	BaoXiang_SGBOX	[	61	]	=	1375		BaoXiang_SGBOX_Rad	[	61	]	=	1 		BaoXiang_SGBOX_Count	[	61	]	=	1
	BaoXiang_SGBOX	[	62	]	=	1384		BaoXiang_SGBOX_Rad	[	62	]	=	1 		BaoXiang_SGBOX_Count	[	62	]	=	1
	BaoXiang_SGBOX	[	63	]	=	1394		BaoXiang_SGBOX_Rad	[	63	]	=	1 		BaoXiang_SGBOX_Count	[	63	]	=	1
	BaoXiang_SGBOX	[	64	]	=	1411		BaoXiang_SGBOX_Rad	[	64	]	=	1 		BaoXiang_SGBOX_Count	[	64	]	=	1
	BaoXiang_SGBOX	[	65	]	=	1421		BaoXiang_SGBOX_Rad	[	65	]	=	1 		BaoXiang_SGBOX_Count	[	65	]	=	1
	BaoXiang_SGBOX	[	66	]	=	4198		BaoXiang_SGBOX_Rad	[	66	]	=	1 		BaoXiang_SGBOX_Count	[	66	]	=	1
	BaoXiang_SGBOX	[	67	]	=	4200		BaoXiang_SGBOX_Rad	[	67	]	=	1 		BaoXiang_SGBOX_Count	[	67	]	=	1
	BaoXiang_SGBOX	[	68	]	=	4202		BaoXiang_SGBOX_Rad	[	68	]	=	1 		BaoXiang_SGBOX_Count	[	68	]	=	1
	BaoXiang_SGBOX	[	69	]	=	4204		BaoXiang_SGBOX_Rad	[	69	]	=	1 		BaoXiang_SGBOX_Count	[	69	]	=	1
	BaoXiang_SGBOX	[	70	]	=	4206		BaoXiang_SGBOX_Rad	[	70	]	=	1 		BaoXiang_SGBOX_Count	[	70	]	=	1
	BaoXiang_SGBOX	[	71	]	=	4208		BaoXiang_SGBOX_Rad	[	71	]	=	1 		BaoXiang_SGBOX_Count	[	71	]	=	1
	BaoXiang_SGBOX	[	72	]	=	3139		BaoXiang_SGBOX_Rad	[	72	]	=	12712 		BaoXiang_SGBOX_Count	[	72	]	=	1
	BaoXiang_SGBOX	[	73	]	=	3140		BaoXiang_SGBOX_Rad	[	73	]	=	12713 		BaoXiang_SGBOX_Count	[	73	]	=	1
	BaoXiang_SGBOX	[	74	]	=	3138		BaoXiang_SGBOX_Rad	[	74	]	=	12711 		BaoXiang_SGBOX_Count	[	74	]	=	1
	BaoXiang_SGBOX	[	75	]	=	3127		BaoXiang_SGBOX_Rad	[	75	]	=	12711 		BaoXiang_SGBOX_Count	[	75	]	=	1
	BaoXiang_SGBOX	[	76	]	=	3123		BaoXiang_SGBOX_Rad	[	76	]	=	12711 		BaoXiang_SGBOX_Count	[	76	]	=	1
	BaoXiang_SGBOX	[	77	]	=	3128		BaoXiang_SGBOX_Rad	[	77	]	=	12711 		BaoXiang_SGBOX_Count	[	77	]	=	1
	BaoXiang_SGBOX	[	78	]	=	3125		BaoXiang_SGBOX_Rad	[	78	]	=	12711 		BaoXiang_SGBOX_Count	[	78	]	=	1
																				

--	ІШ±¦Нј±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_CBTBOX_Qua	=	5	 				BaoXiang_CBTBOX_Mxcount	=	222										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BaoXiang_CBTBOX	=	{}					BaoXiang_CBTBOX_Rad	=	{}					BaoXiang_CBTBOX_Count	=	{}			
	BaoXiang_CBTBOX	[	1	]	=	0396		BaoXiang_CBTBOX_Rad	[	1	]	=	1 		BaoXiang_CBTBOX_Count	[	1	]	=	1
	BaoXiang_CBTBOX	[	2	]	=	0398		BaoXiang_CBTBOX_Rad	[	2	]	=	1 		BaoXiang_CBTBOX_Count	[	2	]	=	1
	BaoXiang_CBTBOX	[	3	]	=	0400		BaoXiang_CBTBOX_Rad	[	3	]	=	1 		BaoXiang_CBTBOX_Count	[	3	]	=	1
	BaoXiang_CBTBOX	[	4	]	=	0402		BaoXiang_CBTBOX_Rad	[	4	]	=	1 		BaoXiang_CBTBOX_Count	[	4	]	=	1
	BaoXiang_CBTBOX	[	5	]	=	0404		BaoXiang_CBTBOX_Rad	[	5	]	=	1 		BaoXiang_CBTBOX_Count	[	5	]	=	1
	BaoXiang_CBTBOX	[	6	]	=	0406		BaoXiang_CBTBOX_Rad	[	6	]	=	1 		BaoXiang_CBTBOX_Count	[	6	]	=	1
	BaoXiang_CBTBOX	[	7	]	=	0408		BaoXiang_CBTBOX_Rad	[	7	]	=	1 		BaoXiang_CBTBOX_Count	[	7	]	=	1
	BaoXiang_CBTBOX	[	8	]	=	0411		BaoXiang_CBTBOX_Rad	[	8	]	=	1 		BaoXiang_CBTBOX_Count	[	8	]	=	1
	BaoXiang_CBTBOX	[	9	]	=	0291		BaoXiang_CBTBOX_Rad	[	9	]	=	5 		BaoXiang_CBTBOX_Count	[	9	]	=	1
	BaoXiang_CBTBOX	[	10	]	=	0293		BaoXiang_CBTBOX_Rad	[	10	]	=	5 		BaoXiang_CBTBOX_Count	[	10	]	=	1
	BaoXiang_CBTBOX	[	11	]	=	0295		BaoXiang_CBTBOX_Rad	[	11	]	=	5 		BaoXiang_CBTBOX_Count	[	11	]	=	1
	BaoXiang_CBTBOX	[	12	]	=	0297		BaoXiang_CBTBOX_Rad	[	12	]	=	5 		BaoXiang_CBTBOX_Count	[	12	]	=	1
	BaoXiang_CBTBOX	[	13	]	=	0298		BaoXiang_CBTBOX_Rad	[	13	]	=	5 		BaoXiang_CBTBOX_Count	[	13	]	=	1
	BaoXiang_CBTBOX	[	14	]	=	0300		BaoXiang_CBTBOX_Rad	[	14	]	=	5 		BaoXiang_CBTBOX_Count	[	14	]	=	1
	BaoXiang_CBTBOX	[	15	]	=	0306		BaoXiang_CBTBOX_Rad	[	15	]	=	5 		BaoXiang_CBTBOX_Count	[	15	]	=	1
	BaoXiang_CBTBOX	[	16	]	=	0307		BaoXiang_CBTBOX_Rad	[	16	]	=	5 		BaoXiang_CBTBOX_Count	[	16	]	=	1
	BaoXiang_CBTBOX	[	17	]	=	0311		BaoXiang_CBTBOX_Rad	[	17	]	=	5 		BaoXiang_CBTBOX_Count	[	17	]	=	1
	BaoXiang_CBTBOX	[	18	]	=	0313		BaoXiang_CBTBOX_Rad	[	18	]	=	5 		BaoXiang_CBTBOX_Count	[	18	]	=	1
	BaoXiang_CBTBOX	[	19	]	=	0314		BaoXiang_CBTBOX_Rad	[	19	]	=	5 		BaoXiang_CBTBOX_Count	[	19	]	=	1
	BaoXiang_CBTBOX	[	20	]	=	0336		BaoXiang_CBTBOX_Rad	[	20	]	=	5 		BaoXiang_CBTBOX_Count	[	20	]	=	1
	BaoXiang_CBTBOX	[	21	]	=	0337		BaoXiang_CBTBOX_Rad	[	21	]	=	5 		BaoXiang_CBTBOX_Count	[	21	]	=	1
	BaoXiang_CBTBOX	[	22	]	=	0338		BaoXiang_CBTBOX_Rad	[	22	]	=	5 		BaoXiang_CBTBOX_Count	[	22	]	=	1
	BaoXiang_CBTBOX	[	23	]	=	0339		BaoXiang_CBTBOX_Rad	[	23	]	=	5 		BaoXiang_CBTBOX_Count	[	23	]	=	1
	BaoXiang_CBTBOX	[	24	]	=	0340		BaoXiang_CBTBOX_Rad	[	24	]	=	5 		BaoXiang_CBTBOX_Count	[	24	]	=	1
	BaoXiang_CBTBOX	[	25	]	=	0341		BaoXiang_CBTBOX_Rad	[	25	]	=	5 		BaoXiang_CBTBOX_Count	[	25	]	=	1
	BaoXiang_CBTBOX	[	26	]	=	0352		BaoXiang_CBTBOX_Rad	[	26	]	=	5 		BaoXiang_CBTBOX_Count	[	26	]	=	1
	BaoXiang_CBTBOX	[	27	]	=	0353		BaoXiang_CBTBOX_Rad	[	27	]	=	5 		BaoXiang_CBTBOX_Count	[	27	]	=	1
	BaoXiang_CBTBOX	[	28	]	=	0354		BaoXiang_CBTBOX_Rad	[	28	]	=	5 		BaoXiang_CBTBOX_Count	[	28	]	=	1
	BaoXiang_CBTBOX	[	29	]	=	0350		BaoXiang_CBTBOX_Rad	[	29	]	=	5 		BaoXiang_CBTBOX_Count	[	29	]	=	1
	BaoXiang_CBTBOX	[	30	]	=	0360		BaoXiang_CBTBOX_Rad	[	30	]	=	5 		BaoXiang_CBTBOX_Count	[	30	]	=	1
	BaoXiang_CBTBOX	[	31	]	=	0361		BaoXiang_CBTBOX_Rad	[	31	]	=	5 		BaoXiang_CBTBOX_Count	[	31	]	=	1
	BaoXiang_CBTBOX	[	32	]	=	0362		BaoXiang_CBTBOX_Rad	[	32	]	=	5 		BaoXiang_CBTBOX_Count	[	32	]	=	1
	BaoXiang_CBTBOX	[	33	]	=	0467		BaoXiang_CBTBOX_Rad	[	33	]	=	5 		BaoXiang_CBTBOX_Count	[	33	]	=	1
	BaoXiang_CBTBOX	[	34	]	=	0469		BaoXiang_CBTBOX_Rad	[	34	]	=	5 		BaoXiang_CBTBOX_Count	[	34	]	=	1
	BaoXiang_CBTBOX	[	35	]	=	0471		BaoXiang_CBTBOX_Rad	[	35	]	=	5 		BaoXiang_CBTBOX_Count	[	35	]	=	1
	BaoXiang_CBTBOX	[	36	]	=	0473		BaoXiang_CBTBOX_Rad	[	36	]	=	5 		BaoXiang_CBTBOX_Count	[	36	]	=	1
	BaoXiang_CBTBOX	[	37	]	=	0474		BaoXiang_CBTBOX_Rad	[	37	]	=	5 		BaoXiang_CBTBOX_Count	[	37	]	=	1
	BaoXiang_CBTBOX	[	38	]	=	0476		BaoXiang_CBTBOX_Rad	[	38	]	=	5 		BaoXiang_CBTBOX_Count	[	38	]	=	1
	BaoXiang_CBTBOX	[	39	]	=	0482		BaoXiang_CBTBOX_Rad	[	39	]	=	5 		BaoXiang_CBTBOX_Count	[	39	]	=	1
	BaoXiang_CBTBOX	[	40	]	=	0483		BaoXiang_CBTBOX_Rad	[	40	]	=	5 		BaoXiang_CBTBOX_Count	[	40	]	=	1
	BaoXiang_CBTBOX	[	41	]	=	0486		BaoXiang_CBTBOX_Rad	[	41	]	=	5 		BaoXiang_CBTBOX_Count	[	41	]	=	1
	BaoXiang_CBTBOX	[	42	]	=	0487		BaoXiang_CBTBOX_Rad	[	42	]	=	5 		BaoXiang_CBTBOX_Count	[	42	]	=	1
	BaoXiang_CBTBOX	[	43	]	=	0490		BaoXiang_CBTBOX_Rad	[	43	]	=	5 		BaoXiang_CBTBOX_Count	[	43	]	=	1
	BaoXiang_CBTBOX	[	44	]	=	0513		BaoXiang_CBTBOX_Rad	[	44	]	=	5 		BaoXiang_CBTBOX_Count	[	44	]	=	1
	BaoXiang_CBTBOX	[	45	]	=	0514		BaoXiang_CBTBOX_Rad	[	45	]	=	5 		BaoXiang_CBTBOX_Count	[	45	]	=	1
	BaoXiang_CBTBOX	[	46	]	=	0515		BaoXiang_CBTBOX_Rad	[	46	]	=	5 		BaoXiang_CBTBOX_Count	[	46	]	=	1
	BaoXiang_CBTBOX	[	47	]	=	0516		BaoXiang_CBTBOX_Rad	[	47	]	=	5 		BaoXiang_CBTBOX_Count	[	47	]	=	1
	BaoXiang_CBTBOX	[	48	]	=	0517		BaoXiang_CBTBOX_Rad	[	48	]	=	5 		BaoXiang_CBTBOX_Count	[	48	]	=	1
	BaoXiang_CBTBOX	[	49	]	=	0536		BaoXiang_CBTBOX_Rad	[	49	]	=	5 		BaoXiang_CBTBOX_Count	[	49	]	=	1
	BaoXiang_CBTBOX	[	50	]	=	0537		BaoXiang_CBTBOX_Rad	[	50	]	=	5 		BaoXiang_CBTBOX_Count	[	50	]	=	1
	BaoXiang_CBTBOX	[	51	]	=	0542		BaoXiang_CBTBOX_Rad	[	51	]	=	5 		BaoXiang_CBTBOX_Count	[	51	]	=	1
	BaoXiang_CBTBOX	[	52	]	=	0543		BaoXiang_CBTBOX_Rad	[	52	]	=	5 		BaoXiang_CBTBOX_Count	[	52	]	=	1
	BaoXiang_CBTBOX	[	53	]	=	0544		BaoXiang_CBTBOX_Rad	[	53	]	=	5 		BaoXiang_CBTBOX_Count	[	53	]	=	1
	BaoXiang_CBTBOX	[	54	]	=	0546		BaoXiang_CBTBOX_Rad	[	54	]	=	5 		BaoXiang_CBTBOX_Count	[	54	]	=	1
	BaoXiang_CBTBOX	[	55	]	=	0549		BaoXiang_CBTBOX_Rad	[	55	]	=	5 		BaoXiang_CBTBOX_Count	[	55	]	=	1
	BaoXiang_CBTBOX	[	56	]	=	0550		BaoXiang_CBTBOX_Rad	[	56	]	=	5 		BaoXiang_CBTBOX_Count	[	56	]	=	1
	BaoXiang_CBTBOX	[	57	]	=	0557		BaoXiang_CBTBOX_Rad	[	57	]	=	5 		BaoXiang_CBTBOX_Count	[	57	]	=	1
	BaoXiang_CBTBOX	[	58	]	=	0562		BaoXiang_CBTBOX_Rad	[	58	]	=	5 		BaoXiang_CBTBOX_Count	[	58	]	=	1
	BaoXiang_CBTBOX	[	59	]	=	0565		BaoXiang_CBTBOX_Rad	[	59	]	=	5 		BaoXiang_CBTBOX_Count	[	59	]	=	1
	BaoXiang_CBTBOX	[	60	]	=	0566		BaoXiang_CBTBOX_Rad	[	60	]	=	5 		BaoXiang_CBTBOX_Count	[	60	]	=	1
	BaoXiang_CBTBOX	[	61	]	=	0568		BaoXiang_CBTBOX_Rad	[	61	]	=	5 		BaoXiang_CBTBOX_Count	[	61	]	=	1
	BaoXiang_CBTBOX	[	62	]	=	0649		BaoXiang_CBTBOX_Rad	[	62	]	=	5 		BaoXiang_CBTBOX_Count	[	62	]	=	1
	BaoXiang_CBTBOX	[	63	]	=	0650		BaoXiang_CBTBOX_Rad	[	63	]	=	5 		BaoXiang_CBTBOX_Count	[	63	]	=	1
	BaoXiang_CBTBOX	[	64	]	=	0652		BaoXiang_CBTBOX_Rad	[	64	]	=	5 		BaoXiang_CBTBOX_Count	[	64	]	=	1
	BaoXiang_CBTBOX	[	65	]	=	0658		BaoXiang_CBTBOX_Rad	[	65	]	=	5 		BaoXiang_CBTBOX_Count	[	65	]	=	1
	BaoXiang_CBTBOX	[	66	]	=	0659		BaoXiang_CBTBOX_Rad	[	66	]	=	5 		BaoXiang_CBTBOX_Count	[	66	]	=	1
	BaoXiang_CBTBOX	[	67	]	=	0662		BaoXiang_CBTBOX_Rad	[	67	]	=	5 		BaoXiang_CBTBOX_Count	[	67	]	=	1
	BaoXiang_CBTBOX	[	68	]	=	0665		BaoXiang_CBTBOX_Rad	[	68	]	=	5 		BaoXiang_CBTBOX_Count	[	68	]	=	1
	BaoXiang_CBTBOX	[	69	]	=	0666		BaoXiang_CBTBOX_Rad	[	69	]	=	5 		BaoXiang_CBTBOX_Count	[	69	]	=	1
	BaoXiang_CBTBOX	[	70	]	=	0689		BaoXiang_CBTBOX_Rad	[	70	]	=	5 		BaoXiang_CBTBOX_Count	[	70	]	=	1
	BaoXiang_CBTBOX	[	71	]	=	0690		BaoXiang_CBTBOX_Rad	[	71	]	=	5 		BaoXiang_CBTBOX_Count	[	71	]	=	1
	BaoXiang_CBTBOX	[	72	]	=	0691		BaoXiang_CBTBOX_Rad	[	72	]	=	5 		BaoXiang_CBTBOX_Count	[	72	]	=	1
	BaoXiang_CBTBOX	[	73	]	=	0692		BaoXiang_CBTBOX_Rad	[	73	]	=	5 		BaoXiang_CBTBOX_Count	[	73	]	=	1
	BaoXiang_CBTBOX	[	74	]	=	0693		BaoXiang_CBTBOX_Rad	[	74	]	=	5 		BaoXiang_CBTBOX_Count	[	74	]	=	1
	BaoXiang_CBTBOX	[	75	]	=	0702		BaoXiang_CBTBOX_Rad	[	75	]	=	5 		BaoXiang_CBTBOX_Count	[	75	]	=	1
	BaoXiang_CBTBOX	[	76	]	=	0704		BaoXiang_CBTBOX_Rad	[	76	]	=	5 		BaoXiang_CBTBOX_Count	[	76	]	=	1
	BaoXiang_CBTBOX	[	77	]	=	0705		BaoXiang_CBTBOX_Rad	[	77	]	=	5 		BaoXiang_CBTBOX_Count	[	77	]	=	1
	BaoXiang_CBTBOX	[	78	]	=	0706		BaoXiang_CBTBOX_Rad	[	78	]	=	5 		BaoXiang_CBTBOX_Count	[	78	]	=	1
	BaoXiang_CBTBOX	[	79	]	=	0712		BaoXiang_CBTBOX_Rad	[	79	]	=	5 		BaoXiang_CBTBOX_Count	[	79	]	=	1
	BaoXiang_CBTBOX	[	80	]	=	0713		BaoXiang_CBTBOX_Rad	[	80	]	=	5 		BaoXiang_CBTBOX_Count	[	80	]	=	1
	BaoXiang_CBTBOX	[	81	]	=	0718		BaoXiang_CBTBOX_Rad	[	81	]	=	5 		BaoXiang_CBTBOX_Count	[	81	]	=	1
	BaoXiang_CBTBOX	[	82	]	=	0719		BaoXiang_CBTBOX_Rad	[	82	]	=	5 		BaoXiang_CBTBOX_Count	[	82	]	=	1
	BaoXiang_CBTBOX	[	83	]	=	0720		BaoXiang_CBTBOX_Rad	[	83	]	=	5 		BaoXiang_CBTBOX_Count	[	83	]	=	1
	BaoXiang_CBTBOX	[	84	]	=	0722		BaoXiang_CBTBOX_Rad	[	84	]	=	5 		BaoXiang_CBTBOX_Count	[	84	]	=	1
	BaoXiang_CBTBOX	[	85	]	=	0725		BaoXiang_CBTBOX_Rad	[	85	]	=	5 		BaoXiang_CBTBOX_Count	[	85	]	=	1
	BaoXiang_CBTBOX	[	86	]	=	0726		BaoXiang_CBTBOX_Rad	[	86	]	=	5 		BaoXiang_CBTBOX_Count	[	86	]	=	1
	BaoXiang_CBTBOX	[	87	]	=	0733		BaoXiang_CBTBOX_Rad	[	87	]	=	5 		BaoXiang_CBTBOX_Count	[	87	]	=	1
	BaoXiang_CBTBOX	[	88	]	=	0738		BaoXiang_CBTBOX_Rad	[	88	]	=	5 		BaoXiang_CBTBOX_Count	[	88	]	=	1
	BaoXiang_CBTBOX	[	89	]	=	0741		BaoXiang_CBTBOX_Rad	[	89	]	=	5 		BaoXiang_CBTBOX_Count	[	89	]	=	1
	BaoXiang_CBTBOX	[	90	]	=	0742		BaoXiang_CBTBOX_Rad	[	90	]	=	5 		BaoXiang_CBTBOX_Count	[	90	]	=	1
	BaoXiang_CBTBOX	[	91	]	=	0744		BaoXiang_CBTBOX_Rad	[	91	]	=	5 		BaoXiang_CBTBOX_Count	[	91	]	=	1
	BaoXiang_CBTBOX	[	92	]	=	0763		BaoXiang_CBTBOX_Rad	[	92	]	=	5 		BaoXiang_CBTBOX_Count	[	92	]	=	1
	BaoXiang_CBTBOX	[	93	]	=	0770		BaoXiang_CBTBOX_Rad	[	93	]	=	5 		BaoXiang_CBTBOX_Count	[	93	]	=	1
	BaoXiang_CBTBOX	[	94	]	=	0777		BaoXiang_CBTBOX_Rad	[	94	]	=	5 		BaoXiang_CBTBOX_Count	[	94	]	=	1
	BaoXiang_CBTBOX	[	95	]	=	0781		BaoXiang_CBTBOX_Rad	[	95	]	=	5 		BaoXiang_CBTBOX_Count	[	95	]	=	1
	BaoXiang_CBTBOX	[	96	]	=	0785		BaoXiang_CBTBOX_Rad	[	96	]	=	5 		BaoXiang_CBTBOX_Count	[	96	]	=	1
	BaoXiang_CBTBOX	[	97	]	=	0789		BaoXiang_CBTBOX_Rad	[	97	]	=	5 		BaoXiang_CBTBOX_Count	[	97	]	=	1
	BaoXiang_CBTBOX	[	98	]	=	0799		BaoXiang_CBTBOX_Rad	[	98	]	=	5 		BaoXiang_CBTBOX_Count	[	98	]	=	1
	BaoXiang_CBTBOX	[	99	]	=	0803		BaoXiang_CBTBOX_Rad	[	99	]	=	5 		BaoXiang_CBTBOX_Count	[	99	]	=	1
	BaoXiang_CBTBOX	[	100	]	=	0230		BaoXiang_CBTBOX_Rad	[	100	]	=	5 		BaoXiang_CBTBOX_Count	[	100	]	=	1
	BaoXiang_CBTBOX	[	101	]	=	0304		BaoXiang_CBTBOX_Rad	[	101	]	=	5 		BaoXiang_CBTBOX_Count	[	101	]	=	1
	BaoXiang_CBTBOX	[	102	]	=	0317		BaoXiang_CBTBOX_Rad	[	102	]	=	5 		BaoXiang_CBTBOX_Count	[	102	]	=	1
	BaoXiang_CBTBOX	[	103	]	=	0344		BaoXiang_CBTBOX_Rad	[	103	]	=	5 		BaoXiang_CBTBOX_Count	[	103	]	=	1
	BaoXiang_CBTBOX	[	104	]	=	0358		BaoXiang_CBTBOX_Rad	[	104	]	=	5 		BaoXiang_CBTBOX_Count	[	104	]	=	1
	BaoXiang_CBTBOX	[	105	]	=	0364		BaoXiang_CBTBOX_Rad	[	105	]	=	5 		BaoXiang_CBTBOX_Count	[	105	]	=	1
	BaoXiang_CBTBOX	[	106	]	=	0377		BaoXiang_CBTBOX_Rad	[	106	]	=	5 		BaoXiang_CBTBOX_Count	[	106	]	=	1
	BaoXiang_CBTBOX	[	107	]	=	0393		BaoXiang_CBTBOX_Rad	[	107	]	=	5 		BaoXiang_CBTBOX_Count	[	107	]	=	1
	BaoXiang_CBTBOX	[	108	]	=	0394		BaoXiang_CBTBOX_Rad	[	108	]	=	5 		BaoXiang_CBTBOX_Count	[	108	]	=	1
	BaoXiang_CBTBOX	[	109	]	=	0480		BaoXiang_CBTBOX_Rad	[	109	]	=	5 		BaoXiang_CBTBOX_Count	[	109	]	=	1
	BaoXiang_CBTBOX	[	110	]	=	0493		BaoXiang_CBTBOX_Rad	[	110	]	=	5 		BaoXiang_CBTBOX_Count	[	110	]	=	1
	BaoXiang_CBTBOX	[	111	]	=	0520		BaoXiang_CBTBOX_Rad	[	111	]	=	5 		BaoXiang_CBTBOX_Count	[	111	]	=	1
	BaoXiang_CBTBOX	[	112	]	=	0534		BaoXiang_CBTBOX_Rad	[	112	]	=	5 		BaoXiang_CBTBOX_Count	[	112	]	=	1
	BaoXiang_CBTBOX	[	113	]	=	0540		BaoXiang_CBTBOX_Rad	[	113	]	=	5 		BaoXiang_CBTBOX_Count	[	113	]	=	1
	BaoXiang_CBTBOX	[	114	]	=	0553		BaoXiang_CBTBOX_Rad	[	114	]	=	5 		BaoXiang_CBTBOX_Count	[	114	]	=	1
	BaoXiang_CBTBOX	[	115	]	=	0569		BaoXiang_CBTBOX_Rad	[	115	]	=	5 		BaoXiang_CBTBOX_Count	[	115	]	=	1
	BaoXiang_CBTBOX	[	116	]	=	0570		BaoXiang_CBTBOX_Rad	[	116	]	=	5 		BaoXiang_CBTBOX_Count	[	116	]	=	1
	BaoXiang_CBTBOX	[	117	]	=	0656		BaoXiang_CBTBOX_Rad	[	117	]	=	5 		BaoXiang_CBTBOX_Count	[	117	]	=	1
	BaoXiang_CBTBOX	[	118	]	=	0669		BaoXiang_CBTBOX_Rad	[	118	]	=	5 		BaoXiang_CBTBOX_Count	[	118	]	=	1
	BaoXiang_CBTBOX	[	119	]	=	0696		BaoXiang_CBTBOX_Rad	[	119	]	=	5 		BaoXiang_CBTBOX_Count	[	119	]	=	1
	BaoXiang_CBTBOX	[	120	]	=	0710		BaoXiang_CBTBOX_Rad	[	120	]	=	5 		BaoXiang_CBTBOX_Count	[	120	]	=	1
	BaoXiang_CBTBOX	[	121	]	=	0716		BaoXiang_CBTBOX_Rad	[	121	]	=	5 		BaoXiang_CBTBOX_Count	[	121	]	=	1
	BaoXiang_CBTBOX	[	122	]	=	0729		BaoXiang_CBTBOX_Rad	[	122	]	=	5 		BaoXiang_CBTBOX_Count	[	122	]	=	1
	BaoXiang_CBTBOX	[	123	]	=	0745		BaoXiang_CBTBOX_Rad	[	123	]	=	5 		BaoXiang_CBTBOX_Count	[	123	]	=	1
	BaoXiang_CBTBOX	[	124	]	=	0746		BaoXiang_CBTBOX_Rad	[	124	]	=	5 		BaoXiang_CBTBOX_Count	[	124	]	=	1
	BaoXiang_CBTBOX	[	125	]	=	3425		BaoXiang_CBTBOX_Rad	[	125	]	=	5 		BaoXiang_CBTBOX_Count	[	125	]	=	1
	BaoXiang_CBTBOX	[	126	]	=	3426		BaoXiang_CBTBOX_Rad	[	126	]	=	5 		BaoXiang_CBTBOX_Count	[	126	]	=	1
	BaoXiang_CBTBOX	[	127	]	=	3427		BaoXiang_CBTBOX_Rad	[	127	]	=	5 		BaoXiang_CBTBOX_Count	[	127	]	=	1
	BaoXiang_CBTBOX	[	128	]	=	3428		BaoXiang_CBTBOX_Rad	[	128	]	=	5 		BaoXiang_CBTBOX_Count	[	128	]	=	1
	BaoXiang_CBTBOX	[	129	]	=	3429		BaoXiang_CBTBOX_Rad	[	129	]	=	5 		BaoXiang_CBTBOX_Count	[	129	]	=	1
	BaoXiang_CBTBOX	[	130	]	=	3430		BaoXiang_CBTBOX_Rad	[	130	]	=	5 		BaoXiang_CBTBOX_Count	[	130	]	=	1
	BaoXiang_CBTBOX	[	131	]	=	3431		BaoXiang_CBTBOX_Rad	[	131	]	=	5 		BaoXiang_CBTBOX_Count	[	131	]	=	1
	BaoXiang_CBTBOX	[	132	]	=	3432		BaoXiang_CBTBOX_Rad	[	132	]	=	5 		BaoXiang_CBTBOX_Count	[	132	]	=	1
	BaoXiang_CBTBOX	[	133	]	=	3433		BaoXiang_CBTBOX_Rad	[	133	]	=	5 		BaoXiang_CBTBOX_Count	[	133	]	=	1
	BaoXiang_CBTBOX	[	134	]	=	3138		BaoXiang_CBTBOX_Rad	[	134	]	=	15 		BaoXiang_CBTBOX_Count	[	134	]	=	1
	BaoXiang_CBTBOX	[	135	]	=	3139		BaoXiang_CBTBOX_Rad	[	135	]	=	15 		BaoXiang_CBTBOX_Count	[	135	]	=	1
	BaoXiang_CBTBOX	[	136	]	=	3136		BaoXiang_CBTBOX_Rad	[	136	]	=	15 		BaoXiang_CBTBOX_Count	[	136	]	=	1
	BaoXiang_CBTBOX	[	137	]	=	3140		BaoXiang_CBTBOX_Rad	[	137	]	=	15 		BaoXiang_CBTBOX_Count	[	137	]	=	1
	BaoXiang_CBTBOX	[	138	]	=	3123		BaoXiang_CBTBOX_Rad	[	138	]	=	15 		BaoXiang_CBTBOX_Count	[	138	]	=	1
	BaoXiang_CBTBOX	[	139	]	=	3125		BaoXiang_CBTBOX_Rad	[	139	]	=	15 		BaoXiang_CBTBOX_Count	[	139	]	=	1
	BaoXiang_CBTBOX	[	140	]	=	3122		BaoXiang_CBTBOX_Rad	[	140	]	=	15 		BaoXiang_CBTBOX_Count	[	140	]	=	1
	BaoXiang_CBTBOX	[	141	]	=	3126		BaoXiang_CBTBOX_Rad	[	141	]	=	15 		BaoXiang_CBTBOX_Count	[	141	]	=	1
	BaoXiang_CBTBOX	[	142	]	=	3127		BaoXiang_CBTBOX_Rad	[	142	]	=	15 		BaoXiang_CBTBOX_Count	[	142	]	=	1
	BaoXiang_CBTBOX	[	143	]	=	3138		BaoXiang_CBTBOX_Rad	[	143	]	=	15 		BaoXiang_CBTBOX_Count	[	143	]	=	1
	BaoXiang_CBTBOX	[	144	]	=	3135		BaoXiang_CBTBOX_Rad	[	144	]	=	15 		BaoXiang_CBTBOX_Count	[	144	]	=	1
	BaoXiang_CBTBOX	[	145	]	=	3828		BaoXiang_CBTBOX_Rad	[	145	]	=	25 		BaoXiang_CBTBOX_Count	[	145	]	=	1
	BaoXiang_CBTBOX	[	146	]	=	3829		BaoXiang_CBTBOX_Rad	[	146	]	=	25 		BaoXiang_CBTBOX_Count	[	146	]	=	1
	BaoXiang_CBTBOX	[	147	]	=	3830		BaoXiang_CBTBOX_Rad	[	147	]	=	25 		BaoXiang_CBTBOX_Count	[	147	]	=	1
	BaoXiang_CBTBOX	[	148	]	=	3831		BaoXiang_CBTBOX_Rad	[	148	]	=	25 		BaoXiang_CBTBOX_Count	[	148	]	=	1
	BaoXiang_CBTBOX	[	149	]	=	3832		BaoXiang_CBTBOX_Rad	[	149	]	=	25 		BaoXiang_CBTBOX_Count	[	149	]	=	1
	BaoXiang_CBTBOX	[	150	]	=	3833		BaoXiang_CBTBOX_Rad	[	150	]	=	25 		BaoXiang_CBTBOX_Count	[	150	]	=	1
	BaoXiang_CBTBOX	[	151	]	=	3834		BaoXiang_CBTBOX_Rad	[	151	]	=	25 		BaoXiang_CBTBOX_Count	[	151	]	=	1
	BaoXiang_CBTBOX	[	152	]	=	3835		BaoXiang_CBTBOX_Rad	[	152	]	=	25 		BaoXiang_CBTBOX_Count	[	152	]	=	1
	BaoXiang_CBTBOX	[	153	]	=	3836		BaoXiang_CBTBOX_Rad	[	153	]	=	25 		BaoXiang_CBTBOX_Count	[	153	]	=	1
	BaoXiang_CBTBOX	[	154	]	=	3837		BaoXiang_CBTBOX_Rad	[	154	]	=	25 		BaoXiang_CBTBOX_Count	[	154	]	=	1
	BaoXiang_CBTBOX	[	155	]	=	3838		BaoXiang_CBTBOX_Rad	[	155	]	=	25 		BaoXiang_CBTBOX_Count	[	155	]	=	1
	BaoXiang_CBTBOX	[	156	]	=	3839		BaoXiang_CBTBOX_Rad	[	156	]	=	25 		BaoXiang_CBTBOX_Count	[	156	]	=	1
	BaoXiang_CBTBOX	[	157	]	=	3840		BaoXiang_CBTBOX_Rad	[	157	]	=	25 		BaoXiang_CBTBOX_Count	[	157	]	=	1
	BaoXiang_CBTBOX	[	158	]	=	3841		BaoXiang_CBTBOX_Rad	[	158	]	=	25 		BaoXiang_CBTBOX_Count	[	158	]	=	1
	BaoXiang_CBTBOX	[	159	]	=	3842		BaoXiang_CBTBOX_Rad	[	159	]	=	25 		BaoXiang_CBTBOX_Count	[	159	]	=	1
	BaoXiang_CBTBOX	[	160	]	=	3843		BaoXiang_CBTBOX_Rad	[	160	]	=	25 		BaoXiang_CBTBOX_Count	[	160	]	=	1
	BaoXiang_CBTBOX	[	161	]	=	0899		BaoXiang_CBTBOX_Rad	[	161	]	=	5 		BaoXiang_CBTBOX_Count	[	161	]	=	1
	BaoXiang_CBTBOX	[	162	]	=	0900		BaoXiang_CBTBOX_Rad	[	162	]	=	5 		BaoXiang_CBTBOX_Count	[	162	]	=	1
	BaoXiang_CBTBOX	[	163	]	=	0901		BaoXiang_CBTBOX_Rad	[	163	]	=	5 		BaoXiang_CBTBOX_Count	[	163	]	=	1
	BaoXiang_CBTBOX	[	164	]	=	0902		BaoXiang_CBTBOX_Rad	[	164	]	=	5 		BaoXiang_CBTBOX_Count	[	164	]	=	1
	BaoXiang_CBTBOX	[	165	]	=	0903		BaoXiang_CBTBOX_Rad	[	165	]	=	5 		BaoXiang_CBTBOX_Count	[	165	]	=	1
	BaoXiang_CBTBOX	[	166	]	=	3846		BaoXiang_CBTBOX_Rad	[	166	]	=	8 		BaoXiang_CBTBOX_Count	[	166	]	=	1
	BaoXiang_CBTBOX	[	167	]	=	3462		BaoXiang_CBTBOX_Rad	[	167	]	=	70 		BaoXiang_CBTBOX_Count	[	167	]	=	1
	BaoXiang_CBTBOX	[	168	]	=	0860		BaoXiang_CBTBOX_Rad	[	168	]	=	5 		BaoXiang_CBTBOX_Count	[	168	]	=	1
	BaoXiang_CBTBOX	[	169	]	=	0861		BaoXiang_CBTBOX_Rad	[	169	]	=	5 		BaoXiang_CBTBOX_Count	[	169	]	=	1
	BaoXiang_CBTBOX	[	170	]	=	0862		BaoXiang_CBTBOX_Rad	[	170	]	=	5 		BaoXiang_CBTBOX_Count	[	170	]	=	1
	BaoXiang_CBTBOX	[	171	]	=	0863		BaoXiang_CBTBOX_Rad	[	171	]	=	5 		BaoXiang_CBTBOX_Count	[	171	]	=	1
	BaoXiang_CBTBOX	[	172	]	=	3463		BaoXiang_CBTBOX_Rad	[	172	]	=	70 		BaoXiang_CBTBOX_Count	[	172	]	=	1
	BaoXiang_CBTBOX	[	173	]	=	3844		BaoXiang_CBTBOX_Rad	[	173	]	=	31 		BaoXiang_CBTBOX_Count	[	173	]	=	1
	BaoXiang_CBTBOX	[	174	]	=	3845		BaoXiang_CBTBOX_Rad	[	174	]	=	31 		BaoXiang_CBTBOX_Count	[	174	]	=	1
	BaoXiang_CBTBOX	[	175	]	=	0413		BaoXiang_CBTBOX_Rad	[	175	]	=	1 		BaoXiang_CBTBOX_Count	[	175	]	=	1
	BaoXiang_CBTBOX	[	176	]	=	0588		BaoXiang_CBTBOX_Rad	[	176	]	=	1 		BaoXiang_CBTBOX_Count	[	176	]	=	1
	BaoXiang_CBTBOX	[	177	]	=	0590		BaoXiang_CBTBOX_Rad	[	177	]	=	1 		BaoXiang_CBTBOX_Count	[	177	]	=	1
	BaoXiang_CBTBOX	[	178	]	=	0592		BaoXiang_CBTBOX_Rad	[	178	]	=	1 		BaoXiang_CBTBOX_Count	[	178	]	=	1
	BaoXiang_CBTBOX	[	179	]	=	0594		BaoXiang_CBTBOX_Rad	[	179	]	=	1 		BaoXiang_CBTBOX_Count	[	179	]	=	1
	BaoXiang_CBTBOX	[	180	]	=	0596		BaoXiang_CBTBOX_Rad	[	180	]	=	1 		BaoXiang_CBTBOX_Count	[	180	]	=	1
	BaoXiang_CBTBOX	[	181	]	=	0598		BaoXiang_CBTBOX_Rad	[	181	]	=	1 		BaoXiang_CBTBOX_Count	[	181	]	=	1
	BaoXiang_CBTBOX	[	182	]	=	0600		BaoXiang_CBTBOX_Rad	[	182	]	=	1 		BaoXiang_CBTBOX_Count	[	182	]	=	1
	BaoXiang_CBTBOX	[	183	]	=	0602		BaoXiang_CBTBOX_Rad	[	183	]	=	1 		BaoXiang_CBTBOX_Count	[	183	]	=	1
	BaoXiang_CBTBOX	[	184	]	=	0604		BaoXiang_CBTBOX_Rad	[	184	]	=	1 		BaoXiang_CBTBOX_Count	[	184	]	=	1
	BaoXiang_CBTBOX	[	185	]	=	0748		BaoXiang_CBTBOX_Rad	[	185	]	=	1 		BaoXiang_CBTBOX_Count	[	185	]	=	1
	BaoXiang_CBTBOX	[	186	]	=	0750		BaoXiang_CBTBOX_Rad	[	186	]	=	1 		BaoXiang_CBTBOX_Count	[	186	]	=	1
	BaoXiang_CBTBOX	[	187	]	=	0752		BaoXiang_CBTBOX_Rad	[	187	]	=	1 		BaoXiang_CBTBOX_Count	[	187	]	=	1
	BaoXiang_CBTBOX	[	188	]	=	0754		BaoXiang_CBTBOX_Rad	[	188	]	=	1 		BaoXiang_CBTBOX_Count	[	188	]	=	1
	BaoXiang_CBTBOX	[	189	]	=	0756		BaoXiang_CBTBOX_Rad	[	189	]	=	1 		BaoXiang_CBTBOX_Count	[	189	]	=	1
	BaoXiang_CBTBOX	[	190	]	=	0758		BaoXiang_CBTBOX_Rad	[	190	]	=	1 		BaoXiang_CBTBOX_Count	[	190	]	=	1
	BaoXiang_CBTBOX	[	191	]	=	0760		BaoXiang_CBTBOX_Rad	[	191	]	=	1 		BaoXiang_CBTBOX_Count	[	191	]	=	1
	BaoXiang_CBTBOX	[	192	]	=	0824		BaoXiang_CBTBOX_Rad	[	192	]	=	1 		BaoXiang_CBTBOX_Count	[	192	]	=	1
	BaoXiang_CBTBOX	[	193	]	=	0830		BaoXiang_CBTBOX_Rad	[	193	]	=	1 		BaoXiang_CBTBOX_Count	[	193	]	=	1
	BaoXiang_CBTBOX	[	194	]	=	2219		BaoXiang_CBTBOX_Rad	[	194	]	=	1 		BaoXiang_CBTBOX_Count	[	194	]	=	1
	BaoXiang_CBTBOX	[	195	]	=	2221		BaoXiang_CBTBOX_Rad	[	195	]	=	1 		BaoXiang_CBTBOX_Count	[	195	]	=	1
	BaoXiang_CBTBOX	[	196	]	=	2223		BaoXiang_CBTBOX_Rad	[	196	]	=	1 		BaoXiang_CBTBOX_Count	[	196	]	=	1
	BaoXiang_CBTBOX	[	197	]	=	0878		BaoXiang_CBTBOX_Rad	[	197	]	=	8 		BaoXiang_CBTBOX_Count	[	197	]	=	1
	BaoXiang_CBTBOX	[	198	]	=	0879		BaoXiang_CBTBOX_Rad	[	198	]	=	8 		BaoXiang_CBTBOX_Count	[	198	]	=	1
	BaoXiang_CBTBOX	[	199	]	=	0880		BaoXiang_CBTBOX_Rad	[	199	]	=	8 		BaoXiang_CBTBOX_Count	[	199	]	=	1
	BaoXiang_CBTBOX	[	200	]	=	0881		BaoXiang_CBTBOX_Rad	[	200	]	=	8 		BaoXiang_CBTBOX_Count	[	200	]	=	1
	BaoXiang_CBTBOX	[	201	]	=	0882		BaoXiang_CBTBOX_Rad	[	201	]	=	8 		BaoXiang_CBTBOX_Count	[	201	]	=	1
	BaoXiang_CBTBOX	[	202	]	=	0883		BaoXiang_CBTBOX_Rad	[	202	]	=	8 		BaoXiang_CBTBOX_Count	[	202	]	=	1
	BaoXiang_CBTBOX	[	203	]	=	0884		BaoXiang_CBTBOX_Rad	[	203	]	=	8 		BaoXiang_CBTBOX_Count	[	203	]	=	1
	BaoXiang_CBTBOX	[	204	]	=	0885		BaoXiang_CBTBOX_Rad	[	204	]	=	8 		BaoXiang_CBTBOX_Count	[	204	]	=	1
	BaoXiang_CBTBOX	[	205	]	=	0887		BaoXiang_CBTBOX_Rad	[	205	]	=	8 		BaoXiang_CBTBOX_Count	[	205	]	=	1
	BaoXiang_CBTBOX	[	206	]	=	0893		BaoXiang_CBTBOX_Rad	[	206	]	=	20 		BaoXiang_CBTBOX_Count	[	206	]	=	1
	BaoXiang_CBTBOX	[	207	]	=	0894		BaoXiang_CBTBOX_Rad	[	207	]	=	20 		BaoXiang_CBTBOX_Count	[	207	]	=	1
	BaoXiang_CBTBOX	[	208	]	=	0895		BaoXiang_CBTBOX_Rad	[	208	]	=	20 		BaoXiang_CBTBOX_Count	[	208	]	=	1
	BaoXiang_CBTBOX	[	209	]	=	0896		BaoXiang_CBTBOX_Rad	[	209	]	=	20 		BaoXiang_CBTBOX_Count	[	209	]	=	1
	BaoXiang_CBTBOX	[	210	]	=	0897		BaoXiang_CBTBOX_Rad	[	210	]	=	20 		BaoXiang_CBTBOX_Count	[	210	]	=	1
        BaoXiang_CBTBOX	[	211	]	=	0243		BaoXiang_CBTBOX_Rad	[	211	]	=	10 		BaoXiang_CBTBOX_Count	[	211	]	=	1
	BaoXiang_CBTBOX	[	212	]	=	0244		BaoXiang_CBTBOX_Rad	[	212	]	=	5 		BaoXiang_CBTBOX_Count	[	212	]	=	1
	BaoXiang_CBTBOX	[	213	]	=	0246		BaoXiang_CBTBOX_Rad	[	213	]	=	10 		BaoXiang_CBTBOX_Count	[	213	]	=	1
	BaoXiang_CBTBOX	[	214	]	=	0247		BaoXiang_CBTBOX_Rad	[	214	]	=	5 		BaoXiang_CBTBOX_Count	[	214	]	=	1
	BaoXiang_CBTBOX	[	215	]	=	0249		BaoXiang_CBTBOX_Rad	[	215	]	=	10 		BaoXiang_CBTBOX_Count	[	215	]	=	1
	BaoXiang_CBTBOX	[	216	]	=	0250		BaoXiang_CBTBOX_Rad	[	216	]	=	5 		BaoXiang_CBTBOX_Count	[	216	]	=	1
	BaoXiang_CBTBOX	[	217	]	=	0252		BaoXiang_CBTBOX_Rad	[	217	]	=	10 		BaoXiang_CBTBOX_Count	[	217	]	=	1
	BaoXiang_CBTBOX	[	218	]	=	0253		BaoXiang_CBTBOX_Rad	[	218	]	=	5 		BaoXiang_CBTBOX_Count	[	218	]	=	1
	BaoXiang_CBTBOX	[	219	]	=	0259		BaoXiang_CBTBOX_Rad	[	219	]	=	10 		BaoXiang_CBTBOX_Count	[	219	]	=	1
	BaoXiang_CBTBOX	[	220	]	=	0260		BaoXiang_CBTBOX_Rad	[	220	]	=	5 		BaoXiang_CBTBOX_Count	[	220	]	=	1
	BaoXiang_CBTBOX	[	221	]	=	0453		BaoXiang_CBTBOX_Rad	[	221	]	=	25 		BaoXiang_CBTBOX_Count	[	221	]	=	1
	BaoXiang_CBTBOX	[	222	]	=	0455		BaoXiang_CBTBOX_Rad	[	222	]	=	25 		BaoXiang_CBTBOX_Count	[	222	]	=	1



--	іиіи±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_SYBOX_Qua	=	5					BaoXiang_SYBOX_Mxcount	=	15										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BaoXiang_SYBOX	=	{}					BaoXiang_SYBOX_Rad	=	{}					BaoXiang_SYBOX_Count	=	{}			
	BaoXiang_SYBOX	[	1	]	=	0183		BaoXiang_SYBOX_Rad	[	1	]	=	1 		BaoXiang_SYBOX_Count	[	1	]	=	1
	BaoXiang_SYBOX	[	2	]	=	0184		BaoXiang_SYBOX_Rad	[	2	]	=	1 		BaoXiang_SYBOX_Count	[	2	]	=	1
	BaoXiang_SYBOX	[	3	]	=	0185		BaoXiang_SYBOX_Rad	[	3	]	=	1 		BaoXiang_SYBOX_Count	[	3	]	=	1
	BaoXiang_SYBOX	[	4	]	=	0186		BaoXiang_SYBOX_Rad	[	4	]	=	1 		BaoXiang_SYBOX_Count	[	4	]	=	1
	BaoXiang_SYBOX	[	5	]	=	0187		BaoXiang_SYBOX_Rad	[	5	]	=	1 		BaoXiang_SYBOX_Count	[	5	]	=	1
	BaoXiang_SYBOX	[	6	]	=	0188		BaoXiang_SYBOX_Rad	[	6	]	=	1 		BaoXiang_SYBOX_Count	[	6	]	=	1
	BaoXiang_SYBOX	[	7	]	=	0189		BaoXiang_SYBOX_Rad	[	7	]	=	1 		BaoXiang_SYBOX_Count	[	7	]	=	1
	BaoXiang_SYBOX	[	8	]	=	0190		BaoXiang_SYBOX_Rad	[	8	]	=	1 		BaoXiang_SYBOX_Count	[	8	]	=	1
	BaoXiang_SYBOX	[	9	]	=	0191		BaoXiang_SYBOX_Rad	[	9	]	=	1 		BaoXiang_SYBOX_Count	[	9	]	=	1
	BaoXiang_SYBOX	[	10	]	=	0199		BaoXiang_SYBOX_Rad	[	10	]	=	1 		BaoXiang_SYBOX_Count	[	10	]	=	1
	BaoXiang_SYBOX	[	11	]	=	3336		BaoXiang_SYBOX_Rad	[	11	]	=	15 		BaoXiang_SYBOX_Count	[	11	]	=	1
	BaoXiang_SYBOX	[	12	]	=	3885		BaoXiang_SYBOX_Rad	[	12	]	=	25 		BaoXiang_SYBOX_Count	[	12	]	=	1
	BaoXiang_SYBOX	[	13	]	=	3339		BaoXiang_SYBOX_Rad	[	13	]	=	100 		BaoXiang_SYBOX_Count	[	13	]	=	1
	BaoXiang_SYBOX	[	14	]	=	3340		BaoXiang_SYBOX_Rad	[	14	]	=	150 		BaoXiang_SYBOX_Count	[	14	]	=	1
	BaoXiang_SYBOX	[	15	]	=	3342		BaoXiang_SYBOX_Rad	[	15	]	=	200 		BaoXiang_SYBOX_Count	[	15	]	=	1


--	ѕ«БйАсЖ·єР																				
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ													
	BaoXiang_JingLingBOX_Qua	=	5					BaoXiang_JingLingBOX_Mxcount	=	10											
																					
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК													
	BaoXiang_JingLingBOX	=	{}					BaoXiang_JingLingBOX_Rad	=	{}					BaoXiang_JingLingBOX_Count	=	{}				
	BaoXiang_JingLingBOX	[	1	]	=	0183		BaoXiang_JingLingBOX_Rad	[	1	]	=	1		BaoXiang_JingLingBOX_Count	[	1	]	=	1	
	BaoXiang_JingLingBOX	[	2	]	=	0189		BaoXiang_JingLingBOX_Rad	[	2	]	=	1		BaoXiang_JingLingBOX_Count	[	2	]	=	1	
	BaoXiang_JingLingBOX	[	3	]	=	0185		BaoXiang_JingLingBOX_Rad	[	3	]	=	1		BaoXiang_JingLingBOX_Count	[	3	]	=	1	
	BaoXiang_JingLingBOX	[	4	]	=	0186		BaoXiang_JingLingBOX_Rad	[	4	]	=	1		BaoXiang_JingLingBOX_Count	[	4	]	=	1	
	BaoXiang_JingLingBOX	[	5	]	=	0187		BaoXiang_JingLingBOX_Rad	[	5	]	=	1		BaoXiang_JingLingBOX_Count	[	5	]	=	1	
	BaoXiang_JingLingBOX	[	6	]	=	0188		BaoXiang_JingLingBOX_Rad	[	6	]	=	1		BaoXiang_JingLingBOX_Count	[	6	]	=	1	
	BaoXiang_JingLingBOX	[	7	]	=	0184		BaoXiang_JingLingBOX_Rad	[	7	]	=	1		BaoXiang_JingLingBOX_Count	[	7	]	=	1	
	BaoXiang_JingLingBOX	[	8	]	=	0190		BaoXiang_JingLingBOX_Rad	[	8	]	=	1		BaoXiang_JingLingBOX_Count	[	8	]	=	1	
	BaoXiang_JingLingBOX	[	9	]	=	0191		BaoXiang_JingLingBOX_Rad	[	9	]	=	1		BaoXiang_JingLingBOX_Count	[	9	]	=	1	
	BaoXiang_JingLingBOX	[	10	]	=	0680		BaoXiang_JingLingBOX_Rad	[	10	]	=	1		BaoXiang_JingLingBOX_Count	[	10	]	=	1	


--	·зАЧ±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BoxXiang_FLeiBOX_Qua	=	5					BoxXiang_FLeiBOX_Mxcount	=	12										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BoxXiang_FLeiBOX	=	{}	 	 	 		BoxXiang_FLeiBOX_Rad	=	{}	 	 			BoxXiang_FLeiBOX_Count	=	{}			
	BoxXiang_FLeiBOX	[	1	]	=	5001		BoxXiang_FLeiBOX_Rad	[	1	]	=	1		BoxXiang_FLeiBOX_Count	[	1	]	=	1
	BoxXiang_FLeiBOX	[	2	]	=	5002		BoxXiang_FLeiBOX_Rad	[	2	]	=	1		BoxXiang_FLeiBOX_Count	[	2	]	=	1
	BoxXiang_FLeiBOX	[	3	]	=	5003		BoxXiang_FLeiBOX_Rad	[	3	]	=	1		BoxXiang_FLeiBOX_Count	[	3	]	=	1
	BoxXiang_FLeiBOX	[	4	]	=	5004		BoxXiang_FLeiBOX_Rad	[	4	]	=	1		BoxXiang_FLeiBOX_Count	[	4	]	=	1
	BoxXiang_FLeiBOX	[	5	]	=	5005		BoxXiang_FLeiBOX_Rad	[	5	]	=	1		BoxXiang_FLeiBOX_Count	[	5	]	=	1
	BoxXiang_FLeiBOX	[	6	]	=	5006		BoxXiang_FLeiBOX_Rad	[	6	]	=	1		BoxXiang_FLeiBOX_Count	[	6	]	=	1
	BoxXiang_FLeiBOX	[	7	]	=	5007		BoxXiang_FLeiBOX_Rad	[	7	]	=	1		BoxXiang_FLeiBOX_Count	[	7	]	=	1
	BoxXiang_FLeiBOX	[	8	]	=	5008		BoxXiang_FLeiBOX_Rad	[	8	]	=	1		BoxXiang_FLeiBOX_Count	[	8	]	=	1
	BoxXiang_FLeiBOX	[	9	]	=	5009		BoxXiang_FLeiBOX_Rad	[	9	]	=	1		BoxXiang_FLeiBOX_Count	[	9	]	=	1
	BoxXiang_FLeiBOX	[	10	]	=	5010		BoxXiang_FLeiBOX_Rad	[	10	]	=	1		BoxXiang_FLeiBOX_Count	[	10	]	=	1
	BoxXiang_FLeiBOX	[	11	]	=	5011		BoxXiang_FLeiBOX_Rad	[	11	]	=	1		BoxXiang_FLeiBOX_Count	[	11	]	=	1
	BoxXiang_FLeiBOX	[	12	]	=	5012		BoxXiang_FLeiBOX_Rad	[	12	]	=	1		BoxXiang_FLeiBOX_Count	[	12	]	=	1

																				
--	Т»ФЄєГФЛ°ь																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BoxXiang_YiYuanBOX_Qua	=	5					BoxXiang_YiYuanBOX_Mxcount	=	32										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BoxXiang_YiYuanBOX	=	{}					BoxXiang_YiYuanBOX_Rad	=	{}					BoxXiang_YiYuanBOX_Count	=	{}			
	BoxXiang_YiYuanBOX	[	1	]	=	3098		BoxXiang_YiYuanBOX_Rad	[	1	]	=	150 		BoxXiang_YiYuanBOX_Count	[	1	]	=	4
	BoxXiang_YiYuanBOX	[	2	]	=	3054		BoxXiang_YiYuanBOX_Rad	[	2	]	=	150 		BoxXiang_YiYuanBOX_Count	[	2	]	=	4
	BoxXiang_YiYuanBOX	[	3	]	=	3049		BoxXiang_YiYuanBOX_Rad	[	3	]	=	150 		BoxXiang_YiYuanBOX_Count	[	3	]	=	4
	BoxXiang_YiYuanBOX	[	4	]	=	3048		BoxXiang_YiYuanBOX_Rad	[	4	]	=	150 		BoxXiang_YiYuanBOX_Count	[	4	]	=	4
	BoxXiang_YiYuanBOX	[	5	]	=	3051		BoxXiang_YiYuanBOX_Rad	[	5	]	=	150 		BoxXiang_YiYuanBOX_Count	[	5	]	=	4
	BoxXiang_YiYuanBOX	[	6	]	=	3076		BoxXiang_YiYuanBOX_Rad	[	6	]	=	150 		BoxXiang_YiYuanBOX_Count	[	6	]	=	4
	BoxXiang_YiYuanBOX	[	7	]	=	3106		BoxXiang_YiYuanBOX_Rad	[	7	]	=	150 		BoxXiang_YiYuanBOX_Count	[	7	]	=	4
	BoxXiang_YiYuanBOX	[	8	]	=	3050		BoxXiang_YiYuanBOX_Rad	[	8	]	=	180 		BoxXiang_YiYuanBOX_Count	[	8	]	=	4
	BoxXiang_YiYuanBOX	[	9	]	=	227		BoxXiang_YiYuanBOX_Rad	[	9	]	=	180 		BoxXiang_YiYuanBOX_Count	[	9	]	=	4
	BoxXiang_YiYuanBOX	[	10	]	=	3096		BoxXiang_YiYuanBOX_Rad	[	10	]	=	180 		BoxXiang_YiYuanBOX_Count	[	10	]	=	4
	BoxXiang_YiYuanBOX	[	11	]	=	3300		BoxXiang_YiYuanBOX_Rad	[	11	]	=	180 		BoxXiang_YiYuanBOX_Count	[	11	]	=	4
	BoxXiang_YiYuanBOX	[	12	]	=	3301		BoxXiang_YiYuanBOX_Rad	[	12	]	=	180 		BoxXiang_YiYuanBOX_Count	[	12	]	=	4
	BoxXiang_YiYuanBOX	[	13	]	=	3114		BoxXiang_YiYuanBOX_Rad	[	13	]	=	180 		BoxXiang_YiYuanBOX_Count	[	13	]	=	2
	BoxXiang_YiYuanBOX	[	14	]	=	3094		BoxXiang_YiYuanBOX_Rad	[	14	]	=	180 		BoxXiang_YiYuanBOX_Count	[	14	]	=	2
	BoxXiang_YiYuanBOX	[	15	]	=	3909		BoxXiang_YiYuanBOX_Rad	[	15	]	=	180 		BoxXiang_YiYuanBOX_Count	[	15	]	=	2
	BoxXiang_YiYuanBOX	[	16	]	=	222		BoxXiang_YiYuanBOX_Rad	[	16	]	=	180 		BoxXiang_YiYuanBOX_Count	[	16	]	=	2
	BoxXiang_YiYuanBOX	[	17	]	=	225		BoxXiang_YiYuanBOX_Rad	[	17	]	=	180 		BoxXiang_YiYuanBOX_Count	[	17	]	=	2
	BoxXiang_YiYuanBOX	[	18	]	=	3336		BoxXiang_YiYuanBOX_Rad	[	18	]	=	180 		BoxXiang_YiYuanBOX_Count	[	18	]	=	1
	BoxXiang_YiYuanBOX	[	19	]	=	3885		BoxXiang_YiYuanBOX_Rad	[	19	]	=	50 		BoxXiang_YiYuanBOX_Count	[	19	]	=	1
	BoxXiang_YiYuanBOX	[	20	]	=	430		BoxXiang_YiYuanBOX_Rad	[	20	]	=	50 		BoxXiang_YiYuanBOX_Count	[	20	]	=	1
	BoxXiang_YiYuanBOX	[	21	]	=	3886		BoxXiang_YiYuanBOX_Rad	[	21	]	=	50 		BoxXiang_YiYuanBOX_Count	[	21	]	=	1
	BoxXiang_YiYuanBOX	[	22	]	=	3113		BoxXiang_YiYuanBOX_Rad	[	22	]	=	50 		BoxXiang_YiYuanBOX_Count	[	22	]	=	1
	BoxXiang_YiYuanBOX	[	23	]	=	3111		BoxXiang_YiYuanBOX_Rad	[	23	]	=	50 		BoxXiang_YiYuanBOX_Count	[	23	]	=	1
	BoxXiang_YiYuanBOX	[	24	]	=	3093		BoxXiang_YiYuanBOX_Rad	[	24	]	=	50 		BoxXiang_YiYuanBOX_Count	[	24	]	=	1
	BoxXiang_YiYuanBOX	[	25	]	=	3090		BoxXiang_YiYuanBOX_Rad	[	25	]	=	50 		BoxXiang_YiYuanBOX_Count	[	25	]	=	1
	BoxXiang_YiYuanBOX	[	26	]	=	0860		BoxXiang_YiYuanBOX_Rad	[	26	]	=	10 		BoxXiang_YiYuanBOX_Count	[	26	]	=	1
	BoxXiang_YiYuanBOX	[	27	]	=	0861		BoxXiang_YiYuanBOX_Rad	[	27	]	=	10 		BoxXiang_YiYuanBOX_Count	[	27	]	=	1
	BoxXiang_YiYuanBOX	[	28	]	=	0862		BoxXiang_YiYuanBOX_Rad	[	28	]	=	10 		BoxXiang_YiYuanBOX_Count	[	28	]	=	1
	BoxXiang_YiYuanBOX	[	29	]	=	0863		BoxXiang_YiYuanBOX_Rad	[	29	]	=	10 		BoxXiang_YiYuanBOX_Count	[	29	]	=	1
	BoxXiang_YiYuanBOX	[	30	]	=	179		BoxXiang_YiYuanBOX_Rad	[	30	]	=	1 		BoxXiang_YiYuanBOX_Count	[	30	]	=	1
	BoxXiang_YiYuanBOX	[	31	]	=	3084		BoxXiang_YiYuanBOX_Rad	[	31	]	=	1 		BoxXiang_YiYuanBOX_Count	[	31	]	=	1
	BoxXiang_YiYuanBOX	[	32	]	=	3085		BoxXiang_YiYuanBOX_Rad	[	32	]	=	1 		BoxXiang_YiYuanBOX_Count	[	32	]	=	1


--	99±¬ХЁ°ь																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BoxXiang_baozhabao_Qua	=	5					BoxXiang_baozhabao_Mxcount	=	35										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BoxXiang_BaoZhaBOX	=	{}					BoxXiang_BaoZhaBOX_Rad	=	{}					BoxXiang_BaoZhaBOX_Count	=	{}			
	BoxXiang_BaoZhaBOX	[	1	]	=	3077		BoxXiang_BaoZhaBOX_Rad	[	1	]	=	566 		BoxXiang_BaoZhaBOX_Count	[	1	]	=	10
	BoxXiang_BaoZhaBOX	[	2	]	=	3094		BoxXiang_BaoZhaBOX_Rad	[	2	]	=	566 		BoxXiang_BaoZhaBOX_Count	[	2	]	=	2
	BoxXiang_BaoZhaBOX	[	3	]	=	3096		BoxXiang_BaoZhaBOX_Rad	[	3	]	=	566 		BoxXiang_BaoZhaBOX_Count	[	3	]	=	4
	BoxXiang_BaoZhaBOX	[	4	]	=	3107		BoxXiang_BaoZhaBOX_Rad	[	4	]	=	566 		BoxXiang_BaoZhaBOX_Count	[	4	]	=	3
	BoxXiang_BaoZhaBOX	[	5	]	=	4272		BoxXiang_BaoZhaBOX_Rad	[	5	]	=	566 		BoxXiang_BaoZhaBOX_Count	[	5	]	=	8
	BoxXiang_BaoZhaBOX	[	6	]	=	4273		BoxXiang_BaoZhaBOX_Rad	[	6	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	6	]	=	8
	BoxXiang_BaoZhaBOX	[	7	]	=	4270		BoxXiang_BaoZhaBOX_Rad	[	7	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	7	]	=	8
	BoxXiang_BaoZhaBOX	[	8	]	=	4271		BoxXiang_BaoZhaBOX_Rad	[	8	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	8	]	=	8
	BoxXiang_BaoZhaBOX	[	9	]	=	227		BoxXiang_BaoZhaBOX_Rad	[	9	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	9	]	=	4
	BoxXiang_BaoZhaBOX	[	10	]	=	0905		BoxXiang_BaoZhaBOX_Rad	[	10	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	10	]	=	1
	BoxXiang_BaoZhaBOX	[	11	]	=	3047		BoxXiang_BaoZhaBOX_Rad	[	11	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	11	]	=	1
	BoxXiang_BaoZhaBOX	[	12	]	=	0932		BoxXiang_BaoZhaBOX_Rad	[	12	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	12	]	=	1
	BoxXiang_BaoZhaBOX	[	13	]	=	0931		BoxXiang_BaoZhaBOX_Rad	[	13	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	13	]	=	1
	BoxXiang_BaoZhaBOX	[	14	]	=	0933		BoxXiang_BaoZhaBOX_Rad	[	14	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	14	]	=	1
	BoxXiang_BaoZhaBOX	[	15	]	=	0934		BoxXiang_BaoZhaBOX_Rad	[	15	]	=	567 		BoxXiang_BaoZhaBOX_Count	[	15	]	=	1
	BoxXiang_BaoZhaBOX	[	16	]	=	3111		BoxXiang_BaoZhaBOX_Rad	[	16	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	16	]	=	1
	BoxXiang_BaoZhaBOX	[	17	]	=	3110		BoxXiang_BaoZhaBOX_Rad	[	17	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	17	]	=	1
	BoxXiang_BaoZhaBOX	[	18	]	=	3112		BoxXiang_BaoZhaBOX_Rad	[	18	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	18	]	=	1
	BoxXiang_BaoZhaBOX	[	19	]	=	3886		BoxXiang_BaoZhaBOX_Rad	[	19	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	19	]	=	1
	BoxXiang_BaoZhaBOX	[	20	]	=	3093		BoxXiang_BaoZhaBOX_Rad	[	20	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	20	]	=	1
	BoxXiang_BaoZhaBOX	[	21	]	=	3090		BoxXiang_BaoZhaBOX_Rad	[	21	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	21	]	=	1
	BoxXiang_BaoZhaBOX	[	22	]	=	430		BoxXiang_BaoZhaBOX_Rad	[	22	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	22	]	=	1
	BoxXiang_BaoZhaBOX	[	23	]	=	179		BoxXiang_BaoZhaBOX_Rad	[	23	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	23	]	=	1
	BoxXiang_BaoZhaBOX	[	24	]	=	3084		BoxXiang_BaoZhaBOX_Rad	[	24	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	24	]	=	1
	BoxXiang_BaoZhaBOX	[	25	]	=	3085		BoxXiang_BaoZhaBOX_Rad	[	25	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	25	]	=	1
	BoxXiang_BaoZhaBOX	[	26	]	=	0244		BoxXiang_BaoZhaBOX_Rad	[	26	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	26	]	=	1
	BoxXiang_BaoZhaBOX	[	27	]	=	0250		BoxXiang_BaoZhaBOX_Rad	[	27	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	27	]	=	1
	BoxXiang_BaoZhaBOX	[	28	]	=	0253		BoxXiang_BaoZhaBOX_Rad	[	28	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	28	]	=	1
	BoxXiang_BaoZhaBOX	[	29	]	=	0260		BoxXiang_BaoZhaBOX_Rad	[	29	]	=	100 		BoxXiang_BaoZhaBOX_Count	[	29	]	=	1
	BoxXiang_BaoZhaBOX	[	30	]	=	3458		BoxXiang_BaoZhaBOX_Rad	[	30	]	=	22 		BoxXiang_BaoZhaBOX_Count	[	30	]	=	1
	BoxXiang_BaoZhaBOX	[	31	]	=	3458		BoxXiang_BaoZhaBOX_Rad	[	31	]	=	23 		BoxXiang_BaoZhaBOX_Count	[	31	]	=	1
	BoxXiang_BaoZhaBOX	[	32	]	=	3458		BoxXiang_BaoZhaBOX_Rad	[	32	]	=	22 		BoxXiang_BaoZhaBOX_Count	[	32	]	=	1
	BoxXiang_BaoZhaBOX	[	33	]	=	3458		BoxXiang_BaoZhaBOX_Rad	[	33	]	=	22 		BoxXiang_BaoZhaBOX_Count	[	33	]	=	1
	BoxXiang_BaoZhaBOX	[	34	]	=	0247		BoxXiang_BaoZhaBOX_Rad	[	34	]	=	11 		BoxXiang_BaoZhaBOX_Count	[	34	]	=	1
	BoxXiang_BaoZhaBOX	[	35	]	=	271		BoxXiang_BaoZhaBOX_Rad	[	35	]	=	5 		BoxXiang_BaoZhaBOX_Count	[	35	]	=	1


--	єЈµБНхЦЬЛк°Щ±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BoxXiang_ZhouSui_Qua	=	5					BoxXiang_ZhouSui_Mxcount	=	16										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BoxXiang_ZhousSuiBOX	=	{}					BoxXiang_ZhousSuiBOX_Rad	=	{}					BoxXiang_ZhousSuiBOX_Count	=	{}			
	BoxXiang_ZhousSuiBOX	[	1	]	=	0853		BoxXiang_ZhousSuiBOX_Rad	[	1	]	=	2 		BoxXiang_ZhousSuiBOX_Count	[	1	]	=	1
	BoxXiang_ZhousSuiBOX	[	2	]	=	3047		BoxXiang_ZhousSuiBOX_Rad	[	2	]	=	5 		BoxXiang_ZhousSuiBOX_Count	[	2	]	=	5
	BoxXiang_ZhousSuiBOX	[	3	]	=	3112		BoxXiang_ZhousSuiBOX_Rad	[	3	]	=	5 		BoxXiang_ZhousSuiBOX_Count	[	3	]	=	1
	BoxXiang_ZhousSuiBOX	[	4	]	=	3110		BoxXiang_ZhousSuiBOX_Rad	[	4	]	=	5 		BoxXiang_ZhousSuiBOX_Count	[	4	]	=	1
	BoxXiang_ZhousSuiBOX	[	5	]	=	3111		BoxXiang_ZhousSuiBOX_Rad	[	5	]	=	5 		BoxXiang_ZhousSuiBOX_Count	[	5	]	=	1
	BoxXiang_ZhousSuiBOX	[	6	]	=	3113		BoxXiang_ZhousSuiBOX_Rad	[	6	]	=	5 		BoxXiang_ZhousSuiBOX_Count	[	6	]	=	1
	BoxXiang_ZhousSuiBOX	[	7	]	=	3109		BoxXiang_ZhousSuiBOX_Rad	[	7	]	=	5 		BoxXiang_ZhousSuiBOX_Count	[	7	]	=	1
	BoxXiang_ZhousSuiBOX	[	8	]	=	3092		BoxXiang_ZhousSuiBOX_Rad	[	8	]	=	5 		BoxXiang_ZhousSuiBOX_Count	[	8	]	=	1
	BoxXiang_ZhousSuiBOX	[	9	]	=	3089		BoxXiang_ZhousSuiBOX_Rad	[	9	]	=	5 		BoxXiang_ZhousSuiBOX_Count	[	9	]	=	1
	BoxXiang_ZhousSuiBOX	[	10	]	=	430		BoxXiang_ZhousSuiBOX_Rad	[	10	]	=	5 		BoxXiang_ZhousSuiBOX_Count	[	10	]	=	1
	BoxXiang_ZhousSuiBOX	[	11	]	=	4273		BoxXiang_ZhousSuiBOX_Rad	[	11	]	=	9 		BoxXiang_ZhousSuiBOX_Count	[	11	]	=	20
	BoxXiang_ZhousSuiBOX	[	12	]	=	4271		BoxXiang_ZhousSuiBOX_Rad	[	12	]	=	9 		BoxXiang_ZhousSuiBOX_Count	[	12	]	=	20
	BoxXiang_ZhousSuiBOX	[	13	]	=	3096		BoxXiang_ZhousSuiBOX_Rad	[	13	]	=	9 		BoxXiang_ZhousSuiBOX_Count	[	13	]	=	10
	BoxXiang_ZhousSuiBOX	[	14	]	=	0227		BoxXiang_ZhousSuiBOX_Rad	[	14	]	=	9 		BoxXiang_ZhousSuiBOX_Count	[	14	]	=	10
	BoxXiang_ZhousSuiBOX	[	15	]	=	0937		BoxXiang_ZhousSuiBOX_Rad	[	15	]	=	9 		BoxXiang_ZhousSuiBOX_Count	[	15	]	=	1
	BoxXiang_ZhousSuiBOX	[	16	]	=	3094		BoxXiang_ZhousSuiBOX_Rad	[	16	]	=	8 		BoxXiang_ZhousSuiBOX_Count	[	16	]	=	10




--	јУАХ±ИІШ±¦Нј±¦Пд																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_JLBCBTBOX_Qua	=	5	 				BaoXiang_JLBCBTBOX_Mxcount	=	183										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BaoXiang_JLBCBTBOX	=	{}					BaoXiang_JLBCBTBOX_Rad	=	{}					BaoXiang_JLBCBTBOX_Count	=	{}			
	BaoXiang_JLBCBTBOX	[	1	]	=	7622		BaoXiang_JLBCBTBOX_Rad	[	1	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	1	]	=	1
	BaoXiang_JLBCBTBOX	[	2	]	=	7623		BaoXiang_JLBCBTBOX_Rad	[	2	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	2	]	=	1
	BaoXiang_JLBCBTBOX	[	3	]	=	7620		BaoXiang_JLBCBTBOX_Rad	[	3	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	3	]	=	1
	BaoXiang_JLBCBTBOX	[	4	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	4	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	4	]	=	1
	BaoXiang_JLBCBTBOX	[	5	]	=	7484		BaoXiang_JLBCBTBOX_Rad	[	5	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	5	]	=	1
	BaoXiang_JLBCBTBOX	[	6	]	=	7502		BaoXiang_JLBCBTBOX_Rad	[	6	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	6	]	=	1
	BaoXiang_JLBCBTBOX	[	7	]	=	7489		BaoXiang_JLBCBTBOX_Rad	[	7	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	7	]	=	1
	BaoXiang_JLBCBTBOX	[	8	]	=	7624		BaoXiang_JLBCBTBOX_Rad	[	8	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	8	]	=	1
	BaoXiang_JLBCBTBOX	[	9	]	=	7477		BaoXiang_JLBCBTBOX_Rad	[	9	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	9	]	=	1
	BaoXiang_JLBCBTBOX	[	10	]	=	7478		BaoXiang_JLBCBTBOX_Rad	[	10	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	10	]	=	1
	BaoXiang_JLBCBTBOX	[	11	]	=	7479		BaoXiang_JLBCBTBOX_Rad	[	11	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	11	]	=	1
	BaoXiang_JLBCBTBOX	[	12	]	=	7480		BaoXiang_JLBCBTBOX_Rad	[	12	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	12	]	=	1
	BaoXiang_JLBCBTBOX	[	13	]	=	7481		BaoXiang_JLBCBTBOX_Rad	[	13	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	13	]	=	1
	BaoXiang_JLBCBTBOX	[	14	]	=	7483		BaoXiang_JLBCBTBOX_Rad	[	14	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	14	]	=	1
	BaoXiang_JLBCBTBOX	[	15	]	=	7485		BaoXiang_JLBCBTBOX_Rad	[	15	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	15	]	=	1
	BaoXiang_JLBCBTBOX	[	16	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	16	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	16	]	=	1
	BaoXiang_JLBCBTBOX	[	17	]	=	7491		BaoXiang_JLBCBTBOX_Rad	[	17	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	17	]	=	1
	BaoXiang_JLBCBTBOX	[	18	]	=	7492		BaoXiang_JLBCBTBOX_Rad	[	18	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	18	]	=	1
	BaoXiang_JLBCBTBOX	[	19	]	=	7493		BaoXiang_JLBCBTBOX_Rad	[	19	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	19	]	=	1
	BaoXiang_JLBCBTBOX	[	20	]	=	7494		BaoXiang_JLBCBTBOX_Rad	[	20	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	20	]	=	1
	BaoXiang_JLBCBTBOX	[	21	]	=	7510		BaoXiang_JLBCBTBOX_Rad	[	21	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	21	]	=	1
	BaoXiang_JLBCBTBOX	[	22	]	=	1145		BaoXiang_JLBCBTBOX_Rad	[	22	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	22	]	=	1
	BaoXiang_JLBCBTBOX	[	23	]	=	2729		BaoXiang_JLBCBTBOX_Rad	[	23	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	23	]	=	1
	BaoXiang_JLBCBTBOX	[	24	]	=	7450		BaoXiang_JLBCBTBOX_Rad	[	24	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	24	]	=	1
	BaoXiang_JLBCBTBOX	[	25	]	=	7467		BaoXiang_JLBCBTBOX_Rad	[	25	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	25	]	=	1
	BaoXiang_JLBCBTBOX	[	26	]	=	7456		BaoXiang_JLBCBTBOX_Rad	[	26	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	26	]	=	1
	BaoXiang_JLBCBTBOX	[	27	]	=	7444		BaoXiang_JLBCBTBOX_Rad	[	27	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	27	]	=	1
	BaoXiang_JLBCBTBOX	[	28	]	=	7483		BaoXiang_JLBCBTBOX_Rad	[	28	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	28	]	=	1
	BaoXiang_JLBCBTBOX	[	29	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	29	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	29	]	=	1
	BaoXiang_JLBCBTBOX	[	30	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	30	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	30	]	=	1
	BaoXiang_JLBCBTBOX	[	31	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	31	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	31	]	=	1
	BaoXiang_JLBCBTBOX	[	32	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	32	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	32	]	=	1
	BaoXiang_JLBCBTBOX	[	33	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	33	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	33	]	=	1
	BaoXiang_JLBCBTBOX	[	34	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	34	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	34	]	=	1
	BaoXiang_JLBCBTBOX	[	35	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	35	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	35	]	=	1
	BaoXiang_JLBCBTBOX	[	36	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	36	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	36	]	=	1
	BaoXiang_JLBCBTBOX	[	37	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	37	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	37	]	=	1
	BaoXiang_JLBCBTBOX	[	38	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	38	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	38	]	=	1
	BaoXiang_JLBCBTBOX	[	39	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	39	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	39	]	=	1
	BaoXiang_JLBCBTBOX	[	40	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	40	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	40	]	=	1
	BaoXiang_JLBCBTBOX	[	41	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	41	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	41	]	=	1
	BaoXiang_JLBCBTBOX	[	42	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	42	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	42	]	=	1
	BaoXiang_JLBCBTBOX	[	43	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	43	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	43	]	=	1
	BaoXiang_JLBCBTBOX	[	44	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	44	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	44	]	=	1
	BaoXiang_JLBCBTBOX	[	45	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	45	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	45	]	=	1
	BaoXiang_JLBCBTBOX	[	46	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	46	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	46	]	=	1
	BaoXiang_JLBCBTBOX	[	47	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	47	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	47	]	=	1
	BaoXiang_JLBCBTBOX	[	48	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	48	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	48	]	=	1
	BaoXiang_JLBCBTBOX	[	49	]	=	7622		BaoXiang_JLBCBTBOX_Rad	[	49	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	49	]	=	1
	BaoXiang_JLBCBTBOX	[	50	]	=	7623		BaoXiang_JLBCBTBOX_Rad	[	50	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	50	]	=	1
	BaoXiang_JLBCBTBOX	[	51	]	=	7620		BaoXiang_JLBCBTBOX_Rad	[	51	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	51	]	=	1
	BaoXiang_JLBCBTBOX	[	52	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	52	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	52	]	=	1
	BaoXiang_JLBCBTBOX	[	53	]	=	7484		BaoXiang_JLBCBTBOX_Rad	[	53	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	53	]	=	1
	BaoXiang_JLBCBTBOX	[	54	]	=	7502		BaoXiang_JLBCBTBOX_Rad	[	54	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	54	]	=	1
	BaoXiang_JLBCBTBOX	[	55	]	=	7489		BaoXiang_JLBCBTBOX_Rad	[	55	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	55	]	=	1
	BaoXiang_JLBCBTBOX	[	56	]	=	7624		BaoXiang_JLBCBTBOX_Rad	[	56	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	56	]	=	1
	BaoXiang_JLBCBTBOX	[	57	]	=	7477		BaoXiang_JLBCBTBOX_Rad	[	57	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	57	]	=	1
	BaoXiang_JLBCBTBOX	[	58	]	=	7478		BaoXiang_JLBCBTBOX_Rad	[	58	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	58	]	=	1
	BaoXiang_JLBCBTBOX	[	59	]	=	7479		BaoXiang_JLBCBTBOX_Rad	[	59	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	59	]	=	1
	BaoXiang_JLBCBTBOX	[	60	]	=	7480		BaoXiang_JLBCBTBOX_Rad	[	60	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	60	]	=	1
	BaoXiang_JLBCBTBOX	[	61	]	=	7481		BaoXiang_JLBCBTBOX_Rad	[	61	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	61	]	=	1
	BaoXiang_JLBCBTBOX	[	62	]	=	7483		BaoXiang_JLBCBTBOX_Rad	[	62	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	62	]	=	1
	BaoXiang_JLBCBTBOX	[	63	]	=	7485		BaoXiang_JLBCBTBOX_Rad	[	63	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	63	]	=	1
	BaoXiang_JLBCBTBOX	[	64	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	64	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	64	]	=	1
	BaoXiang_JLBCBTBOX	[	65	]	=	7491		BaoXiang_JLBCBTBOX_Rad	[	65	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	65	]	=	1
	BaoXiang_JLBCBTBOX	[	66	]	=	7492		BaoXiang_JLBCBTBOX_Rad	[	66	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	66	]	=	1
	BaoXiang_JLBCBTBOX	[	67	]	=	7493		BaoXiang_JLBCBTBOX_Rad	[	67	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	67	]	=	1
	BaoXiang_JLBCBTBOX	[	68	]	=	7494		BaoXiang_JLBCBTBOX_Rad	[	68	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	68	]	=	1
	BaoXiang_JLBCBTBOX	[	69	]	=	7510		BaoXiang_JLBCBTBOX_Rad	[	69	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	69	]	=	1
	BaoXiang_JLBCBTBOX	[	70	]	=	1145		BaoXiang_JLBCBTBOX_Rad	[	70	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	70	]	=	1
	BaoXiang_JLBCBTBOX	[	71	]	=	2729		BaoXiang_JLBCBTBOX_Rad	[	71	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	71	]	=	1
	BaoXiang_JLBCBTBOX	[	72	]	=	7450		BaoXiang_JLBCBTBOX_Rad	[	72	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	72	]	=	1
	BaoXiang_JLBCBTBOX	[	73	]	=	7467		BaoXiang_JLBCBTBOX_Rad	[	73	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	73	]	=	1
	BaoXiang_JLBCBTBOX	[	74	]	=	7456		BaoXiang_JLBCBTBOX_Rad	[	74	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	74	]	=	1
	BaoXiang_JLBCBTBOX	[	75	]	=	7444		BaoXiang_JLBCBTBOX_Rad	[	75	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	75	]	=	1
	BaoXiang_JLBCBTBOX	[	76	]	=	7510		BaoXiang_JLBCBTBOX_Rad	[	76	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	76	]	=	1
	BaoXiang_JLBCBTBOX	[	77	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	78	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	78	]	=	1
	BaoXiang_JLBCBTBOX	[	79	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	79	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	79	]	=	1
	BaoXiang_JLBCBTBOX	[	80	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	80	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	80	]	=	1
	BaoXiang_JLBCBTBOX	[	81	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	81	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	81	]	=	1
	BaoXiang_JLBCBTBOX	[	82	]	=	7622		BaoXiang_JLBCBTBOX_Rad	[	82	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	82	]	=	1
	BaoXiang_JLBCBTBOX	[	83	]	=	7623		BaoXiang_JLBCBTBOX_Rad	[	83	]	=	50 		BaoXiang_JLBCBTBOX_Count	[	83	]	=	1
	BaoXiang_JLBCBTBOX	[	84	]	=	7620		BaoXiang_JLBCBTBOX_Rad	[	84	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	84	]	=	1
	BaoXiang_JLBCBTBOX	[	85	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	85	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	85	]	=	1
	BaoXiang_JLBCBTBOX	[	86	]	=	7484		BaoXiang_JLBCBTBOX_Rad	[	86	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	86	]	=	1
	BaoXiang_JLBCBTBOX	[	87	]	=	7502		BaoXiang_JLBCBTBOX_Rad	[	87	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	87	]	=	1
	BaoXiang_JLBCBTBOX	[	88	]	=	7489		BaoXiang_JLBCBTBOX_Rad	[	88	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	88	]	=	1
	BaoXiang_JLBCBTBOX	[	89	]	=	7624		BaoXiang_JLBCBTBOX_Rad	[	89	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	89	]	=	1
	BaoXiang_JLBCBTBOX	[	90	]	=	7477		BaoXiang_JLBCBTBOX_Rad	[	90	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	90	]	=	1
	BaoXiang_JLBCBTBOX	[	91	]	=	7478		BaoXiang_JLBCBTBOX_Rad	[	91	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	91	]	=	1
	BaoXiang_JLBCBTBOX	[	92	]	=	7479		BaoXiang_JLBCBTBOX_Rad	[	92	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	92	]	=	1
	BaoXiang_JLBCBTBOX	[	93	]	=	7480		BaoXiang_JLBCBTBOX_Rad	[	93	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	93	]	=	1
	BaoXiang_JLBCBTBOX	[	94	]	=	7481		BaoXiang_JLBCBTBOX_Rad	[	94	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	94	]	=	1
	BaoXiang_JLBCBTBOX	[	95	]	=	7483		BaoXiang_JLBCBTBOX_Rad	[	95	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	95	]	=	1
	BaoXiang_JLBCBTBOX	[	96	]	=	7485		BaoXiang_JLBCBTBOX_Rad	[	96	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	96	]	=	1
	BaoXiang_JLBCBTBOX	[	97	]	=	7485		BaoXiang_JLBCBTBOX_Rad	[	97	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	97	]	=	1
	BaoXiang_JLBCBTBOX	[	98	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	98	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	98	]	=	1
	BaoXiang_JLBCBTBOX	[	99	]	=	7491		BaoXiang_JLBCBTBOX_Rad	[	99	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	99	]	=	1
	BaoXiang_JLBCBTBOX	[	100	]	=	7492		BaoXiang_JLBCBTBOX_Rad	[	100	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	100	]	=	1
	BaoXiang_JLBCBTBOX	[	101	]	=	7493		BaoXiang_JLBCBTBOX_Rad	[	101	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	101	]	=	1
	BaoXiang_JLBCBTBOX	[	102	]	=	7494		BaoXiang_JLBCBTBOX_Rad	[	102	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	102	]	=	1
	BaoXiang_JLBCBTBOX	[	103	]	=	7510		BaoXiang_JLBCBTBOX_Rad	[	103	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	103	]	=	1
	BaoXiang_JLBCBTBOX	[	104	]	=	1145		BaoXiang_JLBCBTBOX_Rad	[	104	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	104	]	=	1
	BaoXiang_JLBCBTBOX	[	105	]	=	2729		BaoXiang_JLBCBTBOX_Rad	[	105	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	105	]	=	1
	BaoXiang_JLBCBTBOX	[	106	]	=	7450		BaoXiang_JLBCBTBOX_Rad	[	106	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	106	]	=	1
	BaoXiang_JLBCBTBOX	[	107	]	=	7467		BaoXiang_JLBCBTBOX_Rad	[	107	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	107	]	=	1
	BaoXiang_JLBCBTBOX	[	108	]	=	7456		BaoXiang_JLBCBTBOX_Rad	[	108	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	108	]	=	1
	BaoXiang_JLBCBTBOX	[	109	]	=	7444		BaoXiang_JLBCBTBOX_Rad	[	109	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	109	]	=	1
	BaoXiang_JLBCBTBOX	[	110	]	=	7476		BaoXiang_JLBCBTBOX_Rad	[	110	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	110	]	=	1
	BaoXiang_JLBCBTBOX	[	111	]	=	7510		BaoXiang_JLBCBTBOX_Rad	[	111	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	111	]	=	1
	BaoXiang_JLBCBTBOX	[	112	]	=	7483		BaoXiang_JLBCBTBOX_Rad	[	112	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	112	]	=	1
	BaoXiang_JLBCBTBOX	[	113	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	113	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	113	]	=	1
	BaoXiang_JLBCBTBOX	[	114	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	114	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	114	]	=	1
	BaoXiang_JLBCBTBOX	[	115	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	115	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	115	]	=	1
	BaoXiang_JLBCBTBOX	[	116	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	116	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	116	]	=	1
	BaoXiang_JLBCBTBOX	[	117	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	117	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	117	]	=	1
	BaoXiang_JLBCBTBOX	[	118	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	119	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	119	]	=	1
	BaoXiang_JLBCBTBOX	[	120	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	120	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	120	]	=	1
	BaoXiang_JLBCBTBOX	[	121	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	121	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	121	]	=	1
	BaoXiang_JLBCBTBOX	[	122	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	122	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	122	]	=	1
	BaoXiang_JLBCBTBOX	[	123	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	123	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	123	]	=	1
	BaoXiang_JLBCBTBOX	[	124	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	124	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	124	]	=	1
	BaoXiang_JLBCBTBOX	[	125	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	125	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	125	]	=	1
	BaoXiang_JLBCBTBOX	[	126	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	126	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	126	]	=	1
	BaoXiang_JLBCBTBOX	[	127	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	127	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	127	]	=	1
	BaoXiang_JLBCBTBOX	[	128	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	128	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	128	]	=	1
	BaoXiang_JLBCBTBOX	[	129	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	129	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	129	]	=	1
	BaoXiang_JLBCBTBOX	[	130	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	130	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	130	]	=	1
	BaoXiang_JLBCBTBOX	[	131	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	131	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	131	]	=	1
	BaoXiang_JLBCBTBOX	[	132	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	132	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	132	]	=	1
	BaoXiang_JLBCBTBOX	[	133	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	133	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	133	]	=	1
	BaoXiang_JLBCBTBOX	[	134	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	134	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	134	]	=	1
	BaoXiang_JLBCBTBOX	[	135	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	135	]	=	30 		BaoXiang_JLBCBTBOX_Count	[	135	]	=	1
	BaoXiang_JLBCBTBOX	[	136	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	137	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	137	]	=	1
	BaoXiang_JLBCBTBOX	[	138	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	138	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	138	]	=	1
	BaoXiang_JLBCBTBOX	[	139	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	139	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	139	]	=	1
	BaoXiang_JLBCBTBOX	[	140	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	140	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	140	]	=	1
	BaoXiang_JLBCBTBOX	[	141	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	141	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	141	]	=	1
	BaoXiang_JLBCBTBOX	[	142	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	142	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	142	]	=	1
	BaoXiang_JLBCBTBOX	[	143	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	143	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	143	]	=	1
	BaoXiang_JLBCBTBOX	[	144	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	144	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	144	]	=	1
	BaoXiang_JLBCBTBOX	[	145	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	145	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	145	]	=	1
	BaoXiang_JLBCBTBOX	[	146	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	146	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	146	]	=	1
	BaoXiang_JLBCBTBOX	[	147	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	147	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	147	]	=	1
	BaoXiang_JLBCBTBOX	[	148	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	148	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	148	]	=	1
	BaoXiang_JLBCBTBOX	[	149	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	149	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	149	]	=	1
	BaoXiang_JLBCBTBOX	[	150	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	150	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	150	]	=	1
	BaoXiang_JLBCBTBOX	[	151	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	151	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	151	]	=	1
	BaoXiang_JLBCBTBOX	[	152	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	152	]	=	25 		BaoXiang_JLBCBTBOX_Count	[	152	]	=	1
	BaoXiang_JLBCBTBOX	[	153	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	153	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	153	]	=	1
	BaoXiang_JLBCBTBOX	[	154	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	154	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	154	]	=	1
	BaoXiang_JLBCBTBOX	[	155	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	155	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	155	]	=	1
	BaoXiang_JLBCBTBOX	[	156	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	156	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	156	]	=	1
	BaoXiang_JLBCBTBOX	[	157	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	157	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	157	]	=	1
	BaoXiang_JLBCBTBOX	[	158	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	158	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	158	]	=	1
	BaoXiang_JLBCBTBOX	[	159	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	159	]	=	20 		BaoXiang_JLBCBTBOX_Count	[	159	]	=	1
	BaoXiang_JLBCBTBOX	[	160	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	160	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	160	]	=	1
	BaoXiang_JLBCBTBOX	[	161	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	161	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	161	]	=	1
	BaoXiang_JLBCBTBOX	[	162	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	162	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	162	]	=	1
	BaoXiang_JLBCBTBOX	[	163	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	163	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	163	]	=	1
	BaoXiang_JLBCBTBOX	[	164	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	164	]	=	20 		BaoXiang_JLBCBTBOX_Count	[	164	]	=	1
	BaoXiang_JLBCBTBOX	[	165	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	165	]	=	10 		BaoXiang_JLBCBTBOX_Count	[	165	]	=	1
	BaoXiang_JLBCBTBOX	[	166	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	166	]	=	10 		BaoXiang_JLBCBTBOX_Count	[	166	]	=	1
	BaoXiang_JLBCBTBOX	[	167	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	167	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	167	]	=	1
	BaoXiang_JLBCBTBOX	[	168	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	168	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	168	]	=	1
	BaoXiang_JLBCBTBOX	[	169	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	169	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	169	]	=	1
	BaoXiang_JLBCBTBOX	[	170	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	170	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	170	]	=	1
	BaoXiang_JLBCBTBOX	[	171	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	171	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	171	]	=	1
	BaoXiang_JLBCBTBOX	[	172	]	=	3877		BaoXiang_JLBCBTBOX_Rad	[	172	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	172	]	=	1
	BaoXiang_JLBCBTBOX	[	173	]	=	7503		BaoXiang_JLBCBTBOX_Rad	[	173	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	173	]	=	1
	BaoXiang_JLBCBTBOX	[	174	]	=	7504		BaoXiang_JLBCBTBOX_Rad	[	174	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	174	]	=	1
	BaoXiang_JLBCBTBOX	[	175	]	=	7505		BaoXiang_JLBCBTBOX_Rad	[	175	]	=	1 		BaoXiang_JLBCBTBOX_Count	[	175	]	=	1
	BaoXiang_JLBCBTBOX	[	176	]	=	7506		BaoXiang_JLBCBTBOX_Rad	[	176	]	=	5 		BaoXiang_JLBCBTBOX_Count	[	176	]	=	1
	BaoXiang_JLBCBTBOX	[	177	]	=	7507		BaoXiang_JLBCBTBOX_Rad	[	177	]	=	5 		BaoXiang_JLBCBTBOX_Count	[	177	]	=	1
	BaoXiang_JLBCBTBOX	[	178	]	=	7508		BaoXiang_JLBCBTBOX_Rad	[	178	]	=	5 		BaoXiang_JLBCBTBOX_Count	[	178	]	=	1
	BaoXiang_JLBCBTBOX	[	179	]	=	7469		BaoXiang_JLBCBTBOX_Rad	[	179	]	=	5 		BaoXiang_JLBCBTBOX_Count	[	179	]	=	1
	BaoXiang_JLBCBTBOX	[	180	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	180	]	=	5 		BaoXiang_JLBCBTBOX_Count	[	180	]	=	1
	BaoXiang_JLBCBTBOX	[	181	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	181	]	=	100 		BaoXiang_JLBCBTBOX_Count	[	181	]	=	1
	BaoXiang_JLBCBTBOX	[	182	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	182	]	=	100 		BaoXiang_JLBCBTBOX_Count	[	182	]	=	1
	BaoXiang_JLBCBTBOX	[	183	]	=	7482		BaoXiang_JLBCBTBOX_Rad	[	183	]	=	100 		BaoXiang_JLBCBTBOX_Count	[	183	]	=	1


--	98°ь																			
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ												
	BaoXiang_98BOX_Qua	=	5	 				BaoXiang_98BOX_Mxcount	=	22										
																				
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК												
	BaoXiang_98BOX	=	{}					BaoXiang_98BOX_Rad	=	{}					BaoXiang_98BOX_Count	=	{}			
	BaoXiang_98BOX	[	1	]	=	2440		BaoXiang_98BOX_Rad	[	1	]	=	100 		BaoXiang_98BOX_Count	[	1	]	=	30
	BaoXiang_98BOX	[	2	]	=	3098		BaoXiang_98BOX_Rad	[	2	]	=	100 		BaoXiang_98BOX_Count	[	2	]	=	6
	BaoXiang_98BOX	[	3	]	=	3096		BaoXiang_98BOX_Rad	[	3	]	=	50 		BaoXiang_98BOX_Count	[	3	]	=	3
	BaoXiang_98BOX	[	4	]	=	0227		BaoXiang_98BOX_Rad	[	4	]	=	50 		BaoXiang_98BOX_Count	[	4	]	=	3
	BaoXiang_98BOX	[	5	]	=	3105		BaoXiang_98BOX_Rad	[	5	]	=	100 		BaoXiang_98BOX_Count	[	5	]	=	2
	BaoXiang_98BOX	[	6	]	=	3107		BaoXiang_98BOX_Rad	[	6	]	=	100 		BaoXiang_98BOX_Count	[	6	]	=	2
	BaoXiang_98BOX	[	7	]	=	0563		BaoXiang_98BOX_Rad	[	7	]	=	100 		BaoXiang_98BOX_Count	[	7	]	=	2
	BaoXiang_98BOX	[	8	]	=	0583		BaoXiang_98BOX_Rad	[	8	]	=	100 		BaoXiang_98BOX_Count	[	8	]	=	2
	BaoXiang_98BOX	[	9	]	=	2445		BaoXiang_98BOX_Rad	[	9	]	=	100 		BaoXiang_98BOX_Count	[	9	]	=	2
	BaoXiang_98BOX	[	10	]	=	0455		BaoXiang_98BOX_Rad	[	10	]	=	100 		BaoXiang_98BOX_Count	[	10	]	=	2
	BaoXiang_98BOX	[	11	]	=	3094		BaoXiang_98BOX_Rad	[	11	]	=	80 		BaoXiang_98BOX_Count	[	11	]	=	2
	BaoXiang_98BOX	[	12	]	=	0849		BaoXiang_98BOX_Rad	[	12	]	=	70 		BaoXiang_98BOX_Count	[	12	]	=	1
	BaoXiang_98BOX	[	13	]	=	3074		BaoXiang_98BOX_Rad	[	13	]	=	20 		BaoXiang_98BOX_Count	[	13	]	=	1
	BaoXiang_98BOX	[	14	]	=	3075		BaoXiang_98BOX_Rad	[	14	]	=	10 		BaoXiang_98BOX_Count	[	14	]	=	1
	BaoXiang_98BOX	[	15	]	=	0937		BaoXiang_98BOX_Rad	[	15	]	=	10 		BaoXiang_98BOX_Count	[	15	]	=	1
	BaoXiang_98BOX	[	16	]	=	3885		BaoXiang_98BOX_Rad	[	16	]	=	5 		BaoXiang_98BOX_Count	[	16	]	=	1
	BaoXiang_98BOX	[	17	]	=	0680		BaoXiang_98BOX_Rad	[	17	]	=	5 		BaoXiang_98BOX_Count	[	17	]	=	1
	BaoXiang_98BOX	[	18	]	=	0938		BaoXiang_98BOX_Rad	[	18	]	=	1 		BaoXiang_98BOX_Count	[	18	]	=	1
	BaoXiang_98BOX	[	19	]	=	2488		BaoXiang_98BOX_Rad	[	19	]	=	2 		BaoXiang_98BOX_Count	[	19	]	=	1
	BaoXiang_98BOX	[	20	]	=	2489		BaoXiang_98BOX_Rad	[	20	]	=	2 		BaoXiang_98BOX_Count	[	20	]	=	1
	BaoXiang_98BOX	[	21	]	=	2490		BaoXiang_98BOX_Rad	[	21	]	=	2 		BaoXiang_98BOX_Count	[	21	]	=	1
	BaoXiang_98BOX	[	22	]	=	2436		BaoXiang_98BOX_Rad	[	22	]	=	2 		BaoXiang_98BOX_Count	[	22	]	=	1
																						
--      єЪКРЙМИЛ±¦Пд--Leo																				
																						
																						
																						
--	УОБъ±¦Пд24РН												w0289									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsyla_Qua	=	24	 				BaoXiang_jsyla_Mxcount	=	19												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsyla	=	{}					BaoXiang_jsyla_Rad	=	{}					BaoXiang_jsyla_Count	=	{}					
	BaoXiang_jsyla	[	1	]	=	0114		BaoXiang_jsyla_Rad	[	1	]	=	1 		BaoXiang_jsyla_Count	[	1	]	=	1	--	УОБъ
	BaoXiang_jsyla	[	2	]	=	3302		BaoXiang_jsyla_Rad	[	2	]	=	30 		BaoXiang_jsyla_Count	[	2	]	=	1	--	УОБъ±¦Пд24РН
	BaoXiang_jsyla	[	3	]	=	0007		BaoXiang_jsyla_Rad	[	3	]	=	30 		BaoXiang_jsyla_Count	[	3	]	=	1	--	КҐЅЈ
	BaoXiang_jsyla	[	4	]	=	1394		BaoXiang_jsyla_Rad	[	4	]	=	30 		BaoXiang_jsyla_Count	[	4	]	=	1	--	АиГчЅЈ
	BaoXiang_jsyla	[	5	]	=	0006		BaoXiang_jsyla_Rad	[	5	]	=	180 		BaoXiang_jsyla_Count	[	5	]	=	1	--	Х¶БъЅЈ
	BaoXiang_jsyla	[	6	]	=	1393		BaoXiang_jsyla_Rad	[	6	]	=	180 		BaoXiang_jsyla_Count	[	6	]	=	1	--	БъГщЅЈ
	BaoXiang_jsyla	[	7	]	=	3801		BaoXiang_jsyla_Rad	[	7	]	=	180 		BaoXiang_jsyla_Count	[	7	]	=	1	--	чичлЅЈ
	BaoXiang_jsyla	[	8	]	=	4212		BaoXiang_jsyla_Rad	[	8	]	=	180 		BaoXiang_jsyla_Count	[	8	]	=	1	--	»рєЫ
	BaoXiang_jsyla	[	9	]	=	4213		BaoXiang_jsyla_Rad	[	9	]	=	180 		BaoXiang_jsyla_Count	[	9	]	=	1	--	Ч·µз
	BaoXiang_jsyla	[	10	]	=	0003		BaoXiang_jsyla_Rad	[	10	]	=	9000 		BaoXiang_jsyla_Count	[	10	]	=	1	--	ОчСуЅЈ
	BaoXiang_jsyla	[	11	]	=	0004		BaoXiang_jsyla_Rad	[	11	]	=	9000 		BaoXiang_jsyla_Count	[	11	]	=	1	--	ЙЯЅЈ
	BaoXiang_jsyla	[	12	]	=	0005		BaoXiang_jsyla_Rad	[	12	]	=	9000 		BaoXiang_jsyla_Count	[	12	]	=	1	--	ѕ«ёЦЅЈ
	BaoXiang_jsyla	[	13	]	=	1390		BaoXiang_jsyla_Rad	[	13	]	=	9000 		BaoXiang_jsyla_Count	[	13	]	=	1	--	ПёґМЅЈ
	BaoXiang_jsyla	[	14	]	=	1391		BaoXiang_jsyla_Rad	[	14	]	=	9000 		BaoXiang_jsyla_Count	[	14	]	=	1	--	±М№вґМИР
	BaoXiang_jsyla	[	15	]	=	1392		BaoXiang_jsyla_Rad	[	15	]	=	9000 		BaoXiang_jsyla_Count	[	15	]	=	1	--	ёЦЦЖЕеЅЈ
	BaoXiang_jsyla	[	16	]	=	1397		BaoXiang_jsyla_Rad	[	16	]	=	9000 		BaoXiang_jsyla_Count	[	16	]	=	1	--	ґМЙ±ЅЈ
	BaoXiang_jsyla	[	17	]	=	1398		BaoXiang_jsyla_Rad	[	17	]	=	9000 		BaoXiang_jsyla_Count	[	17	]	=	1	--	ТмЧеЅЈ
	BaoXiang_jsyla	[	18	]	=	1399		BaoXiang_jsyla_Rad	[	18	]	=	9000 		BaoXiang_jsyla_Count	[	18	]	=	1	--	зъзкЅЈ
	BaoXiang_jsyla	[	19	]	=	0022		BaoXiang_jsyla_Rad	[	19	]	=	9000 		BaoXiang_jsyla_Count	[	19	]	=	1	--	НдИРЅЈ
																						
																						
--	УОБъ±¦Пд23РН												w0289									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsylb_Qua	=	23	 				BaoXiang_jsylb_Mxcount	=	19												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsylb	=	{}					BaoXiang_jsylb_Rad	=	{}					BaoXiang_jsylb_Count	=	{}					
	BaoXiang_jsylb	[	1	]	=	0114		BaoXiang_jsylb_Rad	[	1	]	=	5 		BaoXiang_jsylb_Count	[	1	]	=	1	--	УОБъ
	BaoXiang_jsylb	[	2	]	=	3303		BaoXiang_jsylb_Rad	[	2	]	=	15 		BaoXiang_jsylb_Count	[	2	]	=	1	--	УОБъ±¦Пд23РН
	BaoXiang_jsylb	[	3	]	=	0007		BaoXiang_jsylb_Rad	[	3	]	=	15 		BaoXiang_jsylb_Count	[	3	]	=	1	--	КҐЅЈ
	BaoXiang_jsylb	[	4	]	=	1394		BaoXiang_jsylb_Rad	[	4	]	=	15 		BaoXiang_jsylb_Count	[	4	]	=	1	--	АиГчЅЈ
	BaoXiang_jsylb	[	5	]	=	0006		BaoXiang_jsylb_Rad	[	5	]	=	150 		BaoXiang_jsylb_Count	[	5	]	=	1	--	Х¶БъЅЈ
	BaoXiang_jsylb	[	6	]	=	1393		BaoXiang_jsylb_Rad	[	6	]	=	150 		BaoXiang_jsylb_Count	[	6	]	=	1	--	БъГщЅЈ
	BaoXiang_jsylb	[	7	]	=	3801		BaoXiang_jsylb_Rad	[	7	]	=	150 		BaoXiang_jsylb_Count	[	7	]	=	1	--	чичлЅЈ
	BaoXiang_jsylb	[	8	]	=	4212		BaoXiang_jsylb_Rad	[	8	]	=	150 		BaoXiang_jsylb_Count	[	8	]	=	1	--	»рєЫ
	BaoXiang_jsylb	[	9	]	=	4213		BaoXiang_jsylb_Rad	[	9	]	=	150 		BaoXiang_jsylb_Count	[	9	]	=	1	--	Ч·µз
	BaoXiang_jsylb	[	10	]	=	0003		BaoXiang_jsylb_Rad	[	10	]	=	9200 		BaoXiang_jsylb_Count	[	10	]	=	1	--	ОчСуЅЈ
	BaoXiang_jsylb	[	11	]	=	0004		BaoXiang_jsylb_Rad	[	11	]	=	9200 		BaoXiang_jsylb_Count	[	11	]	=	1	--	ЙЯЅЈ
	BaoXiang_jsylb	[	12	]	=	0005		BaoXiang_jsylb_Rad	[	12	]	=	9200 		BaoXiang_jsylb_Count	[	12	]	=	1	--	ѕ«ёЦЅЈ
	BaoXiang_jsylb	[	13	]	=	1390		BaoXiang_jsylb_Rad	[	13	]	=	9200 		BaoXiang_jsylb_Count	[	13	]	=	1	--	ПёґМЅЈ
	BaoXiang_jsylb	[	14	]	=	1391		BaoXiang_jsylb_Rad	[	14	]	=	9200 		BaoXiang_jsylb_Count	[	14	]	=	1	--	±М№вґМИР
	BaoXiang_jsylb	[	15	]	=	1392		BaoXiang_jsylb_Rad	[	15	]	=	9200 		BaoXiang_jsylb_Count	[	15	]	=	1	--	ёЦЦЖЕеЅЈ
	BaoXiang_jsylb	[	16	]	=	1397		BaoXiang_jsylb_Rad	[	16	]	=	9200 		BaoXiang_jsylb_Count	[	16	]	=	1	--	ґМЙ±ЅЈ
	BaoXiang_jsylb	[	17	]	=	1398		BaoXiang_jsylb_Rad	[	17	]	=	9200 		BaoXiang_jsylb_Count	[	17	]	=	1	--	ТмЧеЅЈ
	BaoXiang_jsylb	[	18	]	=	1399		BaoXiang_jsylb_Rad	[	18	]	=	9200 		BaoXiang_jsylb_Count	[	18	]	=	1	--	зъзкЅЈ
	BaoXiang_jsylb	[	19	]	=	0022		BaoXiang_jsylb_Rad	[	19	]	=	9200 		BaoXiang_jsylb_Count	[	19	]	=	1	--	НдИРЅЈ


																						
--	ГФЦ®АыИР±¦Пд24РН												w0007									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmzlra_Qua	=	24	 				BaoXiang_jsmzlra_Mxcount	=	18												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmzlra	=	{}					BaoXiang_jsmzlra_Rad	=	{}					BaoXiang_jsmzlra_Count	=	{}					
	BaoXiang_jsmzlra	[	1	]	=	1895		BaoXiang_jsmzlra_Rad	[	1	]	=	30 		BaoXiang_jsmzlra_Count	[	1	]	=	1	--	ОЫДа·вУЎµДЦдОЖґМЅЈ
	BaoXiang_jsmzlra	[	2	]	=	1896		BaoXiang_jsmzlra_Rad	[	2	]	=	20 		BaoXiang_jsmzlra_Count	[	2	]	=	1	--	БТСж·вУЎµД»ГБйЦ®Ои
	BaoXiang_jsmzlra	[	3	]	=	1897		BaoXiang_jsmzlra_Rad	[	3	]	=	1 		BaoXiang_jsmzlra_Count	[	3	]	=	1	--	є®±щ·вУЎµДГФЦ®АыИР
	BaoXiang_jsmzlra	[	4	]	=	0006		BaoXiang_jsmzlra_Rad	[	4	]	=	200 		BaoXiang_jsmzlra_Count	[	4	]	=	1	--	Х¶БъЅЈ
	BaoXiang_jsmzlra	[	5	]	=	1393		BaoXiang_jsmzlra_Rad	[	5	]	=	200 		BaoXiang_jsmzlra_Count	[	5	]	=	1	--	БъГщЅЈ
	BaoXiang_jsmzlra	[	6	]	=	3801		BaoXiang_jsmzlra_Rad	[	6	]	=	200 		BaoXiang_jsmzlra_Count	[	6	]	=	1	--	чичлЅЈ
	BaoXiang_jsmzlra	[	7	]	=	4212		BaoXiang_jsmzlra_Rad	[	7	]	=	200 		BaoXiang_jsmzlra_Count	[	7	]	=	1	--	»рєЫ
	BaoXiang_jsmzlra	[	8	]	=	4213		BaoXiang_jsmzlra_Rad	[	8	]	=	200 		BaoXiang_jsmzlra_Count	[	8	]	=	1	--	Ч·µз
	BaoXiang_jsmzlra	[	9	]	=	0003		BaoXiang_jsmzlra_Rad	[	9	]	=	9000		BaoXiang_jsmzlra_Count	[	9	]	=	1	--	ОчСуЅЈ
	BaoXiang_jsmzlra	[	10	]	=	0004		BaoXiang_jsmzlra_Rad	[	10	]	=	9000 		BaoXiang_jsmzlra_Count	[	10	]	=	1	--	ЙЯЅЈ
	BaoXiang_jsmzlra	[	11	]	=	0005		BaoXiang_jsmzlra_Rad	[	11	]	=	9000 		BaoXiang_jsmzlra_Count	[	11	]	=	1	--	ѕ«ёЦЅЈ
	BaoXiang_jsmzlra	[	12	]	=	1390		BaoXiang_jsmzlra_Rad	[	12	]	=	9000 		BaoXiang_jsmzlra_Count	[	12	]	=	1	--	ПёґМЅЈ
	BaoXiang_jsmzlra	[	13	]	=	1391		BaoXiang_jsmzlra_Rad	[	13	]	=	9000 		BaoXiang_jsmzlra_Count	[	13	]	=	1	--	±М№вґМИР
	BaoXiang_jsmzlra	[	14	]	=	1392		BaoXiang_jsmzlra_Rad	[	14	]	=	9000 		BaoXiang_jsmzlra_Count	[	14	]	=	1	--	ёЦЦЖЕеЅЈ
	BaoXiang_jsmzlra	[	15	]	=	1397		BaoXiang_jsmzlra_Rad	[	15	]	=	9000 		BaoXiang_jsmzlra_Count	[	15	]	=	1	--	ґМЙ±ЅЈ
	BaoXiang_jsmzlra	[	16	]	=	1398		BaoXiang_jsmzlra_Rad	[	16	]	=	9000 		BaoXiang_jsmzlra_Count	[	16	]	=	1	--	ТмЧеЅЈ
	BaoXiang_jsmzlra	[	17	]	=	1399		BaoXiang_jsmzlra_Rad	[	17	]	=	9000		BaoXiang_jsmzlra_Count	[	17	]	=	1	--	зъзкЅЈ
	BaoXiang_jsmzlra	[	18	]	=	0022		BaoXiang_jsmzlra_Rad	[	18	]	=	9000 		BaoXiang_jsmzlra_Count	[	18	]	=	1	--	НдИРЅЈ

																						
--	ГФЦ®АыИР±¦Пд23РН												w0007									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmzlrb_Qua	=	23	 				BaoXiang_jsmzlrb_Mxcount	=	18												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmzlrb	=	{}					BaoXiang_jsmzlrb_Rad	=	{}					BaoXiang_jsmzlrb_Count	=	{}					
	BaoXiang_jsmzlrb	[	1	]	=	1895		BaoXiang_jsmzlrb_Rad	[	1	]	=	30 		BaoXiang_jsmzlrb_Count	[	1	]	=	1	--	ОЫДа·вУЎµДЦдОЖґМЅЈ
	BaoXiang_jsmzlrb	[	2	]	=	1896		BaoXiang_jsmzlrb_Rad	[	2	]	=	10 		BaoXiang_jsmzlrb_Count	[	2	]	=	1	--	БТСж·вУЎµД»ГБйЦ®Ои
	BaoXiang_jsmzlrb	[	3	]	=	1897		BaoXiang_jsmzlrb_Rad	[	3	]	=	5 		BaoXiang_jsmzlrb_Count	[	3	]	=	1	--	є®±щ·вУЎµДГФЦ®АыИР
	BaoXiang_jsmzlrb	[	4	]	=	0006		BaoXiang_jsmzlrb_Rad	[	4	]	=	175 		BaoXiang_jsmzlrb_Count	[	4	]	=	1	--	Х¶БъЅЈ
	BaoXiang_jsmzlrb	[	5	]	=	1393		BaoXiang_jsmzlrb_Rad	[	5	]	=	175 		BaoXiang_jsmzlrb_Count	[	5	]	=	1	--	БъГщЅЈ
	BaoXiang_jsmzlrb	[	6	]	=	3801		BaoXiang_jsmzlrb_Rad	[	6	]	=	175 		BaoXiang_jsmzlrb_Count	[	6	]	=	1	--	чичлЅЈ
	BaoXiang_jsmzlrb	[	7	]	=	4212		BaoXiang_jsmzlrb_Rad	[	7	]	=	175 		BaoXiang_jsmzlrb_Count	[	7	]	=	1	--	»рєЫ
	BaoXiang_jsmzlrb	[	8	]	=	4213		BaoXiang_jsmzlrb_Rad	[	8	]	=	175 		BaoXiang_jsmzlrb_Count	[	8	]	=	1	--	Ч·µз
	BaoXiang_jsmzlrb	[	9	]	=	0003		BaoXiang_jsmzlrb_Rad	[	9	]	=	9100 		BaoXiang_jsmzlrb_Count	[	9	]	=	1	--	ОчСуЅЈ
	BaoXiang_jsmzlrb	[	10	]	=	0004		BaoXiang_jsmzlrb_Rad	[	10	]	=	9100 		BaoXiang_jsmzlrb_Count	[	10	]	=	1	--	ЙЯЅЈ
	BaoXiang_jsmzlrb	[	11	]	=	0005		BaoXiang_jsmzlrb_Rad	[	11	]	=	9100 		BaoXiang_jsmzlrb_Count	[	11	]	=	1	--	ѕ«ёЦЅЈ
	BaoXiang_jsmzlrb	[	12	]	=	1390		BaoXiang_jsmzlrb_Rad	[	12	]	=	9100 		BaoXiang_jsmzlrb_Count	[	12	]	=	1	--	ПёґМЅЈ
	BaoXiang_jsmzlrb	[	13	]	=	1391		BaoXiang_jsmzlrb_Rad	[	13	]	=	9100 		BaoXiang_jsmzlrb_Count	[	13	]	=	1	--	±М№вґМИР
	BaoXiang_jsmzlrb	[	14	]	=	1392		BaoXiang_jsmzlrb_Rad	[	14	]	=	9100 		BaoXiang_jsmzlrb_Count	[	14	]	=	1	--	ёЦЦЖЕеЅЈ
	BaoXiang_jsmzlrb	[	15	]	=	1397		BaoXiang_jsmzlrb_Rad	[	15	]	=	9100 		BaoXiang_jsmzlrb_Count	[	15	]	=	1	--	ґМЙ±ЅЈ
	BaoXiang_jsmzlrb	[	16	]	=	1398		BaoXiang_jsmzlrb_Rad	[	16	]	=	9100 		BaoXiang_jsmzlrb_Count	[	16	]	=	1	--	ТмЧеЅЈ
	BaoXiang_jsmzlrb	[	17	]	=	1399		BaoXiang_jsmzlrb_Rad	[	17	]	=	9100 		BaoXiang_jsmzlrb_Count	[	17	]	=	1	--	зъзкЅЈ
	BaoXiang_jsmzlrb	[	18	]	=	0022		BaoXiang_jsmzlrb_Rad	[	18	]	=	9100 		BaoXiang_jsmzlrb_Count	[	18	]	=	1	--	НдИРЅЈ


																						
--	ѕЮгЪ±¦Пд24РН												w0210									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsjqa_Qua	=	24	 				BaoXiang_jsjqa_Mxcount	=	17												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsjqa	=	{}					BaoXiang_jsjqa_Rad	=	{}					BaoXiang_jsjqa_Count	=	{}					
	BaoXiang_jsjqa	[	1	]	=	0116		BaoXiang_jsjqa_Rad	[	1	]	=	1 		BaoXiang_jsjqa_Count	[	1	]	=	1	--	--ѕЮгЪ
	BaoXiang_jsjqa	[	2	]	=	3306		BaoXiang_jsjqa_Rad	[	2	]	=	23 		BaoXiang_jsjqa_Count	[	2	]	=	1	--	ѕЮгЪ±¦Пд24РН
	BaoXiang_jsjqa	[	3	]	=	1375		BaoXiang_jsjqa_Rad	[	3	]	=	23 		BaoXiang_jsjqa_Count	[	3	]	=	1	--	КЮНхё«
	BaoXiang_jsjqa	[	4	]	=	1384		BaoXiang_jsjqa_Rad	[	4	]	=	23 		BaoXiang_jsjqa_Count	[	4	]	=	1	--	ЛАНцЦ®·з
	BaoXiang_jsjqa	[	5	]	=	0018		BaoXiang_jsjqa_Rad	[	5	]	=	23 		BaoXiang_jsjqa_Count	[	5	]	=	1	--	АЧИР
	BaoXiang_jsjqa	[	6	]	=	1374		BaoXiang_jsjqa_Rad	[	6	]	=	180 		BaoXiang_jsjqa_Count	[	6	]	=	1	--	ІФБъЅЈ
	BaoXiang_jsjqa	[	7	]	=	0017		BaoXiang_jsjqa_Rad	[	7	]	=	180 		BaoXiang_jsjqa_Count	[	7	]	=	1	--	Бъ№ЗЅЈ
	BaoXiang_jsjqa	[	8	]	=	1383		BaoXiang_jsjqa_Rad	[	8	]	=	180 		BaoXiang_jsjqa_Count	[	8	]	=	1	--	Бъ»кЅЈ
	BaoXiang_jsjqa	[	9	]	=	0021		BaoXiang_jsjqa_Rad	[	9	]	=	180 		BaoXiang_jsjqa_Count	[	9	]	=	1	--	іе·жЅЈ
	BaoXiang_jsjqa	[	10	]	=	1378		BaoXiang_jsjqa_Rad	[	10	]	=	180 		BaoXiang_jsjqa_Count	[	10	]	=	1	--	»рБъЅЈ
	BaoXiang_jsjqa	[	11	]	=	0020		BaoXiang_jsjqa_Rad	[	11	]	=	1300 		BaoXiang_jsjqa_Count	[	11	]	=	1	--	ХЅКїЅЈ
	BaoXiang_jsjqa	[	12	]	=	1372		BaoXiang_jsjqa_Rad	[	12	]	=	1300 		BaoXiang_jsjqa_Count	[	12	]	=	1	--	тЇіПЅЈ
	BaoXiang_jsjqa	[	13	]	=	1373		BaoXiang_jsjqa_Rad	[	13	]	=	1300 		BaoXiang_jsjqa_Count	[	13	]	=	1	--	Жп±шЕеЅЈ
	BaoXiang_jsjqa	[	14	]	=	1377		BaoXiang_jsjqa_Rad	[	14	]	=	1300 		BaoXiang_jsjqa_Count	[	14	]	=	1	--	БїІъХЅКїЅЈ
	BaoXiang_jsjqa	[	15	]	=	1381		BaoXiang_jsjqa_Rad	[	15	]	=	1300 		BaoXiang_jsjqa_Count	[	15	]	=	1	--	КҐХЯЅЈ
	BaoXiang_jsjqa	[	16	]	=	1382		BaoXiang_jsjqa_Rad	[	16	]	=	1300 		BaoXiang_jsjqa_Count	[	16	]	=	1	--	НЛµРЅЈ
	BaoXiang_jsjqa	[	17	]	=	1386		BaoXiang_jsjqa_Rad	[	17	]	=	1300 		BaoXiang_jsjqa_Count	[	17	]	=	1	--	Зї»ЇХЅКїЅЈ
																						

																						
--	ѕЮгЪ±¦Пд23РН												w0210									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsjqb_Qua	=	23	 				BaoXiang_jsjqb_Mxcount	=	17												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsjqb	=	{}					BaoXiang_jsjqb_Rad	=	{}					BaoXiang_jsjqb_Count	=	{}					
	BaoXiang_jsjqb	[	1	]	=	0116		BaoXiang_jsjqb_Rad	[	1	]	=	5 		BaoXiang_jsjqb_Count	[	1	]	=	1	--	--ѕЮгЪ
	BaoXiang_jsjqb	[	2	]	=	3307		BaoXiang_jsjqb_Rad	[	2	]	=	10 		BaoXiang_jsjqb_Count	[	2	]	=	1	--	ѕЮгЪ±¦Пд24РН
	BaoXiang_jsjqb	[	3	]	=	1375		BaoXiang_jsjqb_Rad	[	3	]	=	10 		BaoXiang_jsjqb_Count	[	3	]	=	1	--	КЮНхё«
	BaoXiang_jsjqb	[	4	]	=	1384		BaoXiang_jsjqb_Rad	[	4	]	=	10 		BaoXiang_jsjqb_Count	[	4	]	=	1	--	ЛАНцЦ®·з
	BaoXiang_jsjqb	[	5	]	=	0018		BaoXiang_jsjqb_Rad	[	5	]	=	10 		BaoXiang_jsjqb_Count	[	5	]	=	1	--	АЧИР
	BaoXiang_jsjqb	[	6	]	=	1374		BaoXiang_jsjqb_Rad	[	6	]	=	155 		BaoXiang_jsjqb_Count	[	6	]	=	1	--	ІФБъЅЈ
	BaoXiang_jsjqb	[	7	]	=	0017		BaoXiang_jsjqb_Rad	[	7	]	=	155 		BaoXiang_jsjqb_Count	[	7	]	=	1	--	Бъ№ЗЅЈ
	BaoXiang_jsjqb	[	8	]	=	1383		BaoXiang_jsjqb_Rad	[	8	]	=	155 		BaoXiang_jsjqb_Count	[	8	]	=	1	--	Бъ»кЅЈ
	BaoXiang_jsjqb	[	9	]	=	0021		BaoXiang_jsjqb_Rad	[	9	]	=	155 		BaoXiang_jsjqb_Count	[	9	]	=	1	--	іе·жЅЈ
	BaoXiang_jsjqb	[	10	]	=	1378		BaoXiang_jsjqb_Rad	[	10	]	=	155 		BaoXiang_jsjqb_Count	[	10	]	=	1	--	»рБъЅЈ
	BaoXiang_jsjqb	[	11	]	=	0020		BaoXiang_jsjqb_Rad	[	11	]	=	14000 		BaoXiang_jsjqb_Count	[	11	]	=	1	--	ХЅКїЅЈ
	BaoXiang_jsjqb	[	12	]	=	1372		BaoXiang_jsjqb_Rad	[	12	]	=	14000 		BaoXiang_jsjqb_Count	[	12	]	=	1	--	тЇіПЅЈ
	BaoXiang_jsjqb	[	13	]	=	1373		BaoXiang_jsjqb_Rad	[	13	]	=	14000 		BaoXiang_jsjqb_Count	[	13	]	=	1	--	Жп±шЕеЅЈ
	BaoXiang_jsjqb	[	14	]	=	1377		BaoXiang_jsjqb_Rad	[	14	]	=	14000 		BaoXiang_jsjqb_Count	[	14	]	=	1	--	БїІъХЅКїЅЈ
	BaoXiang_jsjqb	[	15	]	=	1381		BaoXiang_jsjqb_Rad	[	15	]	=	14000 		BaoXiang_jsjqb_Count	[	15	]	=	1	--	КҐХЯЅЈ
	BaoXiang_jsjqb	[	16	]	=	1382		BaoXiang_jsjqb_Rad	[	16	]	=	14000 		BaoXiang_jsjqb_Count	[	16	]	=	1	--	НЛµРЅЈ
	BaoXiang_jsjqb	[	17	]	=	1386		BaoXiang_jsjqb_Rad	[	17	]	=	14000 		BaoXiang_jsjqb_Count	[	17	]	=	1	--	Зї»ЇХЅКїЅЈ
																						


																						
--	ГФЦ®ІГѕц±¦Пд24РН												w0013									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmzcja_Qua	=	24	 				BaoXiang_jsmzcja_Mxcount	=	19												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmzcja	=	{}					BaoXiang_jsmzcja_Rad	=	{}					BaoXiang_jsmzcja_Count	=	{}					
	BaoXiang_jsmzcja	[	1	]	=	1892		BaoXiang_jsmzcja_Rad	[	1	]	=	30 		BaoXiang_jsmzcja_Count	[	1	]	=	1	--	--ОЫДа·вУЎµДЦдОЖЦШЅЈ
	BaoXiang_jsmzcja	[	2	]	=	1893		BaoXiang_jsmzcja_Rad	[	2	]	=	20 		BaoXiang_jsmzcja_Count	[	2	]	=	1	--	--БТСж·вУЎµД»ГБйЦ®ЕШПш
	BaoXiang_jsmzcja	[	3	]	=	1894		BaoXiang_jsmzcja_Rad	[	3	]	=	1 		BaoXiang_jsmzcja_Count	[	3	]	=	1	--	є®±щ·вУЎµДГФЦ®ІГѕц
	BaoXiang_jsmzcja	[	4	]	=	3308		BaoXiang_jsmzcja_Rad	[	4	]	=	23 		BaoXiang_jsmzcja_Count	[	4	]	=	1	--	ГФЦ®ІГѕц±¦Пд24РН
	BaoXiang_jsmzcja	[	5	]	=	1375		BaoXiang_jsmzcja_Rad	[	5	]	=	23 		BaoXiang_jsmzcja_Count	[	5	]	=	1	--	КЮНхё«
	BaoXiang_jsmzcja	[	6	]	=	1384		BaoXiang_jsmzcja_Rad	[	6	]	=	23 		BaoXiang_jsmzcja_Count	[	6	]	=	1	--	ЛАНцЦ®·з
	BaoXiang_jsmzcja	[	7	]	=	0018		BaoXiang_jsmzcja_Rad	[	7	]	=	23 		BaoXiang_jsmzcja_Count	[	7	]	=	1	--	АЧИР
	BaoXiang_jsmzcja	[	8	]	=	1374		BaoXiang_jsmzcja_Rad	[	8	]	=	180 		BaoXiang_jsmzcja_Count	[	8	]	=	1	--	ІФБъЅЈ
	BaoXiang_jsmzcja	[	9	]	=	0017		BaoXiang_jsmzcja_Rad	[	9	]	=	180 		BaoXiang_jsmzcja_Count	[	9	]	=	1	--	Бъ№ЗЅЈ
	BaoXiang_jsmzcja	[	10	]	=	1383		BaoXiang_jsmzcja_Rad	[	10	]	=	180 		BaoXiang_jsmzcja_Count	[	10	]	=	1	--	Бъ»кЅЈ
	BaoXiang_jsmzcja	[	11	]	=	0021		BaoXiang_jsmzcja_Rad	[	11	]	=	180 		BaoXiang_jsmzcja_Count	[	11	]	=	1	--	іе·жЅЈ
	BaoXiang_jsmzcja	[	12	]	=	1378		BaoXiang_jsmzcja_Rad	[	12	]	=	180 		BaoXiang_jsmzcja_Count	[	12	]	=	1	--	»рБъЅЈ
	BaoXiang_jsmzcja	[	13	]	=	0020		BaoXiang_jsmzcja_Rad	[	13	]	=	13000 		BaoXiang_jsmzcja_Count	[	13	]	=	1	--	ХЅКїЅЈ
	BaoXiang_jsmzcja	[	14	]	=	1372		BaoXiang_jsmzcja_Rad	[	14	]	=	13000 		BaoXiang_jsmzcja_Count	[	14	]	=	1	--	тЇіПЅЈ
	BaoXiang_jsmzcja	[	15	]	=	1373		BaoXiang_jsmzcja_Rad	[	15	]	=	13000 		BaoXiang_jsmzcja_Count	[	15	]	=	1	--	Жп±шЕеЅЈ
	BaoXiang_jsmzcja	[	16	]	=	1377		BaoXiang_jsmzcja_Rad	[	16	]	=	13000 		BaoXiang_jsmzcja_Count	[	16	]	=	1	--	БїІъХЅКїЅЈ
	BaoXiang_jsmzcja	[	17	]	=	1381		BaoXiang_jsmzcja_Rad	[	17	]	=	13000 		BaoXiang_jsmzcja_Count	[	17	]	=	1	--	КҐХЯЅЈ
	BaoXiang_jsmzcja	[	18	]	=	1382		BaoXiang_jsmzcja_Rad	[	18	]	=	13000 		BaoXiang_jsmzcja_Count	[	18	]	=	1	--	НЛµРЅЈ
	BaoXiang_jsmzcja	[	19	]	=	1386		BaoXiang_jsmzcja_Rad	[	19	]	=	13000 		BaoXiang_jsmzcja_Count	[	19	]	=	1	--	Зї»ЇХЅКїЅЈ

																						
--	ГФЦ®ІГѕц±¦Пд23РН												w0013									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmzcjb_Qua	=	23	 				BaoXiang_jsmzcjb_Mxcount	=	19												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmzcjb	=	{}					BaoXiang_jsmzcjb_Rad	=	{}					BaoXiang_jsmzcjb_Count	=	{}					
	BaoXiang_jsmzcjb	[	1	]	=	1892		BaoXiang_jsmzcjb_Rad	[	1	]	=	30 		BaoXiang_jsmzcjb_Count	[	1	]	=	1	--	--ОЫДа·вУЎµДЦдОЖЦШЅЈ
	BaoXiang_jsmzcjb	[	2	]	=	1893		BaoXiang_jsmzcjb_Rad	[	2	]	=	10 		BaoXiang_jsmzcjb_Count	[	2	]	=	1	--	--БТСж·вУЎµД»ГБйЦ®ЕШПш
	BaoXiang_jsmzcjb	[	3	]	=	1894		BaoXiang_jsmzcjb_Rad	[	3	]	=	5 		BaoXiang_jsmzcjb_Count	[	3	]	=	1	--	є®±щ·вУЎµДГФЦ®ІГѕц
	BaoXiang_jsmzcjb	[	4	]	=	3309		BaoXiang_jsmzcjb_Rad	[	4	]	=	15 		BaoXiang_jsmzcjb_Count	[	4	]	=	1	--	ГФЦ®ІГѕц±¦Пд23РН
	BaoXiang_jsmzcjb	[	5	]	=	1375		BaoXiang_jsmzcjb_Rad	[	5	]	=	15 		BaoXiang_jsmzcjb_Count	[	5	]	=	1	--	КЮНхё«
	BaoXiang_jsmzcjb	[	6	]	=	1384		BaoXiang_jsmzcjb_Rad	[	6	]	=	15 		BaoXiang_jsmzcjb_Count	[	6	]	=	1	--	ЛАНцЦ®·з
	BaoXiang_jsmzcjb	[	7	]	=	0018		BaoXiang_jsmzcjb_Rad	[	7	]	=	15 		BaoXiang_jsmzcjb_Count	[	7	]	=	1	--	АЧИР
	BaoXiang_jsmzcjb	[	8	]	=	1374		BaoXiang_jsmzcjb_Rad	[	8	]	=	155 		BaoXiang_jsmzcjb_Count	[	8	]	=	1	--	ІФБъЅЈ
	BaoXiang_jsmzcjb	[	9	]	=	0017		BaoXiang_jsmzcjb_Rad	[	9	]	=	155 		BaoXiang_jsmzcjb_Count	[	9	]	=	1	--	Бъ№ЗЅЈ
	BaoXiang_jsmzcjb	[	10	]	=	1383		BaoXiang_jsmzcjb_Rad	[	10	]	=	155 		BaoXiang_jsmzcjb_Count	[	10	]	=	1	--	Бъ»кЅЈ
	BaoXiang_jsmzcjb	[	11	]	=	0021		BaoXiang_jsmzcjb_Rad	[	11	]	=	155 		BaoXiang_jsmzcjb_Count	[	11	]	=	1	--	іе·жЅЈ
	BaoXiang_jsmzcjb	[	12	]	=	1378		BaoXiang_jsmzcjb_Rad	[	12	]	=	155 		BaoXiang_jsmzcjb_Count	[	12	]	=	1	--	»рБъЅЈ
	BaoXiang_jsmzcjb	[	13	]	=	0020		BaoXiang_jsmzcjb_Rad	[	13	]	=	14000 		BaoXiang_jsmzcjb_Count	[	13	]	=	1	--	ХЅКїЅЈ
	BaoXiang_jsmzcjb	[	14	]	=	1372		BaoXiang_jsmzcjb_Rad	[	14	]	=	14000 		BaoXiang_jsmzcjb_Count	[	14	]	=	1	--	тЇіПЅЈ
	BaoXiang_jsmzcjb	[	15	]	=	1373		BaoXiang_jsmzcjb_Rad	[	15	]	=	14000 		BaoXiang_jsmzcjb_Count	[	15	]	=	1	--	Жп±шЕеЅЈ
	BaoXiang_jsmzcjb	[	16	]	=	1377		BaoXiang_jsmzcjb_Rad	[	16	]	=	14000 		BaoXiang_jsmzcjb_Count	[	16	]	=	1	--	БїІъХЅКїЅЈ
	BaoXiang_jsmzcjb	[	17	]	=	1381		BaoXiang_jsmzcjb_Rad	[	17	]	=	14000 		BaoXiang_jsmzcjb_Count	[	17	]	=	1	--	КҐХЯЅЈ
	BaoXiang_jsmzcjb	[	18	]	=	1382		BaoXiang_jsmzcjb_Rad	[	18	]	=	14000 		BaoXiang_jsmzcjb_Count	[	18	]	=	1	--	НЛµРЅЈ
	BaoXiang_jsmzcjb	[	19	]	=	1386		BaoXiang_jsmzcjb_Rad	[	19	]	=	14000 		BaoXiang_jsmzcjb_Count	[	19	]	=	1	--	Зї»ЇХЅКїЅЈ

																						
--	Л«ЅЈїшјЧ±¦Пд24РН												e0106									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jssjkja_Qua	=	24	 				BaoXiang_jssjkja_Mxcount	=	12												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jssjkja	=	{}					BaoXiang_jssjkja_Rad	=	{}					BaoXiang_jssjkja_Count	=	{}					
	BaoXiang_jssjkja	[	1	]	=	1884		BaoXiang_jssjkja_Rad	[	1	]	=	10 		BaoXiang_jssjkja_Count	[	1	]	=	1	--	І»ЛА·вУЎµДУДБйошјЧ
	BaoXiang_jssjkja	[	2	]	=	1888		BaoXiang_jssjkja_Rad	[	2	]	=	30 		BaoXiang_jssjkja_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЧзЦдЦ®БйёЦјЧ
	BaoXiang_jssjkja	[	3	]	=	1889		BaoXiang_jssjkja_Rad	[	3	]	=	20 		BaoXiang_jssjkja_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйХЅјЧ
	BaoXiang_jssjkja	[	4	]	=	1890		BaoXiang_jssjkja_Rad	[	4	]	=	1 		BaoXiang_jssjkja_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦ®ХЅјЧ
	BaoXiang_jssjkja	[	5	]	=	0396		BaoXiang_jssjkja_Rad	[	5	]	=	2000		BaoXiang_jssjkja_Count	[	5	]	=	1	--	ТюГШЦ®јЧ
	BaoXiang_jssjkja	[	6	]	=	4150		BaoXiang_jssjkja_Rad	[	6	]	=	2000 		BaoXiang_jssjkja_Count	[	6	]	=	1	--	ЙсКҐХЅјЧ
	BaoXiang_jssjkja	[	7	]	=	0304		BaoXiang_jssjkja_Rad	[	7	]	=	2500		BaoXiang_jssjkja_Count	[	7	]	=	1	--	µдАсёЦјЧ
	BaoXiang_jssjkja	[	8	]	=	1931		BaoXiang_jssjkja_Rad	[	8	]	=	2500 		BaoXiang_jssjkja_Count	[	8	]	=	1	--	чичлХЅјЧ
	BaoXiang_jssjkja	[	9	]	=	0302		BaoXiang_jssjkja_Rad	[	9	]	=	22400 		BaoXiang_jssjkja_Count	[	9	]	=	1	--	Зб±гёЦјЧ
	BaoXiang_jssjkja	[	10	]	=	0303		BaoXiang_jssjkja_Rad	[	10	]	=	22400 		BaoXiang_jssjkja_Count	[	10	]	=	1	--	¶ЖТшёЦјЧ
	BaoXiang_jssjkja	[	11	]	=	1929		BaoXiang_jssjkja_Rad	[	11	]	=	22400 		BaoXiang_jssjkja_Count	[	11	]	=	1	--	јІ·зХЅјЧ
	BaoXiang_jssjkja	[	12	]	=	1930		BaoXiang_jssjkja_Rad	[	12	]	=	22400 		BaoXiang_jssjkja_Count	[	12	]	=	1	--	ОчЛ№ХЅјЧ

																						
--	Л«ЅЈїшјЧ±¦Пд23РН												e0106									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jssjkjb_Qua	=	23	 				BaoXiang_jssjkjb_Mxcount	=	12												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jssjkjb	=	{}					BaoXiang_jssjkjb_Rad	=	{}					BaoXiang_jssjkjb_Count	=	{}					
	BaoXiang_jssjkjb	[	1	]	=	1884		BaoXiang_jssjkjb_Rad	[	1	]	=	10 		BaoXiang_jssjkjb_Count	[	1	]	=	1	--	І»ЛА·вУЎµДУДБйошјЧ
	BaoXiang_jssjkjb	[	2	]	=	1888		BaoXiang_jssjkjb_Rad	[	2	]	=	30 		BaoXiang_jssjkjb_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЧзЦдЦ®БйёЦјЧ
	BaoXiang_jssjkjb	[	3	]	=	1889		BaoXiang_jssjkjb_Rad	[	3	]	=	10 		BaoXiang_jssjkjb_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйХЅјЧ
	BaoXiang_jssjkjb	[	4	]	=	1890		BaoXiang_jssjkjb_Rad	[	4	]	=	5 		BaoXiang_jssjkjb_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦ®ХЅјЧ
	BaoXiang_jssjkjb	[	5	]	=	0396		BaoXiang_jssjkjb_Rad	[	5	]	=	1000 		BaoXiang_jssjkjb_Count	[	5	]	=	1	--	ТюГШЦ®јЧ
	BaoXiang_jssjkjb	[	6	]	=	4150		BaoXiang_jssjkjb_Rad	[	6	]	=	1000 		BaoXiang_jssjkjb_Count	[	6	]	=	1	--	ЙсКҐХЅјЧ
	BaoXiang_jssjkjb	[	7	]	=	0304		BaoXiang_jssjkjb_Rad	[	7	]	=	2000		BaoXiang_jssjkjb_Count	[	7	]	=	1	--	µдАсёЦјЧ
	BaoXiang_jssjkjb	[	8	]	=	1931		BaoXiang_jssjkjb_Rad	[	8	]	=	2000 		BaoXiang_jssjkjb_Count	[	8	]	=	1	--	чичлХЅјЧ
	BaoXiang_jssjkjb	[	9	]	=	0302		BaoXiang_jssjkjb_Rad	[	9	]	=	23000 		BaoXiang_jssjkjb_Count	[	9	]	=	1	--	Зб±гёЦјЧ
	BaoXiang_jssjkjb	[	10	]	=	0303		BaoXiang_jssjkjb_Rad	[	10	]	=	23000 		BaoXiang_jssjkjb_Count	[	10	]	=	1	--	¶ЖТшёЦјЧ
	BaoXiang_jssjkjb	[	11	]	=	1929		BaoXiang_jssjkjb_Rad	[	11	]	=	23000 		BaoXiang_jssjkjb_Count	[	11	]	=	1	--	јІ·зХЅјЧ
	BaoXiang_jssjkjb	[	12	]	=	1930		BaoXiang_jssjkjb_Rad	[	12	]	=	23000 		BaoXiang_jssjkjb_Count	[	12	]	=	1	--	ОчЛ№ХЅјЧ
																						

																						
--	ѕС»чїшјЧ±¦Пд24РН												e0119									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jszjkja_Qua	=	24	 				BaoXiang_jszjkja_Mxcount	=	13												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jszjkja	=	{}					BaoXiang_jszjkja_Rad	=	{}					BaoXiang_jszjkja_Count	=	{}					
	BaoXiang_jszjkja	[	1	]	=	1898		BaoXiang_jszjkja_Rad	[	1	]	=	10 		BaoXiang_jszjkja_Count	[	1	]	=	1	--	І»ЛА·вУЎµДНцБй¶МЕЫ
	BaoXiang_jszjkja	[	2	]	=	1899		BaoXiang_jszjkja_Rad	[	2	]	=	30 		BaoXiang_jszjkja_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦдОЖЅфЙнТВ
	BaoXiang_jszjkja	[	3	]	=	1900		BaoXiang_jszjkja_Rad	[	3	]	=	20 		BaoXiang_jszjkja_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйНвМЧ
	BaoXiang_jszjkja	[	4	]	=	1901		BaoXiang_jszjkja_Rad	[	4	]	=	1 		BaoXiang_jszjkja_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦ®¶·Ес
	BaoXiang_jszjkja	[	5	]	=	3312		BaoXiang_jszjkja_Rad	[	5	]	=	1330 		BaoXiang_jszjkja_Count	[	5	]	=	1	--	ѕС»чїшјЧ±¦Пд24РН
	BaoXiang_jszjkja	[	6	]	=	0400		BaoXiang_jszjkja_Rad	[	6	]	=	1330 		BaoXiang_jszjkja_Count	[	6	]	=	1	--	ЙдИХНвМЧ
	BaoXiang_jszjkja	[	7	]	=	4152		BaoXiang_jszjkja_Rad	[	7	]	=	1330 		BaoXiang_jszjkja_Count	[	7	]	=	1	--	КЁрХТВ·ю
	BaoXiang_jszjkja	[	8	]	=	0316		BaoXiang_jszjkja_Rad	[	8	]	=	2500 		BaoXiang_jszjkja_Count	[	8	]	=	1	--	°ЯрЇТВ·ю
	BaoXiang_jszjkja	[	9	]	=	0317		BaoXiang_jszjkja_Rad	[	9	]	=	2500 		BaoXiang_jszjkja_Count	[	9	]	=	1	--	ГНЗЭТВ·ю
	BaoXiang_jszjkja	[	10	]	=	4151		BaoXiang_jszjkja_Rad	[	10	]	=	5000 		BaoXiang_jszjkja_Count	[	10	]	=	1	--	СёУҐТВ·ю
	BaoXiang_jszjkja	[	11	]	=	0317		BaoXiang_jszjkja_Rad	[	11	]	=	5000 		BaoXiang_jszjkja_Count	[	11	]	=	1	--	ГНЗЭТВ·ю
	BaoXiang_jszjkja	[	12	]	=	0314		BaoXiang_jszjkja_Rad	[	12	]	=	40000 	BaoXiang_jszjkja_Count	[	12	]	=	1	--	ГфЅЭТВ·ю
	BaoXiang_jszjkja	[	13	]	=	0315		BaoXiang_jszjkja_Rad	[	13	]	=	40000		BaoXiang_jszjkja_Count	[	13	]	=	1	--	ЙЅИёТВ·ю
																						
																						
																						
--	ѕС»чїшјЧ±¦Пд23РН												e0119									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jszjkjb_Qua	=	23	 				BaoXiang_jszjkjb_Mxcount	=	13												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jszjkjb	=	{}					BaoXiang_jszjkjb_Rad	=	{}					BaoXiang_jszjkjb_Count	=	{}					
	BaoXiang_jszjkjb	[	1	]	=	1898		BaoXiang_jszjkjb_Rad	[	1	]	=	10		BaoXiang_jszjkjb_Count	[	1	]	=	1	--	І»ЛА·вУЎµДНцБй¶МЕЫ
	BaoXiang_jszjkjb	[	2	]	=	1899		BaoXiang_jszjkjb_Rad	[	2	]	=	30 		BaoXiang_jszjkjb_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦдОЖЅфЙнТВ
	BaoXiang_jszjkjb	[	3	]	=	1900		BaoXiang_jszjkjb_Rad	[	3	]	=	10 		BaoXiang_jszjkjb_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйНвМЧ
	BaoXiang_jszjkjb	[	4	]	=	1901		BaoXiang_jszjkjb_Rad	[	4	]	=	5 		BaoXiang_jszjkjb_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦ®¶·Ес
	BaoXiang_jszjkjb	[	5	]	=	3313		BaoXiang_jszjkjb_Rad	[	5	]	=	700 		BaoXiang_jszjkjb_Count	[	5	]	=	1	--	ѕС»чїшјЧ±¦Пд23РН
	BaoXiang_jszjkjb	[	6	]	=	0400		BaoXiang_jszjkjb_Rad	[	6	]	=	700 		BaoXiang_jszjkjb_Count	[	6	]	=	1	--	ЙдИХНвМЧ
	BaoXiang_jszjkjb	[	7	]	=	4152		BaoXiang_jszjkjb_Rad	[	7	]	=	700 		BaoXiang_jszjkjb_Count	[	7	]	=	1	--	КЁрХТВ·ю
	BaoXiang_jszjkjb	[	8	]	=	0316		BaoXiang_jszjkjb_Rad	[	8	]	=	2000 		BaoXiang_jszjkjb_Count	[	8	]	=	1	--	°ЯрЇТВ·ю
	BaoXiang_jszjkjb	[	9	]	=	0317		BaoXiang_jszjkjb_Rad	[	9	]	=	2000 		BaoXiang_jszjkjb_Count	[	9	]	=	1	--	ГНЗЭТВ·ю
	BaoXiang_jszjkjb	[	10	]	=	4151		BaoXiang_jszjkjb_Rad	[	10	]	=	5000 		BaoXiang_jszjkjb_Count	[	10	]	=	1	--	СёУҐТВ·ю
	BaoXiang_jszjkjb	[	11	]	=	0317		BaoXiang_jszjkjb_Rad	[	11	]	=	5000 		BaoXiang_jszjkjb_Count	[	11	]	=	1	--	ГНЗЭТВ·ю
	BaoXiang_jszjkjb	[	12	]	=	0314		BaoXiang_jszjkjb_Rad	[	12	]	=	42000 	BaoXiang_jszjkjb_Count	[	12	]	=	1	--	ГфЅЭТВ·ю
	BaoXiang_jszjkjb	[	13	]	=	0315		BaoXiang_jszjkjb_Rad	[	13	]	=	42000		BaoXiang_jszjkjb_Count	[	13	]	=	1	--	ЙЅИёТВ·ю

																						
																						
--	КҐЦ°їшјЧ±¦Пд24РН												e0178									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsszkja_Qua	=	24	 				BaoXiang_jsszkja_Mxcount	=	19												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsszkja	=	{}					BaoXiang_jsszkja_Rad	=	{}					BaoXiang_jsszkja_Count	=	{}					
	BaoXiang_jsszkja	[	1	]	=	1910		BaoXiang_jsszkja_Rad	[	1	]	=	10 		BaoXiang_jsszkja_Count	[	1	]	=	1	--	І»ЛА·вУЎµДОЧ¶ѕ·ЁЕЫ
	BaoXiang_jsszkja	[	2	]	=	1911		BaoXiang_jsszkja_Rad	[	2	]	=	30 		BaoXiang_jsszkja_Count	[	2	]	=	1	--	ОЫДа·вУЎµД·ыОДНвТВ
	BaoXiang_jsszkja	[	3	]	=	1912		BaoXiang_jsszkja_Rad	[	3	]	=	20 		BaoXiang_jsszkja_Count	[	3	]	=	1	--	БТСж·вУЎµД»Г·ЁЦ®ЕЫ
	BaoXiang_jsszkja	[	4	]	=	1913		BaoXiang_jsszkja_Rad	[	4	]	=	1 		BaoXiang_jsszkja_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦ®·ЁЕЫ
	BaoXiang_jsszkja	[	5	]	=	0406		BaoXiang_jsszkja_Rad	[	5	]	=	700 		BaoXiang_jsszkja_Count	[	5	]	=	1	--	·ЙМмТВ·ю
	BaoXiang_jsszkja	[	6	]	=	4158		BaoXiang_jsszkja_Rad	[	6	]	=	700 		BaoXiang_jsszkja_Count	[	6	]	=	1	--	Д§Б¦НГЧУТВ·ю
	BaoXiang_jsszkja	[	7	]	=	4159		BaoXiang_jsszkja_Rad	[	7	]	=	700 		BaoXiang_jsszkja_Count	[	7	]	=	1	--	КҐ№вТВ·ю
	BaoXiang_jsszkja	[	8	]	=	4160		BaoXiang_jsszkja_Rad	[	8	]	=	700 		BaoXiang_jsszkja_Count	[	8	]	=	1	--	ѕхРСНГЧУТВ·ю
	BaoXiang_jsszkja	[	9	]	=	4157		BaoXiang_jsszkja_Rad	[	9	]	=	700 		BaoXiang_jsszkja_Count	[	9	]	=	1	--	КҐТфТВ·ю
	BaoXiang_jsszkja	[	10	]	=	0391		BaoXiang_jsszkja_Rad	[	10	]	=	2500 		BaoXiang_jsszkja_Count	[	10	]	=	1	--	ёЯј¶НГТВ·ю
	BaoXiang_jsszkja	[	11	]	=	0392		BaoXiang_jsszkja_Rad	[	11	]	=	2500 		BaoXiang_jsszkja_Count	[	11	]	=	1	--	±¦±ґНГТВ·ю
	BaoXiang_jsszkja	[	12	]	=	0393		BaoXiang_jsszkja_Rad	[	12	]	=	2500 		BaoXiang_jsszkja_Count	[	12	]	=	1	--	ЧЈёЈНГТВ·ю
	BaoXiang_jsszkja	[	13	]	=	0394		BaoXiang_jsszkja_Rad	[	13	]	=	2500 		BaoXiang_jsszkja_Count	[	13	]	=	1	--	МмґНТВ·ю
	BaoXiang_jsszkja	[	14	]	=	1960		BaoXiang_jsszkja_Rad	[	14	]	=	2500 		BaoXiang_jsszkja_Count	[	14	]	=	1	--	ПЈ¶ыНвМЧ
	BaoXiang_jsszkja	[	15	]	=	1961		BaoXiang_jsszkja_Rad	[	15	]	=	2500 		BaoXiang_jsszkja_Count	[	15	]	=	1	--	рЅ·пНвМЧ
	BaoXiang_jsszkja	[	16	]	=	1959		BaoXiang_jsszkja_Rad	[	16	]	=	20000 	BaoXiang_jsszkja_Count	[	16	]	=	1	--	Т«ИХНвТВ
	BaoXiang_jsszkja	[	17	]	=	0382		BaoXiang_jsszkja_Rad	[	17	]	=	20000 	BaoXiang_jsszkja_Count	[	17	]	=	1	--	і¤¶ъНГТВ·ю
	BaoXiang_jsszkja	[	18	]	=	0388		BaoXiang_jsszkja_Rad	[	18	]	=	20000 	BaoXiang_jsszkja_Count	[	18	]	=	1	--	їмАЦНГТВ·ю
	BaoXiang_jsszkja	[	19	]	=	0392		BaoXiang_jsszkja_Rad	[	19	]	=	20000 	BaoXiang_jsszkja_Count	[	19	]	=	1	--	±¦±ґНГТВ·ю

																						
--	КҐЦ°їшјЧ±¦Пд23РН												e0178									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsszkjb_Qua	=	23	 				BaoXiang_jsszkjb_Mxcount	=	19												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsszkjb	=	{}					BaoXiang_jsszkjb_Rad	=	{}					BaoXiang_jsszkjb_Count	=	{}					
	BaoXiang_jsszkjb	[	1	]	=	1910		BaoXiang_jsszkjb_Rad	[	1	]	=	10 		BaoXiang_jsszkjb_Count	[	1	]	=	1	--	І»ЛА·вУЎµДОЧ¶ѕ·ЁЕЫ
	BaoXiang_jsszkjb	[	2	]	=	1911		BaoXiang_jsszkjb_Rad	[	2	]	=	30 		BaoXiang_jsszkjb_Count	[	2	]	=	1	--	ОЫДа·вУЎµД·ыОДНвТВ
	BaoXiang_jsszkjb	[	3	]	=	1912		BaoXiang_jsszkjb_Rad	[	3	]	=	10 		BaoXiang_jsszkjb_Count	[	3	]	=	1	--	БТСж·вУЎµД»Г·ЁЦ®ЕЫ
	BaoXiang_jsszkjb	[	4	]	=	1913		BaoXiang_jsszkjb_Rad	[	4	]	=	5 		BaoXiang_jsszkjb_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦ®·ЁЕЫ
	BaoXiang_jsszkjb	[	5	]	=	0406		BaoXiang_jsszkjb_Rad	[	5	]	=	400 		BaoXiang_jsszkjb_Count	[	5	]	=	1	--	·ЙМмТВ·ю
	BaoXiang_jsszkjb	[	6	]	=	4158		BaoXiang_jsszkjb_Rad	[	6	]	=	400 		BaoXiang_jsszkjb_Count	[	6	]	=	1	--	Д§Б¦НГЧУТВ·ю
	BaoXiang_jsszkjb	[	7	]	=	4159		BaoXiang_jsszkjb_Rad	[	7	]	=	400 		BaoXiang_jsszkjb_Count	[	7	]	=	1	--	КҐ№вТВ·ю
	BaoXiang_jsszkjb	[	8	]	=	4160		BaoXiang_jsszkjb_Rad	[	8	]	=	400 		BaoXiang_jsszkjb_Count	[	8	]	=	1	--	ѕхРСНГЧУТВ·ю
	BaoXiang_jsszkjb	[	9	]	=	4157		BaoXiang_jsszkjb_Rad	[	9	]	=	400 		BaoXiang_jsszkjb_Count	[	9	]	=	1	--	КҐТфТВ·ю
	BaoXiang_jsszkjb	[	10	]	=	0391		BaoXiang_jsszkjb_Rad	[	10	]	=	2000 		BaoXiang_jsszkjb_Count	[	10	]	=	1	--	ёЯј¶НГТВ·ю
	BaoXiang_jsszkjb	[	11	]	=	0392		BaoXiang_jsszkjb_Rad	[	11	]	=	2000 		BaoXiang_jsszkjb_Count	[	11	]	=	1	--	±¦±ґНГТВ·ю
	BaoXiang_jsszkjb	[	12	]	=	0393		BaoXiang_jsszkjb_Rad	[	12	]	=	2000 		BaoXiang_jsszkjb_Count	[	12	]	=	1	--	ЧЈёЈНГТВ·ю
	BaoXiang_jsszkjb	[	13	]	=	0394		BaoXiang_jsszkjb_Rad	[	13	]	=	2000 		BaoXiang_jsszkjb_Count	[	13	]	=	1	--	МмґНТВ·ю
	BaoXiang_jsszkjb	[	14	]	=	1960		BaoXiang_jsszkjb_Rad	[	14	]	=	2000		BaoXiang_jsszkjb_Count	[	14	]	=	1	--	ПЈ¶ыНвМЧ
	BaoXiang_jsszkjb	[	15	]	=	1961		BaoXiang_jsszkjb_Rad	[	15	]	=	2000 		BaoXiang_jsszkjb_Count	[	15	]	=	1	--	рЅ·пНвМЧ
	BaoXiang_jsszkjb	[	16	]	=	1959		BaoXiang_jsszkjb_Rad	[	16	]	=	21110 	BaoXiang_jsszkjb_Count	[	16	]	=	1	--	Т«ИХНвТВ
	BaoXiang_jsszkjb	[	17	]	=	0382		BaoXiang_jsszkjb_Rad	[	17	]	=	21110 	BaoXiang_jsszkjb_Count	[	17	]	=	1	--	і¤¶ъНГТВ·ю
	BaoXiang_jsszkjb	[	18	]	=	0388		BaoXiang_jsszkjb_Rad	[	18	]	=	21110 	BaoXiang_jsszkjb_Count	[	18	]	=	1	--	їмАЦНГТВ·ю
	BaoXiang_jsszkjb	[	19	]	=	0392		BaoXiang_jsszkjb_Rad	[	19	]	=	21110 	BaoXiang_jsszkjb_Count	[	19	]	=	1	--	±¦±ґНГТВ·ю


																						
--	·вУЎїшјЧ±¦Пд24РН												e0176									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsfykja_Qua	=	24	 				BaoXiang_jsfykja_Mxcount	=	21												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsfykja	=	{}					BaoXiang_jsfykja_Rad	=	{}					BaoXiang_jsfykja_Count	=	{}					
	BaoXiang_jsfykja	[	1	]	=	1910		BaoXiang_jsfykja_Rad	[	1	]	=	10 		BaoXiang_jsfykja_Count	[	1	]	=	1	--	І»ЛА·вУЎµДОЧ¶ѕ·ЁЕЫ
	BaoXiang_jsfykja	[	2	]	=	1917		BaoXiang_jsfykja_Rad	[	2	]	=	30 		BaoXiang_jsfykja_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦдОДЦ®ЕЫ
	BaoXiang_jsfykja	[	3	]	=	1918		BaoXiang_jsfykja_Rad	[	3	]	=	20 		BaoXiang_jsfykja_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГЦдЦ®ЕЫ
	BaoXiang_jsfykja	[	4	]	=	1919		BaoXiang_jsfykja_Rad	[	4	]	=	1 		BaoXiang_jsfykja_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦд·ЁЕЫ
	BaoXiang_jsfykja	[	5	]	=	0402		BaoXiang_jsfykja_Rad	[	5	]	=	700 		BaoXiang_jsfykja_Count	[	5	]	=	1	--	ЙсКїТВ·ю
	BaoXiang_jsfykja	[	6	]	=	0404		BaoXiang_jsfykja_Rad	[	6	]	=	700 		BaoXiang_jsfykja_Count	[	6	]	=	1	--	ЙсЖжРЬГЁТВ·ю
	BaoXiang_jsfykja	[	7	]	=	4161		BaoXiang_jsfykja_Rad	[	7	]	=	700 		BaoXiang_jsfykja_Count	[	7	]	=	1	--	ёґірТВ·ю
	BaoXiang_jsfykja	[	8	]	=	4162		BaoXiang_jsfykja_Rad	[	8	]	=	700		BaoXiang_jsfykja_Count	[	8	]	=	1	--	Д§Б¦єЈМЎТВ·ю
	BaoXiang_jsfykja	[	9	]	=	4163		BaoXiang_jsfykja_Rad	[	9	]	=	700 		BaoXiang_jsfykja_Count	[	9	]	=	1	--	іН·ЈХЯТВ·ю
	BaoXiang_jsfykja	[	10	]	=	4164		BaoXiang_jsfykja_Rad	[	10	]	=	700 		BaoXiang_jsfykja_Count	[	10	]	=	1	--	ѕхРСєЈМЎТВ·ю
	BaoXiang_jsfykja	[	11	]	=	0363		BaoXiang_jsfykja_Rad	[	11	]	=	2500 		BaoXiang_jsfykja_Count	[	11	]	=	1	--	ёЯј¶єЈМЎТВ·ю
	BaoXiang_jsfykja	[	12	]	=	0364		BaoXiang_jsfykja_Rad	[	12	]	=	2500 		BaoXiang_jsfykja_Count	[	12	]	=	1	--	ЧЈёЈєЈМЎТВ·ю
	BaoXiang_jsfykja	[	13	]	=	0376		BaoXiang_jsfykja_Rad	[	13	]	=	2500 		BaoXiang_jsfykja_Count	[	13	]	=	1	--	ЦОБЖХЯТВ·ю
	BaoXiang_jsfykja	[	14	]	=	0377		BaoXiang_jsfykja_Rad	[	14	]	=	2500 		BaoXiang_jsfykja_Count	[	14	]	=	1	--	±Ј»¤ХЯТВ·ю
	BaoXiang_jsfykja	[	15	]	=	1957		BaoXiang_jsfykja_Rad	[	15	]	=	2500 		BaoXiang_jsfykja_Count	[	15	]	=	1	--	УИµП°ІНвМЧ
	BaoXiang_jsfykja	[	16	]	=	1958		BaoXiang_jsfykja_Rad	[	16	]	=	2500 		BaoXiang_jsfykja_Count	[	16	]	=	1	--	ЦмИёНвМЧ
	BaoXiang_jsfykja	[	17	]	=	1956		BaoXiang_jsfykja_Rad	[	17	]	=	16000 	BaoXiang_jsfykja_Count	[	17	]	=	1	--	АдФВНвТВ
	BaoXiang_jsfykja	[	18	]	=	0385		BaoXiang_jsfykja_Rad	[	18	]	=	16000 	BaoXiang_jsfykja_Count	[	18	]	=	1	--	єЈМЎТВ·ю
	BaoXiang_jsfykja	[	19	]	=	0375		BaoXiang_jsfykja_Rad	[	19	]	=	16000 	BaoXiang_jsfykja_Count	[	19	]	=	1	--	Ф¶РРТВ·ю
	BaoXiang_jsfykja	[	20	]	=	0369		BaoXiang_jsfykja_Rad	[	20	]	=	16000 	BaoXiang_jsfykja_Count	[	20	]	=	1	--	КМХЯТВ·ю
	BaoXiang_jsfykja	[	21	]	=	0362		BaoXiang_jsfykja_Rad	[	21	]	=	16000 	BaoXiang_jsfykja_Count	[	21	]	=	1	--	±Д±ДКуТВ·ю

																						
--	·вУЎїшјЧ±¦Пд23РН												e0176									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsfykjb_Qua	=	23	 				BaoXiang_jsfykjb_Mxcount	=	21												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsfykjb	=	{}					BaoXiang_jsfykjb_Rad	=	{}					BaoXiang_jsfykjb_Count	=	{}					
	BaoXiang_jsfykjb	[	1	]	=	1910		BaoXiang_jsfykjb_Rad	[	1	]	=	10 		BaoXiang_jsfykjb_Count	[	1	]	=	1	--	І»ЛА·вУЎµДОЧ¶ѕ·ЁЕЫ
	BaoXiang_jsfykjb	[	2	]	=	1917		BaoXiang_jsfykjb_Rad	[	2	]	=	30 		BaoXiang_jsfykjb_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦдОДЦ®ЕЫ
	BaoXiang_jsfykjb	[	3	]	=	1918		BaoXiang_jsfykjb_Rad	[	3	]	=	10 		BaoXiang_jsfykjb_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГЦдЦ®ЕЫ
	BaoXiang_jsfykjb	[	4	]	=	1919		BaoXiang_jsfykjb_Rad	[	4	]	=	5 		BaoXiang_jsfykjb_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦд·ЁЕЫ
	BaoXiang_jsfykjb	[	5	]	=	0402		BaoXiang_jsfykjb_Rad	[	5	]	=	400 		BaoXiang_jsfykjb_Count	[	5	]	=	1	--	ЙсКїТВ·ю
	BaoXiang_jsfykjb	[	6	]	=	0404		BaoXiang_jsfykjb_Rad	[	6	]	=	400 		BaoXiang_jsfykjb_Count	[	6	]	=	1	--	ЙсЖжРЬГЁТВ·ю
	BaoXiang_jsfykjb	[	7	]	=	4161		BaoXiang_jsfykjb_Rad	[	7	]	=	400 		BaoXiang_jsfykjb_Count	[	7	]	=	1	--	ёґірТВ·ю
	BaoXiang_jsfykjb	[	8	]	=	4162		BaoXiang_jsfykjb_Rad	[	8	]	=	400 		BaoXiang_jsfykjb_Count	[	8	]	=	1	--	Д§Б¦єЈМЎТВ·ю
	BaoXiang_jsfykjb	[	9	]	=	4163		BaoXiang_jsfykjb_Rad	[	9	]	=	400 		BaoXiang_jsfykjb_Count	[	9	]	=	1	--	іН·ЈХЯТВ·ю
	BaoXiang_jsfykjb	[	10	]	=	4164		BaoXiang_jsfykjb_Rad	[	10	]	=	400 		BaoXiang_jsfykjb_Count	[	10	]	=	1	--	ѕхРСєЈМЎТВ·ю
	BaoXiang_jsfykjb	[	11	]	=	0363		BaoXiang_jsfykjb_Rad	[	11	]	=	2000 		BaoXiang_jsfykjb_Count	[	11	]	=	1	--	ёЯј¶єЈМЎТВ·ю
	BaoXiang_jsfykjb	[	12	]	=	0364		BaoXiang_jsfykjb_Rad	[	12	]	=	2000 		BaoXiang_jsfykjb_Count	[	12	]	=	1	--	ЧЈёЈєЈМЎТВ·ю
	BaoXiang_jsfykjb	[	13	]	=	0376		BaoXiang_jsfykjb_Rad	[	13	]	=	2000 		BaoXiang_jsfykjb_Count	[	13	]	=	1	--	ЦОБЖХЯТВ·ю
	BaoXiang_jsfykjb	[	14	]	=	0377		BaoXiang_jsfykjb_Rad	[	14	]	=	2000 		BaoXiang_jsfykjb_Count	[	14	]	=	1	--	±Ј»¤ХЯТВ·ю
	BaoXiang_jsfykjb	[	15	]	=	1957		BaoXiang_jsfykjb_Rad	[	15	]	=	2000 		BaoXiang_jsfykjb_Count	[	15	]	=	1	--	УИµП°ІНвМЧ
	BaoXiang_jsfykjb	[	16	]	=	1958		BaoXiang_jsfykjb_Rad	[	16	]	=	2000 		BaoXiang_jsfykjb_Count	[	16	]	=	1	--	ЦмИёНвМЧ
	BaoXiang_jsfykjb	[	17	]	=	1956		BaoXiang_jsfykjb_Rad	[	17	]	=	17000 	BaoXiang_jsfykjb_Count	[	17	]	=	1	--	АдФВНвТВ
	BaoXiang_jsfykjb	[	18	]	=	0385		BaoXiang_jsfykjb_Rad	[	18	]	=	17000 	BaoXiang_jsfykjb_Count	[	18	]	=	1	--	єЈМЎТВ·ю
	BaoXiang_jsfykjb	[	19	]	=	0375		BaoXiang_jsfykjb_Rad	[	19	]	=	17000 	BaoXiang_jsfykjb_Count	[	19	]	=	1	--	Ф¶РРТВ·ю
	BaoXiang_jsfykjb	[	20	]	=	0369		BaoXiang_jsfykjb_Rad	[	20	]	=	17000 	BaoXiang_jsfykjb_Count	[	20	]	=	1	--	КМХЯТВ·ю
	BaoXiang_jsfykjb	[	21	]	=	0362		BaoXiang_jsfykjb_Rad	[	21	]	=	17000 	BaoXiang_jsfykjb_Count	[	21	]	=	1	--	±Д±ДКуТВ·ю


																						
--	єЅєЈїшјЧ±¦Пд24РН												e0152									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jshhkja_Qua	=	24	 				BaoXiang_jshhkja_Mxcount	=	20												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jshhkja	=	{}					BaoXiang_jshhkja_Rad	=	{}					BaoXiang_jshhkja_Count	=	{}					
	BaoXiang_jshhkja	[	1	]	=	1924		BaoXiang_jshhkja_Rad	[	1	]	=	10 		BaoXiang_jshhkja_Count	[	1	]	=	1	--	І»ЛА·вУЎµДєЈСэЕы·з
	BaoXiang_jshhkja	[	2	]	=	1925		BaoXiang_jshhkja_Rad	[	2	]	=	30 		BaoXiang_jshhkja_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦд»р¶·Ес
	BaoXiang_jshhkja	[	3	]	=	1926		BaoXiang_jshhkja_Rad	[	3	]	=	20 		BaoXiang_jshhkja_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйЕы·з
	BaoXiang_jshhkja	[	4	]	=	1927		BaoXiang_jshhkja_Rad	[	4	]	=	1 		BaoXiang_jshhkja_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФ»Г¶·Ес
	BaoXiang_jshhkja	[	5	]	=	0411		BaoXiang_jshhkja_Rad	[	5	]	=	700 		BaoXiang_jshhkja_Count	[	5	]	=	1	--	Е­МОТВ·ю
	BaoXiang_jshhkja	[	6	]	=	0413		BaoXiang_jshhkja_Rad	[	6	]	=	700 		BaoXiang_jshhkja_Count	[	6	]	=	1	--	ИрКЮТВ·ю
	BaoXiang_jshhkja	[	7	]	=	4153		BaoXiang_jshhkja_Rad	[	7	]	=	700 		BaoXiang_jshhkja_Count	[	7	]	=	1	--	БмєЅТВ·ю
	BaoXiang_jshhkja	[	8	]	=	4154		BaoXiang_jshhkja_Rad	[	8	]	=	700 		BaoXiang_jshhkja_Count	[	8	]	=	1	--	Д§Б¦БъПєТВ·ю
	BaoXiang_jshhkja	[	9	]	=	4155		BaoXiang_jshhkja_Rad	[	9	]	=	700 		BaoXiang_jshhkja_Count	[	9	]	=	1	--	М¤АЛТВ·ю
	BaoXiang_jshhkja	[	10	]	=	4156		BaoXiang_jshhkja_Rad	[	10	]	=	700 		BaoXiang_jshhkja_Count	[	10	]	=	1	--	ѕхРСѕЮПєТВ·ю
	BaoXiang_jshhkja	[	11	]	=	0357		BaoXiang_jshhkja_Rad	[	11	]	=	3000 		BaoXiang_jshhkja_Count	[	11	]	=	1	--	ґуєЈПєТВ·ю
	BaoXiang_jshhkja	[	12	]	=	0358		BaoXiang_jshhkja_Rad	[	12	]	=	3000 		BaoXiang_jshhkja_Count	[	12	]	=	1	--	ѕЮЗЇєЈПєТВ·ю
	BaoXiang_jshhkja	[	13	]	=	0343		BaoXiang_jshhkja_Rad	[	13	]	=	3000 		BaoXiang_jshhkja_Count	[	13	]	=	1	--	м«·зТВ·ю
	BaoXiang_jshhkja	[	14	]	=	0344		BaoXiang_jshhkja_Rad	[	14	]	=	3000 		BaoXiang_jshhkja_Count	[	14	]	=	1	--	дцОРТВ·ю
	BaoXiang_jshhkja	[	15	]	=	0345		BaoXiang_jshhkja_Rad	[	15	]	=	3000 		BaoXiang_jshhkja_Count	[	15	]	=	1	--	·зЦ®ТВ·ю
	BaoXiang_jshhkja	[	16	]	=	0341		BaoXiang_jshhkja_Rad	[	16	]	=	16000 	BaoXiang_jshhkja_Count	[	16	]	=	1	--	јЧ°еТВ·ю
	BaoXiang_jshhkja	[	17	]	=	0342		BaoXiang_jshhkja_Rad	[	17	]	=	16000 	BaoXiang_jshhkja_Count	[	17	]	=	1	--	О¦ёЛТВ·ю
	BaoXiang_jshhkja	[	18	]	=	0353		BaoXiang_jshhkja_Rad	[	18	]	=	16000 	BaoXiang_jshhkja_Count	[	18	]	=	1	--	РЎСјТВ·ю
	BaoXiang_jshhkja	[	19	]	=	0356		BaoXiang_jshhkja_Rad	[	19	]	=	16000 	BaoXiang_jshhkja_Count	[	19	]	=	1	--	ТЎ°ЪСјТВ·ю
	BaoXiang_jshhkja	[	20	]	=	1977		BaoXiang_jshhkja_Rad	[	20	]	=	16000 	BaoXiang_jshhkja_Count	[	20	]	=	1	--	·з±©НвМЧ

																						
--	єЅєЈїшјЧ±¦Пд23РН												e0152									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jshhkjb_Qua	=	23	 				BaoXiang_jshhkjb_Mxcount	=	20												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jshhkjb	=	{}					BaoXiang_jshhkjb_Rad	=	{}					BaoXiang_jshhkjb_Count	=	{}					
	BaoXiang_jshhkjb	[	1	]	=	1924		BaoXiang_jshhkjb_Rad	[	1	]	=	10 		BaoXiang_jshhkjb_Count	[	1	]	=	1	--	І»ЛА·вУЎµДєЈСэЕы·з
	BaoXiang_jshhkjb	[	2	]	=	1925		BaoXiang_jshhkjb_Rad	[	2	]	=	30 		BaoXiang_jshhkjb_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦд»р¶·Ес
	BaoXiang_jshhkjb	[	3	]	=	1926		BaoXiang_jshhkjb_Rad	[	3	]	=	10 		BaoXiang_jshhkjb_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйЕы·з
	BaoXiang_jshhkjb	[	4	]	=	1927		BaoXiang_jshhkjb_Rad	[	4	]	=	5 		BaoXiang_jshhkjb_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФ»Г¶·Ес
	BaoXiang_jshhkjb	[	5	]	=	0411		BaoXiang_jshhkjb_Rad	[	5	]	=	400 		BaoXiang_jshhkjb_Count	[	5	]	=	1	--	Е­МОТВ·ю
	BaoXiang_jshhkjb	[	6	]	=	0413		BaoXiang_jshhkjb_Rad	[	6	]	=	400 		BaoXiang_jshhkjb_Count	[	6	]	=	1	--	ИрКЮТВ·ю
	BaoXiang_jshhkjb	[	7	]	=	4153		BaoXiang_jshhkjb_Rad	[	7	]	=	400 		BaoXiang_jshhkjb_Count	[	7	]	=	1	--	БмєЅТВ·ю
	BaoXiang_jshhkjb	[	8	]	=	4154		BaoXiang_jshhkjb_Rad	[	8	]	=	400 		BaoXiang_jshhkjb_Count	[	8	]	=	1	--	Д§Б¦БъПєТВ·ю
	BaoXiang_jshhkjb	[	9	]	=	4155		BaoXiang_jshhkjb_Rad	[	9	]	=	400 		BaoXiang_jshhkjb_Count	[	9	]	=	1	--	М¤АЛТВ·ю
	BaoXiang_jshhkjb	[	10	]	=	4156		BaoXiang_jshhkjb_Rad	[	10	]	=	400 		BaoXiang_jshhkjb_Count	[	10	]	=	1	--	ѕхРСѕЮПєТВ·ю
	BaoXiang_jshhkjb	[	11	]	=	0357		BaoXiang_jshhkjb_Rad	[	11	]	=	2500 		BaoXiang_jshhkjb_Count	[	11	]	=	1	--	ґуєЈПєТВ·ю
	BaoXiang_jshhkjb	[	12	]	=	0358		BaoXiang_jshhkjb_Rad	[	12	]	=	2500 		BaoXiang_jshhkjb_Count	[	12	]	=	1	--	ѕЮЗЇєЈПєТВ·ю
	BaoXiang_jshhkjb	[	13	]	=	0343		BaoXiang_jshhkjb_Rad	[	13	]	=	2500 		BaoXiang_jshhkjb_Count	[	13	]	=	1	--	м«·зТВ·ю
	BaoXiang_jshhkjb	[	14	]	=	0344		BaoXiang_jshhkjb_Rad	[	14	]	=	2500 		BaoXiang_jshhkjb_Count	[	14	]	=	1	--	дцОРТВ·ю
	BaoXiang_jshhkjb	[	15	]	=	0345		BaoXiang_jshhkjb_Rad	[	15	]	=	2500 		BaoXiang_jshhkjb_Count	[	15	]	=	1	--	·зЦ®ТВ·ю
	BaoXiang_jshhkjb	[	16	]	=	0341		BaoXiang_jshhkjb_Rad	[	16	]	=	17000 	BaoXiang_jshhkjb_Count	[	16	]	=	1	--	јЧ°еТВ·ю
	BaoXiang_jshhkjb	[	17	]	=	0342		BaoXiang_jshhkjb_Rad	[	17	]	=	17000 	BaoXiang_jshhkjb_Count	[	17	]	=	1	--	О¦ёЛТВ·ю
	BaoXiang_jshhkjb	[	18	]	=	0353		BaoXiang_jshhkjb_Rad	[	18	]	=	17000 	BaoXiang_jshhkjb_Count	[	18	]	=	1	--	РЎСјТВ·ю
	BaoXiang_jshhkjb	[	19	]	=	0356		BaoXiang_jshhkjb_Rad	[	19	]	=	17000 	BaoXiang_jshhkjb_Count	[	19	]	=	1	--	ТЎ°ЪСјТВ·ю
	BaoXiang_jshhkjb	[	20	]	=	1977		BaoXiang_jshhkjb_Rad	[	20	]	=	17000 	BaoXiang_jshhkjb_Count	[	20	]	=	1	--	·з±©НвМЧ

																						
--	ѕЮЅЈїшјЧ±¦Пд24РН												h0124									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsjjkja_Qua	=	24	 				BaoXiang_jsjjkja_Mxcount	=	9												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsjjkja	=	{}					BaoXiang_jsjjkja_Rad	=	{}					BaoXiang_jsjjkja_Count	=	{}					
	BaoXiang_jsjjkja	[	1	]	=	1885		BaoXiang_jsjjkja_Rad	[	1	]	=	50		BaoXiang_jsjjkja_Count	[	1	]	=	1	--	ОЫДа·вУЎµДОдКїЧзЦдОЖЙн
	BaoXiang_jsjjkja	[	2	]	=	1886		BaoXiang_jsjjkja_Rad	[	2	]	=	20		BaoXiang_jsjjkja_Count	[	2	]	=	1	--	БТСж·вУЎµД»ГБйОЖЙн
	BaoXiang_jsjjkja	[	3	]	=	1887		BaoXiang_jsjjkja_Rad	[	3	]	=	1 		BaoXiang_jsjjkja_Count	[	3	]	=	1	--	є®±щ·вУЎµДГФЦ®ОЖЙн
	BaoXiang_jsjjkja	[	4	]	=	0398		BaoXiang_jsjjkja_Rad	[	4	]	=	1660 		BaoXiang_jsjjkja_Count	[	4	]	=	1	--	БйЙсошјЧ
	BaoXiang_jsjjkja	[	5	]	=	4148		BaoXiang_jsjjkja_Rad	[	5	]	=	1660 		BaoXiang_jsjjkja_Count	[	5	]	=	1	--	»ГКЮОЖЙн
	BaoXiang_jsjjkja	[	6	]	=	4147		BaoXiang_jsjjkja_Rad	[	6	]	=	1660 		BaoXiang_jsjjkja_Count	[	6	]	=	1	--	БйКЮОЖЙн
	BaoXiang_jsjjkja	[	7	]	=	0228		BaoXiang_jsjjkja_Rad	[	7	]	=	32000		BaoXiang_jsjjkja_Count	[	7	]	=	1	--	Е­ЕЈОЖЙн
	BaoXiang_jsjjkja	[	8	]	=	0230		BaoXiang_jsjjkja_Rad	[	8	]	=	32000		BaoXiang_jsjjkja_Count	[	8	]	=	1	--	КЮНхОЖЙн
	BaoXiang_jsjjkja	[	9	]	=	0229		BaoXiang_jsjjkja_Rad	[	9	]	=	32000		BaoXiang_jsjjkja_Count	[	9	]	=	1	--	ВщЕЈОЖЙн

																						
--	ѕЮЅЈїшјЧ±¦Пд23РН												h0124									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsjjkjb_Qua	=	23	 				BaoXiang_jsjjkjb_Mxcount	=	9												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsjjkjb	=	{}					BaoXiang_jsjjkjb_Rad	=	{}					BaoXiang_jsjjkjb_Count	=	{}					
	BaoXiang_jsjjkjb	[	1	]	=	1885		BaoXiang_jsjjkjb_Rad	[	1	]	=	50 		BaoXiang_jsjjkjb_Count	[	1	]	=	1	--	ОЫДа·вУЎµДОдКїЧзЦдОЖЙн
	BaoXiang_jsjjkjb	[	2	]	=	1886		BaoXiang_jsjjkjb_Rad	[	2	]	=	10 		BaoXiang_jsjjkjb_Count	[	2	]	=	1	--	БТСж·вУЎµД»ГБйОЖЙн
	BaoXiang_jsjjkjb	[	3	]	=	1887		BaoXiang_jsjjkjb_Rad	[	3	]	=	5 		BaoXiang_jsjjkjb_Count	[	3	]	=	1	--	є®±щ·вУЎµДГФЦ®ОЖЙн
	BaoXiang_jsjjkjb	[	4	]	=	0398		BaoXiang_jsjjkjb_Rad	[	4	]	=	900 		BaoXiang_jsjjkjb_Count	[	4	]	=	1	--	БйЙсошјЧ
	BaoXiang_jsjjkjb	[	5	]	=	4148		BaoXiang_jsjjkjb_Rad	[	5	]	=	900 		BaoXiang_jsjjkjb_Count	[	5	]	=	1	--	»ГКЮОЖЙн
	BaoXiang_jsjjkjb	[	6	]	=	4147		BaoXiang_jsjjkjb_Rad	[	6	]	=	900 		BaoXiang_jsjjkjb_Count	[	6	]	=	1	--	БйКЮОЖЙн
	BaoXiang_jsjjkjb	[	7	]	=	0228		BaoXiang_jsjjkjb_Rad	[	7	]	=	32500		BaoXiang_jsjjkjb_Count	[	7	]	=	1	--	Е­ЕЈОЖЙн
	BaoXiang_jsjjkjb	[	8	]	=	0230		BaoXiang_jsjjkjb_Rad	[	8	]	=	32500		BaoXiang_jsjjkjb_Count	[	8	]	=	1	--	КЮНхОЖЙн
	BaoXiang_jsjjkjb	[	9	]	=	0229		BaoXiang_jsjjkjb_Rad	[	9	]	=	32500		BaoXiang_jsjjkjb_Count	[	9	]	=	1	--	ВщЕЈОЖЙн

																						
--	єЪБъЦ®Зы±¦Пд24РН	1/100001											e0831									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jshlza_Qua	=	24	 				BaoXiang_jshlza_Mxcount	=	70												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jshlza	=	{}					BaoXiang_jshlza_Rad	=	{}					BaoXiang_jshlza_Count	=	{}					
	BaoXiang_jshlza	[	1	]	=	0845		BaoXiang_jshlza_Rad	[	1	]	=	1 		BaoXiang_jshlza_Count	[	1	]	=	1	--	єЪБъЦ®Зы
	BaoXiang_jshlza	[	2	]	=	0398		BaoXiang_jshlza_Rad	[	2	]	=	160 		BaoXiang_jshlza_Count	[	2	]	=	1	--	БйЙсошјЧ
	BaoXiang_jshlza	[	3	]	=	4148		BaoXiang_jshlza_Rad	[	3	]	=	160 		BaoXiang_jshlza_Count	[	3	]	=	1	--	»ГКЮОЖЙн
	BaoXiang_jshlza	[	4	]	=	4147		BaoXiang_jshlza_Rad	[	4	]	=	160 		BaoXiang_jshlza_Count	[	4	]	=	1	--	БйКЮОЖЙн
	BaoXiang_jshlza	[	5	]	=	0411		BaoXiang_jshlza_Rad	[	5	]	=	160 		BaoXiang_jshlza_Count	[	5	]	=	1	--	Е­МОТВ·ю
	BaoXiang_jshlza	[	6	]	=	0413		BaoXiang_jshlza_Rad	[	6	]	=	160 		BaoXiang_jshlza_Count	[	6	]	=	1	--	ИрКЮТВ·ю
	BaoXiang_jshlza	[	7	]	=	4153		BaoXiang_jshlza_Rad	[	7	]	=	160 		BaoXiang_jshlza_Count	[	7	]	=	1	--	БмєЅТВ·ю
	BaoXiang_jshlza	[	8	]	=	4154		BaoXiang_jshlza_Rad	[	8	]	=	160 		BaoXiang_jshlza_Count	[	8	]	=	1	--	Д§Б¦БъПєТВ·ю
	BaoXiang_jshlza	[	9	]	=	4155		BaoXiang_jshlza_Rad	[	9	]	=	160 		BaoXiang_jshlza_Count	[	9	]	=	1	--	М¤АЛТВ·ю
	BaoXiang_jshlza	[	10	]	=	4156		BaoXiang_jshlza_Rad	[	10	]	=	160 		BaoXiang_jshlza_Count	[	10	]	=	1	--	ѕхРСѕЮПєТВ·ю
	BaoXiang_jshlza	[	11	]	=	0402		BaoXiang_jshlza_Rad	[	11	]	=	160 		BaoXiang_jshlza_Count	[	11	]	=	1	--	ЙсКїТВ·ю
	BaoXiang_jshlza	[	12	]	=	0404		BaoXiang_jshlza_Rad	[	12	]	=	160 		BaoXiang_jshlza_Count	[	12	]	=	1	--	ЙсЖжРЬГЁТВ·ю
	BaoXiang_jshlza	[	13	]	=	4161		BaoXiang_jshlza_Rad	[	13	]	=	160 		BaoXiang_jshlza_Count	[	13	]	=	1	--	ёґірТВ·ю
	BaoXiang_jshlza	[	14	]	=	4162		BaoXiang_jshlza_Rad	[	14	]	=	160 		BaoXiang_jshlza_Count	[	14	]	=	1	--	Д§Б¦єЈМЎТВ·ю
	BaoXiang_jshlza	[	15	]	=	4163		BaoXiang_jshlza_Rad	[	15	]	=	160 		BaoXiang_jshlza_Count	[	15	]	=	1	--	іН·ЈХЯТВ·ю
	BaoXiang_jshlza	[	16	]	=	4164		BaoXiang_jshlza_Rad	[	16	]	=	160 		BaoXiang_jshlza_Count	[	16	]	=	1	--	ѕхРСєЈМЎТВ·ю
	BaoXiang_jshlza	[	17	]	=	0406		BaoXiang_jshlza_Rad	[	17	]	=	160		BaoXiang_jshlza_Count	[	17	]	=	1	--	·ЙМмТВ·ю
	BaoXiang_jshlza	[	18	]	=	4158		BaoXiang_jshlza_Rad	[	18	]	=	160 		BaoXiang_jshlza_Count	[	18	]	=	1	--	Д§Б¦НГЧУТВ·ю
	BaoXiang_jshlza	[	19	]	=	4159		BaoXiang_jshlza_Rad	[	19	]	=	160 		BaoXiang_jshlza_Count	[	19	]	=	1	--	КҐ№вТВ·ю
	BaoXiang_jshlza	[	20	]	=	4160		BaoXiang_jshlza_Rad	[	20	]	=	160 		BaoXiang_jshlza_Count	[	20	]	=	1	--	ѕхРСНГЧУТВ·ю
	BaoXiang_jshlza	[	21	]	=	4157		BaoXiang_jshlza_Rad	[	21	]	=	160		BaoXiang_jshlza_Count	[	21	]	=	1	--	КҐТфТВ·ю
	BaoXiang_jshlza	[	22	]	=	3322		BaoXiang_jshlza_Rad	[	22	]	=	160		BaoXiang_jshlza_Count	[	22	]	=	1	--	єЪБъЦ®Зы±¦Пд24РН
	BaoXiang_jshlza	[	23	]	=	0400		BaoXiang_jshlza_Rad	[	23	]	=	160		BaoXiang_jshlza_Count	[	23	]	=	1	--	ЙдИХНвМЧ
	BaoXiang_jshlza	[	24	]	=	4152		BaoXiang_jshlza_Rad	[	24	]	=	160		BaoXiang_jshlza_Count	[	24	]	=	1	--	КЁрХТВ·ю
	BaoXiang_jshlza	[	25	]	=	0396		BaoXiang_jshlza_Rad	[	25	]	=	160 		BaoXiang_jshlza_Count	[	25	]	=	1	--	ТюГШЦ®јЧ
	BaoXiang_jshlza	[	26	]	=	3322		BaoXiang_jshlza_Rad	[	26	]	=	160 		BaoXiang_jshlza_Count	[	26	]	=	1	--	єЪБъЦ®Зы±¦Пд24РН
	BaoXiang_jshlza	[	27	]	=	0228		BaoXiang_jshlza_Rad	[	27	]	=	500		BaoXiang_jshlza_Count	[	27	]	=	1	--	Е­ЕЈОЖЙн
	BaoXiang_jshlza	[	28	]	=	0230		BaoXiang_jshlza_Rad	[	28	]	=	500		BaoXiang_jshlza_Count	[	28	]	=	1	--	КЮНхОЖЙн
	BaoXiang_jshlza	[	29	]	=	0765		BaoXiang_jshlza_Rad	[	29	]	=	500		BaoXiang_jshlza_Count	[	29	]	=	1	--	»ГБйОЖЙн
	BaoXiang_jshlza	[	30	]	=	0357		BaoXiang_jshlza_Rad	[	30	]	=	500		BaoXiang_jshlza_Count	[	30	]	=	1	--	ґуєЈПєТВ·ю
	BaoXiang_jshlza	[	31	]	=	0358		BaoXiang_jshlza_Rad	[	31	]	=	500		BaoXiang_jshlza_Count	[	31	]	=	1	--	ѕЮЗЇєЈПєТВ·ю
	BaoXiang_jshlza	[	32	]	=	0343		BaoXiang_jshlza_Rad	[	32	]	=	500		BaoXiang_jshlza_Count	[	32	]	=	1	--	м«·зТВ·ю
	BaoXiang_jshlza	[	33	]	=	0344		BaoXiang_jshlza_Rad	[	33	]	=	500		BaoXiang_jshlza_Count	[	33	]	=	1	--	дцОРТВ·ю
	BaoXiang_jshlza	[	34	]	=	0345		BaoXiang_jshlza_Rad	[	34	]	=	500		BaoXiang_jshlza_Count	[	34	]	=	1	--	·зЦ®ТВ·ю
	BaoXiang_jshlza	[	35	]	=	0363		BaoXiang_jshlza_Rad	[	35	]	=	500		BaoXiang_jshlza_Count	[	35	]	=	1	--	ёЯј¶єЈМЎТВ·ю
	BaoXiang_jshlza	[	36	]	=	0364		BaoXiang_jshlza_Rad	[	36	]	=	500		BaoXiang_jshlza_Count	[	36	]	=	1	--	ЧЈёЈєЈМЎТВ·ю
	BaoXiang_jshlza	[	37	]	=	0376		BaoXiang_jshlza_Rad	[	37	]	=	500		BaoXiang_jshlza_Count	[	37	]	=	1	--	ЦОБЖХЯТВ·ю
	BaoXiang_jshlza	[	38	]	=	0377		BaoXiang_jshlza_Rad	[	38	]	=	500		BaoXiang_jshlza_Count	[	38	]	=	1	--	±Ј»¤ХЯТВ·ю
	BaoXiang_jshlza	[	39	]	=	1957		BaoXiang_jshlza_Rad	[	39	]	=	500		BaoXiang_jshlza_Count	[	39	]	=	1	--	УИµП°ІНвМЧ
	BaoXiang_jshlza	[	40	]	=	1958		BaoXiang_jshlza_Rad	[	40	]	=	500		BaoXiang_jshlza_Count	[	40	]	=	1	--	ЦмИёНвМЧ
	BaoXiang_jshlza	[	41	]	=	0391		BaoXiang_jshlza_Rad	[	41	]	=	500		BaoXiang_jshlza_Count	[	41	]	=	1	--	ёЯј¶НГТВ·ю
	BaoXiang_jshlza	[	42	]	=	0392		BaoXiang_jshlza_Rad	[	42	]	=	500		BaoXiang_jshlza_Count	[	42	]	=	1	--	±¦±ґНГТВ·ю
	BaoXiang_jshlza	[	43	]	=	0393		BaoXiang_jshlza_Rad	[	43	]	=	500		BaoXiang_jshlza_Count	[	43	]	=	1	--	ЧЈёЈНГТВ·ю
	BaoXiang_jshlza	[	44	]	=	0394		BaoXiang_jshlza_Rad	[	44	]	=	500		BaoXiang_jshlza_Count	[	44	]	=	1	--	МмґНТВ·ю
	BaoXiang_jshlza	[	45	]	=	1960		BaoXiang_jshlza_Rad	[	45	]	=	500		BaoXiang_jshlza_Count	[	45	]	=	1	--	ПЈ¶ыНвМЧ
	BaoXiang_jshlza	[	46	]	=	1961		BaoXiang_jshlza_Rad	[	46	]	=	500		BaoXiang_jshlza_Count	[	46	]	=	1	--	рЅ·пНвМЧ
	BaoXiang_jshlza	[	47	]	=	0316		BaoXiang_jshlza_Rad	[	47	]	=	500		BaoXiang_jshlza_Count	[	47	]	=	1	--	°ЯрЇТВ·ю
	BaoXiang_jshlza	[	48	]	=	0317		BaoXiang_jshlza_Rad	[	48	]	=	500		BaoXiang_jshlza_Count	[	48	]	=	1	--	ГНЗЭТВ·ю
	BaoXiang_jshlza	[	49	]	=	0304		BaoXiang_jshlza_Rad	[	49	]	=	500		BaoXiang_jshlza_Count	[	49	]	=	1	--	µдАсёЦјЧ
	BaoXiang_jshlza	[	50	]	=	1931		BaoXiang_jshlza_Rad	[	50	]	=	500		BaoXiang_jshlza_Count	[	50	]	=	1	--	чичлХЅјЧ
	BaoXiang_jshlza	[	51	]	=	0341		BaoXiang_jshlza_Rad	[	51	]	=	4200 		BaoXiang_jshlza_Count	[	51	]	=	1	--	јЧ°еТВ·ю
	BaoXiang_jshlza	[	52	]	=	0342		BaoXiang_jshlza_Rad	[	52	]	=	4200 		BaoXiang_jshlza_Count	[	52	]	=	1	--	О¦ёЛТВ·ю
	BaoXiang_jshlza	[	53	]	=	0353		BaoXiang_jshlza_Rad	[	53	]	=	4200 		BaoXiang_jshlza_Count	[	53	]	=	1	--	РЎСјТВ·ю
	BaoXiang_jshlza	[	54	]	=	0356		BaoXiang_jshlza_Rad	[	54	]	=	4200 		BaoXiang_jshlza_Count	[	54	]	=	1	--	ТЎ°ЪСјТВ·ю
	BaoXiang_jshlza	[	55	]	=	1977		BaoXiang_jshlza_Rad	[	55	]	=	4200 		BaoXiang_jshlza_Count	[	55	]	=	1	--	·з±©НвМЧ
	BaoXiang_jshlza	[	56	]	=	1956		BaoXiang_jshlza_Rad	[	56	]	=	4200 		BaoXiang_jshlza_Count	[	56	]	=	1	--	АдФВНвТВ
	BaoXiang_jshlza	[	57	]	=	0385		BaoXiang_jshlza_Rad	[	57	]	=	4200 		BaoXiang_jshlza_Count	[	57	]	=	1	--	єЈМЎТВ·ю
	BaoXiang_jshlza	[	58	]	=	0375		BaoXiang_jshlza_Rad	[	58	]	=	4200 		BaoXiang_jshlza_Count	[	58	]	=	1	--	Ф¶РРТВ·ю
	BaoXiang_jshlza	[	59	]	=	0369		BaoXiang_jshlza_Rad	[	59	]	=	4200 		BaoXiang_jshlza_Count	[	59	]	=	1	--	КМХЯТВ·ю
	BaoXiang_jshlza	[	60	]	=	0362		BaoXiang_jshlza_Rad	[	60	]	=	4200 		BaoXiang_jshlza_Count	[	60	]	=	1	--	±Д±ДКуТВ·ю
	BaoXiang_jshlza	[	61	]	=	1959		BaoXiang_jshlza_Rad	[	61	]	=	4200 		BaoXiang_jshlza_Count	[	61	]	=	1	--	Т«ИХНвТВ
	BaoXiang_jshlza	[	62	]	=	0382		BaoXiang_jshlza_Rad	[	62	]	=	4200 		BaoXiang_jshlza_Count	[	62	]	=	1	--	і¤¶ъНГТВ·ю
	BaoXiang_jshlza	[	63	]	=	0388		BaoXiang_jshlza_Rad	[	63	]	=	4200 		BaoXiang_jshlza_Count	[	63	]	=	1	--	їмАЦНГТВ·ю
	BaoXiang_jshlza	[	64	]	=	0392		BaoXiang_jshlza_Rad	[	64	]	=	4200 		BaoXiang_jshlza_Count	[	64	]	=	1	--	±¦±ґНГТВ·ю
	BaoXiang_jshlza	[	65	]	=	0314		BaoXiang_jshlza_Rad	[	65	]	=	4200 		BaoXiang_jshlza_Count	[	65	]	=	1	--	ГфЅЭТВ·ю
	BaoXiang_jshlza	[	66	]	=	0315		BaoXiang_jshlza_Rad	[	66	]	=	4200 		BaoXiang_jshlza_Count	[	66	]	=	1	--	ЙЅИёТВ·ю
	BaoXiang_jshlza	[	67	]	=	0302		BaoXiang_jshlza_Rad	[	67	]	=	4200 		BaoXiang_jshlza_Count	[	67	]	=	1	--	Зб±гёЦјЧ
	BaoXiang_jshlza	[	68	]	=	0303		BaoXiang_jshlza_Rad	[	68	]	=	4200 		BaoXiang_jshlza_Count	[	68	]	=	1	--	¶ЖТшёЦјЧ
	BaoXiang_jshlza	[	69	]	=	1929		BaoXiang_jshlza_Rad	[	69	]	=	4200 		BaoXiang_jshlza_Count	[	69	]	=	1	--	јІ·зХЅјЧ
	BaoXiang_jshlza	[	70	]	=	1930		BaoXiang_jshlza_Rad	[	70	]	=	4200 		BaoXiang_jshlza_Count	[	70	]	=	1	--	ОчЛ№ХЅјЧ

																						
--	єЪБъЦ®Зы±¦Пд23РН	1/100101											e0831									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jshlzb_Qua	=	23	 				BaoXiang_jshlzb_Mxcount	=	70												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jshlzb	=	{}					BaoXiang_jshlzb_Rad	=	{}					BaoXiang_jshlzb_Count	=	{}					
	BaoXiang_jshlzb	[	1	]	=	845		BaoXiang_jshlzb_Rad	[	1	]	=	1		BaoXiang_jshlzb_Count	[	1	]	=	1	--	єЪБъЦ®Зы
	BaoXiang_jshlzb	[	2	]	=	398		BaoXiang_jshlzb_Rad	[	2	]	=	100		BaoXiang_jshlzb_Count	[	2	]	=	1	--	БйЙсошјЧ
	BaoXiang_jshlzb	[	3	]	=	4148		BaoXiang_jshlzb_Rad	[	3	]	=	100		BaoXiang_jshlzb_Count	[	3	]	=	1	--	»ГКЮОЖЙн
	BaoXiang_jshlzb	[	4	]	=	4147		BaoXiang_jshlzb_Rad	[	4	]	=	100		BaoXiang_jshlzb_Count	[	4	]	=	1	--	БйКЮОЖЙн
	BaoXiang_jshlzb	[	5	]	=	411		BaoXiang_jshlzb_Rad	[	5	]	=	100		BaoXiang_jshlzb_Count	[	5	]	=	1	--	Е­МОТВ·ю
	BaoXiang_jshlzb	[	6	]	=	413		BaoXiang_jshlzb_Rad	[	6	]	=	100		BaoXiang_jshlzb_Count	[	6	]	=	1	--	ИрКЮТВ·ю
	BaoXiang_jshlzb	[	7	]	=	4153		BaoXiang_jshlzb_Rad	[	7	]	=	100		BaoXiang_jshlzb_Count	[	7	]	=	1	--	БмєЅТВ·ю
	BaoXiang_jshlzb	[	8	]	=	4154		BaoXiang_jshlzb_Rad	[	8	]	=	100		BaoXiang_jshlzb_Count	[	8	]	=	1	--	Д§Б¦БъПєТВ·ю
	BaoXiang_jshlzb	[	9	]	=	4155		BaoXiang_jshlzb_Rad	[	9	]	=	100		BaoXiang_jshlzb_Count	[	9	]	=	1	--	М¤АЛТВ·ю
	BaoXiang_jshlzb	[	10	]	=	4156		BaoXiang_jshlzb_Rad	[	10	]	=	100		BaoXiang_jshlzb_Count	[	10	]	=	1	--	ѕхРСѕЮПєТВ·ю
	BaoXiang_jshlzb	[	11	]	=	402		BaoXiang_jshlzb_Rad	[	11	]	=	100		BaoXiang_jshlzb_Count	[	11	]	=	1	--	ЙсКїТВ·ю
	BaoXiang_jshlzb	[	12	]	=	404		BaoXiang_jshlzb_Rad	[	12	]	=	100		BaoXiang_jshlzb_Count	[	12	]	=	1	--	ЙсЖжРЬГЁТВ·ю
	BaoXiang_jshlzb	[	13	]	=	4161		BaoXiang_jshlzb_Rad	[	13	]	=	100		BaoXiang_jshlzb_Count	[	13	]	=	1	--	ёґірТВ·ю
	BaoXiang_jshlzb	[	14	]	=	4162		BaoXiang_jshlzb_Rad	[	14	]	=	100		BaoXiang_jshlzb_Count	[	14	]	=	1	--	Д§Б¦єЈМЎТВ·ю
	BaoXiang_jshlzb	[	15	]	=	4163		BaoXiang_jshlzb_Rad	[	15	]	=	100		BaoXiang_jshlzb_Count	[	15	]	=	1	--	іН·ЈХЯТВ·ю
	BaoXiang_jshlzb	[	16	]	=	4164		BaoXiang_jshlzb_Rad	[	16	]	=	100		BaoXiang_jshlzb_Count	[	16	]	=	1	--	ѕхРСєЈМЎТВ·ю
	BaoXiang_jshlzb	[	17	]	=	406		BaoXiang_jshlzb_Rad	[	17	]	=	100		BaoXiang_jshlzb_Count	[	17	]	=	1	--	·ЙМмТВ·ю
	BaoXiang_jshlzb	[	18	]	=	4158		BaoXiang_jshlzb_Rad	[	18	]	=	100		BaoXiang_jshlzb_Count	[	18	]	=	1	--	Д§Б¦НГЧУТВ·ю
	BaoXiang_jshlzb	[	19	]	=	4159		BaoXiang_jshlzb_Rad	[	19	]	=	100		BaoXiang_jshlzb_Count	[	19	]	=	1	--	КҐ№вТВ·ю
	BaoXiang_jshlzb	[	20	]	=	4160		BaoXiang_jshlzb_Rad	[	20	]	=	100		BaoXiang_jshlzb_Count	[	20	]	=	1	--	ѕхРСНГЧУТВ·ю
	BaoXiang_jshlzb	[	21	]	=	4157		BaoXiang_jshlzb_Rad	[	21	]	=	100		BaoXiang_jshlzb_Count	[	21	]	=	1	--	КҐТфТВ·ю
	BaoXiang_jshlzb	[	22	]	=	3323		BaoXiang_jshlzb_Rad	[	22	]	=	100		BaoXiang_jshlzb_Count	[	22	]	=	1	--	єЪБъЦ®Зы±¦Пд23РН
	BaoXiang_jshlzb	[	23	]	=	400		BaoXiang_jshlzb_Rad	[	23	]	=	100		BaoXiang_jshlzb_Count	[	23	]	=	1	--	ЙдИХНвМЧ
	BaoXiang_jshlzb	[	24	]	=	4152		BaoXiang_jshlzb_Rad	[	24	]	=	100		BaoXiang_jshlzb_Count	[	24	]	=	1	--	КЁрХТВ·ю
	BaoXiang_jshlzb	[	25	]	=	396		BaoXiang_jshlzb_Rad	[	25	]	=	100		BaoXiang_jshlzb_Count	[	25	]	=	1	--	ТюГШЦ®јЧ
	BaoXiang_jshlzb	[	26	]	=	3323		BaoXiang_jshlzb_Rad	[	26	]	=	100		BaoXiang_jshlzb_Count	[	26	]	=	1	--	єЪБъЦ®Зы±¦Пд23РН
	BaoXiang_jshlzb	[	27	]	=	228		BaoXiang_jshlzb_Rad	[	27	]	=	400		BaoXiang_jshlzb_Count	[	27	]	=	1	--	Е­ЕЈОЖЙн
	BaoXiang_jshlzb	[	28	]	=	230		BaoXiang_jshlzb_Rad	[	28	]	=	400		BaoXiang_jshlzb_Count	[	28	]	=	1	--	КЮНхОЖЙн
	BaoXiang_jshlzb	[	29	]	=	765		BaoXiang_jshlzb_Rad	[	29	]	=	400		BaoXiang_jshlzb_Count	[	29	]	=	1	--	»ГБйОЖЙн
	BaoXiang_jshlzb	[	30	]	=	357		BaoXiang_jshlzb_Rad	[	30	]	=	400		BaoXiang_jshlzb_Count	[	30	]	=	1	--	ґуєЈПєТВ·ю
	BaoXiang_jshlzb	[	31	]	=	358		BaoXiang_jshlzb_Rad	[	31	]	=	400		BaoXiang_jshlzb_Count	[	31	]	=	1	--	ѕЮЗЇєЈПєТВ·ю
	BaoXiang_jshlzb	[	32	]	=	343		BaoXiang_jshlzb_Rad	[	32	]	=	400		BaoXiang_jshlzb_Count	[	32	]	=	1	--	м«·зТВ·ю
	BaoXiang_jshlzb	[	33	]	=	344		BaoXiang_jshlzb_Rad	[	33	]	=	400		BaoXiang_jshlzb_Count	[	33	]	=	1	--	дцОРТВ·ю
	BaoXiang_jshlzb	[	34	]	=	345		BaoXiang_jshlzb_Rad	[	34	]	=	400		BaoXiang_jshlzb_Count	[	34	]	=	1	--	·зЦ®ТВ·ю
	BaoXiang_jshlzb	[	35	]	=	363		BaoXiang_jshlzb_Rad	[	35	]	=	400		BaoXiang_jshlzb_Count	[	35	]	=	1	--	ёЯј¶єЈМЎТВ·ю
	BaoXiang_jshlzb	[	36	]	=	364		BaoXiang_jshlzb_Rad	[	36	]	=	400		BaoXiang_jshlzb_Count	[	36	]	=	1	--	ЧЈёЈєЈМЎТВ·ю
	BaoXiang_jshlzb	[	37	]	=	376		BaoXiang_jshlzb_Rad	[	37	]	=	400		BaoXiang_jshlzb_Count	[	37	]	=	1	--	ЦОБЖХЯТВ·ю
	BaoXiang_jshlzb	[	38	]	=	377		BaoXiang_jshlzb_Rad	[	38	]	=	400		BaoXiang_jshlzb_Count	[	38	]	=	1	--	±Ј»¤ХЯТВ·ю
	BaoXiang_jshlzb	[	39	]	=	1957		BaoXiang_jshlzb_Rad	[	39	]	=	400		BaoXiang_jshlzb_Count	[	39	]	=	1	--	УИµП°ІНвМЧ
	BaoXiang_jshlzb	[	40	]	=	1958		BaoXiang_jshlzb_Rad	[	40	]	=	400		BaoXiang_jshlzb_Count	[	40	]	=	1	--	ЦмИёНвМЧ
	BaoXiang_jshlzb	[	41	]	=	391		BaoXiang_jshlzb_Rad	[	41	]	=	400		BaoXiang_jshlzb_Count	[	41	]	=	1	--	ёЯј¶НГТВ·ю
	BaoXiang_jshlzb	[	42	]	=	392		BaoXiang_jshlzb_Rad	[	42	]	=	400		BaoXiang_jshlzb_Count	[	42	]	=	1	--	±¦±ґНГТВ·ю
	BaoXiang_jshlzb	[	43	]	=	393		BaoXiang_jshlzb_Rad	[	43	]	=	400		BaoXiang_jshlzb_Count	[	43	]	=	1	--	ЧЈёЈНГТВ·ю
	BaoXiang_jshlzb	[	44	]	=	394		BaoXiang_jshlzb_Rad	[	44	]	=	400		BaoXiang_jshlzb_Count	[	44	]	=	1	--	МмґНТВ·ю
	BaoXiang_jshlzb	[	45	]	=	1960		BaoXiang_jshlzb_Rad	[	45	]	=	400		BaoXiang_jshlzb_Count	[	45	]	=	1	--	ПЈ¶ыНвМЧ
	BaoXiang_jshlzb	[	46	]	=	1961		BaoXiang_jshlzb_Rad	[	46	]	=	400		BaoXiang_jshlzb_Count	[	46	]	=	1	--	рЅ·пНвМЧ
	BaoXiang_jshlzb	[	47	]	=	316		BaoXiang_jshlzb_Rad	[	47	]	=	400		BaoXiang_jshlzb_Count	[	47	]	=	1	--	°ЯрЇТВ·ю
	BaoXiang_jshlzb	[	48	]	=	317		BaoXiang_jshlzb_Rad	[	48	]	=	400		BaoXiang_jshlzb_Count	[	48	]	=	1	--	ГНЗЭТВ·ю
	BaoXiang_jshlzb	[	49	]	=	304		BaoXiang_jshlzb_Rad	[	49	]	=	400		BaoXiang_jshlzb_Count	[	49	]	=	1	--	µдАсёЦјЧ
	BaoXiang_jshlzb	[	50	]	=	1931		BaoXiang_jshlzb_Rad	[	50	]	=	400		BaoXiang_jshlzb_Count	[	50	]	=	1	--	чичлХЅјЧ
	BaoXiang_jshlzb	[	51	]	=	341		BaoXiang_jshlzb_Rad	[	51	]	=	4400		BaoXiang_jshlzb_Count	[	51	]	=	1	--	јЧ°еТВ·ю
	BaoXiang_jshlzb	[	52	]	=	342		BaoXiang_jshlzb_Rad	[	52	]	=	4400		BaoXiang_jshlzb_Count	[	52	]	=	1	--	О¦ёЛТВ·ю
	BaoXiang_jshlzb	[	53	]	=	353		BaoXiang_jshlzb_Rad	[	53	]	=	4400		BaoXiang_jshlzb_Count	[	53	]	=	1	--	РЎСјТВ·ю
	BaoXiang_jshlzb	[	54	]	=	356		BaoXiang_jshlzb_Rad	[	54	]	=	4400		BaoXiang_jshlzb_Count	[	54	]	=	1	--	ТЎ°ЪСјТВ·ю
	BaoXiang_jshlzb	[	55	]	=	1977		BaoXiang_jshlzb_Rad	[	55	]	=	4400		BaoXiang_jshlzb_Count	[	55	]	=	1	--	·з±©НвМЧ
	BaoXiang_jshlzb	[	56	]	=	1956		BaoXiang_jshlzb_Rad	[	56	]	=	4400		BaoXiang_jshlzb_Count	[	56	]	=	1	--	АдФВНвТВ
	BaoXiang_jshlzb	[	57	]	=	385		BaoXiang_jshlzb_Rad	[	57	]	=	4400		BaoXiang_jshlzb_Count	[	57	]	=	1	--	єЈМЎТВ·ю
	BaoXiang_jshlzb	[	58	]	=	375		BaoXiang_jshlzb_Rad	[	58	]	=	4400		BaoXiang_jshlzb_Count	[	58	]	=	1	--	Ф¶РРТВ·ю
	BaoXiang_jshlzb	[	59	]	=	369		BaoXiang_jshlzb_Rad	[	59	]	=	4400		BaoXiang_jshlzb_Count	[	59	]	=	1	--	КМХЯТВ·ю
	BaoXiang_jshlzb	[	60	]	=	362		BaoXiang_jshlzb_Rad	[	60	]	=	4400		BaoXiang_jshlzb_Count	[	60	]	=	1	--	±Д±ДКуТВ·ю
	BaoXiang_jshlzb	[	61	]	=	1959		BaoXiang_jshlzb_Rad	[	61	]	=	4400		BaoXiang_jshlzb_Count	[	61	]	=	1	--	Т«ИХНвТВ
	BaoXiang_jshlzb	[	62	]	=	382		BaoXiang_jshlzb_Rad	[	62	]	=	4400		BaoXiang_jshlzb_Count	[	62	]	=	1	--	і¤¶ъНГТВ·ю
	BaoXiang_jshlzb	[	63	]	=	388		BaoXiang_jshlzb_Rad	[	63	]	=	4400		BaoXiang_jshlzb_Count	[	63	]	=	1	--	їмАЦНГТВ·ю
	BaoXiang_jshlzb	[	64	]	=	392		BaoXiang_jshlzb_Rad	[	64	]	=	4400		BaoXiang_jshlzb_Count	[	64	]	=	1	--	±¦±ґНГТВ·ю
	BaoXiang_jshlzb	[	65	]	=	314		BaoXiang_jshlzb_Rad	[	65	]	=	4400		BaoXiang_jshlzb_Count	[	65	]	=	1	--	ГфЅЭТВ·ю
	BaoXiang_jshlzb	[	66	]	=	315		BaoXiang_jshlzb_Rad	[	66	]	=	4400		BaoXiang_jshlzb_Count	[	66	]	=	1	--	ЙЅИёТВ·ю
	BaoXiang_jshlzb	[	67	]	=	302		BaoXiang_jshlzb_Rad	[	67	]	=	4400		BaoXiang_jshlzb_Count	[	67	]	=	1	--	Зб±гёЦјЧ
	BaoXiang_jshlzb	[	68	]	=	303		BaoXiang_jshlzb_Rad	[	68	]	=	4400		BaoXiang_jshlzb_Count	[	68	]	=	1	--	¶ЖТшёЦјЧ
	BaoXiang_jshlzb	[	69	]	=	1929		BaoXiang_jshlzb_Rad	[	69	]	=	4400		BaoXiang_jshlzb_Count	[	69	]	=	1	--	јІ·зХЅјЧ
	BaoXiang_jshlzb	[	70	]	=	1930		BaoXiang_jshlzb_Rad	[	70	]	=	4400		BaoXiang_jshlzb_Count	[	70	]	=	1	--	ОчЛ№ХЅјЧ

																						
--	єЪБъЦ®КЧ±¦Пд24РН	1/100001											e0834									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jshlta_Qua	=	24	 				BaoXiang_jshlta_Mxcount	=	9												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jshlta	=	{}					BaoXiang_jshlta_Rad	=	{}					BaoXiang_jshlta_Count	=	{}					
	BaoXiang_jshlta	[	1	]	=	0848		BaoXiang_jshlta_Rad	[	1	]	=	1 		BaoXiang_jshlta_Count	[	1	]	=	1	--	єЪБъЦ®КЧ
	BaoXiang_jshlta	[	2	]	=	2215		BaoXiang_jshlta_Rad	[	2	]	=	1000		BaoXiang_jshlta_Count	[	2	]	=	1	--	ЧЈёЈНГГ±ЧУ
	BaoXiang_jshlta	[	3	]	=	2201		BaoXiang_jshlta_Rad	[	3	]	=	1000		BaoXiang_jshlta_Count	[	3	]	=	1	--	ЧЈёЈєЈМЎГ±ЧУ
	BaoXiang_jshlta	[	4	]	=	2200		BaoXiang_jshlta_Rad	[	4	]	=	4000		BaoXiang_jshlta_Count	[	4	]	=	1	--	ёЯј¶єЈМЎГ±ЧУ
	BaoXiang_jshlta	[	5	]	=	2213		BaoXiang_jshlta_Rad	[	5	]	=	4000		BaoXiang_jshlta_Count	[	5	]	=	1	--	ёЯј¶НГГ±ЧУ
	BaoXiang_jshlta	[	6	]	=	2207		BaoXiang_jshlta_Rad	[	6	]	=	22500	BaoXiang_jshlta_Count	[	6	]	=	1	--	єЈМЎГ±ЧУ
	BaoXiang_jshlta	[	7	]	=	2210		BaoXiang_jshlta_Rad	[	7	]	=	22500	BaoXiang_jshlta_Count	[	7	]	=	1	--	їмАЦНГГ±ЧУ
	BaoXiang_jshlta	[	8	]	=	2214		BaoXiang_jshlta_Rad	[	8	]	=	22500	BaoXiang_jshlta_Count	[	8	]	=	1	--	±¦±ґНГГ±ЧУ
	BaoXiang_jshlta	[	9	]	=	2212		BaoXiang_jshlta_Rad	[	9	]	=	22500	BaoXiang_jshlta_Count	[	9	]	=	1	--	ґьКуГ±ЧУ
																						
																						
--	єЪБъЦ®Ч¦±¦Пд24РН		1/100101										e0832									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jshlsa_Qua	=	24	 				BaoXiang_jshlsa_Mxcount	=	43												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jshlsa	=	{}					BaoXiang_jshlsa_Rad	=	{}					BaoXiang_jshlsa_Count	=	{}					
	BaoXiang_jshlsa	[	1	]	=	0846		BaoXiang_jshlsa_Rad	[	1	]	=	1 		BaoXiang_jshlsa_Count	[	1	]	=	1	--	єЪБъЦ®Ч¦
	BaoXiang_jshlsa	[	2	]	=	1988		BaoXiang_jshlsa_Rad	[	2	]	=	20 		BaoXiang_jshlsa_Count	[	2	]	=	1	--	БТСж·вУЎµД»ГБйХЅјЧКЦМЧ
	BaoXiang_jshlsa	[	3	]	=	1990		BaoXiang_jshlsa_Rad	[	3	]	=	20 		BaoXiang_jshlsa_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБй»¤КЦ
	BaoXiang_jshlsa	[	4	]	=	1992		BaoXiang_jshlsa_Rad	[	4	]	=	20 		BaoXiang_jshlsa_Count	[	4	]	=	1	--	БТСж·вУЎµД»ГЦдКЦМЧ
	BaoXiang_jshlsa	[	5	]	=	1993		BaoXiang_jshlsa_Rad	[	5	]	=	20 		BaoXiang_jshlsa_Count	[	5	]	=	1	--	БТСж·вУЎµД»Г·ЁКЦМЧ
	BaoXiang_jshlsa	[	6	]	=	1996		BaoXiang_jshlsa_Rad	[	6	]	=	20 		BaoXiang_jshlsa_Count	[	6	]	=	1	--	БТСж·вУЎµД»ГБйЖ¤КЦМЧ
	BaoXiang_jshlsa	[	7	]	=	0588		BaoXiang_jshlsa_Rad	[	7	]	=	450 		BaoXiang_jshlsa_Count	[	7	]	=	1	--	ТюГШКЦМЧ
	BaoXiang_jshlsa	[	8	]	=	0590		BaoXiang_jshlsa_Rad	[	8	]	=	450 		BaoXiang_jshlsa_Count	[	8	]	=	1	--	ЙдИХКЦМЧ
	BaoXiang_jshlsa	[	9	]	=	0592		BaoXiang_jshlsa_Rad	[	9	]	=	450 		BaoXiang_jshlsa_Count	[	9	]	=	1	--	ЙсКїКЦМЧ
	BaoXiang_jshlsa	[	10	]	=	0594		BaoXiang_jshlsa_Rad	[	10	]	=	450 		BaoXiang_jshlsa_Count	[	10	]	=	1	--	ЙсЖжРЬГЁКЦМЧ
	BaoXiang_jshlsa	[	11	]	=	0596		BaoXiang_jshlsa_Rad	[	11	]	=	450 		BaoXiang_jshlsa_Count	[	11	]	=	1	--	·ЙМмКЦМЧ
	BaoXiang_jshlsa	[	12	]	=	0598		BaoXiang_jshlsa_Rad	[	12	]	=	450 		BaoXiang_jshlsa_Count	[	12	]	=	1	--	УгПЙЧУКЦМЧ
	BaoXiang_jshlsa	[	13	]	=	0600		BaoXiang_jshlsa_Rad	[	13	]	=	450 		BaoXiang_jshlsa_Count	[	13	]	=	1	--	Е­МОКЦМЧ
	BaoXiang_jshlsa	[	14	]	=	1938		BaoXiang_jshlsa_Rad	[	14	]	=	750 		BaoXiang_jshlsa_Count	[	14	]	=	1	--	чичлКЦМЧ
	BaoXiang_jshlsa	[	15	]	=	1950		BaoXiang_jshlsa_Rad	[	15	]	=	750 		BaoXiang_jshlsa_Count	[	15	]	=	1	--	°Ч»ўКЦМЧ
	BaoXiang_jshlsa	[	16	]	=	1965		BaoXiang_jshlsa_Rad	[	16	]	=	750		BaoXiang_jshlsa_Count	[	16	]	=	1	--	ЦмИёКЦМЧ
	BaoXiang_jshlsa	[	17	]	=	1968		BaoXiang_jshlsa_Rad	[	17	]	=	750 		BaoXiang_jshlsa_Count	[	17	]	=	1	--	рЅ·пКЦМЧ
	BaoXiang_jshlsa	[	18	]	=	1983		BaoXiang_jshlsa_Rad	[	18	]	=	750 		BaoXiang_jshlsa_Count	[	18	]	=	1	--	ЗаБъКЦМЧ
	BaoXiang_jshlsa	[	19	]	=	0540		BaoXiang_jshlsa_Rad	[	19	]	=	750 		BaoXiang_jshlsa_Count	[	19	]	=	1	--	ЧЈёЈєЈМЎКЦМЧ
	BaoXiang_jshlsa	[	20	]	=	0539		BaoXiang_jshlsa_Rad	[	20	]	=	750 		BaoXiang_jshlsa_Count	[	20	]	=	1	--	ёЯј¶єЈМЎКЦМЧ
	BaoXiang_jshlsa	[	21	]	=	0555		BaoXiang_jshlsa_Rad	[	21	]	=	750 		BaoXiang_jshlsa_Count	[	21	]	=	1	--	ЖнФёКЦМЧ		
	BaoXiang_jshlsa	[	22	]	=	0567		BaoXiang_jshlsa_Rad	[	22	]	=	750 		BaoXiang_jshlsa_Count	[	22	]	=	1	--	ёЯј¶НГКЦМЧ		
	BaoXiang_jshlsa	[	23	]	=	0569		BaoXiang_jshlsa_Rad	[	23	]	=	750 		BaoXiang_jshlsa_Count	[	23	]	=	1	--	ЧЈёЈНГКЦМЧ		
	BaoXiang_jshlsa	[	24	]	=	0570		BaoXiang_jshlsa_Rad	[	24	]	=	750 		BaoXiang_jshlsa_Count	[	24	]	=	1	--	МмґНКЦМЧ		
	BaoXiang_jshlsa	[	25	]	=	0545		BaoXiang_jshlsa_Rad	[	25	]	=	3400		BaoXiang_jshlsa_Count	[	25	]	=	1	--	КМХЯКЦМЧ		
	BaoXiang_jshlsa	[	26	]	=	0547		BaoXiang_jshlsa_Rad	[	26	]	=	3400		BaoXiang_jshlsa_Count	[	26	]	=	1	--	РЕСцКЦМЧ		
	BaoXiang_jshlsa	[	27	]	=	0551		BaoXiang_jshlsa_Rad	[	27	]	=	3400		BaoXiang_jshlsa_Count	[	27	]	=	1	--	Ф¶РРКЦМЧ		
	BaoXiang_jshlsa	[	28	]	=	0554		BaoXiang_jshlsa_Rad	[	28	]	=	3400		BaoXiang_jshlsa_Count	[	28	]	=	1	--	тЇіПКЦМЧ		
	BaoXiang_jshlsa	[	29	]	=	0558		BaoXiang_jshlsa_Rad	[	29	]	=	3400		BaoXiang_jshlsa_Count	[	29	]	=	1	--	і¤¶ъНГКЦМЧ		
	BaoXiang_jshlsa	[	30	]	=	0561		BaoXiang_jshlsa_Rad	[	30	]	=	3400		BaoXiang_jshlsa_Count	[	30	]	=	1	--	єЈМЎКЦМЧ		
	BaoXiang_jshlsa	[	31	]	=	0564		BaoXiang_jshlsa_Rad	[	31	]	=	3400		BaoXiang_jshlsa_Count	[	31	]	=	1	--	їмАЦНГКЦМЧ		
	BaoXiang_jshlsa	[	32	]	=	0471		BaoXiang_jshlsa_Rad	[	32	]	=	5400		BaoXiang_jshlsa_Count	[	32	]	=	1	--	МъКЦМЧ		
	BaoXiang_jshlsa	[	33	]	=	0476		BaoXiang_jshlsa_Rad	[	33	]	=	5400		BaoXiang_jshlsa_Count	[	33	]	=	1	--	ЛшКЦМЧ		
	BaoXiang_jshlsa	[	34	]	=	0486		BaoXiang_jshlsa_Rad	[	34	]	=	5400		BaoXiang_jshlsa_Count	[	34	]	=	1	--	¶МУрКЦМЧ		
	BaoXiang_jshlsa	[	35	]	=	0517		BaoXiang_jshlsa_Rad	[	35	]	=	5400		BaoXiang_jshlsa_Count	[	35	]	=	1	--	јЧ°еКЦМЧ		
	BaoXiang_jshlsa	[	36	]	=	0529		BaoXiang_jshlsa_Rad	[	36	]	=	5400		BaoXiang_jshlsa_Count	[	36	]	=	1	--	РЎСјКЦМЧ		
	BaoXiang_jshlsa	[	37	]	=	0543		BaoXiang_jshlsa_Rad	[	37	]	=	5400		BaoXiang_jshlsa_Count	[	37	]	=	1	--	ВГХЯКЦМЧ		
	BaoXiang_jshlsa	[	38	]	=	0566		BaoXiang_jshlsa_Rad	[	38	]	=	5400		BaoXiang_jshlsa_Count	[	38	]	=	1	--	ґьКуКЦМЧ		
	BaoXiang_jshlsa	[	39	]	=	1936		BaoXiang_jshlsa_Rad	[	39	]	=	5400		BaoXiang_jshlsa_Count	[	39	]	=	1	--	јІ·зКЦМЧ		
	BaoXiang_jshlsa	[	40	]	=	1948		BaoXiang_jshlsa_Rad	[	40	]	=	5400		BaoXiang_jshlsa_Count	[	40	]	=	1	--	БТ»рКЦМЧ		
	BaoXiang_jshlsa	[	41	]	=	1963		BaoXiang_jshlsa_Rad	[	41	]	=	5400		BaoXiang_jshlsa_Count	[	41	]	=	1	--	АдФВКЦМЧ		
	BaoXiang_jshlsa	[	42	]	=	1966		BaoXiang_jshlsa_Rad	[	42	]	=	5400		BaoXiang_jshlsa_Count	[	42	]	=	1	--	Т«ИХКЦМЧ		
	BaoXiang_jshlsa	[	43	]	=	1981		BaoXiang_jshlsa_Rad	[	43	]	=	5400		BaoXiang_jshlsa_Count	[	43	]	=	1	--	·з±©КЦМЧ		
																								
																								
																								
--	єЪБъЦ®Ч¦±¦Пд23РН												e0832									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jshlsb_Qua	=	23	 				BaoXiang_jshlsb_Mxcount	=	43												

--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jshlsb	=	{}					BaoXiang_jshlsb_Rad	=	{}					BaoXiang_jshlsb_Count	=	{}					
	BaoXiang_jshlsb	[	1	]	=	846		BaoXiang_jshlsb_Rad	[	1	]	=	1		BaoXiang_jshlsb_Count	[	1	]	=	1	--	єЪБъЦ®Ч¦
	BaoXiang_jshlsb	[	2	]	=	1988		BaoXiang_jshlsb_Rad	[	2	]	=	60		BaoXiang_jshlsb_Count	[	2	]	=	1	--	БТСж·вУЎµД»ГБйХЅјЧКЦМЧ
	BaoXiang_jshlsb	[	3	]	=	1990		BaoXiang_jshlsb_Rad	[	3	]	=	60		BaoXiang_jshlsb_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБй»¤КЦ
	BaoXiang_jshlsb	[	4	]	=	1992		BaoXiang_jshlsb_Rad	[	4	]	=	60		BaoXiang_jshlsb_Count	[	4	]	=	1	--	БТСж·вУЎµД»ГЦдКЦМЧ
	BaoXiang_jshlsb	[	5	]	=	1993		BaoXiang_jshlsb_Rad	[	5	]	=	60		BaoXiang_jshlsb_Count	[	5	]	=	1	--	БТСж·вУЎµД»Г·ЁКЦМЧ
	BaoXiang_jshlsb	[	6	]	=	1996		BaoXiang_jshlsb_Rad	[	6	]	=	60		BaoXiang_jshlsb_Count	[	6	]	=	1	--	БТСж·вУЎµД»ГБйЖ¤КЦМЧ
	BaoXiang_jshlsb	[	7	]	=	588		BaoXiang_jshlsb_Rad	[	7	]	=	400		BaoXiang_jshlsb_Count	[	7	]	=	1	--	ТюГШКЦМЧ
	BaoXiang_jshlsb	[	8	]	=	590		BaoXiang_jshlsb_Rad	[	8	]	=	400		BaoXiang_jshlsb_Count	[	8	]	=	1	--	ЙдИХКЦМЧ
	BaoXiang_jshlsb	[	9	]	=	592		BaoXiang_jshlsb_Rad	[	9	]	=	400		BaoXiang_jshlsb_Count	[	9	]	=	1	--	ЙсКїКЦМЧ
	BaoXiang_jshlsb	[	10	]	=	594		BaoXiang_jshlsb_Rad	[	10	]	=	400		BaoXiang_jshlsb_Count	[	10	]	=	1	--	ЙсЖжРЬГЁКЦМЧ
	BaoXiang_jshlsb	[	11	]	=	596		BaoXiang_jshlsb_Rad	[	11	]	=	400		BaoXiang_jshlsb_Count	[	11	]	=	1	--	·ЙМмКЦМЧ
	BaoXiang_jshlsb	[	12	]	=	598		BaoXiang_jshlsb_Rad	[	12	]	=	400		BaoXiang_jshlsb_Count	[	12	]	=	1	--	УгПЙЧУКЦМЧ
	BaoXiang_jshlsb	[	13	]	=	600		BaoXiang_jshlsb_Rad	[	13	]	=	400		BaoXiang_jshlsb_Count	[	13	]	=	1	--	Е­МОКЦМЧ
	BaoXiang_jshlsb	[	14	]	=	1938		BaoXiang_jshlsb_Rad	[	14	]	=	700		BaoXiang_jshlsb_Count	[	14	]	=	1	--	чичлКЦМЧ
	BaoXiang_jshlsb	[	15	]	=	1950		BaoXiang_jshlsb_Rad	[	15	]	=	700		BaoXiang_jshlsb_Count	[	15	]	=	1	--	°Ч»ўКЦМЧ
	BaoXiang_jshlsb	[	16	]	=	1965		BaoXiang_jshlsb_Rad	[	16	]	=	700		BaoXiang_jshlsb_Count	[	16	]	=	1	--	ЦмИёКЦМЧ
	BaoXiang_jshlsb	[	17	]	=	1968		BaoXiang_jshlsb_Rad	[	17	]	=	700		BaoXiang_jshlsb_Count	[	17	]	=	1	--	рЅ·пКЦМЧ
	BaoXiang_jshlsb	[	18	]	=	1983		BaoXiang_jshlsb_Rad	[	18	]	=	700		BaoXiang_jshlsb_Count	[	18	]	=	1	--	ЗаБъКЦМЧ
	BaoXiang_jshlsb	[	19	]	=	540		BaoXiang_jshlsb_Rad	[	19	]	=	700		BaoXiang_jshlsb_Count	[	19	]	=	1	--	ЧЈёЈєЈМЎКЦМЧ
	BaoXiang_jshlsb	[	20	]	=	539		BaoXiang_jshlsb_Rad	[	20	]	=	700		BaoXiang_jshlsb_Count	[	20	]	=	1	--	ёЯј¶єЈМЎКЦМЧ
	BaoXiang_jshlsb	[	21	]	=	555		BaoXiang_jshlsb_Rad	[	21	]	=	700		BaoXiang_jshlsb_Count	[	21	]	=	1	--	ЖнФёКЦМЧ
	BaoXiang_jshlsb	[	22	]	=	567		BaoXiang_jshlsb_Rad	[	22	]	=	700		BaoXiang_jshlsb_Count	[	22	]	=	1	--	ёЯј¶НГКЦМЧ
	BaoXiang_jshlsb	[	23	]	=	569		BaoXiang_jshlsb_Rad	[	23	]	=	700		BaoXiang_jshlsb_Count	[	23	]	=	1	--	ЧЈёЈНГКЦМЧ
	BaoXiang_jshlsb	[	24	]	=	570		BaoXiang_jshlsb_Rad	[	24	]	=	700		BaoXiang_jshlsb_Count	[	24	]	=	1	--	МмґНКЦМЧ
	BaoXiang_jshlsb	[	25	]	=	545		BaoXiang_jshlsb_Rad	[	25	]	=	3000		BaoXiang_jshlsb_Count	[	25	]	=	1	--	КМХЯКЦМЧ
	BaoXiang_jshlsb	[	26	]	=	547		BaoXiang_jshlsb_Rad	[	26	]	=	3000		BaoXiang_jshlsb_Count	[	26	]	=	1	--	РЕСцКЦМЧ
	BaoXiang_jshlsb	[	27	]	=	551		BaoXiang_jshlsb_Rad	[	27	]	=	3000		BaoXiang_jshlsb_Count	[	27	]	=	1	--	Ф¶РРКЦМЧ
	BaoXiang_jshlsb	[	28	]	=	554		BaoXiang_jshlsb_Rad	[	28	]	=	3000		BaoXiang_jshlsb_Count	[	28	]	=	1	--	тЇіПКЦМЧ
	BaoXiang_jshlsb	[	29	]	=	558		BaoXiang_jshlsb_Rad	[	29	]	=	3000		BaoXiang_jshlsb_Count	[	29	]	=	1	--	і¤¶ъНГКЦМЧ
	BaoXiang_jshlsb	[	30	]	=	561		BaoXiang_jshlsb_Rad	[	30	]	=	3000		BaoXiang_jshlsb_Count	[	30	]	=	1	--	єЈМЎКЦМЧ
	BaoXiang_jshlsb	[	31	]	=	564		BaoXiang_jshlsb_Rad	[	31	]	=	3000		BaoXiang_jshlsb_Count	[	31	]	=	1	--	їмАЦНГКЦМЧ
	BaoXiang_jshlsb	[	32	]	=	471		BaoXiang_jshlsb_Rad	[	32	]	=	6000		BaoXiang_jshlsb_Count	[	32	]	=	1	--	МъКЦМЧ
	BaoXiang_jshlsb	[	33	]	=	476		BaoXiang_jshlsb_Rad	[	33	]	=	6000		BaoXiang_jshlsb_Count	[	33	]	=	1	--	ЛшКЦМЧ
	BaoXiang_jshlsb	[	34	]	=	486		BaoXiang_jshlsb_Rad	[	34	]	=	6000		BaoXiang_jshlsb_Count	[	34	]	=	1	--	¶МУрКЦМЧ
	BaoXiang_jshlsb	[	35	]	=	517		BaoXiang_jshlsb_Rad	[	35	]	=	6000		BaoXiang_jshlsb_Count	[	35	]	=	1	--	јЧ°еКЦМЧ
	BaoXiang_jshlsb	[	36	]	=	529		BaoXiang_jshlsb_Rad	[	36	]	=	6000		BaoXiang_jshlsb_Count	[	36	]	=	1	--	РЎСјКЦМЧ
	BaoXiang_jshlsb	[	37	]	=	543		BaoXiang_jshlsb_Rad	[	37	]	=	6000		BaoXiang_jshlsb_Count	[	37	]	=	1	--	ВГХЯКЦМЧ
	BaoXiang_jshlsb	[	38	]	=	566		BaoXiang_jshlsb_Rad	[	38	]	=	6000		BaoXiang_jshlsb_Count	[	38	]	=	1	--	ґьКуКЦМЧ
	BaoXiang_jshlsb	[	39	]	=	1936		BaoXiang_jshlsb_Rad	[	39	]	=	6000		BaoXiang_jshlsb_Count	[	39	]	=	1	--	јІ·зКЦМЧ
	BaoXiang_jshlsb	[	40	]	=	1948		BaoXiang_jshlsb_Rad	[	40	]	=	6000		BaoXiang_jshlsb_Count	[	40	]	=	1	--	БТ»рКЦМЧ
	BaoXiang_jshlsb	[	41	]	=	1963		BaoXiang_jshlsb_Rad	[	41	]	=	6000		BaoXiang_jshlsb_Count	[	41	]	=	1	--	АдФВКЦМЧ
	BaoXiang_jshlsb	[	42	]	=	1966		BaoXiang_jshlsb_Rad	[	42	]	=	6000		BaoXiang_jshlsb_Count	[	42	]	=	1	--	Т«ИХКЦМЧ
	BaoXiang_jshlsb	[	43	]	=	1981		BaoXiang_jshlsb_Rad	[	43	]	=	6000		BaoXiang_jshlsb_Count	[	43	]	=	1	--	·з±©КЦМЧ


--	єЪБъЦ®Тн±¦Пд24РН												e0833									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jshlya_Qua	=	24	 				BaoXiang_jshlya_Mxcount	=	65												

--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jshlya	=	{}					BaoXiang_jshlya_Rad	=	{}					BaoXiang_jshlya_Count	=	{}					
	BaoXiang_jshlya	[	1	]	=	847		BaoXiang_jshlya_Rad	[	1	]	=	1		BaoXiang_jshlya_Count	[	1	]	=	1	--	єЪБъЦ®Тн
	BaoXiang_jshlya	[	2	]	=	1989		BaoXiang_jshlya_Rad	[	2	]	=	120		BaoXiang_jshlya_Count	[	2	]	=	1	--	БТСж·вУЎµД»ГБйХЅјЧСҐ
	BaoXiang_jshlya	[	3	]	=	1991		BaoXiang_jshlya_Rad	[	3	]	=	120		BaoXiang_jshlya_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБй»¤НИ
	BaoXiang_jshlya	[	4	]	=	1994		BaoXiang_jshlya_Rad	[	4	]	=	120		BaoXiang_jshlya_Count	[	4	]	=	1	--	БТСж·вУЎµД»ГЦдСҐ
	BaoXiang_jshlya	[	5	]	=	1995		BaoXiang_jshlya_Rad	[	5	]	=	120		BaoXiang_jshlya_Count	[	5	]	=	1	--	БТСж·вУЎµД»Г·ЁСҐ
	BaoXiang_jshlya	[	6	]	=	1997		BaoXiang_jshlya_Rad	[	6	]	=	120		BaoXiang_jshlya_Count	[	6	]	=	1	--	БТСж·вУЎµД»ГБйЖ¤СҐ
	BaoXiang_jshlya	[	7	]	=	748		BaoXiang_jshlya_Rad	[	7	]	=	100		BaoXiang_jshlya_Count	[	7	]	=	1	--	ТюГШСҐ
	BaoXiang_jshlya	[	8	]	=	750		BaoXiang_jshlya_Rad	[	8	]	=	100		BaoXiang_jshlya_Count	[	8	]	=	1	--	ЙдИХСҐ
	BaoXiang_jshlya	[	9	]	=	752		BaoXiang_jshlya_Rad	[	9	]	=	100		BaoXiang_jshlya_Count	[	9	]	=	1	--	ЙсКїСҐ
	BaoXiang_jshlya	[	10	]	=	754		BaoXiang_jshlya_Rad	[	10	]	=	100		BaoXiang_jshlya_Count	[	10	]	=	1	--	ЙсЖжРЬГЁСҐ
	BaoXiang_jshlya	[	11	]	=	756		BaoXiang_jshlya_Rad	[	11	]	=	100		BaoXiang_jshlya_Count	[	11	]	=	1	--	·ЙМмСҐ
	BaoXiang_jshlya	[	12	]	=	758		BaoXiang_jshlya_Rad	[	12	]	=	100		BaoXiang_jshlya_Count	[	12	]	=	1	--	УгПЙЧУСҐ
	BaoXiang_jshlya	[	13	]	=	760		BaoXiang_jshlya_Rad	[	13	]	=	100		BaoXiang_jshlya_Count	[	13	]	=	1	--	Е­МОСҐ
	BaoXiang_jshlya	[	14	]	=	830		BaoXiang_jshlya_Rad	[	14	]	=	100		BaoXiang_jshlya_Count	[	14	]	=	1	--	БйЙсСҐ
	BaoXiang_jshlya	[	15	]	=	669		BaoXiang_jshlya_Rad	[	15	]	=	450		BaoXiang_jshlya_Count	[	15	]	=	1	--	ГНЗЭСҐ
	BaoXiang_jshlya	[	16	]	=	696		BaoXiang_jshlya_Rad	[	16	]	=	450		BaoXiang_jshlya_Count	[	16	]	=	1	--	дцОРСҐ
	BaoXiang_jshlya	[	17	]	=	710		BaoXiang_jshlya_Rad	[	17	]	=	450		BaoXiang_jshlya_Count	[	17	]	=	1	--	ѕЮЗЇєЈПєСҐ
	BaoXiang_jshlya	[	18	]	=	716		BaoXiang_jshlya_Rad	[	18	]	=	450		BaoXiang_jshlya_Count	[	18	]	=	1	--	ЧЈёЈєЈМЎСҐ
	BaoXiang_jshlya	[	19	]	=	729		BaoXiang_jshlya_Rad	[	19	]	=	450		BaoXiang_jshlya_Count	[	19	]	=	1	--	±Ј»¤ХЯСҐ
	BaoXiang_jshlya	[	20	]	=	746		BaoXiang_jshlya_Rad	[	20	]	=	450		BaoXiang_jshlya_Count	[	20	]	=	1	--	МмґНСҐ
	BaoXiang_jshlya	[	21	]	=	1942		BaoXiang_jshlya_Rad	[	21	]	=	450		BaoXiang_jshlya_Count	[	21	]	=	1	--	чичлСҐ
	BaoXiang_jshlya	[	22	]	=	1954		BaoXiang_jshlya_Rad	[	22	]	=	450		BaoXiang_jshlya_Count	[	22	]	=	1	--	°Ч»ўСҐ
	BaoXiang_jshlya	[	23	]	=	1972		BaoXiang_jshlya_Rad	[	23	]	=	450		BaoXiang_jshlya_Count	[	23	]	=	1	--	ЦмИёСҐ
	BaoXiang_jshlya	[	24	]	=	1975		BaoXiang_jshlya_Rad	[	24	]	=	450		BaoXiang_jshlya_Count	[	24	]	=	1	--	рЅ·пСҐ
	BaoXiang_jshlya	[	25	]	=	1987		BaoXiang_jshlya_Rad	[	25	]	=	450		BaoXiang_jshlya_Count	[	25	]	=	1	--	ЗаБъСҐ
	BaoXiang_jshlya	[	26	]	=	651		BaoXiang_jshlya_Rad	[	26	]	=	900		BaoXiang_jshlya_Count	[	26	]	=	1	--	ЅрёХСҐ
	BaoXiang_jshlya	[	27	]	=	655		BaoXiang_jshlya_Rad	[	27	]	=	900		BaoXiang_jshlya_Count	[	27	]	=	1	--	¶ЖТшёЦСҐ
	BaoXiang_jshlya	[	28	]	=	668		BaoXiang_jshlya_Rad	[	28	]	=	900		BaoXiang_jshlya_Count	[	28	]	=	1	--	°ЯрЇСҐ
	BaoXiang_jshlya	[	29	]	=	695		BaoXiang_jshlya_Rad	[	29	]	=	900		BaoXiang_jshlya_Count	[	29	]	=	1	--	м«·зСҐ
	BaoXiang_jshlya	[	30	]	=	707		BaoXiang_jshlya_Rad	[	30	]	=	900		BaoXiang_jshlya_Count	[	30	]	=	1	--	БъПєСҐ
	BaoXiang_jshlya	[	31	]	=	709		BaoXiang_jshlya_Rad	[	31	]	=	900		BaoXiang_jshlya_Count	[	31	]	=	1	--	ґуєЈПєСҐ
	BaoXiang_jshlya	[	32	]	=	715		BaoXiang_jshlya_Rad	[	32	]	=	900		BaoXiang_jshlya_Count	[	32	]	=	1	--	ёЯј¶єЈМЎСҐ
	BaoXiang_jshlya	[	33	]	=	728		BaoXiang_jshlya_Rad	[	33	]	=	900		BaoXiang_jshlya_Count	[	33	]	=	1	--	ЦОБЖХЯСҐ
	BaoXiang_jshlya	[	34	]	=	731		BaoXiang_jshlya_Rad	[	34	]	=	900		BaoXiang_jshlya_Count	[	34	]	=	1	--	ЖнФёСҐ
	BaoXiang_jshlya	[	35	]	=	734		BaoXiang_jshlya_Rad	[	35	]	=	900		BaoXiang_jshlya_Count	[	35	]	=	1	--	і¤¶ъНГСҐ
	BaoXiang_jshlya	[	36	]	=	737		BaoXiang_jshlya_Rad	[	36	]	=	900		BaoXiang_jshlya_Count	[	36	]	=	1	--	єЈМЎСҐ
	BaoXiang_jshlya	[	37	]	=	743		BaoXiang_jshlya_Rad	[	37	]	=	900		BaoXiang_jshlya_Count	[	37	]	=	1	--	ёЯј¶НГСҐ
	BaoXiang_jshlya	[	38	]	=	1941		BaoXiang_jshlya_Rad	[	38	]	=	900		BaoXiang_jshlya_Count	[	38	]	=	1	--	ОчЛ№СҐ
	BaoXiang_jshlya	[	39	]	=	1953		BaoXiang_jshlya_Rad	[	39	]	=	900		BaoXiang_jshlya_Count	[	39	]	=	1	--	µП¶ыНЯДИСҐ
	BaoXiang_jshlya	[	40	]	=	1971		BaoXiang_jshlya_Rad	[	40	]	=	900		BaoXiang_jshlya_Count	[	40	]	=	1	--	УИµП°ІСҐ
	BaoXiang_jshlya	[	41	]	=	1974		BaoXiang_jshlya_Rad	[	41	]	=	900		BaoXiang_jshlya_Count	[	41	]	=	1	--	ПЈ¶ыСҐ
	BaoXiang_jshlya	[	42	]	=	1986		BaoXiang_jshlya_Rad	[	42	]	=	900		BaoXiang_jshlya_Count	[	42	]	=	1	--	ёҐАы°ІСҐ
	BaoXiang_jshlya	[	43	]	=	652		BaoXiang_jshlya_Rad	[	43	]	=	3500		BaoXiang_jshlya_Count	[	43	]	=	1	--	ЛшСҐ
	BaoXiang_jshlya	[	44	]	=	653		BaoXiang_jshlya_Rad	[	44	]	=	3500		BaoXiang_jshlya_Count	[	44	]	=	1	--	ЦШРНёЦСҐ
	BaoXiang_jshlya	[	45	]	=	654		BaoXiang_jshlya_Rad	[	45	]	=	3500		BaoXiang_jshlya_Count	[	45	]	=	1	--	Зб±гёЦСҐ
	BaoXiang_jshlya	[	46	]	=	662		BaoXiang_jshlya_Rad	[	46	]	=	3500		BaoXiang_jshlya_Count	[	46	]	=	1	--	¶МУрСҐ
	BaoXiang_jshlya	[	47	]	=	667		BaoXiang_jshlya_Rad	[	47	]	=	3500		BaoXiang_jshlya_Count	[	47	]	=	1	--	ЙЅИёСҐ
	BaoXiang_jshlya	[	48	]	=	693		BaoXiang_jshlya_Rad	[	48	]	=	3500		BaoXiang_jshlya_Count	[	48	]	=	1	--	јЧ°еСҐ
	BaoXiang_jshlya	[	49	]	=	694		BaoXiang_jshlya_Rad	[	49	]	=	3500		BaoXiang_jshlya_Count	[	49	]	=	1	--	О¦ёЛСҐ
	BaoXiang_jshlya	[	50	]	=	705		BaoXiang_jshlya_Rad	[	50	]	=	3500		BaoXiang_jshlya_Count	[	50	]	=	1	--	РЎСјСҐ
	BaoXiang_jshlya	[	51	]	=	708		BaoXiang_jshlya_Rad	[	51	]	=	3500		BaoXiang_jshlya_Count	[	51	]	=	1	--	ТЎ°ЪСјСҐ
	BaoXiang_jshlya	[	52	]	=	714		BaoXiang_jshlya_Rad	[	52	]	=	3500		BaoXiang_jshlya_Count	[	52	]	=	1	--	±Д±ДКуСҐ
	BaoXiang_jshlya	[	53	]	=	719		BaoXiang_jshlya_Rad	[	53	]	=	3500		BaoXiang_jshlya_Count	[	53	]	=	1	--	ВГХЯСҐ
	BaoXiang_jshlya	[	54	]	=	720		BaoXiang_jshlya_Rad	[	54	]	=	3500		BaoXiang_jshlya_Count	[	54	]	=	1	--	»¤КїСҐ
	BaoXiang_jshlya	[	55	]	=	722		BaoXiang_jshlya_Rad	[	55	]	=	3500		BaoXiang_jshlya_Count	[	55	]	=	1	--	КҐЦ°СҐ
	BaoXiang_jshlya	[	56	]	=	727		BaoXiang_jshlya_Rad	[	56	]	=	3500		BaoXiang_jshlya_Count	[	56	]	=	1	--	Ф¶РРСҐ
	BaoXiang_jshlya	[	57	]	=	730		BaoXiang_jshlya_Rad	[	57	]	=	3500		BaoXiang_jshlya_Count	[	57	]	=	1	--	тЇіПСҐ
	BaoXiang_jshlya	[	58	]	=	740		BaoXiang_jshlya_Rad	[	58	]	=	3500		BaoXiang_jshlya_Count	[	58	]	=	1	--	їмАЦНГСҐ
	BaoXiang_jshlya	[	59	]	=	742		BaoXiang_jshlya_Rad	[	59	]	=	3500		BaoXiang_jshlya_Count	[	59	]	=	1	--	ґьКуСҐ
	BaoXiang_jshlya	[	60	]	=	744		BaoXiang_jshlya_Rad	[	60	]	=	3500		BaoXiang_jshlya_Count	[	60	]	=	1	--	±¦±ґНГСҐ
	BaoXiang_jshlya	[	61	]	=	1940		BaoXiang_jshlya_Rad	[	61	]	=	3500		BaoXiang_jshlya_Count	[	61	]	=	1	--	јІ·зСҐ
	BaoXiang_jshlya	[	62	]	=	1952		BaoXiang_jshlya_Rad	[	62	]	=	3500		BaoXiang_jshlya_Count	[	62	]	=	1	--	БТ»рСҐ
	BaoXiang_jshlya	[	63	]	=	1970		BaoXiang_jshlya_Rad	[	63	]	=	3500		BaoXiang_jshlya_Count	[	63	]	=	1	--	АдФВСҐ
	BaoXiang_jshlya	[	64	]	=	1973		BaoXiang_jshlya_Rad	[	64	]	=	3500		BaoXiang_jshlya_Count	[	64	]	=	1	--	Т«ИХСҐ
	BaoXiang_jshlya	[	65	]	=	1985		BaoXiang_jshlya_Rad	[	65	]	=	3500		BaoXiang_jshlya_Count	[	65	]	=	1	--	·з±©СҐ


--	єЪБъЦ®Тн±¦Пд23РН												e0833									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jshlyb_Qua	=	23	 				BaoXiang_jshlyb_Mxcount	=	65												

--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jshlyb	=	{}					BaoXiang_jshlyb_Rad	=	{}					BaoXiang_jshlyb_Count	=	{}					
	BaoXiang_jshlyb	[	1	]	=	847		BaoXiang_jshlyb_Rad	[	1	]	=	1		BaoXiang_jshlyb_Count	[	1	]	=	1	--	єЪБъЦ®Тн
	BaoXiang_jshlyb	[	2	]	=	1989		BaoXiang_jshlyb_Rad	[	2	]	=	80		BaoXiang_jshlyb_Count	[	2	]	=	1	--	БТСж·вУЎµД»ГБйХЅјЧСҐ
	BaoXiang_jshlyb	[	3	]	=	1991		BaoXiang_jshlyb_Rad	[	3	]	=	80		BaoXiang_jshlyb_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБй»¤НИ
	BaoXiang_jshlyb	[	4	]	=	1994		BaoXiang_jshlyb_Rad	[	4	]	=	80		BaoXiang_jshlyb_Count	[	4	]	=	1	--	БТСж·вУЎµД»ГЦдСҐ
	BaoXiang_jshlyb	[	5	]	=	1995		BaoXiang_jshlyb_Rad	[	5	]	=	80		BaoXiang_jshlyb_Count	[	5	]	=	1	--	БТСж·вУЎµД»Г·ЁСҐ
	BaoXiang_jshlyb	[	6	]	=	1997		BaoXiang_jshlyb_Rad	[	6	]	=	80		BaoXiang_jshlyb_Count	[	6	]	=	1	--	БТСж·вУЎµД»ГБйЖ¤СҐ
	BaoXiang_jshlyb	[	7	]	=	748		BaoXiang_jshlyb_Rad	[	7	]	=	60		BaoXiang_jshlyb_Count	[	7	]	=	1	--	ТюГШСҐ
	BaoXiang_jshlyb	[	8	]	=	750		BaoXiang_jshlyb_Rad	[	8	]	=	60		BaoXiang_jshlyb_Count	[	8	]	=	1	--	ЙдИХСҐ
	BaoXiang_jshlyb	[	9	]	=	752		BaoXiang_jshlyb_Rad	[	9	]	=	60		BaoXiang_jshlyb_Count	[	9	]	=	1	--	ЙсКїСҐ
	BaoXiang_jshlyb	[	10	]	=	754		BaoXiang_jshlyb_Rad	[	10	]	=	60		BaoXiang_jshlyb_Count	[	10	]	=	1	--	ЙсЖжРЬГЁСҐ
	BaoXiang_jshlyb	[	11	]	=	756		BaoXiang_jshlyb_Rad	[	11	]	=	60		BaoXiang_jshlyb_Count	[	11	]	=	1	--	·ЙМмСҐ
	BaoXiang_jshlyb	[	12	]	=	758		BaoXiang_jshlyb_Rad	[	12	]	=	60		BaoXiang_jshlyb_Count	[	12	]	=	1	--	УгПЙЧУСҐ
	BaoXiang_jshlyb	[	13	]	=	760		BaoXiang_jshlyb_Rad	[	13	]	=	60		BaoXiang_jshlyb_Count	[	13	]	=	1	--	Е­МОСҐ
	BaoXiang_jshlyb	[	14	]	=	830		BaoXiang_jshlyb_Rad	[	14	]	=	60		BaoXiang_jshlyb_Count	[	14	]	=	1	--	БйЙсСҐ
	BaoXiang_jshlyb	[	15	]	=	669		BaoXiang_jshlyb_Rad	[	15	]	=	300		BaoXiang_jshlyb_Count	[	15	]	=	1	--	ГНЗЭСҐ
	BaoXiang_jshlyb	[	16	]	=	696		BaoXiang_jshlyb_Rad	[	16	]	=	300		BaoXiang_jshlyb_Count	[	16	]	=	1	--	дцОРСҐ
	BaoXiang_jshlyb	[	17	]	=	710		BaoXiang_jshlyb_Rad	[	17	]	=	300		BaoXiang_jshlyb_Count	[	17	]	=	1	--	ѕЮЗЇєЈПєСҐ
	BaoXiang_jshlyb	[	18	]	=	716		BaoXiang_jshlyb_Rad	[	18	]	=	300		BaoXiang_jshlyb_Count	[	18	]	=	1	--	ЧЈёЈєЈМЎСҐ
	BaoXiang_jshlyb	[	19	]	=	729		BaoXiang_jshlyb_Rad	[	19	]	=	300		BaoXiang_jshlyb_Count	[	19	]	=	1	--	±Ј»¤ХЯСҐ
	BaoXiang_jshlyb	[	20	]	=	746		BaoXiang_jshlyb_Rad	[	20	]	=	300		BaoXiang_jshlyb_Count	[	20	]	=	1	--	МмґНСҐ
	BaoXiang_jshlyb	[	21	]	=	1942		BaoXiang_jshlyb_Rad	[	21	]	=	300		BaoXiang_jshlyb_Count	[	21	]	=	1	--	чичлСҐ
	BaoXiang_jshlyb	[	22	]	=	1954		BaoXiang_jshlyb_Rad	[	22	]	=	300		BaoXiang_jshlyb_Count	[	22	]	=	1	--	°Ч»ўСҐ
	BaoXiang_jshlyb	[	23	]	=	1972		BaoXiang_jshlyb_Rad	[	23	]	=	300		BaoXiang_jshlyb_Count	[	23	]	=	1	--	ЦмИёСҐ
	BaoXiang_jshlyb	[	24	]	=	1975		BaoXiang_jshlyb_Rad	[	24	]	=	300		BaoXiang_jshlyb_Count	[	24	]	=	1	--	рЅ·пСҐ
	BaoXiang_jshlyb	[	25	]	=	1987		BaoXiang_jshlyb_Rad	[	25	]	=	300		BaoXiang_jshlyb_Count	[	25	]	=	1	--	ЗаБъСҐ
	BaoXiang_jshlyb	[	26	]	=	651		BaoXiang_jshlyb_Rad	[	26	]	=	900		BaoXiang_jshlyb_Count	[	26	]	=	1	--	ЅрёХСҐ
	BaoXiang_jshlyb	[	27	]	=	655		BaoXiang_jshlyb_Rad	[	27	]	=	900		BaoXiang_jshlyb_Count	[	27	]	=	1	--	¶ЖТшёЦСҐ
	BaoXiang_jshlyb	[	28	]	=	668		BaoXiang_jshlyb_Rad	[	28	]	=	900		BaoXiang_jshlyb_Count	[	28	]	=	1	--	°ЯрЇСҐ
	BaoXiang_jshlyb	[	29	]	=	695		BaoXiang_jshlyb_Rad	[	29	]	=	900		BaoXiang_jshlyb_Count	[	29	]	=	1	--	м«·зСҐ
	BaoXiang_jshlyb	[	30	]	=	707		BaoXiang_jshlyb_Rad	[	30	]	=	900		BaoXiang_jshlyb_Count	[	30	]	=	1	--	БъПєСҐ
	BaoXiang_jshlyb	[	31	]	=	709		BaoXiang_jshlyb_Rad	[	31	]	=	900		BaoXiang_jshlyb_Count	[	31	]	=	1	--	ґуєЈПєСҐ
	BaoXiang_jshlyb	[	32	]	=	715		BaoXiang_jshlyb_Rad	[	32	]	=	900		BaoXiang_jshlyb_Count	[	32	]	=	1	--	ёЯј¶єЈМЎСҐ
	BaoXiang_jshlyb	[	33	]	=	728		BaoXiang_jshlyb_Rad	[	33	]	=	900		BaoXiang_jshlyb_Count	[	33	]	=	1	--	ЦОБЖХЯСҐ
	BaoXiang_jshlyb	[	34	]	=	731		BaoXiang_jshlyb_Rad	[	34	]	=	900		BaoXiang_jshlyb_Count	[	34	]	=	1	--	ЖнФёСҐ
	BaoXiang_jshlyb	[	35	]	=	734		BaoXiang_jshlyb_Rad	[	35	]	=	900		BaoXiang_jshlyb_Count	[	35	]	=	1	--	і¤¶ъНГСҐ
	BaoXiang_jshlyb	[	36	]	=	737		BaoXiang_jshlyb_Rad	[	36	]	=	900		BaoXiang_jshlyb_Count	[	36	]	=	1	--	єЈМЎСҐ
	BaoXiang_jshlyb	[	37	]	=	743		BaoXiang_jshlyb_Rad	[	37	]	=	900		BaoXiang_jshlyb_Count	[	37	]	=	1	--	ёЯј¶НГСҐ
	BaoXiang_jshlyb	[	38	]	=	1941		BaoXiang_jshlyb_Rad	[	38	]	=	900		BaoXiang_jshlyb_Count	[	38	]	=	1	--	ОчЛ№СҐ
	BaoXiang_jshlyb	[	39	]	=	1953		BaoXiang_jshlyb_Rad	[	39	]	=	900		BaoXiang_jshlyb_Count	[	39	]	=	1	--	µП¶ыНЯДИСҐ
	BaoXiang_jshlyb	[	40	]	=	1971		BaoXiang_jshlyb_Rad	[	40	]	=	900		BaoXiang_jshlyb_Count	[	40	]	=	1	--	УИµП°ІСҐ
	BaoXiang_jshlyb	[	41	]	=	1974		BaoXiang_jshlyb_Rad	[	41	]	=	900		BaoXiang_jshlyb_Count	[	41	]	=	1	--	ПЈ¶ыСҐ
	BaoXiang_jshlyb	[	42	]	=	1986		BaoXiang_jshlyb_Rad	[	42	]	=	900		BaoXiang_jshlyb_Count	[	42	]	=	1	--	ёҐАы°ІСҐ
	BaoXiang_jshlyb	[	43	]	=	652		BaoXiang_jshlyb_Rad	[	43	]	=	3700		BaoXiang_jshlyb_Count	[	43	]	=	1	--	ЛшСҐ
	BaoXiang_jshlyb	[	44	]	=	653		BaoXiang_jshlyb_Rad	[	44	]	=	3700		BaoXiang_jshlyb_Count	[	44	]	=	1	--	ЦШРНёЦСҐ
	BaoXiang_jshlyb	[	45	]	=	654		BaoXiang_jshlyb_Rad	[	45	]	=	3700		BaoXiang_jshlyb_Count	[	45	]	=	1	--	Зб±гёЦСҐ
	BaoXiang_jshlyb	[	46	]	=	662		BaoXiang_jshlyb_Rad	[	46	]	=	3700		BaoXiang_jshlyb_Count	[	46	]	=	1	--	¶МУрСҐ
	BaoXiang_jshlyb	[	47	]	=	667		BaoXiang_jshlyb_Rad	[	47	]	=	3700		BaoXiang_jshlyb_Count	[	47	]	=	1	--	ЙЅИёСҐ
	BaoXiang_jshlyb	[	48	]	=	693		BaoXiang_jshlyb_Rad	[	48	]	=	3700		BaoXiang_jshlyb_Count	[	48	]	=	1	--	јЧ°еСҐ
	BaoXiang_jshlyb	[	49	]	=	694		BaoXiang_jshlyb_Rad	[	49	]	=	3700		BaoXiang_jshlyb_Count	[	49	]	=	1	--	О¦ёЛСҐ
	BaoXiang_jshlyb	[	50	]	=	705		BaoXiang_jshlyb_Rad	[	50	]	=	3700		BaoXiang_jshlyb_Count	[	50	]	=	1	--	РЎСјСҐ
	BaoXiang_jshlyb	[	51	]	=	708		BaoXiang_jshlyb_Rad	[	51	]	=	3700		BaoXiang_jshlyb_Count	[	51	]	=	1	--	ТЎ°ЪСјСҐ
	BaoXiang_jshlyb	[	52	]	=	714		BaoXiang_jshlyb_Rad	[	52	]	=	3700		BaoXiang_jshlyb_Count	[	52	]	=	1	--	±Д±ДКуСҐ
	BaoXiang_jshlyb	[	53	]	=	719		BaoXiang_jshlyb_Rad	[	53	]	=	3700		BaoXiang_jshlyb_Count	[	53	]	=	1	--	ВГХЯСҐ
	BaoXiang_jshlyb	[	54	]	=	720		BaoXiang_jshlyb_Rad	[	54	]	=	3700		BaoXiang_jshlyb_Count	[	54	]	=	1	--	»¤КїСҐ
	BaoXiang_jshlyb	[	55	]	=	722		BaoXiang_jshlyb_Rad	[	55	]	=	3700		BaoXiang_jshlyb_Count	[	55	]	=	1	--	КҐЦ°СҐ
	BaoXiang_jshlyb	[	56	]	=	727		BaoXiang_jshlyb_Rad	[	56	]	=	3700		BaoXiang_jshlyb_Count	[	56	]	=	1	--	Ф¶РРСҐ
	BaoXiang_jshlyb	[	57	]	=	730		BaoXiang_jshlyb_Rad	[	57	]	=	3700		BaoXiang_jshlyb_Count	[	57	]	=	1	--	тЇіПСҐ
	BaoXiang_jshlyb	[	58	]	=	740		BaoXiang_jshlyb_Rad	[	58	]	=	3700		BaoXiang_jshlyb_Count	[	58	]	=	1	--	їмАЦНГСҐ
	BaoXiang_jshlyb	[	59	]	=	742		BaoXiang_jshlyb_Rad	[	59	]	=	3700		BaoXiang_jshlyb_Count	[	59	]	=	1	--	ґьКуСҐ
	BaoXiang_jshlyb	[	60	]	=	744		BaoXiang_jshlyb_Rad	[	60	]	=	3700		BaoXiang_jshlyb_Count	[	60	]	=	1	--	±¦±ґНГСҐ
	BaoXiang_jshlyb	[	61	]	=	1940		BaoXiang_jshlyb_Rad	[	61	]	=	3700		BaoXiang_jshlyb_Count	[	61	]	=	1	--	јІ·зСҐ
	BaoXiang_jshlyb	[	62	]	=	1952		BaoXiang_jshlyb_Rad	[	62	]	=	3700		BaoXiang_jshlyb_Count	[	62	]	=	1	--	БТ»рСҐ
	BaoXiang_jshlyb	[	63	]	=	1970		BaoXiang_jshlyb_Rad	[	63	]	=	3700		BaoXiang_jshlyb_Count	[	63	]	=	1	--	АдФВСҐ
	BaoXiang_jshlyb	[	64	]	=	1973		BaoXiang_jshlyb_Rad	[	64	]	=	3700		BaoXiang_jshlyb_Count	[	64	]	=	1	--	Т«ИХСҐ
	BaoXiang_jshlyb	[	65	]	=	1985		BaoXiang_jshlyb_Rad	[	65	]	=	3700		BaoXiang_jshlyb_Count	[	65	]	=	1	--	·з±©СҐ
																								
																								
--	ГФ»ГЦ®ґМ±¦Пд24РН												w0049											
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmhzca_Qua	=	24	 				BaoXiang_jsmhzca_Mxcount	=	19												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmhzca	=	{}					BaoXiang_jsmhzca_Rad	=	{}					BaoXiang_jsmhzca_Count	=	{}					
	BaoXiang_jsmhzca	[	1	]	=	1920		BaoXiang_jsmhzca_Rad	[	1	]	=	10 		BaoXiang_jsmhzca_Count	[	1	]	=	1	--	І»ЛА·вУЎµД°µУ°Ц®СА
	BaoXiang_jsmhzca	[	2	]	=	1921		BaoXiang_jsmhzca_Rad	[	2	]	=	30		BaoXiang_jsmhzca_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЧзЦдЦ®ґМ
	BaoXiang_jsmhzca	[	3	]	=	1922		BaoXiang_jsmhzca_Rad	[	3	]	=	20		BaoXiang_jsmhzca_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйЦ®СА
	BaoXiang_jsmhzca	[	4	]	=	1923		BaoXiang_jsmhzca_Rad	[	4	]	=	1		BaoXiang_jsmhzca_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФ»ГЦ®ґМ
	BaoXiang_jsmhzca	[	5	]	=	0151		BaoXiang_jsmhzca_Rad	[	5	]	=	50		BaoXiang_jsmhzca_Count	[	5	]	=	1	--	¶П»к
	BaoXiang_jsmhzca	[	6	]	=	0079		BaoXiang_jsmhzca_Rad	[	6	]	=	50		BaoXiang_jsmhzca_Count	[	6	]	=	1	--	єЈЙскЄ
	BaoXiang_jsmhzca	[	7	]	=	0078		BaoXiang_jsmhzca_Rad	[	7	]	=	100		BaoXiang_jsmhzca_Count	[	7	]	=	1	--	БъНхШ°КЧ
	BaoXiang_jsmhzca	[	8	]	=	1448		BaoXiang_jsmhzca_Rad	[	8	]	=	100		BaoXiang_jsmhzca_Count	[	8	]	=	1	--	ѕэНхШ°КЧ
	BaoXiang_jsmhzca	[	9	]	=	0077		BaoXiang_jsmhzca_Rad	[	9	]	=	110		BaoXiang_jsmhzca_Count	[	9	]	=	1	--	АЗСАґМ
	BaoXiang_jsmhzca	[	10	]	=	0084		BaoXiang_jsmhzca_Rad	[	10	]	=	110		BaoXiang_jsmhzca_Count	[	10	]	=	1	--	КИСЄАыИР
	BaoXiang_jsmhzca	[	11	]	=	1419		BaoXiang_jsmhzca_Rad	[	11	]	=	110		BaoXiang_jsmhzca_Count	[	11	]	=	1	--	Й±ЙЛИР
	BaoXiang_jsmhzca	[	12	]	=	1426		BaoXiang_jsmhzca_Rad	[	12	]	=	110		BaoXiang_jsmhzca_Count	[	12	]	=	1	--	Ш¬ГОШ°КЧ
	BaoXiang_jsmhzca	[	13	]	=	1447		BaoXiang_jsmhzca_Rad	[	13	]	=	110		BaoXiang_jsmhzca_Count	[	13	]	=	1	--	єЈµБШ°КЧ
	BaoXiang_jsmhzca	[	14	]	=	1461		BaoXiang_jsmhzca_Rad	[	14	]	=	110		BaoXiang_jsmhzca_Count	[	14	]	=	1	--	ЧзЦдШ°КЧ
	BaoXiang_jsmhzca	[	15	]	=	0076		BaoXiang_jsmhzca_Rad	[	15	]	=	18000		BaoXiang_jsmhzca_Count	[	15	]	=	1	--	ФВСАґМ
	BaoXiang_jsmhzca	[	16	]	=	1418		BaoXiang_jsmhzca_Rad	[	16	]	=	18000		BaoXiang_jsmhzca_Count	[	16	]	=	1	--	РЗ№вґМ
	BaoXiang_jsmhzca	[	17	]	=	1425		BaoXiang_jsmhzca_Rad	[	17	]	=	18000		BaoXiang_jsmhzca_Count	[	17	]	=	1	--	КЇУўШ°КЧ
	BaoXiang_jsmhzca	[	18	]	=	1446		BaoXiang_jsmhzca_Rad	[	18	]	=	18000		BaoXiang_jsmhzca_Count	[	18	]	=	1	--	ЙБЛёґМ
	BaoXiang_jsmhzca	[	19	]	=	1460		BaoXiang_jsmhzca_Rad	[	19	]	=	18000		BaoXiang_jsmhzca_Count	[	19	]	=	1	--	±¦КЇШ°КЧ

																						
--	ГФ»ГЦ®ґМ±¦Пд23РН												w0049									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmhzcb_Qua	=	23	 				BaoXiang_jsmhzcb_Mxcount	=	19												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmhzcb	=	{}					BaoXiang_jsmhzcb_Rad	=	{}					BaoXiang_jsmhzcb_Count	=	{}					
	BaoXiang_jsmhzcb	[	1	]	=	1920		BaoXiang_jsmhzcb_Rad	[	1	]	=	20 		BaoXiang_jsmhzcb_Count	[	1	]	=	1	--	І»ЛА·вУЎµД°µУ°Ц®СА
	BaoXiang_jsmhzcb	[	2	]	=	1921		BaoXiang_jsmhzcb_Rad	[	2	]	=	30		BaoXiang_jsmhzcb_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЧзЦдЦ®ґМ
	BaoXiang_jsmhzcb	[	3	]	=	1922		BaoXiang_jsmhzcb_Rad	[	3	]	=	10		BaoXiang_jsmhzcb_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйЦ®СА
	BaoXiang_jsmhzcb	[	4	]	=	1923		BaoXiang_jsmhzcb_Rad	[	4	]	=	5		BaoXiang_jsmhzcb_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФ»ГЦ®ґМ
	BaoXiang_jsmhzcb	[	5	]	=	0151		BaoXiang_jsmhzcb_Rad	[	5	]	=	30		BaoXiang_jsmhzcb_Count	[	5	]	=	1	--	¶П»к
	BaoXiang_jsmhzcb	[	6	]	=	0079		BaoXiang_jsmhzcb_Rad	[	6	]	=	30		BaoXiang_jsmhzcb_Count	[	6	]	=	1	--	єЈЙскЄ
	BaoXiang_jsmhzcb	[	7	]	=	0078		BaoXiang_jsmhzcb_Rad	[	7	]	=	70		BaoXiang_jsmhzcb_Count	[	7	]	=	1	--	БъНхШ°КЧ
	BaoXiang_jsmhzcb	[	8	]	=	1448		BaoXiang_jsmhzcb_Rad	[	8	]	=	70		BaoXiang_jsmhzcb_Count	[	8	]	=	1	--	ѕэНхШ°КЧ
	BaoXiang_jsmhzcb	[	9	]	=	0077		BaoXiang_jsmhzcb_Rad	[	9	]	=	100		BaoXiang_jsmhzcb_Count	[	9	]	=	1	--	АЗСАґМ
	BaoXiang_jsmhzcb	[	10	]	=	0084		BaoXiang_jsmhzcb_Rad	[	10	]	=	100		BaoXiang_jsmhzcb_Count	[	10	]	=	1	--	КИСЄАыИР
	BaoXiang_jsmhzcb	[	11	]	=	1419		BaoXiang_jsmhzcb_Rad	[	11	]	=	100		BaoXiang_jsmhzcb_Count	[	11	]	=	1	--	Й±ЙЛИР
	BaoXiang_jsmhzcb	[	12	]	=	1426		BaoXiang_jsmhzcb_Rad	[	12	]	=	100		BaoXiang_jsmhzcb_Count	[	12	]	=	1	--	Ш¬ГОШ°КЧ
	BaoXiang_jsmhzcb	[	13	]	=	1447		BaoXiang_jsmhzcb_Rad	[	13	]	=	100		BaoXiang_jsmhzcb_Count	[	13	]	=	1	--	єЈµБШ°КЧ
	BaoXiang_jsmhzcb	[	14	]	=	1461		BaoXiang_jsmhzcb_Rad	[	14	]	=	100		BaoXiang_jsmhzcb_Count	[	14	]	=	1	--	ЧзЦдШ°КЧ
	BaoXiang_jsmhzcb	[	15	]	=	0076		BaoXiang_jsmhzcb_Rad	[	15	]	=	18500		BaoXiang_jsmhzcb_Count	[	15	]	=	1	--	ФВСАґМ
	BaoXiang_jsmhzcb	[	16	]	=	1418		BaoXiang_jsmhzcb_Rad	[	16	]	=	18500		BaoXiang_jsmhzcb_Count	[	16	]	=	1	--	РЗ№вґМ
	BaoXiang_jsmhzcb	[	17	]	=	1425		BaoXiang_jsmhzcb_Rad	[	17	]	=	18500		BaoXiang_jsmhzcb_Count	[	17	]	=	1	--	КЇУўШ°КЧ
	BaoXiang_jsmhzcb	[	18	]	=	1446		BaoXiang_jsmhzcb_Rad	[	18	]	=	18500		BaoXiang_jsmhzcb_Count	[	18	]	=	1	--	ЙБЛёґМ
	BaoXiang_jsmhzcb	[	19	]	=	1460		BaoXiang_jsmhzcb_Rad	[	19	]	=	18500		BaoXiang_jsmhzcb_Count	[	19	]	=	1	--	±¦КЇШ°КЧ

																						
--	ГФЦд·ЁХИ±¦Пд24РН												w0062									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmzfza_Qua	=	24	 				BaoXiang_jsmzfza_Mxcount	=	18												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmzfza	=	{}					BaoXiang_jsmzfza_Rad	=	{}					BaoXiang_jsmzfza_Count	=	{}					
	BaoXiang_jsmzfza	[	1	]	=	1906		BaoXiang_jsmzfza_Rad	[	1	]	=	10 		BaoXiang_jsmzfza_Count	[	1	]	=	1	--	І»ЛА·вУЎµДЖЖД§·ЁХИ
	BaoXiang_jsmzfza	[	2	]	=	1914		BaoXiang_jsmzfza_Rad	[	2	]	=	30		BaoXiang_jsmzfza_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦдОД·ЁХИ
	BaoXiang_jsmzfza	[	3	]	=	1915		BaoXiang_jsmzfza_Rad	[	3	]	=	20		BaoXiang_jsmzfza_Count	[	3	]	=	1	--	БТСж·вУЎµД»Г»ЇЦ®ХИ
	BaoXiang_jsmzfza	[	4	]	=	1916		BaoXiang_jsmzfza_Rad	[	4	]	=	1		BaoXiang_jsmzfza_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦд·ЁХИ
	BaoXiang_jsmzfza	[	5	]	=	0112		BaoXiang_jsmzfza_Rad	[	5	]	=	50		BaoXiang_jsmzfza_Count	[	5	]	=	1	--	КФБ¶Ц®иЖ
	BaoXiang_jsmzfza	[	6	]	=	1439		BaoXiang_jsmzfza_Rad	[	6	]	=	100		BaoXiang_jsmzfza_Count	[	6	]	=	1	--	ЙсЗґЦ®ХИ
	BaoXiang_jsmzfza	[	7	]	=	1474		BaoXiang_jsmzfza_Rad	[	7	]	=	100		BaoXiang_jsmzfza_Count	[	7	]	=	1	--	ЗзМмЦ®ХИ
	BaoXiang_jsmzfza	[	8	]	=	3812		BaoXiang_jsmzfza_Rad	[	8	]	=	100		BaoXiang_jsmzfza_Count	[	8	]	=	1	--	ЦмИё·ЁХИ
	BaoXiang_jsmzfza	[	9	]	=	4300		BaoXiang_jsmzfza_Rad	[	9	]	=	100		BaoXiang_jsmzfza_Count	[	9	]	=	1	--	іН·ЈЦ®ХИ
	BaoXiang_jsmzfza	[	10	]	=	1432		BaoXiang_jsmzfza_Rad	[	10	]	=	200		BaoXiang_jsmzfza_Count	[	10	]	=	1	--	ЕщцЁ·ЁХИ
	BaoXiang_jsmzfza	[	11	]	=	1438		BaoXiang_jsmzfza_Rad	[	11	]	=	200		BaoXiang_jsmzfza_Count	[	11	]	=	1	--	Е­СЧ·ЁХИ
	BaoXiang_jsmzfza	[	12	]	=	1467		BaoXiang_jsmzfza_Rad	[	12	]	=	200		BaoXiang_jsmzfza_Count	[	12	]	=	1	--	КҐХЯ·ЁХИ
	BaoXiang_jsmzfza	[	13	]	=	1473		BaoXiang_jsmzfza_Rad	[	13	]	=	200		BaoXiang_jsmzfza_Count	[	13	]	=	1	--	БТ»р·ЁХИ
	BaoXiang_jsmzfza	[	14	]	=	3811		BaoXiang_jsmzfza_Rad	[	14	]	=	200		BaoXiang_jsmzfza_Count	[	14	]	=	1	--	УИµП°ІЦ®ХИ
	BaoXiang_jsmzfza	[	15	]	=	1431		BaoXiang_jsmzfza_Rad	[	15	]	=	2100		BaoXiang_jsmzfza_Count	[	15	]	=	1	--	Т°РФИЁХИ
	BaoXiang_jsmzfza	[	16	]	=	1437		BaoXiang_jsmzfza_Rad	[	16	]	=	2100		BaoXiang_jsmzfza_Count	[	16	]	=	1	--	С№ЦЖЦ®ХИ
	BaoXiang_jsmzfza	[	17	]	=	1466		BaoXiang_jsmzfza_Rad	[	17	]	=	2100		BaoXiang_jsmzfza_Count	[	17	]	=	1	--	»оБ¦ИЁХИ
	BaoXiang_jsmzfza	[	18	]	=	1472		BaoXiang_jsmzfza_Rad	[	18	]	=	2100		BaoXiang_jsmzfza_Count	[	18	]	=	1	--	Е¬Б¦Ц®ХИ

																						
--	ГФЦд·ЁХИ±¦Пд23РН												w0062									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmzfzb_Qua	=	23	 				BaoXiang_jsmzfza_Mxcount	=	18												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmzfzb	=	{}					BaoXiang_jsmzfzb_Rad	=	{}					BaoXiang_jsmzfzb_Count	=	{}					
	BaoXiang_jsmzfzb	[	1	]	=	1906		BaoXiang_jsmzfzb_Rad	[	1	]	=	100 		BaoXiang_jsmzfzb_Count	[	1	]	=	1	--	І»ЛА·вУЎµДЖЖД§·ЁХИ
	BaoXiang_jsmzfzb	[	2	]	=	1914		BaoXiang_jsmzfzb_Rad	[	2	]	=	30		BaoXiang_jsmzfzb_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦдОД·ЁХИ
	BaoXiang_jsmzfzb	[	3	]	=	1915		BaoXiang_jsmzfzb_Rad	[	3	]	=	10		BaoXiang_jsmzfzb_Count	[	3	]	=	1	--	БТСж·вУЎµД»Г»ЇЦ®ХИ
	BaoXiang_jsmzfzb	[	4	]	=	1916		BaoXiang_jsmzfzb_Rad	[	4	]	=	5		BaoXiang_jsmzfzb_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦд·ЁХИ
	BaoXiang_jsmzfzb	[	5	]	=	0112		BaoXiang_jsmzfzb_Rad	[	5	]	=	40		BaoXiang_jsmzfzb_Count	[	5	]	=	1	--	КФБ¶Ц®иЖ
	BaoXiang_jsmzfzb	[	6	]	=	1439		BaoXiang_jsmzfzb_Rad	[	6	]	=	80		BaoXiang_jsmzfzb_Count	[	6	]	=	1	--	ЙсЗґЦ®ХИ
	BaoXiang_jsmzfzb	[	7	]	=	1474		BaoXiang_jsmzfzb_Rad	[	7	]	=	80		BaoXiang_jsmzfzb_Count	[	7	]	=	1	--	ЗзМмЦ®ХИ
	BaoXiang_jsmzfzb	[	8	]	=	3812		BaoXiang_jsmzfzb_Rad	[	8	]	=	80		BaoXiang_jsmzfzb_Count	[	8	]	=	1	--	ЦмИё·ЁХИ
	BaoXiang_jsmzfzb	[	9	]	=	4300		BaoXiang_jsmzfzb_Rad	[	9	]	=	80		BaoXiang_jsmzfzb_Count	[	9	]	=	1	--	іН·ЈЦ®ХИ
	BaoXiang_jsmzfzb	[	10	]	=	1432		BaoXiang_jsmzfzb_Rad	[	10	]	=	200		BaoXiang_jsmzfzb_Count	[	10	]	=	1	--	ЕщцЁ·ЁХИ
	BaoXiang_jsmzfzb	[	11	]	=	1438		BaoXiang_jsmzfzb_Rad	[	11	]	=	200		BaoXiang_jsmzfzb_Count	[	11	]	=	1	--	Е­СЧ·ЁХИ
	BaoXiang_jsmzfzb	[	12	]	=	1467		BaoXiang_jsmzfzb_Rad	[	12	]	=	200		BaoXiang_jsmzfzb_Count	[	12	]	=	1	--	КҐХЯ·ЁХИ
	BaoXiang_jsmzfzb	[	13	]	=	1473		BaoXiang_jsmzfzb_Rad	[	13	]	=	200		BaoXiang_jsmzfzb_Count	[	13	]	=	1	--	БТ»р·ЁХИ
	BaoXiang_jsmzfzb	[	14	]	=	3811		BaoXiang_jsmzfzb_Rad	[	14	]	=	200		BaoXiang_jsmzfzb_Count	[	14	]	=	1	--	УИµП°ІЦ®ХИ
	BaoXiang_jsmzfzb	[	15	]	=	1431		BaoXiang_jsmzfzb_Rad	[	15	]	=	21500		BaoXiang_jsmzfzb_Count	[	15	]	=	1	--	Т°РФИЁХИ
	BaoXiang_jsmzfzb	[	16	]	=	1437		BaoXiang_jsmzfzb_Rad	[	16	]	=	21500		BaoXiang_jsmzfzb_Count	[	16	]	=	1	--	С№ЦЖЦ®ХИ
	BaoXiang_jsmzfzb	[	17	]	=	1466		BaoXiang_jsmzfzb_Rad	[	17	]	=	21500		BaoXiang_jsmzfzb_Count	[	17	]	=	1	--	»оБ¦ИЁХИ
	BaoXiang_jsmzfzb	[	18	]	=	1472		BaoXiang_jsmzfzb_Rad	[	18	]	=	21500		BaoXiang_jsmzfzb_Count	[	18	]	=	1	--	Е¬Б¦Ц®ХИ
																						
																						
--	ГФ·ЁЦ®ХИ±¦Пд24РН												w0063									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmfzza_Qua	=	24	 				BaoXiang_jsmfzza_Mxcount	=	25												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmfzza	=	{}					BaoXiang_jsmfzza_Rad	=	{}					BaoXiang_jsmfzza_Count	=	{}					
	BaoXiang_jsmfzza	[	1	]	=	1906		BaoXiang_jsmfzza_Rad	[	1	]	=	100 		BaoXiang_jsmfzza_Count	[	1	]	=	1	--	І»ЛА·вУЎµДЖЖД§·ЁХИ
	BaoXiang_jsmfzza	[	2	]	=	1907		BaoXiang_jsmfzza_Rad	[	2	]	=	30		BaoXiang_jsmfzza_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦдКхЦ®ХИ
	BaoXiang_jsmfzza	[	3	]	=	1908		BaoXiang_jsmfzza_Rad	[	3	]	=	20		BaoXiang_jsmfzza_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйѕ«Йс·ЁХИ
	BaoXiang_jsmfzza	[	4	]	=	1909		BaoXiang_jsmfzza_Rad	[	4	]	=	1		BaoXiang_jsmfzza_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФ·ЁЦ®ХИ
	BaoXiang_jsmfzza	[	5	]	=	0110		BaoXiang_jsmfzza_Rad	[	5	]	=	50		BaoXiang_jsmfzza_Count	[	5	]	=	1	--	І№МмЦ®ХИ
	BaoXiang_jsmfzza	[	6	]	=	4198		BaoXiang_jsmfzza_Rad	[	6	]	=	50		BaoXiang_jsmfzza_Count	[	6	]	=	1	--	Бй»кФґИЄ
	BaoXiang_jsmfzza	[	7	]	=	1442		BaoXiang_jsmfzza_Rad	[	7	]	=	60		BaoXiang_jsmfzza_Count	[	7	]	=	1	--	МмК№Ц®Аб
	BaoXiang_jsmfzza	[	8	]	=	1477		BaoXiang_jsmfzza_Rad	[	8	]	=	60		BaoXiang_jsmfzza_Count	[	8	]	=	1	--	±Ї°§Ц®СЫ
	BaoXiang_jsmfzza	[	9	]	=	3815		BaoXiang_jsmfzza_Rad	[	9	]	=	60		BaoXiang_jsmfzza_Count	[	9	]	=	1	--	рЅ·п·ЁХИ
	BaoXiang_jsmfzza	[	10	]	=	4197		BaoXiang_jsmfzza_Rad	[	10	]	=	60		BaoXiang_jsmfzza_Count	[	10	]	=	1	--	ј«є®Ц®»р
	BaoXiang_jsmfzza	[	11	]	=	4303		BaoXiang_jsmfzza_Rad	[	11	]	=	60		BaoXiang_jsmfzza_Count	[	11	]	=	1	--	ЙсЦ®ЦёТэ
	BaoXiang_jsmfzza	[	12	]	=	4303		BaoXiang_jsmfzza_Rad	[	12	]	=	60		BaoXiang_jsmfzza_Count	[	12	]	=	1	--	ЙсЦ®ЦёТэ
	BaoXiang_jsmfzza	[	13	]	=	0103		BaoXiang_jsmfzza_Rad	[	13	]	=	130		BaoXiang_jsmfzza_Count	[	13	]	=	1	--	ЙъГьЦ®№в
	BaoXiang_jsmfzza	[	14	]	=	1433		BaoXiang_jsmfzza_Rad	[	14	]	=	130		BaoXiang_jsmfzza_Count	[	14	]	=	1	--	ЗгМэЙсХИ
	BaoXiang_jsmfzza	[	15	]	=	1441		BaoXiang_jsmfzza_Rad	[	15	]	=	130		BaoXiang_jsmfzza_Count	[	15	]	=	1	--	ёЗСЕЙсХИ
	BaoXiang_jsmfzza	[	16	]	=	1468		BaoXiang_jsmfzza_Rad	[	16	]	=	130		BaoXiang_jsmfzza_Count	[	16	]	=	1	--	Йс№ЩЦ®ХИ
	BaoXiang_jsmfzza	[	17	]	=	1476		BaoXiang_jsmfzza_Rad	[	17	]	=	130		BaoXiang_jsmfzza_Count	[	17	]	=	1	--	КшёїЦ®ХИ
	BaoXiang_jsmfzza	[	18	]	=	0103		BaoXiang_jsmfzza_Rad	[	18	]	=	130		BaoXiang_jsmfzza_Count	[	18	]	=	1	--	ЙъГьЦ®№в
	BaoXiang_jsmfzza	[	19	]	=	3814		BaoXiang_jsmfzza_Rad	[	19	]	=	130		BaoXiang_jsmfzza_Count	[	19	]	=	1	--	ПЈНыЦ®ХИ
	BaoXiang_jsmfzza	[	20	]	=	1430		BaoXiang_jsmfzza_Rad	[	20	]	=	14500		BaoXiang_jsmfzza_Count	[	20	]	=	1	--	ЙсКҐИЁХИ
	BaoXiang_jsmfzza	[	21	]	=	1437		BaoXiang_jsmfzza_Rad	[	21	]	=	14500		BaoXiang_jsmfzza_Count	[	21	]	=	1	--	С№ЦЖЦ®ХИ
	BaoXiang_jsmfzza	[	22	]	=	1465		BaoXiang_jsmfzza_Rad	[	22	]	=	14500		BaoXiang_jsmfzza_Count	[	22	]	=	1	--	№в»ЄИЁХИ
	BaoXiang_jsmfzza	[	23	]	=	1475		BaoXiang_jsmfzza_Rad	[	23	]	=	14500		BaoXiang_jsmfzza_Count	[	23	]	=	1	--	НЁБйЦ®ХИ
	BaoXiang_jsmfzza	[	24	]	=	3813		BaoXiang_jsmfzza_Rad	[	24	]	=	14500		BaoXiang_jsmfzza_Count	[	24	]	=	1	--	Т«ИХУЎјЗ
	BaoXiang_jsmfzza	[	25	]	=	4301		BaoXiang_jsmfzza_Rad	[	25	]	=	14500		BaoXiang_jsmfzza_Count	[	25	]	=	1	--	ЦЗ»ЫЦ®ХИ

																						
--	ГФ·ЁЦ®ХИ±¦Пд23РН												w0063									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmfzzb_Qua	=	23	 				BaoXiang_jsmfzzb_Mxcount	=	25												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmfzzb	=	{}					BaoXiang_jsmfzzb_Rad	=	{}					BaoXiang_jsmfzzb_Count	=	{}					
	BaoXiang_jsmfzzb	[	1	]	=	1906		BaoXiang_jsmfzzb_Rad	[	1	]	=	100 		BaoXiang_jsmfzzb_Count	[	1	]	=	1	--	І»ЛА·вУЎµДЖЖД§·ЁХИ
	BaoXiang_jsmfzzb	[	2	]	=	1907		BaoXiang_jsmfzzb_Rad	[	2	]	=	30		BaoXiang_jsmfzzb_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЦдКхЦ®ХИ
	BaoXiang_jsmfzzb	[	3	]	=	1908		BaoXiang_jsmfzzb_Rad	[	3	]	=	10		BaoXiang_jsmfzzb_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйѕ«Йс·ЁХИ
	BaoXiang_jsmfzzb	[	4	]	=	1909		BaoXiang_jsmfzzb_Rad	[	4	]	=	5		BaoXiang_jsmfzzb_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФ·ЁЦ®ХИ
	BaoXiang_jsmfzzb	[	5	]	=	0110		BaoXiang_jsmfzzb_Rad	[	5	]	=	40		BaoXiang_jsmfzzb_Count	[	5	]	=	1	--	І№МмЦ®ХИ
	BaoXiang_jsmfzzb	[	6	]	=	4198		BaoXiang_jsmfzzb_Rad	[	6	]	=	40		BaoXiang_jsmfzzb_Count	[	6	]	=	1	--	Бй»кФґИЄ
	BaoXiang_jsmfzzb	[	7	]	=	1442		BaoXiang_jsmfzzb_Rad	[	7	]	=	50		BaoXiang_jsmfzzb_Count	[	7	]	=	1	--	МмК№Ц®Аб
	BaoXiang_jsmfzzb	[	8	]	=	1477		BaoXiang_jsmfzzb_Rad	[	8	]	=	50		BaoXiang_jsmfzzb_Count	[	8	]	=	1	--	±Ї°§Ц®СЫ
	BaoXiang_jsmfzzb	[	9	]	=	3815		BaoXiang_jsmfzzb_Rad	[	9	]	=	50		BaoXiang_jsmfzzb_Count	[	9	]	=	1	--	рЅ·п·ЁХИ
	BaoXiang_jsmfzzb	[	10	]	=	4197		BaoXiang_jsmfzzb_Rad	[	10	]	=	50		BaoXiang_jsmfzzb_Count	[	10	]	=	1	--	ј«є®Ц®»р
	BaoXiang_jsmfzzb	[	11	]	=	4303		BaoXiang_jsmfzzb_Rad	[	11	]	=	50		BaoXiang_jsmfzzb_Count	[	11	]	=	1	--	ЙсЦ®ЦёТэ
	BaoXiang_jsmfzzb	[	12	]	=	4303		BaoXiang_jsmfzzb_Rad	[	12	]	=	50		BaoXiang_jsmfzzb_Count	[	12	]	=	1	--	ЙсЦ®ЦёТэ
	BaoXiang_jsmfzzb	[	13	]	=	0103		BaoXiang_jsmfzzb_Rad	[	13	]	=	130		BaoXiang_jsmfzzb_Count	[	13	]	=	1	--	ЙъГьЦ®№в
	BaoXiang_jsmfzzb	[	14	]	=	1433		BaoXiang_jsmfzzb_Rad	[	14	]	=	130		BaoXiang_jsmfzzb_Count	[	14	]	=	1	--	ЗгМэЙсХИ
	BaoXiang_jsmfzzb	[	15	]	=	1441		BaoXiang_jsmfzzb_Rad	[	15	]	=	130		BaoXiang_jsmfzzb_Count	[	15	]	=	1	--	ёЗСЕЙсХИ
	BaoXiang_jsmfzzb	[	16	]	=	1468		BaoXiang_jsmfzzb_Rad	[	16	]	=	130		BaoXiang_jsmfzzb_Count	[	16	]	=	1	--	Йс№ЩЦ®ХИ
	BaoXiang_jsmfzzb	[	17	]	=	1476		BaoXiang_jsmfzzb_Rad	[	17	]	=	130		BaoXiang_jsmfzzb_Count	[	17	]	=	1	--	КшёїЦ®ХИ
	BaoXiang_jsmfzzb	[	18	]	=	0103		BaoXiang_jsmfzzb_Rad	[	18	]	=	130		BaoXiang_jsmfzzb_Count	[	18	]	=	1	--	ЙъГьЦ®№в
	BaoXiang_jsmfzzb	[	19	]	=	3814		BaoXiang_jsmfzzb_Rad	[	19	]	=	130		BaoXiang_jsmfzzb_Count	[	19	]	=	1	--	ПЈНыЦ®ХИ
	BaoXiang_jsmfzzb	[	20	]	=	1430		BaoXiang_jsmfzzb_Rad	[	20	]	=	14500		BaoXiang_jsmfzzb_Count	[	20	]	=	1	--	ЙсКҐИЁХИ
	BaoXiang_jsmfzzb	[	21	]	=	1437		BaoXiang_jsmfzzb_Rad	[	21	]	=	14500		BaoXiang_jsmfzzb_Count	[	21	]	=	1	--	С№ЦЖЦ®ХИ
	BaoXiang_jsmfzzb	[	22	]	=	1465		BaoXiang_jsmfzzb_Rad	[	22	]	=	14500		BaoXiang_jsmfzzb_Count	[	22	]	=	1	--	№в»ЄИЁХИ
	BaoXiang_jsmfzzb	[	23	]	=	1475		BaoXiang_jsmfzzb_Rad	[	23	]	=	14500		BaoXiang_jsmfzzb_Count	[	23	]	=	1	--	НЁБйЦ®ХИ
	BaoXiang_jsmfzzb	[	24	]	=	3813		BaoXiang_jsmfzzb_Rad	[	24	]	=	14500		BaoXiang_jsmfzzb_Count	[	24	]	=	1	--	Т«ИХУЎјЗ
	BaoXiang_jsmfzzb	[	25	]	=	4301		BaoXiang_jsmfzzb_Rad	[	25	]	=	14500		BaoXiang_jsmfzzb_Count	[	25	]	=	1	--	ЦЗ»ЫЦ®ХИ

																						
--	ГФЦ®і¤З№±¦Пд24РН												w0027									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmzcqa_Qua	=	24	 				BaoXiang_jsmzcqa_Mxcount	=	20												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmzcqa	=	{}					BaoXiang_jsmzcqa_Rad	=	{}					BaoXiang_jsmzcqa_Count	=	{}					
	BaoXiang_jsmzcqa	[	1	]	=	1902		BaoXiang_jsmzcqa_Rad	[	1	]	=	100 		BaoXiang_jsmzcqa_Count	[	1	]	=	1	--	І»ЛА·вУЎµДНцБйЦ®ґҐ
	BaoXiang_jsmzcqa	[	2	]	=	1903		BaoXiang_jsmzcqa_Rad	[	2	]	=	30 		BaoXiang_jsmzcqa_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЧзЦдЦ®ОЗ
	BaoXiang_jsmzcqa	[	3	]	=	1904		BaoXiang_jsmzcqa_Rad	[	3	]	=	20 		BaoXiang_jsmzcqa_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйЦ®Е­єр
	BaoXiang_jsmzcqa	[	4	]	=	1905		BaoXiang_jsmzcqa_Rad	[	4	]	=	1 		BaoXiang_jsmzcqa_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦ®і¤З№
	BaoXiang_jsmzcqa	[	5	]	=	0120		BaoXiang_jsmzcqa_Rad	[	5	]	=	50		BaoXiang_jsmzcqa_Count	[	5	]	=	1	--	ЕщцЁЙсАЧ
	BaoXiang_jsmzcqa	[	6	]	=	0042		BaoXiang_jsmzcqa_Rad	[	6	]	=	50		BaoXiang_jsmzcqa_Count	[	6	]	=	1	--	¶ѕРЗЗ№
	BaoXiang_jsmzcqa	[	7	]	=	0041		BaoXiang_jsmzcqa_Rad	[	7	]	=	60		BaoXiang_jsmzcqa_Count	[	7	]	=	1	--	КҐ№вЗ№
	BaoXiang_jsmzcqa	[	8	]	=	1410		BaoXiang_jsmzcqa_Rad	[	8	]	=	60		BaoXiang_jsmzcqa_Count	[	8	]	=	1	--	МмЙсЦ®·Ј
	BaoXiang_jsmzcqa	[	9	]	=	3808		BaoXiang_jsmzcqa_Rad	[	9	]	=	60		BaoXiang_jsmzcqa_Count	[	9	]	=	1	--	°Ч»ўБФЗ№
	BaoXiang_jsmzcqa	[	10	]	=	4214		BaoXiang_jsmzcqa_Rad	[	10	]	=	60		BaoXiang_jsmzcqa_Count	[	10	]	=	1	--	ПмОІЙЯ
	BaoXiang_jsmzcqa	[	11	]	=	4215		BaoXiang_jsmzcqa_Rad	[	11	]	=	60		BaoXiang_jsmzcqa_Count	[	11	]	=	1	--	ЙЯГщЗ№
	BaoXiang_jsmzcqa	[	12	]	=	0040		BaoXiang_jsmzcqa_Rad	[	12	]	=	2500		BaoXiang_jsmzcqa_Count	[	12	]	=	1	--	ѕ«ЦВБФЗ№
	BaoXiang_jsmzcqa	[	13	]	=	0045		BaoXiang_jsmzcqa_Rad	[	13	]	=	2500		BaoXiang_jsmzcqa_Count	[	13	]	=	1	--	ЛЩЙд»рЗ№
	BaoXiang_jsmzcqa	[	14	]	=	1409		BaoXiang_jsmzcqa_Rad	[	14	]	=	2500		BaoXiang_jsmzcqa_Count	[	14	]	=	1	--	ХЅ¶·і¤З№
	BaoXiang_jsmzcqa	[	15	]	=	1414		BaoXiang_jsmzcqa_Rad	[	15	]	=	2500		BaoXiang_jsmzcqa_Count	[	15	]	=	1	--	УДБй»рЗ№
	BaoXiang_jsmzcqa	[	16	]	=	0039		BaoXiang_jsmzcqa_Rad	[	16	]	=	17000		BaoXiang_jsmzcqa_Count	[	16	]	=	1	--	ѕ«ЦВКЦЗ№
	BaoXiang_jsmzcqa	[	17	]	=	0044		BaoXiang_jsmzcqa_Rad	[	17	]	=	17000		BaoXiang_jsmzcqa_Count	[	17	]	=	1	--	АсЖ·КЦЗ№
	BaoXiang_jsmzcqa	[	18	]	=	1408		BaoXiang_jsmzcqa_Rad	[	18	]	=	17000		BaoXiang_jsmzcqa_Count	[	18	]	=	1	--	РдХдКЦЗ№
	BaoXiang_jsmzcqa	[	19	]	=	1413		BaoXiang_jsmzcqa_Rad	[	19	]	=	17000		BaoXiang_jsmzcqa_Count	[	19	]	=	1	--	ТшЦЖКЦЗ№
	BaoXiang_jsmzcqa	[	20	]	=	3806		BaoXiang_jsmzcqa_Rad	[	20	]	=	17000		BaoXiang_jsmzcqa_Count	[	20	]	=	1	--	БТ»рКЦЗ№

																						
--	ГФЦ®і¤З№±¦Пд23РН												w0027									
--	ОпЖ·ЦКБї							±¦ПдОпЖ·ЙППЮ														
	BaoXiang_jsmzcqa_Qua	=	23	 				BaoXiang_jsmzcqa_Mxcount	=	20												
																						
--	ОпЖ·ЦЦАа							ОпЖ·ёЕВК														
	BaoXiang_jsmzcqa	=	{}					BaoXiang_jsmzcqa_Rad	=	{}					BaoXiang_jsmzcqa_Count	=	{}					
	BaoXiang_jsmzcqa	[	1	]	=	1902		BaoXiang_jsmzcqa_Rad	[	1	]	=	100 		BaoXiang_jsmzcqa_Count	[	1	]	=	1	--	І»ЛА·вУЎµДНцБйЦ®ґҐ
	BaoXiang_jsmzcqa	[	2	]	=	1903		BaoXiang_jsmzcqa_Rad	[	2	]	=	30 		BaoXiang_jsmzcqa_Count	[	2	]	=	1	--	ОЫДа·вУЎµДЧзЦдЦ®ОЗ
	BaoXiang_jsmzcqa	[	3	]	=	1904		BaoXiang_jsmzcqa_Rad	[	3	]	=	10 		BaoXiang_jsmzcqa_Count	[	3	]	=	1	--	БТСж·вУЎµД»ГБйЦ®Е­єр
	BaoXiang_jsmzcqa	[	4	]	=	1905		BaoXiang_jsmzcqa_Rad	[	4	]	=	5 		BaoXiang_jsmzcqa_Count	[	4	]	=	1	--	є®±щ·вУЎµДГФЦ®і¤З№
	BaoXiang_jsmzcqa	[	5	]	=	0120		BaoXiang_jsmzcqa_Rad	[	5	]	=	40		BaoXiang_jsmzcqa_Count	[	5	]	=	1	--	ЕщцЁЙсАЧ
	BaoXiang_jsmzcqa	[	6	]	=	0042		BaoXiang_jsmzcqa_Rad	[	6	]	=	40		BaoXiang_jsmzcqa_Count	[	6	]	=	1	--	¶ѕРЗЗ№
	BaoXiang_jsmzcqa	[	7	]	=	0041		BaoXiang_jsmzcqa_Rad	[	7	]	=	50		BaoXiang_jsmzcqa_Count	[	7	]	=	1	--	КҐ№вЗ№
	BaoXiang_jsmzcqa	[	8	]	=	1410		BaoXiang_jsmzcqa_Rad	[	8	]	=	50		BaoXiang_jsmzcqa_Count	[	8	]	=	1	--	МмЙсЦ®·Ј
	BaoXiang_jsmzcqa	[	9	]	=	3808		BaoXiang_jsmzcqa_Rad	[	9	]	=	50		BaoXiang_jsmzcqa_Count	[	9	]	=	1	--	°Ч»ўБФЗ№
	BaoXiang_jsmzcqa	[	10	]	=	4214		BaoXiang_jsmzcqa_Rad	[	10	]	=	50		BaoXiang_jsmzcqa_Count	[	10	]	=	1	--	ПмОІЙЯ
	BaoXiang_jsmzcqa	[	11	]	=	4215		BaoXiang_jsmzcqa_Rad	[	11	]	=	50		BaoXiang_jsmzcqa_Count	[	11	]	=	1	--	ЙЯГщЗ№
	BaoXiang_jsmzcqa	[	12	]	=	0040		BaoXiang_jsmzcqa_Rad	[	12	]	=	2500		BaoXiang_jsmzcqa_Count	[	12	]	=	1	--	ѕ«ЦВБФЗ№
	BaoXiang_jsmzcqa	[	13	]	=	0045		BaoXiang_jsmzcqa_Rad	[	13	]	=	2500		BaoXiang_jsmzcqa_Count	[	13	]	=	1	--	ЛЩЙд»рЗ№
	BaoXiang_jsmzcqa	[	14	]	=	1409		BaoXiang_jsmzcqa_Rad	[	14	]	=	2500		BaoXiang_jsmzcqa_Count	[	14	]	=	1	--	ХЅ¶·і¤З№
	BaoXiang_jsmzcqa	[	15	]	=	1414		BaoXiang_jsmzcqa_Rad	[	15	]	=	2500		BaoXiang_jsmzcqa_Count	[	15	]	=	1	--	УДБй»рЗ№
	BaoXiang_jsmzcqa	[	16	]	=	0039		BaoXiang_jsmzcqa_Rad	[	16	]	=	17500		BaoXiang_jsmzcqa_Count	[	16	]	=	1	--	ѕ«ЦВКЦЗ№
	BaoXiang_jsmzcqa	[	17	]	=	0044		BaoXiang_jsmzcqa_Rad	[	17	]	=	17500		BaoXiang_jsmzcqa_Count	[	17	]	=	1	--	АсЖ·КЦЗ№
	BaoXiang_jsmzcqa	[	18	]	=	1408		BaoXiang_jsmzcqa_Rad	[	18	]	=	17500		BaoXiang_jsmzcqa_Count	[	18	]	=	1	--	РдХдКЦЗ№
	BaoXiang_jsmzcqa	[	19	]	=	1413		BaoXiang_jsmzcqa_Rad	[	19	]	=	17500		BaoXiang_jsmzcqa_Count	[	19	]	=	1	--	ТшЦЖКЦЗ№
	BaoXiang_jsmzcqa	[	20	]	=	3806		BaoXiang_jsmzcqa_Rad	[	20	]	=	17500		BaoXiang_jsmzcqa_Count	[	20	]	=	1	--	БТ»рКЦЗ№
		
		
	---Защита ГМ
PlayerCanUseCmd = {}
 PlayerCanUseCmd["\195\240\224\244"] = 1 --Граф
 PlayerCanUseCmd["Graf"] = 1 --Граф
-- PlayerCanUseCmd["pkodev"] = 1
-- PlayerCanUseCmd["Administrator"] = 1