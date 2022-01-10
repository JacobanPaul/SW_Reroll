Settings:setCompareDimension(true, 1280) 
Settings:setScriptDimension(true, 1280) 
Settings:set("MinSimilarity", 0.7)
setImagePath(scriptPath() .. "images")
--needReset = 0
gameGuardianInit = 0
needGGexec = 0
dialogVarTut = 1
faiBs = 0
collectedLD = 0
setHighlightTextStyle(0xb0140030, 0xf9ffffff, 13)
infoText = Region(150, 5, 220, 150)

summoning = {
	starMobs_region = Region(868, 180, 316, 54),
	collectSummPlatform_region = Region(332, 594, 83, 34),
	collectSummPlatform = Pattern("collectSummPlatform.png"):similar(0.90),
	goToSummPlatform_region = Region(504, 495, 49, 39),
	goToSummPlatform = Pattern("goToSummPlatform.png"):similar(0.90),
	summPlatform_region = Region(35, 400, 75, 240),
	summPlatform = Pattern("summPlatform.png"):similar(0.90),
	inboxLoot_region = Region(35, 360, 75, 70),
	inboxLoot = Pattern("inboxLoot.png"):similar(0.90),
	finalSummon_region = Region(288, 606, 144, 34),
	finalSummon = Pattern("finalSummon.png"):similar(0.90),
	LDscrollMaiusc_region = Region(762, 152, 96, 84),
	LDscrollMaiusc = Pattern("LDscrollMaiusc.png"):similar(0.90),
	LDscroll_region = Region(758, 226, 56, 53),
	LDscroll = Pattern("LDscroll.png"):similar(0.90),
	lootRegion = Region(737, 197, 88, 457),
}

gameGuardian = {
	gameGuardianFileLocation_region = Region(250, 150, 200, 100),
	gameGuardianFileLocation = Pattern("gameGuardianFileLocation.png"):similar(0.90),
	gameGuardianSearchIcon_region = Region(448, 12, 40, 41),
	gameGuardianSearchIcon = Pattern("gameGuardianSearchIcon.png"):similar(0.90),
	gameGuardianExecScript_region = Region(1238, 128, 24, 26),
	gameGuardianExecScript = Pattern("gameGuardianExecScript.png"):similar(0.90),
	gameGuardianExecuteInitScript_region = Region(850, 50, 150, 550),
	gameGuardianExecuteInitScript = Pattern("gameGuardianExecuteInitScript.png"):similar(0.90),
	gameGuardianIcon_region = Region(0, 514, 95, 153),
	gameGuardianIcon = Pattern("gameGuardianIcon.png"):similar(0.90),
}

reset = {
	Profile_region = Region(87, 94, 52, 15),
	Profile = Pattern("Profile.png"):similar(0.90),
	Settings_region = Region(573, 55, 130, 20),
	Settings = Pattern("Settings.png"):similar(0.90),
	Options_region = Region(577, 118, 23, 33),
	Options = Pattern("Options.png"):similar(0.90),
	Reset_region = Region(717, 544, 88, 20),
	Reset = Pattern("Reset.png"):similar(0.90),
	Input_region = Region(486, 386, 301, 78),
	Input = Pattern("Input.png"):similar(0.90),
	Done_region = Region(1057, 13, 64, 28),
	Done = Pattern("Done.png"):similar(0.90),
	Captcha_region = Region(570, 335, 145, 45),
	ResetAfterImput_region = Region(479, 510, 98, 41),
	ResetAfterImput = Pattern("ResetAfterImput.png"):similar(0.90),
	YesConfirmationAfterReset_region = Region(491, 414, 72, 44),
	YesConfirmationAfterReset = Pattern("YesConfirmationAfterReset.png"):similar(0.90),
}

faimon = {
	durandHelp_region = Region(72, 671, 46, 29),
	durandHelp = Pattern("durandHelp.png"):similar(0.90),
	faimonBoss_region = Region(857, 227, 193, 48),
	faimonBoss = Pattern("faimonBoss.png"):similar(0.90),
}

map = {
	hydeniRuins = Pattern("hydeniRuins.png"):similar(0.85),
	garenForest = Pattern("garenForest.png"):similar(0.85),
	mtSiz = Pattern("mtSiz.png"):similar(0.85),
	kabirRuins = Pattern("kabirRuins.png"):similar(0.85),
	mtWhite = Pattern("mtWhite.png"):similar(0.85),
	telainForest = Pattern("telainForest.png"):similar(0.85),
	tamorDesert = Pattern("tamorDesert.png"):similar(0.85),
	vrofagusRuins = Pattern("vrofagusRuins.png"):similar(0.85),
	faimonVolcano = Pattern("faimonVolcano.png"):similar(0.85),
	mapS_region = Region(230, 75, 900, 630),
}

