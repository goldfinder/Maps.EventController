return function(data)
    print(data)
    local dataset = {}
    dataset.LoadingMap = false
    if data == "MDT" then
        local HttpService = game:GetService("HttpService")
        local code = HttpService:GetAsync("https://raw.githubusercontent.com/goldfinder/Maps.EventController/main/MDT.Lua", true)
	    DSET = loadstring(code)()()
        dataset.LoadingMap = true
    end
    return dataset
end
