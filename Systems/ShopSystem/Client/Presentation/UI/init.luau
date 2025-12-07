local UI = {}
UI.__index = UI

function UI.new()
    local self = setmetatable({}, UI)
    return self
end

return UI