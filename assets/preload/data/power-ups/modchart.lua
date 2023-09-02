function onStepHit()
    -- funny uh arrow fade when animation pacman
    if curStep == 672 then
	noteTweenAlpha("NoteAlpha1", 0, -1, 1.5, cubeInOut)
    noteTweenAlpha("NoteAlpha2", 1, -1, 1, cubeInOut)
    noteTweenAlpha("NoteAlpha3", 2, -1, 0.5, cubeInOut)
    noteTweenAlpha("NoteAlpha4", 3, -1, 0.25, cubeInOut)
    end
    if curStep == 672 then
        if getPropertyFromClass('ClientPrefs', 'downScroll') then
            noteTweenY("NoteMove1", 0, -10, 1.5, cubeInOut)
            noteTweenY("NoteMove2", 1, -10, 1, cubeInOut)
            noteTweenY("NoteMove3", 2, -10, 0.5, cubeInOut)
            noteTweenY("NoteMove4", 3, -10, 0.25, cubeInOut)
        else
            noteTweenY("NoteMove1", 0, 1110, 1.5, cubeInOut)
            noteTweenY("NoteMove2", 1, 1110, 1, cubeInOut)
            noteTweenY("NoteMove3", 2, 1110, 0.5, cubeInOut)
            noteTweenY("NoteMove4", 3, 1110, 0.25, cubeInOut)
        end
    end
    if curStep == 704 then
        compat = screenHeight / 16
        compatup = compat * 15
        noteTweenAlpha("NoteAlpha1", 4, 2, 1.5, cubeInOut)
        noteTweenAlpha("NoteAlpha2", 5, 2, 1, cubeInOut)
        noteTweenAlpha("NoteAlpha3", 6, 2, 0.5, cubeInOut)
        noteTweenAlpha("NoteAlpha4", 7, 2, 0.25, cubeInOut)
        if getPropertyFromClass('ClientPrefs', 'downScroll') then
            noteTweenY("upoppx1", 0, 50, 0.6, "quartInOut");
            noteTweenY("upoppx2", 1, 50, 0.6, "quartInOut");
            noteTweenY("upoppx3", 2, 50, 0.6, "quartInOut");
            noteTweenY("upoppx4", 3, 50, 0.6, "quartInOut");
            noteTweenY("upx5", 4, 500, 0.6, "quartInOut");
            noteTweenY("upx6", 5, 500, 0.6, "quartInOut");
            noteTweenY("upx7", 6, 500, 0.6, "quartInOut");
            noteTweenY("upx8", 7, 500, 0.6, "quartInOut");
            doTweenY('hpdown', 'healthBar', compatup - 35 , 0.6, 'quartInOut')
            doTweenY('hpicon1down', 'iconP1', compatup - 92, 0.6, 'quartInOut')
            doTweenY('hpicon2down', 'iconP2', compatup - 92, 0.6, 'quartInOut')
            doTweenY('scoredown', 'scoreTxt', 677, 0.6, 'quartInOut')
            doTweenY('timeBarPacDown', 'timeBarPac', 40, 0.6, 'quartInOut')
            doTweenY('timePacDown', 'pacTime', 35, 0.6, 'quartInOut')
            doTweenY('timeBarTxtDown', 'timeTxt', 20, 0.6, 'quartInOut')
            -- botplay text
            doTweenY('botplytxtUp', 'botplayTxt', 80, 0.6, 'quartInOut')
        else
            noteTweenY("downoppx1", 0, 50, 0.6, "quartInOut");
            noteTweenY("downoppx2", 1, 50, 0.6, "quartInOut");
            noteTweenY("downoppx3", 2, 50, 0.6, "quartInOut");
            noteTweenY("downoppx4", 3, 50, 0.6, "quartInOut");
            noteTweenY("downx5", 4, 150, 0.6, "quartInOut");
            noteTweenY("downx6", 5, 150, 0.6, "quartInOut");
            noteTweenY("downx7", 6, 150, 0.6, "quartInOut");
            noteTweenY("downx8", 7, 150, 0.6, "quartInOut");
            doTweenY('hpup', 'healthBar', compat + 15, 0.6, 'quartInOut')
            doTweenY('hpicon1up', 'iconP1', 5, 0.6, 'quartInOut')
            doTweenY('hpicon2up', 'iconP2', 5, 0.6, 'quartInOut')
            doTweenY('scoreup', 'scoreTxt', 115, 0.6, 'quartInOut')
            doTweenY('timeBarPacDown', 'timeBarPac', compatup - 37, 0.6, 'quartInOut')
            doTweenY('timePacDown', 'pacTime', compatup - 42, 0.6, 'quartInOut')
            doTweenY('timeBarTxtDown', 'timeTxt', compatup, 0.6, 'quartInOut')
            -- botplay text
            doTweenY('botplytxtDown', 'botplayTxt', 603, 0.6, 'quartInOut')
        end
        cool = true
    end
    if curStep == stepa - 8 then
        yodothefunny = true
    end
    if curStep == stepa and reallynow  then
        sicismad = false
    end
    if curStep == stepa + cdown and reallynow  then
        sicismad = true
    end
    if curStep == stepb and reallynow  then
        sicismad = false
    end
    if curStep == stepb + cdown and reallynow  then
        sicismad = true
    end
    if curStep == stepc and reallynow  then
        sicismad = false
    end
    if curStep == stepc + cdown and reallynow  then
        sicismad = true
    end
