local TestService = {}

local Log = require("@Shared/Log")

function TestService:Start()
	Log.Info("Hello, World!")
end

return TestService
