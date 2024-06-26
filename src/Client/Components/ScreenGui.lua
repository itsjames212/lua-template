local React = require("@Packages/React")
local Create = React.createElement

export type Props = React.ElementProps<ScreenGui>

return function(props: Props)
	return Create("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		ResetOnSpawn = true,
	}, props.children)
end
