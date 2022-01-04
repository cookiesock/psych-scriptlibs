self = {}

function self.save(saveName, whatToSave)
    setPropertyFromClass('flixel.FlxG', 'save.data.' .. saveName, whatToSave)
end
function self.load(saveName)
    return getPropertyFromClass('flixel.FlxG', 'save.data.' .. saveName)
end

return self