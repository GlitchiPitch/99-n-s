---@class ServerCommands
local Commands = {}
Commands.__index = Commands

function Commands.new()
    local self = setmetatable({}, Commands)
    return self
end

return Commands