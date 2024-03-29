Settings:setCompareDimension(true, 1280) 
Settings:setScriptDimension(true, 1280) 
Settings:set("MinSimilarity", 0.7)
setImagePath(scriptPath() .. "images")


screen = getAppUsableScreenSize()
reg = Region(0, 0, screen:getX(), screen:getY())
local _execute = os.execute
--needReset = 0
counterStart = 0
info_3Star = 0
info_4Star = 0
resetsTotal = 0
elfCollected = false
lapisCollected = false
fairySelected = 0
lapisSelected = 0
gameGuardianInit = 0
unselectedMobsReturn = false
ggAlreadyRunning = false
dialogVarTut = 1
faiBs = 0
collectedLD = 0
garenForestChecked = 0
mtSizChecked = 0
kabirRuinsChecked = 0
mtWhiteChecked = 0
telainForestChecked = 0
tamorDesertChecked = 0
hydeniRuinsChecked = 0
vrofagusRuinsChecked = 0
faimonVolcanoChecked = 0
ggRestarted = 0
rengarBestJG = 0
minResetingTime = tostring("00:00:00")
setHighlightTextStyle(0xb0140030, 0xf9ffffff, 11)
infoText = Region(150, 2, 240, 270)

summoning = {
	starMobs_region = Region(868, 180, 316, 54),
	collectSummPlatform_region = Region(300, 570, 200, 80),
	collectSummPlatform = Pattern("collectSummPlatform.png"):similar(0.80),
	goToSummPlatform_region = Region(490, 480, 100, 80),
	goToSummPlatform = Pattern("goToSummPlatform.png"):similar(0.80),
	summPlatform_region = Region(35, 400, 75, 240),
	summPlatform = Pattern("summPlatform.png"):similar(0.80),
	inboxLoot_region = Region(35, 360, 75, 70),
	inboxLoot = Pattern("inboxLoot.png"):similar(0.80),
	finalSPSummon_region = Region(350, 600, 300, 45),
	finalSummon_region = Region(130, 600, 470, 45),
	finalSummon = Pattern("finalSummon.png"):similar(0.80),
	LDscrollMaiusc_region = Region(762, 152, 96, 250),
	LDscrollMaiusc = Pattern("LDscrollMaiusc.png"):similar(0.80),
	LDscroll_region = Region(758, 226, 56, 53),
	LDscroll = Pattern("LDscroll.png"):similar(0.80),
	lootRegion = Region(737, 197, 88, 457),
	ldScrollSlot_region = Region(294, 55, 128, 131),
	ldScrollSlot  = Pattern("ldScrollSlot.png"):similar(0.85),
	scamStoneClose_region = Region(872, 145, 88, 85),
}

gameGuardian = {
	gameGuardianFileLocation_region = Region(250, 100, 200, 150),
	gameGuardianFileLocation = Pattern("gameGuardianFileLocation.png"):similar(0.70),
	gameGuardianSearchIcon_region = Region(440, 10, 60, 60),
	gameGuardianSearchIcon = Pattern("gameGuardianSearchIcon.png"):similar(0.70),
	gameGuardianExecScript_region = Region(1210, 110, 100, 100),
	gameGuardianExecScript = Pattern("gameGuardianExecScript.png"):similar(0.70),
	gameGuardianExecuteInitScript_region = Region(850, 50, 150, 600),
	gameGuardianExecuteInitScript = Pattern("gameGuardianExecuteInitScript.png"):similar(0.70),
	gameGuardianIcon_region = Region(0, 514, 95, 153),
	gameGuardianIcon = Pattern("gameGuardianIcon.png"):similar(0.70),
	gameGuardianIconMini = Pattern("gameGuardianIconMini.png"):similar(0.70),
}


reset = {
	Profile_region = Region(87, 94, 52, 15),
	Profile = Pattern("Profile.png"):similar(0.7),
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
	YesConfirmationAfterReset_region = Region(480, 405, 100, 80),
	YesConfirmationAfterReset = Pattern("YesConfirmationAfterReset.png"):similar(0.80),
}

faimon = {
	durandHelp_region = Region(72, 671, 46, 29),
	durandHelp = Pattern("durandHelp.png"):similar(0.90),
	faimonBoss_region = Region(857, 227, 193, 48),
	faimonBoss = Pattern("faimonBoss.png"):similar(0.90),
}

map = {
	hydeniRuins = Pattern("hydeniRuins.png"):similar(0.8),
	garenForest = Pattern("garenForest.png"):similar(0.8),
	mtSiz = Pattern("mtSiz.png"):similar(0.8),
	kabirRuins = Pattern("kabirRuins.png"):similar(0.8),
	mtWhite = Pattern("mtWhite.png"):similar(0.8),
	telainForest = Pattern("telainForest.png"):similar(0.8),
	tamorDesert = Pattern("tamorDesert.png"):similar(0.8),
	vrofagusRuins = Pattern("vrofagusRuins.png"):similar(0.8),
	faimonVolcano = Pattern("faimonVolcano.png"):similar(0.8),
	mapS_region = Region(230, 75, 1000, 630),
}


regionSearch = {
	startQuestBTN_region = Region(472, 138, 97, 97),
	startQuestBTN = Pattern("startQuestBTN.png"):similar(0.8),
	searchForRegion_region = Region(120, 113, 474, 514),
	searchFor = Pattern("searchFor.png"):similar(0.8),
	youHaveToMessage_region = Region(340, 210, 230, 140),
	youHaveToMessage = Pattern("youHaveToMessage.png"):similar(0.8),
	questBTN_region = Region(0, 120, 166, 148),
	questBTN = Pattern("questBTN.png"):similar(0.7),
}

image = {
	moveBTN_region = Region(1152, 614, 120, 78),
	moveBTN = Pattern("moveBTN.png"):similar(0.80),
	mtSizBoss_region = Region(858, 225, 198, 55),
	mtSizBoss = Pattern("mtSizBoss.png"):similar(0.90),
	Lapis = Pattern("Lapis.png"):similar(0.80),
	selectedMob = Pattern("selectedMob.png"):similar(0.85),
	miniElf_region = Region(755, 317, 62, 56),
	miniElf = Pattern("miniElf.png"):similar(0.90),
	selectedMobsTr_region = Region(9, 419, 586, 75),
	selectedMobsTr = Pattern("selectedMobsTr.png"):similar(0.90),
	goBack_region = Region(1173, 635, 75, 60),
	goBack = Pattern("goBack.png"):similar(0.90),
	miniLapis_region = Region(755, 219, 61, 59),
	miniLapis = Pattern("miniLapis.png"):similar(0.90),
	revive_region = Region(510, 451, 49, 41),
	revive = Pattern("revive.png"):similar(0.90),
	fairy_region = Region(14, 492, 54, 60),
	fairy = Pattern("fairy.png"):similar(0.80),
	fairy2 = Pattern("fairy2.png"):similar(0.80),
	slotForReps_region = Region(245, 328, 153, 72),
	slotForReps = Pattern("slotForReps.png"):similar(0.7),
	friendsReps_region = Region(80, 552, 120, 61),
	friendsReps = Pattern("friendsReps.png"):similar(0.7),
	challX_region = Region(1100, 0, 300, 80),
	challX = Pattern("challX.png"):similar(0.8),
	skipSumm_region = Region(1088, 652, 127, 48),
	skipSumm = Pattern("skipSumm.png"):similar(0.90),
	AfterSummOK_region = Region(993, 561, 63, 39),
	AfterSummOK = Pattern("AfterSummOK.png"):similar(0.90),
	--Arrows_region = Region(210, 13, 917, 107),
	AutoPlay_region = Region(192, 630, 89, 84),
	AutoPlay = Pattern("AutoPlay.png"):similar(0.98),
	Battle_region = Region(1120, 200, 120, 120),
	Battle_region1 = Region(1120, 325, 120, 120),
	Battle_region2 = Region(1120, 450, 120, 120),
	Battle_region3 = Region(1120, 575, 120, 120),
	Battle = Pattern("Battle.png"):similar(0.80),
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
	imputNameBlueStack_region = Region(990, 0, 180, 95),
	imputNameBlueStack = Pattern("imputNameBlueStack.png"):similar(0.90),
	EnterNameOK_region = Region(875, 182, 61, 40),
	EnterNameOK  = Pattern("EnterNameOK.png"):similar(0.90),
	EnterNameScr_region = Region(250, 76, 59, 48),
	EnterNameScr = Pattern("EnterNameScr.png"):similar(0.90),
	enterNameScr2_region = Region(250, 200, 64, 280),
	enterNameScr2 = Pattern("enterNameScr2.png"):similar(0.90),
	enterNameScrRight_region = Region(960, 200, 64, 280),
	enterNameScrRight = Pattern("EnterNameScrRight.png"):similar(0.90),
	fairyMob_region = Region(30, 473, 83, 36),
	GreenArrowTUT_region = Region(588, 366, 69, 76),
	hellhoundMob_region = Region(139, 477, 81, 27),
	Mob_region = Region(18, 437, 28, 27),
	Mob = Pattern("Mob.png"):similar(0.7),
	MobRegion_region = Region(12, 430, 300, 50),
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
	RewardsOK = Pattern("RewardsOK.png"):similar(0.80),
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
	YesINBOX  = Pattern("YesINBOX.png"):similar(0.80),
	RewadsOK2_region = Region(400, 300, 500, 300),
	RewadsOK2 = Pattern("RewadsOK2.png"):similar(0.90),
	Xrewads_region = Region(400, 10, 800, 500),
	Xrewads = Pattern("Xrewads.png"):similar(0.90),
	OKbtnAutoBattle_region = Region(305, 314, 600, 300),
	OKbtnAutoBattle = Pattern("OKbtnAutoBattle.png"):similar(0.8),
	okBTN_region = Region(507, 348, 300, 253),
	okBTN  = Pattern("okBTN.png"):similar(0.90),
	collectInbox_region = Region(986, 235, 105, 450),
	collectInbox = Pattern("collectInbox.png"):similar(0.90),
	newIconMap_region = Region(9, 8, 1253, 697),
	newIconMap = Pattern("newIconMap.png"):similar(0.90),
	battleBTNisland_region = Region(673, 623, 91, 43),
	battleBTNisland = Pattern("battleBTNisland.png"):similar(0.90),
	mapScreen_region = Region(37, 16, 27, 30),
    mapScreen = Pattern("mapScreen.png"):similar(0.90),
    later_region = Region(697, 479, 99, 46),
    later = Pattern("later.png"):similar(0.90),
    swIcon_region = Region(240, 220, 130, 130),
    swIcon = Pattern("swIcon.png"):similar(0.8),
    swIcon2 = Pattern("swIcon2.png"):similar(0.8),
    phoneLauncher = Region(15, 15, 1270, 2000),
    closeEvents_region = Region(110, 625, 80, 75),
    closeEvents = Pattern("closeEvents.png"):similar(0.9),
    ggRestart  = Pattern("ggRestart.png"):similar(0.9),
    ggRestart2  = Pattern("ggRestart2.png"):similar(0.9),
}

