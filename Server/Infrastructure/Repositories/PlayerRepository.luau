---@class PlayerRepository : IPlayerRepository
local PlayerRepository = {}
PlayerRepository.__index = PlayerRepository

---@param diContainer DIContainer
---@return PlayerRepository
function PlayerRepository.new(diContainer)
    local self = setmetatable({}, PlayerRepository)
    self.diContainer = diContainer
    return self
end

return PlayerRepository