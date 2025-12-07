local Entities = require(script.Entities)

---@class SharedDomain
---@field Entities Entities
local Domain = {}
Domain.__index = Domain

function Domain.new()
    local self = setmetatable({}, Domain)
    self.Entities = Entities.new()
    return self
end

return Domain