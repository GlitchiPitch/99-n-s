---@class LobbySystemShared
local LobbySystemShared = {}
LobbySystemShared.__index = LobbySystemShared

---@return LobbySystemShared
function LobbySystemShared.new()
    local self = setmetatable({}, LobbySystemShared)
    return self
end

return LobbySystemShared