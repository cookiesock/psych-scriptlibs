self = {}

self.xStart = 0
self.yStart = 0
self.widthStart = 0
self.heightStart = 0
self.nameStart = "Friday Night Funkin': Psych Engine"
self.borderlessStart = false
self.fullscreenStart = false

function self.setup()
    self.xStart = getPropertyFromClass('openfl.Lib', 'application.window.x')
    self.yStart = getPropertyFromClass('openfl.Lib', 'application.window.y')
    self.widthStart = getPropertyFromClass('openfl.Lib', 'application.window.width')
    self.heightStart = getPropertyFromClass('openfl.Lib', 'application.window.height')
    self.fullscreenStart = getPropertyFromClass('openfl.Lib', 'application.window.fullscreen')
end

function self.move(x, y)
    setPropertyFromClass('openfl.Lib', 'application.window.x', getPropertyFromClass('openfl.Lib', 'application.window.x') + x)
    setPropertyFromClass('openfl.Lib', 'application.window.y', getPropertyFromClass('openfl.Lib', 'application.window.y') + y)
end
function self.scale(width, height)
    setPropertyFromClass('openfl.Lib', 'application.window.width', getPropertyFromClass('openfl.Lib', 'application.window.width') + width)
    setPropertyFromClass('openfl.Lib', 'application.window.height', getPropertyFromClass('openfl.Lib', 'application.window.height') + height)
end

function self.setPropertyFromWindow(property, val)
    setPropertyFromClass('openfl.Lib', 'application.window.' .. property, val)
end

function self.getPropertyFromWindow(property)
    return getPropertyFromClass('openfl.Lib', 'application.window.' .. property)
end

function self.resetX()
    self.setX(self.xStart)
end
function self.resetY()
    self.setY(self.yStart)
end
function self.resetWidth()
    self.setWidth(self.widthStart)
end
function self.resetHeight()
    self.setHeight(self.heightStart)
end
function self.resetName()
    self.setName(self.nameStart)
end
function self.resetBorderless()
    self.setBorderless(self.borderlessStart)
end
function self.resetFullscreen()
    self.setFullscreen(self.fullscreenStart)
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