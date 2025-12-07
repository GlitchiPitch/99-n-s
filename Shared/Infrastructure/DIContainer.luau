---@alias SharedServiceNames '"Shared.Services"'
---@alias ServerServiceNames '"Server.Repositories" | "Server.UseCases" | "Server.Commands" | "Server.Services"'
---@alias ClientServiceNames '"Client.Services" | "Client.UseCases" | "Client.Commands"'
---@alias ServiceNames SharedServiceNames | ServerServiceNames | ClientServiceNames

-- Simple Dependency Injection Container for Luau/Roblox

---@class DIContainer
local DIContainer = {}
DIContainer.__index = DIContainer

-- Container storage
local services = {}
local singletons = {}

function DIContainer.new()
	local self = setmetatable({}, DIContainer)
	return self
end

-- Register a service with a factory function
-- @param name: string - Service name/key
-- @param factory: function - Function that creates the service instance
-- @param lifetime: "singleton"|"transient" - Service lifetime (default: "singleton")
function DIContainer:register(name, factory, lifetime)
	lifetime = lifetime or "singleton"

	services[name] = {
		factory = factory,
		lifetime = lifetime,
	}

	-- Clear existing singleton instance if re-registering
	if lifetime == "singleton" then
		singletons[name] = nil
	end
end

-- Resolve/get a service by name
-- @param name ServiceNames - Service name/key
-- @return table Service instance
function DIContainer:resolve(name)
	local service = services[name]
	if not service then
		error("Service '" .. name .. "' not registered")
	end

	if service.lifetime == "singleton" then
		if not singletons[name] then
			singletons[name] = service.factory(self)
		end
		return singletons[name]
	else
		-- Transient: create new instance each time
		return service.factory(self)
	end
end

-- Get all registered service names
-- @return: table - Array of service names
function DIContainer:getRegisteredServices()
	local names = {}
	for name in pairs(services) do
		table.insert(names, name)
	end
	return names
end

return DIContainer
