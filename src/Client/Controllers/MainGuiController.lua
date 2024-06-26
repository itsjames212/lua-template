local Players = game:GetService("Players")

local MainGuiController = {}

local React = require("@Packages/React")
local ReactRoblox = require("@Packages/ReactRoblox")

local Log = require("@Shared/Log")

local Create = React.createElement
local App = require("@Components/App")

function MainGuiController:Start()
	local container = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui") :: PlayerGui
	local root = ReactRoblox.createRoot(Instance.new("Folder"))

	root:render(ReactRoblox.createPortal(Create(App), container))
	Log.Debug("Main hud loaded")
end

return MainGuiController
