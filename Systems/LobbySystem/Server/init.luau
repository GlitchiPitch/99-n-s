local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.LobbySystem)

---@class LobbySystemServer
---@field Shared LobbySystemShared
local LobbySystemServer = {}
LobbySystemServer.__index = LobbySystemServer

---@return LobbySystemServer
function LobbySystemServer.new()
    local self = setmetatable({}, LobbySystemServer)
    self.Shared = Shared.new()
    return self
end

return LobbySystemServer