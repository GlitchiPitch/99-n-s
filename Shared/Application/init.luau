---@class SharedApplication
local Application = {}
Application.__index = Application

function Application.new()
    local self = setmetatable({}, Application)
    return self
end

return Application