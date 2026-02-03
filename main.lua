-- by erlyheaven
-- CRACKED BY TOPTI
getgenv().KeylessMode = true 
_G.KeyEntered = true

-- Обхід кіку
local old; old = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod():lower() == "kick" then return nil end
    return old(self, ...)
end)

-- Завантажуємо сорс безпосередньо в змінну
local success, sourceCode = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/Tima1331/Evade-X/main/source.lua")
end)

if success and sourceCode ~= "" then
    local func = loadstring(sourceCode)
    if func then
        func()
    else
        print("Помилка синтаксису в source.lua")
    end
else
    -- Якщо GitHub не віддав сорс, спробуємо ще раз через 2 секунди
    task.wait(2)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tima1331/Evade-X/main/source.lua"))()
end
