self = {}

function self.justPressed(key)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.' .. string.upper(key)) then
        return true;
    else
        return false;
    end
end

function self.justReleased(key)
    if getPropertyFromClass('flixel.FlxG', 'keys.justReleased.' .. string.upper(key)) then
        return true;
    else
        return false;
    end
end

function self.keyPressed(key)
    if getPropertyFromClass('flixel.FlxG', 'keys.pressed.' .. string.upper(key)) then
        return true;
    else
        return false;
    end
end

return self