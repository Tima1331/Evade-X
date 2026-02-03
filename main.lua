getgenv().KeylessMode = true
_G.KeyEntered = true
local o;o=hookmetamethod(game,"__namecall",function(s,...)if getnamecallmethod():lower()=="kick" then return nil end return o(s,...)end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tima1331/Evade-X/main/source.lua"))()
