local self = { };

self.AxLua = nil;

-- version 1.2

function self.justPressed(key)
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.' .. string.upper(key)) then
        return true;
    end
end

function self.justReleased(key)
    if getPropertyFromClass('flixel.FlxG', 'keys.justReleased.' .. string.upper(key)) then
        return true;
    end
end

function self.keyPressed(key)
    if getPropertyFromClass('flixel.FlxG', 'keys.pressed.' .. string.upper(key)) then
        return true;
    end
end

--keylist lol https://api.haxeflixel.com/flixel/input/keyboard/FlxKeyList.html

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

function self.setZoom(zoom)
    setProperty('defaultCamZoom', zoom)
end

function self.boundTo(value, min, max)
    return math.max(min, math.min(max, value))
end

function self.remapToRange(value, start1, stop1, start2, stop2)
    return start2 + (value - start1) * ((stop2 - start2) / (stop1 - start1))
end

function self.lerp(a, b, ratio)
    return a + ratio * (b - a)
end

return self;