---@class LobbySystemShared
local Shared = {}
Shared.__index = Shared

---@return LobbySystemShared
function Shared.new()
    local self = setmetatable({}, Shared)
    return self
end

return Shared