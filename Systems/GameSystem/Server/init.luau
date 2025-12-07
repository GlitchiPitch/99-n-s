local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.GameSystem)

---@class GameSystemServer
---@field Shared GameSystemShared
local GameSystemServer = {}
GameSystemServer.__index = GameSystemServer

---@return GameSystemServer
function GameSystemServer.new()
    local self = setmetatable({}, GameSystemServer)
    self.Shared = Shared.new()
    return self
end

return GameSystemServer