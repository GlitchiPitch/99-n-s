local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.LobbySystem)

---@class LobbySystemServer
---@field Shared LobbySystemShared
local Server = {}
Server.__index = Server

---@return LobbySystemServer
function Server.new()
    local self = setmetatable({}, Server)
    self.Shared = Shared.new()
    return self
end

return Server