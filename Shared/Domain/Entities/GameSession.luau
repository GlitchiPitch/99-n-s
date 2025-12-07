---@class GameSessionEntity
local GameSessionEntity = {}
GameSessionEntity.__index = GameSessionEntity

function GameSessionEntity.new()
    local self = setmetatable({}, GameSessionEntity)
    return self
end

return GameSessionEntity