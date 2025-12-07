local PlayerRepository = require(script.PlayerRepository)

---@class ServerRepositories
---@field PlayerRepository PlayerRepository
local Repositories = {}
Repositories.__index = Repositories

---@param diContainer DIContainer
---@return ServerRepositories
function Repositories.new(diContainer)
	local self = setmetatable({}, Repositories)
	self.PlayerRepository = PlayerRepository.new(diContainer)
	return self
end

return Repositories
