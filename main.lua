-- by erlyheaven
-- ПОВНИЙ КРАК ДЛЯ TOPTI

getgenv().KeylessMode = true 
_G.KeyEntered = true

-- Обхід кіку
local old; old = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod():lower() == "kick" then return nil end
    return old(self, ...)
end)

-- НИЖЧЕ ВСТАВЛЯЙ ВСЮ ТУ "КАШУ" З ФАЙЛУ SOURCE.LUA
-- (Видали цей коментар і встав текст, що починається на return(function(...) або подібне)