end
function round(float)
    local int = math.floor(float)
    return int+ (float - int > 0.5 and 1 or 0)
end
function onCreatePost()
    hmm = 1
    swap = false
    hmmb = 4
    swapb = false
    cool = false
    cdown = 48
    stepa = 741
    stepb = 900
    stepc = 1029
    sicismad = true
    yodothefunny = false
    walter = false
    --change this to have old movement
    reallynow = true
    include("sarahud")
    compat = screenHeight / 16
    compatup = compat * 15
    --if getPropertyFromClass('ClientPrefs', 'downScroll') then
    --    noteTweenY("upoppx1", 0, 50, 0.6, "quartInOut");
    --    noteTweenY("upoppx2", 1, 50, 0.6, "quartInOut");
    --    noteTweenY("upoppx3", 2, 50, 0.6, "quartInOut");
    --    noteTweenY("upoppx4", 3, 50, 0.6, "quartInOut");
    --    noteTweenY("upx5", 4, 550, 0.6, "quartInOut");
    --    noteTweenY("upx6", 5, 550, 0.6, "quartInOut");
    --    noteTweenY("upx7", 6, 550, 0.6, "quartInOut");
    --    noteTweenY("upx8", 7, 550, 0.6, "quartInOut");
    --    doTweenY('hpdown', 'healthBar', compat, 0.6, 'quartInOut')
    --    doTweenY('hpicon1down', 'iconP1', 570, 0.6, 'quartInOut')
    --    doTweenY('hpicon2down', 'iconP2', 570, 0.6, 'quartInOut')
    --    doTweenY('scoredown', 'scoreTxt', 677, 0.6, 'quartInOut')
    --    doTweenY('timeBarUp', 'timeBar', compat + 11, 0.6, 'quartInOut')
    --    doTweenY('timeBarTxtUp', 'timeTxt', compat, 0.6, 'quartInOut')
    --    -- botplay text
    --    doTweenY('botplytxtUp', 'botplayTxt', 80, 0.6, 'quartInOut')
    --else
    --    noteTweenY("downoppx1", 0, 50, 0.6, "quartInOut");
    --    noteTweenY("downoppx2", 1, 50, 0.6, "quartInOut");
    --    noteTweenY("downoppx3", 2, 50, 0.6, "quartInOut");
    --    noteTweenY("downoppx4", 3, 50, 0.6, "quartInOut");
    --    noteTweenY("downx5", 4, 150, 0.6, "quartInOut");
    --    noteTweenY("downx6", 5, 150, 0.6, "quartInOut");
    --    noteTweenY("downx7", 6, 150, 0.6, "quartInOut");
    --    noteTweenY("downx8", 7, 150, 0.6, "quartInOut");
    --    doTweenY('hpup', 'healthBar', compatup, 0.6, 'quartInOut')
    --    doTweenY('hpicon1up', 'iconP1', 10, 0.6, 'quartInOut')
    --    doTweenY('hpicon2up', 'iconP2', 10, 0.6, 'quartInOut')
    --    doTweenY('scoreup', 'scoreTxt', 115, 0.6, 'quartInOut')
    --    doTweenY('timeBarDown', 'timeBar', compatup + 11, 0.6, 'quartInOut')
    --    doTweenY('timeBarTxtDown', 'timeTxt', compatup, 0.6, 'quartInOut')
    --    -- botplay text
    --    doTweenY('botplytxtDown', 'botplayTxt', 603, 0.6, 'quartInOut')
    --end
