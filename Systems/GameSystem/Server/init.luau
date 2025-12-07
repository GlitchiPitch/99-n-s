local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.GameSystem)

---@class GameSystemServer
---@field Shared GameSystemShared
local Server = {}
Server.__index = Server

---@return GameSystemServer
function Server.new()
    local self = setmetatable({}, Server)
    self.Shared = Shared.new()
    return self
end

return Server