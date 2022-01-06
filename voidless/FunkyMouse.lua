LuaMouse = require "scriptlibs.LuaMouse";

self = {};

function self.create(texture, anim1name, anim2name, trailtexture, trailanim1name, trailanim2name)
    makeAnimatedLuaSprite('mouse', texture, LuaMouse.getX() - 75, LuaMouse.getY() - 150);
    if not anim1name == nil then
        addAnimationByPrefix('mouse', 'normal', anim1name, 24, true);
    else
        addAnimationByPrefix('mouse', 'normal', 'mouse1', 24, true);
    end
    if not anim2name == nil then
        addAnimationByPrefix('mouse', 'click', anim2name, 24, true);
    else
        addAnimationByPrefix('mouse', 'click', 'mouse2', 24, true);
    end
    setObjectCamera('mouse', 'other');
    scaleObject('mouse', 1.2, 1.2);
    setScrollFactor('mouse', 0, 0);

    makeAnimatedLuaSprite('mouseTrail', trailtexture, LuaMouse.getX() - 75, LuaMouse.getY() - 150);
    if not trailanim1name == nil then
        addAnimationByPrefix('mouseTrail', 'normal', anim1name, 24, true);
    else
        addAnimationByPrefix('mouseTrail', 'normal', 'mouse1blue', 24, true);
    end
    if not trailanim2name == nil then
        addAnimationByPrefix('mouseTrail', 'click', anim2name, 24, true);
    else
        addAnimationByPrefix('mouseTrail', 'click', 'mouse2blue', 24, true);
    end
    setObjectCamera('mouseTrail', 'other');
    scaleObject('mouseTrail', 1.2, 1.2);
    setProperty('mouseTrail.alpha', 0.8);
    
    makeAnimatedLuaSprite('mouseTrail2', trailtexture, LuaMouse.getX() - 75, LuaMouse.getY() - 150);
    if not trailanim1name == nil then
        addAnimationByPrefix('mouseTrail2', 'normal', anim1name, 24, true);
    else
        addAnimationByPrefix('mouseTrail2', 'normal', 'mouse1blue', 24, true);
    end
    if not trailanim2name == nil then
        addAnimationByPrefix('mouseTrail2', 'click', anim2name, 24, true);
    else
        addAnimationByPrefix('mouseTrail2', 'click', 'mouse2blue', 24, true);
    end
    setObjectCamera('mouseTrail2', 'other');
    scaleObject('mouseTrail2', 1.2, 1.2);
    setProperty('mouseTrail2.alpha', 0.6);
    
    makeAnimatedLuaSprite('mouseTrail3', trailtexture, LuaMouse.getX() - 75, LuaMouse.getY() - 150);
    if not trailanim1name == nil then
        addAnimationByPrefix('mouseTrail3', 'normal', anim1name, 24, true);
    else
        addAnimationByPrefix('mouseTrail3', 'normal', 'mouse1blue', 24, true);
    end
    if not trailanim2name == nil then
        addAnimationByPrefix('mouseTrail3', 'click', anim2name, 24, true);
    else
        addAnimationByPrefix('mouseTrail3', 'click', 'mouse2blue', 24, true);
    end
    setObjectCamera('mouseTrail3', 'other');
    scaleObject('mouseTrail3', 1.2, 1.2);
    setProperty('mouseTrail3.alpha', 0.4);
    
    makeAnimatedLuaSprite('mouseTrail4', trailtexture, LuaMouse.getX() - 75, LuaMouse.getY() - 150);
    if not trailanim1name == nil then
        addAnimationByPrefix('mouseTrail4', 'normal', anim1name, 24, true);
    else
        addAnimationByPrefix('mouseTrail4', 'normal', 'mouse1blue', 24, true);
    end
    if not trailanim2name == nil then
        addAnimationByPrefix('mouseTrail4', 'click', anim2name, 24, true);
    else
        addAnimationByPrefix('mouseTrail4', 'click', 'mouse2blue', 24, true);
    end
    setObjectCamera('mouseTrail4', 'other');
    scaleObject('mouseTrail4', 1.2, 1.2);
    setProperty('mouseTrail4.alpha', 0.2);

    addLuaSprite('mouseTrail4', true);
    addLuaSprite('mouseTrail3', true);
    addLuaSprite('mouseTrail2', true);
    addLuaSprite('mouseTrail', true);
    addLuaSprite('mouse', true);
