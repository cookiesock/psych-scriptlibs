self = {}

self.bopperSprites = {}

function self.new(tag, x, y, image, anim, fps)
    makeAnimatedLuaSprite(tag, image, x, y)
    luaSpriteAddAnimationByPrefix(tag, 'bop', anim, fps, false)
    table.insert(self.bopperSprites, tag)
end

function self.bopSprites()
    for i = 1,table.getn(self.bopperSprites) do
        luaSpritePlayAnimation(self.bopperSprites[i], 'bop')
    end
end

return self