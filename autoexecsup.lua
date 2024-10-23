-- For Solara V3 and other Executors
-- Please name your autoexecute file after any of the possibleFiles names, and in .txt/.lua/.luau file extensions.
local currentScriptPath = debug.getinfo(1).source:sub(2)
local currentFileName = string.match(currentScriptPath, "([^/\\]+)$")
local currentDirectory = string.match(currentScriptPath, "(.*[\\/])")
local possibleFiles = {"iyautoload", "iy", "infinite yield", "infiniteyield", "infyield", "iyr", "infinite-yield", "bothscripts", "bothscriptsfixed"}
local function isInAutoExecFile(fileName)
    for _, fileNameWithoutExt in ipairs(possibleFiles) do
        if fileName:lower() == fileNameWithoutExt:lower() .. ".lua" or
           fileName:lower() == fileNameWithoutExt:lower() .. ".luau" or
           fileName:lower() == fileNameWithoutExt:lower() .. ".txt" then
            return true
        end
    end
    return false
end
local function isInAutoExecFolder(directory)
    return string.find(directory:lower(), "autoexec") or string.find(directory:lower(), "autoexecute")
end
if isInAutoExecFile(currentFileName) and isInAutoExecFolder(currentDirectory) then
    wait(2)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/753eml/iyrmbeta/refs/heads/main/betarelease.lua', true))()
else
    loadstring(game:HttpGet('https://raw.githubusercontent.com/753eml/iyrmbeta/refs/heads/main/betarelease.lua', true))()
end
