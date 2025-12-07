local Services = require(script.Services)
local Commands = require(script.Commands)
local UseCases = require(script.UseCases)

---@class ClientApplication
local Application = {}
Application.__index = Application

---@param diContainer DIContainer
---@return ClientApplication
function Application.new(diContainer)
    local self = setmetatable({}, Application)
    self.diContainer = diContainer
    self:_register()
    return self
end

function Application:_register()
    self.diContainer:register("Client.Services", function(c)
        return Services.new(c)
    end)
    self.diContainer:register("Client.Commands", function(_)
        return Commands.new()
    end)
    self.diContainer:register("Client.UseCases", function(c)
        return UseCases.new(c)
    end)
end

function Application:init()
    
end

return Application