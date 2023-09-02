
local xx = 0;
local yy = 0;
local xx2 = 0;
local yy2 = 0;
local ofs = 0;
local followchars = true;
local canfollowchars = false;
local del = 0;
local del2 = 0;

function onUpdate()
    if canfollowchars == false then
        xx = 1870;
        xx2 = 1870;
        yy = 1050;
        yy2 = 1000;
        offs = 0;
    end
    if canfollowchars == true then
        xx = 1920;
        yy = 1200;
        xx2 = 2100;
        yy2 = 1200;
        ofs = 35;
    end
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                if canfollowchars == true then
                    triggerEvent('Camera Follow Pos',xx-ofs,yy)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                if canfollowchars == true then
                    triggerEvent('Camera Follow Pos',xx+ofs,yy)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                if canfollowchars == true then
                     triggerEvent('Camera Follow Pos',xx,yy-ofs)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                if canfollowchars == true then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
                end
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                if canfollowchars == true then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
                end
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                if canfollowchars == true then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
                end
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                if canfollowchars == true then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
                end
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                if canfollowchars == true then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
                end
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
            if canfollowchars == true then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end

    if not canfollowchars and curStep < 129 then
        setProperty('camFollowPos.x', xx)
        setProperty('camFollowPos.y', yy)
    end
end

function onStepHit()
    if curStep == 129 then
        canfollowchars = true
    end
end
