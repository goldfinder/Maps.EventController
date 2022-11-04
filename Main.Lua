return function(data)
    print(data)
    local dataset = {}
    dataset.LoadingMap = false
    if data == "MDT" then
        local HttpService = game:GetService("HttpService")
        local code = HttpService:GetAsync("https://raw.githubusercontent.com/goldfinder/Maps.EventController/main/MDT.Lua", true)
	local f = loadstring(code)()
	print("Loaded")
	dataset.MapName=f.MapName.__index
        dataset.LoadingMap=true
	dataset.Instanceofmap=f.MapInstance
    end
    return dataset
end
