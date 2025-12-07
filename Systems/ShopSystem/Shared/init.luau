---@class ShopSystemShared
local Shared = {}
Shared.__index = Shared

function Shared.new()
    local self = setmetatable({}, Shared)
    return self
end

return Shared