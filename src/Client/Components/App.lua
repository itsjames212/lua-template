local React = require("@Packages/React")
local Create = React.createElement

local ScreenGui = require("@Components/ScreenGui")

return function()
	return Create(ScreenGui, {
		key = "MainHud",
	}, {
		-- components go here
		TextLabel = Create("TextLabel", {
			Text = "Hello, World!",
			TextSize = 213,
		}),
	})
end
