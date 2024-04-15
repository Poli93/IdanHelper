-- Idan's raid profile framework
local addon, IdanHelper = ...
local RPF_TEXT = "|cff69CCF0RPF|r: "
local RPF_VERSION = "1.2"
print(RPF_TEXT .."Idan's raid-profile framework, ver " ..RPF_VERSION)

local DEFAULT_PROFILE = "Primary";
local ARENA_PROFILE = "arena";

function switchProfile()
	if InCombatLockdown() == false then
		isArena, _ = IsActiveBattlefieldArena();
			if isArena == true then
				if GetActiveRaidProfile() ~= ARENA_PROFILE then
					CompactUnitFrameProfiles_ActivateRaidProfile(ARENA_PROFILE);
					print(RPF_TEXT .. ARENA_PROFILE .." profile activated.")
				end
			end
	end
end

local f = CreateFrame("Frame")
-- GROUP_ROSTER_UPDATE Event, fires when a player joins or leaves a group
f:RegisterEvent("GROUP_ROSTER_UPDATE") 
-- PLAYER_REGEN_ENABLED Event, fires when a player leaves combat
f:RegisterEvent("PLAYER_REGEN_ENABLED") 
f:SetScript("OnEvent",switchProfile);