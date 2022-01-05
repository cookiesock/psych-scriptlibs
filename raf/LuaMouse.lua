self = {}

function self.setup()
end

function self.getX()
    return getPropertyFromClass('flixel.FlxG', 'mouse.x')
end
function self.getY()
    return getPropertyFromClass('flixel.FlxG', 'mouse.y')
end
function self.getWheelDelta()
    return getPropertyFromClass('flixel.FlxG', 'mouse.wheel')
end


function self.setVisible(visible)
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', visible)
end

function self.pressed(button)
    if string.lower(button) == 'left' then h = '' 
    elseif string.lower(button) == 'right' then h = 'Right' 
    elseif string.lower(button) == 'middle' then h = 'Middle' 
    else h = '' end
    return getPropertyFromClass('flixel.FlxG', 'mouse.pressed' .. h)
end
function self.justPressed(button)
    if string.lower(button) == 'left' then h = '' 
    elseif string.lower(button) == 'right' then h = 'Right' 
    elseif string.lower(button) == 'middle' then h = 'Middle' 
    else h = '' end
    return getPropertyFromClass('flixel.FlxG', 'mouse.justPressed' .. h)
end
function self.justReleased(button)
    if string.lower(button) == 'left' then h = '' 
    elseif string.lower(button) == 'right' then h = 'Right' 
    elseif string.lower(button) == 'middle' then h = 'Middle' 
    else h = '' end
    return getPropertyFromClass('flixel.FlxG', 'mouse.justReleased' .. h)
end

return self