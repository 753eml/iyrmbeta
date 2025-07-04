local success, script = pcall(function()
	return loadstring(game:HttpGet("https://raw.githubusercontent.com/753eml/iyrmbeta/refs/heads/main/betarelease.lua"))()
end)

if success and script then
	local execSuccess, execError = pcall(script)
	if not execSuccess then
		print("Error: " .. execError
	end
else
	print("Error loading script " .. (script or "unknown"))
end
