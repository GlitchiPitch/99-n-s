local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Shared = require(ReplicatedStorage.Shared)
local Infrastructure = require(script.Infrastructure)
local Application = require(script.Application)

---@class Server
---@field Shared Shared
---@field Infrastructure ServerInfrastructure
---@field Application ServerApplication
local Server = {}

function Server.new()
	local self = setmetatable({}, Server)
	self.Shared = Shared.new()
	self.Infrastructure = Infrastructure.new(self.Shared.Infrastructure.DIContainer)
	self.Application = Application.new(self.Shared.Infrastructure.DIContainer)
	return self
end

function Server:init()
	self.Infrastructure:init()
	self.Application:init()
end

function Server:start()
	local function onPlayerAdded(player)
		self.Application.Services.PlayerService:createPlayer(player)
	end
	local function onPlayerRemoving(player)
		self.Application.Services.PlayerService:deletePlayer(player)
	end

	Players.PlayerAdded:Connect(onPlayerAdded)
	Players.PlayerRemoving:Connect(onPlayerRemoving)

	ReplicatedStorage:SetAttribute(self.Shared.Constants.ServerIsLoaded, true)
end

return Server
