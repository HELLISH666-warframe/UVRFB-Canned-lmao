function onUpdatePost()
    songPos = getSongPosition()
    local currentBeat = (songPos/100)/(curBpm/170)
    currentBeat2 = (songPos / 1000) * (bpm / 170)

    setProperty('window.angle',0 - 20 * math.cos((currentBeat2*0.59)*math.pi) )
    setProperty('window2.angle',0 - 20 * math.cos((currentBeat2*0.43)*math.pi) )
    setProperty('window3.angle',0 - 20 * math.cos((currentBeat2*0.37)*math.pi) )
    setProperty('windowhud.angle',0 - 20 * math.cos((currentBeat2*0.53)*math.pi) )
    setProperty('windowhud2.angle',0 - 20 * math.cos((currentBeat2*0.47)*math.pi) )
    setProperty('windowhud3.angle',0 - 20 * math.cos((currentBeat2*0.39)*math.pi) )

    if curBeat < 448 then

        setProperty('window.y',150 - 300 * math.cos((currentBeat2*0.43)*math.pi) )
        setProperty('window2.y',150 - 400 * math.cos((currentBeat2*0.37)*math.pi) )
        setProperty('window3.y',150 - 500 * math.cos((currentBeat2*0.59)*math.pi) )
        setProperty('windowhud.y',0 - 600 * math.cos((currentBeat2*0.47)*math.pi) )
        setProperty('windowhud2.y',0 - 600 * math.cos((currentBeat2*0.39)*math.pi) )
        setProperty('windowhud3.y',0 - 600 * math.cos((currentBeat2*0.53)*math.pi) )

        setProperty('window.x', getProperty('window.x') + 10)
        setProperty('window2.x', getProperty('window2.x') + 7)
        setProperty('window3.x', getProperty('window3.x') + 13)
        setProperty('windowhud.x', getProperty('windowhud.x') - 10)
        setProperty('windowhud2.x', getProperty('windowhud2.x') - 12)
        setProperty('windowhud3.x', getProperty('windowhud3.x') - 14)

        if getProperty('window.x') >= 2000 then

            setProperty('window.x', -1000)

        end

        if getProperty('window2.x') >= 2000 then

            setProperty('window2.x', -1000)

        end

        if getProperty('window3.x') >= 2000 then

            setProperty('window3.x', -1000)

        end

        if getProperty('windowhud.x') <= -1200 then

            setProperty('windowhud.x', 1600)

        end

        if getProperty('windowhud2.x') <= -1200 then

            setProperty('windowhud2.x', 1600)

        end

        if getProperty('windowhud3.x') <= -1200 then

            setProperty('windowhud3.x', 1600)

        end

    end

    if curBeat == 448 then
        
        doTweenY('windowbounce', 'windowhud', getProperty('windowhud.y') - 50, 0.25, 'cubeOut')
        doTweenY('windowbounce2', 'windowhud2', getProperty('windowhud2.y') - 50, 0.25, 'cubeOut')
        doTweenY('windowbounce3', 'windowhud3', getProperty('windowhud3.y') - 50, 0.25, 'cubeOut')
        doTweenY('windowbounce4', 'window', getProperty('window.y') - 50, 0.25, 'cubeOut')
        doTweenY('windowbounce5', 'window2', getProperty('window2.y') - 50, 0.25, 'cubeOut')
        doTweenY('windowbounce6', 'window3', getProperty('window3.y') - 50, 0.25, 'cubeOut')

    end

end

function onTweenCompleted(tag)

    if tag == 'windowbounce' then

        doTweenY('windowbounce', 'windowhud', getProperty('windowhud.y') + 1500, 1, 'cubeIn')
        doTweenY('windowbounce2', 'windowhud2', getProperty('windowhud2.y') + 1500, 1, 'cubeIn')
        doTweenY('windowbounce3', 'windowhud3', getProperty('windowhud3.y') + 1500, 1, 'cubeIn')
        doTweenY('windowbounce4', 'window', getProperty('window.y') + 1500, 1, 'cubeIn')
        doTweenY('windowbounce5', 'window2', getProperty('window2.y') + 1500, 1, 'cubeIn')
        doTweenY('windowbounce6', 'window3', getProperty('window3.y') + 1500, 1, 'cubeIn')

    end

end