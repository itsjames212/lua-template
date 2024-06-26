local assetspath = "Assets/"

local fs = require("@lune/fs")
local roblox = require("@lune/roblox")

local file = fs.readFile("placefile.rbxl")
local game = roblox.deserializePlace(file)
local workspace = game:GetService("Workspace")

for _, child in workspace:GetChildren() do
	file = roblox.serializeModel({ child })

	if child:IsA("Model") then
		fs.writeFile(assetspath .. "Models/" .. child.Name .. ".rbxm", file)
	else
		fs.writeFile(assetspath .. "Map/" .. child.Name .. ".rbxm", file)
	end
end
