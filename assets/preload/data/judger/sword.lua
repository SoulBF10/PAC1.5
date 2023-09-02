function onBeatHit()
    if curBeat > 285 then
        setProperty('sword.visible', false)
    end

    if curStep > 1664 then
        setProperty('anime.visible', true)
    end

    if curStep > 1675 then
        setProperty('anime.visible', false)
    end
end