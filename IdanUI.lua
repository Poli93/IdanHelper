-- Idan's custom UI scripts
-- https://www.townlong-yak.com/framexml/live/ChatFrame.lua#1648
-- 3.2 Debug Tools:
-- /fstack /framestack [showhidden]
-- /etrace /eventtrace [start/stop]
-- frame by mouse location:
-- /run local f = GetMouseFocus(); if f then DEFAULT_CHAT_FRAME:AddMessage(f:GetName()) end
-- /run print(GetCursorPosition())
-- /run local t,c,u,k=0,0,UnitExists("target")and"target"or"player"for i=1,18 do k=GetInventoryItemLink(u,i)if i~=4 and k then t=t+select(4,GetItemInfo(k))c=c+1 end end c=c>0 and print(t/c)
-- /dump http://wowwiki.wikia.com/wiki/MACRO_dump
-- /script SetCVar("TargetNearestUseNew",0);
-- /run local f=GetMouseFocus() print(f:GetName() or "unnamed") f:SetMovable(true) f:EnableMouse(true) f:SetUserPlaced(true) f:SetScript('OnMouseDown',f.StartMoving) f:SetScript('OnMouseUp',f.StopMovingOrSizing)
-- /script local x, y = GetCursorPosition(); DEFAULT_CHAT_FRAME:AddMessage("x: " .. x .. " y: " .. y);
-- /run local m=Minimap m:ClearAllPoints() m:SetPoint("CENTER",UIParent,-220,-175)
-- /dump GetCVar("SpellQueueWindow")

-- Dev Tools
-- AddOn Studio (Visual Studio 2015)
-- http://wowprogramming.com/
-- https://www.townlong-yak.com
-- http://wowwiki.wikia.com/wiki/HOWTOs
-- http://wowwiki.wikia.com/wiki/Lua_editors
-- /run print(GetCVar("nameplateSelectedAlpha"))
-- /script SetCVar("nameplateSelectedAlpha",0);
-- /dump threatshownumeric

-- /run MainMenuBarLeftEndCap:Hide(); MainMenuBarRightEndCap:Hide()
-- Hide actionbar gryphons, since they are not necessary whatsoever and simply reduce frame rate (insignificant reduction but im still an FPS junkie)
local addon, IdanHelper = ...
local IHL_TEXT = "Idan|cffffffffHelper |r"
local IHL_VERSION = "1.0"
print(IHL_TEXT .."Loaded")
local SetCVar = SetCVar or C_CVar.SetCVar; -- gsearch
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
frame:SetScript("OnEvent", function ()
	--MainMenuBarArtFrame.LeftEndCap:Hide() -- retail only
	--MainMenuBarArtFrame.RightEndCap:Hide() 
	MainMenuBarLeftEndCap:Hide()
	MainMenuBarRightEndCap:Hide()
--	PlayerFrame:SetScale(1.1)
--	TargetFrame:SetScale(1.1)
--	CastingBarFrame:SetScale(1.2)
    --C_NamePlate.SetNamePlateFriendlySize(50, 100) -- bugs friendly nameplates on classic retail to only show color at X percentage
	LossOfControlFrame:DisableDrawLayer("BACKGROUND")	
	--[[ retail
	TargetFrameSpellBar:SetScale(1.2)
    C_NamePlate.SetNamePlateFriendlySize(50, 100)
	LossOfControlFrame:DisableDrawLayer("BACKGROUND")	
	NamePlateHorizontalScale(1.2)
	NamePlateVerticalScale(2)
	--]] 
	--[[ 3.3.5
	PartyMemberFrame1:SetScale(1.3)
	PartyMemberFrame1PetFrame:SetScale(1.6)
	PartyMemberFrame2:SetScale(1.3)
	PartyMemberFrame2PetFrame:SetScale(1.6)
	PartyMemberFrame1:SetFrameStrata("BACKGROUND")
	PartyMemberFrame2:SetFrameStrata("BACKGROUND")
	PartyMemberFrame1:SetFrameLevel(50)
	PartyMemberFrame2:SetFrameLevel(50)
	PartyMemberFrame1:Lower()
	PartyMemberFrame2:Lower()
--]]
end)
  

--DBM.Bars:CreateBar(30, "welcometoWOW") 
--"Interface\Icons\Spell_Holy_BorrowedTime"

--[[
-- Custom slash commands to make my life easier or more challenging :D
--SlashCmdList_AddSlashCommand("RELOADUI",ReloadUI,"/rl")

local myname = "Idan";
local testmsg = " test";

SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/hiw', '/hellow'; -- 3.
function SlashCmdList.HELLOWORLD(msg, editbox) -- 4.
 print("Hello, World!");
 print(myname);
 print(myname .. testmsg);
end

local function MyAddonCommands(msg, editbox)
  if msg == 'bye' then
    print('Goodbye, World!')
  else
    print("Hello, World!")
  end
end

SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/hiw', '/hellow'

SlashCmdList["HELLOWORLD"] = MyAddonCommands   -- add /hiw and /hellow to command list


--SLASH_HELLOWWORLD1, SLASH_HELLOWWORLD2 = '/hiw2', '/hellow2'
SLASH_LOADFUNC1 = '/loadfunc'
SlashCmdList["LOADFUNC"] = IDANCOMMANDS -- adds
local function IDANCOMMANDS(msg, editbox)
	if msg == 'byexy' then
		print("Goodbye World!")
	else
		print("Hello World!")
	end
end



local function TESTCMDS(msg, editbox)
	ReloadUI();
end

function testcmdstwo(msg, editbox)
	ReloadUI();
end

function SlashCmdList.testcmdsthree(msg, editbox)
	ReloadUI();
end
--]]