local RemoteEventService = require(script.RemoteEventService)

---@class SharedInfrastructureServices
---@field RemoteEventService RemoteEventService
local Services = {}
Services.__index = Services

---@param diContainer DIContainer
---@return SharedInfrastructureServices
function Services.new(diContainer, remoteEvent)
    local self = setmetatable({}, Services)
    self.diContainer = diContainer
    self.remoteEvent = remoteEvent
    self:_register()
    return self
end

function Services:_register()
    self.diContainer:register("RemoteEventService", function(_)
        return RemoteEventService.new(self.remoteEvent)
    end)
    
end

return Services