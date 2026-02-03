-- by erlyheaven
-- CRACKED BY TOPTI

getgenv().KeylessMode = true 
_G.KeyEntered = true

local old; old = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if method == "Kick" or method == "kick" then return nil end
    return old(self, ...)
end)

-- Бронебійний завантажувач
local success, result = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/Tima1331/Evade-X/main/source.lua")
end)

if success and result ~= "" then
    local func, err = loadstring(result)
    if func then
        func()
    else
        warn("Помилка в коді source.lua: " .. tostring(err))
    end
else
    warn("Не вдалося скачати source.lua з GitHub!")
end
