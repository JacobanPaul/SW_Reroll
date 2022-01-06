Settings:setCompareDimension(true, 1280) 
Settings:setScriptDimension(true, 1280) 
Settings:set("MinSimilarity", 0.7)
setImagePath(scriptPath() .. "images")
resetDone = 1
gameGuardianInit = 0
needGGexec = 0
setHighlightTextStyle(0xb0140030, 0xf9ffffff, 13)
infoText = Region(1000, 200, 260, 140)
gameGuardian = {
	gameGuardianFileLocation_region = Region(250, 150, 200, 100),
	gameGuardianFileLocation = Pattern("gameGuardianFileLocation.png"):similar(0.90),
	gameGuardianSearchIcon_region = Region(448, 12, 40, 41),
	gameGuardianSearchIcon = Pattern("gameGuardianSearchIcon.png"):similar(0.90),
	gameGuardianExecScript_region = Region(1238, 128, 24, 26),
	gameGuardianExecScript = Pattern("gameGuardianExecScript.png"):similar(0.90),
	gameGuardianExecuteInitScript_region = Region(878, 550, 100, 30),
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

image = {
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
	EnterNameDONE = Pattern("EnterNameDone.png"):similar(0.90),
	EnterNameOK_region = Region(875, 182, 61, 40),
	EnterNameOK  = Pattern("EnterNameOK.png"):similar(0.90),
	EnterNameScr_region = Region(250, 76, 59, 48),
	EnterNameScr = Pattern("EnterNameScr.png"):similar(0.90),
	fairyMob_region = Region(30, 473, 83, 36),
	GreenArrowTUT_region = Region(588, 366, 69, 76),
	hellhoundMob_region = Region(139, 477, 81, 27),
	Mob_region = Region(18, 437, 28, 27),
	Mob = Pattern("Mob.png"):similar(0.70),
	MobRegion_region = Region(12, 436, 862, 32),
	NextStage_region = Region(757, 387, 82, 18),
	NextStage = Pattern("NextStage.png"):similar(0.90),
	NObtnINBOX_region = Region(723, 415, 55, 43),
	OKAfterPowerUpMob_region = Region(994, 562, 67, 41),
	OKnewArea_region = Region(611, 602, 59, 41),
	Enemy_region = Region(323, 0, 768, 300),
	enemyArrow = Pattern("enemyArrow.png"):similar(0.9),
	enemyArrow1 = Pattern("enemyArrow1.png"):similar(0.9),
	enemyArrow2 = Pattern("enemyArrow2.png"):similar(0.9),
	enemyArrow3 = Pattern("enemyArrow3.png"):similar(0.9),
	EnemyX = Pattern("enemyLv1.png"):similar(0.9),
	EnemyY = Pattern("enemyLv2.png"):similar(0.9),
	RestartBattlePOPUP_region = Region(411, 503, 93, 39),
	RewardsOK_region = Region(400, 300, 500, 300),
	RewardsOK = Pattern("Speedx1.png"):similar(0.80),
	SelectMobsScr_region = Region(140, 140, 370, 240),
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
	collectInbox_region = Region(986, 235, 105, 42),
	collectInbox = Pattern("collectInbox.png"):similar(0.90),
	newIconMap_region = Region(9, 8, 1253, 697),
	newIconMap = Pattern("newIconMap.png"):similar(0.90),
	battleBTNisland_region = Region(673, 623, 91, 43),
	battleBTNisland = Pattern("battleBTNisland.png"):similar(0.90),
	mapScreen_region = Region(37, 16, 27, 30),
    mapScreen = Pattern("mapScreen.png"):similar(0.90),
}


function showInfo(text)
    infoText:highlightOff() 
    _defaultText ="What Im Doing:  " .. "\n".. tostring(imAt) 
    _text = _defaultText .. "\n".. "______________" .. "\n".. "Reroll made by JPaul" .. "\n" .. text
   infoText:highlight(_text)
end

function resetF()
	if resetDone == 0 then
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
	resetDone = 1
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
	type(output)
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
    if image.COMPS_region:exists(image.COMPS, 0) then 
	local t = image.COMPS_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y+ 90,w,h-20)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) end
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
	local script = io.open("/sdcard/jpaulRerollv1.lua")
	if script~=nil then io.close(script) else  local script = io.open("/sdcard/jpaulRerollv1.lua", "a+")
	script:write("firstRun=0;function getAccID()gg.searchNumber('10602;1065353216;1502;1507::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local a=gg.getResults(gg.getResultsCount())memInit=a[1].address-0xFFFFFF;memFin=a[1].address+0xFFFFFF;t={}t[1]={}t[1].address=a[1].address-0x4;t[1].flags=gg.TYPE_DWORD;t=gg.getValues(t)AccID=t[1].value end;function skillChanger()gg.setVisible(false)gg.searchNumber(AccID..';10602;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local a=gg.getResults(gg.getResultsCount())if a~=nil then for b,c in ipairs(a)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+0x10;t[1].value=103006;t[2].address=c.address+0x14;t[2].value=1;t[3].address=c.address+0x18;t[3].value=12315;t[4].address=c.address+0x1C;t[4].value=1;t[5].address=c.address+0x20;t[5].value=7813;t[6].address=c.address+0x24;t[6].value=1;t[7].address=c.address+0x28;t[7].value=13618;t[8].address=c.address+0x2C;t[8].value=1;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.searchNumber(AccID..';10101;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local d=gg.getResults(gg.getResultsCount())if d~=nil then for b,c in ipairs(d)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+0x10;t[1].value=103006;t[2].address=c.address+0x14;t[2].value=1;t[3].address=c.address+0x18;t[3].value=12315;t[4].address=c.address+0x1C;t[4].value=1;t[5].address=c.address+0x20;t[5].value=7813;t[6].address=c.address+0x24;t[6].value=1;t[7].address=c.address+0x28;t[7].value=13618;t[8].address=c.address+0x2C;t[8].value=1;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.searchNumber(AccID..';15203;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local d=gg.getResults(gg.getResultsCount())if d~=nil then for b,c in ipairs(d)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+0x10;t[1].value=7214;t[2].address=c.address+0x14;t[2].value=1;t[3].address=c.address+0x18;t[3].value=12813;t[4].address=c.address+0x1C;t[4].value=1;t[5].address=c.address+0x20;t[5].value=6262;t[6].address=c.address+0x24;t[6].value=1;t[7].address=c.address+0x28;t[7].value=13618;t[8].address=c.address+0x2C;t[8].value=1;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.searchNumber(AccID..';20904;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local d=gg.getResults(gg.getResultsCount())if a~=nil then for b,c in ipairs(d)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+0x10;t[1].value=7214;t[2].address=c.address+0x14;t[2].value=1;t[3].address=c.address+0x18;t[3].value=12813;t[4].address=c.address+0x1C;t[4].value=1;t[5].address=c.address+0x20;t[5].value=6262;t[6].address=c.address+0x24;t[6].value=1;t[7].address=c.address+0x28;t[7].value=13618;t[8].address=c.address+0x2C;t[8].value=1;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.searchNumber(AccID..';19801;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,memFin,4)local d=gg.getResults(gg.getResultsCount())if a~=nil then for b,c in ipairs(d)do if c.value==1065353216 then local t={}for b=1,8 do t[b]={}t[b].flags=gg.TYPE_DWORD;t[b].freeze=true;t[b].freezeType=gg.FREEZE_NORMAL end;t[1].address=c.address+0x10;t[1].value=103006;t[2].address=c.address+0x14;t[2].value=1;t[3].address=c.address+0x18;t[3].value=12315;t[4].address=c.address+0x1C;t[4].value=1;t[5].address=c.address+0x20;t[5].value=7813;t[6].address=c.address+0x24;t[6].value=1;t[7].address=c.address+0x28;t[7].value=13618;t[8].address=c.address+0x2C;t[8].value=1;gg.setValues(t)gg.addListItems(t)gg.clearResults()end end end;gg.setVisible(false)firstRun=1 end;startTime=os.time()function start()currentTime=os.time()diffTime=os.difftime(currentTime,startTime)if diffTime<=300 and firstRun==0 then skillChanger()elseif diffTime<=300 and firstRun==1 then elseif diffTime>=300 then startTime=os.time()end end;function init()getAccID()while true do start()end end;init()")
	io.close(script)
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
    
	while image.mapScreen_region:exists(image.mapScreen) do
			infoText = Region(0, 500, 800, 150)
			setHighlightTextStyle(0xff140030, 0xf9ffffff, 13)
			showInfo("t.me/swscripts")
			wait(2)
		if image.newIconMap_region:exists(image.newIconMap) then
			local t = image.newIconMap_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		    infoText = Region(1000, 200, 260, 140)
    			setHighlightTextStyle(0xb0140030, 0xf9ffffff, 13)
    			showInfo("t.me/swscripts")
    		break
    	else local  swipRandx1 = math.random(620,640) 
         	 local  swipRandy1 = math.random(400,420) 
             local  swipRandx2 = math.random(900,920) 
             local  swipRandy2 = math.random(390,400)
             swipe(Location(swipRandx2, swipRandy2),  Location(swipRandx1, swipRandy1), 2)
             wait(2) 
    	end 
    end 

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
		local scriptLocation = ("/sdcard/jpaulRerollv1.lua")
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

