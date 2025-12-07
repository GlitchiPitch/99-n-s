local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.GameSystem)

---@class GameSystemClient
---@field Shared GameSystemShared
local Client = {}
Client.__index = Client

---@return GameSystemClient
function Client.new()
    local self = setmetatable({}, Client)
    self.Shared = Shared.new()
    return self
end

return Client