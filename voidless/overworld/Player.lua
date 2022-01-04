AxLua = require "scriptlibs.AxLua";

local self = { };

local walkSpeed = 5;

function self.create()
    makeAnimatedLuaSprite('player', 'overworld/player', 0, 0);
    addAnimationByIndices('player', 'idledown', 'down', '0', 12);
    addAnimationByIndices('player', 'idleup', 'up', '0', 12);
    addAnimationByIndices('player', 'idleleft', 'left', '0', 12);
    addAnimationByIndices('player', 'idleright', 'right', '0', 12);
    
    addAnimationByPrefix('player', 'down', 'down', 12);
    addAnimationByPrefix('player', 'up', 'up', 12);
    addAnimationByPrefix('player', 'left', 'left', 12);
    addAnimationByPrefix('player', 'right', 'right', 12);

    addLuaSprite('player', true);
    objectPlayAnimation('player', 'idledown');
end

function self.update(elapsed)
    if AxLua.justPressed('w') then
        objectPlayAnimation('player', 'up');
    elseif AxLua.justReleased('w') and getProperty('player.animation.name') == 'up' then
        objectPlayAnimation('player', 'idleup');
    end
    if AxLua.justPressed('a') then
        objectPlayAnimation('player', 'left');
    elseif AxLua.justReleased('a') and getProperty('player.animation.name') == 'left' then
        objectPlayAnimation('player', 'idleleft');
    end
    if AxLua.justPressed('s') then
        objectPlayAnimation('player', 'down');
    elseif AxLua.justReleased('s') and getProperty('player.animation.name') == 'down' then
        objectPlayAnimation('player', 'idledown');
    end
    if AxLua.justPressed('d') then
        objectPlayAnimation('player', 'right');
    elseif AxLua.justReleased('d') and getProperty('player.animation.name') == 'right' then
        objectPlayAnimation('player', 'idleright');
    end

    if getProperty('player.animation.name') == 'up' then
        setProperty('player.y', getProperty('player.y') - walkSpeed);
    elseif getProperty('player.animation.name') == 'down' then
        setProperty('player.y', getProperty('player.y') + walkSpeed);
    elseif getProperty('player.animation.name') == 'left' then
        setProperty('player.x', getProperty('player.x') - walkSpeed);
    elseif getProperty('player.animation.name') == 'right' then
        setProperty('player.x', getProperty('player.x') + walkSpeed);
    end
end

function self.getPos(whichonelol)
    if whichonelol == 'x' then
        return getProperty('player.x');
    elseif whichonelol == 'y' then
        return getProperty('player.y');
    end
end

function self.getAnim()
    return getProperty('player.animation.name');
end

return self;