---@class PlayerEntity
local PlayerEntity = {}
PlayerEntity.__index = PlayerEntity

function PlayerEntity.new()
    local self = setmetatable({}, PlayerEntity)
    return self
end

return PlayerEntity