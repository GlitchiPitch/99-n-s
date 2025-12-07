---@class GameSystemShared
local GameSystemShared = {}
GameSystemShared.__index = GameSystemShared

---@return GameSystemShared
function GameSystemShared.new()
    local self = setmetatable({}, GameSystemShared)
    return self
end

return GameSystemShared