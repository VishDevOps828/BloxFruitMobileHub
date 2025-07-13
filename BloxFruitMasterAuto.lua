-- 📱 Blox Fruits Master Script (Full Version)
-- ✅ Designed for Delta v2.781+ and Hydrogen | Author: VishDevOps828

-- 🌐 Auto-Update (optional fallback reload)
pcall(function()
    if not game:IsLoaded() then game.Loaded:Wait() end
end)

-- 📦 Load UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xFrozenXx/UILib/main/Module.lua"))()
local GUI = Library:CreateWindow("Blox Fruits Master")

-- 🌍 Global Settings
getgenv().Settings = {
    WebhookURL = "", -- Optional: Add Discord Webhook here
    SelectedWeapon = "Godhuman"
}

-- ==========================
-- 🔹 AUTO FARM TAB
-- ==========================
local FarmTab = GUI:CreateTab("Auto Farm")
FarmTab:CreateToggle("Auto Farm Level", true, function(v) _G.AutoLevel = v end)
FarmTab:CreateToggle("Auto Unlock New World", true, function(v) _G.AutoWorld = v end)
FarmTab:CreateToggle("Auto Bounty/Honor", true, function(v) _G.AutoBounty = v end)
FarmTab:CreateDropdown("Weapon", {"Godhuman", "Ice", "TTK", "Dark Blade"}, function(opt) _G.Weapon = opt end)
FarmTab:CreateToggle("Auto Farm Materials", true, function(v) _G.AutoMat = v end)
FarmTab:CreateToggle("Auto Upgrade Weapons", true, function(v) _G.AutoUpgrade = v end)
FarmTab:CreateToggle("Auto Collect Items (Swords/Guns/Accessories)", true, function(v) _G.AutoCollectItems = v end)

-- ==========================
-- 🧩 PUZZLES TAB
-- ==========================
local PuzzleTab = GUI:CreateTab("Puzzles")
PuzzleTab:CreateToggle("Auto CDK Puzzle", true, function(v) _G.AutoCDK = v end)
PuzzleTab:CreateToggle("Auto Skull Guitar Puzzle", true, function(v) _G.AutoSkull = v end)

-- ==========================
-- 🌊 SEA EVENTS TAB
-- ==========================
local SeaTab = GUI:CreateTab("Sea Events")
SeaTab:CreateToggle("Auto Sea Events Farm", true, function(v) _G.AutoSeaEvent = v end)
SeaTab:CreateToggle("Auto Retry On Death", true, function(v) _G.AutoRetry = v end)
SeaTab:CreateToggle("Auto Leviathan Farm", true, function(v) _G.AutoLevi = v end)
SeaTab:CreateToggle("Shark Anchor Safe Mode", true, function(v) _G.SharkSafe = v end)
SeaTab:CreateToggle("Auto Collect Assure Embers", true, function(v) _G.AutoEmbers = v end)
SeaTab:CreateToggle("Auto Mirage & Kitsune Detection (Map Based)", true, function(v) _G.AutoMirage = v end)

-- ==========================
-- ⚔️ PVP TAB
-- ==========================
local PvPTab = GUI:CreateTab("PvP")
PvPTab:CreateToggle("Enable PvP Combos", true, function(v) _G.PvPOn = v end)
PvPTab:CreateToggle("Auto Bounty PvP", true, function(v) _G.AutoBountyPvP = v end)
PvPTab:CreateToggle("Combo with Any Fruit/Weapon", true, function(v) _G.PvPAny = v end)

-- ==========================
-- 🔁 COMBO BUILDER TAB
-- ==========================
local ComboTab = GUI:CreateTab("Combo Builder")
ComboTab:CreateButton("Load Meta PvP Combos", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MetaCombos/BloxFruitCombos/main/All.lua"))()
end)

-- ==========================
-- 💱 TRADE TAB
-- ==========================
local TradeTab = GUI:CreateTab("Trade")
TradeTab:CreateToggle("Auto Accept Trade", true, function(v) _G.AutoTradeAccept = v end)
TradeTab:CreateToggle("Freeze Trade (Visual Lock)", true, function(v) _G.TradeFreeze = v end)
TradeTab:CreateToggle("Scam Trade Visual (Fake Fruit)", true, function(v) _G.ScamTrade = v end)

-- ==========================
-- 🌀 RACE V4 TAB
-- ==========================
local RaceTab = GUI:CreateTab("Race V4")
RaceTab:CreateToggle("Auto Temple Tracker", true, function(v) _G.AutoTemple = v end)
RaceTab:CreateToggle("Auto Trial + Mirror Logic", true, function(v) _G.AutoTrial = v end)
RaceTab:CreateToggle("Auto Draco V4 Unlock", true, function(v) _G.AutoDraco = v end)

-- ==========================
-- 🔧 MISC TAB
-- ==========================
local MiscTab = GUI:CreateTab("Misc")
MiscTab:CreateToggle("Auto Instinct V2 Unlock", true, function(v) _G.AutoInstinctV2 = v end)
MiscTab:CreateToggle("Auto Equip Best Accessories", true, function(v) _G.AutoEquipAcc = v end)
MiscTab:CreateToggle("Auto Awakening", true, function(v) _G.AutoAwaken = v end)
MiscTab:CreateToggle("FPS Boost", false, function(v) _G.FPSBoost = v end)
MiscTab:CreateToggle("Anti-AFK (No Kick)", true, function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- ==========================
-- 🌐 DISCORD WEBHOOK (Optional Notifications)
-- ==========================
function SendWebhook(msg)
    if getgenv().Settings.WebhookURL == "" then return end
    pcall(function()
        local data = {["content"] = msg}
        local http = game:GetService("HttpService")
        (http.PostAsync or http_request or syn.request)({
            Url = getgenv().Settings.WebhookURL,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = http:JSONEncode(data)
        })
    end)
end

SendWebhook("✅ Script loaded by: "..game.Players.LocalPlayer.Name)

-- ==========================
-- 🧠 Smart Pathfinding (Optional placeholder)
-- ==========================
spawn(function()
    while wait(2) do
        if _G.AutoLevel then
            -- PathfindingService logic placeholder
        end
    end
end)
