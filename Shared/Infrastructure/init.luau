local DIContainer = require(script.DIContainer)
local Services = require(script.Services)

local remoteEvent = script.RemoteEvent

---@class SharedInfrastructure
---@field DIContainer any
---@field Services SharedInfrastructureServices
local Infrastructure = {}
Infrastructure.__index = Infrastructure

function Infrastructure.new()
	local self = setmetatable({}, Infrastructure)
	self.DIContainer = DIContainer.new()
	self:_register()
	return self
end

function Infrastructure:_register()
	self.DIContainer:register("Shared.Services", function(c)
		return Services.new(c, remoteEvent)
	end)
end

return Infrastructure
