local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.LobbySystem)

---@class LobbySystemClient
---@field Shared LobbySystemShared
local Client = {}
Client.__index = Client

---@return LobbySystemClient
function Client.new()
    local self = setmetatable({}, Client)
    self.Shared = Shared.new()
    return self
end

return Client