end

function onUpdate()
    if curStep > 704 then
        mid = screenWidth / 2 - 50
        if sicismad then
            noteTweenX(defaultPlayerStrumX0, 4, (mid - 150), 0.75)
            noteTweenX(defaultPlayerStrumX1, 5, (mid - 50) , 0.75)
            noteTweenX(defaultPlayerStrumX2, 6, (mid + 50) , 0.75)
            noteTweenX(defaultPlayerStrumX3, 7, (mid + 150), 0.75)
        end
        hmm = hmm + 0.1
        if hmmb > 7.9 and not swapb then
            swapb = true
        elseif hmmb < 1.1 and swapb then
            swapb = false
        else
            if swapb then
                hmmb = hmmb - 0.25
            else 
                hmmb = hmmb + 0.25
            end
        end
        x = 440
        deg = hmm * 45
        cool = true
        noteTweenAngle("NoteRotateY1", 4, deg, 0.1)
        noteTweenAngle("NoteRotateY2", 5, deg, 0.1)
        noteTweenAngle("NoteRotateY3", 6, deg, 0.1)
        noteTweenAngle("NoteRotateY4", 7, deg, 0.1)
        if not sicismad or not reallynow then
            if not reallynow then
                sicismad = false
            end
            noteTweenX(defaultPlayerStrumX0, 4, (mid - 150) - 14* hmmb, 0.25)
            noteTweenX(defaultPlayerStrumX1, 5, (mid - 50) - 7* hmmb, 0.25)
            noteTweenX(defaultPlayerStrumX2, 6, (mid + 50) + 7* hmmb, 0.25)
            noteTweenX(defaultPlayerStrumX3, 7, (mid + 150) + 14* hmmb, 0.25)
        end
        
    end

end
function opponentNoteHit(id, direction, noteType, isSustainNote)
    if cool then
        setProperty('health', getProperty('health') - (getProperty('health')  * 0.1) / 5)
    end
end
function goodNoteHit()
    if cool then
        setProperty('health', getProperty('health') + 0.05)
    end

end
function onBeatHit()
    -- arrow movement when transformation
    if curBeat == 159 then
        noteTweenAngle("NoteRotateY1", 4, -50, 0.3, cubeInOut)
        noteTweenAlpha("NoteAlpha1", 4, 0.6, 0.3, cubeInOut)
        noteTweenAngle("NoteRotateY2", 5, -50, 0.3, cubeInOut)
        noteTweenAlpha("NoteAlpha2", 5, 0.6, 0.3, cubeInOut)
        noteTweenAngle("NoteRotateY3", 6, -50, 0.3, cubeInOut)
        noteTweenAlpha("NoteAlpha3", 6, 0.6, 0.3, cubeInOut)
        noteTweenAngle("NoteRotateY4", 7, -50, 0.3, cubeInOut)
        noteTweenAlpha("NoteAlpha4", 7, 0.6, 0.3, cubeInOut)
        if getPropertyFromClass('ClientPrefs', 'downScroll') then
            noteTweenY("NoteMoveY1", 4, 550, 0.3, cubeInOut)
            noteTweenY("NoteMoveY2", 5, 550, 0.3, cubeInOut)
            noteTweenY("NoteMoveY3", 6, 550, 0.3, cubeInOut)
            noteTweenY("NoteMoveY4", 7, 550, 0.3, cubeInOut)
        else
            noteTweenY("NoteMoveY1", 4, 120, 0.3, cubeInOut)
            noteTweenY("NoteMoveY2", 5, 120, 0.3, cubeInOut)
            noteTweenY("NoteMoveY3", 6, 120, 0.3, cubeInOut)
            noteTweenY("NoteMoveY4", 7, 120, 0.3, cubeInOut)
        end
    end

end