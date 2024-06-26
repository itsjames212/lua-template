local ServerScriptService = game:GetService("ServerScriptService")

local Loader = require("@Packages/Loader")

Loader.SpawnAll(
	Loader.LoadDescendants(
		ServerScriptService.Server.Services,
		Loader.MatchesName("Service$")
	),
	"Start"
)
