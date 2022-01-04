local self = { };

self.AxLua = nil;

function self.isPressed(key)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.' .. string.upper(key)) then
        return true;
    elseif getPropertyFromClass('flixel.FlxG', 'keys.justReleased.' .. string.upper(key)) then
        return false;
    end

    --keylist lol https://api.haxeflixel.com/flixel/input/keyboard/FlxKeyList.html
end

function self.roundNumber(num, dp)
    --[[
    round a number to so-many decimal of places, which can be negative, 
    e.g. -1 places rounds to 10's,  
    
    examples
        173.2562 rounded to 0 dps is 173.0
        173.2562 rounded to 2 dps is 173.26
        173.2562 rounded to -1 dps is 170.0
    ]]--
    local mult = 10^(dp or 0);
    return math.floor(num * mult)/mult;
end

function self.getHealthPercent()
    healthPercentage = math.floor(getProperty('health') * 50)
    if healthPercentage > 100 then 
        healthPercentage = 100;
    elseif healthPercentage < 0 then
        healthPercentage = 0;
    end
    return healthPercentage;
end

function self.screenCenter(object, axis)
    if string.lower(axis) == 'x' then
        local h = screenWidth
        local m = "width"
    else
        local h = screenHeight
        local m = "height"
    end
    if axis ~= nil or axis == 'xy' then
        setProperty(object .. '.' .. string.lower(axis), (h/2) + (getProperty(object .. m)/2))
    else
        setProperty(object .. '.x', (h/2) + (getProperty(object .. m)/2))
        setProperty(object .. '.y', (h/2) + (getProperty(object .. m)/2))
    end
end

function self.floorDecimal(value, decimals)
    if decimals < 1 then
        return math.floor(value)
    end
    tempMult = 1
    for i = 0,decimals-1 do
        tempMult = tempMult*10
    end
    newValue = math.floor(value * tempMult)
    return newValue / tempMult
end

return self;