function WhereIAm()
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
    elseif reset.Profile_region:exists(reset.Profile, 0) and resetDone == 0 then
    	usePreviousSnap(false) 
    	return "needReset"
    elseif image.EnterNameScr_region:exists(image.EnterNameScr, 0) then
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
    elseif not image.SelectMobsScr_region:exists(image.SelectMobsScr, 0) and image.StartBattle_region:exists(image.StartBattle, 0) then
    	usePreviousSnap(false) 
    	return "startBattle"
    elseif image.YesINBOX_region:exists(image.YesINBOX, 0) then
    	usePreviousSnap(false) 
    	return "inboxYes"
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
    else usePreviousSnap(false)
    	 return "nothing"
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
    	if gameGuardianInit >= 3 and needGGexec == 0 then gameGuardianF() end
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
    	local t = image.StartBattle_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
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
    	local t = image.battleBTNisland_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	wait(1)
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

----------------------------------------------------------------------------------------------------------------------
    elseif imAt == "nothing" then
    	infoText:highlightOff()
    	if image.Close_region:exists(image.Close, 0) then
    	local t = image.Close_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	elseif image.XbtnADs_region:exists(image.XbtnADs, 0) then
    	local t = image.XbtnADs_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	else click(Location(0,0)) click(Location(0,0)) click(Location(0,0)) click(Location(0,0)) click(Location(0,0)) end
    	if image.COMPS_region:exists(image.YesINBOX) then
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
        end
    end

end

function RunEverything()
	while true do 
		start()
	end
end

function debug()

end

RunEverything()
--debug()
--createScript()





		