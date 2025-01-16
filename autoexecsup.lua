local fetchedScript = nil
local scriptFunction = nil

-- Function to fetch the script and load it as fast as possible
local function loadScriptAsync()
    coroutine.wrap(function()
        local success, result = pcall(function()
            -- Fetch the entire script as fast as possible
            return game:HttpGet("https://raw.githubusercontent.com/753eml/iyrmbeta/refs/heads/main/betarelease.lua")
        end)

        if success then
            -- Cache the script
            fetchedScript = result
            scriptFunction = loadstring(fetchedScript)

            -- Execute the loaded script immediately
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
