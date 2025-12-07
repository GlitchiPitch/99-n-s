local Domain = require(script.Domain)
local Infrastructure = require(script.Infrastructure)
local Application = require(script.Application)
local Constants = require(script.Constants)

---@class Shared
---@field Domain SharedDomain
---@field Infrastructure SharedInfrastructure
---@field Constants SharedConstants
local Shared = {}
Shared.__index = Shared

function Shared.new()
    local self = setmetatable({}, Shared)
    self.Constants = Constants
    self.Domain = Domain.new()
    self.Infrastructure = Infrastructure.new()
	self.Application = Application.new()
    return self
end


return Shared