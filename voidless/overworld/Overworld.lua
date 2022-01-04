AxLua = require "scriptlibs.AxLua";
Player = require "scriptlibs.overworld.Player";

local self = { };

function self.create()
    Player.create();
end

function self.update(elapsed)
    Player.update(elapsed);
    triggerEvent('Camera Follow Pos', getProperty('player.x') + 150, getProperty('player.y') + 100);
end

return self;