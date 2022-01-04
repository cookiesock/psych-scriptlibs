self = {}

function self.setup()
end

function self.setX(x)
    setPropertyFromClass('flixel.FlxG', 'mouse.x', x)
end
function self.setY(y)
    setPropertyFromClass('flixel.FlxG', 'mouse.y', y)
end

function self.getX()
    return getPropertyFromClass('flixel.FlxG', 'mouse.x')
end
function self.getY()
    return getPropertyFromClass('flixel.FlxG', 'mouse.y')
end

return self