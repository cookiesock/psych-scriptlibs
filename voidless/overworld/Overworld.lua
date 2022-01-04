AxLua = require "scriptlibs.AxLua";
Player = require "scriptlibs.overworld.Player";

local self = { };

function self.create()
    Player.create();
end

function self.update(elapsed)
    Player.update(elapsed);
end

return self;