mentors = {
	communityBTN_region = Region(1026, 614, 125, 70),
	communityBTN = Pattern("communityBTN.png"):similar(0.8),
	mentorBTN_region = Region(30, 408, 117, 73),
	mentorBTN = Pattern("mentorBTN.png"):similar(0.8),
	addMentorBTN_region = Region(597, 211, 132, 513),
	addMentorBTN = Pattern("addMentorBTN.png"):similar(0.8),
	refreshMentorMobs_region = Region(855, 65, 108, 105),
	refreshMentorMobs = Pattern("refreshMentorMobs.png"):similar(0.8),
	addMentorMobs_region = Region(261, 131, 760, 557),
	friendBTN_region = Region(70, 60, 82, 100),
	friendBTN = Pattern("friendBTN.png"):similar(0.8),
	addMentorsAsFriend_region = Region(911, 220, 147, 485),
	mob_1 = Pattern("mob_1.png"):similar(0.8),
	mob_2 = Pattern("mob_2.png"):similar(0.8),
	mob_3 = Pattern("mob_3.png"):similar(0.8),
	mob_4 = Pattern("mob_4.png"):similar(0.8),
	mentorOK = Pattern("mentorOK.png"):similar(0.8),
}

addMentorsAsFriend = {
	addMentorsAsFriend = Pattern("addMentorsAsFriend.png"):similar(0.8),
}

customChannel = {
	openChat_region = Region(370, 11, 272, 91),
	openChat = Pattern("openChat.png"):similar(0.80),
	imputMessage_region = Region(93, 620, 246, 70),
	imputMessage = Pattern("imputMessage.png"):similar(0.80),
	channel_region = Region(1008, 15, 130, 73),
	channel = Pattern("channel.png"):similar(0.80),
	done_region = Region(1041, 0, 100, 69),
	done = Pattern("Done.png"):similar(0.80),
}

trashCck = {
	XbtnADs  = Pattern("XbtnADs.png"):similar(0.80),
	Xrewads = Pattern("Xrewads.png"):similar(0.80),
}

function SecondsToClock(seconds)
  local seconds = tonumber(seconds)
  if seconds <= 0 then
    return "00:00:00";
  elseif seconds == nil then
  	return "00:00:00";
  else
    hours = string.format("%02.f", math.floor(seconds/3600));
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
    return hours..":"..mins..":"..secs
  end
end

function  existsMultiMax(target, region)
    for i, t in pairs(target) do
        if (region: exists(t, 0.2)) then 
        local cl = region:getLastMatch():getCenter()
        click(Location(cl.x + math.random(0, 20), cl.y + math.random(0, 20)))
        end
    end
end

function mkdir(p) 
	return _execute('mkdir -p "' .. p .. '"') == 0 
end

function mobScreenShotF()
	mkdir(scriptPath() .. "/mobScreenshots/")
	setImagePath(scriptPath() .. "/mobScreenshots/")
	if output ~= nil then
		reg:save(tostring(output.. ".png"))
    else 
    	local upperCaseS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		local lowerCaseS = "abcdefghijklmnopqrstuvwxyz"
		local numbersS = "0123456789"
		local specCharS = "._-"
		local characterSetS = upperCaseS .. lowerCaseS .. numbersS .. specCharS
		local keyLengthS = 14
		local outputS = ""
		for	i = 1, keyLengthS do
			local randS = math.random(#characterSetS)
			outputS = outputS .. string.sub(characterSetS, randS, randS)
		end
    	reg:save(tostring(outputS.. ".png"))
    end
	setImagePath(scriptPath() .. "/images/")
end

function summonLDF()
	  if showInfoM == true then showInfo("Summoning LD scroll") end
	if summonChannel == true then
		summonChannelF()
		wait(2)
	end
	if summoning.summPlatform_region:exists(summoning.summPlatform, 5) then
	 	local t = summoning.summPlatform_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    while summoning.collectSummPlatform_region:exists(summoning.collectSummPlatform) do
	 	local t = summoning.collectSummPlatform_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    while summoning.goToSummPlatform_region:exists(summoning.goToSummPlatform) do
	 	local t = summoning.goToSummPlatform_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	wait(1)
    	if summoning.scamStoneClose_region:exists(image.Xrewads) then
				local t = summoning.scamStoneClose_region:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    	wait(1)
		end
    	local  swipRandx1 = math.random(1000,1010) 
		local  swipRandy1 = math.random(200,210)
		local  swipRandx2 = math.random(1000,1010) 
		local  swipRandy2 = math.random(550,560)
		swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
		wait(0.5)
    end
    if summoning.LDscrollMaiusc_region:exists(summoning.LDscrollMaiusc, 5) then
	 	local t = summoning.LDscrollMaiusc_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif not summoning.LDscrollMaiusc_region:exists(summoning.LDscrollMaiusc, 5) then
    	local  swipRandx1 = math.random(1000,1010) 
		local  swipRandy1 = math.random(200,210)
		local  swipRandx2 = math.random(1000,1010) 
		local  swipRandy2 = math.random(550,560)
		swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
		wait(2)
		if summoning.LDscrollMaiusc_region:exists(summoning.LDscrollMaiusc, 5) then
	 	local t = summoning.LDscrollMaiusc_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) end
    end
    infoText:highlightOff()
    if summoning.ldScrollSlot_region:exists(summoning.ldScrollSlot, 5) then
    	showInfo("Good Luck")
    	if summoning.finalSPSummon_region:exists(summoning.finalSummon, 2) then 
		 	local t = summoning.finalSPSummon_region:getLastMatch()
	    	local x = t:getX()
	    	local y = t:getY()
	    	local w = t:getW()
	    	local h = t:getH()
	    	local Area = Region(x,y,w,h)
	    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    elseif summoning.finalSummon_region:exists(summoning.finalSummon, 5) then 
		 	local t = summoning.finalSummon_region:getLastMatch()
	    	local x = t:getX()
	    	local y = t:getY()
	    	local w = t:getW()
	    	local h = t:getH()
	    	local Area = Region(x,y,w,h)
	    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    end 
	end
	if ultrafast == true then
		if image.skipSumm_region:exists(image.skipSumm, 5) then
	    			local t = image.skipSumm_region:getLastMatch()
			    	local x = t:getX()
			    	local y = t:getY()
			    	local w = t:getW()
			    	local h = t:getH()
			    	local Area = Region(x,y,w,h)
			    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		end
	end
	if image.AfterSummOK_region:exists(image.AfterSummOK, 15) then
	wait(1)
	starsMob = numberOCR(summoning.starMobs_region, "star")
	wait(1)
	if starsMob == 111 then
	resetTime()
	info_3Star = info_3Star + 1 
	showInfo("3*  -_-'")
	wait(1)
	toast("3 Star Mob Better Luck Next Time")
	mobScreenShotF()
	needReset = true 
	faiBs = 0
	collectedLD = 0
	ggAlreadyRunning = true
	garenForestChecked = 0
	mtSizChecked = 0
	kabirRuinsChecked = 0
	mtWhiteChecked = 0
	telainForestChecked = 0
	tamorDesertChecked = 0
	hydeniRuinsChecked = 0
	vrofagusRuinsChecked = 0
	faimonVolcanoChecked = 0
	fairySelected = 0
	lapisSelected = 0
	elfCollected = false
	lapisCollected = false
	trashCheck()
	trashCheck()
	elseif starsMob == 1111 then
	resetTime()
	info_4Star = info_4Star + 1 
	showInfo("4*  ^_^'")
	wait(1)
	toast("4 Star Mob SO CLOSE")
	mobScreenShotF()
	needReset = true
	faiBs = 0
	collectedLD = 0 
	ggAlreadyRunning = true
	garenForestChecked = 0
	mtSizChecked = 0
	kabirRuinsChecked = 0
	mtWhiteChecked = 0
	telainForestChecked = 0
	tamorDesertChecked = 0
	hydeniRuinsChecked = 0
	vrofagusRuinsChecked = 0
	faimonVolcanoChecked = 0
	fairySelected = 0
	lapisSelected = 0
	elfCollected = false
	lapisCollected = false
	trashCheck()
	trashCheck()
	if stopFourStar == true then
		scriptExit("4 Star Mob") 
	end
	elseif starsMob == 11111 then 
		resetTime()
		showInfo("5*  ^O^")
		wait(1)
		toast("5 Star Mob BIG GZ ")
		mobScreenShotF()
		scriptExit("5 Star Mob BIG GZ") 
	elseif starsMob == nil then toast("Something is wrong")
		mobScreenShotF()
		scriptExit("Something is wrong")
	end
    end
    resetsTotal = resetsTotal + 1
    if showInfoM == false then
    infoText:highlightOff()
	end
end

function resetTime()
	currentResetingTime = os.time()
    if startResetingTime ~= nil then
    diffTimeReseting = os.difftime(currentResetingTime, startResetingTime )
    minResetingTime = SecondsToClock(diffTimeReseting)
	elseif startResetingTime == nil then minResetingTime = tostring("00:00:00") end
end

function summoningF()
	 if showInfoM == true then showInfo("Collecting LD scroll") end
	trashCheck()
	wait(0.5)
	if summoning.inboxLoot_region:exists(summoning.inboxLoot, 5) then
	 	local t = summoning.inboxLoot_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	wait(0.5)
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
    	wait(0.5)
    	break
    elseif scrollBottom <= 8 then 
     		 local  swipRandx1 = math.random(620,640) 
         	 local  swipRandy1 = math.random(250,260)
             local  swipRandx2 = math.random(620,640) 
             local  swipRandy2 = math.random(450,460)
             swipe(Location(swipRandx2, swipRandy2),  Location(swipRandx1, swipRandy1), 2)
             scrollBottom = scrollBottom + 1
    elseif scrollBottom >= 9 then 
    	local  swipRandx1 = math.random(620,640) 
        local  swipRandy1 = math.random(250,260)
        local  swipRandx2 = math.random(620,640) 
        local  swipRandy2 = math.random(450,460)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
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
    _defaultText ="\n".."What Im Doing  ".. "\n".. tostring(imAt) .. "\n" .. "\n".."  4*" .."     |       3*" .. "\n"   .. tostring(info_4Star)  .. "       |       " .. tostring(info_3Star)  .. "\n".."\n" .."Time Passed From The Start ".. "\n"..tostring(minFromBeg).."\n".."Last Reset Clearing Time ".. "\n"..tostring(minResetingTime).."\n".."How Many Resets: "..tostring(resetsTotal)
    _text = _defaultText .. "\n".. "______________" .. "\n".. "Reroll made by JPaul" .. "\n" .. text
   infoText:highlight(_text)
