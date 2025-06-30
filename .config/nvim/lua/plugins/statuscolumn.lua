
--[[
local status = {}

status.border = function()
	return "|"
end

status.main = function()
	local text = ""
	text = table.concat({
		status.border(),
	})
	return text
end

return status
]]--
