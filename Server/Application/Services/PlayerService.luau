---@class PlayerService
local PlayerService = {}
PlayerService.__index = PlayerService

---@param diContainer DIContainer
---@return PlayerService
function PlayerService.new(diContainer)
    local self = setmetatable({}, PlayerService)
    self.diContainer = diContainer
    return self
end

return PlayerService