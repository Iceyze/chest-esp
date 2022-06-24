local plr = game.Players.LocalPlayer
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP.Names = true
ESP.Boxes = true
ESP.Players = false
ESP:Toggle(true)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("northwind test", "BloodTheme")
local ESPTab = Window:NewTab("ESP")
local ESPMain = ESPTab:NewSection("funney esp")

local OreEspToggle = ESPMain:NewButton("Chest esp", "make chest esp work!", function()
    OreESPS = {}
    for i,v in pairs(game:GetService("Workspace").TargetFilter.TreasureHuntMarkers:GetChildren()) do
        if string.find(v.Name, "hunt") then
           local oesp = ESP:Add(v, {Name = v.Name, Color = Color3.new(1,1,1)})
        end
    end
    table.insert(OreESPS,oesp)
    ESP.OreESP = not ESP.OreESP
end)
local playerToggle = ESPMain:NewButton("player Chest esp", "make chest esp work!", function()
    playerESPS = {}
    for i,v in pairs(game:GetService("Workspace").Carriables:GetChildren()) do
        if string.find(v.Name, "hunt") then
           local pesp = ESP:Add(v.MeshPart, {Name = v.Name, Color = Color3.new(1,1,1)})
        end
    end
    table.insert(playerESPS,pesp)
    ESP.OreESP = not ESP.OreESP
end)