end

function resetF()
	trashCheck()
	wait(0.5)
	trashCheck()
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
	if image.imputNameBlueStack_region:exists(image.imputNameBlueStack, 0.5) then 
    local t = image.imputNameBlueStack_region:getLastMatch()
    local numString = ""..captchaNum..""
    type(numString)
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
	while reset.ResetAfterImput_region:exists(reset.ResetAfterImput,1) do 
    local t = reset.ResetAfterImput_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
	while reset.YesConfirmationAfterReset_region:exists(reset.YesConfirmationAfterReset,1) do
		needReset = false
		dialogVarTut = 0 
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

end

function nameF()
	startResetingTime = os.time()
	local upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	local lowerCase = "abcdefghijklmnopqrstuvwxyz"
	local numbers = "0123456789"
	local specChar = "._-"
	local characterSet = upperCase .. lowerCase .. numbers .. specChar
	local keyLength = 14
	local output = ""
	for	i = 1, keyLength do
		local rand = math.random(#characterSet)
		output = output .. string.sub(characterSet, rand, rand)
	end
	if image.EnterNameOK_region:exists(image.EnterNameOK) then
	local t = image.EnterNameOK_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x-400,y,w,h)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
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
    if image.imputNameBlueStack_region:exists(image.imputNameBlueStack) then
	local t = image.imputNameBlueStack_region:getLastMatch()
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
	while image.DialSkipSX_region:exists(image.DialSkipSX, 0) or image.DialSkipDX_region:exists(image.DialSkipDX, 0) do
	local t = image.DialSkipSX_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x+50,y,w,h)
    click(Location(math.random(640, 650), math.random(310, 320)))
    click(Location(math.random(490, 510),math.random(719, 719)))
    end
end

function dialogsFDX()
	while image.DialSkipDX_region:exists(image.DialSkipDX, 0) or image.DialSkipSX_region:exists(image.DialSkipSX, 0) do
	local t = image.DialSkipDX_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y,w,h)
    click(Location(math.random(640, 650), math.random(310, 320)))
    click(Location(math.random(490, 510),math.random(719, 719))) 
    --[[if dialogVarTut == 0  then
    if image.COMPS_region:exists(image.COMPS, 0) then 
	local t = image.COMPS_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x,y+ 90,w,h-20)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    dialogVarTut = 1 end end]]
    end
end

function tutF()
	while image.COMPS_region:exists(image.COMPS, 1) do
	local t = image.COMPS_region:getLastMatch()
    local x = t:getX()
    local y = t:getY()
    local w = t:getW()
    local h = t:getH()
    local Area = Region(x+30,y+ 90,w-25,h-20)
    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
end

function createScript()
	local script = io.open("/sdcard/jpaulRerollv19.lua")
	if script~=nil then io.close(script) else  local script = io.open("/sdcard/jpaulRerollv19.lua", "a+")
	script:write("gg.setVisible(false)firstRun=0;function getAccID()gg.searchNumber('10101;1065353216;1101;1106::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,-1)local a=gg.getResults(gg.getResultsCount())tacc={}tacc[1]={}tacc[1].address=a[1].address-addOfss;tacc[1].flags=gg.TYPE_DWORD;tacc=gg.getValues(tacc)AccID=tacc[1].value;gg.sleep(500)end;function skillChangerHell()gg.clearResults()gg.sleep(500)gg.searchNumber(AccID..';10602;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,-1,3)gg.sleep(500)local b=gg.getResults(gg.getResultsCount())gg.sleep(500)if b~=nil then for c,d in ipairs(b)do if d.value==1065353216 then local e={}for c=1,8 do e[c]={}e[c].flags=gg.TYPE_DWORD;e[c].freeze=true;e[c].freezeType=gg.FREEZE_NORMAL end;e[1].address=d.address+fstSkOfss;e[1].value=104201;e[2].address=d.address+fstSkPROfss;e[2].value=5;e[3].address=d.address+sndSkOfss;e[3].value=7813;e[4].address=d.address+sndSkPROfss;e[4].value=5;e[5].address=d.address+trdSkOfss;e[5].value=1000002;e[6].address=d.address+trdSkPROfss;e[6].value=5;e[7].address=d.address+fthSkOfss;e[7].value=13633;e[8].address=d.address+fthSkPROfss;e[8].value=5;gg.sleep(500)gg.setValues(e)gg.addListItems(e)end end end end;function skillChangerVag()gg.clearResults()gg.sleep(500)gg.searchNumber(AccID..';15203;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,-1,3)gg.sleep(500)local f=gg.getResults(gg.getResultsCount())gg.sleep(500)if f~=nil then for c,d in ipairs(f)do if d.value==1065353216 then local g={}for c=1,8 do g[c]={}g[c].flags=gg.TYPE_DWORD;g[c].freeze=true;g[c].freezeType=gg.FREEZE_NORMAL end;g[1].address=d.address+fstSkOfss;g[1].value=100505;g[2].address=d.address+fstSkPROfss;g[2].value=5;g[3].address=d.address+sndSkOfss;g[3].value=10915;g[4].address=d.address+sndSkPROfss;g[4].value=5;g[5].address=d.address+trdSkOfss;g[5].value=104205;g[6].address=d.address+trdSkPROfss;g[6].value=5;g[7].address=d.address+fthSkOfss;g[7].value=13618;g[8].address=d.address+fthSkPROfss;g[8].value=5;gg.sleep(500)gg.setValues(g)gg.addListItems(g)end end end end;function skillChangerFai()gg.clearResults()gg.sleep(500)gg.searchNumber(AccID..';10101;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1,3)gg.sleep(500)local h=gg.getResults(gg.getResultsCount())gg.sleep(500)memV=gg.getResultsCount()if memV>1 then memInit=h[1].address-0xFFFFF end;if h~=nil then for c,d in ipairs(h)do if d.value==1065353216 then local i={}for c=1,8 do i[c]={}i[c].flags=gg.TYPE_DWORD;i[c].freeze=true;i[c].freezeType=gg.FREEZE_NORMAL end;i[1].address=d.address+fstSkOfss;i[1].value=103006;i[2].address=d.address+fstSkPROfss;i[2].value=5;i[3].address=d.address+sndSkOfss;i[3].value=104305;i[4].address=d.address+sndSkPROfss;i[4].value=5;i[5].address=d.address+trdSkOfss;i[5].value=107026;i[6].address=d.address+trdSkPROfss;i[6].value=5;i[7].address=d.address+fthSkOfss;i[7].value=13618;i[8].address=d.address+fthSkPROfss;i[8].value=5;gg.sleep(500)gg.setValues(i)gg.addListItems(i)end;if d.value==10101 then local j={}for c=1,1 do j[c]={}j[c].flags=gg.TYPE_DWORD;j[c].freeze=true;j[c].freezeType=gg.FREEZE_NORMAL end;j[1].address=d.address;j[1].value=16112;gg.sleep(500)gg.setValues(j)gg.addListItems(j)end end end end;function skillChangerLap()gg.clearResults()gg.sleep(500)gg.searchNumber(AccID..';19801;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,-1,3)gg.sleep(500)local k=gg.getResults(gg.getResultsCount())gg.sleep(500)if k~=nil then for c,d in ipairs(k)do if d.value==1065353216 then local l={}for c=1,8 do l[c]={}l[c].flags=gg.TYPE_DWORD;l[c].freeze=true;l[c].freezeType=gg.FREEZE_NORMAL end;l[1].address=d.address+fstSkOfss;l[1].value=104201;l[2].address=d.address+fstSkPROfss;l[2].value=5;l[3].address=d.address+sndSkOfss;l[3].value=7813;l[4].address=d.address+sndSkPROfss;l[4].value=5;l[5].address=d.address+trdSkOfss;l[5].value=1000002;l[6].address=d.address+trdSkPROfss;l[6].value=5;l[7].address=d.address+fthSkOfss;l[7].value=13633;l[8].address=d.address+fthSkPROfss;l[8].value=5;gg.sleep(500)gg.setValues(l)gg.addListItems(l)end end end end;function skillChangerElf()gg.clearResults()gg.sleep(500)gg.searchNumber(AccID..';20904;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,-1,3)gg.sleep(500)local m=gg.getResults(gg.getResultsCount())gg.sleep(500)if m~=nil then for c,d in ipairs(m)do if d.value==1065353216 then local n={}for c=1,8 do n[c]={}n[c].flags=gg.TYPE_DWORD;n[c].freeze=true;n[c].freezeType=gg.FREEZE_NORMAL end;n[1].address=d.address+fstSkOfss;n[1].value=100505;n[2].address=d.address+fstSkPROfss;n[2].value=5;n[3].address=d.address+sndSkOfss;n[3].value=10915;n[4].address=d.address+sndSkPROfss;n[4].value=5;n[5].address=d.address+trdSkOfss;n[5].value=104205;n[6].address=d.address+trdSkPROfss;n[6].value=5;n[7].address=d.address+fthSkOfss;n[7].value=13618;n[8].address=d.address+fthSkPROfss;n[8].value=5;gg.sleep(500)gg.setValues(n)gg.addListItems(n)end end end end;function skillChangerRic()gg.clearResults()gg.sleep(500)gg.searchNumber(AccID..';16112;1065353216::',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,memInit,-1,3)gg.sleep(500)local o=gg.getResults(gg.getResultsCount())gg.sleep(500)if o~=nil then for c,d in ipairs(o)do if d.value==1065353216 then local p={}for c=1,8 do p[c]={}p[c].flags=gg.TYPE_DWORD;p[c].freeze=true;p[c].freezeType=gg.FREEZE_NORMAL end;p[1].address=d.address+fstSkOfss;p[1].value=103006;p[2].address=d.address+fstSkPROfss;p[2].value=5;p[3].address=d.address+sndSkOfss;p[3].value=104305;p[4].address=d.address+sndSkPROfss;p[4].value=5;p[5].address=d.address+trdSkOfss;p[5].value=107026;p[6].address=d.address+trdSkPROfss;p[6].value=5;p[7].address=d.address+fthSkOfss;p[7].value=13618;p[8].address=d.address+fthSkPROfss;p[8].value=5;gg.sleep(500)gg.setValues(p)gg.addListItems(p)end end end end;startTime=os.time()function start()currentTime=os.time()diffTime=os.difftime(currentTime,startTime)if diffTime<=120 and firstRun==0 then savedList=gg.getListItems()gg.removeListItems(savedList)skillChangerFai()skillChangerHell()skillChangerVag()skillChangerElf()skillChangerLap()skillChangerRic()gg.sleep(61000)gg.setVisible(false)firstRun=1 elseif diffTime<=120 and firstRun==1 then gg.sleep(61000)elseif diffTime>=120 then firstRun=0;startTime=os.time()end end;function init()gg.setVisible(false)getAccID()while true do start()end end;local q=gg.getTargetInfo()if q==nil then print('Cant retrieve information about the process')else if q.x64 then addOfss=0x8;fstSkOfss=0x1C;sndSkOfss=0x2C;trdSkOfss=0x3C;fthSkOfss=0x4C;fstSkPROfss=0x24;sndSkPROfss=0x34;trdSkPROfss=0x44;fthSkPROfss=0x54 else addOfss=0x4;fstSkOfss=0x10;sndSkOfss=0x18;trdSkOfss=0x20;fthSkOfss=0x28;fstSkPROfss=0x14;sndSkPROfss=0x1C;trdSkPROfss=0x24;fthSkPROfss=0x2C end end;init()")
	io.close(script)
    end