image = {
	challX_region = Region(1214, 0, 61, 46),
	challX = Pattern("challX.png"):similar(0.90),
	skipSumm_region = Region(1088, 652, 127, 48),
	skipSumm = Pattern("skipSumm.png"):similar(0.90),
	AfterSummOK_region = Region(993, 561, 63, 39),
	AfterSummOK = Pattern("AfterSummOK.png"):similar(0.90),
	--Arrows_region = Region(210, 13, 917, 107),
	AutoPlay_region = Region(192, 630, 89, 84),
	AutoPlay = Pattern("AutoPlay.png"):similar(0.98),
	Battle_region = Region(1136, 260, 85, 33),
	Battle = Pattern("Battle.png"):similar(0.90),
	Close_region = Region(595, 570, 85, 42),
	Close = Pattern("Close.png"):similar(0.90),
	COMPS_region = Region(9, 8, 1253, 697),
	COMPS = Pattern("Arrow.png"):similar(0.80),
	DialSkipDX_region = Region(1208, 543, 24, 24),
	DialSkipDX = Pattern("DialSkipDX.png"):similar(0.80),
	DialSkipSX_region = Region(44, 544, 26, 24),
	DialSkipSX = Pattern("DialSkipSX.png"):similar(0.80),
	--ElliaSkipDX_region = Region(1133, 557, 70, 14),
	EnterNameDONE_region = Region(1058, 13, 61, 33),
	EnterNameDONE = Pattern("EnterNameDONE.png"):similar(0.90),
	EnterNameOK_region = Region(875, 182, 61, 40),
	EnterNameOK  = Pattern("EnterNameOK.png"):similar(0.90),
	EnterNameScr_region = Region(250, 76, 59, 48),
	EnterNameScr = Pattern("EnterNameScr.png"):similar(0.90),
	enterNameScr2_region = Region(250, 269, 64, 44),
	enterNameScr2 = Pattern("enterNameScr2.png"):similar(0.90),
	fairyMob_region = Region(30, 473, 83, 36),
	GreenArrowTUT_region = Region(588, 366, 69, 76),
	hellhoundMob_region = Region(139, 477, 81, 27),
	Mob_region = Region(18, 437, 28, 27),
	Mob = Pattern("Mob.png"):similar(0.70),
	MobRegion_region = Region(12, 436, 300, 32),
	NextStage_region = Region(757, 387, 82, 18),
	NextStage = Pattern("NextStage.png"):similar(0.90),
	NObtnINBOX_region = Region(723, 415, 55, 43),
	NObtnINBOX = Pattern("NextStage.png"):similar(0.70),
	OKAfterPowerUpMob_region = Region(994, 562, 67, 41),
	OKnewArea_region = Region(611, 602, 59, 41),
	Enemy_region = Region(323, 0, 768, 300),
	enemyArrow = Pattern("enemyArrow.png"):similar(0.8),
	enemyArrow1 = Pattern("enemyArrow1.png"):similar(0.8),
	enemyArrow2 = Pattern("enemyArrow2.png"):similar(0.8),
	enemyArrow3 = Pattern("enemyArrow3.png"):similar(0.8),
	EnemyX = Pattern("enemyLv1.png"):similar(0.85),
	EnemyY = Pattern("enemyLv2.png"):similar(0.85),
	RestartBattlePOPUP_region = Region(411, 503, 93, 39),
	RewardsOK_region = Region(400, 300, 500, 300),
	RewardsOK = Pattern("Speedx1.png"):similar(0.80),
	SelectMobsScr_region = Region(140, 140, 370, 200),
	SelectMobsScr = Pattern("SelectMobsScr.png"):similar(0.90),
	skip_region = Region(1173, 688, 94, 20),
	skip = Pattern("skip.png"):similar(0.90),
	Speedx_region = Region(93, 628, 94, 89),
	Speedx1 = Pattern("Speedx1.png"):similar(0.90),
	Speedx2 = Pattern("Speedx2.png"):similar(0.90),
	StartBattle_region = Region(991, 508, 86, 41),
	StartBattle = Pattern("StartBattle.png"):similar(0.90),
	TUT_region = Region(376, 391, 57, 38),
	VictoryScr_region = Region(253, 469, 59, 23),
	VictoryScr = Pattern("VictoryScr.png"):similar(0.90),
	victScreen2_region = Region(957, 330, 61, 64),
	victScreen2 = Pattern("victScreen2.png"):similar(0.90),
	XbtnADs_region = Region(600, 1, 800, 500),
	XbtnADs  = Pattern("XbtnADs.png"):similar(0.90),
	YesINBOX_region = Region(489, 413, 72, 45),
	YesINBOX  = Pattern("YesINBOX.png"):similar(0.90),
	RewadsOK2_region = Region(400, 300, 500, 300),
	RewadsOK2 = Pattern("RewadsOK2.png"):similar(0.90),
	Xrewads_region = Region(400, 10, 800, 500),
	Xrewads = Pattern("Xrewads.png"):similar(0.90),
	OKbtnAutoBattle_region = Region(605, 414, 66, 43),
	OKbtnAutoBattle = Pattern("OKbtnAutoBattle.png"):similar(0.90),
	collectInbox_region = Region(986, 235, 105, 450),
	collectInbox = Pattern("collectInbox.png"):similar(0.90),
	newIconMap_region = Region(9, 8, 1253, 697),
	newIconMap = Pattern("newIconMap.png"):similar(0.90),
	battleBTNisland_region = Region(673, 623, 91, 43),
	battleBTNisland = Pattern("battleBTNisland.png"):similar(0.90),
	mapScreen_region = Region(37, 16, 27, 30),
    mapScreen = Pattern("mapScreen.png"):similar(0.90),
    later_region = Region(697, 479, 99, 46),
    later = Pattern("mapScreen.png"):similar(0.90),
}

