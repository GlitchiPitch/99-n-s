---@class RemoteEventService
local RemoteEventService = {}
RemoteEventService.__index = RemoteEventService

---@param remoteEvent RemoteEvent
---@return RemoteEventService
function RemoteEventService.new(remoteEvent)
    local self = setmetatable({}, RemoteEventService)
    self.remoteEvent = remoteEvent
    self._connections = {}
    return self
end

-- Fire event from server to specific client
---@param player Player
---@vararg any
function RemoteEventService:fireClient(player, ...)
    if self:_isServer() then
        self.remoteEvent:FireClient(player, ...)
    end
end

-- Fire event from server to all clients
---@vararg any
function RemoteEventService:fireAllClients(...)
    if self:_isServer() then
        self.remoteEvent:FireAllClients(...)
    end
end

-- Fire event from client to server
---@vararg any
function RemoteEventService:fireServer(...)
    if self:_isClient() then
        self.remoteEvent:FireServer(...)
    end
end

-- Connect server-side event handler (listens for client events)
---@param callback function
---@return RBXScriptConnection
function RemoteEventService:onServerEvent(callback)
    if self:_isServer() then
        local connection = self.remoteEvent.OnServerEvent:Connect(callback)
        table.insert(self._connections, connection)
        return connection
    end
    return nil
end

-- Connect client-side event handler (listens for server events)
---@param callback function
---@return RBXScriptConnection
function RemoteEventService:onClientEvent(callback)
    if self:_isClient() then
        local connection = self.remoteEvent.OnClientEvent:Connect(callback)
        table.insert(self._connections, connection)
        return connection
    end
    return nil
end

-- Disconnect all event connections
function RemoteEventService:disconnectAll()
    for _, connection in ipairs(self._connections) do
        if connection.Connected then
            connection:Disconnect()
        end
    end
    self._connections = {}
end

-- Check if running on server
---@return boolean
function RemoteEventService:_isServer()
    return game:GetService("RunService"):IsServer()
end

-- Check if running on client
---@return boolean
function RemoteEventService:_isClient()
    return game:GetService("RunService"):IsClient()
end

return RemoteEventService