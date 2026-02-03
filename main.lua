-- by erlyheaven
-- ПОВНИЙ ELDERWYRM OVERHAUL (CRACKED BY TOPTI)

-- 1. Обхід перевірки (Runtime Bypass)
getgenv().KeylessMode = true 
_G.KeyEntered = true

-- 2. Блокуємо спроби скрипта тебе кікнути за ключ
local old; old = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if method == "Kick" or method == "kick" then
        return nil 
    end
    return old(self, ...)
end)

-- 3. Завантаження ТВОЄЇ копії сорса (щоб не залежати від автора)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tima1331/Evade-X/main/source.lua"))()
