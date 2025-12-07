local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.ShopSystem)

---@class ShopSystemServer
---@field Shared ShopSystemShared
local ShopSystemServer = {}
ShopSystemServer.__index = ShopSystemServer

function ShopSystemServer.new()
    local self = setmetatable({}, ShopSystemServer)
    self.Shared = Shared.new()
    return self
end

return ShopSystemServer