self = {}

function self.setAA(object, aa)
    setProperty(object .. '.antialiasing', aa)
    if aa == nil then
        setProperty(object .. '.antialiasing', getPropertyFromClass('ClientPrefs', 'globalAntialiasing'))
    end
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

return self