function summonLDF()
	if summoning.summPlatform_region:exists(summoning.summPlatform, 5) then
	 	local t = summoning.summPlatform_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    if summoning.collectSummPlatform_region:exists(summoning.collectSummPlatform, 5) then
	 	local t = summoning.collectSummPlatform_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    if summoning.goToSummPlatform_region:exists(summoning.goToSummPlatform, 5) then
    	wait(3)
	 	local t = summoning.goToSummPlatform_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	wait(2)
    	local  swipRandx1 = math.random(1000,1010) 
		local  swipRandy1 = math.random(200,210)
		local  swipRandx2 = math.random(1000,1010) 
		local  swipRandy2 = math.random(550,560)
		swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
		wait(2)
    end
    if summoning.LDscrollMaiusc_region:exists(summoning.LDscrollMaiusc, 5) then
	 	local t = summoning.LDscrollMaiusc_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    if summoning.finalSummon_region:exists(summoning.finalSummon, 5) then
	 	local t = summoning.finalSummon_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
	if image.AfterSummOK_region:exists(image.AfterSummOK, 15) then
		wait(2)
	starsMob = numberOCR(summoning.starMobs_region, "star")
	if starsMob == 111 then 
	toast("3 Star Mob Better Luck Next Time")
	needReset = true 
	faiBs = 0
	collectedLD = 0
	elseif starsMob == 1111 then toast("4 Star Mob SO CLOSE")
	needReset = true
	faiBs = 0
	collectedLD = 0 
	elseif starsMob == 11111 then toast("5 Star Mob NO FUCKING WAY GZ")
		scriptExit("5 Star Mob NO FUCKING WAY GZ") 
	elseif starsMob == nil then toast("Something is wrong")
		scriptExit("Something is wrong")
	end
    end
end

function summoningF()
	if summoning.inboxLoot_region:exists(summoning.inboxLoot, 5) then
	 	local t = summoning.inboxLoot_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	toast("inboxLoot")
    	wait(5)
    end
    scrollBottom = 0
    while image.collectInbox_region:exists(image.collectInbox, 5) do
    if summoning.lootRegion:exists(summoning.LDscroll, 5) then
	 	local t = summoning.lootRegion:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x+250,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	collectedLD = 1
    	break
    elseif scrollBottom <= 8 then 
     		 local  swipRandx1 = math.random(620,640) 
         	 local  swipRandy1 = math.random(250,260)
             local  swipRandx2 = math.random(620,640) 
             local  swipRandy2 = math.random(450,460)
             swipe(Location(swipRandx2, swipRandy2),  Location(swipRandx1, swipRandy1), 2)
             scrollBottom = scrollBottom + 1
    elseif scrollBottom >= 9 then 
    	scrollBottom = 0
    	break
    end
    end
end

function colorExists(obj, time)
    local delay = 0.1
    time = time or 1
    local timer = Timer()
    local r, g, b
    obj.diff = obj.diff or { 0, 0, 0 }


    if not obj.color or not obj.location or not is_table(obj.color) or not is_table(obj.diff) then
        print_r(obj) scriptExit("colorExists: Obj bad format")
    end


    while not is_timeout(timer, time) do

        r, g, b = getColor(obj.location)

        if math.abs(obj.color[1] - r) <= obj.diff[1] then
            if math.abs(obj.color[2] - g) <= obj.diff[2] then
                if math.abs(obj.color[3] - b) <= obj.diff[3] then
                    return true
                end
            end
        end
        r, g, b = nil, nil, nil
    end
    return false
end

function colorExistsRegion(table_obj, time, range)
    local reg = get_values(table_obj.region)
    local obj = {}
    obj.color = table_obj.color
    range = range or 1

    for x = reg.x, reg.x + reg.w, range do
        for y = reg.y, reg.y + reg.h, range do
            obj.location = Location(x, y)
            if colorExists(obj, time) then
                Region(x-4,y-4,8,8):highlight(3)
                return true
            end
        end
    end
return false
end

function showInfo(text)
    infoText:highlightOff() 
    _defaultText ="What Im Doing  " .. "\n".. "\n".. tostring(imAt) 
    _text = _defaultText .. "\n".. "______________" .. "\n".. "Reroll made by JPaul" .. "\n" .. text
   infoText:highlight(_text)
