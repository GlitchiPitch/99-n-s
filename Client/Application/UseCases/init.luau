---@class ServerUseCases
local UseCases = {}
UseCases.__index = UseCases

function UseCases.new()
    local self = setmetatable({}, UseCases)
    return self
end

return UseCases