-- makes the ingame runes clickthrough so I can have them infront of my fucking face and not click them the entire fucking arena

local f={RuneFrame, RuneFrame.Rune1, RuneFrame.Rune2, RuneFrame.Rune3, RuneFrame.Rune4, RuneFrame.Rune5, RuneFrame.Rune6} for i=1,#f do f[i]:EnableMouse(0) end

local f={RuneFrame, RuneFrame.Rune1, RuneFrame.Rune2, RuneFrame.Rune3, RuneFrame.Rune4, RuneFrame.Rune5, RuneFrame.Rune6} for i=1,#f do f[i]:EnableMouse(false) end

local f={ComboPointPlayerFrame, ComboPointPlayerFrame.Combo1, ComboPointPlayerFrame.Combo2, ComboPointPlayerFrame.Combo3, ComboPointPlayerFrame.Combo4, ComboPointPlayerFrame.Combo5, ComboPointPlayerFrame.Combo6} for i=1,#f do f[i]:EnableMouse(0) end

local f={ComboPointPlayerFrame, ComboPointPlayerFrame.Combo1, ComboPointPlayerFrame.Combo2, ComboPointPlayerFrame.Combo3, ComboPointPlayerFrame.Combo4, ComboPointPlayerFrame.Combo5, ComboPointPlayerFrame.Combo6} for i=1,#f do f[i]:EnableMouse(false) end