end

function resetF()
	if needReset == true then
	if reset.Profile_region:exists(reset.Profile) then 
    local t = reset.Profile_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
		if reset.Options_region:exists(reset.Options) then 
    local t = reset.Options_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
		if reset.Reset_region:exists(reset.Reset) then 
    local t = reset.Reset_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
		if reset.Input_region:exists(reset.Input) then 
    local t = reset.Input_region:getLastMatch()
    captchaNum = numberOCR(reset.Captcha_region, "num")
    local x = t:getCenter()
    click(Location(x))
	end
		if reset.Done_region:exists(reset.Done) then 
    local t = reset.Done_region:getLastMatch()
    local numString = ""..captchaNum..""
    type(numString)
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
		if reset.ResetAfterImput_region:exists(reset.ResetAfterImput) then 
    local t = reset.ResetAfterImput_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
		if reset.YesConfirmationAfterReset_region:exists(reset.YesConfirmationAfterReset) then 
    local t = reset.YesConfirmationAfterReset_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
    else toast("We already reseted") 
    end
	needReset = false
	dialogVarTut = 0
end

function nameF()
	local upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	local lowerCase = "abcdefghijklmnopqrstuvwxyz"
	local numbers = "0123456789"
	local characterSet = upperCase .. lowerCase .. numbers
	local keyLength = 14
	local output = ""
	for	i = 1, keyLength do
		local rand = math.random(#characterSet)
		output = output .. string.sub(characterSet, rand, rand)
	end
	if randomNameV then
	type(output)
	elseif customNameV then
	type(customName)
	end
	if image.EnterNameDONE_region:exists(image.EnterNameDONE) then
	local t = image.EnterNameDONE_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    if image.EnterNameOK_region:exists(image.EnterNameOK) then
	local t = image.EnterNameOK_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    dialogVarTut = 0
end

function dialogsFSX()
	while image.DialSkipSX_region:exists(image.DialSkipSX, 0) do
	local t = image.DialSkipSX_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x+50,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    click(Location(math.random(490, 510),math.random(719, 720))) click(Location(math.random(490, 510),math.random(719, 720))) click(Location(math.random(490, 510),math.random(719, 720)))
    end
end

function dialogsFDX()
	while image.DialSkipDX_region:exists(image.DialSkipDX, 0) do
	local t = image.DialSkipDX_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) 
    click(Location(math.random(490, 510),math.random(719, 720))) click(Location(math.random(490, 510),math.random(719, 720))) click(Location(math.random(490, 510),math.random(719, 720)))
    if dialogVarTut == 0  then
    if image.COMPS_region:exists(image.COMPS, 0) then 
	local t = image.COMPS_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y+ 90,w,h-20)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    dialogVarTut = 1 end end
    end
end

function tutF()
	while image.COMPS_region:exists(image.COMPS, 2) do
	local t = image.COMPS_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x+30,y+ 90,w-15,h-20)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
end