end

function chPx()
			local t = map.mapS_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		local pixel = Location(x+2,y+(h-2))
    		usePreviousSnap(false)
    		local r, g, b = getColor(pixel,1)
    		if r <= 150 then 
    			return true
    		elseif r >= 150 then
    			return false
    		end
end

function collectElf()
	if showInfoM == true then showInfo("collectElf") end
	while not reset.Profile_region:exists(reset.Profile) do
		trashCheck()
		if image.goBack_region:exists(image.goBack) then
    		local t = image.goBack_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	end
	end
	wait(0.5)
	trashCheck()
	wait(0.5)
	if summoning.inboxLoot_region:exists(summoning.inboxLoot, 5) then
	 	local t = summoning.inboxLoot_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	wait(2)
    end
    scrollBottom = 0
    while image.collectInbox_region:exists(image.collectInbox, 5) do
    if summoning.lootRegion:exists(image.miniElf, 5) then
	 	local t = summoning.lootRegion:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x+250,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	elfCollected = true
    	wait(0.5)
    	break
    elseif scrollBottom <= 8 then 
     		 local  swipRandx1 = math.random(620,640) 
         	 local  swipRandy1 = math.random(250,260)
             local  swipRandx2 = math.random(620,640) 
             local  swipRandy2 = math.random(450,460)
             swipe(Location(swipRandx2, swipRandy2),  Location(swipRandx1, swipRandy1), 2)
             scrollBottom = scrollBottom + 1
    elseif scrollBottom >= 9 then 
    	local  swipRandx1 = math.random(620,640) 
        local  swipRandy1 = math.random(250,260)
        local  swipRandx2 = math.random(620,640) 
        local  swipRandy2 = math.random(450,460)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
    	scrollBottom = 0
    	break
    end
    end
end

function battleMapF()
	if image.Battle_region3:exists(image.Battle, 0) or image.Battle_region2:exists(image.Battle, 0) then 
			local  swipRandx1 = math.random(1000,1010) 
			local  swipRandy1 = math.random(250,260)
			local  swipRandx2 = math.random(1000,1010) 
			local  swipRandy2 = math.random(620,630)
			swipe(Location(swipRandx2, swipRandy2),  Location(swipRandx1, swipRandy1), 2)
			swipe(Location(swipRandx2, swipRandy2),  Location(swipRandx1, swipRandy1), 2)
			wait(0.5)
			if image.Battle_region3:exists(image.Battle, 0) then
				local t = image.Battle_region3:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    elseif image.Battle_region2:exists(image.Battle, 0) then
				local t = image.Battle_region2:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    elseif image.Battle_region1:exists(image.Battle, 0) then
				local t = image.Battle_region1:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    elseif image.Battle_region:exists(image.Battle, 0) then
				local t = image.Battle_region:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    else
				swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
				swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
				wait(0.5)
			end
			if image.Battle_region3:exists(image.Battle, 0) then
				local t = image.Battle_region3:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    elseif image.Battle_region2:exists(image.Battle, 0) then
				local t = image.Battle_region2:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    elseif image.Battle_region1:exists(image.Battle, 0) then
				local t = image.Battle_region1:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    elseif image.Battle_region:exists(image.Battle, 0) then
				local t = image.Battle_region:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) 
		    end
	elseif not image.Battle_region3:exists(image.Battle, 0) or image.Battle_region2:exists(image.Battle, 0) then
				if image.Battle_region1:exists(image.Battle, 0) then
				local t = image.Battle_region1:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    elseif image.Battle_region:exists(image.Battle, 0) then
				local t = image.Battle_region:getLastMatch()
		    	local x = t:getX()
		    	local y = t:getY()
		    	local w = t:getW()
		    	local h = t:getH()
		    	local Area = Region(x,y,w,h)
		    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) 
		    end
	end
end

function searchRegionF()
	if showInfoM == true then showInfo("searchRegionF") end
	if image.OKbtnAutoBattle_region:exists(image.OKbtnAutoBattle) then
		local t = image.OKbtnAutoBattle_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
	while not reset.Profile_region:exists(reset.Profile) do
		trashCheck()
		if image.goBack_region:exists(image.goBack) then
    		local t = image.goBack_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	end
	end
	wait(1)
	trashCheck()
	wait(0.5)
	if regionSearch.questBTN_region:exists(regionSearch.questBTN) then
			local t = regionSearch.questBTN_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    infoText:highlightOff()
    if regionSearch.searchForRegion_region:exists(regionSearch.searchFor) then
			local t = regionSearch.searchForRegion_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local AreaStartQuest = Region(x+200,y-30,w+200,h+60)
    		if AreaStartQuest:exists(regionSearch.startQuestBTN) then
    			local t = AreaStartQuest:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x,y,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	   		else click(Location(x+320,y))
	   		end
    end
end

function collectLapis()
	if showInfoM == true then showInfo("collectLapis") end
	while not reset.Profile_region:exists(reset.Profile) do
		trashCheck()
		if image.goBack_region:exists(image.goBack) then
    		local t = image.goBack_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	end
	end
	wait(2)
	trashCheck()
	wait(0.5)
	if summoning.inboxLoot_region:exists(summoning.inboxLoot, 5) then
	 	local t = summoning.inboxLoot_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	wait(2)
    end
    scrollBottom = 0
    while image.collectInbox_region:exists(image.collectInbox, 5) do
    if summoning.lootRegion:exists(image.miniLapis, 5) then
	 	local t = summoning.lootRegion:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x+250,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	lapisCollected = true
    	wait(2)
    	break
    elseif scrollBottom <= 8 then 
     		 local  swipRandx1 = math.random(620,640) 
         	 local  swipRandy1 = math.random(250,260)
             local  swipRandx2 = math.random(620,640) 
             local  swipRandy2 = math.random(450,460)
             swipe(Location(swipRandx2, swipRandy2),  Location(swipRandx1, swipRandy1), 2)
             scrollBottom = scrollBottom + 1
    elseif scrollBottom >= 9 then 
    	local  swipRandx1 = math.random(620,640) 
        local  swipRandy1 = math.random(250,260)
        local  swipRandx2 = math.random(620,640) 
        local  swipRandy2 = math.random(450,460)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
        swipe(Location(swipRandx2, swipRandy1),  Location(swipRandx1, swipRandy2), 2)
    	scrollBottom = 0
    	break
    end
    end
end

