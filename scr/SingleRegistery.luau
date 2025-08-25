local InstanceRegistery = {}
local Registery = {}

-- Variables and constants
local InstanceAttributeName = "InstanceRegisteryId"

function InstanceRegistery.register(instance: Instance, id: string | number, addIdAttribute: boolean?)
    assert(Instance, "InstanceRegistery.register: instance is nil")
    assert(id, "InstanceRegistery.register: id is nil")
    assert(InstanceRegistery.get(id) == nil, "InstanceRegistery.register: id is already registered")

    Registery[id] = instance
    if addIdAttribute then
        instance:SetAttribute(InstanceAttributeName, id)
    end
end

function InstanceRegistery.deregister(id: string | number)
    assert(id, "InstanceRegistery.deregister: id is nil")

    local instance = InstanceRegistery.get(id)
    if instance then
        instance:SetAttribute(InstanceAttributeName, nil)
        Registery[id] = nil
    else
        warn("InstanceRegistery.deregister: id is not registered")
    end
end

function InstanceRegistery.get(id: string | number): Instance?
    assert(id, "InstanceRegistery.get: id is nil")
    return Registery[id]
end

function InstanceRegistery.getall(): { [string | number]: Instance }
    return Registery
end

return InstanceRegistery