function createScript()
	local script = io.open("/sdcard/jpaulRerollv7.lua")
	if script~=nil then io.close(script) else  local script = io.open("/sdcard/jpaulRerollv7.lua", "a+")
	script:write("gg.setVisible(false)firstRun=0;function getAccID()gg.searchNumber('10602;1065353216;1502;1507::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local a=gg.getResults(gg.getResultsCount())memInit=a[1].address-0xFFFFFF;memFin=a[1].address+0xFFFFFF;t={}t[1]={}t[1].address=a[1].address-addOfss;t[1].flags=gg.TYPE_DWORD;t=gg.getValues(t)AccID=t[1].value end;function skillChanger()gg.searchNumber(AccID..';10602;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local a=gg.getResults(gg.getResultsCount())if a~=nil then for b,c in ipairs(a)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+fstSkOfss;t[1].value=100505;t[2].address=c.address+fstSkPROfss;t[2].value=5;t[3].address=c.address+sndSkOfss;t[3].value=10915;t[4].address=c.address+sndSkPROfss;t[4].value=5;t[5].address=c.address+trdSkOfss;t[5].value=2062;t[6].address=c.address+trdSkPROfss;t[6].value=5;t[7].address=c.address+fthSkOfss;t[7].value=13618;t[8].address=c.address+fthSkPROfss;t[8].value=5;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.searchNumber(AccID..';10101;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local d=gg.getResults(gg.getResultsCount())if d~=nil then for b,c in ipairs(d)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+fstSkOfss;t[1].value=103006;t[2].address=c.address+fstSkPROfss;t[2].value=5;t[3].address=c.address+sndSkOfss;t[3].value=10915;t[4].address=c.address+sndSkPROfss;t[4].value=5;t[5].address=c.address+trdSkOfss;t[5].value=7813;t[6].address=c.address+trdSkPROfss;t[6].value=5;t[7].address=c.address+fthSkOfss;t[7].value=13618;t[8].address=c.address+fthSkPROfss;t[8].value=5;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.searchNumber(AccID..';15203;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local d=gg.getResults(gg.getResultsCount())if d~=nil then for b,c in ipairs(d)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+fstSkOfss;t[1].value=100505;t[2].address=c.address+fstSkPROfss;t[2].value=5;t[3].address=c.address+sndSkOfss;t[3].value=10915;t[4].address=c.address+sndSkPROfss;t[4].value=5;t[5].address=c.address+trdSkOfss;t[5].value=2062;t[6].address=c.address+trdSkPROfss;t[6].value=5;t[7].address=c.address+fthSkOfss;t[7].value=13618;t[8].address=c.address+fthSkPROfss;t[8].value=5;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.searchNumber(AccID..';20904;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local d=gg.getResults(gg.getResultsCount())if a~=nil then for b,c in ipairs(d)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+fstSkOfss;t[1].value=10616;t[2].address=c.address+fstSkPROfss;t[2].value=5;t[3].address=c.address+sndSkOfss;t[3].value=12813;t[4].address=c.address+sndSkPROfss;t[4].value=5;t[5].address=c.address+trdSkOfss;t[5].value=6262;t[6].address=c.address+trdSkPROfss;t[6].value=5;t[7].address=c.address+fthSkOfss;t[7].value=13618;t[8].address=c.address+fthSkPROfss;t[8].value=5;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.searchNumber(AccID..';19801;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local d=gg.getResults(gg.getResultsCount())if a~=nil then for b,c in ipairs(d)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+fstSkOfss;t[1].value=103006;t[2].address=c.address+fstSkPROfss;t[2].value=5;t[3].address=c.address+sndSkOfss;t[3].value=12315;t[4].address=c.address+sndSkPROfss;t[4].value=5;t[5].address=c.address+trdSkOfss;t[5].value=7813;t[6].address=c.address+trdSkPROfss;t[6].value=5;t[7].address=c.address+fthSkOfss;t[7].value=13618;t[8].address=c.address+fthSkPROfss;t[8].value=5;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.setVisible(false)firstRun=1 end;startTime=os.time()function start()currentTime=os.time()diffTime=os.difftime(currentTime,startTime)if diffTime<=300 and firstRun==0 then skillChanger()gg.sleep(60000)elseif diffTime<=300 and firstRun==1 then gg.sleep(60000)elseif diffTime>=300 then firstRun=0;startTime=os.time()end end;function init()gg.setVisible(false)getAccID()while true do start()end end;local e=gg.getTargetInfo()if e==nil then print('Cant retrieve information about the process')else if e.x64 then addOfss=0x8;fstSkOfss=0x1C;sndSkOfss=0x2C;trdSkOfss=0x3C;fthSkOfss=0x4C;fstSkPROfss=0x24;sndSkPROfss=0x34;trdSkPROfss=0x44;fthSkPROfss=0x54 else addOfss=0x4;fstSkOfss=0x10;sndSkOfss=0x18;trdSkOfss=0x20;fthSkOfss=0x28;fstSkPROfss=0x14;sndSkPROfss=0x1C;trdSkPROfss=0x24;fthSkPROfss=0x2C end end;init()")
	io.close(script)
    end
end

function mtWhitePix()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		local pixel = Location(x+13,y+(h/1.5))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r >= 150 then 
    			return true
    		elseif r <= 150 then 
    			return false
    		end
end

function garenForestPix()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		local pixel = Location(x+10,y+(h/1.2))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r >= 150 then 
    			return true
    		elseif r <= 150 then 
    			return false
    		end
end

function mtSizPix()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		local pixel = Location(x+13,y+(h/1.2))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r >= 150 then 
    			return true
    		elseif r <= 150 then 
    			return false
    		end
end

function kabirRuinsPix()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		local pixel = Location(x+12,y+(h/1.2))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r >= 150 then 
    			return true
    		elseif r <= 150 then 
    			return false
    		end
end

function telainForestPix()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		local pixel = Location(x+12,y+(h/1.2))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r >= 150 then 
    			return true
    		elseif r <= 150 then 
    			return false
    		end
end

function hydeniRuinsPix()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		local pixel = Location(x+10,y+(h/1.2))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r >= 150 then 
    			return true
    		elseif r <= 150 then 
    			return false
    		end
end

function tamorDesertPix()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		local pixel = Location(x+12,y+(h/1.2))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r >= 150 then 
    			return true
    		elseif r <= 150 then 
    			return false
    		end
end

function vrofagusRuinsPix()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
     		local pixel = Location(x+12,y+(h/1.2))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r >= 150 then 
    			return true
    		elseif r <= 150 then 
    			return false
    		end
end

function faimonVolcanoPix()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		local pixel = Location(x+12,y+(h/1.2))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r >= 150 then 
    			return true
    		elseif r <= 150 then 
    			return false
    		end
end

