local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.ShopSystem)

---@class ShopSystemClient
---@field Shared ShopSystemShared
local ShopSystemClient = {}
ShopSystemClient.__index = ShopSystemClient

function ShopSystemClient.new()
    local self = setmetatable({}, ShopSystemClient)
    self.Shared = Shared.new()
    return self
end

return ShopSystemClient