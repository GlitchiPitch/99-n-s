local PlayerEntity = require(script.Player)
local GameSessionEntity = require(script.GameSession)

---@class Entities
---@field Player PlayerEntity
---@field GameSession GameSessionEntity
local Entities = {}
Entities.__index = Entities

function Entities.new()
    local self = setmetatable({}, Entities)
    self.Player = PlayerEntity
    self.GameSession = GameSessionEntity
    return self
end

function Entities:_register()
    
end

return Entities