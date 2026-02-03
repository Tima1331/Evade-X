-- by erlyheaven
-- CRACKED BY TOPTI

getgenv().KeylessMode = true 
_G.KeyEntered = true

-- Захист від кіку
local old; old = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "Kick" or getnamecallmethod() == "kick" then return nil end
    return old(self, ...)
end)

-- Безпечне завантаження
local success, result = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/Tima1331/Evade-X/main/source.lua?t="..tick())
end)

if success and result and result ~= "" then
    local func = loadstring(result)
    if func then
        print("Elderwyrm завантажено успішно!")
        func()
    else
        warn("Помилка в самому коді source.lua")
    end
else
    warn("GitHub не віддав код. Спробуй ще раз через секунду.")
end
