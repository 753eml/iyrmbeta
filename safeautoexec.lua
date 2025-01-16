local fetchedScript = nil
local scriptFunction = nil

local function loadScript()
    if not fetchedScript then
        local success, result = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/753eml/iyrmbeta/refs/heads/main/safeautoexec.lua")
        end)
        
        if success then
            fetchedScript = result
            scriptFunction = loadstring(fetchedScript)
        else
            warn("Failed to fetch script: " .. result)
            return
        end
    end
    
    if scriptFunction then
        pcall(scriptFunction)
    else
        warn("An error occured, while loading the script.")
    end
end
loadScript()
