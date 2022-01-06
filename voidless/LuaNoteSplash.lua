self = {}

self.defaultNotePos = {};
self.splashAnims = {'purple', 'blue', 'green', 'red'};

function self.create(texture, howmanysplashes, fps)
    setPropertyFromClass('PlayState', 'SONG.splashSkin', 'invisSplashes');

    for i = 0,7 do
        x = getPropertyFromGroup('strumLineNotes', i, 'x');
        y = getPropertyFromGroup('strumLineNotes', i, 'y');
        table.insert(self.defaultNotePos, {x,y});
    end

    makeAnimatedLuaSprite('splash1', texture, self.defaultNotePos[5][1], self.defaultNotePos[1][2]);
    makeAnimatedLuaSprite('splash2', texture, self.defaultNotePos[6][1], self.defaultNotePos[2][2]);
    makeAnimatedLuaSprite('splash3', texture, self.defaultNotePos[7][1], self.defaultNotePos[3][2]);
    makeAnimatedLuaSprite('splash4', texture, self.defaultNotePos[8][1], self.defaultNotePos[4][2]);
    addAnimationByPrefix('splash1', 'purple', 'note splash purple 1', fps, false);
    addAnimationByPrefix('splash2', 'blue', 'note splash blue 1', fps, false);
    addAnimationByPrefix('splash3', 'green', 'note splash green 1', fps, false);
    addAnimationByPrefix('splash4', 'red', 'note splash red 1', fps, false);
    if howmanysplashes == 2 then
        addAnimationByPrefix('splash1', 'purple2', 'note splash purple 2', fps, false);
        addAnimationByPrefix('splash2', 'blue2', 'note splash blue 2', fps, false);
        addAnimationByPrefix('splash3', 'green2', 'note splash green 2', fps, false);
        addAnimationByPrefix('splash4', 'red2', 'note splash red 2', fps, false);
    end
    setObjectCamera('splash1', 'other');
    setObjectCamera('splash2', 'other');
    setObjectCamera('splash3', 'other');
    setObjectCamera('splash4', 'other');

    setProperty('splash1.offset.x', getProperty('splash1.width')/2.3);
    setProperty('splash1.offset.y', getProperty('splash1.height')/2.5);

    setProperty('splash2.offset.x', getProperty('splash2.width')/2.4);
    setProperty('splash2.offset.y', getProperty('splash2.height')/2.5);

    setProperty('splash3.offset.x', getProperty('splash3.width')/2.5);
    setProperty('splash3.offset.y', getProperty('splash3.height')/2.5);

    setProperty('splash4.offset.x', getProperty('splash4.width')/2.6);
    setProperty('splash4.offset.y', getProperty('splash4.height')/2.5);

    addLuaSprite('splash1', true);
    addLuaSprite('splash2', true);
    addLuaSprite('splash3', true);
    addLuaSprite('splash4', true);

    setProperty('splash1.alpha', 0);
    setProperty('splash2.alpha', 0);
    setProperty('splash3.alpha', 0);
    setProperty('splash4.alpha', 0);
end

function self.addOffset(whichone, x, y)
    setProperty('splash' .. whichone .. '.offset.x', getProperty('splash' .. whichone .. '.offset.x') + x);
    setProperty('splash' .. whichone .. '.offset.y', getProperty('splash' .. whichone .. '.offset.y') + y);
end

function self.playSplash(whichone, endframe)
    local fuckshit = getRandomInt(1, 2);
    setProperty('splash' .. whichone .. '.alpha', 1);
    if fuckshit == 1 then
        objectPlayAnimation('splash' .. whichone, self.splashAnims[whichone], true);
    elseif fuckshit == 2 then
        objectPlayAnimation('splash' .. whichone, self.splashAnims[whichone] .. 2, true);
    end
end

function self.endSplash(whichone)
    setProperty('splash' .. whichone .. '.alpha', 0);
end

return self;