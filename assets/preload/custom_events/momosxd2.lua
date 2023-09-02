function onCreate()
    --variables
    precacheImage('momo1');
    precacheImage('momo2');
    precacheImage('momo3');
    precacheImage('momo4');
    precacheImage('momo5');
    precacheImage('momo6');
    precacheImage('momo7');
    precacheImage('momo8');
    precacheImage('momo9');
    precacheImage('momo10');
    frame = 0
end
function onEvent(name, value1, value2)
    if name == "momosxd" then
    --Get Dodge time
    bootime = (value1);
	--Make Train Sprite
    x = math.random(screenWidth - 400)
    y = math.random(screenHeight - 300)
    sel = math.random(10)
    if sel == 1 then
        makeLuaSprite('momazo','momo1', x, y)
    elseif sel == 2 then
        makeLuaSprite('momazo','momo2', x, y)
    elseif sel == 3 then
        makeLuaSprite('momazo','momo3', x, y)
    elseif sel == 4 then
        makeLuaSprite('momazo','momo4', x, y)
    elseif sel == 5 then
        makeLuaSprite('momazo','momo5', x, y)
    elseif sel == 6 then
        makeLuaSprite('momazo','momo6', x, y)
    elseif sel == 7 then
        makeLuaSprite('momazo','momo7', x, y)
    elseif sel == 8 then
        makeLuaSprite('momazo','momo8', x, y)
    elseif sel == 9 then
        makeLuaSprite('momazo','momo9', x, y)
    elseif sel == 10 then
        makeLuaSprite('momazo','momo10', x, y)
    end
    --Make Dodge Sprite
    setObjectCamera('momazo', 'other');
    scaleLuaSprite('momazo', 1.4, 1.4); 
    addLuaSprite('momazo', true); 
	
	--Set values so you can dodge
	runTimer('app', bootime);
	
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'app' then
        removeLuaSprite('momazo');
    end
end