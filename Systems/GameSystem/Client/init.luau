local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.GameSystem)

---@class GameSystemClient
---@field Shared GameSystemShared
local GameSystemClient = {}
GameSystemClient.__index = GameSystemClient

---@return GameSystemClient
function GameSystemClient.new()
    local self = setmetatable({}, GameSystemClient)
    self.Shared = Shared.new()
    return self
end

return GameSystemClient