local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Systems.ShopSystem)
local Presentation = require(script.Presentation)

---@class ShopSystemClient
---@field Shared ShopSystemShared
---@field Presentation ShopSystemClientPresentation
local Client = {}
Client.__index = Client

function Client.new()
    local self = setmetatable({}, Client)
    self.Shared = Shared.new()
    self.Presentation = Presentation.new()
    return self
end

return Client