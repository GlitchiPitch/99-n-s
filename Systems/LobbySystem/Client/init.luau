local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.LobbySystem)

---@class LobbySystemClient
---@field Shared LobbySystemShared
local LobbySystemClient = {}
LobbySystemClient.__index = LobbySystemClient

---@return LobbySystemClient
function LobbySystemClient.new()
    local self = setmetatable({}, LobbySystemClient)
    self.Shared = Shared.new()
    return self
end

return LobbySystemClient