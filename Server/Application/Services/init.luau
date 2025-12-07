---@class ServerApplicationServices
local Services = {}
Services.__index = Services

---@param diContainer DIContainer
---@return ServerApplicationServices
function Services.new(diContainer)
    local self = setmetatable({}, Services)
    self.diContainer = diContainer
    self:_register()
    return self
end

return Services