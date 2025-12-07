local Repositories = require(script.Repositories)

---@class ServerInfrastructure
local Infrastructure = {}
Infrastructure.__index = Infrastructure

---@param diContainer DIContainer
---@return ServerInfrastructure
function Infrastructure.new(diContainer)
	local self = setmetatable({}, Infrastructure)
	self.diContainer = diContainer
	self:_register()
	return self
end

function Infrastructure:_register()
	self.diContainer:register("Server.Repositories", function(c)
		return Repositories.new(c)
	end)
end

return Infrastructure