function mapF()
	if ggWithFriend == true then
	    if ggAlreadyRunning == false then
	    	gameGuardianF()
	    end
	end
	counterStart = counterStart + 1
	if counterStart <= 5 then
		if image.XbtnADs_region:exists(image.XbtnADs, 0) then
	    	local t = image.XbtnADs_region:getLastMatch()
	    	local x = t:getX()
	    	local y = t:getY()
	    	local w = t:getW()
	    	local h = t:getH()
	    	local Area = Region(x,y,w,h)
	    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    end
	    if image.COMPS_region:exists(image.YesINBOX,1) then
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
			if regionSearch.youHaveToMessage_region:exists(regionSearch.youHaveToMessage, 0) then
				searchRegionF() end
			if faiBs == 0 then elseif faiBs == 1 then trashCheck()
				if image.goBack_region:exists(image.goBack) then
		    		local t = image.goBack_region:getLastMatch()
		    		local x = t:getX()
		    		local y = t:getY()
		    		local w = t:getW()
		    		local h = t:getH()
		    		local Area = Region(x,y,w,h)
		    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    	end 
		    end
			usePreviousSnap(true)
			if garenForestChecked == 0 and map.mapS_region:exists(map.garenForest,1) then
				if showInfoM == true then showInfo("checking garenForest") end
				if chPx() == true then
				local t = map.mapS_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x,y,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		usePreviousSnap(false)
	    		break
	    	    elseif chPx() == false then
	    	    	if ggClearing == true and elfCollected == false then 
						usePreviousSnap(false) 
						garenForestChecked = 1
						collectElf() 
						break
	    	   		elseif ggClearing == true and elfCollected == true then
	    	   		 	usePreviousSnap(false) 
	    	   		 	garenForestChecked = 1 
	    	   		elseif frClearing == true then 
	    	   		 	usePreviousSnap(false) 
	    	   		 	garenForestChecked = 1 
	    	   		end
	    	   		if ggRestarted == 1 then
	    	    		gameGuardianF() 
	    	    		ggRestarted = 0 
	    	    	end
	    	    	if ggWithFriend == true then
	    	    		if ggAlreadyRunning == false then
	    	    			gameGuardianF()
	    	    		end
	    	    	end
	    	    	if addMentors == true then
	    	    		addMentorsF()
	    	    	end
	    	    end
	    	elseif mtSizChecked == 0 and map.mapS_region:exists(map.mtSiz) then
	    		if showInfoM == true then showInfo("checking mtSiz") end 
				if chPx() == true then 
					if ggClearing == true and elfCollected == false then 
						usePreviousSnap(false) 
						collectElf() 
						break
					elseif ggClearing == true and elfCollected == true then
							local t = map.mapS_region:getLastMatch()
	    					local x = t:getX()
	    					local y = t:getY()
	    					local w = t:getW()
	    					local h = t:getH()
	    					local Area = Region(x,y,w,h)
	    					click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    					usePreviousSnap(false)
	    					counterStart = 0
	    					break
	    			elseif frClearing == true then
	    				
	    					local t = map.mapS_region:getLastMatch()
	    					local x = t:getX()
	    					local y = t:getY()
	    					local w = t:getW()
	    					local h = t:getH()
	    					local Area = Region(x,y,w,h)
	    					click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    					usePreviousSnap(false)
	    					counterStart = 0
	    					break 
	    			end
	    		elseif chPx() == false then
	    			if ggClearing == true and lapisCollected == false then 
						usePreviousSnap(false) 
						mtSizChecked = 1
						collectLapis() 
						break
	    	   		elseif ggClearing == true and lapisCollected == true then
	    	   		 	usePreviousSnap(false) 
	    	   		 	mtSizChecked = 1 
	    	   		elseif frClearing == true then 
	    	   		 	usePreviousSnap(false) 
	    	   		 	mtSizChecked = 1 
	    	   		end
	    	    	
	    	    end
	    	elseif kabirRuinsChecked == 0 and map.mapS_region:exists(map.kabirRuins) then
	    		if showInfoM == true then showInfo("checking kabirRuins") end
				if chPx() == true then
					if mtSizChecked == 1 then 
				local t = map.mapS_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x,y,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		usePreviousSnap(false)
	    		counterStart = 0
	    		break else
	    		local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2) 
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             usePreviousSnap(false)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             break
	         	end
	    		elseif chPx() == false then
	    	    	kabirRuinsChecked = 1
	    	    end
	    	elseif mtWhiteChecked == 0 and map.mapS_region:exists(map.mtWhite) then
	    		if showInfoM == true then showInfo("checking mtWhite") end
				if chPx() == true then
					if kabirRuinsChecked == 1 then
				local t = map.mapS_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x,y,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		usePreviousSnap(false)
	    		counterStart = 0
	    		break else
	    		local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2) 
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             usePreviousSnap(false)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             break
	         	end
	    		elseif chPx() == false then
	    	    	mtWhiteChecked = 1
	    	    end
	    	elseif telainForestChecked == 0 and map.mapS_region:exists(map.telainForest) then
	    		if showInfoM == true then showInfo("checking telainForest") end
				if chPx() == true then
					if mtWhiteChecked == 1 then
				local t = map.mapS_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x,y,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		usePreviousSnap(false)
	    		counterStart = 0
	    		break else
	    		local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2) 
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             usePreviousSnap(false)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             break
	         	end
	    		elseif chPx() == false then
	    	    	telainForestChecked = 1
	    	    end
	    	elseif hydeniRuinsChecked == 0 and map.mapS_region:exists(map.hydeniRuins) then
	    		if showInfoM == true then showInfo("checking hydeniRuins") end
				if chPx() == true then
					if telainForestChecked == 1 then
				local t = map.mapS_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x-w,y,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		usePreviousSnap(false)
	    		counterStart = 0
	    		break else
	    		local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2) 
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             usePreviousSnap(false)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             break
	         	end
	    		elseif chPx() == false then
	    	    	hydeniRuinsChecked = 1
	    	    end
	    	elseif tamorDesertChecked == 0 and  map.mapS_region:exists(map.tamorDesert) then
	    		if showInfoM == true then showInfo("checking tamorDesert") end
				if chPx() == true then
					if hydeniRuinsChecked == 1 then 
				local t = map.mapS_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x,y,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		usePreviousSnap(false)
	    		counterStart = 0
	    		break else
	    		local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2) 
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             usePreviousSnap(false)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             break
	         	end
	    		elseif chPx() == false then
	    	    	tamorDesertChecked = 1
	    	    end
	    	elseif vrofagusRuinsChecked == 0 and map.mapS_region:exists(map.vrofagusRuins) then
	    		if showInfoM == true then showInfo("checking vrofagusRuins") end
				if chPx() == true then
					if tamorDesertChecked == 1 then
				local t = map.mapS_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x,y,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		usePreviousSnap(false)
	    		counterStart = 0
	    		break else
	    		local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2) 
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             usePreviousSnap(false)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             break
	         	end
	    		elseif chPx() == false then
	    	    	vrofagusRuinsChecked = 1
	    	    end
	    	elseif faimonVolcanoChecked == 0 and map.mapS_region:exists(map.faimonVolcano) then
	    		if showInfoM == true then showInfo("checking faimonVolcano") end
				if chPx() == true then
					if vrofagusRuinsChecked == 1 then
						local t = map.mapS_region:getLastMatch()
			    		local x = t:getX()
			    		local y = t:getY()
			    		local w = t:getW()
			    		local h = t:getH()
			    		local Area = Region(x,y,w,h)
			    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
			    		usePreviousSnap(false)
			    		counterStart = 0
			    		break 
			    	else
			    		local  swipRandx1 = math.random(220,240) 
			         	local  swipRandy1 = math.random(400,420) 
			            local  swipRandx2 = math.random(1000,1020) 
			            local  swipRandy2 = math.random(390,400)
			            swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2) 
			            wait(2)
			            local  swipRandx1 = math.random(220,240) 
			         	local  swipRandy1 = math.random(400,420) 
			            local  swipRandx2 = math.random(1000,1020) 
			            local  swipRandy2 = math.random(390,400)
			            swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
			            wait(2)
			            local  swipRandx1 = math.random(220,240) 
			         	local  swipRandy1 = math.random(400,420) 
			            local  swipRandx2 = math.random(1000,1020) 
			            local  swipRandy2 = math.random(390,400)
			            usePreviousSnap(false)
			            swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
			            wait(2)
			            break
			         end
	    		elseif chPx() == false then
	    	    	faimonVolcanoChecked = 1
	    	    	faiBs = 1
	    	    end
	    	elseif scrollRight <= 4 then
	    		 local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx2, swipRandy2),  Location(swipRandx1, swipRandy1), 2)
	             scrollRight = scrollRight + 1
	             usePreviousSnap(false)
	             wait(2) 
	         elseif scrollRight >= 5 then
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2) 
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             local  swipRandx1 = math.random(220,240) 
	         	 local  swipRandy1 = math.random(400,420) 
	             local  swipRandx2 = math.random(1000,1020) 
	             local  swipRandy2 = math.random(390,400)
	             usePreviousSnap(false)
	             swipe(Location(swipRandx1, swipRandy1),  Location(swipRandx2, swipRandy2), 2)
	             wait(2)
	             scrollRight = 0
	              trashCheck()
	    	end 
	    end 
    elseif counterStart >= 6 then 
    	searchRegionF()
    	counterStart = 0
    end
    wait(0.5)
end

function selectMobsF()
	if lapisCollected ~= true then
		while image.SelectMobsScr_region:exists(image.SelectMobsScr) do
			wait(0.5)
			while image.COMPS_region:exists(image.COMPS, 1) do
	    		local t = image.COMPS_region:getLastMatch()
			    local x = t:getX()
			    local y = t:getY()
			    local w = t:getW()
			    local h = t:getH()
			    local Area = Region(x+30,y+ 90,w-25,h-20)
			    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
			    wait(0.5)
	    	end
			if fairySelected == 0 then
				if showInfoM == true then showInfo("selecting fairy") end
				if image.fairy_region:exists(image.fairy,1) or image.fairy_region:exists(image.fairy2,1)  then
					local t = image.fairy_region:getLastMatch()
		    		local x = t:getX()
		    		local y = t:getY()
		    		local w = t:getW()
		    		local h = t:getH()
		    		local Area = Region(x+10,y,w,h-10)
		    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) 
			    	fairySelected = 1
			    	wait(1)
		    	end
	    	end if showInfoM == true then showInfo("selecting mobs") end
			if image.MobRegion_region:exists(image.Mob) then 
	    		local t = image.MobRegion_region:getLastMatch() 
	    		local x = t:getX() 
	    		local y = t:getY() 
	    		local w = t:getW() 
	    		local h = t:getH() 
	    		local Area = Region(x+20,y+20,w,h) 
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		wait(0.5)  
	    	end 
	    	if image.COMPS_region:exists(image.COMPS, 1) then 
	    		local t = image.COMPS_region:getLastMatch()
			    local x = t:getX()
			    local y = t:getY()
			    local w = t:getW()
			    local h = t:getH()
			    local Area = Region(x+30,y+ 90,w-25,h-20)
			    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
			    wait(0.5)
	    	end
	    end
	elseif lapisCollected == true then
		while image.SelectMobsScr_region:exists(image.SelectMobsScr) do
			if lapisSelected == 0 then
				if image.selectedMobsTr_region:exists(image.Lapis) then
					local t = image.selectedMobsTr_region:getLastMatch()
		    		local x = t:getX()
		    		local y = t:getY()
		    		local w = t:getW()
		    		local h = t:getH()
		    		local Area = Region(x+20,y+20,w-50,h)
		    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) 
		    	lapisSelected = 1
		    	wait(0.5)
		    	end
	    	end
			if image.MobRegion_region:exists(image.Mob) then 
	    		local t = image.MobRegion_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x+20,y+20,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) 
	    		wait(0.5)
	    	end
	    	if image.COMPS_region:exists(image.COMPS, 1) then 
	    		local t = image.COMPS_region:getLastMatch()
			    local x = t:getX()
			    local y = t:getY()
			    local w = t:getW()
			    local h = t:getH()
			    local Area = Region(x+30,y+ 90,w-25,h-20)
			    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
			    wait(0.5)
	    	end
	    end
	end
end

function mtSizBossF()
	if image.friendsReps_region:exists(image.friendsReps) then
    	local t = image.friendsReps_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x-5,y+50,w-10,h+15)
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

function unselectMobs()
		while image.selectedMobsTr_region:exists(image.selectedMob) do
			local t = image.selectedMobsTr_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x+15,y+30,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) 
	    		wait(1)
	    end
	    unselectedMobsReturn = true
end  

function selectFriendsRepsF()
	if mtSizChecked == 1 then
	if image.friendsReps_region:exists(image.friendsReps) then
    	local t = image.friendsReps_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x-5,y+50,w-10,h+15)
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

    elseif mtSizChecked == 0 then
    	if image.mtSizBoss_region:exists(image.mtSizBoss, 1) then
    		mtSizBossF() end
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

function gameGuardianF()
	infoText:highlightOff()
	ggAlreadyRunning = true 
	createScript()
	if gameGuardian.gameGuardianIcon_region:exists(gameGuardian.gameGuardianIconMini, 10) or gameGuardian.gameGuardianIcon_region:exists(gameGuardian.gameGuardianIcon, 10)  then
		local t = gameGuardian.gameGuardianIcon_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	wait(1)
    else toast("GG ICON NOT FOUND")
    end
    	click(Location(450,2)) click(Location(450,2)) click(Location(450,2))
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
		local scriptLocation = ("/sdcard/jpaulRerollv19.lua")
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
    	ggAlreadyRunning = true
    end
    ggAlreadyRunning = true
end

function faimonBossF()
	if image.friendsReps_region:exists(image.friendsReps) then
		faiBs = 1
			local t = image.friendsReps_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x-5,y+50,w-10,h+15)
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

