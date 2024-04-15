local MBF = CreateFrame("Frame")
MBF:SetScript("OnEvent", function()
BuffFrame:ClearAllPoints()
BuffFrame:SetPoint("TOPLEFT", MinimapCluster, -70, -50)
BuffFrame.SetPoint = function() end
end)
MBF:RegisterEvent("PLAYER_ENTERING_WORLD")