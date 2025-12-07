---@class ShopSystemClientPresentation
local Presentation = {}
Presentation.__index = Presentation

function Presentation.new()
    local self = setmetatable({}, Presentation)
    return self
end

return Presentation