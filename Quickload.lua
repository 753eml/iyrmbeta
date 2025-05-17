local function loadScriptAsync()
    coroutine.wrap(function()
        local success, result = pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/753eml/iyrmbeta/refs/heads/main/betarelease.lua")
        end)
        if not success then
            warn("Failed to fetch the script: " .. result)
            return
        end
        local scriptFunction, loadErr = loadstring(result)
        if not scriptFunction then
            warn("Failed to load script: " .. tostring(loadErr))
            return
        end
        local ran, execErr = pcall(scriptFunction)
        if not ran then
            warn("Script runtime error: " .. tostring(execErr))
        end
    end)()
end
loadScriptAsync()
