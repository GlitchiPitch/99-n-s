---@class ShopSystemShared
local ShopSystemShared = {}
ShopSystemShared.__index = ShopSystemShared

function ShopSystemShared.new()
    local self = setmetatable({}, ShopSystemShared)
    return self
end

return ShopSystemShared