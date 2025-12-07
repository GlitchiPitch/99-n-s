---@class ShopUI
local ShopUI = {}
ShopUI.__index = ShopUI

function ShopUI.new()
    local self = setmetatable({}, ShopUI)
    return self
end

return ShopUI