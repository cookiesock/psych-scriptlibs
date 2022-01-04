self = {}

self.defaultWindowX = 0
self.defaultWindowY = 0
self.defaultWindowWidth = 0
self.defaultWindowHeight = 0
self.defaultWindowName = "Friday Night Funkin': Psych Engine"
self.defaultWindowBorderless = false
self.defaultWindowFullscreen = false

function self.setup()
    self.defaultWindowX = getPropertyFromClass('openfl.Lib', 'application.window.x')
    self.defaultWindowY = getPropertyFromClass('openfl.Lib', 'application.window.y')
    self.defaultWindowWidth = getPropertyFromClass('openfl.Lib', 'application.window.width')
    self.defaultWindowHeight = getPropertyFromClass('openfl.Lib', 'application.window.height')
    self.defaultWindowBorderless = getPropertyFromClass('openfl.Lib', 'application.window.borderless')
    self.defaultWindowFullscreen = getPropertyFromClass('openfl.Lib', 'application.window.fullscreen')
end
function self.move(x, y)
    self.setX(self.getX() + x)
    self.setY(self.getY() + y)
end
function self.scale(width, height)
    setPropertyFromClass('openfl.Lib', 'application.window.width', getPropertyFromClass('openfl.Lib', 'application.window.width') + width)
    setPropertyFromClass('openfl.Lib', 'application.window.height', getPropertyFromClass('openfl.Lib', 'application.window.height') + height)
end

function self.setX(x)
    setPropertyFromClass('openfl.Lib', 'application.window.x', x)
end
function self.setY(y)
    setPropertyFromClass('openfl.Lib', 'application.window.y', y)
end
function self.setWidth(width)
    setPropertyFromClass('openfl.Lib', 'application.window.width', width)
end
function self.setHeight(height)
    setPropertyFromClass('openfl.Lib', 'application.window.height', height)
end
function self.setName(name)
    setPropertyFromClass('openfl.Lib', 'application.window.title', name)
end
function self.setBorderless(borderless)
    setPropertyFromClass('openfl.Lib', 'application.window.borderless', borderless)
end
function self.setFullscreen(fullscreen)
    setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', fullscreen)
end
function self.setOther(shitToSet, val)
    setPropertyFromClass('openfl.Lib', 'application.window.' .. shitToSet, val)
end

function self.getX()
    return getPropertyFromClass('openfl.Lib', 'application.window.x')
end
function self.getY()
    return getPropertyFromClass('openfl.Lib', 'application.window.y')
end
function self.getWidth()
    return getPropertyFromClass('openfl.Lib', 'application.window.width')
end
function self.getHeight()
    return getPropertyFromClass('openfl.Lib', 'application.window.height')
end
function self.getName()
    return getPropertyFromClass('openfl.Lib', 'application.window.title')
end
function self.getBorderless()
    return getPropertyFromClass('openfl.Lib', 'application.window.borderless')
end
function self.getFullscreen()
    return getPropertyFromClass('openfl.Lib', 'application.window.fullscreen')
end
function self.getOther(shitToGet)
    return getPropertyFromClass('openfl.Lib', 'application.window.' .. shitToGet)
end

function self.resetX()
    self.setX(self.defaultWindowX)
end
function self.resetY()
    self.setY(self.defaultWindowY)
end
function self.resetWidth()
    self.setWidth(self.defaultWindowWidth)
end
function self.resetHeight()
    self.setHeight(self.defaultWindowHeight)
end
function self.resetName()
    self.setName(self.defaultWindowName)
end
function self.resetBorderless()
    self.setBorderless(self.defaultWindowBorderless)
end
function self.resetFullscreen()
    self.setFullscreen(self.defaultWindowFullscreen)
end
function self.resetAll()
    self.resetX()
    self.resetY()
    self.resetWidth()
    self.resetHeight()
    self.resetName()
    self.resetBorderless()
    self.resetFullscreen()
end

return self