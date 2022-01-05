self = {}

function self.get(a)
    return getProperty(a)
end
function self.getGrp(a, b, c)
    return getPropertyFromGroup(a, b, c)
end
function self.getClass(a, b)
    return getPropertyFromClass(a, b)
end

function self.set(a, b)
    setProperty(a, b)
end
function self.setGrp(a, b, c, d)
    setPropertyFromGroup(a, b, c, d)
end
function self.setClass(a, b, c)
    setPropertyFromClass(a, b, c)
end

return self