function mapF()
	if image.XbtnADs_region:exists(image.XbtnADs, 0) then
    	local t = image.XbtnADs_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    if image.COMPS_region:exists(image.YesINBOX) then
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    scrollRight = 0 
	while image.mapScreen_region:exists(image.mapScreen) do
		usePreviousSnap(true)
		if map.mapS_region:exists(map.garenForest,1) and not garenForestPix() then
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		break
    	elseif map.mapS_region:exists(map.mtSiz,1) and not mtSizPix() then
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		break
    	elseif map.mapS_region:exists(map.kabirRuins,1) and not kabirRuinsPix() then
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		break
    	elseif map.mapS_region:exists(map.mtWhite,1) and not mtWhitePix() then
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		break
    	elseif map.mapS_region:exists(map.telainForest,1) and not telainForestPix() then
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		break
    	elseif map.mapS_region:exists(map.hydeniRuins,1) and not hydeniRuinsPix() then
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		break
    	elseif map.mapS_region:exists(map.tamorDesert,1) and not tamorDesertPix() then
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		break
    	elseif map.mapS_region:exists(map.vrofagusRuins,1) and not vrofagusRuinsPix() then
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		break
    	elseif map.mapS_region:exists(map.faimonVolcano,1) and not faimonVolcanoPix() then
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		break
    	elseif scrollRight <= 4 then
    		 local  swipRandx1 = math.random(420,440) 
         	 local  swipRandy1 = math.random(400,420) 
             local  swipRandx2 = math.random(900,920) 
             local  swipRandy2 = math.random(390,400)
             swipe(Location(swipRandx2, swipRandy2),  Location(swipRandx1, swipRandy1), 2)
             scrollRight = scrollRight + 1
             usePreviousSnap(false)
             wait(2) 
         elseif scrollRight >= 5 then
             local  swipRandx1 = math.random(420,440) 
         	 local  swipRandy1 = math.random(400,420) 
             local  swipRandx2 = math.random(900,920) 
             local  swipRandy2 = math.random(390,400)
             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2) 
             wait(2)
             local  swipRandx1 = math.random(420,440) 
         	 local  swipRandy1 = math.random(400,420) 
             local  swipRandx2 = math.random(900,920) 
             local  swipRandy2 = math.random(390,400)
             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
             wait(2)
             local  swipRandx1 = math.random(420,440) 
         	 local  swipRandy1 = math.random(400,420) 
             local  swipRandx2 = math.random(900,920) 
             local  swipRandy2 = math.random(390,400)
             usePreviousSnap(false)
             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
             wait(2)
             scrollRight = 0
    	end 
    end 
    wait(2)
end

function selectMobsF()
	while image.SelectMobsScr_region:exists(image.SelectMobsScr) do
		if image.MobRegion_region:exists(image.Mob) then 
    		local t = image.MobRegion_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x+20,y+20,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) 
    	end
    	if image.COMPS_region:exists(image.COMPS, 0) then
    		tutF()
    	end
    end
end

function gameGuardianF()
	createScript()
	if gameGuardian.gameGuardianIcon_region:exists(gameGuardian.gameGuardianIcon, 10) then
		local t = gameGuardian.gameGuardianIcon_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    if gameGuardian.gameGuardianSearchIcon_region:exists(gameGuardian.gameGuardianSearchIcon, 10) then
		local t = gameGuardian.gameGuardianSearchIcon_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    if gameGuardian.gameGuardianExecScript_region:exists(gameGuardian.gameGuardianExecScript, 10) then
		local tl = gameGuardian.gameGuardianExecScript_region:getLastMatch()
    	local xl = tl:getX()
    	local yl = tl:getY()
    	local wl = tl:getW()
    	local hl = tl:getH()
    	local Area = Region(xl,yl,wl,hl)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    if gameGuardian.gameGuardianFileLocation_region:exists(gameGuardian.gameGuardianFileLocation, 10) then
		local scriptLocation = ("/sdcard/jpaulRerollv7.lua")
		type(scriptLocation)
    end
    if gameGuardian.gameGuardianExecuteInitScript_region:exists(gameGuardian.gameGuardianExecuteInitScript, 10) then
		local tl = gameGuardian.gameGuardianExecuteInitScript_region:getLastMatch()
    	local xl = tl:getX()
    	local yl = tl:getY()
    	local wl = tl:getW()
    	local hl = tl:getH()
    	local Area = Region(xl,yl,wl,hl)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    needGGexec = 1 
end

function faimonBossF()
	if faimon.durandHelp_region:exists(faimon.durandHelp) then
		faiBs = 1
			local t = faimon.durandHelp_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y-40,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	if image.StartBattle_region:exists(image.StartBattle) then
    	local t = image.StartBattle_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	end
    end
end

