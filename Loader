local MarketplaceService = game:GetService("MarketplaceService")

local games = {
    [8540346411] = {src="https://raw.githubusercontent.com/Roblox-SkillHub/Main/main/Games/Rebirth-Champions-X.lua"},
} 

local check = games[game.PlaceId] 

if check then
    loadstring(game:HttpGet(check.src, true))()
else
    local Players = game:GetService("Players")
    Players.LocalPlayer:Kick(string.format("%s is unsupported.", MarketplaceService:GetProductInfo(game.PlaceId).Name))
end
