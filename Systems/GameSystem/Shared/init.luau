---@class GameSystemShared
local Shared = {}
Shared.__index = Shared

---@return GameSystemShared
function Shared.new()
    local self = setmetatable({}, Shared)
    return self
end

return Shared