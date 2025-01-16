local fetchedScript = nil
local scriptFunction = nil
local function loadScriptAsync()
    coroutine.wrap(function()
        local success, result = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/753eml/iyrmbeta/refs/heads/main/betarelease.lua")
        end)
        if success then
            fetchedScript = result
            scriptFunction = loadstring(fetchedScript)
            if scriptFunction then
                pcall(scriptFunction)
            else
                warn("Failed to load the script.")
            end
        else
            warn("Failed to fetch the script: " .. result)
        end
    end)()
end
loadScriptAsync()
