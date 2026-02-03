-- by erlyheaven
-- ПОВНИЙ ELDERWYRM OVERHAUL БЕЗ КЛЮЧА

-- 1. Обманюємо перевірку KeylessMode
getgenv().KeylessMode = true 
_G.KeyEntered = true

-- 2. Блокуємо спроби скрипта тебе вигнати (Anti-Kick)
local old; old = hookmetamethod(game, "__namecall", function(self, ...)
    if getnamecallmethod() == "Kick" then return nil end
    return old(self, ...)
end)

-- 3. Завантажуємо оригінальний Overhaul (ту саму "кашу")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tima1331/Evade-X/main/source.lua"))()