function spammerF()
	if customChannel.openChat_region:existsClick(customChannel.openChat) then end
	while customChannel.channel_region:exists(customChannel.channel) do
		for i = 99,201,1 do
			channelS = tostring(i)
			if customChannel.channel_region:existsClick(customChannel.channel) then
				type(channelS)
				if customChannel.done_region:existsClick(customChannel.done) then 
				end
			end
			wait(1)
			local upperCaseS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
			local lowerCaseS = "abcdefghijklmnopqrstuvwxyz"
			local numbersS = "0123456789"
			local specCharS = "._-"
			local characterSetS = upperCaseS .. lowerCaseS .. numbersS .. specCharS
			local keyLengthS = 6
			local outputS = ""
			for	i = 1, keyLengthS do
				local randS = math.random(#characterSetS)
				outputS = outputS .. string.sub(characterSetS, randS, randS)
			end
			if customChannel.imputMessage_region:existsClick(customChannel.imputMessage) then 
				type(outputS.." PLZ ADD NEED HELP "..outputS) 
				if customChannel.done_region:existsClick(customChannel.done) then 
					wait(5)
				end
			end
			wait(1)
		end
	end
	trashCheck()
	trashCheck()
end

function summonChannelF()
	if customChannel.openChat_region:existsClick(customChannel.openChat) then end
	if customChannel.channel_region:existsClick(customChannel.channel) then
		local channelS = tostring(channelN)
		type(channelS)
		if customChannel.done_region:existsClick(customChannel.done) then 
		end
	end
	trashCheck()
	trashCheck()
end

function addMentorsF()
	while not reset.Profile_region:exists(reset.Profile) do
		trashCheck()
		if image.goBack_region:exists(image.goBack) then
    		local t = image.goBack_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	end
	end
	wait(0.5)
	trashCheck()
	wait(0.5)
	while mentors.communityBTN_region:exists(mentors.communityBTN) do
    		local t = mentors.communityBTN_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    wait(0.5)
    if mentors.friendBTN_region:exists(mentors.friendBTN) then
    		local t = mentors.friendBTN_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    wait(0.5)
    if mentors.mentorBTN_region:exists(mentors.mentorBTN) then showInfo("mentorBTN")
    		local t = mentors.mentorBTN_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
    if image.OKbtnAutoBattle_region:exists(mentors.mentorOK, 0) then
					local t = image.OKbtnAutoBattle_region:getLastMatch()
			    	local x = t:getX()
			    	local y = t:getY()
			    	local w = t:getW()
			    	local h = t:getH()
			    	local Area = Region(x,y,w,h)
			    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
	if image.OKbtnAutoBattle_region:exists(image.okBTN, 0) then
					local t = image.OKbtnAutoBattle_region:getLastMatch()
			    	local x = t:getX()
			    	local y = t:getY()
			    	local w = t:getW()
			    	local h = t:getH()
			    	local Area = Region(x,y,w,h)
			    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	end
    while mentors.addMentorBTN_region:exists(mentors.addMentorBTN) do
    	wait(1)
    	if mentors.addMentorBTN_region:exists(mentors.addMentorBTN) then
    		local t = mentors.addMentorBTN_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	end
    	while mentors.refreshMentorMobs_region:exists(mentors.refreshMentorMobs) do
    		if mentors.refreshMentorMobs_region:exists(mentors.refreshMentorMobs) then
	    		local t = mentors.refreshMentorMobs_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x+20,y+20,w-40,h-40)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    	end
	    	if mentors.addMentorMobs_region:exists(mentors.mob_1) or mentors.addMentorMobs_region:exists(mentors.mob_2) or mentors.addMentorMobs_region:exists(mentors.mob_3) or mentors.addMentorMobs_region:exists(mentors.mob_4) 
	    		then
	    		local t = mentors.addMentorMobs_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x+140,y,w-50,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		if image.OKbtnAutoBattle_region:exists(mentors.mentorOK) then
					local t = image.OKbtnAutoBattle_region:getLastMatch()
			    	local x = t:getX()
			    	local y = t:getY()
			    	local w = t:getW()
			    	local h = t:getH()
			    	local Area = Region(x,y,w,h)
			    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
			    end
			    if image.OKbtnAutoBattle_region:exists(image.okBTN) then
					local t = image.OKbtnAutoBattle_region:getLastMatch()
			    	local x = t:getX()
			    	local y = t:getY()
			    	local w = t:getW()
			    	local h = t:getH()
			    	local Area = Region(x,y,w,h)
			    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
			    end
	    	elseif mentors.refreshMentorMobs_region:exists(mentors.refreshMentorMobs) then
	    		local t = mentors.refreshMentorMobs_region:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x+20,y+20,w-40,h-40)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    	end
	    end
    end
    wait(1)
    if not mentors.addMentorBTN_region:exists(mentors.addMentorBTN) then
    	if mentors.addMentorsAsFriend_region:exists(addMentorsAsFriend.addMentorsAsFriend) then
    		local addFriend = listToTable(mentors.addMentorsAsFriend_region:findAllNoFindException(addMentorsAsFriend.addMentorsAsFriend))
            for i, m in ipairs(addFriend) do
               local x = m:getX()
               local y = m:getY()
               local w = m:getW()
               local h = m:getH()
             local Area = Region(x,y,w,h)
             click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))        
        	 wait(0.5)  
    		end
   		end
   	end
   	if image.challX_region:exists(image.challX) then 
    	local t = image.challX_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    end
end

function trashCheck()
    	local match = existsMultiMax(trashCck, image.XbtnADs_region) 
    	if image.XbtnADs_region:exists(image.XbtnADs, 0) then  if showInfoM == true then showInfo("XbtnADs") end
    	local t = image.XbtnADs_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.COMPS_region:exists(image.YesINBOX, 0) then  if showInfoM == true then showInfo("YesINBOX") end
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
        elseif image.okBTN_region:exists(image.okBTN, 0) then  if showInfoM == true then showInfo("okBTN") end
    	local t = image.okBTN_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.COMPS_region:exists(image.NObtnINBOX, 0) then  if showInfoM == true then showInfo("NObtnINBOX") end
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.Close_region:exists(image.Close, 0) then  if showInfoM == true then showInfo("Close") end
    	local t = image.Close_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.challX_region:exists(image.challX, 0) then  if showInfoM == true then showInfo("challX") end
    	local t = image.challX_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
        elseif image.later_region:exists(image.later, 0) then  if showInfoM == true then showInfo("later") end
    	local t = image.later_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	end 
end

