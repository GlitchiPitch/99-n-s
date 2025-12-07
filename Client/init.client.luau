local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Shared = require(ReplicatedStorage.Shared)
local Application = require(script.Application)

---@class Client
---@field Shared Shared
---@field Application ClientApplication
local Client = {}

function Client.new()
	local self = setmetatable({}, Client)
	self.Shared = Shared.new()
	self.Application = Application.new(self.Shared.Infrastructure.DIContainer)
	return self
end

function Client:init()
	self.Application:init()
end

function Client:start()
	self.Application:start()
end

local client = Client.new()

local function _main()
	client:init()
	client:start()
end

if ReplicatedStorage:GetAttribute(client.Shared.Constants.ServerIsLoaded) then
	_main()
else
	ReplicatedStorage:GetAttributeChangedSignal(client.Shared.Constants.ServerIsLoaded):Connect(function()
		_main()
	end)
end
