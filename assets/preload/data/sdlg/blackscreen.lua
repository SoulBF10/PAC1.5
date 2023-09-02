function onCreate()
    makeLuaSprite('blackIn', '', 0, 0)
    makeGraphic('blackIn', 1280, 720, '0xFF000000')
    setScrollFactor('blackIn', 0, 0)
    screenCenter('blackIn')
    addLuaSprite('blackIn')
    setObjectOrder('blackIn', getObjectOrder('sdlgbg')+1)
end

function onCreatePost()
    setObjectOrder('dadGroup', getObjectOrder('sdlgbg'))
end

function onUpdate()
    scaleObject('blackIn', getProperty('camGame.zoom')+2.1, getProperty('camGame.zoom')+2.1)
    screenCenter('blackIn')
end

function onStepHit()
    if curStep == 16 then
        doTweenAlpha('blackInA', 'blackIn', 0, (stepCrochet/1100) * (112+curStep))
    end
end