function WhereIAm()
	if powerSaving == true then
	wait(customDelay)
	end
	--infoText:highlightOff()
	if reset.Profile_region:exists(reset.Profile, 0) then end
		usePreviousSnap(true)
    if image.COMPS_region:exists(image.COMPS, 0) then
    	usePreviousSnap(false) 
    	return "tut"
    elseif image.DialSkipSX_region:exists(image.DialSkipSX, 0) then 
    	usePreviousSnap(false) 
    	return "dialogsSX"
    elseif image.DialSkipDX_region:exists(image.DialSkipDX, 0) then
    	usePreviousSnap(false) 
    	return "dialogsDX"
    elseif reset.Profile_region:exists(reset.Profile, 0) and needReset == true then
    	usePreviousSnap(false) 
    	return "needReset"
    elseif image.enterNameScr2_region:exists(image.enterNameScr2, 0) then
    	usePreviousSnap(false) 
    	return "imputName"
    elseif image.AfterSummOK_region:exists(image.AfterSummOK, 0) then
    	usePreviousSnap(false) 
    	return "mobsSumm"
    elseif image.OKbtnAutoBattle_region:exists(image.OKbtnAutoBattle, 0) then
    	usePreviousSnap(false) 
    	return "OKbtnAP"
    elseif image.Speedx_region:exists(image.Speedx1, 0) then
    	usePreviousSnap(false) 
    	return "speed"
    elseif image.Speedx_region:exists(image.Speedx2, 0) then
    	usePreviousSnap(false) 
    	return "speed"
    elseif image.Enemy_region:exists(image.enemyArrow, 0) then
    	usePreviousSnap(false) 
    	return "enemyFound2"
    elseif image.Enemy_region:exists(image.enemyArrow1, 0) then
    	usePreviousSnap(false) 
    	return "enemyFound2"
    elseif image.Enemy_region:exists(image.enemyArrow2, 0) then
    	usePreviousSnap(false) 
    	return "enemyFound2"
    elseif image.Enemy_region:exists(image.enemyArrow3, 0) then
    	usePreviousSnap(false) 
    	return "enemyFound2"
    elseif  not image.Enemy_region:exists(image.EnemyX, 0) and image.AutoPlay_region:exists(image.AutoPlay, 0) then
    	usePreviousSnap(false) 
    	return "autoPlay"
    elseif  not image.Enemy_region:exists(image.EnemyY, 0) and image.AutoPlay_region:exists(image.AutoPlay, 0) then
    	usePreviousSnap(false) 
    	return "autoPlay"
   	elseif image.Enemy_region:exists(image.EnemyX, 0) then
    	usePreviousSnap(false) 
    	return "enemyFound"
    elseif image.Enemy_region:exists(image.EnemyY, 0) then
    	usePreviousSnap(false) 
    	return "enemyFound"
    elseif image.RewardsOK_region:exists(image.RewardsOK, 0) then
    	usePreviousSnap(false) 
    	return "okRewards"
    elseif image.RewadsOK2_region:exists(image.RewadsOK2, 0) then
    	usePreviousSnap(false) 
    	return "okRewards1"
    elseif image.Xrewads_region:exists(image.Xrewads, 0) then
    	usePreviousSnap(false) 
    	return "okRewards2"
    elseif image.VictoryScr_region:exists(image.VictoryScr, 0) then
    	usePreviousSnap(false) 
    	return "victScr"
    elseif image.victScreen2_region:exists(image.victScreen2, 0) then
    	usePreviousSnap(false) 
    	return "victScr2"
    elseif image.skip_region:exists(image.skip, 0) then
    	usePreviousSnap(false) 
    	return "skip"
    elseif image.NextStage_region:exists(image.NextStage, 0) then
    	usePreviousSnap(false) 
    	return "nextStage"
    elseif not image.SelectMobsScr_region:exists(image.SelectMobsScr, 0) and not faimon.faimonBoss_region:exists(faimon.faimonBoss, 0) and image.StartBattle_region:exists(image.StartBattle, 0) then
    	usePreviousSnap(false) 
    	return "startBattle"
    elseif image.YesINBOX_region:exists(image.YesINBOX, 0) then
    	usePreviousSnap(false) 
    	return "inboxYes"
    elseif faimon.faimonBoss_region:exists(faimon.faimonBoss, 0) then
    	usePreviousSnap(false) 
    	return "faimonBossStage"
    elseif image.collectInbox_region:exists(image.collectInbox, 0) then
    	usePreviousSnap(false) 
    	return "inboxCollect"
    elseif image.battleBTNisland_region:exists(image.battleBTNisland, 0) then
    	usePreviousSnap(false) 
    	return "goToMap"
    elseif image.Battle_region:exists(image.Battle, 0) then
    	usePreviousSnap(false) 
    	return "battleMap"
    elseif image.mapScreen_region:exists(image.mapScreen, 0) then
    	usePreviousSnap(false) 
    	return "mapScreenScr"
    elseif image.SelectMobsScr_region:exists(image.SelectMobsScr, 0) then
    	usePreviousSnap(false) 
    	return "selectMobs"
    elseif image.skipSumm_region:exists(image.skipSumm, 0) then
    	usePreviousSnap(false) 
    	return "skipSummons"
    else usePreviousSnap(false)
    	 return "chilling nothing to do"
    end
end

