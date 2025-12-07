local UseCases = require(script.UseCases)
local Commands = require(script.Commands)
local Services = require(script.Services)

---@class ServerApplication
local Application = {}
Application.__index = Application

---@param diContainer DIContainer
---@return ServerApplication
function Application.new(diContainer)
	local self = setmetatable({}, Application)
	self.diContainer = diContainer
	self:_register()
	return self
end

function Application:_register()
	self.diContainer:register("Server.UseCases", function(c)
		return UseCases.new(c)
	end)
	self.diContainer:register("Server.Commands", function(_)
		return Commands.new()
	end)
	self.diContainer:register("Server.Services", function(c)
		return Services.new(c)
	end)
end

function Application:init()
    
end

return Application