function WhereIAm()
	if ultrafast == true then
	elseif powerSaving == true then
		wait(customDelay)
	else wait(0.3)
	end
	rengarBestJG = rengarBestJG + 1
	--infoText:highlightOff()
	if garenForestChecked == 0 then
		if reset.Profile_region:exists(reset.Profile, 0) then end
			usePreviousSnap(true)
	    if image.COMPS_region:exists(image.COMPS, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Tutorial Arrow"
	    elseif image.DialSkipSX_region:exists(image.DialSkipSX, 0) then 
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "NPC Dialogs Sx"
	    elseif image.DialSkipDX_region:exists(image.DialSkipDX, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "NPC Dialogs Dx"
	    elseif needReset == true and reset.Profile_region:exists(reset.Profile, 0)  then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Performing Reset"
	    elseif image.enterNameScrRight_region:exists(image.enterNameScrRight, 0) 
	    	--or image.enterNameScr2_region:exists(image.enterNameScr2, 0) 
	    	then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Imput Name"
	    elseif image.AfterSummOK_region:exists(image.AfterSummOK, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Mobs Summoned"
	    elseif regionSearch.youHaveToMessage_region:exists(regionSearch.youHaveToMessage, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Start Quest"
	    elseif image.OKbtnAutoBattle_region:exists(image.OKbtnAutoBattle, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "OKbtnAP"
	    elseif image.Speedx_region:exists(image.Speedx1, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "speed"
	    elseif image.Speedx_region:exists(image.Speedx2, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "speed"
	    elseif image.Enemy_region:exists(image.enemyArrow, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "enemyFound2"
	    elseif image.Enemy_region:exists(image.enemyArrow1, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "enemyFound2"
	    elseif image.Enemy_region:exists(image.enemyArrow2, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "enemyFound2"
	    elseif image.Enemy_region:exists(image.enemyArrow3, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "enemyFound2"
	    elseif  not image.Enemy_region:exists(image.EnemyX, 0) and image.AutoPlay_region:exists(image.AutoPlay, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "autoPlay"
	    elseif  not image.Enemy_region:exists(image.EnemyY, 0) and image.AutoPlay_region:exists(image.AutoPlay, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "autoPlay"
	   	elseif image.Enemy_region:exists(image.EnemyX, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "enemyFound"
	    elseif image.Enemy_region:exists(image.EnemyY, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "enemyFound"
	    elseif image.collectInbox_region:exists(image.collectInbox, 0) then
	    	usePreviousSnap(false)
	    	rengarBestJG = 0
	    	return "inboxScr"
	    elseif image.RewardsOK_region:exists(image.RewardsOK, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "okRewards"
	    elseif image.RewadsOK2_region:exists(image.RewadsOK2, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "okRewards1"
	    elseif image.Xrewads_region:exists(image.Xrewads, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "okRewards2"
	    elseif image.VictoryScr_region:exists(image.VictoryScr, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Victory Screen"
	    elseif image.victScreen2_region:exists(image.victScreen2, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "victScr2"
	    elseif image.skip_region:exists(image.skip, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "skip"
	    elseif image.NextStage_region:exists(image.NextStage, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "nextStage"
		elseif vrofagusRuinsChecked == 1 and
	    	  faimon.faimonBoss_region:exists(faimon.faimonBoss, 0) then
		    	usePreviousSnap(false) 
		    	rengarBestJG = 0
	    		return "faimonBossStage"
		elseif mtSizChecked == 0 and
			 image.SelectMobsScr_region:exists(image.SelectMobsScr, 0) then
		    	usePreviousSnap(false) 
		    	rengarBestJG = 0
		    	return "Selecting Mobs"
	    elseif image.StartBattle_region:exists(image.StartBattle, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "startBattle"
	    elseif image.YesINBOX_region:exists(image.YesINBOX, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "inboxYes"
	    elseif image.collectInbox_region:exists(image.collectInbox, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "inboxCollect"
	    elseif image.battleBTNisland_region:exists(image.battleBTNisland, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "goToMap"
	    elseif image.Battle_region:exists(image.Battle, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "battleMap"
	    elseif image.mapScreen_region:exists(image.mapScreen, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Map Screen"
	    elseif image.skipSumm_region:exists(image.skipSumm, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "skipSummons"
	    else usePreviousSnap(false)
	    	if rengarBestJG <= 3 then
	    		return "yep"
	    	else
	    		rengarBestJG = 0
	    	 return "chilling nothing to do"
	    	end
	    end
	elseif garenForestChecked == 1 then
		AutoPlay = Pattern("AutoPlay.png"):similar(0.9)
		if reset.Profile_region:exists(reset.Profile, 0) then end
			usePreviousSnap(true)
	    if image.COMPS_region:exists(image.COMPS, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Tutorial Arrow"
	    elseif image.DialSkipSX_region:exists(image.DialSkipSX, 0) then 
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "NPC Dialogs Sx"
	    elseif image.DialSkipDX_region:exists(image.DialSkipDX, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "NPC Dialogs Dx"
	    elseif needReset == true and reset.Profile_region:exists(reset.Profile, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Performing Reset"
	    elseif image.enterNameScrRight_region:exists(image.enterNameScrRight, 0) 
	    	--or image.enterNameScr2_region:exists(image.enterNameScr2, 0) 
	    	then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Imput Name"
	    elseif image.AfterSummOK_region:exists(image.AfterSummOK, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Mobs Summoned"
	    elseif regionSearch.youHaveToMessage_region:exists(regionSearch.youHaveToMessage, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Start Quest"
	    elseif image.OKbtnAutoBattle_region:exists(image.OKbtnAutoBattle, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "OKbtnAP"
	    elseif image.AutoPlay_region:exists(AutoPlay, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "autoPlay"
	    elseif image.collectInbox_region:exists(image.collectInbox, 0) then
	    	usePreviousSnap(false)
	    	rengarBestJG = 0
	    	return "inboxScr"
	    elseif image.RewardsOK_region:exists(image.RewardsOK, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "okRewards"
	    elseif image.RewadsOK2_region:exists(image.RewadsOK2, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "okRewards1"
	    elseif image.Xrewads_region:exists(image.Xrewads, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "okRewards2"
	    elseif image.VictoryScr_region:exists(image.VictoryScr, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Victory Screen"
	    elseif image.victScreen2_region:exists(image.victScreen2, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "victScr2"
	    elseif image.skip_region:exists(image.skip, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "skip"
	    elseif image.NextStage_region:exists(image.NextStage, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "nextStage"
		elseif vrofagusRuinsChecked == 1 and
	    	  faimon.faimonBoss_region:exists(faimon.faimonBoss, 0) then
		    	usePreviousSnap(false) 
		    	rengarBestJG = 0
	    		return "faimonBossStage"
		elseif mtSizChecked == 0 and
			 image.SelectMobsScr_region:exists(image.SelectMobsScr, 0) then
		    	usePreviousSnap(false) 
		    	rengarBestJG = 0
		    	return "Selecting Mobs"
	    elseif image.StartBattle_region:exists(image.StartBattle, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "startBattle"
	    elseif image.YesINBOX_region:exists(image.YesINBOX, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "inboxYes"
	    elseif image.collectInbox_region:exists(image.collectInbox, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "inboxCollect"
	    elseif image.battleBTNisland_region:exists(image.battleBTNisland, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "goToMap"
	    elseif image.Battle_region:exists(image.Battle, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "battleMap"
	    elseif image.mapScreen_region:exists(image.mapScreen, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "Map Screen"
	    elseif image.skipSumm_region:exists(image.skipSumm, 0) then
	    	usePreviousSnap(false) 
	    	rengarBestJG = 0
	    	return "skipSummons"
	    else usePreviousSnap(false)
	    	if rengarBestJG <= 3 then
	    		return "yep"
	    	else
	    		rengarBestJG = 0
	    	 return "chilling nothing to do"
	    	end
	    end
	end

end

function start()
	imAt = WhereIAm()
	if showInfoM == true then
	currentTime = os.time()
	diffTimeFromBeg = os.difftime(currentTime, startTime )
	minFromBeg = SecondsToClock(diffTimeFromBeg)
	showInfo("t.me/cheatsForSW")
	end
	if imAt == "Performing Reset" then 
        resetF()
    elseif imAt == "Imput Name" then
    	nameF()
    elseif imAt == "NPC Dialogs Sx" then
    	dialogsFSX()
    elseif imAt == "NPC Dialogs Dx" then
    	dialogsFDX()
    elseif imAt == "Tutorial Arrow" then
    	tutF()
   	elseif imAt == "Mobs Summoned" then
   		local t = image.AfterSummOK_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
   		gameGuardianInit = gameGuardianInit + 1
    	if ggClearing == true then 
    		if ggAlreadyRunning == false then
    			if gameGuardianInit >= 2  then 
    				gameGuardianF() 
    			end
    		end
    	end
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
    elseif imAt == "Victory Screen" then
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
    	if frClearing == true then
	    	if mtSizChecked == 1 then
	    		selectFriendsRepsF()
	    	elseif mtSizChecked == 0 then
	    		if ultrafast == true then
					if image.mtSizBoss_region:exists(image.mtSizBoss, 0) then
			    		mtSizBossF()
			    	elseif image.SelectMobsScr_region:exists(image.SelectMobsScr, 0) then
			    		selectMobsF()
			    	--elseif image.slotForReps_region:exists(image.slotForReps, 1) then
			    	--	selectFriendsRepsF()
			    	elseif 
			    		-- not image.mtSizBoss_region:exists(image.mtSizBoss, 0) 
			    		-- and not image.SelectMobsScr_region:exists(image.SelectMobsScr, 0) 
			    		-- and not image.slotForReps_region:exists(image.slotForReps, 1)
			    	 	-- and 
			    	 	image.StartBattle_region:exists(image.StartBattle, 0) then
				    	local t = image.StartBattle_region:getLastMatch()
				    	local x = t:getX()
				    	local y = t:getY()
				    	local w = t:getW()
				    	local h = t:getH()
				    	local Area = Region(x,y,w,h)
				    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
			   		end
			   	else 
			   		if image.mtSizBoss_region:exists(image.mtSizBoss, 1) then 
			    		mtSizBossF() 
			    	elseif image.SelectMobsScr_region:exists(image.SelectMobsScr, 1) then 
			    		selectMobsF() 
			    	--elseif image.slotForReps_region:exists(image.slotForReps, 1) then 
			    	--	selectFriendsRepsF() 
			    	elseif not image.mtSizBoss_region:exists(image.mtSizBoss, 1) 
			    		   and not image.SelectMobsScr_region:exists(image.SelectMobsScr, 1) 
			    		-- and not image.slotForReps_region:exists(image.slotForReps, 1)
			    	 	   and image.StartBattle_region:exists(image.StartBattle, 0) then
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
        elseif ggClearing == true then
        	if vrofagusRuinsChecked == 1 then
		        if faimon.faimonBoss_region:exists(faimon.faimonBoss, 1) then
		    		faimonBossF() 
		    	elseif  lapisCollected == false and image.SelectMobsScr_region:exists(image.SelectMobsScr, 1) then
		    		selectMobsF()
		    	elseif  lapisCollected == true and lapisSelected == 0 and unselectedMobsReturn == false then
		    		unselectMobs()
		    	elseif lapisCollected == true and lapisSelected == 0 and image.SelectMobsScr_region:exists(image.SelectMobsScr, 1) then
		    		selectMobsF()
		    	elseif not faimon.faimonBoss_region:exists(faimon.faimonBoss, 0) and not image.SelectMobsScr_region:exists(image.SelectMobsScr, 1) and image.StartBattle_region:exists(image.StartBattle, 0) then
			    	local t = image.StartBattle_region:getLastMatch()
			    	local x = t:getX()
			    	local y = t:getY()
			    	local w = t:getW()
			    	local h = t:getH()
			    	local Area = Region(x,y,w,h)
			    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
		    	wait(2)
		    	end
		    elseif vrofagusRuinsChecked == 0 then 
		    	if  lapisCollected == false and image.SelectMobsScr_region:exists(image.SelectMobsScr, 1) then
		    		selectMobsF()
		    	elseif  lapisCollected == true and lapisSelected == 0 and unselectedMobsReturn == false then
		    		unselectMobs()
		    	elseif lapisCollected == true and lapisSelected == 0 and image.SelectMobsScr_region:exists(image.SelectMobsScr, 1) then
		    		selectMobsF()
		    	elseif not faimon.faimonBoss_region:exists(faimon.faimonBoss, 0) and not image.SelectMobsScr_region:exists(image.SelectMobsScr, 1) and image.StartBattle_region:exists(image.StartBattle, 0) then
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
    	tutF()
    elseif imAt == "inboxCollect" then
    	local t = image.collectInbox_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    elseif imAt == "goToMap" then
    	trashCheck()
    	if faiBs == 0 then
	    	local t = image.battleBTNisland_region:getLastMatch()
	    	local x = t:getX()
	    	local y = t:getY()
	    	local w = t:getW()
	    	local h = t:getH()
	    	local Area = Region(x,y,w,h)
	    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    	wait(0.5)
    	elseif collectedLD == 0 then
    		if ultrafast == true then
		    	if showInfoM == true then showInfo("Collecting LD scroll") end
		    	 summoningF() 
		    	 trashCheck()
		    	 trashCheck()
		    	 summonLDF() 
		    elseif ultrafast == false then 
		    	if showInfoM == true then showInfo("Collecting LD scroll") end
		    	 summoningF() 
		    end
    	elseif collectedLD == 1 then
	    	if showInfoM == true then showInfo("Summoning LD scroll") end
	    	 summonLDF() 
    	end
    elseif imAt == "Map Screen" then
    	mapF()
    elseif imAt == "battleMap" then
    	battleMapF()
    elseif imAt == "Selecting Mobs" then
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
    elseif imAt == "inboxScr" then
    	if elfCollected == false then
	    	if summoning.lootRegion:exists(image.miniElf) then
	    		local t = summoning.lootRegion:getLastMatch()
	    		local x = t:getX()
	    		local y = t:getY()
	    		local w = t:getW()
	    		local h = t:getH()
	    		local Area = Region(x+250,y,w,h)
	    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		elfCollected = true
	    		if image.skipSumm_region:exists(image.skipSumm, 5) then
	    			local t = image.skipSumm_region:getLastMatch()
			    	local x = t:getX()
			    	local y = t:getY()
			    	local w = t:getW()
			    	local h = t:getH()
			    	local Area = Region(x,y,w,h)
			    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
			    end
	    		if image.AfterSummOK_region:exists(image.AfterSummOK, 15) then
		    		local t = image.AfterSummOK_region:getLastMatch()
		    		local x = t:getX()
		    		local y = t:getY()
		    		local w = t:getW()
		    		local h = t:getH()
		    		local Area = Region(x,y,w,h)
		    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
	    		end
	    	end
	    end
    	trashCheck()
    elseif imAt == "Start Quest" then
    	searchRegionF()

    ---------------------------------------------------------------------------------------------------------
    elseif imAt == "chilling nothing to do" then
    	--infoText:highlightOff()
    	if image.Close_region:exists(image.Close, 0) then end
    	usePreviousSnap(true)
    	if image.Close_region:exists(image.Close, 0) then  if showInfoM == true then showInfo("Close") end
    	local t = image.Close_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.okBTN_region:exists(image.okBTN, 0) then  if showInfoM == true then showInfo("okBTN") end
    	local t = image.okBTN_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.XbtnADs_region:exists(image.XbtnADs, 0) then  if showInfoM == true then showInfo("XbtnADs") end
    	local t = image.XbtnADs_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.COMPS_region:exists(image.YesINBOX, 0) then  if showInfoM == true then showInfo("YesINBOX") end
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
        elseif image.COMPS_region:exists(image.NObtnINBOX, 0) then  if showInfoM == true then showInfo("NObtnINBOX") end
    	local t = image.COMPS_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.challX_region:exists(image.challX, 0) then  if showInfoM == true then showInfo("challX") end
    	local t = image.challX_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
        elseif image.later_region:exists(image.later, 0) then  if showInfoM == true then showInfo("later") end
    	local t = image.later_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.revive_region:exists(image.revive, 0) then  if showInfoM == true then showInfo("revive") end
    	local t = image.revive_region:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif image.closeEvents_region:exists(image.closeEvents, 0) then  if showInfoM == true then showInfo("closeEvents") end
    		while image.closeEvents_region:exists(image.closeEvents) do 
    		local t = image.closeEvents_region:getLastMatch()
    		local x = t:getX()
    		local y = t:getY()
    		local w = t:getW()
    		local h = t:getH()
    		local Area = Region(x,y,w,h)
    		click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    		usePreviousSnap(false)
    		end
    		usePreviousSnap(false)
    	elseif image.phoneLauncher:exists(image.ggRestart, 0) or image.phoneLauncher:exists(image.ggRestart2, 0) then if showInfoM == true then showInfo("ggRestart") end
    	local t = image.phoneLauncher:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	local Area3 = Region(x-25,y-100,w+100,h+50)
    	usePreviousSnap(false)
    	if Area3:exists(image.ggRestart, 1) or Area3:exists(image.ggRestart2, 1) then
    		local ta = Area3:getLastMatch()
	    	local xa = ta:getX()
	    	local ya = ta:getY()
	    	local wa = ta:getW()
	    	local ha = ta:getH()
	    	local AreaN = Region(xa,ya,wa,ha)
	    	click(Location(AreaN:getX() + math.random(0, AreaN:getW()), AreaN:getY() + math.random(0, AreaN:getH())))
	    	usePreviousSnap(false)
	    else 
	    click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH()))) end
    	ggRestarted = 1
    	garenForestChecked = 0
		mtSizChecked = 0
		kabirRuinsChecked = 0
		mtWhiteChecked = 0
		telainForestChecked = 0
		tamorDesertChecked = 0
		hydeniRuinsChecked = 0
		vrofagusRuinsChecked = 0
		faimonVolcanoChecked = 0
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	elseif not reset.Profile_region:exists(reset.Profile, 0) and image.phoneLauncher:exists(image.swIcon, 0) then  if showInfoM == true then showInfo("swIcon") end
    	trashCheck()
    	wait(2)
    	if image.phoneLauncher:exists(image.swIcon, 0) then
    	local t = image.phoneLauncher:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	end
    	elseif not reset.Profile_region:exists(reset.Profile, 0) and image.phoneLauncher:exists(image.swIcon2, 0) then  if showInfoM == true then showInfo("swIcon") end
    	trashCheck()
    	wait(2)
    	if image.phoneLauncher:exists(image.swIcon2, 0) then
    	local t = image.phoneLauncher:getLastMatch()
    	local x = t:getX()
    	local y = t:getY()
    	local w = t:getW()
    	local h = t:getH()
    	local Area = Region(x,y,w,h)
    	click(Location(Area:getX() + math.random(0, Area:getW()), Area:getY() + math.random(0, Area:getH())))
    	usePreviousSnap(false)
    	end
    	elseif image.moveBTN_region:exists(image.moveBTN, 0) then  if showInfoM == true then showInfo("moveBTN") end
        local  swipRandx1 = math.random(450,460) 
		local  swipRandy1 = math.random(100,110)
		local  swipRandx2 = math.random(450,460) 
		local  swipRandy2 = math.random(550,560)
		swipe(Location(swipRandx1, swipRandy2),  Location(swipRandx2, swipRandy1), 2)
		wait(1)
    	usePreviousSnap(false)
    	else click(Location(math.random(500, 510),math.random(718, 719))) 
    			usePreviousSnap(false)
        end
    end
end

function RunEverything()
	licenseDialog()
	RerollDialog()
	while true do 
		start()
	end
end

function RerollDialog() 
    dialogInit() 
    addTextView("                                                                               ❣ REROLL MADE FOR t.me/cheatsForSW COMMUNITY ❣\n                                                                                                                                                                                                                        vStable 1.07.03")
    addSeparator() 
    newRow( )
    addTextView("             Select Preferences\n           ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯" )
    newRow()
    addTextView("\t\t")addRadioGroup("rqIndex", 1)   
    addRadioButton(" ☄ Clearing Stages Using GameGuardian     ➡   Faster Around 40m Reseting Time - Can Get Acc Banned", 1) 
    addRadioButton(" ☄ Clearing Stages Using Friends Reps         ➡   Slower Request To Have 5 Friends - Safe From Bans", 2)
    newRow() 
    addTextView("\t\t\t")
    addCheckBox("ggWithFriend", "⚡ Use GG Script With Friend Rep", false)
    addTextView("\t\t\t")
    addCheckBox("needReset", "⚡ Start With Reseting", false)
    addTextView("\t\t\t")
    addCheckBox("powerSaving", "⚡ Power Saving Mode:", false)
    addTextView("\t\t\t\t")
  	addEditNumber("customDelay", 0.8)
    newRow() 
    addTextView("\t\t\t")
    addCheckBox("showInfoM", "⚡ Show Informations On Screen", true)
    addTextView("\t\t\t")
    addCheckBox("stopFourStar", "⚡ Stop If Got Four Star", false)
    addTextView("\t\t\t")
    addCheckBox("powerOff", "⚡ Power Off After N. Resets: ", false)
    addTextView("\t")
    addEditNumber("nTimes", 10)
    newRow() 
    addTextView("\t\t")
    --addEditText("customName", "Insert Custom Name")
    addRadioGroup("rgIndex", 2)   
    addRadioButton(" ☄ Custom Name", 1) 
    addRadioButton(" ☄ Random Name Generator", 2)   
    newRow() 
    addTextView("                                                                                 ________________________________________________________")
    newRow()
    addTextView("                                                                                         ⚜ The Game Must Be On English Language ⚜")
    dialogShowFullScreen("                                                                       HEADQUARTERS") 

    if rgIndex == 1 then 
      customNameV = true
      customNameDialog()
    elseif rgIndex == 2 then
      randomNameV = true
    end
    if rqIndex == 1 then 
      ggClearing = true
      RerollDialogGG()
    elseif rqIndex == 2 then
      frClearing = true
      additionalDialog()
    end
    if ggWithFriend == true then
    	RerollDialogGG()
    end
    if showInfoM == true then
	startTime = os.time()
	end

end 

function additionalDialog()
	dialogInit() 
    addTextView("                                                                               ❣ REROLL MADE FOR t.me/cheatsForSW COMMUNITY ❣\n                                                                                                                                                                                                                       ")
    addSeparator() 
    newRow( )
    newRow() 
    addTextView("             Additional Settings\n           ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯" )  
    newRow() 
    newRow() 
    addTextView("\t\t\t\t")
    addCheckBox("addMentors", "Use Mentors Instead of Friends - Slower Resets", false)
    newRow() 
    addTextView("\t\t\t\t")
    addCheckBox("summonChannel", "Summon LDScroll in Custom Chat Channel", false)
    addTextView("\t")
    addEditNumber("channelN", 7447)
    newRow() 
    addTextView("\t\t\t\t")
    addCheckBox("spammer", "Spam In-game Chat Asking For Friends", false)
    newRow() 
    newRow() 
    addTextView("\t\t\t\t")
    addCheckBox("ultrafast", "Ultra Fast - Will Remove Any Delay Useful When Running Multiple Instances of The Bot\n\t\t\t\t\t might cause errors, if you enabled this and errors occurs don't ask me for help thanks", false)
    newRow()
    newRow() 
    addTextView("                                                                                 ________________________________________________________")
    newRow()
    addTextView("                                                                                         ⚜ The Game Must Be On English Language ⚜")
    dialogShowFullScreen("                                                                       HEADQUARTERS") 
    if spammer == true then
    	toast("let me on island or map screen in order to start the spammer")
    	spammerF()
    end
end

function licenseDialog()
	dialogInit() 
    addTextView("                                                                               ❣ REROLL MADE FOR t.me/cheatsForSW COMMUNITY ❣\n                                                                                                                                                                                                                       ")
    addSeparator() 
    newRow( )
    newRow() 
    addTextView("           LICENSE GPL v3.0\n          ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯" )  
    newRow() 
    newRow() 
    addTextView("\t\t\t\t")
    addTextView("Selling this product will result in LEGAL PROSECUTION\nThe source code must be made public whenever a distribution of the software is made. Modifications of the software must be released under the same license. Changes made to the source code must be documented. If patented material was used in the creation of the software, it grants the right for users to use it. If the user sues anyone over the use of the patented material, they lose the right to use the software.")
    newRow()
    addTextView("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t")
    addTextView("More information at https://github.com/JacobanPaul/SW_Reroll")
    newRow() 
    addTextView("                                                                                 ________________________________________________________")
    newRow()
    addTextView("                                                                                         ⚜ The Game Must Be On English Language ⚜")
    dialogShowFullScreen("                                                                       HEADQUARTERS") 
end

function customNameDialog()
	dialogInit() 
    addTextView("                                                                               ❣ REROLL MADE FOR t.me/cheatsForSW COMMUNITY ❣\n                                                                                                                                                                                                                       ")
    addSeparator() 
    newRow( )
    newRow() 
    addTextView("           Insert Custom Name\n          ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯" )  
    newRow() 
    newRow() 
    addTextView("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t")
    addEditText("customName", "Insert Custom Name")
    newRow() 
    addTextView("                                                                                 ________________________________________________________")
    newRow()
    addTextView("                                                                                         ⚜ The Game Must Be On English Language ⚜")
    dialogShowFullScreen("                                                                       HEADQUARTERS") 
end

function RerollDialogGG() 
    dialogInit() 
    addTextView("                                                                               ❣ REROLL MADE FOR t.me/cheatsForSW COMMUNITY ❣\n                                                                                                                                                                                                                       ")
    addSeparator() 
    newRow( )
    newRow() 
    addTextView("             Select Preferences\n           ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯" )  
    newRow() 
    newRow() 
    addTextView("\t\t\t\t")
    addCheckBox("elfCollected", "⚡ Elf Already Collected                         ", false) 
    addCheckBox("lapisCollected", "⚡ Lapis Already Collected               ", false)
    addCheckBox("ggAlreadyRunning", "⚡ GG Script Already Executed    ", false)  
    newRow() 
    addTextView("                                                                                 ________________________________________________________")
    newRow()
    addTextView("                                                                                         ⚜ The Game Must Be On English Language ⚜")
    dialogShowFullScreen("                                                                       HEADQUARTERS") 
end 

function debug()
	while true do
    end
end

RunEverything() 
--debug() 