function start()
	 imAt = WhereIAm()
	--toast(imAt)
	showInfo("t.me/swscripts")
	if imAt == "needReset" then 
        resetF()
    elseif imAt == "imputName" then
    	nameF()
    elseif imAt == "dialogsSX" then
    	dialogsFSX()
    elseif imAt == "dialogsDX" then
    	dialogsFDX()
    elseif imAt == "tut" then
    	tutF()
   	elseif imAt == "mobsSumm" then
   		local t = image.AfterSummOK_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
   		gameGuardianInit = gameGuardianInit + 1
    	if gameGuardianInit >= 2 and needGGexec == 0 then gameGuardianF() end
 	elseif imAt == "enemyFound" then
 		local t = image.Enemy_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "enemyFound2" then
 		local t = image.Enemy_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y+80,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "speed" then
    	local t = image.Speedx_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "autoPlay" then
    	local t = image.AutoPlay_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "victScr" then
    	local t = image.VictoryScr_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "victScr2" then
    	local t = image.victScreen2_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "okRewards" then
    	local t = image.RewardsOK_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "okRewards1" then
    	local t = image.RewadsOK2_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "okRewards2" then
    	local t = image.Xrewads_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	if image.COMPS_region:exists(image.YesINBOX, 0) then
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
        end
    	if image.COMPS_region:exists(image.NObtnINBOX, 0) then
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
        end
    elseif imAt == "skip" then
    	local t = image.skip_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "nextStage" then
    	local t = image.NextStage_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "startBattle" then
    	if not faimon.faimonBoss_region:exists(faimon.faimonBoss, 1) then
    	local t = image.StartBattle_region:find(StartBattle)
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	end
    elseif imAt == "OKbtnAP" then
    	local t = image.OKbtnAutoBattle_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "inboxYes" then
    	local t = image.YesINBOX_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "inboxCollect" then
    	local t = image.collectInbox_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "goToMap" then
    	if faiBs == 0 then
    	local t = image.battleBTNisland_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	wait(1)
    	elseif collectedLD == 0 then
    	 summoningF() 
    	elseif collectedLD == 1 then
    	 summonLDF() 
    	end
    elseif imAt == "mapScreenScr" then
    	mapF()
    elseif imAt == "battleMap" then
    	local t = image.Battle_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "selectMobs" then
    	selectMobsF()
    elseif imAt == "faimonBossStage" then
    	faimonBossF()
    elseif imAt == "skipSummons" then
    	local t = image.skipSumm_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    ---------------------------------------------------------------------------------------------------------
    elseif imAt == "chilling nothing to do" then
    	--infoText:highlightOff()
    	if image.Close_region:exists(image.Close, 0) then end
    	usePreviousSnap(true)
    	if image.Close_region:exists(image.Close, 0) then
    	local t = image.Close_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.XbtnADs_region:exists(image.XbtnADs, 0) then
    	local t = image.XbtnADs_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.COMPS_region:exists(image.YesINBOX, 0) then
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
        elseif image.COMPS_region:exists(image.NObtnINBOX, 0) then
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.challX_region:exists(image.challX, 0) then
    	local t = image.challX_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
        elseif image.later_region:exists(image.later, 0) then
    	local t = image.later_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	else click(Location(math.random(800, 810),math.random(0, 1))) 
    			usePreviousSnap(false)
        end
    end
end

function RunEverything()
	RerollDialog()
	while true do 
		start()
	end
end

function RerollDialog() 
    dialogInit() 
    addTextView("                                                                               ❣ REROLL MADE FOR T.ME/SWSCRIPTS COMMUNITY ❣\n                                                                                                                                                                                                                        vBeta 4")
    addSeparator() 
    newRow( )
    addTextView("             Select Preferences\n           ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯" )  
    newRow()
    addTextView("     ")addRadioGroup("rgIndex", 1)   
    addRadioButton(" ☄ Random Name Generator", 1) 
    addRadioButton(" ☄ Custom Name     ⬇", 2)
    newRow()
    addTextView("                                 ")
    addEditText("customName", "Insert Custom Name") 
    newRow() 
    addTextView("     ")
    addCheckBox("needReset", "⚡ Start With Reseting", false)
    newRow() 
    addTextView("     ")
    addCheckBox("powerSaving", "⚡ Power Saving Mode ", false)
    addEditNumber("customDelay", 2)
    newRow() 
    addTextView("     ")
    addCheckBox("powerOff", "⚡ Power Off Everything After N. Times (coming soon):    ", false)
    addEditNumber("nTimes", 10)
    newRow() 
    addTextView("                                                                                 ________________________________________________________")
    newRow()
    addTextView("                                                                                         ⚜ The Game Must Be On English Language ⚜")
    dialogShowFullScreen("                                                                       HEADQUARTERS") 

    if rgIndex == 1 then 
      randomNameV = true
    elseif rgIndex == 2 then
      customNameV = true
    end
end 

function debug()
	while true do
    end
end

function debugT()
	
end
RunEverything() 
--debug()
