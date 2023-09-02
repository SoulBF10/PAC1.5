
local xx = 500;
local yy = 500;
local xx2 = 900;
local yy2 = 600;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            xx = getProperty('dad.x') + (getProperty('dad.width')/2) + 150
            yy = getProperty('dad.y') + (getProperty('dad.height')/2) - 100

            xx = xx + getProperty('dad.cameraPosition[0]') + getProperty('opponentCameraOffset[0]')
            yy = yy + getProperty('dad.cameraPosition[1]') + getProperty('opponentCameraOffset[1]')

            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            xx2 = getProperty('boyfriend.x') + (getProperty('boyfriend.width')/2) - 100
            yy2 = getProperty('boyfriend.y') + (getProperty('boyfriend.height')/2) - 100

            xx2 = xx2 - getProperty('boyfriend.cameraPosition[0]') - getProperty('boyfriendCameraOffset[0]')
            yy2 = yy2 + getProperty('boyfriend.cameraPosition[1]') + getProperty('boyfriendCameraOffset[1]')

            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end

function goodNoteHit(i,d,t,s)
    if mustHitSection then
        if d == 0 and not s then
            triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
        end
        if d == 1 and not s then
            triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
        end
        if d == 2 and not s then
            triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
        end
        if d == 3 and not s then
            triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
        end
    end
end

function opponentNoteHit(i,d,t,s)
    if not mustHitSection then
        if d == 0 and not s then
            triggerEvent('Camera Follow Pos',xx-ofs,yy)
        end
        if d == 1 and not s then
            triggerEvent('Camera Follow Pos',xx,yy+ofs)
        end
        if d == 2 and not s then
            triggerEvent('Camera Follow Pos',xx,yy-ofs)
        end
        if d == 3 and not s then
            triggerEvent('Camera Follow Pos',xx+ofs,yy)
        end
    end
end