end

function self.visible(bool)
    if bool == true then
        setProperty('mouse.alpha', 1);
        setProperty('mouseTrail.alpha', 0.8);
        setProperty('mouseTrail2.alpha', 0.6);
        setProperty('mouseTrail3.alpha', 0.4);
        setProperty('mouseTrail4.alpha', 0.2);
    elseif bool == false then
        setProperty('mouse.alpha', 0);
        setProperty('mouseTrail.alpha', 0);
        setProperty('mouseTrail2.alpha', 0);
        setProperty('mouseTrail3.alpha', 0);
        setProperty('mouseTrail4.alpha', 0);
    end
end

function self.update(elapsed)
    if mousePressed('left') then
        objectPlayAnimation('mouse', 'click', true);
        setProperty('mouse.x', LuaMouse.getX());
        setProperty('mouse.y', LuaMouse.getY() + 20.5);
    else
        objectPlayAnimation('mouse', 'normal', true);
        setProperty('mouse.x', LuaMouse.getX());
        setProperty('mouse.y', LuaMouse.getY());
    end
end

function self.trailUpdate(whichone)
    if whichone == 1 then
        setProperty('mouseTrail.x', LuaMouse.getX());
        setProperty('mouseTrail.y', LuaMouse.getY());
        if mousePressed('left') then
            objectPlayAnimation('mouseTrail', 'click', true);
            setProperty('mouseTrail.x', LuaMouse.getX());
            setProperty('mouseTrail.y', LuaMouse.getY() + 20.5);
        else
            objectPlayAnimation('mouseTrail', 'normal', true);
            setProperty('mouseTrail.x', LuaMouse.getX());
            setProperty('mouseTrail.y', LuaMouse.getY());
        end
    elseif whichone == 2 then
        setProperty('mouseTrail2.x', LuaMouse.getX());
        setProperty('mouseTrail2.y', LuaMouse.getY());
        if mousePressed('left') then
            objectPlayAnimation('mouseTrail2', 'click', true);
            setProperty('mouseTrail2.x', LuaMouse.getX());
            setProperty('mouseTrail2.y', LuaMouse.getY() + 20.5);
        else
            objectPlayAnimation('mouseTrail2', 'normal', true);
            setProperty('mouseTrail2.x', LuaMouse.getX());
            setProperty('mouseTrail2.y', LuaMouse.getY());
        end
    elseif whichone == 3 then
        setProperty('mouseTrail3.x', LuaMouse.getX());
        setProperty('mouseTrail3.y', LuaMouse.getY());
        if mousePressed('left') then
            objectPlayAnimation('mouseTrail3', 'click', true);
            setProperty('mouseTrail3.x', LuaMouse.getX());
            setProperty('mouseTrail3.y', LuaMouse.getY() + 20.5);
        else
            objectPlayAnimation('mouseTrail3', 'normal', true);
            setProperty('mouseTrail3.x', LuaMouse.getX());
            setProperty('mouseTrail3.y', LuaMouse.getY());
        end
    elseif whichone == 4 then
        setProperty('mouseTrail4.x', LuaMouse.getX());
        setProperty('mouseTrail4.y', LuaMouse.getY());
        if mousePressed('left') then
            objectPlayAnimation('mouseTrail4', 'click', true);
            setProperty('mouseTrail4.x', LuaMouse.getX());
            setProperty('mouseTrail4.y', LuaMouse.getY() + 20.5);
        else
            objectPlayAnimation('mouseTrail4', 'normal', true);
            setProperty('mouseTrail4.x', LuaMouse.getX());
            setProperty('mouseTrail4.y', LuaMouse.getY());
        end
    end
end

return self;