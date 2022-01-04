local self = { };

self.LuaBar = nil;

function self.create(tag, width, height, x, y, bgcolor, angle)
    makeLuaSprite(tag .. 'BG', '', x, y);
    makeGraphic(tag .. 'BG', width, height, bgcolor);
    setProperty(tag .. 'BG.angle', angle);

    addLuaSprite(tag .. 'BG', true);
end

function self.createFilledBar(tag, barcolor)
    makeLuaSprite(tag, '', getProperty(tag .. 'BG.x') + 7.5, getProperty(tag .. 'BG.y') + 7.5);
    makeGraphic(tag, getProperty(tag .. 'BG.width') - 15, getProperty(tag .. 'BG.height') - 15, barcolor);
    setProperty(tag .. '.angle', getProperty(tag .. 'BG.angle'));

    addLuaSprite(tag, true);
end

function self.setBarCamera(tag, camera)
    setObjectCamera(tag .. 'BG', camera);
    setObjectCamera(tag, camera);
end

function self.setBarOrder(tag, order)
    setObjectOrder(tag .. 'BG', order);
    setObjectOrder(tag, order);
end

function self.setBarAngle(tag, angle)
    setProperty(tag .. 'BG.angle', angle);
    setProperty(tag .. '.angle', angle);
end

function self.setBarValue(tag, value)
    setProperty(tag .. '.height', getProperty(tag .. 'BG.height') * value);
end

return self;