local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.ShopSystem)

---@class ShopSystemServer
---@field Shared ShopSystemShared
local Server = {}
Server.__index = Server

function Server.new()
    local self = setmetatable({}, Server)
    self.Shared = Shared.new()
    return self
end

return Server